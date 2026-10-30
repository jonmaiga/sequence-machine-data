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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

/-!
# A320800: Number of non-isomorphic multiset partitions of weight n in which both the multiset union of the parts and the multiset union of the dual parts are aperiodic.

The programs for A320800, there is no canonical definition to state claims against.
-/

/-! ## A320800.P7885031191809814341

`A088937(A028310(C(ceil((n/2)²), 2)))`
-/

namespace A320800.P7885031191809814341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088937 (A028310 (Nat.choose ⌈((n : ℚ) / 2) ^ 2⌉.toNat 2)).toNat

end

end A320800.P7885031191809814341

/-! ## A320800.P1283287608504894655

`A061395(A008934(n))+A024940(n)`
-/

namespace A320800.P1283287608504894655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A008934 n).toNat + A024940 n

end

end A320800.P1283287608504894655

/-! ## A320800.P16675391614495666143

`A071921(n)+A061395(A008934(n))`
-/

namespace A320800.P16675391614495666143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 n + A061395 (A008934 n).toNat

end

end A320800.P16675391614495666143

/-!
# A320801: Regular triangle read by rows where T(n,k) is the number of nonnegative integer matrices up to row and column permutations with no zero rows or columns and k nonzero entries summing to n.

The programs for A320801, there is no canonical definition to state claims against.
-/

/-! ## A320801.P7890437133358583482

`A332502(A108456(n)^3)`
-/

namespace A320801.P7890437133358583482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 (A108456 n ^ 3).toNat

end

end A320801.P7890437133358583482

/-! ## A320801.P15271437251435488378

`A332502(A233292(n)^3)`
-/

namespace A320801.P15271437251435488378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 (A233292 n ^ 3).toNat

end

end A320801.P15271437251435488378

/-! ## A320801.P2757163327184063906

`A086599(5^A108456(n))`
-/

namespace A320801.P2757163327184063906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A108456 n : ℤ))).toNat

end

end A320801.P2757163327184063906

/-! ## A320801.P4250909570422376026

`A086599(5^A233292(n))`
-/

namespace A320801.P4250909570422376026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A233292 n : ℤ))).toNat

end

end A320801.P4250909570422376026

/-! ## A320801.P14329845342090215519

`A339010(7^A108456(n))`
-/

namespace A320801.P14329845342090215519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339010 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A108456 n : ℤ))).toNat

end

end A320801.P14329845342090215519

/-!
# A320802: Number of non-isomorphic aperiodic multiset partitions of weight n whose dual is also an aperiodic multiset partition.

The programs for A320802, there is no canonical definition to state claims against.
-/

/-! ## A320802.P9823653659161666158

`∑{d}[round(sqrt(n²+1)), A321390(#)]`
-/

namespace A320802.P9823653659161666158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A321390 d

end

end A320802.P9823653659161666158

/-! ## A320802.P774980916783974899

`A304707(∑[A304744(9*n)])`
-/

namespace A320802.P774980916783974899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304744 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304707 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320802.P774980916783974899

/-! ## A320802.P8694550414799270032

`A028263(A051597(ceil((ϕ+1)*a(n-1))-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A320802.P8694550414799270032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A028263 (A051597 (⌈(Real.goldenRatio + 1) * (a (n - 1) : ℝ)⌉ - 2).toNat).toNat

end

end A320802.P8694550414799270032

/-!
# A320803: Number of non-isomorphic multiset partitions of weight n in which all parts are aperiodic multisets.

The programs for A320803, there is no canonical definition to state claims against.
-/

/-! ## A320803.P189352111048572728

`A183233(A148291(n))`
-/

namespace A320803.P189352111048572728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (A148291 n).toNat

end

end A320803.P189352111048572728

/-! ## A320803.P7662896342060127145

`A183233(A151259(n))`
-/

namespace A320803.P7662896342060127145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (A151259 n).toNat

end

end A320803.P7662896342060127145

/-! ## A320803.P445550566178093773

`A071716(n)+A071692(A001192(n))`
-/

namespace A320803.P445550566178093773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071716 n + A071692 (A001192 n).toNat

end

end A320803.P445550566178093773

/-!
# A320804: Number of non-isomorphic multiset partitions of weight n with no singletons in which all parts are aperiodic multisets.

The programs for A320804, there is no canonical definition to state claims against.
-/

/-! ## A320804.P7165465992879724732

`A095274(A368834(n))`
-/

namespace A320804.P7165465992879724732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (A368834 n).toNat

end

end A320804.P7165465992879724732

/-! ## A320804.P1120872034088915058

`A245973(n+1)+Δ[Δ[A013588(n+1)]]`
-/

namespace A320804.P1120872034088915058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245973 (n + 1) + (f1 (n + 1) - f1 n)

end

end A320804.P1120872034088915058

/-! ## A320804.P17116454214401705770

`A198318(A005314(n))+A001373(n)`
-/

namespace A320804.P17116454214401705770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A005314 n).toNat + A001373 n

end

end A320804.P17116454214401705770

/-! ## A320804.P6011902965723061329

`A198318(A007661(n))+A001373(n)`
-/

namespace A320804.P6011902965723061329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A007661 n).toNat + A001373 n

end

end A320804.P6011902965723061329

/-!
# A320805: Number of non-isomorphic multiset partitions of weight n in which each part, as well as the multiset union of the parts, is an aperiodic multiset.

The programs for A320805, there is no canonical definition to state claims against.
-/

/-! ## A320805.P10082638455712486890

`A319737(A091500(n))`
-/

namespace A320805.P10082638455712486890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319737 (A091500 n).toNat

end

end A320805.P10082638455712486890

/-! ## A320805.P13798938790104126705

`A319737(A095980(n))`
-/

namespace A320805.P13798938790104126705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319737 (A095980 n).toNat

end

end A320805.P13798938790104126705

/-! ## A320805.P9048763267058267943

`A319737(A138164(n))`
-/

namespace A320805.P9048763267058267943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319737 (A138164 n).toNat

end

end A320805.P9048763267058267943

/-!
# A320807: Number of non-isomorphic multiset partitions of weight n in which all parts are aperiodic and all parts of the dual are also aperiodic.

The programs for A320807, there is no canonical definition to state claims against.
-/

/-! ## A320807.P5200489113659644964

`A225687(2*(2*a(n-1)+(3^(n-1)-1)*a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A320807.P5200489113659644964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A225687 (SequenceMachineLib.roundAway (2 * ((2 * a (n - 1) : ℚ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) * (a (n - 2) : ℚ)))).toNat

end

end A320807.P5200489113659644964

/-! ## A320807.P17786559936616909305

`A230022(A150918(n))`
-/

namespace A320807.P17786559936616909305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230022 (A150918 n).toNat

end

end A320807.P17786559936616909305

/-! ## A320807.P13135806069284259554

`A347793(A073190(n))`
-/

namespace A320807.P13135806069284259554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347793 (A073190 n).toNat

end

end A320807.P13135806069284259554

/-!
# A320808: Regular tetrangle where T(n,k,i) is the number of nonnegative integer matrices up to row and column permutations with no zero rows or columns and k nonzero entries summing to n, with i columns.

The programs for A320808, there is no canonical definition to state claims against.
-/

/-! ## A320808.P8528873028407543146

`A136522(18*n²)+A056558(n)`
-/

namespace A320808.P8528873028407543146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (18 * n ^ 2) + A056558 n

end

end A320808.P8528873028407543146

/-! ## A320808.P11150322935480751119

`A056558(n)+A025455(A000032(n))`
-/

namespace A320808.P11150322935480751119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n + A025455 (A000032 n).toNat

end

end A320808.P11150322935480751119

/-! ## A320808.P3106702409146111579

`A056558(n)+A000122(A045946(n))`
-/

namespace A320808.P3106702409146111579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n + A000122 (A045946 n).toNat

end

end A320808.P3106702409146111579

/-! ## A320808.P7310371093501903733

`A056558(n)+A000007(A060498(n))`
-/

namespace A320808.P7310371093501903733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n + A000007 (A060498 n).toNat

end

end A320808.P7310371093501903733

/-! ## A320808.P3394140234308500820

`A240465(A354788(n))+A056558(n)`
-/

namespace A320808.P3394140234308500820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (A354788 n).toNat + A056558 n

end

end A320808.P3394140234308500820

/-!
# A320810: Number of non-isomorphic multiset partitions of weight n whose part-sizes have a common divisor > 1.

The programs for A320810, there is no canonical definition to state claims against.
-/

/-! ## A320810.P4313649879828011659

`A007716(n+1)-A321283(n+1)`
-/

namespace A320810.P4313649879828011659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 (n + 1) - A321283 (n + 1)

end

end A320810.P4313649879828011659

/-!
# A320811: Number of non-isomorphic multiset partitions with no singletons of aperiodic multisets of size n.

The programs for A320811, there is no canonical definition to state claims against.
-/

/-! ## A320811.P15873646093584878612

`A349380(A349404(n)+A349300(n))`
-/

namespace A320811.P15873646093584878612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349380 (A349404 n + A349300 n).toNat

end

end A320811.P15873646093584878612

/-!
# A320813: Number of non-isomorphic multiset partitions of an aperiodic multiset of weight n such that there are no singletons and all parts are themselves aperiodic multisets.

The programs for A320813, there is no canonical definition to state claims against.
-/

/-! ## A320813.P7696211929944823959

`xor(A045917(A125187(n)), A376784(n))`
-/

namespace A320813.P7696211929944823959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045917 (A125187 n).toNat) (A376784 n)

end

end A320813.P7696211929944823959

/-! ## A320813.P2038374411105352760

`A185283(A287512(n+1))+A033301(n)`
-/

namespace A320813.P2038374411105352760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A287512 (n + 1)).toNat + A033301 n

end

end A320813.P2038374411105352760

/-! ## A320813.P1113901884452981123

`xor(A262689(A180894(n+1)), A338706(n+1))`
-/

namespace A320813.P1113901884452981123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A262689 (A180894 (n + 1)).toNat) (A338706 (n + 1))

end

end A320813.P1113901884452981123

/-! ## A320813.P15189425160799711370

`and(A304201(n), A304224(A304221(2*n+1)))`
-/

namespace A320813.P15189425160799711370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A304201 n) (A304224 (A304221 (2 * n + 1)).toNat)

end

end A320813.P15189425160799711370

/-!
# A320814: Approximation of the 2-adic integer exp(4) up to 2^n.

The programs for A320814, there is no canonical definition to state claims against.
-/

/-! ## A320814.P13557900465715201736

`and(333, A325826(A000079(n)))`
-/

namespace A320814.P13557900465715201736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 333 (A325826 (A000079 n).toNat)

end

end A320814.P13557900465715201736

/-! ## A320814.P17035428370117996611

`A069174(A341538(n+2))%A000079(n)`
-/

namespace A320814.P17035428370117996611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069174 (A341538 (n + 2)).toNat) (A000079 n)

end

end A320814.P17035428370117996611

/-! ## A320814.P17436675341694793264

`and(A000225(n), A069174(A341538(n+2)))`
-/

namespace A320814.P17436675341694793264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A069174 (A341538 (n + 2)).toNat)

end

end A320814.P17436675341694793264

/-! ## A320814.P2911748058747700279

`and(A036563(n), A069174(A341538(n+2)))`
-/

namespace A320814.P2911748058747700279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036563 n) (A069174 (A341538 (n + 2)).toNat)

end

end A320814.P2911748058747700279

/-! ## A320814.P8378550938178252241

`A157431(2^n)%(2^n)`
-/

namespace A320814.P8378550938178252241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157431 (2 ^ n)) (2 ^ n : ℤ)

end

end A320814.P8378550938178252241

/-!
# A320815: Digits of the 2-adic integer exp(4).

The programs for A320815, there is no canonical definition to state claims against.
-/

/-! ## A320815.P613523477597696180

`(A320814(n+1)-A320814(n))/2^n`
-/

namespace A320815.P613523477597696180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320814 (n + 1) - A320814 n : ℚ) / (2 ^ n : ℚ)

end

end A320815.P613523477597696180

/-! ## A320815.P13881264094074779483

`A104597(C(2, Δ[A320814(n)]))`
-/

namespace A320815.P13881264094074779483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104597 (Nat.choose 2 (f1 (n + 1) - f1 n).toNat)

end

end A320815.P13881264094074779483

/-! ## A320815.P16001697951029766962

`A266755(C(2, Δ[A320814(n)]))`
-/

namespace A320815.P16001697951029766962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (Nat.choose 2 (f1 (n + 1) - f1 n).toNat)

end

end A320815.P16001697951029766962

/-! ## A320815.P16623035194116733461

`A056885(C(n, Δ[A320814(n)])²)`
-/

namespace A320815.P16623035194116733461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056885 (Nat.choose n (f1 (n + 1) - f1 n).toNat ^ 2)

end

end A320815.P16623035194116733461

/-! ## A320815.P14689120419269906085

`A320814(Δ[A320814(n)]/A011782(n))`
-/

namespace A320815.P14689120419269906085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A011782 n : ℚ))).toNat

end

end A320815.P14689120419269906085

/-! ## A320815.P16054512014717447720

`A357368(C(A320814(n), A320814(n+1)))`
-/

namespace A320815.P16054512014717447720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357368 (Nat.choose (A320814 n).toNat (A320814 (n + 1)).toNat)

end

end A320815.P16054512014717447720

/-! ## A320815.P16055078956214739600

`Δ[A320814(n)]/A000079(n)`
-/

namespace A320815.P16055078956214739600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A320815.P16055078956214739600

/-! ## A320815.P14194932263668933636

`Δ[A320814(n)]/A034008(n+2)`
-/

namespace A320815.P14194932263668933636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A034008 (n + 2) : ℚ)

end

end A320815.P14194932263668933636

/-!
# A320816: Number of partitions of n with exactly three sorts of part 1 which are introduced in ascending order.

The programs for A320816, there is no canonical definition to state claims against.
-/

/-! ## A320816.P16864217646635777034

`A320734(n+3)-A320733(n+3)`
-/

namespace A320816.P16864217646635777034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320734 (n + 3) - A320733 (n + 3)

end

end A320816.P16864217646635777034

/-! ## A320816.P12223432815161766578

