import SequenceMachineLib
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
import Seq.Opaque.C026

/-!
# A290800: One of the two successive approximations up to 7^n for the 7-adic integer sqrt(-6). These are the numbers congruent to 1 mod 7 (except for the initial 0).

The programs for A290800, there is no canonical definition to state claims against.
-/

/-! ## A290800.P11068742793913262465

`A290557(n)+A290559(n)-A290802(n)`
-/

namespace A290800.P11068742793913262465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 n + (A290559 n - A290802 n)

end

end A290800.P11068742793913262465

/-! ## A290800.P11622004794129112785

`A290803(n)+A290804(n)-A290802(n)`
-/

namespace A290800.P11622004794129112785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290803 n + (A290804 n - A290802 n)

end

end A290800.P11622004794129112785

/-! ## A290800.P2427815771435193472

`A290806(n)+A290809(n)-A290802(n)`
-/

namespace A290800.P2427815771435193472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290806 n + (A290809 n - A290802 n)

end

end A290800.P2427815771435193472

/-!
# A290802: One of the two successive approximations up to 7^n for the 7-adic integer sqrt(-6). These are the numbers congruent to 6 mod 7 (except for the initial 0).

The programs for A290802, there is no canonical definition to state claims against.
-/

/-! ## A290802.P3468782749788361697

`A000420(n)-A290800(A028310(n))`
-/

namespace A290802.P3468782749788361697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - A290800 (A028310 n).toNat

end

end A290802.P3468782749788361697

/-! ## A290802.P8717458093574968577

`A000420(n)-A290800(A000007(n)+n)`
-/

namespace A290802.P8717458093574968577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - A290800 (A000007 n + (n : ℤ)).toNat

end

end A290802.P8717458093574968577

/-! ## A290802.P4312710279869742291

`A290557(n)+A290559(n)-A290800(n)`
-/

namespace A290802.P4312710279869742291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 n + (A290559 n - A290800 n)

end

end A290802.P4312710279869742291

/-! ## A290802.P6754522071200510308

`A290803(n)+A290804(n)-A290800(n)`
-/

namespace A290802.P6754522071200510308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290803 n + (A290804 n - A290800 n)

end

end A290802.P6754522071200510308

/-! ## A290802.P3588756259173840269

`A290806(n)+A290809(n)-A290800(n)`
-/

namespace A290802.P3588756259173840269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290806 n + (A290809 n - A290800 n)

end

end A290802.P3588756259173840269

/-!
# A290803: One of the two successive approximations up to 7^n for the 7-adic integer sqrt(-3). These are the numbers congruent to 2 mod 7 (except for the initial 0).

The programs for A290803, there is no canonical definition to state claims against.
-/

/-! ## A290803.P5818076192905467799

`A290557(n)+A290559(n)-A290804(n)`
-/

namespace A290803.P5818076192905467799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 n + (A290559 n - A290804 n)

end

end A290803.P5818076192905467799

/-! ## A290803.P3386928721779330165

`A290800(n)+A290802(n)-A290804(n)`
-/

namespace A290803.P3386928721779330165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290800 n + (A290802 n - A290804 n)

end

end A290803.P3386928721779330165

/-! ## A290803.P8761122486631562906

`A290806(n)+A290809(n)-A290804(n)`
-/

namespace A290803.P8761122486631562906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290806 n + (A290809 n - A290804 n)

end

end A290803.P8761122486631562906

/-! ## A290803.P8210247631341744173

`A290806(n)-(A290809(n)-A290804(n))*A057428(n)`
-/

namespace A290803.P8210247631341744173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290806 n - (A290809 n - A290804 n) * A057428 n

end

end A290803.P8210247631341744173

/-!
# A290804: One of the two successive approximations up to 7^n for the 7-adic integer sqrt(-3). These are the numbers congruent to 5 mod 7 (except for the initial 0).

The programs for A290804, there is no canonical definition to state claims against.
-/

/-! ## A290804.P3833856840860896596

`A290557(n)+A290559(n)-A290803(n)`
-/

namespace A290804.P3833856840860896596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 n + (A290559 n - A290803 n)

end

end A290804.P3833856840860896596

/-! ## A290804.P7205183699118051602

`A290800(n)+A290802(n)-A290803(n)`
-/

namespace A290804.P7205183699118051602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290800 n + (A290802 n - A290803 n)

end

end A290804.P7205183699118051602

/-! ## A290804.P17122282746924022635

`A290806(n)+A290809(n)-A290803(n)`
-/

namespace A290804.P17122282746924022635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290806 n + (A290809 n - A290803 n)

end

end A290804.P17122282746924022635

/-!
# A290806: One of the two successive approximations up to 7^n for the 7-adic integer sqrt(-5). These are the numbers congruent to 3 mod 7 (except for the initial 0).

The programs for A290806, there is no canonical definition to state claims against.
-/

/-! ## A290806.P18101115745188089508

`3+a(n-1)^a(n-1)` with `a(0)=0, a(1)=3, a(2)=17, a(3)=311, a(4)=997`
-/

namespace A290806.P18101115745188089508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 17, 311, 997] fun n a =>
  3 + a (n - 1) ^ a (n - 1)

end

end A290806.P18101115745188089508

/-! ## A290806.P9060076843753556995

`sqrt(A000045(ceil(n/63)))*7^n-A290809(n)`
-/

namespace A290806.P9060076843753556995
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000045 ⌈(n : ℚ) / 63⌉.toNat : ℝ) * (7 ^ n : ℝ) - (A290809 n : ℝ)

end

end A290806.P9060076843753556995

/-! ## A290806.P1365285322802557353

`A290557(n)+A290559(n)-A290809(n)`
-/

namespace A290806.P1365285322802557353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 n + (A290559 n - A290809 n)

end

end A290806.P1365285322802557353

/-! ## A290806.P14152446094662717591

`A290800(n)+A290802(n)-A290809(n)`
-/

namespace A290806.P14152446094662717591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290800 n + (A290802 n - A290809 n)

end

end A290806.P14152446094662717591

/-! ## A290806.P6427709590935196125

`A290803(n)+A290804(n)-A290809(n)`
-/

namespace A290806.P6427709590935196125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290803 n + (A290804 n - A290809 n)

end

end A290806.P6427709590935196125

/-!
# A290807: Number of partitions of n into Pell parts (A000129).

The programs for A290807, there is no canonical definition to state claims against.
-/

/-! ## A290807.P15200881076082855734

`A185284(A029145(n))+A029016(n)`
-/

namespace A290807.P15200881076082855734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A029145 n).toNat + A029016 n

end

end A290807.P15200881076082855734

/-! ## A290807.P374621596969555863

`or(A029016(n), A066247(A331568(n)))`
-/

namespace A290807.P374621596969555863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029016 n) (A066247 (A331568 n).toNat)

end

end A290807.P374621596969555863

/-! ## A290807.P15905007949435153752

`A151795(A332385(n+1))+A029016(n)`
-/

namespace A290807.P15905007949435153752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A332385 (n + 1)).toNat + A029016 n

end

end A290807.P15905007949435153752

/-! ## A290807.P15899595075986866120

`A029016(n)%A002907(n)`
-/

namespace A290807.P15899595075986866120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029016 n) (A002907 n)

end

end A290807.P15899595075986866120

/-! ## A290807.P9313666124310487320

`and(A029016(n), A359085(n+1))`
-/

namespace A290807.P9313666124310487320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029016 n) (A359085 (n + 1))

end

end A290807.P9313666124310487320

/-!
# A290808: Number of partitions of n into distinct Pell parts (A000129).

The programs for A290808, there is no canonical definition to state claims against.
-/

/-! ## A290808.P15293887844116539888

`round((A352417(n)+1)/A000040(n+1))`
-/

namespace A290808.P15293887844116539888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A352417 n + 1 : ℚ) / (A000040 (n + 1) : ℚ))

end

end A290808.P15293887844116539888

/-! ## A290808.P16707187803350554090

`A088917(2*A352417(n))`
-/

namespace A290808.P16707187803350554090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * A352417 n).toNat

end

end A290808.P16707187803350554090

/-! ## A290808.P14337851168245266093

`A000038(n)^A300222(A352417(n))`
-/

namespace A290808.P14337851168245266093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A300222 (A352417 n).toNat : ℤ)

end

end A290808.P14337851168245266093

/-! ## A290808.P13818530619191870185

`A039966(A352417(n))`
-/

namespace A290808.P13818530619191870185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A352417 n).toNat

end

end A290808.P13818530619191870185

/-! ## A290808.P14214186158582225330

`A039966(eq[A004396(n), A341055(n)])`
-/

namespace A290808.P14214186158582225330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A290808.P14214186158582225330

/-! ## A290808.P12960147923296583439

`1-round(n/A138683(n+1))`
-/

namespace A290808.P12960147923296583439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway ((n : ℚ) / (A138683 (n + 1) : ℚ))

end

end A290808.P12960147923296583439

/-! ## A290808.P8681937537661836663

`A000007(round(n/A138683(n+1)))`
-/

namespace A290808.P8681937537661836663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.roundAway ((n : ℚ) / (A138683 (n + 1) : ℚ))).toNat

end

end A290808.P8681937537661836663

/-! ## A290808.P5357242618482666070

`A000035(round(n/A138683(n+1))+1)`
-/

namespace A290808.P5357242618482666070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway ((n : ℚ) / (A138683 (n + 1) : ℚ)) + 1).toNat

end

end A290808.P5357242618482666070

/-! ## A290808.P15748435829611944099

`A000034(round(n/A138683(n+1)))%2`
-/

namespace A290808.P15748435829611944099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000034 (SequenceMachineLib.roundAway ((n : ℚ) / (A138683 (n + 1) : ℚ))).toNat) 2

end

end A290808.P15748435829611944099

/-! ## A290808.P4561409702461628201

`A000045(xor(1, round(n/A138683(n+1))))`
-/

namespace A290808.P4561409702461628201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor 1 (SequenceMachineLib.roundAway ((n : ℚ) / (A138683 (n + 1) : ℚ)))).toNat

end

end A290808.P4561409702461628201

/-!
# A290809: One of the two successive approximations up to 7^n for the 7-adic integer sqrt(-5). These are the numbers congruent to 4 mod 7 (except for the initial 0).

The programs for A290809, there is no canonical definition to state claims against.
-/

/-! ## A290809.P9412841085096696256

`A000420(n)-(A290806(n)+A000007(n))`
-/

namespace A290809.P9412841085096696256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - (A290806 n + A000007 n)

end

end A290809.P9412841085096696256

/-! ## A290809.P11090278408369644276

`A290557(n)+A290559(n)-A290806(n)`
-/

namespace A290809.P11090278408369644276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290557 n + (A290559 n - A290806 n)

end

end A290809.P11090278408369644276

/-! ## A290809.P4212139465047524940

`A290800(n)+A290802(n)-A290806(n)`
-/

namespace A290809.P4212139465047524940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290800 n + (A290802 n - A290806 n)

end

end A290809.P4212139465047524940

/-! ## A290809.P15654187229894240062

`A290803(n)+A290804(n)-A290806(n)`
-/

namespace A290809.P15654187229894240062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290803 n + (A290804 n - A290806 n)

end

end A290809.P15654187229894240062

/-! ## A290809.P28187169503598562

`A000420(n)-(A290806(n)+∏{d}[n, A001222(#)])`
-/

namespace A290809.P28187169503598562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - (A290806 n + ∏ d ∈ Nat.divisors (f1 n), A001222 d)

end

end A290809.P28187169503598562

/-!
# A290810: Numbers k such that 6k-1, 12k-1 and 18k-1 are all primes.

The programs for A290810, there is no canonical definition to state claims against.
-/

/-! ## A290810.P8258200368261905552

`A124486(n+2)/3`
-/

namespace A290810.P8258200368261905552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124486 (n + 2) : ℚ) / 3

end

end A290810.P8258200368261905552

/-! ## A290810.P16230220674423787605

`ceil(A067256(n+2)/6)`
-/

namespace A290810.P16230220674423787605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067256 (n + 2) : ℚ) / 6⌉

end

end A290810.P16230220674423787605

/-! ## A290810.P12441646968335063220

`∑[A008615(Δ[A067256(n+1)])]`
-/

namespace A290810.P12441646968335063220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067256 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290810.P12441646968335063220

/-! ## A290810.P11772325499180823351

`∑[A112689(Δ[A067256(n+1)])]`
-/

namespace A290810.P11772325499180823351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067256 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290810.P11772325499180823351

/-! ## A290810.P7801404993223997745

`∑[A185727(Δ[A067256(n+1)])]`
-/

namespace A290810.P7801404993223997745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067256 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290810.P7801404993223997745

/-! ## A290810.P1041134829159123104

`A353461(A067256(n+2))`
-/

namespace A290810.P1041134829159123104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (A067256 (n + 2)).toNat

end

end A290810.P1041134829159123104

/-! ## A290810.P8347904084203622465

`A002264(A124486(n+2))`
-/

namespace A290810.P8347904084203622465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A124486 (n + 2)).toNat

end

end A290810.P8347904084203622465

/-!
# A290811: Numbers n such that (6n-1, 6n+1), (12n-1, 12n+1) and (18n-1, 18n+1) are 3 pairs of twin primes.

The programs for A290811, there is no canonical definition to state claims against.
-/

/-! ## A290811.P12558251145542861040

`A118859(n+1)/6`
-/

namespace A290811.P12558251145542861040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118859 (n + 1) : ℚ) / 6

end

end A290811.P12558251145542861040

/-! ## A290811.P17269828460618659739

`record[ratio[A118859(A318274(n))]]`
-/

