import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A146400: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1111-0010 pattern in any orientation.

The programs for A146400, there is no canonical definition to state claims against.
-/

/-! ## A146400.P17301585746955784680

`A146402(2*(n+2))`
-/

namespace A146400.P17301585746955784680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146402 (2 * (n + 2))

end

end A146400.P17301585746955784680

/-! ## A146400.P9268771303205223833

`∏{d}[A236019(n), A146402(#)]`
-/

namespace A146400.P9268771303205223833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146402 d

end

end A146400.P9268771303205223833

/-! ## A146400.P17712395474514164990

`A146402(A022839(n+1))/A146370(n+1)`
-/

namespace A146400.P17712395474514164990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146402 (A022839 (n + 1)).toNat : ℚ) / (A146370 (n + 1) : ℚ)

end

end A146400.P17712395474514164990

/-! ## A146400.P15777767107310763143

`A146402(A022839(n+1))/A146402(n+1)`
-/

namespace A146400.P15777767107310763143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146402 (A022839 (n + 1)).toNat : ℚ) / (A146402 (n + 1) : ℚ)

end

end A146400.P15777767107310763143

/-! ## A146400.P4955810740503768916

`A146402(A097338(n+1))/A146402(n+1)`
-/

namespace A146400.P4955810740503768916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146402 (A097338 (n + 1)).toNat : ℚ) / (A146402 (n + 1) : ℚ)

end

end A146400.P4955810740503768916

/-!
# A146401: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1111-0010 pattern in any orientation.

The programs for A146401, there is no canonical definition to state claims against.
-/

/-! ## A146401.P462383406154388702

`or(A146409(n+1), A146426(A146426(n+2)))`
-/

namespace A146401.P462383406154388702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146409 (n + 1)) (A146426 (A146426 (n + 2)).toNat)

end

end A146401.P462383406154388702

/-!
# A146402: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1111-0010 pattern in any orientation.

The programs for A146402, there is no canonical definition to state claims against.
-/

/-! ## A146402.P5270311796808118073

`A239139(A146711(n+1))`
-/

namespace A146402.P5270311796808118073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239139 (A146711 (n + 1)).toNat

end

end A146402.P5270311796808118073

/-! ## A146402.P543503733325872911

`A146711(A358373(n+1))`
-/

namespace A146402.P543503733325872911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146711 (A358373 (n + 1)).toNat

end

end A146402.P543503733325872911

/-! ## A146402.P14639330046994068543

`A000188(A146711(n+1)²)`
-/

namespace A146402.P14639330046994068543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A146711 (n + 1) ^ 2).toNat

end

end A146402.P14639330046994068543

/-! ## A146402.P4226651777640046317

`A000188(A146735(n+1)²)`
-/

namespace A146402.P4226651777640046317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A146735 (n + 1) ^ 2).toNat

end

end A146402.P4226651777640046317

/-! ## A146402.P11417836785740215442

`A003557(A146735(n+1)²)`
-/

namespace A146402.P11417836785740215442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A146735 (n + 1) ^ 2).toNat

end

end A146402.P11417836785740215442

/-!
# A146403: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1111-0010 pattern in any orientation.

The programs for A146403, there is no canonical definition to state claims against.
-/

/-! ## A146403.P13389178479675685062

`or(1, A122312(C(n, 5)))`
-/

namespace A146403.P13389178479675685062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122312 (Nat.choose n 5))

end

end A146403.P13389178479675685062

/-! ## A146403.P13512829762438197747

`A157458(3^(1-floor(∑[2-n]/3)))`
-/

namespace A146403.P13512829762438197747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (1 - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋ : ℤ))).toNat

end

end A146403.P13512829762438197747

/-! ## A146403.P14587378204326153829

`A291168(∑[∏{p}[n+1, #^val(n+1, #²)]²+1+n])`
-/

namespace A146403.P14587378204326153829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146403.P14587378204326153829

/-! ## A146403.P13047054873297909736

`A121527(A036420(n))`
-/

namespace A146403.P13047054873297909736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121527 (A036420 n).toNat

end

end A146403.P13047054873297909736

/-! ## A146403.P3017243051801052842

`A025452(A148953(n))`
-/

namespace A146403.P3017243051801052842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A148953 n).toNat

end

end A146403.P3017243051801052842

/-!
# A146405: Number of n X n binary arrays with all ones connected only in a 1000-1111-0100 pattern in any orientation.

The programs for A146405, there is no canonical definition to state claims against.
-/

/-! ## A146405.P9318788707104171163

`A146407(2*n+3)`
-/

namespace A146405.P9318788707104171163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146407 (2 * n + 3)

end

end A146405.P9318788707104171163

/-! ## A146405.P1099901407962426622

`or(1, A146407(A005408(n+1)))`
-/

namespace A146405.P1099901407962426622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146407 (A005408 (n + 1)).toNat)

end

end A146405.P1099901407962426622

/-! ## A146405.P15005671009271873726

`or(1, A146407(A077797(n+1)))`
-/

namespace A146405.P15005671009271873726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146407 (A077797 (n + 1)).toNat)

end

end A146405.P15005671009271873726

/-! ## A146405.P13950212784491087652

`or(1, A146407(A081874(n+1)))`
-/

namespace A146405.P13950212784491087652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146407 (A081874 (n + 1)).toNat)

end

end A146405.P13950212784491087652

/-! ## A146405.P13478739906759633693

`∏{d}[A005408(n+1), A146407(#)]`
-/

namespace A146405.P13478739906759633693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146407 d

end

end A146405.P13478739906759633693

/-!
# A146408: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1111-0100 pattern in any orientation.

The programs for A146408, there is no canonical definition to state claims against.
-/

/-! ## A146408.P12946734336096270159

`A146410(2*(n+2))`
-/

namespace A146408.P12946734336096270159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146410 (2 * (n + 2))

end

end A146408.P12946734336096270159

/-! ## A146408.P10910407374013787391

`or(1, A146410(A022839(n+1)))`
-/

namespace A146408.P10910407374013787391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146410 (A022839 (n + 1)).toNat)

end

end A146408.P10910407374013787391

/-! ## A146408.P14990008452038375618

`or(1, A146410(A047282(n+1)))`
-/

namespace A146408.P14990008452038375618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146410 (A047282 (n + 1)).toNat)

end

end A146408.P14990008452038375618

/-! ## A146408.P15015263606942270769

`or(1, A146410(A097338(n+1)))`
-/

namespace A146408.P15015263606942270769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146410 (A097338 (n + 1)).toNat)

end

end A146408.P15015263606942270769

/-! ## A146408.P9434482012660198443

`or(1, A146410(A144396(n+1)))`
-/

namespace A146408.P9434482012660198443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146410 (A144396 (n + 1)).toNat)

end

end A146408.P9434482012660198443

/-!
# A146409: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1111-0100 pattern in any orientation.

The programs for A146409, there is no canonical definition to state claims against.
-/

/-! ## A146409.P916273500882440988

`and(A075321(n+1), A356935(A275073(n)))`
-/

namespace A146409.P916273500882440988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075321 (n + 1)) (A356935 (A275073 n).toNat)

end

end A146409.P916273500882440988

/-! ## A146409.P3003713492367550915

`A146670(n+1)+A146634(n+1)%A146663(n+1)`
-/

namespace A146409.P3003713492367550915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146670 (n + 1) + Int.tmod (A146634 (n + 1)) (A146663 (n + 1))

end

end A146409.P3003713492367550915

/-! ## A146409.P8408144883579015511

`A146670(A146631(n+1)²+n)+A002188(A309469(n))`
-/

namespace A146409.P8408144883579015511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146670 (A146631 (n + 1) ^ 2 + (n : ℤ)).toNat + A002188 (A309469 n).toNat

end

end A146409.P8408144883579015511

/-! ## A146409.P7638786378917192938

`A146465(A146466(n+1)²+n)-A208727(A146426(n+2))`
-/

namespace A146409.P7638786378917192938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146465 (A146466 (n + 1) ^ 2 + (n : ℤ)).toNat - A208727 (A146426 (n + 2)).toNat

end

end A146409.P7638786378917192938

/-! ## A146409.P4383942307796000403

`A146465((n+1)*A146466(n+1))-A208727(A146426(n+2))`
-/

namespace A146409.P4383942307796000403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146465 ((n + 1 : ℤ) * A146466 (n + 1)).toNat - A208727 (A146426 (n + 2)).toNat

end

end A146409.P4383942307796000403

/-!
# A146410: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1111-0100 pattern in any orientation.

The programs for A146410, there is no canonical definition to state claims against.
-/

/-! ## A146410.P9552967113434230721

`A106829(A146370(n+1))`
-/

namespace A146410.P9552967113434230721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106829 (A146370 (n + 1)).toNat

end

end A146410.P9552967113434230721

/-! ## A146410.P4585580299086357109

`or(A146639(n+1), A374758(A146631(n+1)))`
-/

namespace A146410.P4585580299086357109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146639 (n + 1)) (A374758 (A146631 (n + 1)).toNat)

end

end A146410.P4585580299086357109

/-! ## A146410.P9417547392651457124

`or(A146671(n+1), A374758(A146631(n+1)))`
-/

namespace A146410.P9417547392651457124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146671 (n + 1)) (A374758 (A146631 (n + 1)).toNat)

end

end A146410.P9417547392651457124

/-! ## A146410.P9417463720448750476

`or(A146639(n+1), A374758(A146671(n+1)))`
-/

namespace A146410.P9417463720448750476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146639 (n + 1)) (A374758 (A146671 (n + 1)).toNat)