`A259401(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A320816.P12223432815161766578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259401 n + 3 * a (n - 1)

end

end A320816.P12223432815161766578

/-! ## A320816.P6869447252676403336

`∑[A090764(n)+3*a(n-1)]` with `a(0)=1`
-/

namespace A320816.P6869447252676403336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A090764 n + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320816.P6869447252676403336

/-! ## A320816.P14427164525858793164

`A292746(A167614(n+2))`
-/

namespace A320816.P14427164525858793164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A167614 (n + 2)).toNat

end

end A320816.P14427164525858793164

/-! ## A320816.P4047294012696093483

`A292746(A055999(n)+9)`
-/

namespace A320816.P4047294012696093483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A055999 n + 9).toNat

end

end A320816.P4047294012696093483

/-! ## A320816.P1165669338929468162

`A292746(eq[3, A002262(n)])`
-/

namespace A320816.P1165669338929468162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320816.P1165669338929468162

/-! ## A320816.P6628741509927398565

`A292746(A340266(n+2)+1)`
-/

namespace A320816.P6628741509927398565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A340266 (n + 2) + 1).toNat

end

end A320816.P6628741509927398565

/-! ## A320816.P3603523454419764893

`A292746(eq[1, A144328(n+1)-2])`
-/

namespace A320816.P3603523454419764893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320816.P3603523454419764893

/-! ## A320816.P14829431986453048981

`A292746(eq[2, A002260(n+1)-2])`
-/

namespace A320816.P14829431986453048981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320816.P14829431986453048981

/-! ## A320816.P16092155522265176195

`A292746(eq[2, A135223(n+1)-2])`
-/

namespace A320816.P16092155522265176195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320816.P16092155522265176195

/-!
# A320817: Number of partitions of n with exactly four sorts of part 1 which are introduced in ascending order.

The programs for A320817, there is no canonical definition to state claims against.
-/

/-! ## A320817.P3852425866607100985

`A320735(n+4)-A320734(n+4)`
-/

namespace A320817.P3852425866607100985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320735 (n + 4) - A320734 (n + 4)

end

end A320817.P3852425866607100985

/-! ## A320817.P16908639753073096641

`A292746(eq[4, A002262(n)])`
-/

namespace A320817.P16908639753073096641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320817.P16908639753073096641

/-! ## A320817.P8544086794311174694

`A292746(A167499(n+3)-1)`
-/

namespace A320817.P8544086794311174694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A167499 (n + 3) - 1).toNat

end

end A320817.P8544086794311174694

/-! ## A320817.P15112454238749696038

`A292746(A133263(n+4)+2)`
-/

namespace A320817.P15112454238749696038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A133263 (n + 4) + 2).toNat

end

end A320817.P15112454238749696038

/-! ## A320817.P14367900321299828251

`A292746(eq[5, A002260(n+1)])`
-/

namespace A320817.P14367900321299828251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320817.P14367900321299828251

/-! ## A320817.P1115087740137687118

`A292746(eq[25, A133819(n+1)])`
-/

namespace A320817.P1115087740137687118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320817.P1115087740137687118

/-! ## A320817.P7955985486923021368

`A292746(eq[2, A144328(n+1)-2])`
-/

namespace A320817.P7955985486923021368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320817.P7955985486923021368

/-! ## A320817.P4521514309875032931

`A292746(eq[2, A144328(n+1)/2])`
-/

namespace A320817.P4521514309875032931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A320817.P4521514309875032931

/-!
# A320818: Number of partitions of n with exactly five sorts of part 1 which are introduced in ascending order.

The programs for A320818, there is no canonical definition to state claims against.
-/

/-! ## A320818.P12986234884257352551

`A320736(n+5)-A320735(n+5)`
-/

namespace A320818.P12986234884257352551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320736 (n + 5) - A320735 (n + 5)

end

end A320818.P12986234884257352551

/-! ## A320818.P4881309068853056543

`A292746(A167499(n+4))`
-/

namespace A320818.P4881309068853056543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A167499 (n + 4)).toNat

end

end A320818.P4881309068853056543

/-! ## A320818.P17956913985886072914

`A292746(eq[5, A002262(n)])`
-/

namespace A320818.P17956913985886072914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320818.P17956913985886072914

/-! ## A320818.P11333072339676154950

`A292746(eq[6, A002260(n+1)])`
-/

namespace A320818.P11333072339676154950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320818.P11333072339676154950

/-! ## A320818.P4791850887407011577

`A292746(eq[36, A133819(n+1)])`
-/

namespace A320818.P4791850887407011577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320818.P4791850887407011577

/-!
# A320819: Number of partitions of n with exactly six sorts of part 1 which are introduced in ascending order.

The programs for A320819, there is no canonical definition to state claims against.
-/

/-! ## A320819.P17176903634285127212

`A320737(n+6)-A320736(n+6)`
-/

namespace A320819.P17176903634285127212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320737 (n + 6) - A320736 (n + 6)

end

end A320819.P17176903634285127212

/-! ## A320819.P8255384918135215530

`A292746(eq[6, A002262(n)])`
-/

namespace A320819.P8255384918135215530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320819.P8255384918135215530

/-! ## A320819.P15858156302588311922

`A292746(A167499(n+5)+1)`
-/

namespace A320819.P15858156302588311922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A167499 (n + 5) + 1).toNat

end

end A320819.P15858156302588311922

/-! ## A320819.P7058421820548428227

`A292746(eq[7, A002260(n+1)])`
-/

namespace A320819.P7058421820548428227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320819.P7058421820548428227

/-! ## A320819.P4791974471108237293

`A292746(eq[49, A133819(n+1)])`
-/

namespace A320819.P4791974471108237293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320819.P4791974471108237293

/-!
# A320820: Number of partitions of n with exactly seven sorts of part 1 which are introduced in ascending order.

The programs for A320820, there is no canonical definition to state claims against.
-/

/-! ## A320820.P6413387348133884245

`A320738(n+7)-A320737(n+7)`
-/

namespace A320820.P6413387348133884245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320738 (n + 7) - A320737 (n + 7)

end

end A320820.P6413387348133884245

/-! ## A320820.P10780232582823463997

`A292746(eq[7, A002262(n)])`
-/

namespace A320820.P10780232582823463997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320820.P10780232582823463997

/-! ## A320820.P5378437757119315287

`A292746(A000096(n+6)+8)`
-/

namespace A320820.P5378437757119315287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A000096 (n + 6) + 8).toNat

end

end A320820.P5378437757119315287

/-! ## A320820.P3749185339089832882

`A292746(eq[8, A002260(n+1)])`
-/

namespace A320820.P3749185339089832882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320820.P3749185339089832882

/-! ## A320820.P16171317128614133312

`A292746(eq[64, A133819(n+1)])`
-/

namespace A320820.P16171317128614133312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320820.P16171317128614133312

/-! ## A320820.P1959075168377070930

`A292746(A167499(n+4)+A005408(n+7))`
-/

namespace A320820.P1959075168377070930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A167499 (n + 4) + A005408 (n + 7)).toNat

end

end A320820.P1959075168377070930

/-!
# A320821: Number of partitions of n with exactly eight sorts of part 1 which are introduced in ascending order.

The programs for A320821, there is no canonical definition to state claims against.
-/

/-! ## A320821.P6697209506829271798

`A320739(n+8)-A320738(n+8)`
-/

namespace A320821.P6697209506829271798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320739 (n + 8) - A320738 (n + 8)

end

end A320821.P6697209506829271798

/-! ## A320821.P1889727150201969269

`A292746(A167499(n+7)+3)`
-/

namespace A320821.P1889727150201969269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A167499 (n + 7) + 3).toNat

end

end A320821.P1889727150201969269

/-! ## A320821.P8934667183650346110

`A292746(A167614(n+7)+5)`
-/

namespace A320821.P8934667183650346110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A167614 (n + 7) + 5).toNat

end

end A320821.P8934667183650346110

/-! ## A320821.P6039413211448927527

`A292746(A000096(n+7)+9)`
-/

namespace A320821.P6039413211448927527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A000096 (n + 7) + 9).toNat

end

end A320821.P6039413211448927527

/-! ## A320821.P16984482146590696392

`A292746(A034856(n+7)+10)`
-/

namespace A320821.P16984482146590696392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A034856 (n + 7) + 10).toNat

end

end A320821.P16984482146590696392

/-! ## A320821.P726618891140593203

`A292746(A056115(n+3)+23)`
-/

namespace A320821.P726618891140593203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A056115 (n + 3) + 23).toNat

end

end A320821.P726618891140593203

/-! ## A320821.P7956280469922703006

`A292746(A052905(n+7)-A005843(n+3))`
-/

namespace A320821.P7956280469922703006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A052905 (n + 7) - A005843 (n + 3)).toNat

end

end A320821.P7956280469922703006

/-!
# A320822: Number of partitions of n with exactly nine sorts of part 1 which are introduced in ascending order.

The programs for A320822, there is no canonical definition to state claims against.
-/

/-! ## A320822.P12690517281810893204

`A320740(n+9)-A320739(n+9)`
-/

namespace A320822.P12690517281810893204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320740 (n + 9) - A320739 (n + 9)

end

end A320822.P12690517281810893204

/-! ## A320822.P11608913011669532597

`A292746(eq[9, A002262(n)])`
-/

namespace A320822.P11608913011669532597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320822.P11608913011669532597

/-! ## A320822.P17018473238409449266

`A292746(eq[9, A130270(n+1)])`
-/

namespace A320822.P17018473238409449266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320822.P17018473238409449266

/-! ## A320822.P12776482719255088203

`A292746(eq[9, A144328(n+1)])`
-/

namespace A320822.P12776482719255088203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320822.P12776482719255088203

/-! ## A320822.P9474374235590807183

`A292746(eq[10, A002260(n+1)])`
-/

namespace A320822.P9474374235590807183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320822.P9474374235590807183

/-!
# A320823: Number of partitions of n with exactly ten sorts of part 1 which are introduced in ascending order.

The programs for A320823, there is no canonical definition to state claims against.
-/

/-! ## A320823.P11682439410957508090

`A320741(n+10)-A320740(n+10)`
-/

namespace A320823.P11682439410957508090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320741 (n + 10) - A320740 (n + 10)

end

end A320823.P11682439410957508090

/-! ## A320823.P9007942267322918155

`A292746(eq[10, A002262(n)])`
-/

namespace A320823.P9007942267322918155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320823.P9007942267322918155

/-! ## A320823.P12884476069361552695

`A292746(eq[10, A144328(n+1)])`
-/

namespace A320823.P12884476069361552695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320823.P12884476069361552695

/-! ## A320823.P15831608742697409065

`A292746(eq[11, A002260(n+1)])`
-/

namespace A320823.P15831608742697409065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320823.P15831608742697409065

/-! ## A320823.P311204288827004155

`A292746(eq[11, A135223(n+1)])`
-/

namespace A320823.P311204288827004155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320823.P311204288827004155

/-!
# A320824: T(n, k) = (m*n)!/(k!*(n-k)!)^m with m = 3; triangle read by rows, 0 <= k <= n.

The programs for A320824, the canonical program `A320824.P17278235265627644779` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320824 has offset 0).

The definition of A320824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320824.P10552885021759332067

`A006480(row(n))*A181543(C(row(n)+1, 2)+col(n))`
-/

namespace A320824.P10552885021759332067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 (SequenceMachineLib.triRow n) * A181543 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A320824.P10552885021759332067

namespace A320824

/-- `A006480(row(n))*A181543(C(row(n)+1, 2)+col(n))` -/
def P10552885021759332067.Spec : Prop :=
  ∀ n, P10552885021759332067.a n = A320824 n

end A320824

/-! ## A320824.P17278235265627644779

`(3*row(n))!/(col(n)!*(row(n)-col(n))!)^3`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320824

/-- `(3*row(n))!/(col(n)!*(row(n)-col(n))!)^3` -/
def P17278235265627644779.Spec : Prop :=
  ∀ n, P17278235265627644779.a n = (A320824 n : ℚ)

end A320824

/-! ## A320824.P435778913153359658

`(3*row(n))!/row(n)!^3*C(row(n), col(n))^3`
-/

namespace A320824.P435778913153359658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial (SequenceMachineLib.triRow n) ^ 3 : ℚ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 3 : ℚ)

end

end A320824.P435778913153359658

namespace A320824

/-- `(3*row(n))!/row(n)!^3*C(row(n), col(n))^3` -/
def P435778913153359658.Spec : Prop :=
  ∀ n, P435778913153359658.a n = (A320824 n : ℚ)

end A320824

/-! ## A320824.P6364300311971763929

`A006480(A003056(n))*A181543(n)`
-/

namespace A320824.P6364300311971763929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 (A003056 n).toNat * A181543 n

end

end A320824.P6364300311971763929

namespace A320824

/-- `A006480(A003056(n))*A181543(n)` -/
def P6364300311971763929.Spec : Prop :=
  ∀ n, P6364300311971763929.a n = A320824 n

end A320824

/-! ## A320824.P4813167163865055903

`A181543(n)*A318107(A057944(n))`
-/

namespace A320824.P4813167163865055903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181543 n * A318107 (A057944 n).toNat

end

end A320824.P4813167163865055903

namespace A320824

/-- `A181543(n)*A318107(A057944(n))` -/
def P4813167163865055903.Spec : Prop :=
  ∀ n, P4813167163865055903.a n = A320824 n

end A320824

/-! ## A320824.P4633480587226975129

`A006480(A259361(2*n))*A181543(n)`
-/

namespace A320824.P4633480587226975129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 (A259361 (2 * n)).toNat * A181543 n

end

end A320824.P4633480587226975129

namespace A320824

/-- `A006480(A259361(2*n))*A181543(n)` -/
def P4633480587226975129.Spec : Prop :=
  ∀ n, P4633480587226975129.a n = A320824 n

end A320824

/-! ## A320824.P5254775852815818598

`Δ[A102363(n)]^3*A318107(A057944(n))`
-/

namespace A320824.P5254775852815818598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3 * A318107 (A057944 n).toNat

end

end A320824.P5254775852815818598

namespace A320824

/-- `Δ[A102363(n)]^3*A318107(A057944(n))` -/
def P5254775852815818598.Spec : Prop :=
  ∀ n, P5254775852815818598.a n = A320824 n

end A320824

/-! ## A320824.P4615063304489381842

`A007318(n)*A008459(n)*A318107(A057944(n))`
-/

namespace A320824.P4615063304489381842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008459 n * A318107 (A057944 n).toNat

end

end A320824.P4615063304489381842

namespace A320824

/-- `A007318(n)*A008459(n)*A318107(A057944(n))` -/
def P4615063304489381842.Spec : Prop :=
  ∀ n, P4615063304489381842.a n = A320824 n

end A320824

/-! ## A320824.P14445487941331674130

`A318107(A057944(n))/A007318(n)*A202750(n)`
-/

namespace A320824.P14445487941331674130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318107 (A057944 n).toNat : ℚ) / (A007318 n : ℚ) * (A202750 n : ℚ)

end

end A320824.P14445487941331674130

namespace A320824

/-- `A318107(A057944(n))/A007318(n)*A202750(n)` -/
def P14445487941331674130.Spec : Prop :=
  ∀ n, P14445487941331674130.a n = (A320824 n : ℚ)

end A320824

/-! ## A320824.P10780381199186051236

`(A176348(n)/A176346(n))^3*A318107(A057944(n))`
-/

namespace A320824.P10780381199186051236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A176348 n : ℚ) / (A176346 n : ℚ)) ^ 3 * (A318107 (A057944 n).toNat : ℚ)

end

end A320824.P10780381199186051236

namespace A320824

/-- `(A176348(n)/A176346(n))^3*A318107(A057944(n))` -/
def P10780381199186051236.Spec : Prop :=
  ∀ n, P10780381199186051236.a n = (A320824 n : ℚ)

end A320824

/-! ## A320824.P17240985275046498713

`A028326(n)/2*A130595(n)²*A318107(A057944(n))`
-/

namespace A320824.P17240985275046498713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A130595 n ^ 2 : ℚ) * (A318107 (A057944 n).toNat : ℚ)

end

end A320824.P17240985275046498713

namespace A320824

/-- `A028326(n)/2*A130595(n)²*A318107(A057944(n))` -/
def P17240985275046498713.Spec : Prop :=
  ∀ n, P17240985275046498713.a n = (A320824 n : ℚ)

end A320824

/-!
# A320825: Expansion of -(10*x^2 - 6*x + 1)*sqrt(1 - 4*x)/(3*x - 1)^2.

The programs for A320825, there is no canonical definition to state claims against.
-/

/-! ## A320825.P15429365221470575877

`A320826(n)+A320827(n)`
-/

namespace A320825.P15429365221470575877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320826 n + A320827 n

end

end A320825.P15429365221470575877

/-!
# A320826: Expansion of x*(1 - 4*x)^(3/2)/(3*x - 1)^2.

The programs for A320826, there is no canonical definition to state claims against.
-/

/-! ## A320826.P4581371535996118395

`A320825(n)-A320827(n)`
-/

namespace A320826.P4581371535996118395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320825 n - A320827 n

end

end A320826.P4581371535996118395

/-! ## A320826.P13137358890661646003

`n-A328804(A000262(n))`
-/

namespace A320826.P13137358890661646003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A328804 (A000262 n).toNat

end

end A320826.P13137358890661646003

/-! ## A320826.P11423125737793164538

`A325460(A007476(n))-A359919(n)`
-/

namespace A320826.P11423125737793164538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (A007476 n).toNat - A359919 n

end

end A320826.P11423125737793164538

/-!
# A320827: G.f.: -sqrt(1 - 4*x)*(2*x - 1)/(3*x - 1).

The programs for A320827, the canonical program `A320827.P3304668886705030181` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320827 has offset 0).

The definition of A320827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320827.P7481266221070773611

`A320825(n)-A320826(n)`
-/

namespace A320827.P7481266221070773611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320825 n - A320826 n

end

end A320827.P7481266221070773611

namespace A320827

/-- `A320825(n)-A320826(n)` -/
def P7481266221070773611.Spec : Prop :=
  ∀ n, P7481266221070773611.a n = A320827 n

end A320827

/-! ## A320827.P3304668886705030181

`3*a(n-1)-A115143(n)-A115143(n)` with `a(0)=-1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320827

/-- `3*a(n-1)-A115143(n)-A115143(n)` -/
def P3304668886705030181.Spec : Prop :=
  ∀ n, P3304668886705030181.a n = A320827 n

theorem P3304668886705030181.correct : P3304668886705030181.Spec := by
  intro n
  simp only [A320827]

end A320827

/-! ## A320827.P13510910990632985584

`A085237(A028488(n+1))-3`
-/

namespace A320827.P13510910990632985584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085237 (A028488 (n + 1)).toNat - 3

end

end A320827.P13510910990632985584

namespace A320827

/-- `A085237(A028488(n+1))-3` -/
def P13510910990632985584.Spec : Prop :=
  ∀ n, P13510910990632985584.a n = A320827 n

end A320827

/-!
# A320829: Continued fraction of the positive constant t in (1,2) such that the partial denominators form the Beatty sequence {floor((n+1)*t), n >= 0}.

The programs for A320829, there is no canonical definition to state claims against.
-/

/-! ## A320829.P2695909254413313746

`floor((n+1)*atan(8))`
-/

namespace A320829.P2695909254413313746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.arctan (8 : ℝ)⌋

end

end A320829.P2695909254413313746

/-! ## A320829.P13169709232300293201

`floor(81*(n+1)/56)`
-/

namespace A320829.P13169709232300293201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(81 * (n + 1) : ℚ) / 56⌋

end

end A320829.P13169709232300293201

/-! ## A320829.P714806098535530105

`comp[floor(2*n*tan(45))]`
-/