namespace A290811.P17269828460618659739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118859 (A318274 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290811.P17269828460618659739

/-! ## A290811.P1039107543403182905

`∩[A066388(n+1), A132929(n+1)]/6`
-/

namespace A290811.P1039107543403182905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132929 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A290811.P1039107543403182905

/-! ## A290811.P7145493429782391889

`record[ratio[A118859(A200370(n+1))]]`
-/

namespace A290811.P7145493429782391889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118859 (A200370 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290811.P7145493429782391889

/-! ## A290811.P6808819859501065599

`record[ratio[A118859(A118851(n))]]`
-/

namespace A290811.P6808819859501065599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118859 (A118851 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290811.P6808819859501065599

/-!
# A290813: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A290813, the canonical program `A290813.P8899743792180073667` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290813 has offset 0).

The definition of A290813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290813.P8899743792180073667

`or(A266719(n), A283352(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A290813

/-- `or(A266719(n), A283352(n))` -/
def P8899743792180073667.Spec : Prop :=
  ∀ n, P8899743792180073667.a n = A290813 n

theorem P8899743792180073667.correct : P8899743792180073667.Spec := by
  intro n
  simp only [A290813]

end A290813

/-! ## A290813.P10338442123922395184

`A283352(n)+char[A071194(n+1)]`
-/

namespace A290813.P10338442123922395184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071194 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290813.P10338442123922395184

namespace A290813

/-- `A283352(n)+char[A071194(n+1)]` -/
def P10338442123922395184.Spec : Prop :=
  ∀ n, P10338442123922395184.a n = A290813 n

end A290813

/-! ## A290813.P12826780855050594108

`A283352(n)+char[A141310(n+1)]`
-/

namespace A290813.P12826780855050594108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290813.P12826780855050594108

namespace A290813

/-- `A283352(n)+char[A141310(n+1)]` -/
def P12826780855050594108.Spec : Prop :=
  ∀ n, P12826780855050594108.a n = A290813 n

end A290813

/-! ## A290813.P6777923554213679292

`A283352(n)+A266719(A028310(n))`
-/

namespace A290813.P6777923554213679292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + A266719 (A028310 n).toNat

end

end A290813.P6777923554213679292

namespace A290813

/-- `A283352(n)+A266719(A028310(n))` -/
def P6777923554213679292.Spec : Prop :=
  ∀ n, P6777923554213679292.a n = A290813 n

end A290813

/-! ## A290813.P5362531228822097456

`A283352(n)+A290828(n)-A283353(n)`
-/

namespace A290813.P5362531228822097456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n + (A290828 n - A283353 n)

end

end A290813.P5362531228822097456

namespace A290813

/-- `A283352(n)+A290828(n)-A283353(n)` -/
def P5362531228822097456.Spec : Prop :=
  ∀ n, P5362531228822097456.a n = A290813 n

end A290813

/-!
# A290814: Number of non-word-representable connected graphs on n vertices.

The programs for A290814, there is no canonical definition to state claims against.
-/

/-! ## A290814.P7925444603491997202

`A057512(C(A050060(n+1), 6))`
-/

namespace A290814.P7925444603491997202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057512 (Nat.choose (A050060 (n + 1)).toNat 6)

end

end A290814.P7925444603491997202

/-! ## A290814.P9921671145345327985

`A057164(A333125(n)%A136465(n))`
-/

namespace A290814.P9921671145345327985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (Int.tmod (A333125 n) (A136465 n)).toNat

end

end A290814.P9921671145345327985

/-! ## A290814.P4473287812856986858

`A057164(A333125(n))%A186248(n)`
-/

namespace A290814.P4473287812856986858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057164 (A333125 n).toNat) (A186248 n)

end

end A290814.P4473287812856986858

/-! ## A290814.P391059124811551502

`A281169(xor(A036629(n), A086767(n)))`
-/

namespace A290814.P391059124811551502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281169 (Int.xor (A036629 n) (A086767 n)).toNat

end

end A290814.P391059124811551502

/-!
# A290815: Numbers m such that the numerator of Sum_{k=1..m, gcd(k,m) = 1} 1/k is divisible by m^3.

The programs for A290815, there is no canonical definition to state claims against.
-/

/-! ## A290815.P5544755745962179471

`∩[A309696(n+1), A004525(A309696(n+1))]`
-/

namespace A290815.P5544755745962179471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A309696 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290815.P5544755745962179471

/-! ## A290815.P7140448200914486279

`A309696(A396008(n+1))`
-/

namespace A290815.P7140448200914486279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309696 (A396008 (n + 1)).toNat

end

end A290815.P7140448200914486279

/-! ## A290815.P12127381590954779489

`A309696(eq[A269175(n), A309664(n)])`
-/

namespace A290815.P12127381590954779489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309696 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A290815.P12127381590954779489

/-!
# A290816: Number of dissections of an n-gon into polygons with odd number of sides counted up to rotations and reflections.

The programs for A290816, there is no canonical definition to state claims against.
-/

/-! ## A290816.P17919177271460455735

`A023190(A060797(n))`
-/

namespace A290816.P17919177271460455735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A060797 n).toNat

end

end A290816.P17919177271460455735

/-! ## A290816.P1682518828240648852

`A023190(floor(sqrt(A002110(n))))`
-/

namespace A290816.P1682518828240648852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (Int.sqrt (A002110 n)).toNat

end

end A290816.P1682518828240648852

/-! ## A290816.P722949067911559756

`A023190(round(sqrt(A002110(n))))`
-/

namespace A290816.P722949067911559756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (SequenceMachineLib.roundAway (Real.sqrt (A002110 n : ℝ))).toNat

end

end A290816.P722949067911559756

/-! ## A290816.P787479527524377312

`A023193(A182987(n)-A047920(n))`
-/

namespace A290816.P787479527524377312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A182987 n - A047920 n).toNat

end

end A290816.P787479527524377312

/-!
# A290817: Primes of at least one of the forms p^2 +- p +- 1, where p is prime.

The programs for A290817, there is no canonical definition to state claims against.
-/

/-! ## A290817.P12172473572170832678

`A125766(∑[A278063(n+2)])`
-/

namespace A290817.P12172473572170832678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278063 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A290817.P12172473572170832678

/-! ## A290817.P14814559794800108661

`p?[record[A162538(A055802(n+2))]]`
-/

namespace A290817.P14814559794800108661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162538 (A055802 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290817.P14814559794800108661

/-! ## A290817.P16275028879643851533

`A125766(∑[A007953(n)-A023444(n)+n])`
-/

namespace A290817.P16275028879643851533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A023444 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A290817.P16275028879643851533

/-!
# A290818: Array read by antidiagonals: T(m,n) = number of irredundant sets in the lattice (rook) graph K_m X K_n.

The programs for A290818, there is no canonical definition to state claims against.
-/

/-! ## A290818.P17938909175281191679

`A325389(A330510(n))`
-/

namespace A290818.P17938909175281191679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (A330510 n).toNat

end

end A290818.P17938909175281191679

/-! ## A290818.P8847088350770981455

`A325389(A025564(comp[∑[n]]+n))`
-/

namespace A290818.P8847088350770981455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (A025564 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)).toNat

end

end A290818.P8847088350770981455

/-! ## A290818.P13830351288821182607

`A305103(A173043(n))+A003056(n)`
-/

namespace A290818.P13830351288821182607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (A173043 n).toNat + A003056 n

end

end A290818.P13830351288821182607

/-!
# A290819: Number of rooted 4-regular one-face maps on genus g surface.

The programs for A290819, there is no canonical definition to state claims against.
-/

/-! ## A290819.P13275893078358531870

`A085881(2*(n+1)²)`
-/

namespace A290819.P13275893078358531870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085881 (2 * (n + 1) ^ 2)

end

end A290819.P13275893078358531870

/-! ## A290819.P15509652764027413333

`A000108(2*n+1)*∏[(2*n+1)²]`
-/

namespace A290819.P15509652764027413333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n + 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A290819.P15509652764027413333

/-! ## A290819.P883608872283918137

`∏[A016754(n)]*A024492(n)`
-/

namespace A290819.P883608872283918137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A024492 n

end

end A290819.P883608872283918137

/-! ## A290819.P2819336641127664579

`A001147(Δ[n²])*A001700(n)`
-/

namespace A290819.P2819336641127664579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A001700 n

end

end A290819.P2819336641127664579

/-! ## A290819.P2183354465717395867

`A060593(2*n+1)/A000165(n)²`
-/

namespace A290819.P2183354465717395867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060593 (2 * n + 1) : ℚ) / (A000165 n ^ 2 : ℚ)

end

end A290819.P2183354465717395867

/-!
# A290821: Side length of largest equilateral triangle that can be made from n or fewer equilateral triangles with integer sides s_k, subject to gcd(s_1,s_2,...,s_n) = 1.

The programs for A290821, there is no canonical definition to state claims against.
-/

/-! ## A290821.P7992578609107431814

`A098312(a(n-3))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A290821.P7992578609107431814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A098312 (a (n - 3)).toNat + a (n - 2)

end

end A290821.P7992578609107431814

/-! ## A290821.P8256893436040325911

`A199426(a(n-3))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A290821.P8256893436040325911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A199426 (a (n - 3)).toNat + a (n - 2)

end

end A290821.P8256893436040325911

/-! ## A290821.P7222431592374252869

`A222250(a(n-3))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A290821.P7222431592374252869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A222250 (a (n - 3)).toNat + a (n - 2)

end

end A290821.P7222431592374252869

/-! ## A290821.P10074986556277177417

`A327626(a(n-3))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A290821.P10074986556277177417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A327626 (a (n - 3)).toNat + a (n - 2)

end

end A290821.P10074986556277177417

/-! ## A290821.P11244314300297674041

`A134816(n+1)+val(floor(ϕ*(n+2)), 5)`
-/

namespace A290821.P11244314300297674041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + (SequenceMachineLib.valuation ⌊Real.goldenRatio * (n + 2 : ℝ)⌋.toNat 5 : ℤ)

end

end A290821.P11244314300297674041

/-!
# A290822: Transitive numbers: Matula-Goebel numbers of transitive rooted trees.

The programs for A290822, there is no canonical definition to state claims against.
-/

/-! ## A290822.P4153165719783186838

`eq[A001221(n+1), A324923(n+1)]+1`
-/

namespace A290822.P4153165719783186838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A290822.P4153165719783186838

/-! ## A290822.P11418837593837327815

`eq[A083399(n+1), A317713(n+1)]+1`
-/

namespace A290822.P11418837593837327815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A290822.P11418837593837327815

/-! ## A290822.P3867050381403117965

`eq[A107038(A088510(n+1)), A152271(n)]`
-/

namespace A290822.P3867050381403117965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107038 (A088510 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290822.P3867050381403117965

/-! ## A290822.P9002058976657759367

`eq[A057979(n+2), A107038(A088510(n+1))]`
-/

namespace A290822.P9002058976657759367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107038 (A088510 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290822.P9002058976657759367

/-! ## A290822.P10315041684358329396

`A316470(n+1)+A014082(A062318(n+1))`
-/

namespace A290822.P10315041684358329396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (n + 1) + A014082 (A062318 (n + 1)).toNat

end

end A290822.P10315041684358329396

/-!
# A290824: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(k*x)/(1 + LambertW(-x)).

The programs for A290824, there is no canonical definition to state claims against.
-/

/-! ## A290824.P14522459939817661854

`A304522(A132945(n))*A353755(n+1)`
-/

namespace A290824.P14522459939817661854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304522 (A132945 n).toNat * A353755 (n + 1)

end

end A290824.P14522459939817661854

/-!
# A290825: Least base-3 digit of n.

The programs for A290825, the canonical program `A290825.P15737516132095807789` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290825 has offset 0).

The definition of A290825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290825.P768787908209437541

`A319651(n)%3`
-/

namespace A290825.P768787908209437541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319651 n) 3

end

end A290825.P768787908209437541

namespace A290825

/-- `A319651(n)%3` -/
def P768787908209437541.Spec : Prop :=
  ∀ n, P768787908209437541.a n = A290825 n

end A290825

/-! ## A290825.P1318861047354451089

`A190592(n)-A037897(n)`
-/

namespace A290825.P1318861047354451089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 n - A037897 n

end

end A290825.P1318861047354451089

namespace A290825

/-- `A190592(n)-A037897(n)` -/
def P1318861047354451089.Spec : Prop :=
  ∀ n, P1318861047354451089.a n = A290825 n

end A290825

/-! ## A290825.P5758440744739968968

`(A164993(n)+A038574(n))%3`
-/

namespace A290825.P5758440744739968968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164993 n + A038574 n) 3

end

end A290825.P5758440744739968968

namespace A290825

/-- `(A164993(n)+A038574(n))%3` -/
def P5758440744739968968.Spec : Prop :=
  ∀ n, P5758440744739968968.a n = A290825 n

end A290825

/-! ## A290825.P10119131127447691982

`(A319803(n)-A038574(n))%3`
-/

namespace A290825.P10119131127447691982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319803 n - A038574 n) 3

end

end A290825.P10119131127447691982

namespace A290825

/-- `(A319803(n)-A038574(n))%3` -/
def P10119131127447691982.Spec : Prop :=
  ∀ n, P10119131127447691982.a n = A290825 n

end A290825

/-! ## A290825.P15737516132095807789

`(A088917(n)+1)*char[A032924(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A290825

/-- `(A088917(n)+1)*char[A032924(n+1)]` -/
def P15737516132095807789.Spec : Prop :=
  ∀ n, P15737516132095807789.a n = A290825 n

theorem P15737516132095807789.correct : P15737516132095807789.Spec := by
  intro n
  simp only [A290825]

end A290825

/-! ## A290825.P2024852818817958946

`A010872(A319651(n))`
-/

namespace A290825.P2024852818817958946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A319651 n).toNat

end

end A290825.P2024852818817958946

namespace A290825

/-- `A010872(A319651(n))` -/
def P2024852818817958946.Spec : Prop :=
  ∀ n, P2024852818817958946.a n = A290825 n

end A290825

/-! ## A290825.P14997600382074554797

`1-A010892(2*A319651(n))`
-/

namespace A290825.P14997600382074554797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010892 (2 * A319651 n).toNat

end

end A290825.P14997600382074554797

namespace A290825

/-- `1-A010892(2*A319651(n))` -/
def P14997600382074554797.Spec : Prop :=
  ∀ n, P14997600382074554797.a n = A290825 n

end A290825

/-! ## A290825.P16761113302252129995

`1-A010892(A319651(n)+A319651(n))`
-/

namespace A290825.P16761113302252129995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010892 (A319651 n + A319651 n).toNat

end

end A290825.P16761113302252129995

namespace A290825

/-- `1-A010892(A319651(n)+A319651(n))` -/
def P16761113302252129995.Spec : Prop :=
  ∀ n, P16761113302252129995.a n = A290825 n

end A290825

/-! ## A290825.P6967163076314788673

`(A164994(A008585(n))-A164994(n))%3`
-/

namespace A290825.P6967163076314788673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164994 (A008585 n).toNat - A164994 n) 3

end

end A290825.P6967163076314788673

namespace A290825

/-- `(A164994(A008585(n))-A164994(n))%3` -/
def P6967163076314788673.Spec : Prop :=
  ∀ n, P6967163076314788673.a n = A290825 n

end A290825

/-! ## A290825.P11486002193182850048

`A004428(A007089(n))`
-/

namespace A290825.P11486002193182850048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 (A007089 n).toNat

end

end A290825.P11486002193182850048

namespace A290825

/-- `A004428(A007089(n))` -/
def P11486002193182850048.Spec : Prop :=
  ∀ n, P11486002193182850048.a n = A290825 n

end A290825

/-!
# A290827: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A290827, there is no canonical definition to state claims against.
-/

/-! ## A290827.P10375906224281561327

`A007088(A290829(n))`
-/

namespace A290827.P10375906224281561327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290829 n).toNat

end

end A290827.P10375906224281561327

/-! ## A290827.P11537750616999544860

`A007088(lcm(4, A290828(n))/4)`
-/

namespace A290827.P11537750616999544860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((Int.lcm 4 (A290828 n) : ℚ) / 4)).toNat

end

end A290827.P11537750616999544860

/-! ## A290827.P17856805363147625027

`A007088(A000265(A290828(n)))`
-/

namespace A290827.P17856805363147625027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000265 (A290828 n).toNat).toNat

end

end A290827.P17856805363147625027

/-! ## A290827.P7496177433372841385

`A215256(A290828(n))`
-/

namespace A290827.P7496177433372841385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (A290828 n).toNat

end

end A290827.P7496177433372841385

/-! ## A290827.P17912140602683362955

`A099821(round(A290829(n)/2))`
-/

namespace A290827.P17912140602683362955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (SequenceMachineLib.roundAway ((A290829 n : ℚ) / 2)).toNat

end

end A290827.P17912140602683362955

/-!
# A290828: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A290828, the canonical program `A290828.P8955837639577823817` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290828 has offset 0).