end

end A146410.P9417463720448750476

/-!
# A146411: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1111-0100 pattern in any orientation.

The programs for A146411, there is no canonical definition to state claims against.
-/

/-! ## A146411.P6134065692265479283

`A138367(A229885(n))+∏{e}[n+1, floor(#/3)+1]`
-/

namespace A146411.P6134065692265479283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138367 (A229885 n).toNat + ∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 3⌋ + 1)

end

end A146411.P6134065692265479283

/-! ## A146411.P1957567380390479598

`A270419(n+1)+A138367(A229885(n))`
-/

namespace A146411.P1957567380390479598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (n + 1) + A138367 (A229885 n).toNat

end

end A146411.P1957567380390479598

/-! ## A146411.P15498456948501855930

`or(A147348(n+1), A212991(A147334(n+1)))`
-/

namespace A146411.P15498456948501855930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147348 (n + 1)) (A212991 (A147334 (n + 1)).toNat)

end

end A146411.P15498456948501855930

/-! ## A146411.P1487356839776631637

`A345764(or(1, C(n, 5)))`
-/

namespace A146411.P1487356839776631637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345764 (Nat.lor 1 (Nat.choose n 5))

end

end A146411.P1487356839776631637

/-! ## A146411.P14829342075952379551

`or(1, A316891(C(n, floor(n/3))))`
-/

namespace A146411.P14829342075952379551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316891 (Nat.choose n ⌊(n : ℚ) / 3⌋.toNat))

end

end A146411.P14829342075952379551

/-!
# A146412: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1111-0100 pattern in any orientation.

The programs for A146412, there is no canonical definition to state claims against.
-/

/-! ## A146412.P8126733648618608037

`A336698(A258046(n+1)+A013170(n))`
-/

namespace A146412.P8126733648618608037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A258046 (n + 1) + A013170 n).toNat

end

end A146412.P8126733648618608037

/-!
# A146413: Number of n X n binary arrays with all ones connected only in a 1000-1111-1000 pattern in any orientation.

The programs for A146413, there is no canonical definition to state claims against.
-/

/-! ## A146413.P6336106512521897400

`A146415(2*(n+2))`
-/

namespace A146413.P6336106512521897400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146415 (2 * (n + 2))

end

end A146413.P6336106512521897400

/-! ## A146413.P13722395221861670200

`A308978(n)+A146415(A193175(n+1))`
-/

namespace A146413.P13722395221861670200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308978 n + A146415 (A193175 (n + 1)).toNat

end

end A146413.P13722395221861670200

/-! ## A146413.P9729536069474775961

`A146415(A193175(n+1))/A146466(n+1)`
-/

namespace A146413.P9729536069474775961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146415 (A193175 (n + 1)).toNat : ℚ) / (A146466 (n + 1) : ℚ)

end

end A146413.P9729536069474775961

/-! ## A146413.P241677582487022147

`A146415(A193175(n+1))/A146415(A146415(n+1)²)`
-/

namespace A146413.P241677582487022147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146415 (A193175 (n + 1)).toNat : ℚ) / (A146415 (A146415 (n + 1) ^ 2).toNat : ℚ)

end

end A146413.P241677582487022147

/-!
# A146415: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1111-1000 pattern in any orientation.

The programs for A146415, there is no canonical definition to state claims against.
-/

/-! ## A146415.P15605519105631561502

`A168151(A075199(n+1)+5)`
-/

namespace A146415.P15605519105631561502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168151 (A075199 (n + 1) + 5).toNat

end

end A146415.P15605519105631561502

/-!
# A146416: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1111-1000 pattern in any orientation.

The programs for A146416, there is no canonical definition to state claims against.
-/

/-! ## A146416.P4097872679681890884

`A146418(2*(n+2))`
-/

namespace A146416.P4097872679681890884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146418 (2 * (n + 2))

end

end A146416.P4097872679681890884

/-! ## A146416.P14339576180575091779

`A308978(n)+A146418(A193175(n+1))`
-/

namespace A146416.P14339576180575091779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308978 n + A146418 (A193175 (n + 1)).toNat

end

end A146416.P14339576180575091779

/-! ## A146416.P16743050098819028055

`A146418(A193175(n+1))%A086902(n)`
-/

namespace A146416.P16743050098819028055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146418 (A193175 (n + 1)).toNat) (A086902 n)

end

end A146416.P16743050098819028055

/-! ## A146416.P18282250723508187270

`A308978(n)+A146418(A325038(n+1))`
-/

namespace A146416.P18282250723508187270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308978 n + A146418 (A325038 (n + 1)).toNat

end

end A146416.P18282250723508187270

/-! ## A146416.P15806374091541525264

`A146418(A325038(n+1))%A086902(n)`
-/

namespace A146416.P15806374091541525264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146418 (A325038 (n + 1)).toNat) (A086902 n)

end

end A146416.P15806374091541525264

/-!
# A146417: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1111-1000 pattern in any orientation.

The programs for A146417, there is no canonical definition to state claims against.
-/

/-! ## A146417.P12533201143313617710

`A366187(A146678(n+1))`
-/

namespace A146417.P12533201143313617710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366187 (A146678 (n + 1)).toNat

end

end A146417.P12533201143313617710

/-!
# A146418: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1111-1000 pattern in any orientation.

The programs for A146418, there is no canonical definition to state claims against.
-/

/-! ## A146418.P10356348917389408985

`A014577(A147080(n+1)^2)*A147080(n+3)`
-/

namespace A146418.P10356348917389408985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A147080 (n + 1) ^ 2).toNat * A147080 (n + 3)

end

end A146418.P10356348917389408985

/-! ## A146418.P10936690473131414843

`A147080(n+3)+A000035(A325038(2*(n+2))^2)`
-/

namespace A146418.P10936690473131414843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147080 (n + 3) + A000035 (A325038 (2 * (n + 2)) ^ 2).toNat

end

end A146418.P10936690473131414843

/-! ## A146418.P9379320425792464866

`A147080(n+3)+A000035((6*n+2)*A147080(n+1))`
-/

namespace A146418.P9379320425792464866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147080 (n + 3) + A000035 ((6 * n + 2 : ℤ) * A147080 (n + 1)).toNat

end

end A146418.P9379320425792464866

/-! ## A146418.P10765565577587933742

`A014577((6*n+2)*A325038(2*(n+2)))*A147080(n+3)`
-/

namespace A146418.P10765565577587933742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 ((6 * n + 2 : ℤ) * A325038 (2 * (n + 2))).toNat * A147080 (n + 3)

end

end A146418.P10765565577587933742

/-! ## A146418.P2155815475875173554

`A147080(n+3)+A000035(A147080(n+3)*A325038(n+1))`
-/

namespace A146418.P2155815475875173554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147080 (n + 3) + A000035 (A147080 (n + 3) * A325038 (n + 1)).toNat

end

end A146418.P2155815475875173554

/-!
# A146419: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1111-1000 pattern in any orientation.

The programs for A146419, there is no canonical definition to state claims against.
-/

/-! ## A146419.P14436910570743095397

`round(sqrt(A238378(n+1)/sqrt(n²+4)))`
-/

namespace A146419.P14436910570743095397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A238378 (n + 1) : ℝ) / Real.sqrt (n ^ 2 + 4 : ℝ)))

end

end A146419.P14436910570743095397

/-! ## A146419.P9479573295039926562

`A072820(A056510(n+2)+2)`
-/

namespace A146419.P9479573295039926562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072820 (A056510 (n + 2) + 2).toNat

end

end A146419.P9479573295039926562

/-! ## A146419.P13761741354153143116

`A072820(A056521(n+2)+2)`
-/

namespace A146419.P13761741354153143116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072820 (A056521 (n + 2) + 2).toNat

end

end A146419.P13761741354153143116

/-! ## A146419.P14731393412930036884

`A300362(A282225(n)+A109197(n))`
-/

namespace A146419.P14731393412930036884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (A282225 n + A109197 n).toNat

end

end A146419.P14731393412930036884

/-! ## A146419.P17901738894876746026

`A250120(A238661(n+1)^A195825(n))`
-/

namespace A146419.P17901738894876746026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (SequenceMachineLib.roundAway ((A238661 (n + 1) : ℚ) ^ (A195825 n : ℤ))).toNat

end

end A146419.P17901738894876746026

/-!
# A146420: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1111-1000 pattern in any orientation.

The programs for A146420, there is no canonical definition to state claims against.
-/

/-! ## A146420.P2104675031781156038