namespace A320829.P714806098535530105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) * Real.tan (45 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A320829.P714806098535530105

/-! ## A320829.P124111000226412606

`∑[Δ[floor(n*atan(8))]!]`
-/

namespace A320829.P124111000226412606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.arctan (8 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320829.P124111000226412606

/-! ## A320829.P13022729420689704939

`ceil((n+1)*atan(8))-1`
-/

namespace A320829.P13022729420689704939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.arctan (8 : ℝ)⌉ - 1

end

end A320829.P13022729420689704939

/-! ## A320829.P6285960687803678478

`∑[Δ[floor(n*atan(8))]%3]`
-/

namespace A320829.P6285960687803678478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.arctan (8 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320829.P6285960687803678478

/-! ## A320829.P2191529217991035395

`comp[round(sqrt(A152744(n)))]`
-/

namespace A320829.P2191529217991035395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A152744 n : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A320829.P2191529217991035395

/-! ## A320829.P14482191861617843416

`A186237(n+2)-2`
-/

namespace A320829.P14482191861617843416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186237 (n + 2) - 2

end

end A320829.P14482191861617843416

/-! ## A320829.P8151489403837685174

`A023444(A186237(n+2))`
-/

namespace A320829.P8151489403837685174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A186237 (n + 2)).toNat

end

end A320829.P8151489403837685174

/-!
# A320830: E.g.f.: [Sum_{n>=0} x^n * exp(n^2*x)] * [Sum_{n>=0} x^n / exp(n^2*x)].

The programs for A320830, there is no canonical definition to state claims against.
-/

/-! ## A320830.P1554021627996537778

`2*A333862(a(n-1))` with `a(0)=1`
-/

namespace A320830.P1554021627996537778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A333862 (a (n - 1)).toNat

end

end A320830.P1554021627996537778

/-!
# A320832: Continued fraction of a constant t with partial denominators {a(n), n>=0} such that the continued fraction of 2*t yields partial denominators {3*a(n), n>=0}.

The programs for A320832, there is no canonical definition to state claims against.
-/

/-! ## A320832.P730576664431320830

`A086389(gcd(A000129(n), A042950(n)))`
-/

namespace A320832.P730576664431320830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086389 (Int.gcd (A000129 n) (A042950 n))

end

end A320832.P730576664431320830

/-! ## A320832.P9244619576211533164

`A025280(A174033(gcd(n, A011782(n))))`
-/

namespace A320832.P9244619576211533164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025280 (A174033 (Int.gcd (n : ℤ) (A011782 n))).toNat

end

end A320832.P9244619576211533164

/-!
# A320834: Continued fraction of a constant t with partial denominators {a(n), n>=0} such that the continued fraction of 3*t yields partial denominators {4*a(n), n>=0}.

The programs for A320834, there is no canonical definition to state claims against.
-/

/-! ## A320834.P11803371782511669010

`A026233(A320952(n)%A130745(n+1))`
-/

namespace A320834.P11803371782511669010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (Int.tmod (A320952 n) (A130745 (n + 1))).toNat

end

end A320834.P11803371782511669010

/-! ## A320834.P8772888543068161949

`A050296(A320952(n))%A050287(n+3)`
-/

namespace A320834.P8772888543068161949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050296 (A320952 n).toNat) (A050287 (n + 3))

end

end A320834.P8772888543068161949

/-!
# A320835: a(n) = Sum (-1)^k where the sum is over all multiset partitions of a multiset whose multiplicities are the prime indices of n and k is the number of parts, or factorizations of A181821(n).

The programs for A320835, there is no canonical definition to state claims against.
-/

/-! ## A320835.P6087828712371300573

`A316441(A181821(n+1))`
-/

namespace A320835.P6087828712371300573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A181821 (n + 1)).toNat

end

end A320835.P6087828712371300573

/-! ## A320835.P14942493556054378999

`A316441(A304660(n+1))`
-/

namespace A320835.P14942493556054378999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A304660 (n + 1)).toNat

end

end A320835.P14942493556054378999

/-! ## A320835.P3636034679333229152

`A316441(∏{e}[A108951(n+1), A002110(#)])`
-/

namespace A320835.P3636034679333229152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A320835.P3636034679333229152

/-! ## A320835.P5623842604354204244

`A010892(xor(A001296(n), A080046(n+1)))`
-/

namespace A320835.P5623842604354204244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (Int.xor (A001296 n) (A080046 (n + 1))).toNat

end

end A320835.P5623842604354204244

/-! ## A320835.P813283818759063952

`A057078(∑[A342779(n+1)]*A101020(n))`
-/

namespace A320835.P813283818759063952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 ((∑ j ∈ Finset.range (n + 1), f1 j) * A101020 n).toNat

end

end A320835.P813283818759063952

/-!
# A320836: a(n) = Sum (-1)^k where the sum is over all strict multiset partitions of a multiset whose multiplicities are the prime indices of n and k is the number of parts, or strict factorizations of A181821(n).

The programs for A320836, there is no canonical definition to state claims against.
-/

/-! ## A320836.P14918874044578153918

`A114592(A181821(n+1))`
-/

namespace A320836.P14918874044578153918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A181821 (n + 1)).toNat

end

end A320836.P14918874044578153918

/-! ## A320836.P12936553212524055119

`A114592(A304660(n+1))`
-/

namespace A320836.P12936553212524055119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A304660 (n + 1)).toNat

end

end A320836.P12936553212524055119

/-!
# A320837: For p the n-th prime congruent to 1 (mod 4), a(n) is the clique number of the subgraph of the quadratic residue (Paley) graph over F_p, the field of order p, that is induced by the set of vertices that are themselves quadratic residues.

The programs for A320837, there is no canonical definition to state claims against.
-/

/-! ## A320837.P1026858149782280276

`A320757(1+n)-1`
-/

namespace A320837.P1026858149782280276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320757 (1 + n) - 1

end

end A320837.P1026858149782280276

/-! ## A320837.P11222255424884077871

`A000401(A320757(n+1))`
-/

namespace A320837.P11222255424884077871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A320757 (n + 1)).toNat

end

end A320837.P11222255424884077871

/-! ## A320837.P10492924634461109320

`A259361(A320757(n+1)²)`
-/

namespace A320837.P10492924634461109320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A320757 (n + 1) ^ 2).toNat

end

end A320837.P10492924634461109320

/-! ## A320837.P13971106828973345702

`A023444(A320757(n+1)+1)`
-/

namespace A320837.P13971106828973345702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A320757 (n + 1) + 1).toNat

end

end A320837.P13971106828973345702

/-! ## A320837.P14719680620454788924

`A289207(A320757(n+1)+1)`
-/

namespace A320837.P14719680620454788924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A320757 (n + 1) + 1).toNat

end

end A320837.P14719680620454788924

/-! ## A320837.P11974309024977453011

`A267183(3*A320757(n+1))`
-/

namespace A320837.P11974309024977453011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267183 (3 * A320757 (n + 1)).toNat

end

end A320837.P11974309024977453011

/-! ## A320837.P4797413638938030253

`A004507(A320757(n+1)+8)`
-/

namespace A320837.P4797413638938030253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 (A320757 (n + 1) + 8).toNat

end

end A320837.P4797413638938030253

/-! ## A320837.P7559334141184641765

`A259361(A320757(n+1)^2)`
-/

namespace A320837.P7559334141184641765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A320757 (n + 1) ^ 2).toNat

end

end A320837.P7559334141184641765

/-! ## A320837.P5901182375064091591

`A082854(A320757(n+1)+63)`
-/

namespace A320837.P5901182375064091591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082854 (A320757 (n + 1) + 63).toNat

end

end A320837.P5901182375064091591

/-! ## A320837.P14437185801911163474

`A072828(n+1)%A320757(n+1)`
-/

namespace A320837.P14437185801911163474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A320757 (n + 1))

end

end A320837.P14437185801911163474

/-!
# A320838: a(0) = 0, a(n) is the number of x such that a(x) = a(n-1) and there exists no y such that x < y < n and a(y) > a(n-1).

The programs for A320838, there is no canonical definition to state claims against.
-/

/-! ## A320838.P9465115426647683330

`gcd(A007089(A000071(n+1)), A085693(n))`
-/

namespace A320838.P9465115426647683330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007089 (A000071 (n + 1)).toNat) (A085693 n)

end

end A320838.P9465115426647683330

/-! ## A320838.P11550282132611854426

`A165277(∑[A147600(n)]+n)`
-/

namespace A320838.P11550282132611854426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A320838.P11550282132611854426

/-! ## A320838.P4932520530768144485

`A126307(n)+A055641(A202864(n+1))`
-/

namespace A320838.P4932520530768144485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 n + A055641 (A202864 (n + 1)).toNat

end

end A320838.P4932520530768144485

/-! ## A320838.P4384373657329790117

`A163915(A007179(n))%5`
-/

namespace A320838.P4384373657329790117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163915 (A007179 n).toNat) 5

end

end A320838.P4384373657329790117

/-! ## A320838.P5232541990103758575

`A332202(A332206(gcd(n, ∑[n])))`
-/

namespace A320838.P5232541990103758575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332202 (A332206 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A320838.P5232541990103758575

/-!
# A320840: Smallest N such that A092391(k) >= n for all k >= N.

The programs for A320840, there is no canonical definition to state claims against.
-/

/-! ## A320840.P11134003662247856192

`A020753(n+1)-A026806(A260003(n+1))`
-/

namespace A320840.P11134003662247856192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 1) - A026806 (A260003 (n + 1)).toNat

end

end A320840.P11134003662247856192

/-! ## A320840.P7033451200486996516

`A007967((n+1)²)-A212625(A086786(n+1))`
-/

namespace A320840.P7033451200486996516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 ((n + 1) ^ 2) - A212625 (A086786 (n + 1)).toNat

end

end A320840.P7033451200486996516

/-! ## A320840.P15386419837476328808

`A000005(A000079(n))-A000120(A325362(n+1))`
-/

namespace A320840.P15386419837476328808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 n).toNat - A000120 (A325362 (n + 1)).toNat

end

end A320840.P15386419837476328808

/-! ## A320840.P6355787316435706300

`ceil(A260488(n)/A006530(A007283(n)))`
-/

namespace A320840.P6355787316435706300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A260488 n : ℚ) / (A006530 (A007283 n).toNat : ℚ)⌉

end

end A320840.P6355787316435706300

/-! ## A320840.P12337861678527482935

`A001222(2^(n+1))-A000120(A325362(n+1))`
-/

namespace A320840.P12337861678527482935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ (n + 1)) - A000120 (A325362 (n + 1)).toNat

end

end A320840.P12337861678527482935

/-!
# A320841: Number T(n,k) of partitions of n into k positive cubes; triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

The programs for A320841, the canonical program `A320841.P10418808688263106149` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320841 has offset 0).

The definition of A320841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320841.P16637988749708794978

`A037876(A193592(n))^A173787(n)`
-/

namespace A320841.P16637988749708794978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037876 (A193592 n).toNat : ℚ) ^ (A173787 n : ℤ)

end

end A320841.P16637988749708794978

namespace A320841

/-- `A037876(A193592(n))^A173787(n)` -/
def P16637988749708794978.Spec : Prop :=
  ∀ n, P16637988749708794978.a n = (A320841 n : ℚ)

end A320841

/-! ## A320841.P4600640950847035122

`A037876(A193592(n))^A185813(n)`
-/

namespace A320841.P4600640950847035122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037876 (A193592 n).toNat : ℚ) ^ (A185813 n : ℤ)

end

end A320841.P4600640950847035122

namespace A320841

/-- `A037876(A193592(n))^A185813(n)` -/
def P4600640950847035122.Spec : Prop :=
  ∀ n, P4600640950847035122.a n = (A320841 n : ℚ)

end A320841

/-! ## A320841.P16446643542709913

`A037876(A193592(n))^A132393(n+1)`
-/

namespace A320841.P16446643542709913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037876 (A193592 n).toNat : ℚ) ^ (A132393 (n + 1) : ℤ)

end

end A320841.P16446643542709913

namespace A320841

/-- `A037876(A193592(n))^A132393(n+1)` -/
def P16446643542709913.Spec : Prop :=
  ∀ n, P16446643542709913.a n = (A320841 n : ℚ)

end A320841

/-! ## A320841.P13919091441602670043

`A037876(A193592(n))^A247404(n+1)`
-/

namespace A320841.P13919091441602670043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037876 (A193592 n).toNat : ℚ) ^ (A247404 (n + 1) : ℤ)

end

end A320841.P13919091441602670043

namespace A320841

/-- `A037876(A193592(n))^A247404(n+1)` -/
def P13919091441602670043.Spec : Prop :=
  ∀ n, P13919091441602670043.a n = (A320841 n : ℚ)

end A320841

/-! ## A320841.P3197261017430928063

`A037876(A193592(n))^A268886(n+1)`
-/

namespace A320841.P3197261017430928063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037876 (A193592 n).toNat : ℚ) ^ (A268886 (n + 1) : ℤ)

end

end A320841.P3197261017430928063

namespace A320841

/-- `A037876(A193592(n))^A268886(n+1)` -/
def P3197261017430928063.Spec : Prop :=
  ∀ n, P3197261017430928063.a n = (A320841 n : ℚ)

end A320841

/-! ## A320841.P6833778677543351840

`A037876(A193592(n))^A301999(n+1)`
-/

namespace A320841.P6833778677543351840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037876 (A193592 n).toNat : ℚ) ^ (A301999 (n + 1) : ℤ)

end

end A320841.P6833778677543351840

namespace A320841

/-- `A037876(A193592(n))^A301999(n+1)` -/
def P6833778677543351840.Spec : Prop :=
  ∀ n, P6833778677543351840.a n = (A320841 n : ℚ)

end A320841

/-! ## A320841.P18302792705519010697

`A102506(A185782(n+1)+1)%2`
-/

namespace A320841.P18302792705519010697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102506 (A185782 (n + 1) + 1).toNat) 2

end

end A320841.P18302792705519010697

namespace A320841

/-- `A102506(A185782(n+1)+1)%2` -/
def P18302792705519010697.Spec : Prop :=
  ∀ n, P18302792705519010697.a n = A320841 n

end A320841

/-! ## A320841.P10418808688263106149