The definition of A290828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290828.P8955837639577823817

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=15, a(4)=28, a(5)=63`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A290828

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P8955837639577823817.Spec : Prop :=
  ∀ n, P8955837639577823817.a n = A290828 n

theorem P8955837639577823817.correct : P8955837639577823817.Spec := by
  intro n
  simp only [A290828]

end A290828

/-! ## A290828.P16753339989314775869

`or(or(n, 2*a(n-1))-2, xor(3, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A290828.P16753339989314775869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor (Int.lor (n : ℤ) (2 * a (n - 1)) - 2) (Int.xor 3 (a (n - 1)))

end

end A290828.P16753339989314775869

namespace A290828

/-- `or(or(n, 2*a(n-1))-2, xor(3, a(n-1)))` -/
def P16753339989314775869.Spec : Prop :=
  ∀ n, P16753339989314775869.a n = A290828 n

end A290828

/-! ## A290828.P8170327229922727002

`or(2*n, A290194(n))`
-/

namespace A290828.P8170327229922727002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A290194 n)

end

end A290828.P8170327229922727002

namespace A290828

/-- `or(2*n, A290194(n))` -/
def P8170327229922727002.Spec : Prop :=
  ∀ n, P8170327229922727002.a n = A290828 n

end A290828

/-! ## A290828.P13220582496729846695

`or(A266719(n), A283353(n))`
-/

namespace A290828.P13220582496729846695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266719 n) (A283353 n)

end

end A290828.P13220582496729846695

namespace A290828

/-- `or(A266719(n), A283353(n))` -/
def P13220582496729846695.Spec : Prop :=
  ∀ n, P13220582496729846695.a n = A290828 n

end A290828

/-! ## A290828.P6710010574099588320

`A283353(n)+A266719(A028310(n))`
-/

namespace A290828.P6710010574099588320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283353 n + A266719 (A028310 n).toNat

end

end A290828.P6710010574099588320

namespace A290828

/-- `A283353(n)+A266719(A028310(n))` -/
def P6710010574099588320.Spec : Prop :=
  ∀ n, P6710010574099588320.a n = A290828 n

end A290828

/-! ## A290828.P9300409877502382198

`A290194(n)+A010673(A233583(n+1))`
-/

namespace A290828.P9300409877502382198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290194 n + A010673 (A233583 (n + 1)).toNat

end

end A290828.P9300409877502382198

namespace A290828

/-- `A290194(n)+A010673(A233583(n+1))` -/
def P9300409877502382198.Spec : Prop :=
  ∀ n, P9300409877502382198.a n = A290828 n

end A290828

/-! ## A290828.P16836156243336892196

`gcd(4, A290813(n))*A290829(n)`
-/

namespace A290828.P16836156243336892196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A290813 n) : ℤ) * A290829 n

end

end A290828.P16836156243336892196

namespace A290828

/-- `gcd(4, A290813(n))*A290829(n)` -/
def P16836156243336892196.Spec : Prop :=
  ∀ n, P16836156243336892196.a n = A290828 n

end A290828

/-!
# A290829: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A290829, the canonical program `A290829.P13586906951077751601` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290829 has offset 0).

The definition of A290829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290829.P13586906951077751601

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=15, a(4)=7, a(5)=63`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A290829

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P13586906951077751601.Spec : Prop :=
  ∀ n, P13586906951077751601.a n = A290829 n

theorem P13586906951077751601.correct : P13586906951077751601.Spec := by
  intro n
  simp only [A290829]

end A290829

/-! ## A290829.P11100785854334383184

`or(A084183(n), A290195(n))`
-/

namespace A290829.P11100785854334383184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084183 n) (A290195 n)

end

end A290829.P11100785854334383184

namespace A290829

/-- `or(A084183(n), A290195(n))` -/
def P11100785854334383184.Spec : Prop :=
  ∀ n, P11100785854334383184.a n = A290829 n

end A290829

/-! ## A290829.P8472484984854830014

`or(A276966(n), A290195(n))`
-/

namespace A290829.P8472484984854830014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276966 n) (A290195 n)

end

end A290829.P8472484984854830014

namespace A290829

/-- `or(A276966(n), A290195(n))` -/
def P8472484984854830014.Spec : Prop :=
  ∀ n, P8472484984854830014.a n = A290829 n

end A290829

/-! ## A290829.P10259500425915541304

`or(A277799(n), A290195(n))`
-/

namespace A290829.P10259500425915541304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277799 n) (A290195 n)

end

end A290829.P10259500425915541304

namespace A290829

/-- `or(A277799(n), A290195(n))` -/
def P10259500425915541304.Spec : Prop :=
  ∀ n, P10259500425915541304.a n = A290829 n

end A290829

/-! ## A290829.P9261118368100233028

`or(A277866(n), A290195(n))`
-/

namespace A290829.P9261118368100233028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277866 n) (A290195 n)

end

end A290829.P9261118368100233028

namespace A290829

/-- `or(A277866(n), A290195(n))` -/
def P9261118368100233028.Spec : Prop :=
  ∀ n, P9261118368100233028.a n = A290829 n

end A290829

/-! ## A290829.P6377723381806394779

`or(A277929(n), A290195(n))`
-/

namespace A290829.P6377723381806394779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277929 n) (A290195 n)

end

end A290829.P6377723381806394779

namespace A290829

/-- `or(A277929(n), A290195(n))` -/
def P6377723381806394779.Spec : Prop :=
  ∀ n, P6377723381806394779.a n = A290829 n

end A290829

/-! ## A290829.P7208650996266768140

`or(A278345(n), A290195(n))`
-/

namespace A290829.P7208650996266768140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A278345 n) (A290195 n)

end

end A290829.P7208650996266768140

namespace A290829

/-- `or(A278345(n), A290195(n))` -/
def P7208650996266768140.Spec : Prop :=
  ∀ n, P7208650996266768140.a n = A290829 n

end A290829

/-! ## A290829.P15658670456476402304

`or(A278445(n), A290195(n))`
-/

namespace A290829.P15658670456476402304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A278445 n) (A290195 n)

end

end A290829.P15658670456476402304

namespace A290829

/-- `or(A278445(n), A290195(n))` -/
def P15658670456476402304.Spec : Prop :=
  ∀ n, P15658670456476402304.a n = A290829 n

end A290829

/-! ## A290829.P17305104479778311969

`or(A278468(n), A290195(n))`
-/

namespace A290829.P17305104479778311969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A278468 n) (A290195 n)

end

end A290829.P17305104479778311969

namespace A290829

/-- `or(A278468(n), A290195(n))` -/
def P17305104479778311969.Spec : Prop :=
  ∀ n, P17305104479778311969.a n = A290829 n

end A290829

/-! ## A290829.P17760522866489917846

`or(A278594(n), A290195(n))`
-/

namespace A290829.P17760522866489917846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A278594 n) (A290195 n)

end

end A290829.P17760522866489917846

namespace A290829

/-- `or(A278594(n), A290195(n))` -/
def P17760522866489917846.Spec : Prop :=
  ∀ n, P17760522866489917846.a n = A290829 n

end A290829

/-! ## A290829.P13957088890541136073

`xor(A131577(n), A284485(n))`
-/

namespace A290829.P13957088890541136073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131577 n) (A284485 n)

end

end A290829.P13957088890541136073

namespace A290829

/-- `xor(A131577(n), A284485(n))` -/
def P13957088890541136073.Spec : Prop :=
  ∀ n, P13957088890541136073.a n = A290829 n

end A290829

/-! ## A290829.P4675690846199208995

`lcm(4, A290828(n))/4`
-/

namespace A290829.P4675690846199208995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A290828 n) : ℚ) / 4

end

end A290829.P4675690846199208995

namespace A290829

/-- `lcm(4, A290828(n))/4` -/
def P4675690846199208995.Spec : Prop :=
  ∀ n, P4675690846199208995.a n = (A290829 n : ℚ)

end A290829

/-!
# A290830: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 966", based on the 5-celled von Neumann neighborhood.

The programs for A290830, there is no canonical definition to state claims against.
-/

/-! ## A290830.P4442079098485768071

`A007088(A290832(n))`
-/

namespace A290830.P4442079098485768071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290832 n).toNat

end

end A290830.P4442079098485768071

/-! ## A290830.P17847545755379124251

`∏{p}[A286831(A290561(n)), #]`
-/

namespace A290830.P17847545755379124251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286831 (A290561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A290830.P17847545755379124251

/-! ## A290830.P11871859931126676989

`A286831(n-A052403(n+1)%2)`
-/

namespace A290830.P11871859931126676989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286831 ((n : ℤ) - Int.tmod (A052403 (n + 1)) 2).toNat

end

end A290830.P11871859931126676989

/-! ## A290830.P16922889609910398704

`∏{p}[A290236(A290561(n)), #]%A215635(n)`
-/

namespace A290830.P16922889609910398704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290236 (A290561 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A215635 n)

end

end A290830.P16922889609910398704

/-!
# A290834: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 969", based on the 5-celled von Neumann neighborhood.

The programs for A290834, there is no canonical definition to state claims against.
-/

/-! ## A290834.P6268735088936255913

`A290813(n)+A290835(n)%A290827(n)`
-/

namespace A290834.P6268735088936255913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290813 n + Int.tmod (A290835 n) (A290827 n)

end

end A290834.P6268735088936255913

/-! ## A290834.P6273266341579199624

`A007088(A290836(n))`
-/

namespace A290834.P6273266341579199624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290836 n).toNat

end

end A290834.P6273266341579199624

/-! ## A290834.P14393134958989957710

`A007088(or(A267589(n), A290828(n)))`
-/

namespace A290834.P14393134958989957710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A267589 n) (A290828 n)).toNat

end

end A290834.P14393134958989957710

/-! ## A290834.P18344950783813136578

`A185544(2*A290836(n))`
-/

namespace A290834.P18344950783813136578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290836 n).toNat

end

end A290834.P18344950783813136578

/-! ## A290834.P7570928474768510771

`A185544(2*or(A267589(n), A290828(n)))`
-/

namespace A290834.P7570928474768510771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.lor (A267589 n) (A290828 n)).toNat

end

end A290834.P7570928474768510771

/-!
# A290835: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 969", based on the 5-celled von Neumann neighborhood.

The programs for A290835, there is no canonical definition to state claims against.
-/

/-! ## A290835.P4735683551373619032

`A007088(A290837(n))`
-/

namespace A290835.P4735683551373619032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290837 n).toNat

end

end A290835.P4735683551373619032

/-! ## A290835.P9587556467388035500

`A007088(lcm(4, A290836(n))/4)`
-/

namespace A290835.P9587556467388035500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((Int.lcm 4 (A290836 n) : ℚ) / 4)).toNat

end

end A290835.P9587556467388035500

/-! ## A290835.P8651398874627277166

`A007088(A290836(n)/gcd(4, A290836(n)))`
-/

namespace A290835.P8651398874627277166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A290836 n : ℚ) / (Int.gcd 4 (A290836 n) : ℚ))).toNat

end

end A290835.P8651398874627277166

/-! ## A290835.P3476386010759083655

`A007088(A286521(n)%A194960(2*(n+1))!)`
-/

namespace A290835.P3476386010759083655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A286521 n) (Nat.factorial (A194960 (2 * (n + 1))).toNat : ℤ)).toNat

end

end A290835.P3476386010759083655

/-! ## A290835.P6405717163584436275

`A215256(A290836(n))`
-/

namespace A290835.P6405717163584436275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (A290836 n).toNat

end

end A290835.P6405717163584436275

/-!
# A290836: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 969", based on the 5-celled von Neumann neighborhood.

The programs for A290836, the canonical program `A290836.P6285221992389236939` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290836 has offset 0).

The definition of A290836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290836.P6285221992389236939

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=15, a(4)=28, a(5)=63, a(6)=127`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A290836

/-- `3*a(n-1)-2*a(n-2)` -/
def P6285221992389236939.Spec : Prop :=
  ∀ n, P6285221992389236939.a n = A290836 n

theorem P6285221992389236939.correct : P6285221992389236939.Spec := by
  intro n
  simp only [A290836]

end A290836

/-! ## A290836.P6016701476294588356

`or(A267589(n), A290828(n))`
-/

namespace A290836.P6016701476294588356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267589 n) (A290828 n)

end

end A290836.P6016701476294588356

namespace A290836

/-- `or(A267589(n), A290828(n))` -/
def P6016701476294588356.Spec : Prop :=
  ∀ n, P6016701476294588356.a n = A290836 n

end A290836

/-! ## A290836.P3556058850266047442

`or(A004273(A188346(n)), A290828(n))`
-/

namespace A290836.P3556058850266047442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004273 (A188346 n).toNat) (A290828 n)

end

end A290836.P3556058850266047442

namespace A290836

/-- `or(A004273(A188346(n)), A290828(n))` -/
def P3556058850266047442.Spec : Prop :=
  ∀ n, P3556058850266047442.a n = A290836 n

end A290836

/-! ## A290836.P15631361053198828136

`A077896(2*n)-A049084(A051037(n+1))`
-/

namespace A290836.P15631361053198828136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (2 * n) - A049084 (A051037 (n + 1)).toNat

end

end A290836.P15631361053198828136

namespace A290836

/-- `A077896(2*n)-A049084(A051037(n+1))` -/
def P15631361053198828136.Spec : Prop :=
  ∀ n, P15631361053198828136.a n = A290836 n

end A290836

/-! ## A290836.P13558181362180790842

`or(A132209(A026811(n)), A290828(n))`
-/

namespace A290836.P13558181362180790842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132209 (A026811 n).toNat) (A290828 n)

end

end A290836.P13558181362180790842

namespace A290836

/-- `or(A132209(A026811(n)), A290828(n))` -/
def P13558181362180790842.Spec : Prop :=
  ∀ n, P13558181362180790842.a n = A290836 n

end A290836

/-! ## A290836.P11921883669529782254

`or(A004273(A060422(n)), A290828(n))`
-/

namespace A290836.P11921883669529782254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004273 (A060422 n).toNat) (A290828 n)

end

end A290836.P11921883669529782254

namespace A290836

/-- `or(A004273(A060422(n)), A290828(n))` -/
def P11921883669529782254.Spec : Prop :=
  ∀ n, P11921883669529782254.a n = A290836 n

end A290836

/-!
# A290837: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 969", based on the 5-celled von Neumann neighborhood.

The programs for A290837, the canonical program `A290837.P9845072503493149575` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290837 has offset 0).

The definition of A290837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290837.P9845072503493149575

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=15, a(4)=7, a(5)=63, a(6)=127`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A290837

/-- `3*a(n-1)-2*a(n-2)` -/
def P9845072503493149575.Spec : Prop :=
  ∀ n, P9845072503493149575.a n = A290837 n

theorem P9845072503493149575.correct : P9845072503493149575.Spec := by
  intro n
  simp only [A290837]

end A290837

/-! ## A290837.P4663588654210711559

`A290836(n)/gcd(4, A290836(n))`
-/

namespace A290837.P4663588654210711559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290836 n : ℚ) / (Int.gcd 4 (A290836 n) : ℚ)

end

end A290837.P4663588654210711559

namespace A290837

/-- `A290836(n)/gcd(4, A290836(n))` -/
def P4663588654210711559.Spec : Prop :=
  ∀ n, P4663588654210711559.a n = (A290837 n : ℚ)