`A077797(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A146420.P2104675031781156038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A077797 (a (n - 1) + 1).toNat

end

end A146420.P2104675031781156038

/-! ## A146420.P12980948853989632728

`A091309(A153982(n))`
-/

namespace A146420.P12980948853989632728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091309 (A153982 n).toNat

end

end A146420.P12980948853989632728

/-! ## A146420.P17008740363840692133

`A162226(A125658(n))`
-/

namespace A146420.P17008740363840692133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A125658 n).toNat

end

end A146420.P17008740363840692133

/-! ## A146420.P6092667664844237331

`A000360(A114119(n!))`
-/

namespace A146420.P6092667664844237331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A114119 (Nat.factorial n)).toNat

end

end A146420.P6092667664844237331

/-!
# A146421: Number of n X n binary arrays with all ones connected only in a 1010-1111 pattern in any orientation.

The programs for A146421, there is no canonical definition to state claims against.
-/

/-! ## A146421.P14532261531437808972

`A146423(2*(n+2))`
-/

namespace A146421.P14532261531437808972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146423 (2 * (n + 2))

end

end A146421.P14532261531437808972

/-! ## A146421.P11260863618449777946

`or(1, A146423(A144396(n+1)))`
-/

namespace A146421.P11260863618449777946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146423 (A144396 (n + 1)).toNat)

end

end A146421.P11260863618449777946

/-! ## A146421.P18443401455409646436

`A146423(A345436(n+3))+A033665(n)`
-/

namespace A146421.P18443401455409646436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146423 (A345436 (n + 3)).toNat + A033665 n

end

end A146421.P18443401455409646436

/-! ## A146421.P14489461865500496300

`gcd(A000038(n), A146423(A144396(n+1)))`
-/

namespace A146421.P14489461865500496300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A146423 (A144396 (n + 1)).toNat)

end

end A146421.P14489461865500496300

/-! ## A146421.P9330905463763504782

`A146423(A345436(n+3))%A204494(n+1)`
-/

namespace A146421.P9330905463763504782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146423 (A345436 (n + 3)).toNat) (A204494 (n + 1))

end

end A146421.P9330905463763504782

/-!
# A146423: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1010-1111 pattern in any orientation.

The programs for A146423, there is no canonical definition to state claims against.
-/

/-! ## A146423.P9847420404862346077

`A216366(A146604(n+1))`
-/

namespace A146423.P9847420404862346077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216366 (A146604 (n + 1)).toNat

end

end A146423.P9847420404862346077

/-! ## A146423.P7411102364915452720

`A146740(A262038(n)+1)+A008612(A146740(n+1))`
-/

namespace A146423.P7411102364915452720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146740 (A262038 n + 1).toNat + A008612 (A146740 (n + 1)).toNat

end

end A146423.P7411102364915452720

/-! ## A146423.P1003484935921157654

`A299971(6^A308997(n))`
-/

namespace A146423.P1003484935921157654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299971 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A308997 n : ℤ))).toNat

end

end A146423.P1003484935921157654

/-!
# A146424: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1010-1111 pattern in any orientation.

The programs for A146424, there is no canonical definition to state claims against.
-/

/-! ## A146424.P2028061497912349788

`A146426(2*(n+2))`
-/

namespace A146424.P2028061497912349788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146426 (2 * (n + 2))

end

end A146424.P2028061497912349788

/-! ## A146424.P9497483071918689862

`or(1, A146426(A022839(n+1)))`
-/

namespace A146424.P9497483071918689862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146426 (A022839 (n + 1)).toNat)

end

end A146424.P9497483071918689862

/-! ## A146424.P12841804677749574303

`or(1, A146426(A144396(n+1)))`
-/

namespace A146424.P12841804677749574303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146426 (A144396 (n + 1)).toNat)

end

end A146424.P12841804677749574303

/-! ## A146424.P5293839573839105558

`A146426(A022839(n+1))/A146410(n+1)`
-/

namespace A146424.P5293839573839105558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146426 (A022839 (n + 1)).toNat : ℚ) / (A146410 (n + 1) : ℚ)

end

end A146424.P5293839573839105558

/-! ## A146424.P967702529433103195

`A146426(A144396(n+1))/A146410(n+1)`
-/

namespace A146424.P967702529433103195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146426 (A144396 (n + 1)).toNat : ℚ) / (A146410 (n + 1) : ℚ)

end

end A146424.P967702529433103195

/-!
# A146425: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1010-1111 pattern in any orientation.

The programs for A146425, there is no canonical definition to state claims against.
-/

/-! ## A146425.P4030103481343024404

`A118168(A137359(n))`
-/

namespace A146425.P4030103481343024404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A137359 n).toNat

end

end A146425.P4030103481343024404

/-! ## A146425.P17922613668753251683

`A146742(∑[A053501(n)])`
-/

namespace A146425.P17922613668753251683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146742 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146425.P17922613668753251683

/-! ## A146425.P18028310498002405074

`A146742(A068634(n+1))`
-/

namespace A146425.P18028310498002405074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146742 (A068634 (n + 1)).toNat

end

end A146425.P18028310498002405074

/-! ## A146425.P10575654661950036100

`A020990(A397853(n+2))`
-/

namespace A146425.P10575654661950036100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020990 (A397853 (n + 2)).toNat

end

end A146425.P10575654661950036100

/-! ## A146425.P4564983846726124981

`A146742(A053501(n)+n)`
-/

namespace A146425.P4564983846726124981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146742 (A053501 n + (n : ℤ)).toNat

end

end A146425.P4564983846726124981

/-!
# A146426: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1010-1111 pattern in any orientation.

The programs for A146426, there is no canonical definition to state claims against.
-/

/-! ## A146426.P10276516154947754407

`A131319(A146068(n+1))`
-/

namespace A146426.P10276516154947754407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131319 (A146068 (n + 1)).toNat

end

end A146426.P10276516154947754407

/-! ## A146426.P12976830829562491385

`A131319(A146474(n+1))`
-/

namespace A146426.P12976830829562491385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131319 (A146474 (n + 1)).toNat

end

end A146426.P12976830829562491385

/-! ## A146426.P8700584653955091020

`A136248(A147104(n+1))`
-/

namespace A146426.P8700584653955091020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136248 (A147104 (n + 1)).toNat

end

end A146426.P8700584653955091020

/-! ## A146426.P10275559743687890440

`A153671(A146727(n+1))`
-/

namespace A146426.P10275559743687890440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (A146727 (n + 1)).toNat

end

end A146426.P10275559743687890440

/-! ## A146426.P4420109135959884376

`A157966(A147198(n+1))`
-/

namespace A146426.P4420109135959884376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A147198 (n + 1)).toNat

end

end A146426.P4420109135959884376

/-!
# A146427: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1010-1111 pattern in any orientation.

The programs for A146427, there is no canonical definition to state claims against.
-/

/-! ## A146427.P7213988349026883086

`A216319(lcm(8, A020104(n)))`
-/

namespace A146427.P7213988349026883086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216319 (Int.lcm 8 (A020104 n))

end

end A146427.P7213988349026883086

/-! ## A146427.P5862514571911084361

`A185908(∏[A185316(n)²])`
-/

namespace A146427.P5862514571911084361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185908 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146427.P5862514571911084361

/-! ## A146427.P13585303116126511011

`A256787(A072880(n+1)-1)`
-/

namespace A146427.P13585303116126511011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256787 (A072880 (n + 1) - 1).toNat

end

end A146427.P13585303116126511011

/-! ## A146427.P3595493790461813867

`A117816(A373933(n+1)+n)`
-/

namespace A146427.P3595493790461813867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117816 (A373933 (n + 1) + (n : ℤ)).toNat

end

end A146427.P3595493790461813867

/-! ## A146427.P14540757516629521591

`A052126(or(A295126(n+2), A325617(n)))`
-/

namespace A146427.P14540757516629521591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.lor (A295126 (n + 2)) (A325617 n)).toNat

end

end A146427.P14540757516629521591

/-!
# A146428: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1010-1111 pattern in any orientation.

The programs for A146428, there is no canonical definition to state claims against.
-/

/-! ## A146428.P14595480429278347286

`A146852(∑[∑{e}[n+1, #]+1]+5)`
-/

namespace A146428.P14595480429278347286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146852 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A146428.P14595480429278347286

/-! ## A146428.P17175908759702814438

`A342438(A009211(n))`
-/

namespace A146428.P17175908759702814438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342438 (A009211 n).toNat

end

end A146428.P17175908759702814438

/-! ## A146428.P2365001010704621797

`A207873(A206301(n))`
-/

namespace A146428.P2365001010704621797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207873 (A206301 n).toNat

end

end A146428.P2365001010704621797

/-!
# A146429: Number of n X n binary arrays with all ones connected only in a 101-111-101 pattern in any orientation.

The programs for A146429, there is no canonical definition to state claims against.
-/

/-! ## A146429.P7109098856415669443

`A146431(2*(n+2))`
-/

namespace A146429.P7109098856415669443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146431 (2 * (n + 2))

end

end A146429.P7109098856415669443

/-! ## A146429.P802291449236863120

`A237517(A008864(a(n-2)+3*a(n-1)))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A146429.P802291449236863120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 9] fun n a =>
  A237517 (A008864 (a (n - 2) + 3 * a (n - 1)).toNat).toNat

end

end A146429.P802291449236863120

/-! ## A146429.P14073216638326932154

`and(A001001(A101061(n+1)), A101052(n))`
-/

namespace A146429.P14073216638326932154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001001 (A101061 (n + 1)).toNat) (A101052 n)

end

end A146429.P14073216638326932154

/-!
# A146431: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 101-111-101 pattern in any orientation.

The programs for A146431, there is no canonical definition to state claims against.
-/

/-! ## A146431.P17545217876251495332

`A319149(∑[(n+1)%8+n]+1)`
-/

namespace A146431.P17545217876251495332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 8 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A146431.P17545217876251495332

/-! ## A146431.P13328241578402589203

`A327481(A085153(Δ[n²]))`
-/

namespace A146431.P13328241578402589203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327481 (A085153 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146431.P13328241578402589203

/-! ## A146431.P4871369504944991055

`A228717(A056021(n+2)+1)`
-/

namespace A146431.P4871369504944991055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228717 (A056021 (n + 2) + 1).toNat

end

end A146431.P4871369504944991055

/-! ## A146431.P16304653340526600040

`A327481(A304297(n+1)+2)`
-/

namespace A146431.P16304653340526600040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327481 (A304297 (n + 1) + 2).toNat

end

end A146431.P16304653340526600040

/-! ## A146431.P12072709351315193344

`p?[A143632(n)]^A286106(n+1)`
-/

namespace A146431.P12072709351315193344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A286106 (n + 1) : ℤ)

end

end A146431.P12072709351315193344

/-!
# A146432: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 101-111-101 pattern in any orientation.

The programs for A146432, there is no canonical definition to state claims against.
-/

/-! ## A146432.P16383323865256660264

`A146434(2*(n+2))`
-/

namespace A146432.P16383323865256660264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146434 (2 * (n + 2))

end

end A146432.P16383323865256660264

/-! ## A146432.P13451260417676739107

`A346632(A210736(n))+A119445(n+1)`
-/

namespace A146432.P13451260417676739107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346632 (A210736 n).toNat + A119445 (n + 1)

end

end A146432.P13451260417676739107

/-! ## A146432.P15607472427106616047

`or(A035082(n), A137898(A146184(n+1)))`
-/

namespace A146432.P15607472427106616047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035082 n) (A137898 (A146184 (n + 1)).toNat)

end

end A146432.P15607472427106616047

/-!
# A146433: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 101-111-101 pattern in any orientation.

The programs for A146433, there is no canonical definition to state claims against.
-/

/-! ## A146433.P65790271330790276

`A275890(A147372(n+1))`
-/

namespace A146433.P65790271330790276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275890 (A147372 (n + 1)).toNat

end

end A146433.P65790271330790276

/-! ## A146433.P3665106389579158132

`A113221(A146905(n+2))`
-/

namespace A146433.P3665106389579158132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A146905 (n + 2)).toNat

end

end A146433.P3665106389579158132

/-! ## A146433.P1968482381707451085

`A368729(A280271(A000586(A034891(n))))`
-/

namespace A146433.P1968482381707451085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (A280271 (A000586 (A034891 n).toNat).toNat).toNat

end

end A146433.P1968482381707451085

/-!
# A146435: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 101-111-101 pattern in any orientation.

The programs for A146435, there is no canonical definition to state claims against.
-/

/-! ## A146435.P14326812666408543665

`or(A002262(A001465(n)), A047050(n))`
-/

namespace A146435.P14326812666408543665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A001465 n).toNat) (A047050 n)

end

end A146435.P14326812666408543665

/-! ## A146435.P5762275688805346134

`or(A002262(A001465(n)), A065941(n))`
-/

namespace A146435.P5762275688805346134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A001465 n).toNat) (A065941 n)

end

end A146435.P5762275688805346134

/-! ## A146435.P15160595381779351488

`or(A002262(A001465(n)), A070914(n))`
-/

namespace A146435.P15160595381779351488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A001465 n).toNat) (A070914 n)

end

end A146435.P15160595381779351488

/-! ## A146435.P17545139788719358492

`or(A002262(A001465(n)), A174116(n))`
-/

namespace A146435.P17545139788719358492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A001465 n).toNat) (A174116 n)

end

end A146435.P17545139788719358492

/-!
# A146437: Number of n X n binary arrays with all ones connected only in a 1100-0100-0111 pattern in any orientation.

The programs for A146437, there is no canonical definition to state claims against.
-/

/-! ## A146437.P15119130337047949551

`A146439(2*n+3)`
-/

namespace A146437.P15119130337047949551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146439 (2 * n + 3)

end

end A146437.P15119130337047949551

/-! ## A146437.P14867343618204199203

`or(1, A146439(A144396(n+1)))`
-/

namespace A146437.P14867343618204199203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146439 (A144396 (n + 1)).toNat)

end

end A146437.P14867343618204199203

/-! ## A146437.P1022253466604574413

`A185246(n)+A146439(A144396(n+1))`
-/

namespace A146437.P1022253466604574413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A146439 (A144396 (n + 1)).toNat

end

end A146437.P1022253466604574413

/-! ## A146437.P4983074044451616812

`A185284(n)+A146439(A144396(n+1))`
-/

namespace A146437.P4983074044451616812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A146439 (A144396 (n + 1)).toNat

end

end A146437.P4983074044451616812

/-! ## A146437.P612124233389658782

`gcd(A010894(n), A146439(A144396(n+1)))`
-/

namespace A146437.P612124233389658782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A146439 (A144396 (n + 1)).toNat)

end

end A146437.P612124233389658782

/-!
# A146438: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-0100-0111 pattern in any orientation.

The programs for A146438, there is no canonical definition to state claims against.
-/

/-! ## A146438.P9469857215313008154

`and(A146285(3*n+2), A146595(n+1))`
-/

namespace A146438.P9469857215313008154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146285 (3 * n + 2)) (A146595 (n + 1))

end

end A146438.P9469857215313008154

/-! ## A146438.P7484550175518300255

`A146579(n+1)-A339087(A146432(n+1))`
-/

namespace A146438.P7484550175518300255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146579 (n + 1) - A339087 (A146432 (n + 1)).toNat

end

end A146438.P7484550175518300255

/-! ## A146438.P13495444056342448922

`and(A146571(A032559(n+1)), A146579(n+1))`
-/

namespace A146438.P13495444056342448922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146571 (A032559 (n + 1)).toNat) (A146579 (n + 1))

end

end A146438.P13495444056342448922

/-! ## A146438.P11388202764413570980

`and(A146571(n+1), A274685(A347489(n+1)))`
-/

namespace A146438.P11388202764413570980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146571 (n + 1)) (A274685 (A347489 (n + 1)).toNat)

end

end A146438.P11388202764413570980

/-!
# A146439: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-0100-0111 pattern in any orientation.

The programs for A146439, there is no canonical definition to state claims against.
-/

/-! ## A146439.P368091290556177300

`A146692(Δ[A077366(n+1)])`
-/

namespace A146439.P368091290556177300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146692 (f1 (n + 1) - f1 n).toNat

end

end A146439.P368091290556177300

/-! ## A146439.P13324209579344193246

`A146692(or(n, A146647(n+1)))`
-/

namespace A146439.P13324209579344193246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146692 (Int.lor (n : ℤ) (A146647 (n + 1))).toNat

end

end A146439.P13324209579344193246

/-! ## A146439.P13768092328283457964

`A071585(A056456(n+1))`
-/

namespace A146439.P13768092328283457964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A056456 (n + 1)).toNat

end

end A146439.P13768092328283457964

/-! ## A146439.P5715138072450731628

`A071585(A056466(n+1))`
-/

namespace A146439.P5715138072450731628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A056466 (n + 1)).toNat

end

end A146439.P5715138072450731628

/-! ## A146439.P8984290044762708276

`A105356(A146604(n+1))`
-/

namespace A146439.P8984290044762708276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A146604 (n + 1)).toNat

end

end A146439.P8984290044762708276

/-!
# A146440: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0100-0111 pattern in any orientation.

The programs for A146440, there is no canonical definition to state claims against.
-/

/-! ## A146440.P9386497536475507555

`A146442(2*(n+2))`
-/

namespace A146440.P9386497536475507555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146442 (2 * (n + 2))

end

end A146440.P9386497536475507555

/-! ## A146440.P4912586561834191941

`or(1, A146442(A144396(n+1)))`
-/

namespace A146440.P4912586561834191941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146442 (A144396 (n + 1)).toNat)

end

end A146440.P4912586561834191941

/-! ## A146440.P10164158260035268181

`A000027(A146442(Δ[(n+1)²]))`
-/

namespace A146440.P10164158260035268181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A146442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146440.P10164158260035268181

/-! ## A146440.P1958808400877293149

`A185246(n)+A146442(A144396(n+1))`
-/

namespace A146440.P1958808400877293149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A146442 (A144396 (n + 1)).toNat

end

end A146440.P1958808400877293149

/-! ## A146440.P13163557676140773664

`lcm(A086767(n), A146442(A144396(n+1)))`
-/

namespace A146440.P13163557676140773664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A086767 n) (A146442 (A144396 (n + 1)).toNat)

end

end A146440.P13163557676140773664

/-!
# A146441: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0100-0111 pattern in any orientation.

The programs for A146441, there is no canonical definition to state claims against.
-/

/-! ## A146441.P9984633196932620726

`or(A000164(A000170(n)), A146819(n+1))`
-/

namespace A146441.P9984633196932620726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000164 (A000170 n).toNat) (A146819 (n + 1))

end

end A146441.P9984633196932620726

/-! ## A146441.P5739974900668510282

`or(A001221(A147219(n+1)), A146819(n+1))`
-/

namespace A146441.P5739974900668510282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A147219 (n + 1)).toNat) (A146819 (n + 1))

end

end A146441.P5739974900668510282

/-! ## A146441.P10160558103336119000

`or(A001221(A147219(n+1)), A147213(n+1))`
-/

namespace A146441.P10160558103336119000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A147219 (n + 1)).toNat) (A147213 (n + 1))

end

end A146441.P10160558103336119000

/-! ## A146441.P16652486448015745288

`or(A146819(n+1), A147190(A147187(n+1)))`
-/

namespace A146441.P16652486448015745288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146819 (n + 1)) (A147190 (A147187 (n + 1)).toNat)

end

end A146441.P16652486448015745288

/-! ## A146441.P14574477448516063277

`or(A146819(n+1), A147190(A147249(n+1)))`
-/

namespace A146441.P14574477448516063277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146819 (n + 1)) (A147190 (A147249 (n + 1)).toNat)

end

end A146441.P14574477448516063277

/-!
# A146442: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1100-0100-0111 pattern in any orientation.

The programs for A146442, there is no canonical definition to state claims against.
-/

/-! ## A146442.P7020990010855772805

`A146440(∑[char[2*(n+2)]]+1)`
-/

namespace A146442.P7020990010855772805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146440 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A146442.P7020990010855772805

/-! ## A146442.P16554846473944113791

`A146812(n+1)+A077600(A146836(n+1))`
-/

namespace A146442.P16554846473944113791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146812 (n + 1) + A077600 (A146836 (n + 1)).toNat

end

end A146442.P16554846473944113791

/-! ## A146442.P7047238678481279534

`or(A146695(n+1), A280748(A146695(n+1)))`
-/

namespace A146442.P7047238678481279534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146695 (n + 1)) (A280748 (A146695 (n + 1)).toNat)

end

end A146442.P7047238678481279534

/-! ## A146442.P13357053445929226931

`or(A146695(n+1), A349258(A146695(n+5)))`
-/

namespace A146442.P13357053445929226931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146695 (n + 1)) (A349258 (A146695 (n + 5)).toNat)

end

end A146442.P13357053445929226931

/-!
# A146443: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0100-0111 pattern in any orientation.

The programs for A146443, there is no canonical definition to state claims against.
-/

/-! ## A146443.P16781497758755261438

`A319646(and(n, A007716(n))%A293606(n))`
-/

namespace A146443.P16781497758755261438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319646 (Int.tmod (Int.land (n : ℤ) (A007716 n)) (A293606 n)).toNat

end

end A146443.P16781497758755261438

/-! ## A146443.P5202665587765436474

`A319646(and(n, A316983(n)%A293606(n)))`
-/

namespace A146443.P5202665587765436474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319646 (Int.land (n : ℤ) (Int.tmod (A316983 n) (A293606 n))).toNat

end

end A146443.P5202665587765436474

/-! ## A146443.P10990128751934377106

`A319646(and(n, A319616(n))%A293606(n))`
-/

namespace A146443.P10990128751934377106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319646 (Int.tmod (Int.land (n : ℤ) (A319616 n)) (A293606 n)).toNat

end

end A146443.P10990128751934377106

/-! ## A146443.P7413549580487365904

`A184955(A324843(n+1))+A147215(n+1)`
-/

namespace A146443.P7413549580487365904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A324843 (n + 1)).toNat + A147215 (n + 1)

end

end A146443.P7413549580487365904

/-! ## A146443.P1917484362072577761

`A066787(A054497(n))`
-/

namespace A146443.P1917484362072577761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066787 (A054497 n).toNat

end

end A146443.P1917484362072577761

/-!
# A146444: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-0100-0111 pattern in any orientation.

The programs for A146444, there is no canonical definition to state claims against.
-/

/-! ## A146444.P1908600085178097304

`A147463(n+2)+A025480(A147444(n+1))`
-/

namespace A146444.P1908600085178097304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147463 (n + 2) + A025480 (A147444 (n + 1)).toNat

end

end A146444.P1908600085178097304

/-! ## A146444.P9297904958204752900

`or(A146177(A146182(n+1)), A146271(n+1))`
-/

namespace A146444.P9297904958204752900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146177 (A146182 (n + 1)).toNat) (A146271 (n + 1))

end

end A146444.P9297904958204752900

/-! ## A146444.P2845544306609903052

`or(A146177(A146234(n+1)), A146271(n+1))`
-/

namespace A146444.P2845544306609903052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146177 (A146234 (n + 1)).toNat) (A146271 (n + 1))

end

end A146444.P2845544306609903052

/-! ## A146444.P10006981893181484942

`or(A146177(A146258(n+1)), A146271(n+1))`
-/

namespace A146444.P10006981893181484942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146177 (A146258 (n + 1)).toNat) (A146271 (n + 1))

end

end A146444.P10006981893181484942

/-!
# A146445: Number of n X n binary arrays with all ones connected only in a 1100-0110-0011 pattern in any orientation.

The programs for A146445, there is no canonical definition to state claims against.
-/

/-! ## A146445.P2440076752837267684

`A146447(2*(n+2))`
-/

namespace A146445.P2440076752837267684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146447 (2 * (n + 2))

end

end A146445.P2440076752837267684

/-! ## A146445.P2631703896014742844

`or(1, A146447(A144396(n+1)))`
-/

namespace A146445.P2631703896014742844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146447 (A144396 (n + 1)).toNat)

end

end A146445.P2631703896014742844

/-! ## A146445.P9784616330626716832

`A185246(n)+A146447(A144396(n+1))`
-/

namespace A146445.P9784616330626716832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A146447 (A144396 (n + 1)).toNat

end

end A146445.P9784616330626716832

/-! ## A146445.P2613110779269585344

`A185284(n)+A146447(A144396(n+1))`
-/

namespace A146445.P2613110779269585344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A146447 (A144396 (n + 1)).toNat

end

end A146445.P2613110779269585344

/-! ## A146445.P5459023779369110249

`gcd(A010894(n), A146447(A144396(n+1)))`
-/

namespace A146445.P5459023779369110249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A146447 (A144396 (n + 1)).toNat)

end

end A146445.P5459023779369110249

/-!
# A146446: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-0110-0011 pattern in any orientation.

The programs for A146446, there is no canonical definition to state claims against.
-/

/-! ## A146446.P4248674227606844237

`A060747(A045901(n+1)^A100001(n+1))`
-/

namespace A146446.P4248674227606844237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.roundAway ((A045901 (n + 1) : ℚ) ^ (A100001 (n + 1) : ℤ))).toNat

end

end A146446.P4248674227606844237

/-! ## A146446.P16262292941851351334

`A007306(A124838(2*(n+1))%A117157(n+1))`
-/

namespace A146446.P16262292941851351334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (Int.tmod (A124838 (2 * (n + 1))) (A117157 (n + 1))).toNat

end

end A146446.P16262292941851351334

/-!
# A146447: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-0110-0011 pattern in any orientation.

The programs for A146447, there is no canonical definition to state claims against.
-/

/-! ## A146447.P17001589951473669578

`or(A147425(A147449(n+5)), A147446(n+3))`
-/

namespace A146447.P17001589951473669578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147425 (A147449 (n + 5)).toNat) (A147446 (n + 3))

end

end A146447.P17001589951473669578

/-! ## A146447.P8051234356285368236

`A146138(A250266(n))`
-/

namespace A146447.P8051234356285368236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146138 (A250266 n).toNat

end

end A146447.P8051234356285368236

/-! ## A146447.P6323167342813504476

`A003003(A146471(n+1))`
-/

namespace A146447.P6323167342813504476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A146471 (n + 1)).toNat

end

end A146447.P6323167342813504476

/-! ## A146447.P12235134091303978251

`A146825(A033865(n)+1)`
-/

namespace A146447.P12235134091303978251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146825 (A033865 n + 1).toNat

end

end A146447.P12235134091303978251

/-! ## A146447.P7288686824210404224

`A051534(A146367(n+1))`
-/

namespace A146447.P7288686824210404224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051534 (A146367 (n + 1)).toNat

end

end A146447.P7288686824210404224

/-!
# A146448: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0110-0011 pattern in any orientation.

The programs for A146448, there is no canonical definition to state claims against.
-/

/-! ## A146448.P16131766529011444145

`A146450(2*(n+2))`
-/

namespace A146448.P16131766529011444145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146450 (2 * (n + 2))

end

end A146448.P16131766529011444145

/-! ## A146448.P18389166061463834698

`or(1, A146450(A144396(n+1)))`
-/

namespace A146448.P18389166061463834698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146450 (A144396 (n + 1)).toNat)

end

end A146448.P18389166061463834698

/-! ## A146448.P9421708956898188468

`A185246(n)+A146450(A144396(n+1))`
-/

namespace A146448.P9421708956898188468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A146450 (A144396 (n + 1)).toNat

end

end A146448.P9421708956898188468

/-! ## A146448.P1656186160884373167

`A000027(A146450(Δ[(n+1)²]))`
-/

namespace A146448.P1656186160884373167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A146450 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146448.P1656186160884373167

/-!
# A146449: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0110-0011 pattern in any orientation.

The programs for A146449, there is no canonical definition to state claims against.
-/

/-! ## A146449.P708290346321504214

`A147448(n+3)`
-/

namespace A146449.P708290346321504214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147448 (n + 3)

end

end A146449.P708290346321504214

/-! ## A146449.P11361392072825600276

`A243925(A006720(n))`
-/

namespace A146449.P11361392072825600276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243925 (A006720 n).toNat

end

end A146449.P11361392072825600276

/-! ## A146449.P9940239047089838927

`A319916(A068042(n))`
-/

namespace A146449.P9940239047089838927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319916 (A068042 n).toNat

end

end A146449.P9940239047089838927

/-! ## A146449.P13585086948020717724

`A074145(A351755(n))`
-/

namespace A146449.P13585086948020717724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074145 (A351755 n).toNat

end

end A146449.P13585086948020717724

/-! ## A146449.P1789584563667142914

`A353604(A146067(n+1))`
-/

namespace A146449.P1789584563667142914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353604 (A146067 (n + 1)).toNat

end

end A146449.P1789584563667142914

/-!
# A146450: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1100-0110-0011 pattern in any orientation.

The programs for A146450, there is no canonical definition to state claims against.
-/

/-! ## A146450.P6613828970928306175

`A072088(A147236(n+1))`
-/

namespace A146450.P6613828970928306175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A147236 (n + 1)).toNat

end

end A146450.P6613828970928306175

/-! ## A146450.P11537746245130373791

`A255232(A146132(n+1))`
-/

namespace A146450.P11537746245130373791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255232 (A146132 (n + 1)).toNat

end

end A146450.P11537746245130373791

/-! ## A146450.P4190349824118215785

`A343152(A146599(n+1))`
-/

namespace A146450.P4190349824118215785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343152 (A146599 (n + 1)).toNat

end

end A146450.P4190349824118215785

/-!
# A146451: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0110-0011 pattern in any orientation.

The programs for A146451, there is no canonical definition to state claims against.
-/

/-! ## A146451.P3779142160967297235

`A102399(A146236(n+1))`
-/

namespace A146451.P3779142160967297235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102399 (A146236 (n + 1)).toNat

end

end A146451.P3779142160967297235

/-! ## A146451.P5263098112113185351

`A235600(or(3, A293607(n)))`
-/

namespace A146451.P5263098112113185351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235600 (Int.lor 3 (A293607 n)).toNat

end

end A146451.P5263098112113185351

/-! ## A146451.P7980365606661945219

`2*A243055(A148167(n))+1`
-/

namespace A146451.P7980365606661945219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243055 (A148167 n).toNat + 1

end

end A146451.P7980365606661945219

/-! ## A146451.P17090871072115666734

`A079714(ceil(A086376(n)^n/2)+1)`
-/

namespace A146451.P17090871072115666734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079714 (⌈(A086376 n ^ n : ℚ) / 2⌉ + 1).toNat

end

end A146451.P17090871072115666734

/-! ## A146451.P4001041911153734515

`p?[A185206(3*n+4)]^A210715(n+3)`
-/

namespace A146451.P4001041911153734515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185206 (3 * n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A210715 (n + 3) : ℤ)

end

end A146451.P4001041911153734515

/-!
# A146452: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-0110-0011 pattern in any orientation.

The programs for A146452, there is no canonical definition to state claims against.
-/

/-! ## A146452.P12318431289335301971

`A293483(or(2, A071298(n)))`
-/

namespace A146452.P12318431289335301971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293483 (Int.lor 2 (A071298 n)).toNat

end

end A146452.P12318431289335301971

/-! ## A146452.P8265235853335902913

`or(1, ∑[A088931(A229167(n))])`
-/

namespace A146452.P8265235853335902913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 (A229167 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146452.P8265235853335902913

/-! ## A146452.P11604938885131681419

`A264977(A177200(∑[floor(n/4)]))`
-/

namespace A146452.P11604938885131681419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 (A177200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A146452.P11604938885131681419

/-! ## A146452.P14243437403434359884

`A218851(A218856(n)+A006720(n))`
-/

namespace A146452.P14243437403434359884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218851 (A218856 n + A006720 n).toNat

end

end A146452.P14243437403434359884

/-!
# A146453: Number of n X n binary arrays with all ones connected only in a 1100-0111-0010 pattern in any orientation.

The programs for A146453, there is no canonical definition to state claims against.
-/

/-! ## A146453.P15430021962542082153

`A146455(2*(n+2))`
-/

namespace A146453.P15430021962542082153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146455 (2 * (n + 2))

end

end A146453.P15430021962542082153

/-! ## A146453.P2064864573475697208

`or(1, A146455(Δ[(n+1)²]))`
-/

namespace A146453.P2064864573475697208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A146453.P2064864573475697208

/-! ## A146453.P8500577534112029001

`A185284(n)+A146455(Δ[(n+1)²])`
-/

namespace A146453.P8500577534112029001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A146455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A146453.P8500577534112029001

/-! ## A146453.P3831832090057946602

`or(A146455(A144396(n+1)), A185284(n))`
-/

namespace A146453.P3831832090057946602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146455 (A144396 (n + 1)).toNat) (A185284 n)

end

end A146453.P3831832090057946602

/-! ## A146453.P13593233886624073280

`C(A146455(A144396(n+1)), A146466(n+1))`
-/

namespace A146453.P13593233886624073280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A146455 (A144396 (n + 1)).toNat).toNat (A146466 (n + 1)).toNat

end

end A146453.P13593233886624073280

/-!
# A146456: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0111-0010 pattern in any orientation.

The programs for A146456, there is no canonical definition to state claims against.
-/

/-! ## A146456.P2755820856542322070

`A146458(2*n+3)`
-/

namespace A146456.P2755820856542322070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146458 (2 * n + 3)

end

end A146456.P2755820856542322070

/-! ## A146456.P8658495553425642809

`or(1, A146458(A005408(n+1)))`
-/

namespace A146456.P8658495553425642809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146458 (A005408 (n + 1)).toNat)

end

end A146456.P8658495553425642809

/-! ## A146456.P2689533095128406525

`or(1, A146458(A144396(n+1)))`
-/

namespace A146456.P2689533095128406525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146458 (A144396 (n + 1)).toNat)

end

end A146456.P2689533095128406525

/-! ## A146456.P5611029390971486297

`A185246(n)+A146458(A144396(n+1))`
-/

namespace A146456.P5611029390971486297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A146458 (A144396 (n + 1)).toNat

end

end A146456.P5611029390971486297

/-! ## A146456.P4252418192672882360

`A185284(n)+A146458(A144396(n+1))`
-/

namespace A146456.P4252418192672882360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A146458 (A144396 (n + 1)).toNat

end

end A146456.P4252418192672882360

/-!
# A146457: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0111-0010 pattern in any orientation.

The programs for A146457, there is no canonical definition to state claims against.
-/

/-! ## A146457.P11302636608492406811

`A165290(A191520(n)+1)`
-/

namespace A146457.P11302636608492406811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165290 (A191520 n + 1).toNat

end

end A146457.P11302636608492406811

/-! ## A146457.P17809820013695665805

`or(A101358(A191520(n)), A118330(n))`
-/

namespace A146457.P17809820013695665805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101358 (A191520 n).toNat) (A118330 n)

end

end A146457.P17809820013695665805

/-! ## A146457.P479369786741714225

`or(A101358(A191520(n)), A211666(n+1))`
-/

namespace A146457.P479369786741714225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101358 (A191520 n).toNat) (A211666 (n + 1))

end

end A146457.P479369786741714225

/-! ## A146457.P15396434405645993503

`or(A101358(A191520(n)), A279185(n+1))`
-/

namespace A146457.P15396434405645993503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101358 (A191520 n).toNat) (A279185 (n + 1))

end

end A146457.P15396434405645993503

/-!
# A146458: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1100-0111-0010 pattern in any orientation.

The programs for A146458, there is no canonical definition to state claims against.
-/

/-! ## A146458.P16643279837312331910

`A001948(A146068(n+1))`
-/

namespace A146458.P16643279837312331910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001948 (A146068 (n + 1)).toNat

end

end A146458.P16643279837312331910

/-! ## A146458.P17064034338689340041

`A003005(A146020(n+1))`
-/

namespace A146458.P17064034338689340041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003005 (A146020 (n + 1)).toNat

end

end A146458.P17064034338689340041

/-! ## A146458.P5049675936256862016

`A146583(A032951(n+1))`
-/

namespace A146458.P5049675936256862016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146583 (A032951 (n + 1)).toNat

end

end A146458.P5049675936256862016

/-! ## A146458.P4245280958263487393

`A034584(A146141(n+1))`
-/

namespace A146458.P4245280958263487393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034584 (A146141 (n + 1)).toNat

end

end A146458.P4245280958263487393

/-! ## A146458.P5069929971246298607

`A097904(A146474(n+1))`
-/

namespace A146458.P5069929971246298607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097904 (A146474 (n + 1)).toNat

end

end A146458.P5069929971246298607

/-!
# A146459: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0111-0010 pattern in any orientation.

The programs for A146459, there is no canonical definition to state claims against.
-/

/-! ## A146459.P5858633603723182512

`A343389(A229885(n))`
-/

namespace A146459.P5858633603723182512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343389 (A229885 n).toNat

end

end A146459.P5858633603723182512

/-! ## A146459.P10913223230352497982

`A270097(A349053(n))`
-/

namespace A146459.P10913223230352497982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270097 (A349053 n).toNat

end

end A146459.P10913223230352497982

/-! ## A146459.P12337172116974626376

`A002260(A337720(n)²)`
-/

namespace A146459.P12337172116974626376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A337720 n ^ 2).toNat

end

end A146459.P12337172116974626376

/-! ## A146459.P14570823171570696985

`A128077(A337720(n)²)`
-/

namespace A146459.P14570823171570696985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128077 (A337720 n ^ 2).toNat

end

end A146459.P14570823171570696985

/-! ## A146459.P5873817325864539293

`A147457(A005250(n+1))`
-/

namespace A146459.P5873817325864539293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147457 (A005250 (n + 1)).toNat

end

end A146459.P5873817325864539293

/-!
# A146460: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-0111-0010 pattern in any orientation.

The programs for A146460, there is no canonical definition to state claims against.
-/

/-! ## A146460.P12370716248934469372

`A271866(A147719(n)-A337525(2*n+3))`
-/

namespace A146460.P12370716248934469372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271866 (A147719 n - A337525 (2 * n + 3)).toNat

end

end A146460.P12370716248934469372

/-! ## A146460.P1115238458455256548

`or(A147122(n+2), A147142(A147095(n+1)))`
-/

namespace A146460.P1115238458455256548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147122 (n + 2)) (A147142 (A147095 (n + 1)).toNat)

end

end A146460.P1115238458455256548

/-! ## A146460.P6257156310882100392

`or(A147034(n+2), A147048(A147055(n+3)))`
-/

namespace A146460.P6257156310882100392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147034 (n + 2)) (A147048 (A147055 (n + 3)).toNat)

end

end A146460.P6257156310882100392

/-! ## A146460.P3220580600054773981

`or(A020639(A147037(2*(n+1))), A147034(n+2))`
-/

namespace A146460.P3220580600054773981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A147037 (2 * (n + 1))).toNat) (A147034 (n + 2))

end

end A146460.P3220580600054773981

/-!
# A146461: Number of n X n binary arrays with all ones connected only in a 1100-0111-0100 pattern in any orientation.

The programs for A146461, there is no canonical definition to state claims against.
-/

/-! ## A146461.P6728327013523229098

`A146463(2*(n+2))`
-/

namespace A146461.P6728327013523229098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146463 (2 * (n + 2))

end

end A146461.P6728327013523229098

/-! ## A146461.P14819923900432151650

`or(1, A146463(A144396(n+1)))`
-/

namespace A146461.P14819923900432151650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146463 (A144396 (n + 1)).toNat)

end

end A146461.P14819923900432151650

/-! ## A146461.P14361986488487995848

`or(1, A146463(A193175(n+1)))`
-/

namespace A146461.P14361986488487995848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146463 (A193175 (n + 1)).toNat)

end

end A146461.P14361986488487995848

/-! ## A146461.P11819896053225398818

`or(1, A146463(A250051(n+1)))`
-/

namespace A146461.P11819896053225398818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146463 (A250051 (n + 1)).toNat)

end

end A146461.P11819896053225398818

/-! ## A146461.P11362802954874789128

`or(1, A146463(A020705(2*n)))`
-/

namespace A146461.P11362802954874789128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146463 (A020705 (2 * n)).toNat)

end

end A146461.P11362802954874789128

/-!
# A146462: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-0111-0100 pattern in any orientation.

The programs for A146462, there is no canonical definition to state claims against.
-/

/-! ## A146462.P3447502031720702349

`A032742(A276086(n)+A000179(n))`
-/

namespace A146462.P3447502031720702349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A276086 n + A000179 n).toNat

end

end A146462.P3447502031720702349

/-! ## A146462.P9096598917637900769

`A146731(n+1)+A048728(A146832(n+2))`
-/

namespace A146462.P9096598917637900769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146731 (n + 1) + A048728 (A146832 (n + 2)).toNat

end

end A146462.P9096598917637900769

/-! ## A146462.P1515261816369233167

`or(A146776(n+1), A198632(A052408(n+1)))`
-/

namespace A146462.P1515261816369233167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146776 (n + 1)) (A198632 (A052408 (n + 1)).toNat)

end

end A146462.P1515261816369233167

/-!
# A146463: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-0111-0100 pattern in any orientation.

The programs for A146463, there is no canonical definition to state claims against.
-/

/-! ## A146463.P14618278055174690950

`∑[and(2^(∑[n+1]%(n+2))-1, A301437(n+1))]`
-/

namespace A146463.P14618278055174690950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)) : ℤ) - 1) (A301437 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146463.P14618278055174690950

/-! ## A146463.P1887367760437726618

`A146777(∑[A060338(n)])`
-/

namespace A146463.P1887367760437726618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146777 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146463.P1887367760437726618

/-! ## A146463.P3319422258412979334

`A058223(A056456(n+1))`
-/

namespace A146463.P3319422258412979334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058223 (A056456 (n + 1)).toNat

end

end A146463.P3319422258412979334

/-! ## A146463.P434307384178903685

`A058223(A056466(n+1))`
-/

namespace A146463.P434307384178903685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058223 (A056466 (n + 1)).toNat

end

end A146463.P434307384178903685

/-! ## A146463.P16855991012872727570

`A146588(A033865(n)+1)`
-/

namespace A146463.P16855991012872727570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146588 (A033865 n + 1).toNat

end

end A146463.P16855991012872727570

/-!
# A146464: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0111-0100 pattern in any orientation.

The programs for A146464, there is no canonical definition to state claims against.
-/

/-! ## A146464.P8375062010583913034

`A146466(2*(n+2))`
-/

namespace A146464.P8375062010583913034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146466 (2 * (n + 2))

end

end A146464.P8375062010583913034

/-! ## A146464.P279579622268875459

`or(1, A146466(A047282(n+1)))`
-/

namespace A146464.P279579622268875459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146466 (A047282 (n + 1)).toNat)

end

end A146464.P279579622268875459

/-! ## A146464.P5478390274634126912

`or(1, A146466(A144396(n+1)))`
-/

namespace A146464.P5478390274634126912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146466 (A144396 (n + 1)).toNat)

end

end A146464.P5478390274634126912

/-! ## A146464.P15070354662456506836

`or(1, A146466(A189471(n+1)))`
-/

namespace A146464.P15070354662456506836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146466 (A189471 (n + 1)).toNat)

end

end A146464.P15070354662456506836

/-! ## A146464.P16455404315017463705

`or(1, A146466(A193175(n+1)))`
-/

namespace A146464.P16455404315017463705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146466 (A193175 (n + 1)).toNat)

end

end A146464.P16455404315017463705

/-!
# A146466: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1100-0111-0100 pattern in any orientation.

The programs for A146466, there is no canonical definition to state claims against.
-/

/-! ## A146466.P3362388188030746248

`A182846(A146370(n+1))`
-/

namespace A146466.P3362388188030746248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182846 (A146370 (n + 1)).toNat

end

end A146466.P3362388188030746248

/-! ## A146466.P10019186431178198815

`A274341(A147510(n+1))`
-/

namespace A146466.P10019186431178198815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274341 (A147510 (n + 1)).toNat

end

end A146466.P10019186431178198815

/-! ## A146466.P16243103358881761150

`A190098(C(22, A185226(n)))`
-/

namespace A146466.P16243103358881761150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (Nat.choose 22 (A185226 n).toNat)

end

end A146466.P16243103358881761150

/-! ## A146466.P6186448495574424784

`A146820(n+1)-A077600(A146812(n+1))`
-/

namespace A146466.P6186448495574424784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146820 (n + 1) - A077600 (A146812 (n + 1)).toNat

end

end A146466.P6186448495574424784

/-! ## A146466.P11012880374569160545

`or(A112739(A146410(n+1)), A146410(n+1))`
-/

namespace A146466.P11012880374569160545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112739 (A146410 (n + 1)).toNat) (A146410 (n + 1))

end

end A146466.P11012880374569160545

/-!
# A146467: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0111-0100 pattern in any orientation.

The programs for A146467, there is no canonical definition to state claims against.
-/

/-! ## A146467.P245473756823007498

`A157966(A147465(n+2))`
-/

namespace A146467.P245473756823007498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A147465 (n + 2)).toNat

end

end A146467.P245473756823007498

/-! ## A146467.P15781845426962613650

`xor(A146411(n+1), A287411(A146408(n+1)))`
-/

namespace A146467.P15781845426962613650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A146411 (n + 1)) (A287411 (A146408 (n + 1)).toNat)

end

end A146467.P15781845426962613650

/-! ## A146467.P4880826722686232223

`A071521(C(n, 5)*C(n, 6)+1)`
-/

namespace A146467.P4880826722686232223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (Nat.choose n 5 * Nat.choose n 6 + 1)

end

end A146467.P4880826722686232223

/-! ## A146467.P17273576848500291326

`A343516(A118968(n)!)`
-/

namespace A146467.P17273576848500291326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (Nat.factorial (A118968 n).toNat)

end

end A146467.P17273576848500291326

/-! ## A146467.P3262542422731142623

`A126886(A056751(n+1))`
-/

namespace A146467.P3262542422731142623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126886 (A056751 (n + 1)).toNat

end

end A146467.P3262542422731142623

/-!
# A146468: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-0111-0100 pattern in any orientation.

The programs for A146468, there is no canonical definition to state claims against.
-/

/-! ## A146468.P18356590533199971743

`A028234(A296050(n)+A169616(n+1))`
-/

namespace A146468.P18356590533199971743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A296050 n + A169616 (n + 1)).toNat

end

end A146468.P18356590533199971743

/-!
# A146469: Number of n X n binary arrays with all ones connected only in a 1110-0111 pattern in any orientation.

The programs for A146469, there is no canonical definition to state claims against.
-/

/-! ## A146469.P5977998328276743446

`A146471(2*(n+2))`
-/

namespace A146469.P5977998328276743446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146471 (2 * (n + 2))

end

end A146469.P5977998328276743446

/-! ## A146469.P3513577365422089790

`A146471(Δ[(n+1)²])+A011739(n)`
-/

namespace A146469.P3513577365422089790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146471 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A011739 n

end

end A146469.P3513577365422089790

/-! ## A146469.P16504154945946480960

`A146471(Δ[(n+1)²])/A007318(∑[n])`
-/

namespace A146469.P16504154945946480960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146471 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A146469.P16504154945946480960

/-! ## A146469.P1405794403939482155

`A146471(Δ[(n+1)²])/A014963(A146081(n))`
-/

namespace A146469.P1405794403939482155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146471 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A014963 (A146081 n).toNat : ℚ)

end

end A146469.P1405794403939482155

/-! ## A146469.P3033855171972028628

`A146471(Δ[(n+1)²])/A001222(A000705(n+1))`
-/

namespace A146469.P3033855171972028628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146471 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A001222 (A000705 (n + 1)).toNat : ℚ)

end

end A146469.P3033855171972028628

/-!
# A146471: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1110-0111 pattern in any orientation.

The programs for A146471, there is no canonical definition to state claims against.
-/

/-! ## A146471.P15767328568378522366

`A166158(A146604(n+1))`
-/

namespace A146471.P15767328568378522366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166158 (A146604 (n + 1)).toNat

end

end A146471.P15767328568378522366

/-! ## A146471.P5136960683603794690

`A173001(A146447(n+1))`
-/

namespace A146471.P5136960683603794690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173001 (A146447 (n + 1)).toNat

end

end A146471.P5136960683603794690

/-! ## A146471.P11175226957792569488

`A191877(A146367(n+1))`
-/

namespace A146471.P11175226957792569488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191877 (A146367 (n + 1)).toNat

end

end A146471.P11175226957792569488

/-! ## A146471.P5488358676998157257

`A191877(A147430(n+1))`
-/

namespace A146471.P5488358676998157257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191877 (A147430 (n + 1)).toNat

end

end A146471.P5488358676998157257

/-! ## A146471.P12185422610939814435

`A191877(A147462(n+1))`
-/

namespace A146471.P12185422610939814435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191877 (A147462 (n + 1)).toNat

end

end A146471.P12185422610939814435

/-!
# A146472: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1110-0111 pattern in any orientation.

The programs for A146472, there is no canonical definition to state claims against.
-/

/-! ## A146472.P6877269943608955593

`A146474(2*(n+2))`
-/

namespace A146472.P6877269943608955593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146474 (2 * (n + 2))

end

end A146472.P6877269943608955593

/-! ## A146472.P5020468544305869055

`or(1, A146474(A131392(n+1)))`
-/

namespace A146472.P5020468544305869055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146474 (A131392 (n + 1)).toNat)

end

end A146472.P5020468544305869055

/-! ## A146472.P2873936175521299256

`or(1, A146474(A207188(n+1)))`
-/

namespace A146472.P2873936175521299256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146474 (A207188 (n + 1)).toNat)

end

end A146472.P2873936175521299256

/-! ## A146472.P10130370151365008228

`or(1, A146474(A346302(n+1)))`
-/

namespace A146472.P10130370151365008228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146474 (A346302 (n + 1)).toNat)

end

end A146472.P10130370151365008228

/-! ## A146472.P8661393892091987564

`gcd(A000038(n), A146474(A131392(n+1)))`
-/

namespace A146472.P8661393892091987564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A146474 (A131392 (n + 1)).toNat)

end

end A146472.P8661393892091987564

/-!
# A146473: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1110-0111 pattern in any orientation.

The programs for A146473, there is no canonical definition to state claims against.
-/

/-! ## A146473.P12697333867829233982

`A375417(A146058(n+1))`
-/

namespace A146473.P12697333867829233982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375417 (A146058 (n + 1)).toNat

end

end A146473.P12697333867829233982

/-! ## A146473.P1111906692671559152

`A147251(A061378(n)+3)`
-/

namespace A146473.P1111906692671559152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147251 (A061378 n + 3).toNat

end

end A146473.P1111906692671559152

/-! ## A146473.P2273041860508759521

`A147251(A062399(n)+3)`
-/

namespace A146473.P2273041860508759521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147251 (A062399 n + 3).toNat

end

end A146473.P2273041860508759521

/-!
# A146474: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1110-0111 pattern in any orientation.

The programs for A146474, there is no canonical definition to state claims against.
-/

/-! ## A146474.P8945992940976270077

`A344543(A146068(n+1))`
-/

namespace A146474.P8945992940976270077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (A146068 (n + 1)).toNat

end

end A146474.P8945992940976270077

/-! ## A146474.P13046852349330502463

`A003005(or(A146394(n+1), A146458(n+1)))`
-/

namespace A146474.P13046852349330502463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003005 (Int.lor (A146394 (n + 1)) (A146458 (n + 1))).toNat

end

end A146474.P13046852349330502463

/-! ## A146474.P7864110422540886577

`or(A146068(n+1), A194055(A146450(n+1)))`
-/

namespace A146474.P7864110422540886577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146068 (n + 1)) (A194055 (A146450 (n + 1)).toNat)

end

end A146474.P7864110422540886577

/-!
# A146475: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1110-0111 pattern in any orientation.

The programs for A146475, there is no canonical definition to state claims against.
-/

/-! ## A146475.P10121174095554256362

`A165971(∑[∑[A353310(n²)]]+1)`
-/

namespace A146475.P10121174095554256362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353310 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165971 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A146475.P10121174095554256362

/-! ## A146475.P566538946712541039

`A376612(A011185(n+1)+A000108(n))`
-/

namespace A146475.P566538946712541039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376612 (A011185 (n + 1) + A000108 n).toNat

end

end A146475.P566538946712541039

/-! ## A146475.P1731009159963451056

`A004525(A147210(n+1))%A314045(n+3)`
-/

namespace A146475.P1731009159963451056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A147210 (n + 1)).toNat) (A314045 (n + 3))

end

end A146475.P1731009159963451056

/-! ## A146475.P4822491134091021732

`A365426(A063018(n))`
-/

namespace A146475.P4822491134091021732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365426 (A063018 n).toNat

end

end A146475.P4822491134091021732

/-! ## A146475.P9148626555479176554

`A106848(A354539(n))`
-/

namespace A146475.P9148626555479176554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106848 (A354539 n).toNat

end

end A146475.P9148626555479176554

/-!
# A146477: Numbers k for which A146326(k) is different from A146326(j) for j < k.

The programs for A146477, there is no canonical definition to state claims against.
-/

/-! ## A146477.P4514004795964846814

`record[A146343(A146326(A000037(n+7)))]`
-/

namespace A146477.P4514004795964846814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146343 (A146326 (A000037 (n + 7)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146477.P4514004795964846814

/-!
# A146478: a(n) = length of period of continued fraction (1 + sqrt(prime(n)))/2.

The programs for A146478, there is no canonical definition to state claims against.
-/

/-! ## A146478.P7732496492144873166

`A146326(Δ[A007504(n)])`
-/

namespace A146478.P7732496492144873166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (f1 (n + 1) - f1 n).toNat

end

end A146478.P7732496492144873166

/-! ## A146478.P4327965481543261347

`A146326(A000040(n+1))`
-/

namespace A146478.P4327965481543261347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A000040 (n + 1)).toNat

end

end A146478.P4327965481543261347

/-! ## A146478.P18256195828909196457

`A107356(A112929(n+1))`
-/

namespace A146478.P18256195828909196457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107356 (A112929 (n + 1)).toNat

end

end A146478.P18256195828909196457

/-! ## A146478.P7843866231061604583

`A146326(A008578(n+2))`
-/

namespace A146478.P7843866231061604583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A008578 (n + 2)).toNat

end

end A146478.P7843866231061604583

/-! ## A146478.P18246657322274192460

`A146326(A182986(n+2))`
-/

namespace A146478.P18246657322274192460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A182986 (n + 2)).toNat

end

end A146478.P18246657322274192460

/-! ## A146478.P6636447539564361374

`A146326(eq[1, A003415(n)])`
-/

namespace A146478.P6636447539564361374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146478.P6636447539564361374

/-! ## A146478.P9327139592740042971

`A146326(record[A006530(n+2)])`
-/

namespace A146478.P9327139592740042971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A146478.P9327139592740042971

/-! ## A146478.P14623116974351024049

`A146326(record[A014963(n+2)])`
-/

namespace A146478.P14623116974351024049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A146478.P14623116974351024049

/-! ## A146478.P8306147695238300435

`A146326(record[A020639(n+2)])`
-/

namespace A146478.P8306147695238300435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A146478.P8306147695238300435

/-! ## A146478.P10408775471025754277

`A146326(record[n+1-A003415(n+1)]+1)`
-/

namespace A146478.P10408775471025754277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A146478.P10408775471025754277

/-!
# A146480: Numbers k with the property that p = 2k + 1 and q = (2k)^3 + 3 are both primes.

The programs for A146480, there is no canonical definition to state claims against.
-/

/-! ## A146480.P1308590649995842841

`floor(A333199(n+1)/2)`
-/

namespace A146480.P1308590649995842841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333199 (n + 1) : ℚ) / 2⌋

end

end A146480.P1308590649995842841

/-! ## A146480.P11352811766576401582

`floor(p?[A180646(n+1)]/2)`
-/

namespace A146480.P11352811766576401582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A146480.P11352811766576401582

/-! ## A146480.P12437832933251382019

`floor(p?[A049441(n+1)+1]/2)`
-/

namespace A146480.P12437832933251382019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049441 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A146480.P12437832933251382019

/-! ## A146480.P12190451601519138626

`round(p?[A049441(n+2)+1]/2)-1`
-/

namespace A146480.P12190451601519138626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049441 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2) - 1

end

end A146480.P12190451601519138626

/-! ## A146480.P12974373409044100466

`A002616(A333199(n+1))`
-/

namespace A146480.P12974373409044100466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A333199 (n + 1)).toNat

end

end A146480.P12974373409044100466

/-! ## A146480.P13591217184693643256

`A004524(p?[A180646(n+1)])`
-/

namespace A146480.P13591217184693643256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146480.P13591217184693643256

/-! ## A146480.P14184407919669805033

`A004526(p?[A180646(n+1)])`
-/

namespace A146480.P14184407919669805033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146480.P14184407919669805033

/-! ## A146480.P7836171847970884824

`A123108(p?[A180646(n+1)])`
-/

namespace A146480.P7836171847970884824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146480.P7836171847970884824

/-! ## A146480.P9751665145595884465

`floor(record[A006530(2*A180646(n+1))]/2)`
-/

namespace A146480.P9751665145595884465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A180646 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋

end

end A146480.P9751665145595884465

/-! ## A146480.P6000962621749082972

`(p?[A180646(n+1)]-1)/A020639(2*(n+1))`
-/

namespace A146480.P6000962621749082972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A146480.P6000962621749082972