`A256434(A130330(n)-A010054(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320841

/-- `A256434(A130330(n)-A010054(n))` -/
def P10418808688263106149.Spec : Prop :=
  ∀ n, P10418808688263106149.a n = A320841 n

theorem P10418808688263106149.correct : P10418808688263106149.Spec := by
  intro n
  simp only [A320841]

end A320841

/-! ## A320841.P13314718653242820306

`A256434(A130330(n)-A015626(n))`
-/

namespace A320841.P13314718653242820306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (A130330 n - A015626 n).toNat

end

end A320841.P13314718653242820306

namespace A320841

/-- `A256434(A130330(n)-A015626(n))` -/
def P13314718653242820306.Spec : Prop :=
  ∀ n, P13314718653242820306.a n = A320841 n

end A320841

/-! ## A320841.P10404391457577593494

`A256434(A130330(n)-A279329(n))`
-/

namespace A320841.P10404391457577593494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (A130330 n - A279329 n).toNat

end

end A320841.P10404391457577593494

namespace A320841

/-- `A256434(A130330(n)-A279329(n))` -/
def P10404391457577593494.Spec : Prop :=
  ∀ n, P10404391457577593494.a n = A320841 n

end A320841

/-! ## A320841.P6308845292335426026

`and(A099627(n), A256434(A130330(n)))`
-/

namespace A320841.P6308845292335426026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099627 n) (A256434 (A130330 n).toNat)

end

end A320841.P6308845292335426026

namespace A320841

/-- `and(A099627(n), A256434(A130330(n)))` -/
def P6308845292335426026.Spec : Prop :=
  ∀ n, P6308845292335426026.a n = A320841 n

end A320841

/-! ## A320841.P18004138501432814910

`A256434(xor(A010054(n), A130330(n)))`
-/

namespace A320841.P18004138501432814910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (Int.xor (A010054 n) (A130330 n)).toNat

end

end A320841.P18004138501432814910

namespace A320841

/-- `A256434(xor(A010054(n), A130330(n)))` -/
def P18004138501432814910.Spec : Prop :=
  ∀ n, P18004138501432814910.a n = A320841 n

end A320841

/-! ## A320841.P4102250365192667152

`A256434(xor(A130330(n), A279329(n)))`
-/

namespace A320841.P4102250365192667152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (Int.xor (A130330 n) (A279329 n)).toNat

end

end A320841.P4102250365192667152

namespace A320841

/-- `A256434(xor(A130330(n), A279329(n)))` -/
def P4102250365192667152.Spec : Prop :=
  ∀ n, P4102250365192667152.a n = A320841 n

end A320841

/-! ## A320841.P14917867916362013478

`A256434(A130330(n)+n*A010054(n))`
-/

namespace A320841.P14917867916362013478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (A130330 n + (n : ℤ) * A010054 n).toNat

end

end A320841.P14917867916362013478

namespace A320841

/-- `A256434(A130330(n)+n*A010054(n))` -/
def P14917867916362013478.Spec : Prop :=
  ∀ n, P14917867916362013478.a n = A320841 n

end A320841

/-! ## A320841.P2871842801029753577

`A185124(A095832(n+1)%A202560(n+1))`
-/

namespace A320841.P2871842801029753577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 (Int.tmod (A095832 (n + 1)) (A202560 (n + 1))).toNat

end

end A320841.P2871842801029753577

namespace A320841

/-- `A185124(A095832(n+1)%A202560(n+1))` -/
def P2871842801029753577.Spec : Prop :=
  ∀ n, P2871842801029753577.a n = A320841 n

end A320841

/-! ## A320841.P11435726869102510060

`A262693(A243060(n+1)+1)`
-/

namespace A320841.P11435726869102510060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (A243060 (n + 1) + 1).toNat

end

end A320841.P11435726869102510060

namespace A320841

/-- `A262693(A243060(n+1)+1)` -/
def P11435726869102510060.Spec : Prop :=
  ∀ n, P11435726869102510060.a n = A320841 n

end A320841

/-! ## A320841.P6802182799690599818

`A036987(3*A243060(n+1))`
-/

namespace A320841.P6802182799690599818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (3 * A243060 (n + 1)).toNat

end

end A320841.P6802182799690599818

namespace A320841

/-- `A036987(3*A243060(n+1))` -/
def P6802182799690599818.Spec : Prop :=
  ∀ n, P6802182799690599818.a n = A320841 n

end A320841

/-! ## A320841.P13419084206699837343

`A010051(lcm(5, A243060(n+1)))`
-/

namespace A320841.P13419084206699837343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.lcm 5 (A243060 (n + 1)))

end

end A320841.P13419084206699837343

namespace A320841

/-- `A010051(lcm(5, A243060(n+1)))` -/
def P13419084206699837343.Spec : Prop :=
  ∀ n, P13419084206699837343.a n = A320841 n

end A320841

/-! ## A320841.P14897241672740288505

`A058343(A308896(A243060(n+1)+1))`
-/

namespace A320841.P14897241672740288505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (A308896 (A243060 (n + 1) + 1).toNat).toNat

end

end A320841.P14897241672740288505

namespace A320841

/-- `A058343(A308896(A243060(n+1)+1))` -/
def P14897241672740288505.Spec : Prop :=
  ∀ n, P14897241672740288505.a n = A320841 n

end A320841

/-! ## A320841.P6251270868536281540

`A000007(A099375(n)%A243060(n+1))`
-/

namespace A320841.P6251270868536281540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A099375 n) (A243060 (n + 1))).toNat

end

end A320841.P6251270868536281540

namespace A320841

/-- `A000007(A099375(n)%A243060(n+1))` -/
def P6251270868536281540.Spec : Prop :=
  ∀ n, P6251270868536281540.a n = A320841 n

end A320841

/-!
# A320842: Regular triangle whose rows are the coefficients of the Dominici expansion of f(t,x) = (1/2)*(1 - t^2)^(-x) with respect to t.

The programs for A320842, there is no canonical definition to state claims against.
-/

/-! ## A320842.P2574084641814339148

`A096900(A349260(n))`
-/

namespace A320842.P2574084641814339148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096900 (A349260 n).toNat

end

end A320842.P2574084641814339148

/-!
# A320844: Expansion of Product_{k>0} (1-x^p(k)), where p(k) is the number of partitions of k (A000041).

The programs for A320844, there is no canonical definition to state claims against.
-/

/-! ## A320844.P4676436761150055670

`A008683(xor(10, A062154(2*n+1)))`
-/

namespace A320844.P4676436761150055670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.xor 10 (A062154 (2 * n + 1))).toNat

end

end A320844.P4676436761150055670

/-! ## A320844.P14251119751338218831

`A008683(A042965(∑[A102702(n)]))`
-/

namespace A320844.P14251119751338218831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A042965 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A320844.P14251119751338218831

/-! ## A320844.P16495154071259319398

`A008683(∑[A104629(A241730(n))])`
-/

namespace A320844.P16495154071259319398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 (A241730 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320844.P16495154071259319398

/-! ## A320844.P729750938812132547

`A008683(∑[A209639(A283998(n))!])`
-/

namespace A320844.P729750938812132547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A209639 (A283998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320844.P729750938812132547

/-! ## A320844.P14691372174043327126

`A008683(A284482(n)*A339904(n+1))`
-/

namespace A320844.P14691372174043327126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A284482 n * A339904 (n + 1)).toNat

end

end A320844.P14691372174043327126

/-!
# A320847: Length of the longest common subsequence of the first n terms of the Thue-Morse sequence (A010060) and its bitwise complement.

The programs for A320847, there is no canonical definition to state claims against.
-/

/-! ## A320847.P1740058788596393718

`∑[A055641(A006942(n)*A087255(n+1))]`
-/

namespace A320847.P1740058788596393718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A006942 n * A087255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320847.P1740058788596393718

/-! ## A320847.P16972950125140655638

`∑[A055641(A006942(n))^A087263(n+1)]`
-/

namespace A320847.P16972950125140655638
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055641 (A006942 n).toNat : ℚ) ^ (A087263 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320847.P16972950125140655638

/-! ## A320847.P12210982731595079112

`∑[A055641(A179760(2*n+3))^A087263(n+1)]`
-/

namespace A320847.P12210982731595079112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055641 (A179760 (2 * n + 3)).toNat : ℚ) ^ (A087263 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320847.P12210982731595079112

/-! ## A320847.P12915231822513660417

`∑[A055641(A033184(n+1))^A087263(n+1)]`
-/

namespace A320847.P12915231822513660417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055641 (A033184 (n + 1)).toNat : ℚ) ^ (A087263 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320847.P12915231822513660417

/-! ## A320847.P11204554418909063707

`∑[A055641((61*n+4)*A087255(n+1))]`
-/

namespace A320847.P11204554418909063707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 ((61 * n + 4 : ℤ) * A087255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320847.P11204554418909063707

/-!
# A320848: Number of 2-element subsets of [n] whose sum is a triangular number.

The programs for A320848, the canonical program `A320848.P7817123128409178598` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320848 has offset 2).

The definition of A320848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320848.P7817123128409178598

`∑[A186352(n+2)-A181133(n+2)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A320848

/-- `∑[A186352(n+2)-A181133(n+2)]` -/
def P7817123128409178598.Spec : Prop :=
  ∀ n, P7817123128409178598.a n = A320848 (n + 2)

theorem P7817123128409178598.correct : P7817123128409178598.Spec := by
  intro n
  simp only [A320848, Nat.add_sub_cancel]

end A320848

/-! ## A320848.P13531932286073586450

`∑[A003056(2*n+3)-A003056(n+2)]`
-/

namespace A320848.P13531932286073586450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n + 3) - A003056 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320848.P13531932286073586450

namespace A320848

/-- `∑[A003056(2*n+3)-A003056(n+2)]` -/
def P13531932286073586450.Spec : Prop :=
  ∀ n, P13531932286073586450.a n = A320848 (n + 2)

end A320848

/-! ## A320848.P4874147178456545240

`∑[A002024(A005843(n+2))-A002024(n+3)]`
-/

namespace A320848.P4874147178456545240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A005843 (n + 2)).toNat - A002024 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320848.P4874147178456545240

namespace A320848

/-- `∑[A002024(A005843(n+2))-A002024(n+3)]` -/
def P4874147178456545240.Spec : Prop :=
  ∀ n, P4874147178456545240.a n = A320848 (n + 2)

end A320848

/-! ## A320848.P12037302751691446792

`∑[A080036(2*(n+2))-A000037(2*n+5)]`
-/

namespace A320848.P12037302751691446792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (2 * (n + 2)) - A000037 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320848.P12037302751691446792

namespace A320848

/-- `∑[A080036(2*(n+2))-A000037(2*n+5)]` -/
def P12037302751691446792.Spec : Prop :=
  ∀ n, P12037302751691446792.a n = A320848 (n + 2)

end A320848

/-! ## A320848.P788737055096863265

`∑[A123578(A005843(n+2))-A123578(n+3)]`
-/

namespace A320848.P788737055096863265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A005843 (n + 2)).toNat - A123578 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320848.P788737055096863265

namespace A320848

/-- `∑[A123578(A005843(n+2))-A123578(n+3)]` -/
def P788737055096863265.Spec : Prop :=
  ∀ n, P788737055096863265.a n = A320848 (n + 2)

end A320848

/-! ## A320848.P15077513136429496727

`A284249(∑[n+2]+3)`
-/

namespace A320848.P15077513136429496727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A320848.P15077513136429496727

namespace A320848

/-- `A284249(∑[n+2]+3)` -/
def P15077513136429496727.Spec : Prop :=
  ∀ n, P15077513136429496727.a n = A320848 (n + 2)

end A320848

/-!
# A320849: Number of 3-element subsets of [n] whose sum is a triangular number.

The programs for A320849, there is no canonical definition to state claims against.
-/

/-! ## A320849.P13759950121465333099

`A284249(∑[n+3]+6)`
-/

namespace A320849.P13759950121465333099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A320849.P13759950121465333099

/-! ## A320849.P6304753616445622087

`A284249(A167614(n+2))%A001060(n)`
-/

namespace A320849.P6304753616445622087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284249 (A167614 (n + 2)).toNat) (A001060 n)

end

end A320849.P6304753616445622087

/-! ## A320849.P6579079904100283354

`gcd(A000038(n), A284249(A167614(n+2)))`
-/

namespace A320849.P6579079904100283354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284249 (A167614 (n + 2)).toNat)

end

end A320849.P6579079904100283354

/-! ## A320849.P7018454606164572456

`A284249(A167614(n+2))+A091684(3*n)`
-/

namespace A320849.P7018454606164572456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A167614 (n + 2)).toNat + A091684 (3 * n)

end

end A320849.P7018454606164572456

/-! ## A320849.P12433706611815530898

`A284249(A167614(n+2))^A000108(C(2, n))`
-/

namespace A320849.P12433706611815530898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284249 (A167614 (n + 2)).toNat : ℚ) ^ (A000108 (Nat.choose 2 n) : ℤ)

end

end A320849.P12433706611815530898

/-! ## A320849.P17967936089554391039

`A284249(A167614(n+2))^A017988(C(2, n))`
-/

namespace A320849.P17967936089554391039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284249 (A167614 (n + 2)).toNat : ℚ) ^ (A017988 (Nat.choose 2 n) : ℤ)

end

end A320849.P17967936089554391039

/-! ## A320849.P18077541313002811668

`A284249(A167614(n+2))^A034386(C(2, n))`
-/

namespace A320849.P18077541313002811668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284249 (A167614 (n + 2)).toNat : ℚ) ^ (A034386 (Nat.choose 2 n) : ℤ)

end

end A320849.P18077541313002811668

/-! ## A320849.P11443675787320232390

`A284256(A284255(n+1))+A284249(A167614(n+2))`
-/

namespace A320849.P11443675787320232390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A284255 (n + 1)).toNat + A284249 (A167614 (n + 2)).toNat

end

end A320849.P11443675787320232390

/-! ## A320849.P17899496130005992140

`A005361(A000040(n+2))*A284249(A167614(n+2))`
-/

namespace A320849.P17899496130005992140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A000040 (n + 2)).toNat * A284249 (A167614 (n + 2)).toNat

end

end A320849.P17899496130005992140

/-! ## A320849.P16769469150237817467

`A005361(A013638(n+3))*A284249(A167614(n+2))`
-/

namespace A320849.P16769469150237817467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A013638 (n + 3)).toNat * A284249 (A167614 (n + 2)).toNat

end

end A320849.P16769469150237817467

/-!
# A320850: Number of 4-element subsets of [n] whose sum is a triangular number.

The programs for A320850, there is no canonical definition to state claims against.
-/

/-! ## A320850.P18016926403423350949

`A284249(A000096(n+3)+5)`
-/

namespace A320850.P18016926403423350949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000096 (n + 3) + 5).toNat

end

end A320850.P18016926403423350949

/-! ## A320850.P15864894361091139372

`A284249(A000217(n+4)+4)`
-/

namespace A320850.P15864894361091139372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000217 (n + 4) + 4).toNat

end

end A320850.P15864894361091139372

/-! ## A320850.P14321256079646294049

`A284249(A034856(n+3)+6)`
-/

namespace A320850.P14321256079646294049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A034856 (n + 3) + 6).toNat

end

end A320850.P14321256079646294049

/-! ## A320850.P11397963170955750510

`A284249(Δ[A023551(n+1)-n²])`
-/

namespace A320850.P11397963170955750510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (f1 (n + 1) - f1 n).toNat

end

end A320850.P11397963170955750510

/-! ## A320850.P154444073518222647

`A284249(Δ[A023551(n+1)]-A005408(n))`
-/

namespace A320850.P154444073518222647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (f1 (n + 1) - f1 n - A005408 n).toNat

end

end A320850.P154444073518222647

/-! ## A320850.P17854155078268605150

`A284249(eq[4, A002262(n)])`
-/

namespace A320850.P17854155078268605150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320850.P17854155078268605150

/-!
# A320851: Number of 5-element subsets of [n] whose sum is a triangular number.

The programs for A320851, there is no canonical definition to state claims against.
-/

/-! ## A320851.P1789986496198550883

`A284249(A167499(n+4))`
-/

namespace A320851.P1789986496198550883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A167499 (n + 4)).toNat

end

end A320851.P1789986496198550883

/-! ## A320851.P4513233982324681735

`A284249(A000124(n+5)+4)`
-/

namespace A320851.P4513233982324681735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000124 (n + 5) + 4).toNat

end

end A320851.P4513233982324681735

/-! ## A320851.P13375320784856902072

`A284249(A000096(n+4)+6)`
-/

namespace A320851.P13375320784856902072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000096 (n + 4) + 6).toNat

end

end A320851.P13375320784856902072

/-! ## A320851.P10517597126689030662

`A284249(A000217(n+5)+5)`
-/

namespace A320851.P10517597126689030662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000217 (n + 5) + 5).toNat

end

end A320851.P10517597126689030662

/-! ## A320851.P10579417360583661207

`A284249(Δ[A005581(n+4)]+6)`
-/

namespace A320851.P10579417360583661207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (f1 (n + 1) - f1 n + 6).toNat

end

end A320851.P10579417360583661207

/-! ## A320851.P7773348372006330723

`A284249(A027379(n+4)-(n-2))`
-/

namespace A320851.P7773348372006330723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A027379 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A320851.P7773348372006330723

/-! ## A320851.P8821915862687155290

`A284249(eq[5, A002262(n)])`
-/

namespace A320851.P8821915862687155290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320851.P8821915862687155290

/-!
# A320852: Number of 6-element subsets of [n] whose sum is a triangular number.

The programs for A320852, there is no canonical definition to state claims against.
-/

/-! ## A320852.P12683420285001251065

`A284249(A167499(n+5)+1)`
-/

namespace A320852.P12683420285001251065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A167499 (n + 5) + 1).toNat

end

end A320852.P12683420285001251065

/-! ## A320852.P8509910801581403367

`A284249(A000124(n+6)+5)`
-/

namespace A320852.P8509910801581403367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000124 (n + 6) + 5).toNat

end

end A320852.P8509910801581403367

/-! ## A320852.P11532892744527794419

`A284249(A000096(n+5)+7)`
-/

namespace A320852.P11532892744527794419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000096 (n + 5) + 7).toNat

end

end A320852.P11532892744527794419

/-! ## A320852.P2415195059858605967

`A284249(A000217(n+6)+6)`
-/

namespace A320852.P2415195059858605967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000217 (n + 6) + 6).toNat

end

end A320852.P2415195059858605967

/-! ## A320852.P1330230488806968272

`A284249(A034856(n+5)+8)`
-/

namespace A320852.P1330230488806968272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A034856 (n + 5) + 8).toNat

end

end A320852.P1330230488806968272

/-! ## A320852.P596009832093684748

`A284249(A055999(n+1)+A005408(n+11))`
-/

namespace A320852.P596009832093684748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A055999 (n + 1) + A005408 (n + 11)).toNat

end

end A320852.P596009832093684748

/-!
# A320853: Number of 7-element subsets of [n] whose sum is a triangular number.

The programs for A320853, there is no canonical definition to state claims against.
-/

/-! ## A320853.P3472654018183255910

`A284249(A167499(n+6)+2)`
-/

namespace A320853.P3472654018183255910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A167499 (n + 6) + 2).toNat

end

end A320853.P3472654018183255910

/-! ## A320853.P11262493963686388317

`A284249(A000124(n+7)+6)`
-/

namespace A320853.P11262493963686388317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000124 (n + 7) + 6).toNat

end

end A320853.P11262493963686388317

/-! ## A320853.P12742315280320725162

`A284249(A000096(n+6)+8)`
-/

namespace A320853.P12742315280320725162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000096 (n + 6) + 8).toNat

end

end A320853.P12742315280320725162

/-! ## A320853.P13471995856353417385

`A284249(A000217(n+7)+7)`
-/

namespace A320853.P13471995856353417385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000217 (n + 7) + 7).toNat

end

end A320853.P13471995856353417385

/-! ## A320853.P1542019101354987297

`A284249(A055998(n+5)+10)`
-/

namespace A320853.P1542019101354987297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A055998 (n + 5) + 10).toNat

end

end A320853.P1542019101354987297

/-!
# A320854: Number of 8-element subsets of [n] whose sum is a triangular number.

The programs for A320854, there is no canonical definition to state claims against.
-/

/-! ## A320854.P15369642582059450138

`A284249(A000124(n+8)+7)`
-/

namespace A320854.P15369642582059450138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000124 (n + 8) + 7).toNat

end

end A320854.P15369642582059450138