end A290837

/-! ## A290837.P432777880198487218

`or(A122746(n)%A290194(n), A290195(n))`
-/

namespace A290837.P432777880198487218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A122746 n) (A290194 n)) (A290195 n)

end

end A290837.P432777880198487218

namespace A290837

/-- `or(A122746(n)%A290194(n), A290195(n))` -/
def P432777880198487218.Spec : Prop :=
  ∀ n, P432777880198487218.a n = A290837 n

end A290837

/-! ## A290837.P16437939445470924647

`or(A290828(n)%A290836(n), A290829(n))`
-/

namespace A290837.P16437939445470924647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A290828 n) (A290836 n)) (A290829 n)

end

end A290837.P16437939445470924647

namespace A290837

/-- `or(A290828(n)%A290836(n), A290829(n))` -/
def P16437939445470924647.Spec : Prop :=
  ∀ n, P16437939445470924647.a n = A290837 n

end A290837

/-! ## A290837.P4157263616947858320

`lcm(4, A290836(n))/4`
-/

namespace A290837.P4157263616947858320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A290836 n) : ℚ) / 4

end

end A290837.P4157263616947858320

namespace A290837

/-- `lcm(4, A290836(n))/4` -/
def P4157263616947858320.Spec : Prop :=
  ∀ n, P4157263616947858320.a n = (A290837 n : ℚ)

end A290837

/-! ## A290837.P15044564351956558175

`A286521(n)%A194960(2*(n+1))!`
-/

namespace A290837.P15044564351956558175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286521 n) (Nat.factorial (A194960 (2 * (n + 1))).toNat : ℤ)

end

end A290837.P15044564351956558175

namespace A290837

/-- `A286521(n)%A194960(2*(n+1))!` -/
def P15044564351956558175.Spec : Prop :=
  ∀ n, P15044564351956558175.a n = A290837 n

end A290837

/-!
# A290838: a(n) = smallest prime p such that 2p - 2n + 1 is prime.

The programs for A290838, there is no canonical definition to state claims against.
-/

/-! ## A290838.P602889239790646648

`p?[A014684(n+1)+A000108(A204065(n+1))]`
-/

namespace A290838.P602889239790646648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) + A000108 (A204065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290838.P602889239790646648

/-! ## A290838.P10166128562650020043

`A051698(A065190(n+3)%p?[A080735(n+1)])`
-/

namespace A290838.P10166128562650020043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (Int.tmod (A065190 (n + 3)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A290838.P10166128562650020043

/-! ## A290838.P12789589572384258382

`A007918(n+1)+A000122(A305719(3*n+5))`
-/

namespace A290838.P12789589572384258382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1) + A000122 (A305719 (3 * n + 5)).toNat

end

end A290838.P12789589572384258382

/-! ## A290838.P7176194630249173960

`A151800(n)-A138270(A247364(A221596(n+1)))`
-/

namespace A290838.P7176194630249173960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - A138270 (A247364 (A221596 (n + 1)).toNat).toNat

end

end A290838.P7176194630249173960

/-!
# A290839: a(n) = smallest prime p such that 2p + 2n - 1 is prime.

The programs for A290839, there is no canonical definition to state claims against.
-/

/-! ## A290839.P7683226374254446547

`A036043(5^A067760(n))`
-/

namespace A290839.P7683226374254446547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A067760 n : ℤ))).toNat

end

end A290839.P7683226374254446547

/-! ## A290839.P18289650419561060264

`dr(A092386(A067760(n)!))`
-/

namespace A290839.P18289650419561060264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A092386 (Nat.factorial (A067760 n).toNat))

end

end A290839.P18289650419561060264

/-! ## A290839.P16086176760200879527

`A269596(A067760(n)²+4)`
-/

namespace A290839.P16086176760200879527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269596 (A067760 n ^ 2 + 4).toNat

end

end A290839.P16086176760200879527

/-! ## A290839.P15355309253760780105

`A000120(A023554(A067760(n))²)`
-/

namespace A290839.P15355309253760780105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A023554 (A067760 n).toNat ^ 2).toNat

end

end A290839.P15355309253760780105

/-! ## A290839.P10508361623323245347

`A006530(A326438(A067760(n)²))`
-/

namespace A290839.P10508361623323245347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A326438 (A067760 n ^ 2).toNat).toNat

end

end A290839.P10508361623323245347

/-!
# A290840: a(n) = n! * [x^n] exp(n*x)/(1 + LambertW(-x)).

The programs for A290840, there is no canonical definition to state claims against.
-/

/-! ## A290840.P5382074161743779679

`A290824(∑[4*n])`
-/

namespace A290840.P5382074161743779679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290840.P5382074161743779679

/-! ## A290840.P11119398246541386406

`record[A003982(n)*A290824(n)]`
-/

namespace A290840.P11119398246541386406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A290824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290840.P11119398246541386406

/-! ## A290840.P13535041014048225413

`A290824(A046092(n))^A178334(n)`
-/

namespace A290840.P13535041014048225413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290824 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A290840.P13535041014048225413

/-! ## A290840.P17548790102727203304

`A007318(val(n+1, 5))*A290824(A046092(n))`
-/

namespace A290840.P17548790102727203304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 5) * A290824 (A046092 n).toNat

end

end A290840.P17548790102727203304

/-! ## A290840.P8540530309347369326

`A290824(A046092(n))+A001222(gcd(n, n+1))`
-/

namespace A290840.P8540530309347369326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290824 (A046092 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A290840.P8540530309347369326

/-!
# A290841: a(n) is the least number k such that the sum of the n-th powers of the proper divisors of k is a prime number.

The programs for A290841, there is no canonical definition to state claims against.
-/

/-! ## A290841.P3942252749601393553

`A120685(A123513(∑[n!]))`
-/

namespace A290841.P3942252749601393553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120685 (A123513 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A290841.P3942252749601393553

/-!
# A290842: Numbers k such that the sum of digits of k^3 is 3^3 = 27.

The programs for A290842, the canonical program `A290842.P12910772204790180681` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290842 has offset 1).

The definition of A290842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290842.P17256187177506810759

`∩[3*n, A237525(n+2)]`
-/

namespace A290842.P17256187177506810759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290842.P17256187177506810759

namespace A290842

/-- `∩[3*n, A237525(n+2)]` -/
def P17256187177506810759.Spec : Prop :=
  ∀ n, (P17256187177506810759.a n : ℤ) = A290842 (n + 1)

end A290842

/-! ## A290842.P5312494841730060662

`∩[A237525(n+2), A008585(n)]`
-/

namespace A290842.P5312494841730060662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290842.P5312494841730060662

namespace A290842

/-- `∩[A237525(n+2), A008585(n)]` -/
def P5312494841730060662.Spec : Prop :=
  ∀ n, (P5312494841730060662.a n : ℤ) = A290842 (n + 1)

end A290842

/-! ## A290842.P5042144492961449097

`∩[A237525(n+1), A016789(n)+1]`
-/

namespace A290842.P5042144492961449097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290842.P5042144492961449097

namespace A290842

/-- `∩[A237525(n+1), A016789(n)+1]` -/
def P5042144492961449097.Spec : Prop :=
  ∀ n, (P5042144492961449097.a n : ℤ) = A290842 (n + 1)

end A290842

/-! ## A290842.P17836344257297514938

`∩[A237525(n+2), A005843(n)+n]`
-/

namespace A290842.P17836344257297514938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290842.P17836344257297514938

namespace A290842

/-- `∩[A237525(n+2), A005843(n)+n]` -/
def P17836344257297514938.Spec : Prop :=
  ∀ n, (P17836344257297514938.a n : ℤ) = A290842 (n + 1)

end A290842

/-! ## A290842.P12910772204790180681

`eq[27, A004164(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290842

/-- `eq[27, A004164(n)]` -/
def P12910772204790180681.Spec : Prop :=
  ∀ n, (P12910772204790180681.a n : ℤ) = A290842 (n + 1)

theorem P12910772204790180681.correct : P12910772204790180681.Spec := by
  intro n
  simp only [A290842, Nat.add_sub_cancel]

end A290842

/-! ## A290842.P11173044691575776440

`filter[A237525(n+2), A079978(#)]`
-/

namespace A290842.P11173044691575776440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A290842.P11173044691575776440

namespace A290842

/-- `filter[A237525(n+2), A079978(#)]` -/
def P11173044691575776440.Spec : Prop :=
  ∀ n, P11173044691575776440.a n = A290842 (n + 1)

end A290842

/-! ## A290842.P13696898394417105135

`filter[A237525(n+3), A173857(#)]`
-/

namespace A290842.P13696898394417105135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A290842.P13696898394417105135

namespace A290842

/-- `filter[A237525(n+3), A173857(#)]` -/
def P13696898394417105135.Spec : Prop :=
  ∀ n, P13696898394417105135.a n = A290842 (n + 1)

end A290842

/-! ## A290842.P5265202598289931200

`filter[A237525(n+3), A329680(#)]`
-/

namespace A290842.P5265202598289931200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A290842.P5265202598289931200

namespace A290842

/-- `filter[A237525(n+3), A329680(#)]` -/
def P5265202598289931200.Spec : Prop :=
  ∀ n, P5265202598289931200.a n = A290842 (n + 1)

end A290842

/-!
# A290845: a(1) = 1; a(n) = Sum_{k=1..n} a(ceiling((n-1)/k)).

The programs for A290845, there is no canonical definition to state claims against.
-/

/-! ## A290845.P11210875471549810226

`∑[A068336(floor(acot(n)+n))]`
-/

namespace A290845.P11210875471549810226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068336 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290845.P11210875471549810226

/-! ## A290845.P925107939862013638

`A068336(n)+a(n-1)` with `a(0)=1`
-/

namespace A290845.P925107939862013638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068336 n + a (n - 1)

end

end A290845.P925107939862013638

/-! ## A290845.P13926756670909917116

`∑[A068336(round(sqrt(n²+1)))]`
-/

namespace A290845.P13926756670909917116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068336 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290845.P13926756670909917116

/-! ## A290845.P618833858252339296

`∑[A068336(abs(1-n)+1)]-1`
-/

namespace A290845.P618833858252339296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068336 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A290845.P618833858252339296

/-! ## A290845.P11878056123182620295

`2*A003318(n+1)-A068336(n+1)`
-/

namespace A290845.P11878056123182620295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003318 (n + 1) - A068336 (n + 1)

end

end A290845.P11878056123182620295

/-!
# A290847: Number of dominating sets in the n-triangular graph.

The programs for A290847, there is no canonical definition to state claims against.
-/

/-! ## A290847.P15894777160770437799

`∏{p}[A289876(n+1), #]`
-/

namespace A290847.P15894777160770437799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289876 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A290847.P15894777160770437799

/-!
# A290848: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 974", based on the 5-celled von Neumann neighborhood.

The programs for A290848, there is no canonical definition to state claims against.
-/

/-! ## A290848.P5880400098855477620

`A007088(A290850(n))`
-/

namespace A290848.P5880400098855477620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290850 n).toNat

end

end A290848.P5880400098855477620

/-! ## A290848.P2729072543045775759

`A130556(A302704(floor(2*n/5)))`
-/

namespace A290848.P2729072543045775759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130556 (A302704 ⌊2 * ((n : ℚ) / 5)⌋.toNat).toNat

end

end A290848.P2729072543045775759

/-! ## A290848.P8541557616558753787

`A038585(A290851(n)/A034444(n+1))`
-/

namespace A290848.P8541557616558753787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038585 (SequenceMachineLib.roundAway ((A290851 n : ℚ) / (A034444 (n + 1) : ℚ))).toNat

end

end A290848.P8541557616558753787

/-! ## A290848.P13278890297647868328

`A038585(A290850(n)+A000225(n))`
-/

namespace A290848.P13278890297647868328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038585 (A290850 n + A000225 n).toNat

end

end A290848.P13278890297647868328

/-! ## A290848.P3034016781631615921

`A038585(A290851(n)-A000225(n))`
-/

namespace A290848.P3034016781631615921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038585 (A290851 n - A000225 n).toNat

end

end A290848.P3034016781631615921

/-!
# A290849: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 974", based on the 5-celled von Neumann neighborhood.

The programs for A290849, there is no canonical definition to state claims against.
-/

/-! ## A290849.P10790347215849160670

`A007088(A290851(n))`
-/

namespace A290849.P10790347215849160670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290851 n).toNat

end

end A290849.P10790347215849160670

/-!
# A290852: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 998", based on the 5-celled von Neumann neighborhood.

The programs for A290852, there is no canonical definition to state claims against.
-/

/-! ## A290852.P6979610082251237724

`A007088(A290854(n))`
-/

namespace A290852.P6979610082251237724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290854 n).toNat

end

end A290852.P6979610082251237724

/-! ## A290852.P8765918741337069633

`A185544(2*A290854(n))`
-/

namespace A290852.P8765918741337069633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290854 n).toNat

end

end A290852.P8765918741337069633

/-! ## A290852.P7094150091568770694

`A283388(A262319(ceil((n-3)/4)!))`
-/

namespace A290852.P7094150091568770694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283388 (A262319 (Nat.factorial ⌈((n : ℤ) - 3 : ℚ) / 4⌉.toNat)).toNat

end

end A290852.P7094150091568770694

/-! ## A290852.P2046536979639989757

`A305989(A290855(n))`
-/

namespace A290852.P2046536979639989757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290855 n).toNat

end

end A290852.P2046536979639989757

/-!
# A290853: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 998", based on the 5-celled von Neumann neighborhood.

The programs for A290853, there is no canonical definition to state claims against.
-/

/-! ## A290853.P1626170444901802922

`A007088(A290855(n))`
-/

namespace A290853.P1626170444901802922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290855 n).toNat

end

end A290853.P1626170444901802922

/-!
# A290856: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1006", based on the 5-celled von Neumann neighborhood.

The programs for A290856, the canonical program `A290856.P13073528820345294689` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290856 has offset 0).

The definition of A290856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3738 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290856.P13073528820345294689

`gcd(11, C(3, n))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A290856

/-- `gcd(11, C(3, n))` -/
def P13073528820345294689.Spec : Prop :=
  ∀ n, (P13073528820345294689.a n : ℤ) = A290856 n

theorem P13073528820345294689.correct : P13073528820345294689.Spec := by
  intro n
  simp only [A290856]

end A290856

/-!
# A290857: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1006", based on the 5-celled von Neumann neighborhood.

The programs for A290857, the canonical program `A290857.P5776347625884228293` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290857 has offset 0).

The definition of A290857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290857.P3657182192475012530

`(char[4]+10)*a(n-1)` with `a(0)=1`
-/

namespace A290857.P3657182192475012530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0) + 10) * a (n - 1)

end

end A290857.P3657182192475012530

namespace A290857

/-- `(char[4]+10)*a(n-1)` -/
def P3657182192475012530.Spec : Prop :=
  ∀ n, (P3657182192475012530.a n : ℤ) = A290857 n

end A290857

/-! ## A290857.P5776347625884228293

`A281366(A130543(n)+A008574(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A290857

/-- `A281366(A130543(n)+A008574(n))` -/
def P5776347625884228293.Spec : Prop :=
  ∀ n, P5776347625884228293.a n = A290857 n

theorem P5776347625884228293.correct : P5776347625884228293.Spec := by
  intro n
  simp only [A290857]

end A290857

/-! ## A290857.P16971575120098208375

`A281366(or(A008574(n), A130543(n)))`
-/

namespace A290857.P16971575120098208375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (Int.lor (A008574 n) (A130543 n)).toNat

end

end A290857.P16971575120098208375

namespace A290857

/-- `A281366(or(A008574(n), A130543(n)))` -/
def P16971575120098208375.Spec : Prop :=
  ∀ n, P16971575120098208375.a n = A290857 n

end A290857

/-! ## A290857.P1595422280304466415

`A281366(xor(A008574(n), A130543(n)))`
-/

namespace A290857.P1595422280304466415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (Int.xor (A008574 n) (A130543 n)).toNat

end

end A290857.P1595422280304466415

namespace A290857

/-- `A281366(xor(A008574(n), A130543(n)))` -/
def P1595422280304466415.Spec : Prop :=
  ∀ n, P1595422280304466415.a n = A290857 n

end A290857

/-! ## A290857.P10171043415960877214

`A064222(A004216(2*n+3)+A000217(3*n+1))`
-/

namespace A290857.P10171043415960877214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 (A004216 (2 * n + 3) + A000217 (3 * n + 1)).toNat

end

end A290857.P10171043415960877214

namespace A290857

/-- `A064222(A004216(2*n+3)+A000217(3*n+1))` -/
def P10171043415960877214.Spec : Prop :=
  ∀ n, P10171043415960877214.a n = A290857 n

end A290857

/-!
# A290858: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1006", based on the 5-celled von Neumann neighborhood.

The programs for A290858, the canonical program `A290858.P11428969860353473793` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290858 has offset 0).

The definition of A290858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3679 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290858.P11428969860353473793

`gcd(3, C(13, n²))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A290858

/-- `gcd(3, C(13, n²))` -/
def P11428969860353473793.Spec : Prop :=
  ∀ n, (P11428969860353473793.a n : ℤ) = A290858 n

theorem P11428969860353473793.correct : P11428969860353473793.Spec := by
  intro n
  simp only [A290858]

end A290858

/-!
# A290859: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1006", based on the 5-celled von Neumann neighborhood.

The programs for A290859, the canonical program `A290859.P3243732649899171496` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290859 has offset 0).

The definition of A290859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290859.P10209601975697311241

`(char[4]+2)*a(n-1)` with `a(0)=1`
-/

namespace A290859.P10209601975697311241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0) + 2) * a (n - 1)

end

end A290859.P10209601975697311241

namespace A290859

/-- `(char[4]+2)*a(n-1)` -/
def P10209601975697311241.Spec : Prop :=
  ∀ n, (P10209601975697311241.a n : ℤ) = A290859 n

end A290859

/-! ## A290859.P10725442800345609663

`A029744(A326494(n))`
-/

namespace A290859.P10725442800345609663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A326494 n).toNat

end

end A290859.P10725442800345609663

namespace A290859

/-- `A029744(A326494(n))` -/
def P10725442800345609663.Spec : Prop :=
  ∀ n, P10725442800345609663.a n = A290859 n

end A290859

/-! ## A290859.P3243732649899171496

`A011782(n)*A156752(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290859

/-- `A011782(n)*A156752(n)` -/
def P3243732649899171496.Spec : Prop :=
  ∀ n, P3243732649899171496.a n = A290859 n

theorem P3243732649899171496.correct : P3243732649899171496.Spec := by
  intro n
  simp only [A290859]

end A290859

/-! ## A290859.P8065016999882095702

`and(A000039(n), A003945(n))`
-/

namespace A290859.P8065016999882095702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000039 n) (A003945 n)

end

end A290859.P8065016999882095702

namespace A290859

/-- `and(A000039(n), A003945(n))` -/
def P8065016999882095702.Spec : Prop :=
  ∀ n, P8065016999882095702.a n = A290859 n

end A290859

/-! ## A290859.P1950854951050462434

`and(A003945(n), A090764(n))`
-/

namespace A290859.P1950854951050462434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A090764 n)

end

end A290859.P1950854951050462434

namespace A290859

/-- `and(A003945(n), A090764(n))` -/
def P1950854951050462434.Spec : Prop :=
  ∀ n, P1950854951050462434.a n = A290859 n

end A290859

/-! ## A290859.P15086833567059980066

`and(A003945(n), A132732(n))`
-/

namespace A290859.P15086833567059980066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A132732 n)

end

end A290859.P15086833567059980066

namespace A290859

/-- `and(A003945(n), A132732(n))` -/
def P15086833567059980066.Spec : Prop :=
  ∀ n, P15086833567059980066.a n = A290859 n

end A290859

/-! ## A290859.P9395122060014288122

`and(A090764(n), A157823(n))`
-/

namespace A290859.P9395122060014288122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090764 n) (A157823 n)

end

end A290859.P9395122060014288122

namespace A290859

/-- `and(A090764(n), A157823(n))` -/
def P9395122060014288122.Spec : Prop :=
  ∀ n, P9395122060014288122.a n = A290859 n

end A290859

/-! ## A290859.P9642076332062744351

`and(A132732(n), A157823(n))`
-/

namespace A290859.P9642076332062744351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132732 n) (A157823 n)

end

end A290859.P9642076332062744351

namespace A290859

/-- `and(A132732(n), A157823(n))` -/
def P9642076332062744351.Spec : Prop :=
  ∀ n, P9642076332062744351.a n = A290859 n

end A290859

/-! ## A290859.P12216477906356727110

`and(A003945(n), A286866(n))`
-/

namespace A290859.P12216477906356727110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A286866 n)

end

end A290859.P12216477906356727110

namespace A290859

/-- `and(A003945(n), A286866(n))` -/
def P12216477906356727110.Spec : Prop :=
  ∀ n, P12216477906356727110.a n = A290859 n

end A290859

/-! ## A290859.P12031238378937253620

`and(A003945(n), A290659(n))`
-/

namespace A290859.P12031238378937253620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A290659 n)

end

end A290859.P12031238378937253620

namespace A290859

/-- `and(A003945(n), A290659(n))` -/
def P12031238378937253620.Spec : Prop :=
  ∀ n, P12031238378937253620.a n = A290859 n

end A290859

/-! ## A290859.P6128759741300740707

`and(A157823(n), A286866(n))`
-/

namespace A290859.P6128759741300740707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157823 n) (A286866 n)

end

end A290859.P6128759741300740707

namespace A290859

/-- `and(A157823(n), A286866(n))` -/
def P6128759741300740707.Spec : Prop :=
  ∀ n, P6128759741300740707.a n = A290859 n

end A290859

/-! ## A290859.P18084593312689552832

`and(A157823(n), A290659(n))`
-/

namespace A290859.P18084593312689552832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157823 n) (A290659 n)

end

end A290859.P18084593312689552832

namespace A290859

/-- `and(A157823(n), A290659(n))` -/
def P18084593312689552832.Spec : Prop :=
  ∀ n, P18084593312689552832.a n = A290859 n

end A290859

/-! ## A290859.P7821672041454502611

`and(-A004277(n), A003945(n))`
-/

namespace A290859.P7821672041454502611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A004277 n) (A003945 n)

end

end A290859.P7821672041454502611

namespace A290859

/-- `and(-A004277(n), A003945(n))` -/
def P7821672041454502611.Spec : Prop :=
  ∀ n, P7821672041454502611.a n = A290859 n

end A290859

/-! ## A290859.P4442878293694915882

`and(A003945(n), A084978(n+1))`
-/

namespace A290859.P4442878293694915882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A084978 (n + 1))

end

end A290859.P4442878293694915882

namespace A290859

/-- `and(A003945(n), A084978(n+1))` -/
def P4442878293694915882.Spec : Prop :=
  ∀ n, P4442878293694915882.a n = A290859 n

end A290859

/-! ## A290859.P11059531054108175208

`and(A003945(n), A085945(n+1))`
-/

namespace A290859.P11059531054108175208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A085945 (n + 1))

end

end A290859.P11059531054108175208

namespace A290859

/-- `and(A003945(n), A085945(n+1))` -/
def P11059531054108175208.Spec : Prop :=
  ∀ n, P11059531054108175208.a n = A290859 n

end A290859

/-! ## A290859.P17475868104748490228

`and(A000039(n), A111286(n+1))`
-/

namespace A290859.P17475868104748490228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000039 n) (A111286 (n + 1))

end

end A290859.P17475868104748490228

namespace A290859

/-- `and(A000039(n), A111286(n+1))` -/
def P17475868104748490228.Spec : Prop :=
  ∀ n, P17475868104748490228.a n = A290859 n

end A290859

/-! ## A290859.P3698769766233022990

`and(A090764(n), A111286(n+1))`
-/

namespace A290859.P3698769766233022990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090764 n) (A111286 (n + 1))

end

end A290859.P3698769766233022990

namespace A290859

/-- `and(A090764(n), A111286(n+1))` -/
def P3698769766233022990.Spec : Prop :=
  ∀ n, P3698769766233022990.a n = A290859 n

end A290859

/-! ## A290859.P8350650690582529563

`and(A085945(n+1), A157823(n))`
-/

namespace A290859.P8350650690582529563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085945 (n + 1)) (A157823 n)

end

end A290859.P8350650690582529563

namespace A290859

/-- `and(A085945(n+1), A157823(n))` -/
def P8350650690582529563.Spec : Prop :=
  ∀ n, P8350650690582529563.a n = A290859 n

end A290859

/-! ## A290859.P11346417073936316189

`and(A111286(n+1), A132732(n))`
-/

namespace A290859.P11346417073936316189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111286 (n + 1)) (A132732 n)

end

end A290859.P11346417073936316189

namespace A290859

/-- `and(A111286(n+1), A132732(n))` -/
def P11346417073936316189.Spec : Prop :=
  ∀ n, P11346417073936316189.a n = A290859 n

end A290859

/-!
# A290860: 

The programs for A290860, there is no canonical definition to state claims against.
-/

/-! ## A290860.P231363975921155253

`A286022(floor(log2(A286024(n))))`
-/

namespace A290860.P231363975921155253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286022 (Nat.log 2 (A286024 n).toNat)

end

end A290860.P231363975921155253

/-! ## A290860.P994090109637084861

`A286023(floor(log2(A286024(n))))`
-/

namespace A290860.P994090109637084861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286023 (Nat.log 2 (A286024 n).toNat)

end

end A290860.P994090109637084861

/-! ## A290860.P4347407925284627379

`A286078(floor(log2(A286024(n))))`
-/

namespace A290860.P4347407925284627379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286078 (Nat.log 2 (A286024 n).toNat)

end

end A290860.P4347407925284627379

/-! ## A290860.P15919604232557694440

`A286672(floor(log2(A286024(n))))`
-/

namespace A290860.P15919604232557694440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286672 (Nat.log 2 (A286024 n).toNat)

end

end A290860.P15919604232557694440

/-! ## A290860.P9367501690491089778

`A286673(floor(log2(A286024(n))))`
-/

namespace A290860.P9367501690491089778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286673 (Nat.log 2 (A286024 n).toNat)

end

end A290860.P9367501690491089778

/-! ## A290860.P9467510992453107988

`A286811(floor(log2(A286024(n))))`
-/

namespace A290860.P9467510992453107988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 (Nat.log 2 (A286024 n).toNat)

end

end A290860.P9467510992453107988

/-! ## A290860.P5067501118159806126

`A285541(floor(log2(A290862(n))))`
-/

namespace A290860.P5067501118159806126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285541 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P5067501118159806126

/-! ## A290860.P7758956140298942191

`A285561(floor(log2(A290862(n))))`
-/

namespace A290860.P7758956140298942191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285561 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P7758956140298942191

/-! ## A290860.P5755879927532104812

`A286022(floor(log2(A290862(n))))`
-/

namespace A290860.P5755879927532104812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286022 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P5755879927532104812

/-! ## A290860.P6088324567389681934

`A286023(floor(log2(A290862(n))))`
-/

namespace A290860.P6088324567389681934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286023 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P6088324567389681934

/-! ## A290860.P13376798301705594241

`A286205(floor(log2(A290862(n))))`
-/

namespace A290860.P13376798301705594241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286205 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P13376798301705594241

/-! ## A290860.P17901184180736101337

`A286498(floor(log2(A290862(n))))`
-/

namespace A290860.P17901184180736101337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286498 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P17901184180736101337

/-! ## A290860.P6612863556211220158

`A286673(floor(log2(A290862(n))))`
-/

namespace A290860.P6612863556211220158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286673 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P6612863556211220158

/-! ## A290860.P12650760219844705970

`A286702(floor(log2(A290862(n))))`
-/

namespace A290860.P12650760219844705970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286702 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P12650760219844705970

/-! ## A290860.P5800398304607434758

`A286811(floor(log2(A290862(n))))`
-/

namespace A290860.P5800398304607434758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P5800398304607434758

/-! ## A290860.P908684580115244215

`A287098(floor(log2(A290862(n))))`
-/

namespace A290860.P908684580115244215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287098 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P908684580115244215

/-! ## A290860.P9608294609206484252

`A287099(floor(log2(A290862(n))))`
-/

namespace A290860.P9608294609206484252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287099 (Nat.log 2 (A290862 n).toNat)

end

end A290860.P9608294609206484252

/-! ## A290860.P6777246283534530079

`A286811(n)%(2*A286022(n))`
-/

namespace A290860.P6777246283534530079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286811 n) (2 * A286022 n)

end

end A290860.P6777246283534530079

/-! ## A290860.P11482976730398413442

`A286811(A195817(n)%(2*n+1))`
-/

namespace A290860.P11482976730398413442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 (Int.tmod (A195817 n) (2 * n + 1 : ℤ)).toNat

end

end A290860.P11482976730398413442

/-! ## A290860.P2977092183376640658

`A286811(A233583(n+1)-2*(n+1)%2)`
-/

namespace A290860.P2977092183376640658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 (A233583 (n + 1) - ((2 * ((n + 1) % 2) : ℕ) : ℤ)).toNat

end

end A290860.P2977092183376640658

/-!
# A290862: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 131", based on the 5-celled von Neumann neighborhood.

The programs for A290862, there is no canonical definition to state claims against.
-/

/-! ## A290862.P7406877777238825637

`A286501(n-and(4, n²)/2)`
-/

namespace A290862.P7406877777238825637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286501 (SequenceMachineLib.roundAway ((n : ℚ) - (Nat.land 4 (n ^ 2) : ℚ) / 2)).toNat

end

end A290862.P7406877777238825637

/-! ## A290862.P7704798091134171729

`A286501(n-and(2, and(n, n+1)))`
-/

namespace A290862.P7704798091134171729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286501 (n - Nat.land 2 (Nat.land n (n + 1)))

end

end A290862.P7704798091134171729

/-! ## A290862.P2680798661841533806

`A287188(n+1-gcd(3, gcd(4, n)+1))`
-/

namespace A290862.P2680798661841533806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287188 (n + 1 - Nat.gcd 3 (Nat.gcd 4 n + 1))

end

end A290862.P2680798661841533806

/-! ## A290862.P7948737684539244779

`or(A286024(n), A288196(n))`
-/

namespace A290862.P7948737684539244779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286024 n) (A288196 n)