/-! ## A320854.P18386723900089433730

`A284249(A000096(n+7)+9)`
-/

namespace A320854.P18386723900089433730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000096 (n + 7) + 9).toNat

end

end A320854.P18386723900089433730

/-! ## A320854.P15898800385639176303

`A284249(A000217(n+8)+8)`
-/

namespace A320854.P15898800385639176303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000217 (n + 8) + 8).toNat

end

end A320854.P15898800385639176303

/-! ## A320854.P15769528489497485897

`A284249(A027691(n+7)-A055998(n+4))`
-/

namespace A320854.P15769528489497485897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A027691 (n + 7) - A055998 (n + 4)).toNat

end

end A320854.P15769528489497485897

/-! ## A320854.P16964788308791408133

`A284249(A055999(n+3)+A005408(n+14))`
-/

namespace A320854.P16964788308791408133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A055999 (n + 3) + A005408 (n + 14)).toNat

end

end A320854.P16964788308791408133

/-! ## A320854.P10842683552868000746

`A284249(A027691(n+9)%A055998(n+8))`
-/

namespace A320854.P10842683552868000746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (Int.tmod (A027691 (n + 9)) (A055998 (n + 8))).toNat

end

end A320854.P10842683552868000746

/-!
# A320855: Number of 9-element subsets of [n] whose sum is a triangular number.

The programs for A320855, there is no canonical definition to state claims against.
-/

/-! ## A320855.P10832501226755194707

`A284249(A000124(n+9)+8)`
-/

namespace A320855.P10832501226755194707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000124 (n + 9) + 8).toNat

end

end A320855.P10832501226755194707

/-! ## A320855.P14911623310155642850

`A284249(A000096(n+8)+10)`
-/

namespace A320855.P14911623310155642850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000096 (n + 8) + 10).toNat

end

end A320855.P14911623310155642850

/-! ## A320855.P16987710869273325887

`A284249(A000217(n+9)+9)`
-/

namespace A320855.P16987710869273325887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000217 (n + 9) + 9).toNat

end

end A320855.P16987710869273325887

/-! ## A320855.P15331168289104418073

`A284249(A055998(n+9)-A005408(n+4))`
-/

namespace A320855.P15331168289104418073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A055998 (n + 9) - A005408 (n + 4)).toNat

end

end A320855.P15331168289104418073

/-! ## A320855.P11172383005400383867

`A284249(A027691(n+9)-A055998(n+7))`
-/

namespace A320855.P11172383005400383867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A027691 (n + 9) - A055998 (n + 7)).toNat

end

end A320855.P11172383005400383867

/-!
# A320856: Number of 10-element subsets of [n] whose sum is a triangular number.

The programs for A320856, there is no canonical definition to state claims against.
-/

/-! ## A320856.P9755218785624157622

`A284249(A000124(n+10)+9)`
-/

namespace A320856.P9755218785624157622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000124 (n + 10) + 9).toNat

end

end A320856.P9755218785624157622

/-! ## A320856.P1556596700745887230

`A284249(A000096(n+9)+11)`
-/

namespace A320856.P1556596700745887230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000096 (n + 9) + 11).toNat

end

end A320856.P1556596700745887230

/-! ## A320856.P12746507706234545247

`A284249(A000217(n+10)+10)`
-/

namespace A320856.P12746507706234545247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A000217 (n + 10) + 10).toNat

end

end A320856.P12746507706234545247

/-! ## A320856.P4173098500646707748

`A284249(eq[11, A002260(n+1)])`
-/

namespace A320856.P4173098500646707748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320856.P4173098500646707748

/-! ## A320856.P5405146860676071573

`A284249(eq[10, A002262(n)])`
-/

namespace A320856.P5405146860676071573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320856.P5405146860676071573

/-!
# A320857: a(n) = Pi(8,5)(n) + Pi(8,7)(n) - Pi(8,1)(n) - Pi(8,3)(n) where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

The programs for A320857, the canonical program `A320857.P17934183647824238584` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320857 has offset 1).

The definition of A320857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320857.P2688113678920022309

`∑[-A188510(∑{p}[n+1, C(#, n)])]`
-/

namespace A320857.P2688113678920022309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A188510 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320857.P2688113678920022309

namespace A320857

/-- `∑[-A188510(∑{p}[n+1, C(#, n)])]` -/
def P2688113678920022309.Spec : Prop :=
  ∀ n, P2688113678920022309.a n = A320857 (n + 1)

end A320857

/-! ## A320857.P12081593925447588230

`A320858(∑[∏{p}[n+1, C(#, n)%2]])`
-/

namespace A320857.P12081593925447588230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320858 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320857.P12081593925447588230

namespace A320857

/-- `A320858(∑[∏{p}[n+1, C(#, n)%2]])` -/
def P12081593925447588230.Spec : Prop :=
  ∀ n, P12081593925447588230.a n = A320857 (n + 1)

end A320857

/-! ## A320857.P13798003411270114735

`A320858(∑[char[p?[2*n+1]-1]]+1)`
-/

namespace A320857.P13798003411270114735
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320857.P13798003411270114735

namespace A320857

/-- `A320858(∑[char[p?[2*n+1]-1]]+1)` -/
def P13798003411270114735.Spec : Prop :=
  ∀ n, P13798003411270114735.a n = A320857 (n + 1)

end A320857

/-! ## A320857.P17934183647824238584

`∑[A112448(A142150(n))]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A320857

/-- `∑[A112448(A142150(n))]` -/
def P17934183647824238584.Spec : Prop :=
  ∀ n, P17934183647824238584.a n = A320857 (n + 1)

theorem P17934183647824238584.correct : P17934183647824238584.Spec := by
  intro n
  simp only [A320857, Nat.add_sub_cancel]

end A320857

/-! ## A320857.P16043963895198632883

`∑[-A188510(A118136(n))]`
-/

namespace A320857.P16043963895198632883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A188510 (A118136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320857.P16043963895198632883

namespace A320857

/-- `∑[-A188510(A118136(n))]` -/
def P16043963895198632883.Spec : Prop :=
  ∀ n, P16043963895198632883.a n = A320857 (n + 1)

end A320857

/-! ## A320857.P17188186247821762876

`∑[A118828(A118136(n)+1)]`
-/

namespace A320857.P17188186247821762876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (A118136 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320857.P17188186247821762876

namespace A320857

/-- `∑[A118828(A118136(n)+1)]` -/
def P17188186247821762876.Spec : Prop :=
  ∀ n, P17188186247821762876.a n = A320857 (n + 1)

end A320857

/-! ## A320857.P14511807860633224319

`A320858(∑[A080545(n+1)])`
-/

namespace A320857.P14511807860633224319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320858 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320857.P14511807860633224319

namespace A320857

/-- `A320858(∑[A080545(n+1)])` -/
def P14511807860633224319.Spec : Prop :=
  ∀ n, P14511807860633224319.a n = A320857 (n + 1)

end A320857

/-! ## A320857.P14434041610202799690

`∑[A118828(∑{d}[A118136(n), #])]`
-/

namespace A320857.P14434041610202799690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118136 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320857.P14434041610202799690

namespace A320857

/-- `∑[A118828(∑{d}[A118136(n), #])]` -/
def P14434041610202799690.Spec : Prop :=
  ∀ n, P14434041610202799690.a n = A320857 (n + 1)

end A320857

/-! ## A320857.P12387918992254464904

`∑[A188510(5*∑{p}[n+1, C(#, n)])]`
-/

namespace A320857.P12387918992254464904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (5 * (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320857.P12387918992254464904

namespace A320857

/-- `∑[A188510(5*∑{p}[n+1, C(#, n)])]` -/
def P12387918992254464904.Spec : Prop :=
  ∀ n, P12387918992254464904.a n = A320857 (n + 1)

end A320857

/-!
# A320858: a(n) = A320857(prime(n)).

The programs for A320858, the canonical program `A320858.P9831833047763191400` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320858 has offset 1).

The definition of A320858 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320857, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320858.P9831833047763191400

`A320857(A000040(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320858

/-- `A320857(A000040(n+1))` -/
def P9831833047763191400.Spec : Prop :=
  ∀ n, P9831833047763191400.a n = A320858 (n + 1)

theorem P9831833047763191400.correct : P9831833047763191400.Spec := by
  intro n
  simp only [A320858, Nat.add_sub_cancel]

end A320858

/-! ## A320858.P4475477944573800183

`∑[and(2, A102781(n+1))]-n`
-/

namespace A320858.P4475477944573800183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A102781 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A320858.P4475477944573800183

namespace A320858

/-- `∑[and(2, A102781(n+1))]-n` -/
def P4475477944573800183.Spec : Prop :=
  ∀ n, P4475477944573800183.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P9996893130824784296

`∑[A118825(p?[round(8*n/7)]+1)]`
-/

namespace A320858.P9996893130824784296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118825 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320858.P9996893130824784296

namespace A320858

/-- `∑[A118825(p?[round(8*n/7)]+1)]` -/
def P9996893130824784296.Spec : Prop :=
  ∀ n, P9996893130824784296.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P9873736694500531624

`∑[A091337(p?[a(n-1)+2]+2)]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A320858.P9873736694500531624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320858.P9873736694500531624

namespace A320858

/-- `∑[A091337(p?[a(n-1)+2]+2)]` -/
def P9873736694500531624.Spec : Prop :=
  ∀ n, P9873736694500531624.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P16092117037114507189

`A320857(Δ[A007504(n)])`
-/

namespace A320858.P16092117037114507189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (f1 (n + 1) - f1 n).toNat

end

end A320858.P16092117037114507189

namespace A320858

/-- `A320857(Δ[A007504(n)])` -/
def P16092117037114507189.Spec : Prop :=
  ∀ n, P16092117037114507189.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P3862611333039125440

`A320857(record[A051698(n)])`
-/

namespace A320858.P3862611333039125440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320858.P3862611333039125440

namespace A320858

/-- `A320857(record[A051698(n)])` -/
def P3862611333039125440.Spec : Prop :=
  ∀ n, P3862611333039125440.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P5288029573907738351

`A320857(A006005(n+1))`
-/

namespace A320858.P5288029573907738351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (A006005 (n + 1)).toNat

end

end A320858.P5288029573907738351

namespace A320858

/-- `A320857(A006005(n+1))` -/
def P5288029573907738351.Spec : Prop :=
  ∀ n, P5288029573907738351.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P11992397690507134104

`A320857(A055670(n+1))`
-/

namespace A320858.P11992397690507134104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (A055670 (n + 1)).toNat

end

end A320858.P11992397690507134104

namespace A320858

/-- `A320857(A055670(n+1))` -/
def P11992397690507134104.Spec : Prop :=
  ∀ n, P11992397690507134104.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P14291336232064530732

`A320857(A078444(n+1))`
-/

namespace A320858.P14291336232064530732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (A078444 (n + 1)).toNat

end

end A320858.P14291336232064530732

namespace A320858

/-- `A320857(A078444(n+1))` -/
def P14291336232064530732.Spec : Prop :=
  ∀ n, P14291336232064530732.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P16442963356291935315

`A320857(A161847(n+1))`
-/

namespace A320858.P16442963356291935315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (A161847 (n + 1)).toNat

end

end A320858.P16442963356291935315

namespace A320858

/-- `A320857(A161847(n+1))` -/
def P16442963356291935315.Spec : Prop :=
  ∀ n, P16442963356291935315.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P2877530775475647062

`A320857(A162735(n+1))`
-/

namespace A320858.P2877530775475647062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (A162735 (n + 1)).toNat

end

end A320858.P2877530775475647062

namespace A320858

/-- `A320857(A162735(n+1))` -/
def P2877530775475647062.Spec : Prop :=
  ∀ n, P2877530775475647062.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P5578649274296658296

`A320857(A162800(n+1))`
-/

namespace A320858.P5578649274296658296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (A162800 (n + 1)).toNat

end

end A320858.P5578649274296658296

namespace A320858

/-- `A320857(A162800(n+1))` -/
def P5578649274296658296.Spec : Prop :=
  ∀ n, P5578649274296658296.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P13381955160509582075

`∑[A118825(A008864(n+1))]`
-/

namespace A320858.P13381955160509582075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118825 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320858.P13381955160509582075

namespace A320858

/-- `∑[A118825(A008864(n+1))]` -/
def P13381955160509582075.Spec : Prop :=
  ∀ n, P13381955160509582075.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P1041536998475492996

`∑[1-A002325(record[A051698(n)])]`
-/

namespace A320858.P1041536998475492996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002325 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320858.P1041536998475492996

namespace A320858

/-- `∑[1-A002325(record[A051698(n)])]` -/
def P1041536998475492996.Spec : Prop :=
  ∀ n, P1041536998475492996.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P15174709446278177756

`∑[A118822(A000040(n+1)+1)]`
-/

namespace A320858.P15174709446278177756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118822 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320858.P15174709446278177756

namespace A320858

/-- `∑[A118822(A000040(n+1)+1)]` -/
def P15174709446278177756.Spec : Prop :=
  ∀ n, P15174709446278177756.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P11781850641570637244

`∑[A118828(A000040(n+1)+1)]`
-/

namespace A320858.P11781850641570637244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320858.P11781850641570637244

namespace A320858

/-- `∑[A118828(A000040(n+1)+1)]` -/
def P11781850641570637244.Spec : Prop :=
  ∀ n, P11781850641570637244.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P2231888257007807189

`∑[A118831(A000040(n+1)+1)]`
-/

namespace A320858.P2231888257007807189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118831 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320858.P2231888257007807189

namespace A320858

/-- `∑[A118831(A000040(n+1)+1)]` -/
def P2231888257007807189.Spec : Prop :=
  ∀ n, P2231888257007807189.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P12346697032063479738

`∑[A091337(A000040(n+1)+2)]`
-/

namespace A320858.P12346697032063479738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320858.P12346697032063479738

namespace A320858

/-- `∑[A091337(A000040(n+1)+2)]` -/
def P12346697032063479738.Spec : Prop :=
  ∀ n, P12346697032063479738.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P8513646306621231866

`A320857(A157049(n+1))`
-/

namespace A320858.P8513646306621231866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (A157049 (n + 1)).toNat

end

end A320858.P8513646306621231866

namespace A320858

/-- `A320857(A157049(n+1))` -/
def P8513646306621231866.Spec : Prop :=
  ∀ n, P8513646306621231866.a n = A320858 (n + 1)

end A320858

/-! ## A320858.P12252242645978664979

`A320857(A165972(n+1))`
-/

namespace A320858.P12252242645978664979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (A165972 (n + 1)).toNat

end

end A320858.P12252242645978664979

namespace A320858

/-- `A320857(A165972(n+1))` -/
def P12252242645978664979.Spec : Prop :=
  ∀ n, P12252242645978664979.a n = A320858 (n + 1)

end A320858

/-!
# A320859: Powers of 2 with initial digit 3.

The programs for A320859, the canonical program `A320859.P8143034707769871832` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320859 has offset 1).

The definition of A320859 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320859.P8143034707769871832

`2^A172404(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A320859

/-- `2^A172404(n+1)` -/
def P8143034707769871832.Spec : Prop :=
  ∀ n, P8143034707769871832.a n = (A320859 (n + 1) : ℚ)

end A320859

/-! ## A320859.P7650993880971238714

`A000079(A172404(n+1))`
-/

namespace A320859.P7650993880971238714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A172404 (n + 1)).toNat

end

end A320859.P7650993880971238714

namespace A320859

/-- `A000079(A172404(n+1))` -/
def P7650993880971238714.Spec : Prop :=
  ∀ n, P7650993880971238714.a n = A320859 (n + 1)

end A320859

/-! ## A320859.P16877808907603740823

`A000079(eq[3, A008952(n)])`
-/

namespace A320859.P16877808907603740823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320859.P16877808907603740823

namespace A320859

/-- `A000079(eq[3, A008952(n)])` -/
def P16877808907603740823.Spec : Prop :=
  ∀ n, P16877808907603740823.a n = A320859 (n + 1)

end A320859

/-! ## A320859.P2235752006549890230

`ratio[32^n²]`
-/

namespace A320859.P2235752006549890230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 ^ n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A320859.P2235752006549890230

namespace A320859

/-- `ratio[32^n²]` -/
def P2235752006549890230.Spec : Prop :=
  ∀ n, P2235752006549890230.a n = (A320859 (n + 1) : ℚ)

end A320859

/-!
# A320860: Powers of 2 with initial digit 4.

The programs for A320860, there is no canonical definition to state claims against.
-/

/-! ## A320860.P13034999340993265837

`A000079(A367294(n+1))`
-/

namespace A320860.P13034999340993265837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A367294 (n + 1)).toNat

end

end A320860.P13034999340993265837

/-! ## A320860.P17098409373974094510

`A000079(eq[4, A008952(n)])`
-/

namespace A320860.P17098409373974094510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320860.P17098409373974094510

/-!
# A320861: Powers of 2 with initial digit 5.

The programs for A320861, there is no canonical definition to state claims against.
-/

/-! ## A320861.P11734634656619671897

`A000079(A363060(n+1))`
-/

namespace A320861.P11734634656619671897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A363060 (n + 1)).toNat

end

end A320861.P11734634656619671897

/-! ## A320861.P11912090761228925732

`A000079(eq[5, A008952(n)])`
-/

namespace A320861.P11912090761228925732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320861.P11912090761228925732

/-! ## A320861.P16727023485248387687

`ratio[2^A079273(n+1)]`
-/

namespace A320861.P16727023485248387687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A079273 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n

end

end A320861.P16727023485248387687

/-!
# A320862: Powers of 2 with initial digit 6.

The programs for A320862, there is no canonical definition to state claims against.
-/

/-! ## A320862.P14609231378575004201

`A000079(eq[6, A008952(n)])`
-/

namespace A320862.P14609231378575004201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320862.P14609231378575004201

/-! ## A320862.P14839751193974240848

`A001222(A001248(n+1))^eq[6, A008952(n)]`
-/

namespace A320862.P14839751193974240848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001248 (n + 1)).toNat ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320862.P14839751193974240848

/-! ## A320862.P10216202834395237236

`A001222(A001748(n+1))^eq[6, A008952(n)]`
-/

namespace A320862.P10216202834395237236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001748 (n + 1)).toNat ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320862.P10216202834395237236

/-! ## A320862.P3044981300581681582

`A001222(A006094(n+1))^eq[6, A008952(n)]`
-/

namespace A320862.P3044981300581681582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006094 (n + 1)).toNat ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320862.P3044981300581681582

/-! ## A320862.P11669503379552396742

`A000122(A280076(n+1))^eq[6, A008952(n)]`
-/

namespace A320862.P11669503379552396742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A280076 (n + 1)).toNat ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320862.P11669503379552396742

/-!
# A320863: Powers of 2 with initial digit 7.

The programs for A320863, there is no canonical definition to state claims against.
-/

/-! ## A320863.P7067122534619061497

`2^A330243(n+1)`
-/

namespace A320863.P7067122534619061497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A330243 (n + 1) : ℤ)

end

end A320863.P7067122534619061497

/-! ## A320863.P9056681361894722865

`A000079(A330243(n+1))`
-/

namespace A320863.P9056681361894722865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A330243 (n + 1)).toNat

end

end A320863.P9056681361894722865

/-! ## A320863.P14249379754665564927

`A020707(A330243(n+1)-2)`
-/

namespace A320863.P14249379754665564927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (A330243 (n + 1) - 2).toNat

end

end A320863.P14249379754665564927

/-!
# A320864: Powers of 2 with initial digit 8.

The programs for A320864, there is no canonical definition to state claims against.
-/

/-! ## A320864.P14780053014243258561

`A000079(A367296(n+1))`
-/

namespace A320864.P14780053014243258561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A367296 (n + 1)).toNat

end

end A320864.P14780053014243258561

/-! ## A320864.P15019235904364726909

`A000079(eq[8, A008952(n)])`
-/

namespace A320864.P15019235904364726909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320864.P15019235904364726909

/-!
# A320865: 

The programs for A320865, there is no canonical definition to state claims against.
-/

/-! ## A320865.P8165834338548536560

`2^A097415(n+1)`
-/

namespace A320865.P8165834338548536560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A097415 (n + 1) : ℤ)

end

end A320865.P8165834338548536560

/-! ## A320865.P130429024927933931

`A000079(A097415(n+1))`
-/

namespace A320865.P130429024927933931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A097415 (n + 1)).toNat

end

end A320865.P130429024927933931

/-!
# A320866: Primes such that p + digitsum(p, base 4) is again a prime.

The programs for A320866, the canonical program `A320866.P15964022209481706421` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320866 has offset 1).

The definition of A320866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320866.P7072380366499028641

`eq[A032741(n), A210442(A230631(n))]`
-/

namespace A320866.P7072380366499028641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A230631 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320866.P7072380366499028641

namespace A320866

/-- `eq[A032741(n), A210442(A230631(n))]` -/
def P7072380366499028641.Spec : Prop :=
  ∀ n, (P7072380366499028641.a n : ℤ) = A320866 (n + 1)

end A320866

/-! ## A320866.P13382029387750007481

`eq[A105700(n), A210442(A230631(n))]`
-/

namespace A320866.P13382029387750007481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A230631 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320866.P13382029387750007481

namespace A320866

/-- `eq[A105700(n), A210442(A230631(n))]` -/
def P13382029387750007481.Spec : Prop :=
  ∀ n, (P13382029387750007481.a n : ℤ) = A320866 (n + 1)

end A320866

/-! ## A320866.P12300226475002670507

`eq[A053989(n+1), A210442(A230631(n))]`
-/

namespace A320866.P12300226475002670507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A230631 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320866.P12300226475002670507

namespace A320866

/-- `eq[A053989(n+1), A210442(A230631(n))]` -/
def P12300226475002670507.Spec : Prop :=
  ∀ n, (P12300226475002670507.a n : ℤ) = A320866 (n + 1)

end A320866

/-! ## A320866.P15510197842042495918

`eq[A210442(A230631(n)), A231820(n+1)]`
-/

namespace A320866.P15510197842042495918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A230631 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320866.P15510197842042495918

namespace A320866

/-- `eq[A210442(A230631(n)), A231820(n+1)]` -/
def P15510197842042495918.Spec : Prop :=
  ∀ n, (P15510197842042495918.a n : ℤ) = A320866 (n + 1)

end A320866

/-! ## A320866.P15964022209481706421

`eq[1, A105700(n*A105700(A230631(n)))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A320866

/-- `eq[1, A105700(n*A105700(A230631(n)))]` -/
def P15964022209481706421.Spec : Prop :=
  ∀ n, (P15964022209481706421.a n : ℤ) = A320866 (n + 1)

theorem P15964022209481706421.correct : P15964022209481706421.Spec := by
  intro n
  simp only [A320866, Nat.add_sub_cancel]

end A320866

/-! ## A320866.P11163141902155340173

`eq[A117545(n+1), A210442(A230631(n))]`
-/

namespace A320866.P11163141902155340173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A230631 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320866.P11163141902155340173

namespace A320866

/-- `eq[A117545(n+1), A210442(A230631(n))]` -/
def P11163141902155340173.Spec : Prop :=
  ∀ n, (P11163141902155340173.a n : ℤ) = A320866 (n + 1)

end A320866

/-!
# A320867: Primes such that p + digitsum(p, base 6) is again a prime.

The programs for A320867, there is no canonical definition to state claims against.
-/

/-! ## A320867.P8731840775663373808

`∩[A003057(A200183(3*n+4)), A052085(n+1)]`
-/

namespace A320867.P8731840775663373808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A200183 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320867.P8731840775663373808

/-!
# A320868: Primes such that p + digitsum(p, base 8) is again a prime.

The programs for A320868, there is no canonical definition to state claims against.
-/

/-! ## A320868.P16247400606992391684

`p?[A317710(2*n+5)+A006530(A305149(n+1))]`
-/

namespace A320868.P16247400606992391684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (2 * n + 5) + A006530 (A305149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320868.P16247400606992391684

/-!
# A320869: Primes such that p + digitsum(p, base 16) is again a prime.

The programs for A320869, there is no canonical definition to state claims against.
-/

/-! ## A320869.P6687278082538929417

`∩[A115420(n+1), A293194(n+1)]`
-/

namespace A320869.P6687278082538929417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320869.P6687278082538929417

/-!
# A320870: Irregular table: row n >= 0 lists numbers m >= 0 such that n = A062028(m) := m + sum of digits of m.

The programs for A320870, there is no canonical definition to state claims against.
-/

/-! ## A320870.P7108145558202033488

`A007953(A242799(n+1))-1`
-/

namespace A320870.P7108145558202033488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A242799 (n + 1)).toNat - 1

end

end A320870.P7108145558202033488

/-!
# A320871: List of all inequivalent 3 X 3 magic squares made of distinct positive integers, sorted by increasing sum. For each equivalence class modulo symmetries of the square, the lexicographically smallest representative is shown.

The programs for A320871, there is no canonical definition to state claims against.
-/

/-! ## A320871.P3694896679563179782

`A217568(A062279(n+1))`
-/

namespace A320871.P3694896679563179782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217568 (A062279 (n + 1)).toNat

end

end A320871.P3694896679563179782

/-! ## A320871.P104593685618563322

`A217568(A088599(n+1))`
-/

namespace A320871.P104593685618563322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217568 (A088599 (n + 1)).toNat

end

end A320871.P104593685618563322

/-! ## A320871.P10138744547580804746

`A217568(A114799(n+1))`
-/

namespace A320871.P10138744547580804746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217568 (A114799 (n + 1)).toNat

end

end A320871.P10138744547580804746

/-! ## A320871.P18122525317589449178

`A217568(A249157(n+1)+1)`
-/

namespace A320871.P18122525317589449178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217568 (A249157 (n + 1) + 1).toNat

end

end A320871.P18122525317589449178

/-! ## A320871.P9197321823148777663

`A217568((n+1)*A005710(n))`
-/

namespace A320871.P9197321823148777663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217568 ((n + 1 : ℤ) * A005710 n).toNat

end

end A320871.P9197321823148777663

/-!
# A320872: For all possible 3 X 3 magic squares made of primes, in order of increasing magic sum, list the lexicographically smallest representative of each equivalence class (modulo symmetries of the square), as a row of the 9 elements (3 rows of 3 elements each).

The programs for A320872, there is no canonical definition to state claims against.
-/

/-! ## A320872.P17719583670483196553

`A024351(A217568(n+1)+A029576(n))`
-/

namespace A320872.P17719583670483196553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024351 (A217568 (n + 1) + A029576 n).toNat

end

end A320872.P17719583670483196553

/-! ## A320872.P15822294054806883834

`A024351(A320871(n+1)+A029576(n))`
-/

namespace A320872.P15822294054806883834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024351 (A320871 (n + 1) + A029576 n).toNat

end

end A320872.P15822294054806883834

/-! ## A320872.P8105308309402547710

`A024351(A217568(n+1)*A350494(n+1))`
-/

namespace A320872.P8105308309402547710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024351 (A217568 (n + 1) * A350494 (n + 1)).toNat

end

end A320872.P8105308309402547710

/-! ## A320872.P1282320126759601393

`A024351(A320871(n+1)*A350494(n+1))`
-/

namespace A320872.P1282320126759601393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024351 (A320871 (n + 1) * A350494 (n + 1)).toNat

end

end A320872.P1282320126759601393

/-! ## A320872.P4159432263504213038

`A024351(A217568(n+1)^A302034(n+1))`
-/

namespace A320872.P4159432263504213038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024351 (SequenceMachineLib.roundAway ((A217568 (n + 1) : ℚ) ^ (A302034 (n + 1) : ℤ))).toNat

end

end A320872.P4159432263504213038

/-!
# A320873: List of 3 X 3 magic squares made of consecutive primes, in order of increasing magic sum. Only the lexicographically smallest variant of equivalent squares (modulo D4 symmetries) is listed, as a row containing the 3 rows of the square.

The programs for A320873, there is no canonical definition to state claims against.
-/

/-! ## A320873.P12601321188389621380

`A073519(A217568(n+1)+A029576(n))`
-/

namespace A320873.P12601321188389621380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073519 (A217568 (n + 1) + A029576 n).toNat

end

end A320873.P12601321188389621380

/-! ## A320873.P13155494730582931929

`A073519(A320871(n+1)+A029576(n))`
-/

namespace A320873.P13155494730582931929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073519 (A320871 (n + 1) + A029576 n).toNat

end

end A320873.P13155494730582931929

/-! ## A320873.P9439976169686675845

`A073519(A217568(n+1)*A350494(n+1))`
-/

namespace A320873.P9439976169686675845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073519 (A217568 (n + 1) * A350494 (n + 1)).toNat

end

end A320873.P9439976169686675845

/-! ## A320873.P16772436133263556652

`A073519(A320871(n+1)*A350494(n+1))`
-/

namespace A320873.P16772436133263556652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073519 (A320871 (n + 1) * A350494 (n + 1)).toNat

end

end A320873.P16772436133263556652

/-! ## A320873.P15372573417240718500

`A073519(A217568(n+1)^A302034(n+1))`
-/

namespace A320873.P15372573417240718500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073519 (SequenceMachineLib.roundAway ((A217568 (n + 1) : ℚ) ^ (A302034 (n + 1) : ℤ))).toNat

end

end A320873.P15372573417240718500

/-!
# A320877: a(n) = 1 + Sum_{k=1..n} 2^prime(k).

The programs for A320877, the canonical program `A320877.P840229063335432826` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320877 has offset 0).

The definition of A320877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320877.P840229063335432826

`A076793(n)+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320877

/-- `A076793(n)+1` -/
def P840229063335432826.Spec : Prop :=
  ∀ n, P840229063335432826.a n = A320877 n

theorem P840229063335432826.correct : P840229063335432826.Spec := by
  intro n
  simp only [A320877]

end A320877

/-! ## A320877.P12813153682582487002

`∑[record[2^∑{p}[n, #]]]`
-/

namespace A320877.P12813153682582487002
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320877.P12813153682582487002

namespace A320877

/-- `∑[record[2^∑{p}[n, #]]]` -/
def P12813153682582487002.Spec : Prop :=
  ∀ n, (P12813153682582487002.a n : ℤ) = A320877 n

end A320877

/-! ## A320877.P16309352560509046630

`∑[record[∏{p}[n, 2^#]]]`
-/

namespace A320877.P16309352560509046630
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 2 ^ p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320877.P16309352560509046630

namespace A320877

/-- `∑[record[∏{p}[n, 2^#]]]` -/
def P16309352560509046630.Spec : Prop :=
  ∀ n, (P16309352560509046630.a n : ℤ) = A320877 n

end A320877

/-! ## A320877.P4326396211269835549

`∑[2^eq[n, ∑{p}[n, #]]]`
-/

namespace A320877.P4326396211269835549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320877.P4326396211269835549

namespace A320877

/-- `∑[2^eq[n, ∑{p}[n, #]]]` -/
def P4326396211269835549.Spec : Prop :=
  ∀ n, (P4326396211269835549.a n : ℤ) = A320877 n

end A320877

/-! ## A320877.P13301464889011555194

`4*A135482(n)+1`
-/

namespace A320877.P13301464889011555194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A135482 n + 1

end

end A320877.P13301464889011555194

namespace A320877

/-- `4*A135482(n)+1` -/
def P13301464889011555194.Spec : Prop :=
  ∀ n, P13301464889011555194.a n = A320877 n

end A320877

/-! ## A320877.P5510054286253037572

`∑[2^A182986(n+1)]`
-/

namespace A320877.P5510054286253037572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A182986 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320877.P5510054286253037572

namespace A320877

/-- `∑[2^A182986(n+1)]` -/
def P5510054286253037572.Spec : Prop :=
  ∀ n, P5510054286253037572.a n = (A320877 n : ℚ)

end A320877

/-! ## A320877.P1895972628587624895

`2*A080355(n+1)-1`
-/

namespace A320877.P1895972628587624895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080355 (n + 1) - 1

end

end A320877.P1895972628587624895

namespace A320877

/-- `2*A080355(n+1)-1` -/
def P1895972628587624895.Spec : Prop :=
  ∀ n, P1895972628587624895.a n = A320877 n

end A320877

/-! ## A320877.P11338853776603255022

`∑[2^comp[A018252(n+1)]]`
-/

namespace A320877.P11338853776603255022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320877.P11338853776603255022

namespace A320877

/-- `∑[2^comp[A018252(n+1)]]` -/
def P11338853776603255022.Spec : Prop :=
  ∀ n, (P11338853776603255022.a n : ℤ) = A320877 n

end A320877

/-! ## A320877.P14514995000466246748

`∑[record[A064078(n+1)]]+n`
-/

namespace A320877.P14514995000466246748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A320877.P14514995000466246748

namespace A320877

/-- `∑[record[A064078(n+1)]]+n` -/
def P14514995000466246748.Spec : Prop :=
  ∀ n, P14514995000466246748.a n = A320877 n

end A320877

/-! ## A320877.P17646270607131817647

`a(n-1)+2^A000040(n)` with `a(0)=1`
-/

namespace A320877.P17646270607131817647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A000040 n : ℤ)

end

end A320877.P17646270607131817647

namespace A320877

/-- `a(n-1)+2^A000040(n)` -/
def P17646270607131817647.Spec : Prop :=
  ∀ n, P17646270607131817647.a n = (A320877 n : ℚ)

end A320877

/-!
# A320881: Numbers equal to a prime plus its digit sum.

The programs for A320881, there is no canonical definition to state claims against.
-/

/-! ## A320881.P3611235503870282750

`lt[0, char[A065073(n+1)]]`
-/

namespace A320881.P3611235503870282750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320881.P3611235503870282750

/-! ## A320881.P9671987359143312645

`eq[1, char[A065073(ϕ²-(ϕ-n))]]`
-/

namespace A320881.P9671987359143312645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320881.P9671987359143312645

/-! ## A320881.P6124436961031243733

`A062028(p?[A320870(n)])`
-/

namespace A320881.P6124436961031243733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320881.P6124436961031243733

/-! ## A320881.P8338976207430054201

`eq[1, char[A062028(A051697(n))]]`
-/

namespace A320881.P8338976207430054201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A051697 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320881.P8338976207430054201

/-! ## A320881.P6696831952337286483

`eq[1, char[A062028(A000040(n+1))]]`
-/

namespace A320881.P6696831952337286483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A000040 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320881.P6696831952337286483

/-!
# A320882: Primes p such that repeated application of A062028 (add sum of digits) yields two other primes in a row: p, A062028(p) and A062028(A062028(p)) are all prime.

The programs for A320882, there is no canonical definition to state claims against.
-/

/-! ## A320882.P11689017204653046365

`A028310(∪[A048524(n+1), A048525(n+1)])`
-/

namespace A320882.P11689017204653046365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048525 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A320882.P11689017204653046365

/-! ## A320882.P1836177245188710246

`A039653(∪[A048524(n+1), A048525(n+1)])`
-/

namespace A320882.P1836177245188710246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048525 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A320882.P1836177245188710246

/-! ## A320882.P13102272121894091862

`A129527(∪[A048524(n+1), A048525(n+1)])`
-/

namespace A320882.P13102272121894091862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048525 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A320882.P13102272121894091862

/-! ## A320882.P13764407908906907002

`A327498(∪[A048524(n+1), A048525(n+1)])`
-/

namespace A320882.P13764407908906907002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048525 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A320882.P13764407908906907002

/-!
# A320883: 3-smooth numbers of the form (ab+1)(ac+1), a > b > c > 0.

The programs for A320883, there is no canonical definition to state claims against.
-/

/-! ## A320883.P938865123651065079

`∩[A000423(n+1), A320884(n+1)]`
-/

namespace A320883.P938865123651065079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320883.P938865123651065079

/-! ## A320883.P14780567322045022555

`∩[A003586(n+1), A320884(n+1)]`
-/

namespace A320883.P14780567322045022555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320883.P14780567322045022555

/-! ## A320883.P15759815771250275751

`∩[A007694(n+1), A320884(n+1)]`
-/

namespace A320883.P15759815771250275751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320883.P15759815771250275751

/-! ## A320883.P3635477694663772527

`∩[A000423(n+1), A332764(n+1)]`
-/

namespace A320883.P3635477694663772527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320883.P3635477694663772527

/-! ## A320883.P6413480846999170197

`∩[A003586(n+1), A332764(n+1)]`
-/

namespace A320883.P6413480846999170197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320883.P6413480846999170197

/-!
# A320884: 5-smooth numbers of the form (ab+1)(ac+1), a > b > c > 0.

The programs for A320884, there is no canonical definition to state claims against.
-/

/-! ## A320884.P1781662208477984735

`∩[A051037(n+1), A332764(n+1)]`
-/

namespace A320884.P1781662208477984735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320884.P1781662208477984735

/-! ## A320884.P16727371184950737918

`∩[A332764(n+1), A219794(n)+a(n-1)]` with `a(0)=1`
-/

namespace A320884.P16727371184950737918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A219794 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320884.P16727371184950737918

/-! ## A320884.P3242589836732966748

`∩[A143513(n+1), A332764(n+1)]`
-/

namespace A320884.P3242589836732966748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320884.P3242589836732966748

/-! ## A320884.P6974381726982460278

`∩[A068095(n+1), A332764(n+1)]`
-/

namespace A320884.P6974381726982460278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320884.P6974381726982460278

/-! ## A320884.P10484343599456654961

`∩[A325663(n+1), A332764(n+1)]`
-/

namespace A320884.P10484343599456654961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320884.P10484343599456654961

/-! ## A320884.P4350970189198691874

`∩[A332764(n+1), A392367(n+1)]`
-/

namespace A320884.P4350970189198691874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320884.P4350970189198691874

/-!
# A320885: 7-smooth but not 5-smooth numbers of the form (ab+1)(ac+1), a > b > c > 0.

The programs for A320885, there is no canonical definition to state claims against.
-/

/-! ## A320885.P10825723901453729077

`∩[A080194(n+1), A332764(n+1)]`
-/

namespace A320885.P10825723901453729077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320885.P10825723901453729077

/-! ## A320885.P9126384085539866050

`∩[7*A002473(n+1), A332764(n+1)]`
-/

namespace A320885.P9126384085539866050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320885.P9126384085539866050

/-! ## A320885.P17870726288924675322

`∩[A085127(n+1)+A085126(n+1), A332764(n+1)]`
-/

namespace A320885.P17870726288924675322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085127 (n + 1) + A085126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320885.P17870726288924675322

/-! ## A320885.P16535547785714688929

`∩[A080194(n+1), A180045(n+1)]`
-/

namespace A320885.P16535547785714688929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320885.P16535547785714688929

/-! ## A320885.P3216482086343649642

`∩[A008589(n), A332764(n+1)]`
-/

namespace A320885.P3216482086343649642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320885.P3216482086343649642

/-! ## A320885.P2401346695287074812

`∩[A168102(n), A332764(n+1)]`
-/

namespace A320885.P2401346695287074812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320885.P2401346695287074812

/-!
# A320886: Number of multiset partitions of integer partitions of n where all parts have the same product.

The programs for A320886, there is no canonical definition to state claims against.
-/

/-! ## A320886.P10509178467483898579

`A323433(n)-A102683(A003462(n))`
-/

namespace A320886.P10509178467483898579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323433 n - A102683 (A003462 n).toNat

end

end A320886.P10509178467483898579

/-! ## A320886.P8918112328855832945

`A323433(n)-A011739(A100396(n))`
-/

namespace A320886.P8918112328855832945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323433 n - A011739 (A100396 n).toNat

end

end A320886.P8918112328855832945

/-! ## A320886.P3780247671011106521

`A323433(n)-A325897(A306852(n)²)`
-/

namespace A320886.P3780247671011106521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323433 n - A325897 (A306852 n ^ 2).toNat

end

end A320886.P3780247671011106521

/-! ## A320886.P8251859734515763962

`A323433(n)-A010057(A211118(n+1))`
-/

namespace A320886.P8251859734515763962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323433 n - A010057 (A211118 (n + 1)).toNat

end

end A320886.P8251859734515763962

/-! ## A320886.P13074916219085435070

`A323433(n)-A188009(A193215(n+1))`
-/

namespace A320886.P13074916219085435070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323433 n - A188009 (A193215 (n + 1)).toNat

end

end A320886.P13074916219085435070

/-!
# A320887: Number of multiset partitions of factorizations of n into factors > 1 such that all the parts have the same product.

The programs for A320887, there is no canonical definition to state claims against.
-/

/-! ## A320887.P6753393211159369459

`A028904(A295923(n+1)*A356224(2*n+1))`
-/

namespace A320887.P6753393211159369459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A295923 (n + 1) * A356224 (2 * n + 1)).toNat

end

end A320887.P6753393211159369459

/-! ## A320887.P5414312068624034670

`A325959(A295923(n+1))%A141214(n)`
-/

namespace A320887.P5414312068624034670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325959 (A295923 (n + 1)).toNat) (A141214 n)

end

end A320887.P5414312068624034670

/-! ## A320887.P8930262890548174031

`A295923(n+1)-A070204(A006241(n+1))`
-/

namespace A320887.P8930262890548174031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295923 (n + 1) - A070204 (A006241 (n + 1)).toNat

end

end A320887.P8930262890548174031

/-! ## A320887.P48655218168840786

`A295923(n+1)-A124760(A331696(3*n+1))`
-/

namespace A320887.P48655218168840786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295923 (n + 1) - A124760 (A331696 (3 * n + 1)).toNat

end

end A320887.P48655218168840786

/-! ## A320887.P9537463389046609322

`gcd(A032520(A131514(n+1)), A202337(n+1))`
-/

namespace A320887.P9537463389046609322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032520 (A131514 (n + 1)).toNat) (A202337 (n + 1))

end

end A320887.P9537463389046609322

/-!
# A320888: Number of set multipartitions (multisets of sets) of factorizations of n into factors > 1 such that all the parts have the same product.

The programs for A320888, there is no canonical definition to state claims against.
-/

/-! ## A320888.P6460162565092860813

`A089723(n+1)+A296133(n+1)-1`
-/

namespace A320888.P6460162565092860813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) + (A296133 (n + 1) - 1)

end

end A320888.P6460162565092860813

/-! ## A320888.P7460445218725365914

`(A319269(n+1)+A296132(n+1))/2`
-/

namespace A320888.P7460445218725365914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319269 (n + 1) + A296132 (n + 1) : ℚ) / 2