end

end A290862.P7948737684539244779

/-! ## A290862.P346094897143879695

`A277936(floor(log2(A286024(n))))`
-/

namespace A290862.P346094897143879695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277936 (Nat.log 2 (A286024 n).toNat)

end

end A290862.P346094897143879695

/-! ## A290862.P7267086279117309592

`A285475(floor(log2(A286024(n))))`
-/

namespace A290862.P7267086279117309592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285475 (Nat.log 2 (A286024 n).toNat)

end

end A290862.P7267086279117309592

/-! ## A290862.P5762020694629892013

`A286024(floor(log2(A286024(n))))`
-/

namespace A290862.P5762020694629892013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286024 (Nat.log 2 (A286024 n).toNat)

end

end A290862.P5762020694629892013

/-! ## A290862.P1486221756777493476

`gcd(A287188(n), A290863(n))`
-/

namespace A290862.P1486221756777493476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A287188 n) (A290863 n)

end

end A290862.P1486221756777493476

/-! ## A290862.P6883750172832158178

`A290863(n-val(A290863(n), 2))`
-/

namespace A290862.P6883750172832158178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290863 (n - SequenceMachineLib.valuation (A290863 n).toNat 2)

end

end A290862.P6883750172832158178

/-!
# A290863: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 131", based on the 5-celled von Neumann neighborhood.

The programs for A290863, there is no canonical definition to state claims against.
-/

/-! ## A290863.P3103543364465463580

`or(A051049(n), A286866(n))`
-/

namespace A290863.P3103543364465463580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A286866 n)

end

end A290863.P3103543364465463580

/-! ## A290863.P11795046556074311941

`or(A051049(n), A288197(n))`
-/

namespace A290863.P11795046556074311941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A288197 n)

end

end A290863.P11795046556074311941

/-! ## A290863.P2057436492518006587

`or(A277929(n), A286866(n))`
-/

namespace A290863.P2057436492518006587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277929 n) (A286866 n)

end

end A290863.P2057436492518006587

/-! ## A290863.P14362594092205155412

`or(A277936(n), A286866(n))`
-/

namespace A290863.P14362594092205155412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277936 n) (A286866 n)

end

end A290863.P14362594092205155412

/-! ## A290863.P3039545745278529104

`or(A285475(n), A286866(n))`
-/

namespace A290863.P3039545745278529104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285475 n) (A286866 n)

end

end A290863.P3039545745278529104

/-! ## A290863.P18174140478328219297

`or(A285654(n), A286866(n))`
-/

namespace A290863.P18174140478328219297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285654 n) (A286866 n)

end

end A290863.P18174140478328219297

/-! ## A290863.P16239740666996084847

`or(A285778(n), A286866(n))`
-/

namespace A290863.P16239740666996084847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285778 n) (A286866 n)

end

end A290863.P16239740666996084847

/-! ## A290863.P14322507492197972003

`or(A286866(n), A287132(n))`
-/

namespace A290863.P14322507492197972003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286866 n) (A287132 n)

end

end A290863.P14322507492197972003

/-! ## A290863.P4173685135421974534

`or(A286866(n), A287193(n))`
-/

namespace A290863.P4173685135421974534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286866 n) (A287193 n)

end

end A290863.P4173685135421974534

/-! ## A290863.P360467743150311708

`xor(A166920(n), A289370(n))`
-/

namespace A290863.P360467743150311708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A166920 n) (A289370 n)

end

end A290863.P360467743150311708

/-!
# A290865: a(n) = number of regions in the configuration A290447(n).

The programs for A290865, there is no canonical definition to state claims against.
-/

/-! ## A290865.P4243889526669751083

`A290866(n+1)-A290447(n+1)`
-/

namespace A290865.P4243889526669751083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290866 (n + 1) - A290447 (n + 1)

end

end A290865.P4243889526669751083

/-! ## A290865.P2348472666589632496

`A290866(n+1)-(C(n+1, 4)-A290461(n+1))`
-/

namespace A290865.P2348472666589632496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290866 (n + 1) - ((Nat.choose (n + 1) 4 : ℤ) - A290461 (n + 1))

end

end A290865.P2348472666589632496

/-! ## A290865.P12087730122275456217

`A290461(n+1)+A290866(n+1)-A000332(n+1)`
-/

namespace A290865.P12087730122275456217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290461 (n + 1) + (A290866 (n + 1) - A000332 (n + 1))

end

end A290865.P12087730122275456217

/-! ## A290865.P13855656602880639815

`A290866(n+1)-(A050534(n)/3-A290461(n+1))`
-/

namespace A290865.P13855656602880639815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290866 (n + 1) : ℚ) - ((A050534 n : ℚ) / 3 - (A290461 (n + 1) : ℚ))

end

end A290865.P13855656602880639815

/-! ## A290865.P9573790065621504626

`A290866(n+1)-(Δ[A000389(n+1)]-A290461(n+1))`
-/

namespace A290865.P9573790065621504626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290866 (n + 1) - (f1 (n + 1) - f1 n - A290461 (n + 1))

end

end A290865.P9573790065621504626

/-! ## A290865.P5813793883782633699

`A290866(n+1)-(A000127(n+1)-(A290461(n+1)+A000124(n)))`
-/

namespace A290865.P5813793883782633699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290866 (n + 1) - (A000127 (n + 1) - (A290461 (n + 1) + A000124 n))

end

end A290865.P5813793883782633699

/-! ## A290865.P10114803781413686766

`A290465(n+1)+A290866(n+1)-A006561(n+1)`
-/

namespace A290865.P10114803781413686766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290465 (n + 1) + (A290866 (n + 1) - A006561 (n + 1))

end

end A290865.P10114803781413686766

/-!
# A290866: a(n) = number of segments (edges) in the configuration A290447(n).

The programs for A290866, there is no canonical definition to state claims against.
-/

/-! ## A290866.P14840841699649585170

`A290447(n+1)+A290865(n+1)`
-/

namespace A290866.P14840841699649585170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290447 (n + 1) + A290865 (n + 1)

end

end A290866.P14840841699649585170

/-! ## A290866.P6876287883274592531

`A290865(n+1)+C(n+1, 4)-A290461(n+1)`
-/

namespace A290866.P6876287883274592531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290865 (n + 1) + ((Nat.choose (n + 1) 4 : ℤ) - A290461 (n + 1))

end

end A290866.P6876287883274592531

/-! ## A290866.P5417922518884631314

`A000332(n+1)+A290865(n+1)-A290461(n+1)`
-/

namespace A290866.P5417922518884631314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (A290865 (n + 1) - A290461 (n + 1))

end

end A290866.P5417922518884631314

/-! ## A290866.P14282970194734693867

`A290865(n+1)+A050534(n)/3-A290461(n+1)`
-/

namespace A290866.P14282970194734693867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290865 (n + 1) : ℚ) + ((A050534 n : ℚ) / 3 - (A290461 (n + 1) : ℚ))

end

end A290866.P14282970194734693867

/-! ## A290866.P4015302884913818364

`A290865(n+1)+Δ[A000389(n+1)]-A290461(n+1)`
-/

namespace A290866.P4015302884913818364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290865 (n + 1) + (f1 (n + 1) - f1 n - A290461 (n + 1))

end

end A290866.P4015302884913818364

/-! ## A290866.P9036712145734185012

`A290865(n+1)+A000127(n+1)-(A290461(n+1)+A000124(n))`
-/

namespace A290866.P9036712145734185012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290865 (n + 1) + (A000127 (n + 1) - (A290461 (n + 1) + A000124 n))

end

end A290866.P9036712145734185012

/-! ## A290866.P9163099837396649226

`A006561(n+1)+A290865(n+1)-A290465(n+1)`
-/

namespace A290866.P9163099837396649226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) + (A290865 (n + 1) - A290465 (n + 1))

end

end A290866.P9163099837396649226

/-!
# A290867: Irregular triangle read by rows: the number of points that are the intersections of k semicircles in the configuration A290447(n).

The programs for A290867, there is no canonical definition to state claims against.
-/

/-! ## A290867.P10108236841800494604

`C(A302242(A004733(n)), 4)`
-/

namespace A290867.P10108236841800494604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A302242 (A004733 n).toNat).toNat 4

end

end A290867.P10108236841800494604

/-! ## A290867.P3517987544257791697

`C(A285324(A288193(n)), 4)`
-/

namespace A290867.P3517987544257791697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285324 (A288193 n).toNat).toNat 4

end

end A290867.P3517987544257791697

/-! ## A290867.P769422568454161676

`C(A115362(A285835(n+1)), 4)`
-/

namespace A290867.P769422568454161676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115362 (A285835 (n + 1)).toNat).toNat 4

end

end A290867.P769422568454161676

/-! ## A290867.P14333394033700305277

`C(A027656(A187829(n+2)), 4)`
-/

namespace A290867.P14333394033700305277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027656 (A187829 (n + 2)).toNat).toNat 4

end

end A290867.P14333394033700305277

/-! ## A290867.P3273272723160358856

`C(A285572(A038754(n+3)), 4)`
-/

namespace A290867.P3273272723160358856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285572 (A038754 (n + 3)).toNat).toNat 4

end

end A290867.P3273272723160358856

/-!
# A290869: Numbers that are repdigits with length > 2 in more than two bases.

The programs for A290869, there is no canonical definition to state claims against.
-/

/-! ## A290869.P4458583978304613484

`∪[A326382(n+1)%A326705(2*n+3), A326705(n+1)]`
-/

namespace A290869.P4458583978304613484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326382 (n + 1)) (A326705 (2 * n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A290869.P4458583978304613484

/-!
# A290870: a(n) is the number of ways to represent n as n = x*y + y*z + z*x where 0 < x < y < z.

The programs for A290870, there is no canonical definition to state claims against.
-/

/-! ## A290870.P590659251084311651

`A006374(n+1)-A067752(n+1)`
-/

namespace A290870.P590659251084311651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (n + 1) - A067752 (n + 1)

end

end A290870.P590659251084311651

/-! ## A290870.P15212930148415061554

`A066955(n+1)-A100073(n+1)`
-/

namespace A290870.P15212930148415061554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (n + 1) - A100073 (n + 1)

end

end A290870.P15212930148415061554

/-! ## A290870.P9108480247191980975

`A067752(n+1)-A320111(n+1)`
-/

namespace A290870.P9108480247191980975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067752 (n + 1) - A320111 (n + 1)

end

end A290870.P9108480247191980975

/-! ## A290870.P10801485126393614345

`A067752(n+1)-(A338117(n+1)+1)`
-/

namespace A290870.P10801485126393614345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067752 (n + 1) - (A338117 (n + 1) + 1)

end

end A290870.P10801485126393614345

/-! ## A290870.P8001722128074633809

`(A006374(n+1)-A320111(n+1))/2`
-/

namespace A290870.P8001722128074633809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006374 (n + 1) - A320111 (n + 1) : ℚ) / 2

end

end A290870.P8001722128074633809

/-! ## A290870.P1477232000384508543

`A066955(n+1)-A002265(A094572(n+1))`
-/

namespace A290870.P1477232000384508543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (n + 1) - A002265 (A094572 (n + 1)).toNat

end

end A290870.P1477232000384508543

/-! ## A290870.P11591480757672623757

`A066955(n+1)-A004526(A112329(n+1))`
-/

namespace A290870.P11591480757672623757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (n + 1) - A004526 (A112329 (n + 1)).toNat

end

end A290870.P11591480757672623757

/-! ## A290870.P15741387770607707237

`A067752(n+1)-A000005(A252463(n+1))`
-/

namespace A290870.P15741387770607707237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067752 (n + 1) - A000005 (A252463 (n + 1)).toNat

end

end A290870.P15741387770607707237

/-! ## A290870.P11353129387215868524

`A004525(A006374(n+1)-A320111(n+1))`
-/

namespace A290870.P11353129387215868524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A006374 (n + 1) - A320111 (n + 1)).toNat

end

end A290870.P11353129387215868524

/-! ## A290870.P13111691360162827858

`A038548(n+1)+A066955(n+1)-A320111(n+1)`
-/

namespace A290870.P13111691360162827858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A066955 (n + 1) - A320111 (n + 1))

end

end A290870.P13111691360162827858

/-!
# A290871: Number of minimal dominating sets in the n-Mycielski graph.

The programs for A290871, there is no canonical definition to state claims against.
-/

/-! ## A290871.P11564201206660389228

`∑[A184535(abs(a(n-1)-5*n))]-1` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A290871.P11564201206660389228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  A184535 |f1 (n - 1) - (5 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A290871.P11564201206660389228

/-!
# A290874: Number of minimal dominating sets in the n-triangular honeycomb obtuse knight graph.

The programs for A290874, there is no canonical definition to state claims against.
-/

/-! ## A290874.P9444816679093427796

`ceil(A288690(n)/8)`
-/

namespace A290874.P9444816679093427796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A288690 n : ℚ) / 8⌉

end

end A290874.P9444816679093427796

/-!
# A290875: Number of minimal dominating sets in the n-triangular honeycomb bishop graph.

The programs for A290875, there is no canonical definition to state claims against.
-/

/-! ## A290875.P7474408467878094558

`A065033(A153390(n)+floor(sqrt(2)*2^n))`
-/

namespace A290875.P7474408467878094558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A153390 n + ⌊Real.sqrt (2 : ℝ) * (2 ^ n : ℝ)⌋).toNat

end

end A290875.P7474408467878094558

/-! ## A290875.P4141229871389899380

`∑[(n+1)!]-A001221(A151830(n+1))`
-/

namespace A290875.P4141229871389899380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001221 (A151830 (n + 1)).toNat

end

end A290875.P4141229871389899380

/-!
# A290876: A290865(n) -(n-1).

The programs for A290876, there is no canonical definition to state claims against.
-/

/-! ## A290876.P17418460575444538238