end

end A320888.P7460445218725365914

/-! ## A320888.P14223257860433446960

`A319269(n+1)+A026825(A000688(n+1))`
-/

namespace A320888.P14223257860433446960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319269 (n + 1) + A026825 (A000688 (n + 1)).toNat

end

end A320888.P14223257860433446960

/-! ## A320888.P8412835394446114188

`A319269(n+1)+A025442(A035116(n+1))`
-/

namespace A320888.P8412835394446114188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319269 (n + 1) + A025442 (A035116 (n + 1)).toNat

end

end A320888.P8412835394446114188

/-! ## A320888.P3754587526477782938

`A296133(n+1)+A032741(A052409(n+1))`
-/

namespace A320888.P3754587526477782938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296133 (n + 1) + A032741 (A052409 (n + 1)).toNat

end

end A320888.P3754587526477782938

/-! ## A320888.P6442450580288344639

`A319269(n+1)+A011739(A057567(n+1))`
-/

namespace A320888.P6442450580288344639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319269 (n + 1) + A011739 (A057567 (n + 1)).toNat

end

end A320888.P6442450580288344639

/-! ## A320888.P9593055798337335614

`A319269(n+1)+A037910(A096737(n+1))`
-/

namespace A320888.P9593055798337335614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319269 (n + 1) + A037910 (A096737 (n + 1)).toNat

end

end A320888.P9593055798337335614

/-! ## A320888.P18315999841777529538

`A296133(n+1)+A032741(A132349(n+1))`
-/

namespace A320888.P18315999841777529538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296133 (n + 1) + A032741 (A132349 (n + 1)).toNat

end

end A320888.P18315999841777529538

/-! ## A320888.P1138661528051103656

`A296132(n+1)-A070101(A000005(n+1))`
-/

namespace A320888.P1138661528051103656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296132 (n + 1) - A070101 (A000005 (n + 1)).toNat

end

end A320888.P1138661528051103656

/-! ## A320888.P16034010047808077128

`A296132(n+1)-A086483(A048105(n+1))`
-/

namespace A320888.P16034010047808077128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296132 (n + 1) - A086483 (A048105 (n + 1)).toNat

end

end A320888.P16034010047808077128

/-!
# A320889: Number of set partitions of strict factorizations of n into factors > 1 such that all the blocks have the same product.

The programs for A320889, there is no canonical definition to state claims against.
-/

/-! ## A320889.P8742605158963932276

`ceil(A139423(∏{e}[n+1, #+1])/7)`
-/

namespace A320889.P8742605158963932276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139423 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℚ) / 7⌉

end

end A320889.P8742605158963932276

/-! ## A320889.P11407508891967120325

`A307825(∑{d}[n+1, ceil(root(2, #))]+1)+1`
-/

namespace A320889.P11407508891967120325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307825 (∑ d ∈ Nat.divisors (f1 n), ⌈(2 : ℝ) ^ (1 / (d : ℝ))⌉ + 1).toNat + 1

end

end A320889.P11407508891967120325

/-! ## A320889.P15257215460941174659

`A261226(A007425(n+1))`
-/

namespace A320889.P15257215460941174659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A007425 (n + 1)).toNat

end

end A320889.P15257215460941174659

/-! ## A320889.P2356077505246355275

`A261226(∑{d}[n+1, A000005(#)])`
-/

namespace A320889.P2356077505246355275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (∑ d ∈ Nat.divisors (f1 n), A000005 d).toNat

end

end A320889.P2356077505246355275

/-! ## A320889.P13427899209508543613

`ceil(A139423(A000005(n+1))/7)`
-/

namespace A320889.P13427899209508543613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139423 (A000005 (n + 1)).toNat : ℚ) / 7⌉

end

end A320889.P13427899209508543613

/-! ## A320889.P14331164323845386974

`A068962(A004280(∑{d}[n+1, gcd(n, #)]))`
-/

namespace A320889.P14331164323845386974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A004280 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)).toNat

end

end A320889.P14331164323845386974

/-! ## A320889.P11592260356324060196

`A045778(n+1)+char[Δ[A195320(n+1)]]`
-/

namespace A320889.P11592260356324060196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195320 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A320889.P11592260356324060196

/-! ## A320889.P2834122788749585935

`A039960(A047248(Δ[A054519(n)]))`
-/

namespace A320889.P2834122788749585935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (A047248 (f1 (n + 1) - f1 n).toNat).toNat

end

end A320889.P2834122788749585935

/-! ## A320889.P7461494535526914742

`A085717(A004396(A000005(n+1)))`
-/

namespace A320889.P7461494535526914742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085717 (A004396 (A000005 (n + 1)).toNat).toNat

end

end A320889.P7461494535526914742

/-! ## A320889.P5570038428214809936

`A008621(A132604(A000005(n+1))-1)`
-/

namespace A320889.P5570038428214809936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A132604 (A000005 (n + 1)).toNat - 1).toNat

end

end A320889.P5570038428214809936

/-!
# A320890: a(1) = 11. For all subsequent terms a(n), take a(n-1) and substitute for the k-th digit the binary number of times that digit has appeared in a(n-1), reading left to right from the 1st to k-th digit.

The programs for A320890, there is no canonical definition to state claims against.
-/

/-! ## A320890.P3038836472244890447

`A007088(A322183(n+1))`
-/

namespace A320890.P3038836472244890447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A322183 (n + 1)).toNat

end

end A320890.P3038836472244890447

/-!
# A320891: Numbers with an even number of prime factors (counted with multiplicity) that cannot be factored into squarefree semiprimes.

The programs for A320891, there is no canonical definition to state claims against.
-/

/-! ## A320891.P2781891561519127650

`∩[A320894(n+1), A335448(n+1)]`
-/

namespace A320891.P2781891561519127650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320891.P2781891561519127650

/-! ## A320891.P12065189667663301949

`∩[A320894(n+1), A345171(n+1)]`
-/

namespace A320891.P12065189667663301949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320891.P12065189667663301949

/-! ## A320891.P12988724329119703689

`filter[A335448(n+1), A065043(#)]`
-/

namespace A320891.P12988724329119703689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A320891.P12988724329119703689

/-! ## A320891.P8407571691297318133

`filter[A345171(n+1), A065043(#)]`
-/

namespace A320891.P8407571691297318133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A320891.P8407571691297318133

/-! ## A320891.P12659564139927273445

`eq[A066829(n+1), A320656(n+1)]+1`
-/

namespace A320891.P12659564139927273445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320891.P12659564139927273445

/-! ## A320891.P10759592050688165779

`∩[A028260(n+1), A335448(n+1)]`
-/

namespace A320891.P10759592050688165779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320891.P10759592050688165779

/-! ## A320891.P4668740860483013328

`∩[A028260(n+1), A345171(n+1)]`
-/

namespace A320891.P4668740860483013328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320891.P4668740860483013328

/-! ## A320891.P4993730725374110094

`eq[A320656(n+1)+1, A018892(n+1)%2]+1`
-/

namespace A320891.P4993730725374110094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018892 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320891.P4993730725374110094

/-! ## A320891.P3052485449490359024

`lt[A335452(n+1), A008836(n+1)]+1`
-/

namespace A320891.P3052485449490359024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A320891.P3052485449490359024

/-!
# A320892: Numbers with an even number of prime factors (counted with multiplicity) that cannot be factored into distinct semiprimes.

The programs for A320892, there is no canonical definition to state claims against.
-/

/-! ## A320892.P5982785372420668418

`lt[A322353(n+1), A065043(n+1)]+1`
-/

namespace A320892.P5982785372420668418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A320892.P5982785372420668418

/-! ## A320892.P5257176589684784619

`∩[A320891(n+1), A360558(n+1)]`
-/

namespace A320892.P5257176589684784619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320892.P5257176589684784619

/-!
# A320894: Numbers with an even number of prime factors (counted with multiplicity) that cannot be factored into distinct squarefree semiprimes.

The programs for A320894, there is no canonical definition to state claims against.
-/

/-! ## A320894.P15896088491117743262

`lt[A339661(n+1), A065043(n+1)]+1`
-/

namespace A320894.P15896088491117743262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A320894.P15896088491117743262

/-! ## A320894.P18133620645689712007

`∪[A320891(n+1), A340017(n+1)]`
-/

namespace A320894.P18133620645689712007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320894.P18133620645689712007

/-! ## A320894.P10737698242974330062

`∩[A176238(n+1), A320230(n+1)]`
-/

namespace A320894.P10737698242974330062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320894.P10737698242974330062

/-! ## A320894.P17610176921613589225

`filter[A010447(n+2), A345952(#)]`
-/

namespace A320894.P17610176921613589225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010447 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A320894.P17610176921613589225

/-! ## A320894.P11084558480117472680

`∩[A010447(n+1), A122145(n+1)]`
-/

namespace A320894.P11084558480117472680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320894.P11084558480117472680

/-!
# A320895: a(n) = Sum_{k=1..n} k^3 * tau(k), where tau is A000005.

The programs for A320895, the canonical program `A320895.P4999572004758016288` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320895 has offset 1).

The definition of A320895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320895.P4999572004758016288

`∑[∑{d}[n+1, lcm(#, (n+1)^3)]]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320895

/-- `∑[∑{d}[n+1, lcm(#, (n+1)^3)]]` -/
def P4999572004758016288.Spec : Prop :=
  ∀ n, (P4999572004758016288.a n : ℤ) = A320895 (n + 1)

theorem P4999572004758016288.correct : P4999572004758016288.Spec := by
  intro n
  simp only [A320895, Nat.add_sub_cancel]

end A320895

/-! ## A320895.P17404308931357485730

`∑[(n+1)*∏{e}[n+1, #+1]*(n+1)²]`
-/

namespace A320895.P17404308931357485730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320895.P17404308931357485730

namespace A320895

/-- `∑[(n+1)*∏{e}[n+1, #+1]*(n+1)²]` -/
def P17404308931357485730.Spec : Prop :=
  ∀ n, (P17404308931357485730.a n : ℤ) = A320895 (n + 1)

end A320895

/-! ## A320895.P5250146207245858297

`∑[A386012(n+1)]`
-/

namespace A320895.P5250146207245858297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320895.P5250146207245858297

namespace A320895

/-- `∑[A386012(n+1)]` -/
def P5250146207245858297.Spec : Prop :=
  ∀ n, P5250146207245858297.a n = A320895 (n + 1)

end A320895

/-! ## A320895.P12367229162963155246

`∑[(n+1)*A034714(n+1)]`
-/

namespace A320895.P12367229162963155246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320895.P12367229162963155246

namespace A320895

/-- `∑[(n+1)*A034714(n+1)]` -/
def P12367229162963155246.Spec : Prop :=
  ∀ n, P12367229162963155246.a n = A320895 (n + 1)

end A320895

/-! ## A320895.P6404516634301011729

`∑[A386013(n+1)/(n+1)]`
-/

namespace A320895.P6404516634301011729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386013 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320895.P6404516634301011729

namespace A320895

/-- `∑[A386013(n+1)/(n+1)]` -/
def P6404516634301011729.Spec : Prop :=
  ∀ n, P6404516634301011729.a n = (A320895 (n + 1) : ℚ)

end A320895

/-! ## A320895.P13960743921926278012

`∑[(n+1)²*A038040(n+1)]`
-/

namespace A320895.P13960743921926278012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A038040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320895.P13960743921926278012

namespace A320895

/-- `∑[(n+1)²*A038040(n+1)]` -/
def P13960743921926278012.Spec : Prop :=
  ∀ n, P13960743921926278012.a n = A320895 (n + 1)

end A320895

/-! ## A320895.P9365600955761228416

`∑[(n+1)^3*A000005(n+1)]`
-/

namespace A320895.P9365600955761228416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320895.P9365600955761228416

namespace A320895

/-- `∑[(n+1)^3*A000005(n+1)]` -/
def P9365600955761228416.Spec : Prop :=
  ∀ n, P9365600955761228416.a n = A320895 (n + 1)

end A320895

/-! ## A320895.P11704422789116258593

`∑[A000005(n+1)*∑[A003215(n)]]`
-/

namespace A320895.P11704422789116258593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320895.P11704422789116258593

namespace A320895

/-- `∑[A000005(n+1)*∑[A003215(n)]]` -/
def P11704422789116258593.Spec : Prop :=
  ∀ n, P11704422789116258593.a n = A320895 (n + 1)

end A320895

/-! ## A320895.P2086574666361871008

`∑[A000005(n+1)*Δ[A000217(n)²]]`
-/

namespace A320895.P2086574666361871008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320895.P2086574666361871008

namespace A320895

/-- `∑[A000005(n+1)*Δ[A000217(n)²]]` -/
def P2086574666361871008.Spec : Prop :=
  ∀ n, P2086574666361871008.a n = A320895 (n + 1)

end A320895

/-! ## A320895.P11752643671148153045

`∑[(n+1)*A000005(n+1)*A000290(n+1)]`
-/

namespace A320895.P11752643671148153045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000005 (n + 1) * A000290 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320895.P11752643671148153045

namespace A320895

/-- `∑[(n+1)*A000005(n+1)*A000290(n+1)]` -/
def P11752643671148153045.Spec : Prop :=
  ∀ n, P11752643671148153045.a n = A320895 (n + 1)

end A320895

/-!
# A320896: a(n) = Sum_{k=1..n} k * tau(k)^2, where tau is A000005.

The programs for A320896, the canonical program `A320896.P5322743792497170503` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320896 has offset 1).

The definition of A320896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320896.P12685688381870216145

`∑[∑{d}[n+1, sqrt(lcm(#, n+1))]²]`
-/

namespace A320896.P12685688381870216145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), Real.sqrt (Nat.lcm d (n + 1) : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320896.P12685688381870216145

namespace A320896

/-- `∑[∑{d}[n+1, sqrt(lcm(#, n+1))]²]` -/
def P12685688381870216145.Spec : Prop :=
  ∀ n, P12685688381870216145.a n = (A320896 (n + 1) : ℝ)

end A320896

/-! ## A320896.P5322743792497170503

`∑[(n+1)*∏{e}[n+1, (#+1)²]]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320896

/-- `∑[(n+1)*∏{e}[n+1, (#+1)²]]` -/
def P5322743792497170503.Spec : Prop :=
  ∀ n, (P5322743792497170503.a n : ℤ) = A320896 (n + 1)

theorem P5322743792497170503.correct : P5322743792497170503.Spec := by
  intro n
  simp only [A320896, Nat.add_sub_cancel]

end A320896

/-! ## A320896.P14580859983679813609

`∑[(n+1)*∑{d}[n+1, ceil(1/#)]²]`
-/

namespace A320896.P14580859983679813609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320896.P14580859983679813609

namespace A320896

/-- `∑[(n+1)*∑{d}[n+1, ceil(1/#)]²]` -/
def P14580859983679813609.Spec : Prop :=
  ∀ n, P14580859983679813609.a n = A320896 (n + 1)

end A320896

/-! ## A320896.P4938521241507958555

`∑[(n+1)*(2^∑{e}[n+1, log2(#+1)])²]`
-/

namespace A320896.P4938521241507958555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f2 n), Real.logb 2 (Nat.factorization (f2 n) p + 1 : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320896.P4938521241507958555

namespace A320896

/-- `∑[(n+1)*(2^∑{e}[n+1, log2(#+1)])²]` -/
def P4938521241507958555.Spec : Prop :=
  ∀ n, P4938521241507958555.a n = (A320896 (n + 1) : ℝ)

end A320896

/-! ## A320896.P16448723192411134143

`∑[(n+1)*A035116(n+1)]`
-/

namespace A320896.P16448723192411134143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320896.P16448723192411134143

namespace A320896

/-- `∑[(n+1)*A035116(n+1)]` -/
def P16448723192411134143.Spec : Prop :=
  ∀ n, P16448723192411134143.a n = A320896 (n + 1)

end A320896

/-! ## A320896.P17537036274901180585

`∑[(n+1)*A000005(n+1)²]`
-/

namespace A320896.P17537036274901180585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320896.P17537036274901180585

namespace A320896

/-- `∑[(n+1)*A000005(n+1)²]` -/
def P17537036274901180585.Spec : Prop :=
  ∀ n, P17537036274901180585.a n = A320896 (n + 1)

end A320896

/-! ## A320896.P9258739611447046347

`∑[(n+1)*A329484(n+1)²]`
-/

namespace A320896.P9258739611447046347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A329484 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320896.P9258739611447046347

namespace A320896

/-- `∑[(n+1)*A329484(n+1)²]` -/
def P9258739611447046347.Spec : Prop :=
  ∀ n, P9258739611447046347.a n = A320896 (n + 1)

end A320896

/-! ## A320896.P17779644577957186017

`∑[A038040(n+1)²/(n+1)]`
-/

namespace A320896.P17779644577957186017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320896.P17779644577957186017

namespace A320896

/-- `∑[A038040(n+1)²/(n+1)]` -/
def P17779644577957186017.Spec : Prop :=
  ∀ n, P17779644577957186017.a n = (A320896 (n + 1) : ℚ)

end A320896

/-! ## A320896.P3062344662575265426

`∑[A000005(n+1)*A038040(n+1)]`
-/

namespace A320896.P3062344662575265426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A038040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320896.P3062344662575265426

namespace A320896

/-- `∑[A000005(n+1)*A038040(n+1)]` -/
def P3062344662575265426.Spec : Prop :=
  ∀ n, P3062344662575265426.a n = A320896 (n + 1)

end A320896

/-! ## A320896.P9711184925933329391

`∑[∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]^2*(n+1)]`
-/

namespace A320896.P9711184925933329391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f2 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋)) ^ 2 * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320896.P9711184925933329391

namespace A320896

/-- `∑[∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]^2*(n+1)]` -/
def P9711184925933329391.Spec : Prop :=
  ∀ n, P9711184925933329391.a n = A320896 (n + 1)

end A320896

/-! ## A320896.P15714240497897648793

`∑[(n+1)*A124315((n+1)²)]`
-/

namespace A320896.P15714240497897648793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A124315 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320896.P15714240497897648793

namespace A320896

/-- `∑[(n+1)*A124315((n+1)²)]` -/
def P15714240497897648793.Spec : Prop :=
  ∀ n, P15714240497897648793.a n = A320896 (n + 1)

end A320896

/-!
# A320897: a(n) = Sum_{k=1..n} k^2 * tau(k)^2, where tau is A000005.

The programs for A320897, the canonical program `A320897.P5961825904256250707` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320897 has offset 1).

The definition of A320897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320897.P5961825904256250707

`∑[∑{d}[n+1, lcm(#, n+1)]²]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320897

/-- `∑[∑{d}[n+1, lcm(#, n+1)]²]` -/
def P5961825904256250707.Spec : Prop :=
  ∀ n, (P5961825904256250707.a n : ℤ) = A320897 (n + 1)

theorem P5961825904256250707.correct : P5961825904256250707.Spec := by
  intro n
  simp only [A320897, Nat.add_sub_cancel]

end A320897

/-! ## A320897.P15394434497263922350

`∑[∑{d}[n+1, n-or(#, -1)]²]`
-/

namespace A320897.P15394434497263922350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), ((n : ℤ) - Int.lor (d : ℤ) (-1))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P15394434497263922350

namespace A320897

/-- `∑[∑{d}[n+1, n-or(#, -1)]²]` -/
def P15394434497263922350.Spec : Prop :=
  ∀ n, P15394434497263922350.a n = A320897 (n + 1)

end A320897

/-! ## A320897.P5889076502025818927

`∑[∑{d}[n+1, ceil(1/#+n)]²]`
-/

namespace A320897.P5889076502025818927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ) + (n : ℚ)⌉) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P5889076502025818927

namespace A320897

/-- `∑[∑{d}[n+1, ceil(1/#+n)]²]` -/
def P5889076502025818927.Spec : Prop :=
  ∀ n, P5889076502025818927.a n = A320897 (n + 1)

end A320897

/-! ## A320897.P17020088687238493940

`∑[((n+1)*∏{e}[n+1, #+1])²]`
-/

namespace A320897.P17020088687238493940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P17020088687238493940

namespace A320897

/-- `∑[((n+1)*∏{e}[n+1, #+1])²]` -/
def P17020088687238493940.Spec : Prop :=
  ∀ n, (P17020088687238493940.a n : ℤ) = A320897 (n + 1)

end A320897

/-! ## A320897.P6275021850407655658

`∑[(n+1)*∏{e}[n+1, #+1]*(n+1)*∏{e}[n+1, #+1]]`
-/

namespace A320897.P6275021850407655658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) * ((n + 1) * (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P6275021850407655658

namespace A320897

/-- `∑[(n+1)*∏{e}[n+1, #+1]*(n+1)*∏{e}[n+1, #+1]]` -/
def P6275021850407655658.Spec : Prop :=
  ∀ n, (P6275021850407655658.a n : ℤ) = A320897 (n + 1)

end A320897

/-! ## A320897.P4360795509272868595

`∑[A038040(n+1)²]`
-/

namespace A320897.P4360795509272868595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P4360795509272868595

namespace A320897

/-- `∑[A038040(n+1)²]` -/
def P4360795509272868595.Spec : Prop :=
  ∀ n, P4360795509272868595.a n = A320897 (n + 1)

end A320897

/-! ## A320897.P13369608144849180871

`∑[(1-A083271(n+1))²]`
-/

namespace A320897.P13369608144849180871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A083271 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P13369608144849180871

namespace A320897

/-- `∑[(1-A083271(n+1))²]` -/
def P13369608144849180871.Spec : Prop :=
  ∀ n, P13369608144849180871.a n = A320897 (n + 1)

end A320897

/-! ## A320897.P17175458908949888180

`∑[((n+1)*A000005(n+1))²]`
-/

namespace A320897.P17175458908949888180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000005 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P17175458908949888180

namespace A320897

/-- `∑[((n+1)*A000005(n+1))²]` -/
def P17175458908949888180.Spec : Prop :=
  ∀ n, P17175458908949888180.a n = A320897 (n + 1)

end A320897

/-! ## A320897.P2135147856115540858

`∑[(n+1)²*A035116(n+1)]`
-/

namespace A320897.P2135147856115540858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A035116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P2135147856115540858

namespace A320897

/-- `∑[(n+1)²*A035116(n+1)]` -/
def P2135147856115540858.Spec : Prop :=
  ∀ n, P2135147856115540858.a n = A320897 (n + 1)

end A320897

/-! ## A320897.P15604148753308036742

`∑[((n+1)*A329484(n+1))²]`
-/

namespace A320897.P15604148753308036742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A329484 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P15604148753308036742

namespace A320897

/-- `∑[((n+1)*A329484(n+1))²]` -/
def P15604148753308036742.Spec : Prop :=
  ∀ n, P15604148753308036742.a n = A320897 (n + 1)

end A320897

/-! ## A320897.P2621953732529235995

`∑[(A034714(n+1)/(n+1))²]`
-/

namespace A320897.P2621953732529235995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034714 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P2621953732529235995

namespace A320897

/-- `∑[(A034714(n+1)/(n+1))²]` -/
def P2621953732529235995.Spec : Prop :=
  ∀ n, P2621953732529235995.a n = (A320897 (n + 1) : ℚ)

end A320897

/-! ## A320897.P12317700977721072792

`∑[(A094471(n+1)+A000203(n+1))²]`
-/

namespace A320897.P12317700977721072792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094471 (n + 1) + A000203 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P12317700977721072792

namespace A320897

/-- `∑[(A094471(n+1)+A000203(n+1))²]` -/
def P12317700977721072792.Spec : Prop :=
  ∀ n, P12317700977721072792.a n = A320897 (n + 1)

end A320897

/-! ## A320897.P13416250852227167512

`∑[(A000203(n+1)-A152211(n+1))²]`
-/

namespace A320897.P13416250852227167512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A152211 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P13416250852227167512

namespace A320897

/-- `∑[(A000203(n+1)-A152211(n+1))²]` -/
def P13416250852227167512.Spec : Prop :=
  ∀ n, P13416250852227167512.a n = A320897 (n + 1)

end A320897

/-! ## A320897.P17130302764574099591

`∑[(A168014(n+1)+n+1)²]`
-/

namespace A320897.P17130302764574099591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168014 (n + 1) + (n + 1 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320897.P17130302764574099591

namespace A320897

/-- `∑[(A168014(n+1)+n+1)²]` -/
def P17130302764574099591.Spec : Prop :=
  ∀ n, P17130302764574099591.a n = A320897 (n + 1)

end A320897

/-!
# A320898: Expansion of e.g.f. exp(theta_3(x) - 1), where theta_3() is the Jacobi theta function.

The programs for A320898, there is no canonical definition to state claims against.
-/

/-! ## A320898.P2491224837301166234

`A004277(floor(2^(n-1))+(n-3)*(n-2)*(n-1)*n*2^(n-4))`
-/

namespace A320898.P2491224837301166234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℚ) + ((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))))).toNat

end

end A320898.P2491224837301166234

/-! ## A320898.P12919128227901261864

`2^n*A157271(A205801(n))`
-/

namespace A320898.P12919128227901261864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A157271 (A205801 n).toNat

end

end A320898.P12919128227901261864

/-! ## A320898.P7578927843078592

`record[2^val(n+1, 2)]*A008616(A226890(n)+1)`
-/

namespace A320898.P7578927843078592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A008616 (A226890 n + 1).toNat

end

end A320898.P7578927843078592

/-! ## A320898.P13225162247992426220

`A060747(A362393(n))+A000225(n)`
-/

namespace A320898.P13225162247992426220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A362393 n).toNat + A000225 n

end

end A320898.P13225162247992426220

/-!
# A320899: Expansion of e.g.f. exp(1/theta_4(x) - 1), where theta_4() is the Jacobi theta function.

The programs for A320899, there is no canonical definition to state claims against.
-/

/-! ## A320899.P11027302409766613529

`A254926((n+1)*n^n)`
-/

namespace A320899.P11027302409766613529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254926 ((n + 1) * n ^ n)

end

end A320899.P11027302409766613529