`A290865(n+1)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290876.P17418460575444538238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290865 (n + 1) - (n : ℤ)

end

end A290876.P17418460575444538238

/-! ## A290876.P2287722740911183028

`abs(A290865(n+1)+A001489(n))`
-/

namespace A290876.P2287722740911183028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290865 (n + 1) + A001489 n|

end

end A290876.P2287722740911183028

/-! ## A290876.P4360306889271983367

`abs(A290865(n+1)+A024000(n+1))`
-/

namespace A290876.P4360306889271983367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290865 (n + 1) + A024000 (n + 1)|

end

end A290876.P4360306889271983367

/-! ## A290876.P18441042295866098261

`A001478(n+1)+A290865(n+1)+1`
-/

namespace A290876.P18441042295866098261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A290865 (n + 1) + 1)

end

end A290876.P18441042295866098261

/-! ## A290876.P13044284601178639037

`A290866(n+1)-(A290447(n+1)+n)`
-/

namespace A290876.P13044284601178639037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290866 (n + 1) - (A290447 (n + 1) + (n : ℤ))

end

end A290876.P13044284601178639037

/-!
# A290878: Numbers k such that 4*10^k + 49 is prime.

The programs for A290878, there is no canonical definition to state claims against.
-/

/-! ## A290878.P12263033915677662161

`record[gcd(A266534(n), A289234(n))]`
-/

namespace A290878.P12263033915677662161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A266534 n) (A289234 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290878.P12263033915677662161

/-! ## A290878.P5990941656476781075

`record[A225679(2*n+1)%A127384(n)]`
-/

namespace A290878.P5990941656476781075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225679 (2 * n + 1)) (A127384 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290878.P5990941656476781075

/-! ## A290878.P7559881765510641133

`record[record[A083542(n+1)]%A111804(n+1)]`
-/

namespace A290878.P7559881765510641133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083542 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (A111804 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290878.P7559881765510641133

/-! ## A290878.P12594750177405431631

`eq[A029190(A029190(n)), A029220(n+1)]`
-/

namespace A290878.P12594750177405431631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 (A029190 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290878.P12594750177405431631

/-!
# A290880: E.g.f. C(x) satisfies: C(x)^2 - S(x)^2 = 1 and C'(x)^2 + S'(x)^2 = 1, where S(x) is the e.g.f. of A290881.

The programs for A290880, there is no canonical definition to state claims against.
-/

/-! ## A290880.P10174252686621246141

`A290882(2*n)`
-/

namespace A290880.P10174252686621246141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290882 (2 * n)

end

end A290880.P10174252686621246141

/-! ## A290880.P10759219923829595390

`or(1, A290882(A004277(n)))`
-/

namespace A290880.P10759219923829595390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290882 (A004277 n).toNat)

end

end A290880.P10759219923829595390

/-! ## A290880.P9305614801372194180

`or(1, A290882(A005843(n)))`
-/

namespace A290880.P9305614801372194180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290882 (A005843 n).toNat)

end

end A290880.P9305614801372194180

/-! ## A290880.P4307315198618913235

`A290882(A004277(n))/A007318(∑[n])`
-/

namespace A290880.P4307315198618913235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290882 (A004277 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A290880.P4307315198618913235

/-! ## A290880.P10526684948835254642

`A290882(A004277(n))/abs((-1)^A005117(n+1))`
-/

namespace A290880.P10526684948835254642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290882 (A004277 n).toNat : ℚ) / |(-1 : ℚ) ^ (A005117 (n + 1) : ℤ)|

end

end A290880.P10526684948835254642

/-!
# A290881: E.g.f. S(x) satisfies: C(x)^2 - S(x)^2 = 1 and C'(x)^2 + S'(x)^2 = 1, where C(x) is the e.g.f. of A290880.

The programs for A290881, there is no canonical definition to state claims against.
-/

/-! ## A290881.P13675510155464580677

`A290882(Δ[n²])`
-/

namespace A290881.P13675510155464580677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290882 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290881.P13675510155464580677

/-! ## A290881.P2018713918094778190

`or(1, A290882(A005408(n)))`
-/

namespace A290881.P2018713918094778190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290882 (A005408 n).toNat)

end

end A290881.P2018713918094778190

/-! ## A290881.P11623740091498719900

`or(1, A290882(A004277(n)+1))`
-/

namespace A290881.P11623740091498719900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290882 (A004277 n + 1).toNat)

end

end A290881.P11623740091498719900

/-! ## A290881.P7716139283640752366

`or(1, A290882(A005843(n)+1))`
-/

namespace A290881.P7716139283640752366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290882 (A005843 n + 1).toNat)

end

end A290881.P7716139283640752366

/-! ## A290881.P14475895718155598166

`or(1, A290882(or(1, A004277(n))))`
-/

namespace A290881.P14475895718155598166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290882 (Int.lor 1 (A004277 n)).toNat)

end

end A290881.P14475895718155598166

/-!
# A290884: Let S be the sequence generated by these rules: 0 is in S, and if z is in S, then z * (1+i) and (z-1) * (1+i) + 1 are in S (where i denotes the imaginary unit), and duplicates are deleted as they occur; a(n) = the real part of the n-th term of S.

The programs for A290884, there is no canonical definition to state claims against.
-/

/-! ## A290884.P14522839048101653658

`A290885(Δ[n²])-A290885(n+1)`
-/

namespace A290884.P14522839048101653658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A290885 (n + 1)

end

end A290884.P14522839048101653658

/-! ## A290884.P14284006419901516488

`A348760(xor(n, 2*n))`
-/

namespace A290884.P14284006419901516488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348760 (Nat.xor n (2 * n))

end

end A290884.P14284006419901516488

/-! ## A290884.P15386316141006262715

`A348760(A048724(n))`
-/

namespace A290884.P15386316141006262715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348760 (A048724 n).toNat

end

end A290884.P15386316141006262715

/-! ## A290884.P6669094021855566133

`A348760(A048726(n)/2)`
-/

namespace A290884.P6669094021855566133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348760 (SequenceMachineLib.roundAway ((A048726 n : ℚ) / 2)).toNat

end

end A290884.P6669094021855566133

/-! ## A290884.P9507608812820961918

`A290885(4*n+1)/2`
-/

namespace A290884.P9507608812820961918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290885 (4 * n + 1) : ℚ) / 2

end

end A290884.P9507608812820961918

/-! ## A290884.P14915378214579943860

`(A290885(A004767(n))+1)/2`
-/

namespace A290884.P14915378214579943860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290885 (A004767 n).toNat + 1 : ℚ) / 2

end

end A290884.P14915378214579943860

/-! ## A290884.P16426696634613559226

`A348761(A048726(n))-A290885(n+1)`
-/

namespace A290884.P16426696634613559226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348761 (A048726 n).toNat - A290885 (n + 1)

end

end A290884.P16426696634613559226

/-! ## A290884.P7105894478465542693

`A348761(A048726(2*n))/2`
-/

namespace A290884.P7105894478465542693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348761 (A048726 (2 * n)).toNat : ℚ) / 2

end

end A290884.P7105894478465542693

/-!
# A290885: Let S be the sequence generated by these rules: 0 is in S, and if z is in S, then z * (1+i) and (z-1) * (1+i) + 1 are in S (where i denotes the imaginary unit), and duplicates are deleted as they occur; a(n) = the imaginary part of the n-th term of S.

The programs for A290885, there is no canonical definition to state claims against.
-/

/-! ## A290885.P9130198431293618130

`A290884(n+1)-A290884(2*(n+1))`
-/

namespace A290885.P9130198431293618130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290884 (n + 1) - A290884 (2 * (n + 1))

end

end A290885.P9130198431293618130

/-! ## A290885.P14703858388502941255

`A348761(xor(n, 2*n))`
-/

namespace A290885.P14703858388502941255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348761 (Nat.xor n (2 * n))

end

end A290885.P14703858388502941255

/-! ## A290885.P11885030002283621279

`A348761(A048724(n))`
-/

namespace A290885.P11885030002283621279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348761 (A048724 n).toNat

end

end A290885.P11885030002283621279

/-! ## A290885.P5796368222724299102

`A348761(A048726(n)/2)`
-/

namespace A290885.P5796368222724299102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348761 (SequenceMachineLib.roundAway ((A048726 n : ℚ) / 2)).toNat

end

end A290885.P5796368222724299102

/-! ## A290885.P5600499537156984967

`A348761(A163617(n)-A213370(n))`
-/

namespace A290885.P5600499537156984967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348761 (A163617 n - A213370 n).toNat

end

end A290885.P5600499537156984967

/-!
# A290886: Let S be the sequence generated by these rules: 0 is in S, and if z is in S, then z * (1+i) and (z-1) * (1+i) + 1 are in S (where i denotes the imaginary unit), and duplicates are deleted as they occur; a(n) = the square of the norm of the n-th term of S.

The programs for A290886, there is no canonical definition to state claims against.
-/

/-! ## A290886.P7548653189874412046

`A290884(n+1)²+A290885(n+1)²`
-/

namespace A290886.P7548653189874412046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290884 (n + 1) ^ 2 + A290885 (n + 1) ^ 2

end

end A290886.P7548653189874412046

/-! ## A290886.P13471079861677956156

`(A290885(Δ[n²])-A290885(n+1))²+A290885(n+1)²`
-/

namespace A290886.P13471079861677956156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A290885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A290885 (n + 1)) ^ 2 + A290885 (n + 1) ^ 2

end

end A290886.P13471079861677956156

/-! ## A290886.P15155346579637267505

`A290885(n+1)²+A348760(xor(n, 2*n))²`
-/

namespace A290886.P15155346579637267505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290885 (n + 1) ^ 2 + A348760 (Nat.xor n (2 * n)) ^ 2

end

end A290886.P15155346579637267505

/-! ## A290886.P6642941317631906332

`A290885(n+1)²+A348760(A048724(n))²`
-/

namespace A290886.P6642941317631906332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290885 (n + 1) ^ 2 + A348760 (A048724 n).toNat ^ 2

end

end A290886.P6642941317631906332

/-! ## A290886.P6689428661651741431

`(A290885(4*n+1)/2)²+A290885(n+1)²`
-/

namespace A290886.P6689428661651741431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A290885 (4 * n + 1) : ℚ) / 2) ^ 2 + (A290885 (n + 1) ^ 2 : ℚ)

end

end A290886.P6689428661651741431

/-! ## A290886.P14457224045771179372

`A290885(n+1)²+((A290885(A004767(n))+1)/2)²`
-/

namespace A290886.P14457224045771179372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290885 (n + 1) ^ 2 : ℚ) + ((A290885 (A004767 n).toNat + 1 : ℚ) / 2) ^ 2

end

end A290886.P14457224045771179372

/-! ## A290886.P10846717777911512915

`(A348761(A048726(2*n))/2)²+A290885(n+1)²`
-/

namespace A290886.P10846717777911512915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A348761 (A048726 (2 * n)).toNat : ℚ) / 2) ^ 2 + (A290885 (n + 1) ^ 2 : ℚ)

end

end A290886.P10846717777911512915

/-!
# A290887: The number of non-degenerate involutive set-theoretic solutions of the Yang-Baxter equation of order n up to isomorphism.

The programs for A290887, there is no canonical definition to state claims against.
-/

/-! ## A290887.P7300610671112490834

`A283416(n+1)+A161680(A210736(n+2))`
-/

namespace A290887.P7300610671112490834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283416 (n + 1) + A161680 (A210736 (n + 2)).toNat

end

end A290887.P7300610671112490834

/-!
# A290890: p-INVERT of the positive integers, where p(S) = 1 - S^2.

The programs for A290890, the canonical program `A290890.P16246134009341233150` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290890 has offset 0).

The definition of A290890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290890.P16246134009341233150

`4*a(n-1)-5*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A290890

/-- `4*a(n-1)-5*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16246134009341233150.Spec : Prop :=
  ∀ n, P16246134009341233150.a n = A290890 n

theorem P16246134009341233150.correct : P16246134009341233150.Spec := by
  intro n
  simp only [A290890]

end A290890

/-! ## A290890.P17704897154662498071

`abs(A113067(n))`
-/

namespace A290890.P17704897154662498071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113067 n|

end

end A290890.P17704897154662498071

namespace A290890

/-- `abs(A113067(n))` -/
def P17704897154662498071.Spec : Prop :=
  ∀ n, P17704897154662498071.a n = A290890 n

end A290890

/-! ## A290890.P15166434195149053371

`Δ[A109961(n)]`
-/

namespace A290890.P15166434195149053371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290890.P15166434195149053371

namespace A290890

/-- `Δ[A109961(n)]` -/
def P15166434195149053371.Spec : Prop :=
  ∀ n, P15166434195149053371.a n = A290890 n

end A290890

/-! ## A290890.P12970272125047773615

`A001906(n)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A290890.P12970272125047773615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001906 n + a (n - 1) - a (n - 2)

end

end A290890.P12970272125047773615

namespace A290890

/-- `A001906(n)+a(n-1)-a(n-2)` -/
def P12970272125047773615.Spec : Prop :=
  ∀ n, P12970272125047773615.a n = A290890 n

end A290890

/-! ## A290890.P4658537777739509508

`Δ[A000032(2*(n-1))-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A290890.P4658537777739509508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  A000032 (2 * ((n : ℤ) - 1)).toNat - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290890.P4658537777739509508

namespace A290890

/-- `Δ[A000032(2*(n-1))-a(n-3)]` -/
def P4658537777739509508.Spec : Prop :=
  ∀ n, P4658537777739509508.a n = A290890 n

end A290890

/-! ## A290890.P5369108000428744930

`A000045(2*n)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A290890.P5369108000428744930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 (2 * n) + (a (n - 1) - a (n - 2))

end

end A290890.P5369108000428744930

namespace A290890

/-- `A000045(2*n)+a(n-1)-a(n-2)` -/
def P5369108000428744930.Spec : Prop :=
  ∀ n, P5369108000428744930.a n = A290890 n

end A290890

/-! ## A290890.P9105372520150321369

`A174618(A047470(n+2))`
-/

namespace A290890.P9105372520150321369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A047470 (n + 2)).toNat

end

end A290890.P9105372520150321369

namespace A290890

/-- `A174618(A047470(n+2))` -/
def P9105372520150321369.Spec : Prop :=
  ∀ n, P9105372520150321369.a n = A290890 n

end A290890

/-! ## A290890.P11783930667359940933

`A033999(n)*A113067(n)`
-/

namespace A290890.P11783930667359940933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113067 n

end

end A290890.P11783930667359940933

namespace A290890

/-- `A033999(n)*A113067(n)` -/
def P11783930667359940933.Spec : Prop :=
  ∀ n, P11783930667359940933.a n = A290890 n

end A290890

/-! ## A290890.P790993209869023484

`lcm(A010121(n), A113067(n))`
-/

namespace A290890.P790993209869023484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010121 n) (A113067 n)

end

end A290890.P790993209869023484

namespace A290890

/-- `lcm(A010121(n), A113067(n))` -/
def P790993209869023484.Spec : Prop :=
  ∀ n, (P790993209869023484.a n : ℤ) = A290890 n

end A290890

/-! ## A290890.P4211898918766714438

`abs(A049347(n)-A113066(n))`
-/

namespace A290890.P4211898918766714438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049347 n - A113066 n|

end

end A290890.P4211898918766714438

namespace A290890

/-- `abs(A049347(n)-A113066(n))` -/
def P4211898918766714438.Spec : Prop :=
  ∀ n, P4211898918766714438.a n = A290890 n

end A290890

/-! ## A290890.P9428819703638859410

`A174618(A047524(n+1)+1)`
-/

namespace A290890.P9428819703638859410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A047524 (n + 1) + 1).toNat

end

end A290890.P9428819703638859410

namespace A290890

/-- `A174618(A047524(n+1)+1)` -/
def P9428819703638859410.Spec : Prop :=
  ∀ n, P9428819703638859410.a n = A290890 n

end A290890

/-! ## A290890.P13871053787864774992

`A174618(A047617(n+2)-2)`
-/

namespace A290890.P13871053787864774992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A047617 (n + 2) - 2).toNat

end

end A290890.P13871053787864774992

namespace A290890

/-- `A174618(A047617(n+2)-2)` -/
def P13871053787864774992.Spec : Prop :=
  ∀ n, P13871053787864774992.a n = A290890 n

end A290890

/-! ## A290890.P16563461931196000885

`A051450(n+1)-A005252(n)`
-/

namespace A290890.P16563461931196000885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051450 (n + 1) - A005252 n

end

end A290890.P16563461931196000885

namespace A290890

/-- `A051450(n+1)-A005252(n)` -/
def P16563461931196000885.Spec : Prop :=
  ∀ n, P16563461931196000885.a n = A290890 n

end A290890

/-! ## A290890.P11056496350872140069

`A109961(n+1)-A109961(n)`
-/

namespace A290890.P11056496350872140069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 (n + 1) - A109961 n

end

end A290890.P11056496350872140069

namespace A290890

/-- `A109961(n+1)-A109961(n)` -/
def P11056496350872140069.Spec : Prop :=
  ∀ n, P11056496350872140069.a n = A290890 n

end A290890

/-! ## A290890.P10883304658621855432

`(A163810(n+1)+A088305(n+1))/2`
-/

namespace A290890.P10883304658621855432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163810 (n + 1) + A088305 (n + 1) : ℚ) / 2

end

end A290890.P10883304658621855432

namespace A290890

/-- `(A163810(n+1)+A088305(n+1))/2` -/
def P10883304658621855432.Spec : Prop :=
  ∀ n, P10883304658621855432.a n = (A290890 n : ℚ)

end A290890

/-! ## A290890.P3337005919918160404

`gcd(A073758(A020639(n+1)), A113067(n))`
-/

namespace A290890.P3337005919918160404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073758 (A020639 (n + 1)).toNat) (A113067 n)

end

end A290890.P3337005919918160404

namespace A290890

/-- `gcd(A073758(A020639(n+1)), A113067(n))` -/
def P3337005919918160404.Spec : Prop :=
  ∀ n, (P3337005919918160404.a n : ℤ) = A290890 n

end A290890

/-!
# A290891: p-INVERT of the positive integers, where p(S) = 1 - S^3.

The programs for A290891, the canonical program `A290891.P3925911599048697236` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290891 has offset 0).

The definition of A290891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290891.P3925911599048697236

`A291217(Δ[n²])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290891

/-- `A291217(Δ[n²])` -/
def P3925911599048697236.Spec : Prop :=
  ∀ n, P3925911599048697236.a n = A290891 n

theorem P3925911599048697236.correct : P3925911599048697236.Spec := by
  intro n
  simp only [A290891]

end A290891

/-! ## A290891.P12541947891635935957

`or(char[2], A291217(2*n+1))`
-/

namespace A290891.P12541947891635935957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A291217 (2 * n + 1))

end

end A290891.P12541947891635935957

namespace A290891

/-- `or(char[2], A291217(2*n+1))` -/
def P12541947891635935957.Spec : Prop :=
  ∀ n, P12541947891635935957.a n = A290891 n

end A290891

/-! ## A290891.P3817351434291651917

`A057427(n)*A291217(2*n+1)`
-/

namespace A290891.P3817351434291651917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A291217 (2 * n + 1)

end

end A290891.P3817351434291651917

namespace A290891

/-- `A057427(n)*A291217(2*n+1)` -/
def P3817351434291651917.Spec : Prop :=
  ∀ n, P3817351434291651917.a n = A290891 n

end A290891

/-! ## A290891.P15715549302020040735

`A291217(2*n+1)/(A000007(n)+1)`
-/

namespace A290891.P15715549302020040735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291217 (2 * n + 1) : ℚ) / (A000007 n + 1 : ℚ)

end

end A290891.P15715549302020040735

namespace A290891

/-- `A291217(2*n+1)/(A000007(n)+1)` -/
def P15715549302020040735.Spec : Prop :=
  ∀ n, P15715549302020040735.a n = (A290891 n : ℚ)

end A290891

/-! ## A290891.P5698243788256788610

`A291217(n+1+n)+char[A160518(n+1)]`
-/

namespace A290891.P5698243788256788610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160518 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291217 (n + 1 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290891.P5698243788256788610

namespace A290891

/-- `A291217(n+1+n)+char[A160518(n+1)]` -/
def P5698243788256788610.Spec : Prop :=
  ∀ n, P5698243788256788610.a n = A290891 n

end A290891

/-! ## A290891.P9010557249622041134

`lcm(A008836(n+1), A291217(A005408(n)))`
-/

namespace A290891.P9010557249622041134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A291217 (A005408 n).toNat)

end

end A290891.P9010557249622041134

namespace A290891

/-- `lcm(A008836(n+1), A291217(A005408(n)))` -/
def P9010557249622041134.Spec : Prop :=
  ∀ n, (P9010557249622041134.a n : ℤ) = A290891 n

end A290891

/-! ## A290891.P4329830754555007426

`Δ[A373905(n)]`
-/

namespace A290891.P4329830754555007426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290891.P4329830754555007426

namespace A290891

/-- `Δ[A373905(n)]` -/
def P4329830754555007426.Spec : Prop :=
  ∀ n, P4329830754555007426.a n = A290891 n

end A290891

/-! ## A290891.P6678343564799894654

`A373905(n+1)-A373905(n)`
-/

namespace A290891.P6678343564799894654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373905 (n + 1) - A373905 n

end

end A290891.P6678343564799894654

namespace A290891

/-- `A373905(n+1)-A373905(n)` -/
def P6678343564799894654.Spec : Prop :=
  ∀ n, P6678343564799894654.a n = A290891 n

end A290891

/-! ## A290891.P17285987343391642663

`A291217(A005408(n))%A291210(n+1)`
-/

namespace A290891.P17285987343391642663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291217 (A005408 n).toNat) (A291210 (n + 1))

end

end A290891.P17285987343391642663

namespace A290891

/-- `A291217(A005408(n))%A291210(n+1)` -/
def P17285987343391642663.Spec : Prop :=
  ∀ n, P17285987343391642663.a n = A290891 n

end A290891

/-! ## A290891.P277824940618879329

`A291217(A005408(n))%A291228(n)`
-/

namespace A290891.P277824940618879329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291217 (A005408 n).toNat) (A291228 n)

end

end A290891.P277824940618879329

namespace A290891

/-- `A291217(A005408(n))%A291228(n)` -/
def P277824940618879329.Spec : Prop :=
  ∀ n, P277824940618879329.a n = A290891 n

end A290891

/-!
# A290892: p-INVERT of the positive integers, where p(S) = 1 - S^4.

The programs for A290892, there is no canonical definition to state claims against.
-/

/-! ## A290892.P13861019922862192237

`∑[A369807(n+1)%A029519(n+1)]`
-/

namespace A290892.P13861019922862192237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369807 (n + 1)) (A029519 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290892.P13861019922862192237

/-! ## A290892.P11897760635329994017

`A373910(n+1)-A019425(A000142(n))`
-/

namespace A290892.P11897760635329994017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373910 (n + 1) - A019425 (A000142 n).toNat

end

end A290892.P11897760635329994017

/-! ## A290892.P17083263097840371526

`A373910(n+1)-A078315(A000984(n))`
-/

namespace A290892.P17083263097840371526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373910 (n + 1) - A078315 (A000984 n).toNat

end

end A290892.P17083263097840371526

/-! ## A290892.P12433509578319823878

`A373910(n+1)-A078315(A042241(n))`
-/

namespace A290892.P12433509578319823878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373910 (n + 1) - A078315 (A042241 n).toNat

end

end A290892.P12433509578319823878

/-!
# A290893: p-INVERT of the positive integers, where p(S) = 1 - S^5.

The programs for A290893, there is no canonical definition to state claims against.
-/

/-! ## A290893.P17038522121296190644

`A291218(Δ[n²])`
-/

namespace A290893.P17038522121296190644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291218 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290893.P17038522121296190644

/-! ## A290893.P18269918906478459336

`A291218(n+1+n)/gcd(n, n+1)`
-/

namespace A290893.P18269918906478459336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291218 (n + 1 + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A290893.P18269918906478459336

/-! ## A290893.P6003225258136979786

`A291218(2*n+1)+A010678(2*n)`
-/

namespace A290893.P6003225258136979786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291218 (2 * n + 1) + A010678 (2 * n)

end

end A290893.P6003225258136979786

/-! ## A290893.P33345612388299398

`A291218(n+1+n)/A050603(A019429(n))`
-/

namespace A290893.P33345612388299398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291218 (n + 1 + n) : ℚ) / (A050603 (A019429 n).toNat : ℚ)

end

end A290893.P33345612388299398

/-! ## A290893.P14435011020465657914

`A291218(n+1+n)/A050603(A008833(n+1))`
-/

namespace A290893.P14435011020465657914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291218 (n + 1 + n) : ℚ) / (A050603 (A008833 (n + 1)).toNat : ℚ)

end

end A290893.P14435011020465657914

/-! ## A290893.P161627243969441842

`A050603(2*n+1)*A291218(2*n+1)/A050603(2*n)`
-/

namespace A290893.P161627243969441842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050603 (2 * n + 1) * A291218 (2 * n + 1) : ℚ) / (A050603 (2 * n) : ℚ)

end

end A290893.P161627243969441842

/-! ## A290893.P15910821623290666913

`gcd(A291218(2*n+1)*A291218(n+1), A291218(2*n+1))`
-/

namespace A290893.P15910821623290666913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A291218 (2 * n + 1) * A291218 (n + 1)) (A291218 (2 * n + 1))

end

end A290893.P15910821623290666913

/-! ## A290893.P13910296561153094978

`A291218(2*n+1)%A004148(n)²`
-/

namespace A290893.P13910296561153094978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291218 (2 * n + 1)) (A004148 n ^ 2)

end

end A290893.P13910296561153094978

/-! ## A290893.P2488289884143626672

`A291218(n+1+n)/A050603(n²)`
-/

namespace A290893.P2488289884143626672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291218 (n + 1 + n) : ℚ) / (A050603 (n ^ 2) : ℚ)

end

end A290893.P2488289884143626672

/-!
# A290894: p-INVERT of the positive integers, where p(S) = 1 - S^6.

The programs for A290894, there is no canonical definition to state claims against.
-/

/-! ## A290894.P15915474581118139493

`C(comp[A139790(n)], 11)`
-/

namespace A290894.P15915474581118139493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139790 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 11

end

end A290894.P15915474581118139493

/-! ## A290894.P1980853443752780961

`C(comp[10-A011971(n)], 11)`
-/

namespace A290894.P1980853443752780961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A011971 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 11

end

end A290894.P1980853443752780961

/-! ## A290894.P1660097983277177677

`C(comp[10-A218396(n)], 11)`
-/

namespace A290894.P1660097983277177677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A218396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 11

end

end A290894.P1660097983277177677

/-! ## A290894.P3559665482171764439

`C(comp[Δ[A105363(n+1)]], 11)`
-/

namespace A290894.P3559665482171764439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105363 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 11

end

end A290894.P3559665482171764439

/-! ## A290894.P3998580883453645592

`C(comp[10-A002202(n+1)], 11)`
-/

namespace A290894.P3998580883453645592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A002202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 11

end

end A290894.P3998580883453645592

/-!
# A290895: p-INVERT of the positive integers, where p(S) = 1 - S^7.

The programs for A290895, there is no canonical definition to state claims against.
-/

/-! ## A290895.P8344334558181046517

`C(comp[A209314(n+1)], 13)`
-/

namespace A290895.P8344334558181046517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 13

end

end A290895.P8344334558181046517

/-! ## A290895.P6188031574543665237

`C(comp[A343959(n+1)], 13)`
-/

namespace A290895.P6188031574543665237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 13

end

end A290895.P6188031574543665237

/-! ## A290895.P18254814823211074657

`C(comp[A333940(3*n)], 13)`
-/

namespace A290895.P18254814823211074657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333940 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 13

end

end A290895.P18254814823211074657

/-! ## A290895.P7322642914765452740

`C(comp[A359893(3*n+2)], 13)`
-/

namespace A290895.P7322642914765452740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 13

end

end A290895.P7322642914765452740

/-! ## A290895.P8931122566517876749

`C(record[A048853(2*n+5)], 13)`
-/

namespace A290895.P8931122566517876749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 13

end

end A290895.P8931122566517876749

/-!
# A290896: p-INVERT of the positive integers, where p(S) = 1 - S^8.

The programs for A290896, there is no canonical definition to state claims against.
-/

/-! ## A290896.P15661747253963021762

`C(comp[A088261(n)], 15)`
-/

namespace A290896.P15661747253963021762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088261 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 15

end

end A290896.P15661747253963021762

/-! ## A290896.P17884933754914678685

`C(comp[A164659(n)], 15)`
-/

namespace A290896.P17884933754914678685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 15

end

end A290896.P17884933754914678685

/-! ## A290896.P17776857643137570049

`C(comp[A039712(n+1)], 15)`
-/

namespace A290896.P17776857643137570049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 15

end

end A290896.P17776857643137570049

/-! ## A290896.P16219868041046518097

`C(comp[A126054(n+1)], 15)`
-/

namespace A290896.P16219868041046518097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 15

end

end A290896.P16219868041046518097

/-! ## A290896.P4320329428004628332

`C(comp[A181105(n+1)], 15)`
-/

namespace A290896.P4320329428004628332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 15

end

end A290896.P4320329428004628332

/-!
# A290897: p-INVERT of the positive integers, where p(S) = 1 - S - S^3.

The programs for A290897, there is no canonical definition to state claims against.
-/

/-! ## A290897.P14093208419948188720

`A037860(n^floor(n-atan(n)))+∑[3^n+1-2^n]`
-/

namespace A290897.P14093208419948188720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (1 - (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ))).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290897.P14093208419948188720

/-! ## A290897.P16647452206704323878

`A185238(A094373(n))+A036550(n)`
-/

namespace A290897.P16647452206704323878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A094373 n).toNat + A036550 n

end

end A290897.P16647452206704323878

/-! ## A290897.P11619392879748949306

`∑[A000108(A065666(n+1))+A001815(n)/2]`
-/

namespace A290897.P11619392879748949306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (A065666 (n + 1)).toNat : ℚ) + (A001815 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290897.P11619392879748949306

/-!
# A290898: p-INVERT of the positive integers, where p(S) = 1 - S - S^4.

The programs for A290898, there is no canonical definition to state claims against.
-/

/-! ## A290898.P5791112081545716542

`A058032(A181305(n+1))`
-/

namespace A290898.P5791112081545716542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058032 (A181305 (n + 1)).toNat

end

end A290898.P5791112081545716542

/-! ## A290898.P9916601674691856336

`A230980(3^n+4^n)-A098534(n)`
-/

namespace A290898.P9916601674691856336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (3 ^ n + 4 ^ n) - A098534 n

end

end A290898.P9916601674691856336

/-! ## A290898.P15830515042560262298

`A048865(A129276(n)+A074506(n))`
-/

namespace A290898.P15830515042560262298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A129276 n + A074506 n).toNat

end

end A290898.P15830515042560262298

/-!
# A290899: p-INVERT of the positive integers, where p(S) = 1 - S^2 - S^4.

The programs for A290899, there is no canonical definition to state claims against.
-/

/-! ## A290899.P16589667687193114487

`A344420(A313866(3^n))`
-/

namespace A290899.P16589667687193114487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A313866 (3 ^ n)).toNat

end

end A290899.P16589667687193114487

/-! ## A290899.P10081854360311024743

`A164089(A016064(n))+n`
-/

namespace A290899.P10081854360311024743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A016064 n).toNat + (n : ℤ)

end

end A290899.P10081854360311024743

/-! ## A290899.P8730871678757435203

`A265384(2^n)-A339971(n)`
-/

namespace A290899.P8730871678757435203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (2 ^ n) - A339971 n

end

end A290899.P8730871678757435203

