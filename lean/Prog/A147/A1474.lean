import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

/-!
# A147400: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1110-0111-0001 pattern in any orientation.

The programs for A147400, there is no canonical definition to state claims against.
-/

/-! ## A147400.P12241631131121509087

`A147402(2*(n+2))`
-/

namespace A147400.P12241631131121509087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147402 (2 * (n + 2))

end

end A147400.P12241631131121509087

/-! ## A147400.P12742347731756337924

`or(1, A147402(A103517(n+1)))`
-/

namespace A147400.P12742347731756337924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147402 (A103517 (n + 1)).toNat)

end

end A147400.P12742347731756337924

/-! ## A147400.P10677407207282886638

`or(1, A147402(A144396(n+1)))`
-/

namespace A147400.P10677407207282886638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147402 (A144396 (n + 1)).toNat)

end

end A147400.P10677407207282886638

/-! ## A147400.P12461015917544880726

`∏{d}[A144396(n+1), A147402(#)]`
-/

namespace A147400.P12461015917544880726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147402 d

end

end A147400.P12461015917544880726

/-! ## A147400.P692319554742259376

`A290966(A146449(n+2))+Δ[A146606(n+3)]`
-/

namespace A147400.P692319554742259376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146606 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290966 (A146449 (n + 2)).toNat + (f1 (n + 1) - f1 n)

end

end A147400.P692319554742259376

/-!
# A147401: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1110-0111-0001 pattern in any orientation.

The programs for A147401, there is no canonical definition to state claims against.
-/

/-! ## A147401.P7994122360185049456

`A224698(A369765(n))`
-/

namespace A147401.P7994122360185049456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224698 (A369765 n).toNat

end

end A147401.P7994122360185049456

/-! ## A147401.P10735751139758065646

`A342515(A127193(n+1))`
-/

namespace A147401.P10735751139758065646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A127193 (n + 1)).toNat

end

end A147401.P10735751139758065646

/-! ## A147401.P11689812959553998709

`A352241(A147357(n+1))`
-/

namespace A147401.P11689812959553998709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352241 (A147357 (n + 1)).toNat

end

end A147401.P11689812959553998709

/-! ## A147401.P3558769293640281927

`A196879(n)+A111660(A127193(n+1))`
-/

namespace A147401.P3558769293640281927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 n + A111660 (A127193 (n + 1)).toNat

end

end A147401.P3558769293640281927

/-!
# A147402: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1110-0111-0001 pattern in any orientation.

The programs for A147402, there is no canonical definition to state claims against.
-/

/-! ## A147402.P301211066196485304

`A147400(∑[char[2*(char[1]+n)]])`
-/

namespace A147402.P301211066196485304
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f3 j = n then 1 else 0) + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147402.P301211066196485304

/-!
# A147403: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1110-0111-0001 pattern in any orientation.

The programs for A147403, there is no canonical definition to state claims against.
-/

/-! ## A147403.P12338577508614280315

`A343380(A147227(n+1))+A147199(n+1)`
-/

namespace A147403.P12338577508614280315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A147227 (n + 1)).toNat + A147199 (n + 1)

end

end A147403.P12338577508614280315

/-!
# A147405: Number of n X n binary arrays with all ones connected only in a 1001-1001-1111 pattern in any orientation.

The programs for A147405, there is no canonical definition to state claims against.
-/

/-! ## A147405.P11010089606736008069

`A147407(2*n+3)`
-/

namespace A147405.P11010089606736008069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147407 (2 * n + 3)

end

end A147405.P11010089606736008069

/-! ## A147405.P12153075475236001436

`or(1, A147407(A144396(n+1)))`
-/

namespace A147405.P12153075475236001436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147407 (A144396 (n + 1)).toNat)

end

end A147405.P12153075475236001436

/-! ## A147405.P9405707396144447863

`A185284(n)+A147407(A144396(n+1))`
-/

namespace A147405.P9405707396144447863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A147407 (A144396 (n + 1)).toNat

end

end A147405.P9405707396144447863

/-! ## A147405.P16776331275226408673

`A147407(A144396(n+1))%A154407(n)`
-/

namespace A147405.P16776331275226408673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147407 (A144396 (n + 1)).toNat) (A154407 n)

end

end A147405.P16776331275226408673

/-! ## A147405.P11030522945070325894

`A147407(A144396(n+1))^A147454(n+1)`
-/

namespace A147405.P11030522945070325894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147407 (A144396 (n + 1)).toNat : ℚ) ^ (A147454 (n + 1) : ℤ)

end

end A147405.P11030522945070325894

/-!
# A147408: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1001-1001-1111 pattern in any orientation.

The programs for A147408, there is no canonical definition to state claims against.
-/

/-! ## A147408.P17713387966706690093

`A147410(2*n+3)`
-/

namespace A147408.P17713387966706690093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147410 (2 * n + 3)

end

end A147408.P17713387966706690093

/-! ## A147408.P17505987830011336888

`or(1, A147410(A144396(n+1)))`
-/

namespace A147408.P17505987830011336888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147410 (A144396 (n + 1)).toNat)

end

end A147408.P17505987830011336888

/-! ## A147408.P655000315144885663

`A185284(n)+A147410(A144396(n+1))`
-/

namespace A147408.P655000315144885663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A147410 (A144396 (n + 1)).toNat

end

end A147408.P655000315144885663

/-! ## A147408.P3291582296252395436

`A243831(n)+A147410(A144396(n+1))`
-/

namespace A147408.P3291582296252395436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243831 n + A147410 (A144396 (n + 1)).toNat

end

end A147408.P3291582296252395436

/-! ## A147408.P5727595429319605955

`A084616(A068042(n+1))`
-/

namespace A147408.P5727595429319605955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084616 (A068042 (n + 1)).toNat

end

end A147408.P5727595429319605955

/-!
# A147409: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1001-1001-1111 pattern in any orientation.

The programs for A147409, there is no canonical definition to state claims against.
-/

/-! ## A147409.P17032810601640924215

`A213257(A147456(n+1))`
-/

namespace A147409.P17032810601640924215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213257 (A147456 (n + 1)).toNat

end

end A147409.P17032810601640924215

/-! ## A147409.P836568066917659545

`A147342(n+1)-A048002(n+1)`
-/

namespace A147409.P836568066917659545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147342 (n + 1) - A048002 (n + 1)

end

end A147409.P836568066917659545

/-! ## A147409.P13390952518931341107

`A147342(n+1)-A256865(A147343(n+1))`
-/

namespace A147409.P13390952518931341107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147342 (n + 1) - A256865 (A147343 (n + 1)).toNat

end

end A147409.P13390952518931341107

/-!
# A147411: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1001-1001-1111 pattern in any orientation.

The programs for A147411, there is no canonical definition to state claims against.
-/

/-! ## A147411.P6164554177087932510

`A105356(A146931(n+1))`
-/

namespace A147411.P6164554177087932510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A146931 (n + 1)).toNat

end

end A147411.P6164554177087932510

/-! ## A147411.P12319687590944053390

`or(A146590(n+1), A290456(A146590(n+1)))`
-/

namespace A147411.P12319687590944053390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146590 (n + 1)) (A290456 (A146590 (n + 1)).toNat)

end

end A147411.P12319687590944053390

/-! ## A147411.P6751123320202582780

`A156724(3*A146931(n+1))`
-/

namespace A147411.P6751123320202582780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (3 * A146931 (n + 1)).toNat

end

end A147411.P6751123320202582780

/-! ## A147411.P1078281203985675595

`A324692(A146636(n+2))+A146590(n+1)`
-/

namespace A147411.P1078281203985675595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A146636 (n + 2)).toNat + A146590 (n + 1)

end

end A147411.P1078281203985675595

/-! ## A147411.P4411655570378148555

`A182840(∑[A026802(2*(n+2))^A264760(2*(n+1))])`
-/

namespace A147411.P4411655570378148555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026802 (2 * (n + 2)) : ℚ) ^ (A264760 (2 * (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182840 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A147411.P4411655570378148555

/-!
# A147412: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1001-1001-1111 pattern in any orientation.

The programs for A147412, there is no canonical definition to state claims against.
-/

/-! ## A147412.P4949541848431642656

`or(A146794(n+1), A146796(A036561(n)))`
-/

namespace A147412.P4949541848431642656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146794 (n + 1)) (A146796 (A036561 n).toNat)

end

end A147412.P4949541848431642656

/-! ## A147412.P7520137363964296403

`or(A146794(n+1), A146796(A018338(n+1)))`
-/

namespace A147412.P7520137363964296403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146794 (n + 1)) (A146796 (A018338 (n + 1)).toNat)

end

end A147412.P7520137363964296403

/-! ## A147412.P1456330927269515991

`or(A146712(A146662(n+1)), A146794(n+1))`
-/

namespace A147412.P1456330927269515991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146712 (A146662 (n + 1)).toNat) (A146794 (n + 1))

end

end A147412.P1456330927269515991

/-! ## A147412.P10768412212758299884

`or(A146712(A146670(n+1)), A146794(n+1))`
-/

namespace A147412.P10768412212758299884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146712 (A146670 (n + 1)).toNat) (A146794 (n + 1))

end

end A147412.P10768412212758299884

/-! ## A147412.P4184774415729260416

`or(A146712(A146694(n+1)), A146794(n+1))`
-/

namespace A147412.P4184774415729260416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146712 (A146694 (n + 1)).toNat) (A146794 (n + 1))

end

end A147412.P4184774415729260416

/-!
# A147413: Number of n X n binary arrays with all ones connected only in a 1001-1111-0110 pattern in any orientation.

The programs for A147413, there is no canonical definition to state claims against.
-/

/-! ## A147413.P16259363215878271101

`A147415(2*n+3)`
-/

namespace A147413.P16259363215878271101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147415 (2 * n + 3)

end

end A147413.P16259363215878271101

/-! ## A147413.P7705717250955611811

`A147415(Δ[(n+1)²])+char[11]`
-/

namespace A147413.P7705717250955611811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147415 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A147413.P7705717250955611811

/-! ## A147413.P17047388144902286454

`∏{d}[A174392(n+1), A147415(#)]`
-/

namespace A147413.P17047388144902286454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147415 d

end

end A147413.P17047388144902286454

/-!
# A147415: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1001-1111-0110 pattern in any orientation.

The programs for A147415, there is no canonical definition to state claims against.
-/

/-! ## A147415.P13787577560887384510

`A067032(A069905(n)!)`
-/

namespace A147415.P13787577560887384510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 (Nat.factorial (A069905 n).toNat)

end

end A147415.P13787577560887384510

/-! ## A147415.P7599220463144261602

`A067032(A359348(n)!)`
-/

namespace A147415.P7599220463144261602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 (Nat.factorial (A359348 n).toNat)

end

end A147415.P7599220463144261602

/-! ## A147415.P130739049653662759

`A052494(A042765(n+1))`
-/

namespace A147415.P130739049653662759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052494 (A042765 (n + 1)).toNat

end

end A147415.P130739049653662759

/-! ## A147415.P4918531030319061484

`A134564(A000927(n+2))`
-/

namespace A147415.P4918531030319061484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134564 (A000927 (n + 2)).toNat

end

end A147415.P4918531030319061484

/-! ## A147415.P8568076962989388745

`A134564(A055513(n+2))`
-/

namespace A147415.P8568076962989388745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134564 (A055513 (n + 2)).toNat

end

end A147415.P8568076962989388745

/-!
# A147416: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1001-1111-0110 pattern in any orientation.

The programs for A147416, there is no canonical definition to state claims against.
-/

/-! ## A147416.P280928361406270278

`A156667(A147445(n+1))+A147356(n+1)`
-/

namespace A147416.P280928361406270278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156667 (A147445 (n + 1)).toNat + A147356 (n + 1)

end

end A147416.P280928361406270278

/-! ## A147416.P1500817700345921188

`A163123(A147395(n+1))+A147356(n+1)`
-/

namespace A147416.P1500817700345921188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163123 (A147395 (n + 1)).toNat + A147356 (n + 1)

end

end A147416.P1500817700345921188

/-!
# A147417: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1001-1111-0110 pattern in any orientation.

The programs for A147417, there is no canonical definition to state claims against.
-/

/-! ## A147417.P9207984612004962645

`A158366(A147357(n+1))`
-/

namespace A147417.P9207984612004962645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158366 (A147357 (n + 1)).toNat

end

end A147417.P9207984612004962645

/-!
# A147419: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1001-1111-0110 pattern in any orientation.

The programs for A147419, there is no canonical definition to state claims against.
-/

/-! ## A147419.P16325737730900840476

`A343886(A007661(n))`
-/

namespace A147419.P16325737730900840476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343886 (A007661 n).toNat

end

end A147419.P16325737730900840476

/-! ## A147419.P2359220670194169658

`A157477(A229885(n))`
-/

namespace A147419.P2359220670194169658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A229885 n).toNat

end

end A147419.P2359220670194169658

/-! ## A147419.P5261826141104532235

`A295084(A099962(n))`
-/

namespace A147419.P5261826141104532235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295084 (A099962 n).toNat

end

end A147419.P5261826141104532235

/-! ## A147419.P15621146059508343247

`A346130(A351754(n))`
-/

namespace A147419.P15621146059508343247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A351754 n).toNat

end

end A147419.P15621146059508343247

/-! ## A147419.P13032453243567346526

`A360600(A146904(n+1))`
-/

namespace A147419.P13032453243567346526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360600 (A146904 (n + 1)).toNat

end

end A147419.P13032453243567346526

/-!
# A147423: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 10101-11111 pattern in any orientation.

The programs for A147423, there is no canonical definition to state claims against.
-/

/-! ## A147423.P3919928993451035918

`A340085(A001654(n)+7)`
-/

namespace A147423.P3919928993451035918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340085 (A001654 n + 7).toNat

end

end A147423.P3919928993451035918

/-!
# A147424: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 10101-11111 pattern in any orientation.

The programs for A147424, there is no canonical definition to state claims against.
-/

/-! ## A147424.P15321928473964668630

`or(A147492(n+1), A147495(A081408(n)))`
-/

namespace A147424.P15321928473964668630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147492 (n + 1)) (A147495 (A081408 n).toNat)

end

end A147424.P15321928473964668630

/-! ## A147424.P5919073652332327232

`or(A147492(n+1), A147493(A110751(n+1)))`
-/

namespace A147424.P5919073652332327232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147492 (n + 1)) (A147493 (A110751 (n + 1)).toNat)

end

end A147424.P5919073652332327232

/-! ## A147424.P11133822967303885716

`or(A147362(A147430(n+1)), A147492(n+1))`
-/

namespace A147424.P11133822967303885716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147362 (A147430 (n + 1)).toNat) (A147492 (n + 1))

end

end A147424.P11133822967303885716

/-! ## A147424.P12473436106107694644

`or(A147433(A147393(n+1)), A147492(n+1))`
-/

namespace A147424.P12473436106107694644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147433 (A147393 (n + 1)).toNat) (A147492 (n + 1))

end

end A147424.P12473436106107694644

/-!
# A147425: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 10101-11111 pattern in any orientation.

The programs for A147425, there is no canonical definition to state claims against.
-/

/-! ## A147425.P6006764485799288596

`A194967(A147087(n+1))`
-/

namespace A147425.P6006764485799288596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (A147087 (n + 1)).toNat

end

end A147425.P6006764485799288596

/-! ## A147425.P13837739562094217903

`(A273190(A174613(n)+7)+A147087(n+1))/2`
-/

namespace A147425.P13837739562094217903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273190 (A174613 n + 7).toNat + A147087 (n + 1) : ℚ) / 2

end

end A147425.P13837739562094217903

/-! ## A147425.P7955686647641638557

`(A239931(A363124(n)^A054896(n))+A147087(n+1))/2`
-/

namespace A147425.P7955686647641638557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239931 (SequenceMachineLib.roundAway ((A363124 n : ℚ) ^ (A054896 n : ℤ))).toNat + A147087 (n + 1) : ℚ) / 2

end

end A147425.P7955686647641638557

/-!
# A147426: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 10101-11111 pattern in any orientation.

The programs for A147426, there is no canonical definition to state claims against.
-/

/-! ## A147426.P16290990910343827515

`A291168(A048896(n)+A000096(n))`
-/

namespace A147426.P16290990910343827515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (A048896 n + A000096 n).toNat

end

end A147426.P16290990910343827515

/-! ## A147426.P13976681739009414112

`A291168(A026906(n+3)-A024788(n+1))`
-/

namespace A147426.P13976681739009414112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (A026906 (n + 3) - A024788 (n + 1)).toNat

end

end A147426.P13976681739009414112

/-! ## A147426.P15801230403554128929

`or(A147448(A147464(n+1)), A147495(n+1))`
-/

namespace A147426.P15801230403554128929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147448 (A147464 (n + 1)).toNat) (A147495 (n + 1))

end

end A147426.P15801230403554128929

/-! ## A147426.P15420991481224816191

`or(A147448(A147485(n+1)), A147495(n+1))`
-/

namespace A147426.P15420991481224816191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147448 (A147485 (n + 1)).toNat) (A147495 (n + 1))

end

end A147426.P15420991481224816191

/-! ## A147426.P10218506188132815414

`or(A147448(A147448(n+2)), A147495(n+1))`
-/

namespace A147426.P10218506188132815414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147448 (A147448 (n + 2)).toNat) (A147495 (n + 1))

end

end A147426.P10218506188132815414

/-!
# A147427: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 10101-11111 pattern in any orientation.

The programs for A147427, there is no canonical definition to state claims against.
-/

/-! ## A147427.P3642360520559372006

`A382951(A226310(n+1))`
-/

namespace A147427.P3642360520559372006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382951 (A226310 (n + 1)).toNat

end

end A147427.P3642360520559372006

/-! ## A147427.P17933368938889058052

`A020986(A202274(n+1)*A335548(n))`
-/

namespace A147427.P17933368938889058052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (A202274 (n + 1) * A335548 n).toNat

end

end A147427.P17933368938889058052

/-!
# A147428: Number of n X n binary arrays with all ones connected only in a 1010-1111-0101 pattern in any orientation.

The programs for A147428, there is no canonical definition to state claims against.
-/

/-! ## A147428.P17516647488980943598

`A147430(2*(n+2))`
-/

namespace A147428.P17516647488980943598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147430 (2 * (n + 2))

end

end A147428.P17516647488980943598

/-! ## A147428.P16499998755914668707

`or(1, A147430(A144396(n+1)))`
-/

namespace A147428.P16499998755914668707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147430 (A144396 (n + 1)).toNat)

end

end A147428.P16499998755914668707

/-! ## A147428.P11905279058775786959

`∏{d}[A144396(n+1), A147430(#)]`
-/

namespace A147428.P11905279058775786959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147430 d

end

end A147428.P11905279058775786959

/-! ## A147428.P14523473778158283903

`A147430(A144396(n+1))/A147343(n+1)`
-/

namespace A147428.P14523473778158283903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147430 (A144396 (n + 1)).toNat : ℚ) / (A147343 (n + 1) : ℚ)

end

end A147428.P14523473778158283903

/-! ## A147428.P1229626418118365757

`C(A147430(A144396(n+1)), A147343(n+2))`
-/

namespace A147428.P1229626418118365757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A147430 (A144396 (n + 1)).toNat).toNat (A147343 (n + 2)).toNat

end

end A147428.P1229626418118365757

/-!
# A147429: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1010-1111-0101 pattern in any orientation.

The programs for A147429, there is no canonical definition to state claims against.
-/

/-! ## A147429.P1680041127648366581

`A143453(∑[floor(val(2^n, 8)^n/2)])`
-/

namespace A147429.P1680041127648366581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.valuation (2 ^ n) 8 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147429.P1680041127648366581

/-! ## A147429.P11378216204414022321

`or(1, A081753(A186247(n)))`
-/

namespace A147429.P11378216204414022321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081753 (A186247 n).toNat)

end

end A147429.P11378216204414022321

/-! ## A147429.P5517599305920745715

`or(1, Δ[A025460(A165545(n))])`
-/

namespace A147429.P5517599305920745715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 (A165545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A147429.P5517599305920745715

/-! ## A147429.P10497124205052265708

`A091564(6*A124482(n+1))`
-/

namespace A147429.P10497124205052265708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091564 (6 * A124482 (n + 1)).toNat

end

end A147429.P10497124205052265708

/-! ## A147429.P13683667147891342174

`A215818(C(n, A024791(n+1)))`
-/

namespace A147429.P13683667147891342174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (Nat.choose n (A024791 (n + 1)).toNat)

end

end A147429.P13683667147891342174

/-!
# A147430: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1010-1111-0101 pattern in any orientation.

The programs for A147430, there is no canonical definition to state claims against.
-/

/-! ## A147430.P3095682525450186139

`A350639(2^floor(n/2))`
-/

namespace A147430.P3095682525450186139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350639 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A147430.P3095682525450186139

/-! ## A147430.P13358445970619170452

`A147438(A316384(n)+n)`
-/

namespace A147430.P13358445970619170452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147438 (A316384 n + (n : ℤ)).toNat

end

end A147430.P13358445970619170452

/-! ## A147430.P9436714495946577401

`A327130(A147510(n+1))+A147499(n+1)`
-/

namespace A147430.P9436714495946577401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327130 (A147510 (n + 1)).toNat + A147499 (n + 1)

end

end A147430.P9436714495946577401

/-! ## A147430.P5892803239815238864

`A255554(A147141(n+1))-A070096(A147446(n+1))`
-/

namespace A147430.P5892803239815238864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255554 (A147141 (n + 1)).toNat - A070096 (A147446 (n + 1)).toNat

end

end A147430.P5892803239815238864

/-!
# A147431: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1010-1111-0101 pattern in any orientation.

The programs for A147431, there is no canonical definition to state claims against.
-/

/-! ## A147431.P4130946178793982584

`A147433(2*(n+2))`
-/

namespace A147431.P4130946178793982584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147433 (2 * (n + 2))

end

end A147431.P4130946178793982584

/-! ## A147431.P1985479950169561386

`or(1, A147433(A144396(n+1)))`
-/

namespace A147431.P1985479950169561386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147433 (A144396 (n + 1)).toNat)

end

end A147431.P1985479950169561386

/-! ## A147431.P17215441615692072527

`or(1, A147433(A160217(n+1)))`
-/

namespace A147431.P17215441615692072527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147433 (A160217 (n + 1)).toNat)

end

end A147431.P17215441615692072527

/-! ## A147431.P7338471485017787088

`A028310(A147433(Δ[(n+1)²]))`
-/

namespace A147431.P7338471485017787088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A147433 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A147431.P7338471485017787088

/-! ## A147431.P14731202582187117233

`∏{d}[A144396(n+1), A147433(#)]`
-/

namespace A147431.P14731202582187117233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147433 d

end

end A147431.P14731202582187117233

/-!
# A147432: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1010-1111-0101 pattern in any orientation.

The programs for A147432, there is no canonical definition to state claims against.
-/

/-! ## A147432.P56585308145525422

`A146369(n^A025152(n+2))`
-/

namespace A147432.P56585308145525422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146369 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025152 (n + 2) : ℤ))).toNat

end

end A147432.P56585308145525422

/-! ## A147432.P109482619591392340

`A147372(n+1)-A269243(A147445(n+1))`
-/

namespace A147432.P109482619591392340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147372 (n + 1) - A269243 (A147445 (n + 1)).toNat

end

end A147432.P109482619591392340

/-!
# A147433: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1010-1111-0101 pattern in any orientation.

The programs for A147433, there is no canonical definition to state claims against.
-/

/-! ## A147433.P12319987658377396924

`A117923(A147502(n+1))`
-/

namespace A147433.P12319987658377396924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117923 (A147502 (n + 1)).toNat

end

end A147433.P12319987658377396924

/-! ## A147433.P17291790634460431298

`A160532(A147402(n+1))`
-/

namespace A147433.P17291790634460431298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160532 (A147402 (n + 1)).toNat

end

end A147433.P17291790634460431298

/-! ## A147433.P16769983839891165664

`A347179(A147252(n+1))`
-/

namespace A147433.P16769983839891165664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347179 (A147252 (n + 1)).toNat

end

end A147433.P16769983839891165664

/-! ## A147433.P5957617847766572141

`or(A090176(n), A225859(A147252(n+1)))`
-/

namespace A147433.P5957617847766572141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090176 n) (A225859 (A147252 (n + 1)).toNat)

end

end A147433.P5957617847766572141

/-! ## A147433.P431397074077816000

`and(A146193(n+1)-2, A347179(A147190(n+1)))`
-/

namespace A147433.P431397074077816000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146193 (n + 1) - 2) (A347179 (A147190 (n + 1)).toNat)

end

end A147433.P431397074077816000

/-!
# A147434: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1010-1111-0101 pattern in any orientation.

The programs for A147434, there is no canonical definition to state claims against.
-/

/-! ## A147434.P17678917069088686860

`A274773(A360814(n)+A274819(n+2))`
-/

namespace A147434.P17678917069088686860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (A360814 n + A274819 (n + 2)).toNat

end

end A147434.P17678917069088686860

/-! ## A147434.P12012184549309189137

`A123501(∏{p}[C(n, 6), #])`
-/

namespace A147434.P12012184549309189137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123501 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A147434.P12012184549309189137

/-! ## A147434.P17501752120375949657

`A291168(∑[abs(2*(2-n))])`
-/

namespace A147434.P17501752120375949657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (2 - (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147434.P17501752120375949657

/-! ## A147434.P7450758193658035734

`A123717(A229886(n))`
-/

namespace A147434.P7450758193658035734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123717 (A229886 n).toNat

end

end A147434.P7450758193658035734

/-! ## A147434.P15628601369508396247

`A115323(A049148(n+1))`
-/

namespace A147434.P15628601369508396247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115323 (A049148 (n + 1)).toNat

end

end A147434.P15628601369508396247

/-!
# A147436: Number of n X n binary arrays with all ones connected only in a 1010-1111-1010 pattern in any orientation.

The programs for A147436, there is no canonical definition to state claims against.
-/

/-! ## A147436.P4917293934691995771

`A147438(2*(n+2))`
-/

namespace A147436.P4917293934691995771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147438 (2 * (n + 2))

end

end A147436.P4917293934691995771

/-! ## A147436.P4890468770100143614

`A147438(A103517(n+1))/A147395(n+1)`
-/

namespace A147436.P4890468770100143614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147438 (A103517 (n + 1)).toNat : ℚ) / (A147395 (n + 1) : ℚ)

end

end A147436.P4890468770100143614

/-! ## A147436.P12894343233181617317

`A147438(A103517(n+1))/A147399(n+1)`
-/

namespace A147436.P12894343233181617317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147438 (A103517 (n + 1)).toNat : ℚ) / (A147399 (n + 1) : ℚ)

end

end A147436.P12894343233181617317

/-!
# A147438: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1010-1111-1010 pattern in any orientation.

The programs for A147438, there is no canonical definition to state claims against.
-/

/-! ## A147438.P12947879830347609705

`A000011(A059053(n)^A007318(n))`
-/

namespace A147438.P12947879830347609705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (SequenceMachineLib.roundAway ((A059053 n : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A147438.P12947879830347609705

/-! ## A147438.P13463494620948874688

`A000011(A308706(n)^A007318(n))`
-/

namespace A147438.P13463494620948874688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (SequenceMachineLib.roundAway ((A308706 n : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A147438.P13463494620948874688

/-! ## A147438.P3490068500972616556

`A000011(A059053(n)^A010766(2*n+1))`
-/

namespace A147438.P3490068500972616556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (SequenceMachineLib.roundAway ((A059053 n : ℚ) ^ (A010766 (2 * n + 1) : ℤ))).toNat

end

end A147438.P3490068500972616556

/-!
# A147439: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1010-1111-1010 pattern in any orientation.

The programs for A147439, there is no canonical definition to state claims against.
-/

/-! ## A147439.P973885019924700098

`A176253(A068038(n+1))`
-/

namespace A147439.P973885019924700098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176253 (A068038 (n + 1)).toNat

end

end A147439.P973885019924700098

/-! ## A147439.P17166550353027971306

`A342441(A147371(n+1))`
-/

namespace A147439.P17166550353027971306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342441 (A147371 (n + 1)).toNat

end

end A147439.P17166550353027971306

/-! ## A147439.P1589920258884751838

`A337108(A317131(n))+1`
-/

namespace A147439.P1589920258884751838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (A317131 n).toNat + 1

end

end A147439.P1589920258884751838

/-! ## A147439.P1759914197659047958

`A055181(A046650(n+2))`
-/

namespace A147439.P1759914197659047958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055181 (A046650 (n + 2)).toNat

end

end A147439.P1759914197659047958

/-! ## A147439.P9875401723509658249

`A344291(ceil(A299044(n)/A376716(n)))`
-/

namespace A147439.P9875401723509658249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 ⌈(A299044 n : ℚ) / (A376716 n : ℚ)⌉.toNat

end

end A147439.P9875401723509658249

/-!
# A147443: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1010-1111-1010 pattern in any orientation.

The programs for A147443, there is no canonical definition to state claims against.
-/

/-! ## A147443.P18410206440345967060

`A032570(or(1, A032350(n+1)))`
-/

namespace A147443.P18410206440345967060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032570 (Int.lor 1 (A032350 (n + 1))).toNat

end

end A147443.P18410206440345967060

/-! ## A147443.P15570964811600532436

`A032570(A032350(n+1)+A000035(n))`
-/

namespace A147443.P15570964811600532436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032570 (A032350 (n + 1) + A000035 n).toNat

end

end A147443.P15570964811600532436

/-!
# A147444: Number of n X n binary arrays with all ones connected only in a 11000-01100-00110-00011 pattern in any orientation.

The programs for A147444, there is no canonical definition to state claims against.
-/

/-! ## A147444.P13838289220115492874

`A147446(2*n+3)`
-/

namespace A147444.P13838289220115492874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147446 (2 * n + 3)

end

end A147444.P13838289220115492874

/-! ## A147444.P16960593473691679946

`or(1, A147446(A103517(n)+1))`
-/

namespace A147444.P16960593473691679946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147446 (A103517 n + 1).toNat)

end

end A147444.P16960593473691679946

/-! ## A147444.P7044228825537550903

`or(1, A147446(A144396(n+1)))`
-/

namespace A147444.P7044228825537550903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147446 (A144396 (n + 1)).toNat)

end

end A147444.P7044228825537550903

/-! ## A147444.P15091143751468903799

`A147446(A144396(n+1))/A014802(n)`
-/

namespace A147444.P15091143751468903799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147446 (A144396 (n + 1)).toNat : ℚ) / (A014802 n : ℚ)

end

end A147444.P15091143751468903799

/-! ## A147444.P1008833935390008837

`A147446(A144396(n+1))%A016952(n)`
-/

namespace A147444.P1008833935390008837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147446 (A144396 (n + 1)).toNat) (A016952 n)

end

end A147444.P1008833935390008837

/-!
# A147446: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 11000-01100-00110-00011 pattern in any orientation.

The programs for A147446, there is no canonical definition to state claims against.
-/

/-! ## A147446.P15287491994007886385

`A032568(A147499(n+1))`
-/

namespace A147446.P15287491994007886385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A147499 (n + 1)).toNat

end

end A147446.P15287491994007886385

/-! ## A147446.P16154973708124652440

`A160325(A056457(n+1))`
-/

namespace A147446.P16154973708124652440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160325 (A056457 (n + 1)).toNat

end

end A147446.P16154973708124652440

/-! ## A147446.P10681447307063576009

`A160325(A056467(n+1))`
-/

namespace A147446.P10681447307063576009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160325 (A056467 (n + 1)).toNat

end

end A147446.P10681447307063576009

/-! ## A147446.P5767455855785507609

`A072088(A147378(n+1))`
-/

namespace A147446.P5767455855785507609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A147378 (n + 1)).toNat

end

end A147446.P5767455855785507609

/-! ## A147446.P11356966184685277663

`A089654(A147187(n+1))`
-/

namespace A147446.P11356966184685277663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089654 (A147187 (n + 1)).toNat

end

end A147446.P11356966184685277663

/-!
# A147447: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 11000-01100-00110-00011 pattern in any orientation.

The programs for A147447, there is no canonical definition to state claims against.
-/

/-! ## A147447.P11647730969867682344

`A147449(2*(n+2))`
-/

namespace A147447.P11647730969867682344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147449 (2 * (n + 2))

end

end A147447.P11647730969867682344

/-! ## A147447.P6760135523412919689

`or(1, A147449(A144396(n+1)))`
-/

namespace A147447.P6760135523412919689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147449 (A144396 (n + 1)).toNat)

end

end A147447.P6760135523412919689

/-! ## A147447.P3270965030591146599

`or(1, A147449(A183987(n+1)))`
-/

namespace A147447.P3270965030591146599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147449 (A183987 (n + 1)).toNat)

end

end A147447.P3270965030591146599

/-! ## A147447.P4049588992834583600

`or(1, A147449(A353076(n+1)))`
-/

namespace A147447.P4049588992834583600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147449 (A353076 (n + 1)).toNat)

end

end A147447.P4049588992834583600

/-! ## A147447.P17795658009671244868

`or(1, A147449(A004273(n+2)))`
-/

namespace A147447.P17795658009671244868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147449 (A004273 (n + 2)).toNat)

end

end A147447.P17795658009671244868

/-!
# A147448: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 11000-01100-00110-00011 pattern in any orientation.

The programs for A147448, there is no canonical definition to state claims against.
-/

/-! ## A147448.P8978179775710914532

`∏{d}[1-n, A146449(#)]`
-/

namespace A147448.P8978179775710914532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146449 d

end

end A147448.P8978179775710914532

/-! ## A147448.P14797510271627269335

`A146449((2*n)%(n+2)+1)`
-/

namespace A147448.P14797510271627269335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146449 (2 * n % (n + 2) + 1)

end

end A147448.P14797510271627269335

/-! ## A147448.P14221074198051535858

`A146449(∑[∑[∑[n+1]]²%3]+1)`
-/

namespace A147448.P14221074198051535858
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146449 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A147448.P14221074198051535858

/-! ## A147448.P5711339968309377468

`A146449(A324346(n))`
-/

namespace A147448.P5711339968309377468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146449 (A324346 n).toNat

end

end A147448.P5711339968309377468

/-! ## A147448.P893052615906283121

`A146449(A324347(n))`
-/

namespace A147448.P893052615906283121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146449 (A324347 n).toNat

end

end A147448.P893052615906283121

/-!
# A147449: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 11000-01100-00110-00011 pattern in any orientation.

The programs for A147449, there is no canonical definition to state claims against.
-/

/-! ## A147449.P15558808342851267864

`A118765(A147252(n+1))`
-/

namespace A147449.P15558808342851267864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A147252 (n + 1)).toNat

end

end A147449.P15558808342851267864

/-! ## A147449.P13964014091804711950

`A173815(A147190(n+1))`
-/

namespace A147449.P13964014091804711950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173815 (A147190 (n + 1)).toNat

end

end A147449.P13964014091804711950

/-! ## A147449.P2497493078005744132

`A239963(A146237(n+1))`
-/

namespace A147449.P2497493078005744132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239963 (A146237 (n + 1)).toNat

end

end A147449.P2497493078005744132

/-! ## A147449.P1607517651549805578

`A123093(A147402(n+1))-A360676(A146828(n+1))`
-/

namespace A147449.P1607517651549805578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123093 (A147402 (n + 1)).toNat - A360676 (A146828 (n + 1)).toNat

end

end A147449.P1607517651549805578

/-! ## A147449.P1413485568721408944

`A123093(A147402(n+1))-A360676(A147120(n+1))`
-/

namespace A147449.P1413485568721408944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123093 (A147402 (n + 1)).toNat - A360676 (A147120 (n + 1)).toNat

end

end A147449.P1413485568721408944

/-!
# A147450: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 11000-01100-00110-00011 pattern in any orientation.

The programs for A147450, there is no canonical definition to state claims against.
-/

/-! ## A147450.P1604169288532550462

`A129618(A250666(n))`
-/

namespace A147450.P1604169288532550462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (A250666 n).toNat

end

end A147450.P1604169288532550462

/-! ## A147450.P255676234185900528

`A274988(A127194(n+2))`
-/

namespace A147450.P255676234185900528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274988 (A127194 (n + 2)).toNat

end

end A147450.P255676234185900528

/-! ## A147450.P411574539108861576

`A038566(A268199(n)^A093347(n+4))`
-/

namespace A147450.P411574539108861576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.roundAway ((A268199 n : ℚ) ^ (A093347 (n + 4) : ℤ))).toNat

end

end A147450.P411574539108861576

/-! ## A147450.P17145736128622382939

`A343251(A133512(n+5)^A024794(n+1))`
-/

namespace A147450.P17145736128622382939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343251 (SequenceMachineLib.roundAway ((A133512 (n + 5) : ℚ) ^ (A024794 (n + 1) : ℤ))).toNat

end

end A147450.P17145736128622382939

/-! ## A147450.P13838332615110639685

`A004159(A036370(n)+Δ[A034515(3*(n+1))])`
-/

namespace A147450.P13838332615110639685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034515 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A036370 n + (f1 (n + 1) - f1 n)).toNat

end

end A147450.P13838332615110639685

/-!
# A147451: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 11000-01100-00110-00011 pattern in any orientation.

The programs for A147451, there is no canonical definition to state claims against.
-/

/-! ## A147451.P9980485086033814256

`A147112(2*(n+3))+1-A147106(n+1)`
-/

namespace A147451.P9980485086033814256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147112 (2 * (n + 3)) + 1 - A147106 (n + 1)

end

end A147451.P9980485086033814256

/-! ## A147451.P6829806375737119578

`A002635(xor(A000110(n), A059841(n)))`
-/

namespace A147451.P6829806375737119578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (Int.xor (A000110 n) (A059841 n)).toNat

end

end A147451.P6829806375737119578

/-! ## A147451.P6776488010624361211

`A002635(xor(A000110(n), A090176(n)))`
-/

namespace A147451.P6776488010624361211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (Int.xor (A000110 n) (A090176 n)).toNat

end

end A147451.P6776488010624361211

/-!
# A147452: Number of n X n binary arrays with all ones connected only in a 11000-01111-11000 pattern in any orientation.

The programs for A147452, there is no canonical definition to state claims against.
-/

/-! ## A147452.P787335185895696428

`A147454(2*(n+2))`
-/

namespace A147452.P787335185895696428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147454 (2 * (n + 2))

end

end A147452.P787335185895696428

/-! ## A147452.P2312950021058879505

`or(A067397(n), A147454(A336066(n+1)))`
-/

namespace A147452.P2312950021058879505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067397 n) (A147454 (A336066 (n + 1)).toNat)

end

end A147452.P2312950021058879505

/-! ## A147452.P414295782212900340

`A147454(A336066(n+1))+A098852(n+1)`
-/

namespace A147452.P414295782212900340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147454 (A336066 (n + 1)).toNat + A098852 (n + 1)

end

end A147452.P414295782212900340

/-! ## A147452.P10596730418605823129

`A147454(A336066(n+1))^A147454(n+1)`
-/

namespace A147452.P10596730418605823129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147454 (A336066 (n + 1)).toNat : ℚ) ^ (A147454 (n + 1) : ℤ)

end

end A147452.P10596730418605823129

/-! ## A147452.P9717521920729269176

`A147454(A336066(n+1))/A147454(A147454(n+1)²)`
-/

namespace A147452.P9717521920729269176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147454 (A336066 (n + 1)).toNat : ℚ) / (A147454 (A147454 (n + 1) ^ 2).toNat : ℚ)

end

end A147452.P9717521920729269176

/-!
# A147453: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 11000-01111-11000 pattern in any orientation.

The programs for A147453, there is no canonical definition to state claims against.
-/

/-! ## A147453.P4204402347920815856

`A123244(A001222(n!))`
-/

namespace A147453.P4204402347920815856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123244 (A001222 (Nat.factorial n)).toNat

end

end A147453.P4204402347920815856

/-! ## A147453.P8274339669674800175

`A144269(record[A202389(n)])`
-/

namespace A147453.P8274339669674800175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144269 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147453.P8274339669674800175

/-! ## A147453.P5916991936677735034

`A144269(A215513(n+1)+1)`
-/

namespace A147453.P5916991936677735034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144269 (A215513 (n + 1) + 1).toNat

end

end A147453.P5916991936677735034

/-! ## A147453.P15968128571384192078

`A035342(floor(4^n/A060968(3^n)))`
-/

namespace A147453.P15968128571384192078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 ⌊(4 ^ n : ℚ) / (A060968 (3 ^ n) : ℚ)⌋.toNat

end

end A147453.P15968128571384192078

/-! ## A147453.P1789635678085971120

`A144269(C(n, 3)-A243055(n+2)+1)`
-/

namespace A147453.P1789635678085971120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144269 ((Nat.choose n 3 : ℤ) - A243055 (n + 2) + 1).toNat

end

end A147453.P1789635678085971120

/-!
# A147455: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 11000-01111-11000 pattern in any orientation.

The programs for A147455, there is no canonical definition to state claims against.
-/

/-! ## A147455.P12576235465239019402

`A147457(2*(n+2))`
-/

namespace A147455.P12576235465239019402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147457 (2 * (n + 2))

end

end A147455.P12576235465239019402

/-! ## A147455.P13904775383565868255

`A147457(A336066(n+1))^and(1, n)!`
-/

namespace A147455.P13904775383565868255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147457 (A336066 (n + 1)).toNat ^ Nat.factorial (Nat.land 1 n)

end

end A147455.P13904775383565868255

/-! ## A147455.P14642316834483789163

`A147457(A325038(n+1))%A005015(n)`
-/

namespace A147455.P14642316834483789163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147457 (A325038 (n + 1)).toNat) (A005015 n)

end

end A147455.P14642316834483789163

/-! ## A147455.P3587297635410506510

`A147457(A336066(n+1))%A005015(n)`
-/

namespace A147455.P3587297635410506510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147457 (A336066 (n + 1)).toNat) (A005015 n)

end

end A147455.P3587297635410506510

/-! ## A147455.P4573261049369579617

`A147457(A325038(n+1))+A101637(n+1)`
-/

namespace A147455.P4573261049369579617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147457 (A325038 (n + 1)).toNat + A101637 (n + 1)

end

end A147455.P4573261049369579617

/-!
# A147458: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 11000-01111-11000 pattern in any orientation.

The programs for A147458, there is no canonical definition to state claims against.
-/

/-! ## A147458.P1669395213137756571

`A174231(A068041(n))`
-/

namespace A147458.P1669395213137756571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (A068041 n).toNat

end

end A147458.P1669395213137756571

/-! ## A147458.P8441810755139203731

`A084827(A285981(n)+1)`
-/

namespace A147458.P8441810755139203731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084827 (A285981 n + 1).toNat

end

end A147458.P8441810755139203731

/-! ## A147458.P7505121836863168749

`A084827(or(1, A285981(n)))`
-/

namespace A147458.P7505121836863168749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084827 (Int.lor 1 (A285981 n)).toNat

end

end A147458.P7505121836863168749

/-! ## A147458.P18427872434354450094

`A287616(A074639(∑[C(n, 6)]))`
-/

namespace A147458.P18427872434354450094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287616 (A074639 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A147458.P18427872434354450094

/-! ## A147458.P6707063681133440822

`A146702(n+1)+A033665(A099132(n))`
-/

namespace A147458.P6707063681133440822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146702 (n + 1) + A033665 (A099132 n).toNat

end

end A147458.P6707063681133440822

/-!
# A147459: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 11000-01111-11000 pattern in any orientation.

The programs for A147459, there is no canonical definition to state claims against.
-/

/-! ## A147459.P5197546869207202786

`A334111(A287644(n+1)%A066897(n+1))`
-/

namespace A147459.P5197546869207202786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334111 (Int.tmod (A287644 (n + 1)) (A066897 (n + 1))).toNat

end

end A147459.P5197546869207202786

/-!
# A147460: Number of n X n binary arrays with all ones connected only in a 1100-1111-0011 pattern in any orientation.

The programs for A147460, there is no canonical definition to state claims against.
-/

/-! ## A147460.P2527491419931755336

`A147462(2*(n+2))`
-/

namespace A147460.P2527491419931755336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147462 (2 * (n + 2))

end

end A147460.P2527491419931755336

/-! ## A147460.P1161626079535652944

`A167688(n+1)+A147462(A144396(n+1))`
-/

namespace A147460.P1161626079535652944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (n + 1) + A147462 (A144396 (n + 1)).toNat

end

end A147460.P1161626079535652944

/-! ## A147460.P9251649263671321783

`A147462(A144396(n+1))/A147502(n+1)`
-/

namespace A147460.P9251649263671321783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147462 (A144396 (n + 1)).toNat : ℚ) / (A147502 (n + 1) : ℚ)

end

end A147460.P9251649263671321783

/-!
# A147461: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-1111-0011 pattern in any orientation.

The programs for A147461, there is no canonical definition to state claims against.
-/

/-! ## A147461.P11238341725540315498

`A180171(A309504(n))`
-/

namespace A147461.P11238341725540315498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180171 (A309504 n).toNat

end

end A147461.P11238341725540315498

/-! ## A147461.P7801673415357509897

`A076610(A092674(C(n, 6)+1)+1)`
-/

namespace A147461.P7801673415357509897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (A092674 (Nat.choose n 6 + 1) + 1).toNat

end

end A147461.P7801673415357509897

/-! ## A147461.P7000742310384184863

`A147414(or(xor(1, n), A147415(n+1)))`
-/

namespace A147461.P7000742310384184863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147414 (Int.lor (Nat.xor 1 n : ℤ) (A147415 (n + 1))).toNat

end

end A147461.P7000742310384184863

/-! ## A147461.P6606856382258585675

`A263109(A092986(n+1)-floor(n/5))`
-/

namespace A147461.P6606856382258585675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263109 (A092986 (n + 1) - ⌊(n : ℚ) / 5⌋).toNat

end

end A147461.P6606856382258585675

/-! ## A147461.P18224695798365470685

`A147414(or(n%or(1, n), A147415(n+1)))`
-/

namespace A147461.P18224695798365470685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147414 (Int.lor ((n % Nat.lor 1 n : ℕ) : ℤ) (A147415 (n + 1))).toNat

end

end A147461.P18224695798365470685

/-!
# A147462: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-1111-0011 pattern in any orientation.

The programs for A147462, there is no canonical definition to state claims against.
-/

/-! ## A147462.P102642922712363321

`A255554(A147141(n+1))`
-/

namespace A147462.P102642922712363321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255554 (A147141 (n + 1)).toNat

end

end A147462.P102642922712363321

/-! ## A147462.P9065369678697624195

`or(A147430(n+1), A147440(A147472(n+1)))`
-/

namespace A147462.P9065369678697624195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147430 (n + 1)) (A147440 (A147472 (n + 1)).toNat)

end

end A147462.P9065369678697624195

/-!
# A147463: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-1111-0011 pattern in any orientation.

The programs for A147463, there is no canonical definition to state claims against.
-/

/-! ## A147463.P85846630617814620

`A147334(A216556(n)+1)`
-/

namespace A147463.P85846630617814620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147334 (A216556 n + 1).toNat

end

end A147463.P85846630617814620

/-! ## A147463.P5839235924284894361

`A147334(A002998(n)+2)`
-/

namespace A147463.P5839235924284894361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147334 (A002998 n + 2).toNat

end

end A147463.P5839235924284894361

/-! ## A147463.P6541477627470950251

`A147334(A222220(n)+2)`
-/

namespace A147463.P6541477627470950251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147334 (A222220 n + 2).toNat

end

end A147463.P6541477627470950251

/-! ## A147463.P7999598495910005908

`A147334(A319725(n)+2)`
-/

namespace A147463.P7999598495910005908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147334 (A319725 n + 2).toNat

end

end A147463.P7999598495910005908

/-! ## A147463.P10272381094840238439

`A147334(A045918(n)-8)`
-/

namespace A147463.P10272381094840238439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147334 (A045918 n - 8).toNat

end

end A147463.P10272381094840238439

/-!
# A147464: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-1111-0011 pattern in any orientation.

The programs for A147464, there is no canonical definition to state claims against.
-/

/-! ## A147464.P4256489549279165306

`or(A147501(n+1), A324572(A147493(n+1)))`
-/

namespace A147464.P4256489549279165306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147501 (n + 1)) (A324572 (A147493 (n + 1)).toNat)

end

end A147464.P4256489549279165306

/-! ## A147464.P13348216658590447255

`or(A010872(A147321(n+1)), A147335(n+2))`
-/

namespace A147464.P13348216658590447255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010872 (A147321 (n + 1)).toNat) (A147335 (n + 2))

end

end A147464.P13348216658590447255

/-! ## A147464.P9892442126661785056

`or(A147501(n+1), A269245(A147432(n+1)²))`
-/

namespace A147464.P9892442126661785056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147501 (n + 1)) (A269245 (A147432 (n + 1) ^ 2).toNat)

end

end A147464.P9892442126661785056

/-! ## A147464.P5336239074156765514

`A147335(A077168(n+1))`
-/

namespace A147464.P5336239074156765514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147335 (A077168 (n + 1)).toNat

end

end A147464.P5336239074156765514

/-! ## A147464.P12901714966882647567

`A089657(A147432(n+1))`
-/

namespace A147464.P12901714966882647567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089657 (A147432 (n + 1)).toNat

end

end A147464.P12901714966882647567

/-!
# A147465: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-1111-0011 pattern in any orientation.

The programs for A147465, there is no canonical definition to state claims against.
-/

/-! ## A147465.P10301972233620627960

`A037162(∏{p}[A251760(2*(n+1))-n, #])`
-/

namespace A147465.P10301972233620627960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (2 * (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037162 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A147465.P10301972233620627960

/-! ## A147465.P18060766021508967014

`or(A026492(n), A316945(A374634(n)))`
-/

namespace A147465.P18060766021508967014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026492 n) (A316945 (A374634 n).toNat)

end

end A147465.P18060766021508967014

/-! ## A147465.P10975435313353759632

`or(A047996(n), A316945(A374634(n)))`
-/

namespace A147465.P10975435313353759632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047996 n) (A316945 (A374634 n).toNat)

end

end A147465.P10975435313353759632

/-! ## A147465.P595949345690294099

`A119338(∪[A110363(n+1), A363040(n+1)])`
-/

namespace A147465.P595949345690294099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A147465.P595949345690294099

/-! ## A147465.P3743063557324387175

`A172312(A060455(n))`
-/

namespace A147465.P3743063557324387175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172312 (A060455 n).toNat

end

end A147465.P3743063557324387175

/-!
# A147467: Number of n X n binary arrays with all ones connected only in a 1100-1111-0100-0100 pattern in any orientation.

The programs for A147467, there is no canonical definition to state claims against.
-/

/-! ## A147467.P4728574429665785000

`A147469(2*(n+2))`
-/

namespace A147467.P4728574429665785000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147469 (2 * (n + 2))

end

end A147467.P4728574429665785000

/-! ## A147467.P6376787237025292269

`or(1, A147469(A325038(n+1)))`
-/

namespace A147467.P6376787237025292269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147469 (A325038 (n + 1)).toNat)

end

end A147467.P6376787237025292269

/-! ## A147467.P9292188865867575989

`or(1, A147469(A336066(n+1)))`
-/

namespace A147467.P9292188865867575989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147469 (A336066 (n + 1)).toNat)

end

end A147467.P9292188865867575989

/-! ## A147467.P1602214495141399633

`A147469(A325038(n+1))+A101637(n+1)`
-/

namespace A147467.P1602214495141399633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147469 (A325038 (n + 1)).toNat + A101637 (n + 1)

end

end A147467.P1602214495141399633

/-! ## A147467.P18021272009087936275

`A147469(A336066(n+1))+A101637(n+1)`
-/

namespace A147467.P18021272009087936275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147469 (A336066 (n + 1)).toNat + A101637 (n + 1)

end

end A147467.P18021272009087936275

/-!
# A147469: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-1111-0100-0100 pattern in any orientation.

The programs for A147469, there is no canonical definition to state claims against.
-/

/-! ## A147469.P8838318878552755998

`A146719(lt[5, A059343(2*n+1)])`
-/

namespace A147469.P8838318878552755998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059343 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A147469.P8838318878552755998

/-! ## A147469.P17604541257111422532

`A146721(n+1)%2*A146719(n+5)`
-/

namespace A147469.P17604541257111422532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146721 (n + 1)) 2 * A146719 (n + 5)

end

end A147469.P17604541257111422532

/-! ## A147469.P3183103210176866760

`A146719(n+5)^A003415(A214732(n))`
-/

namespace A147469.P3183103210176866760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146719 (n + 5) : ℚ) ^ (A003415 (A214732 n).toNat : ℤ)

end

end A147469.P3183103210176866760

/-! ## A147469.P8921883760737600473

`A146719(lt[A059343(2*n), A007504(n)])`
-/

namespace A147469.P8921883760737600473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059343 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146719 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147469.P8921883760737600473

/-! ## A147469.P6834307021974713305

`A146719(n+5)+A007814(A146708(n+1))`
-/

namespace A147469.P6834307021974713305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146719 (n + 5) + A007814 (A146708 (n + 1)).toNat

end

end A147469.P6834307021974713305

/-!
# A147470: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-1111-0100-0100 pattern in any orientation.

The programs for A147470, there is no canonical definition to state claims against.
-/

/-! ## A147470.P10333382172925659612

`A147472(2*(n+2))`
-/

namespace A147470.P10333382172925659612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147472 (2 * (n + 2))

end

end A147470.P10333382172925659612

/-! ## A147470.P15909299319320667452

`A261596(n+1)+A147472(A092858(n+1))`
-/

namespace A147470.P15909299319320667452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261596 (n + 1) + A147472 (A092858 (n + 1)).toNat

end

end A147470.P15909299319320667452

/-! ## A147470.P15933161435644737922

`A147472(A092858(n+1))%A005845(n+1)`
-/

namespace A147470.P15933161435644737922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147472 (A092858 (n + 1)).toNat) (A005845 (n + 1))

end

end A147470.P15933161435644737922

/-!
# A147471: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-1111-0100-0100 pattern in any orientation.

The programs for A147471, there is no canonical definition to state claims against.
-/

/-! ## A147471.P9431907313248195229

`A032568(∑[∑[A103919(2*(n+1))]])`
-/

namespace A147471.P9431907313248195229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147471.P9431907313248195229

/-! ## A147471.P4414742926215780601

`A032568(A063978(n))`
-/

namespace A147471.P4414742926215780601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A063978 n).toNat

end

end A147471.P4414742926215780601

/-! ## A147471.P11318671102022491162

`A032568(A064188(n))`
-/

namespace A147471.P11318671102022491162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A064188 n).toNat

end

end A147471.P11318671102022491162

/-! ## A147471.P9463075726758983009

`A286885(A254314(n))`
-/

namespace A147471.P9463075726758983009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286885 (A254314 n).toNat

end

end A147471.P9463075726758983009

/-! ## A147471.P205668668530495857

`A032568(A004101(n+1))`
-/

namespace A147471.P205668668530495857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A004101 (n + 1)).toNat

end

end A147471.P205668668530495857

/-!
# A147472: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1100-1111-0100-0100 pattern in any orientation.

The programs for A147472, there is no canonical definition to state claims against.
-/

/-! ## A147472.P2405154783313150788

`A071912(A147195(n+1))`
-/

namespace A147472.P2405154783313150788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (A147195 (n + 1)).toNat

end

end A147472.P2405154783313150788

/-! ## A147472.P2144085806430896013

`A102452(A146914(n+1))`
-/

namespace A147472.P2144085806430896013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102452 (A146914 (n + 1)).toNat

end

end A147472.P2144085806430896013

/-!
# A147473: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-1111-0100-0100 pattern in any orientation.

The programs for A147473, there is no canonical definition to state claims against.
-/

/-! ## A147473.P5468638517623135051

`or(A000931(n)², A291168(2*(floor((11/8)^n)+8)))`
-/

namespace A147473.P5468638517623135051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000931 n ^ 2) (A291168 (2 * (⌊((11 : ℚ) / 8) ^ n⌋ + 8)).toNat)

end

end A147473.P5468638517623135051

/-! ## A147473.P7984970264105883616

`A006530(A007318(A036631(n+2)))`
-/

namespace A147473.P7984970264105883616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007318 (A036631 (n + 2)).toNat).toNat

end

end A147473.P7984970264105883616

/-! ## A147473.P8232451161757172703

`or(A058058(n+1), A084556(A275695(n)))`
-/

namespace A147473.P8232451161757172703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058058 (n + 1)) (A084556 (A275695 n).toNat)

end

end A147473.P8232451161757172703

/-! ## A147473.P3049259719357306322

`A278478(A146621(n+1))+A146662(n+1)`
-/

namespace A147473.P3049259719357306322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 (A146621 (n + 1)).toNat + A146662 (n + 1)

end

end A147473.P3049259719357306322

/-! ## A147473.P15053962222489502702

`A288003(A058058(n+1)*A146184(n+1))`
-/

namespace A147473.P15053962222489502702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A058058 (n + 1) * A146184 (n + 1)).toNat

end

end A147473.P15053962222489502702

/-!
# A147474: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-1111-0100-0100 pattern in any orientation.

The programs for A147474, there is no canonical definition to state claims against.
-/

/-! ## A147474.P2922073809415243943

`A177849(A192401(n+1))`
-/

namespace A147474.P2922073809415243943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A192401 (n + 1)).toNat

end

end A147474.P2922073809415243943

/-! ## A147474.P147681510174497925

`A364341(A325918(n+1))`
-/

namespace A147474.P147681510174497925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364341 (A325918 (n + 1)).toNat

end

end A147474.P147681510174497925

/-! ## A147474.P16627085852328001980

`A334228(A007021(n+3))`
-/

namespace A147474.P16627085852328001980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334228 (A007021 (n + 3)).toNat

end

end A147474.P16627085852328001980

/-!
# A147476: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-1111-1100 pattern in any orientation.

The programs for A147476, there is no canonical definition to state claims against.
-/

/-! ## A147476.P14398697355519871454

`A151903(lcm(A022838(n+1), A086931(n)))`
-/

namespace A147476.P14398697355519871454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151903 (Int.lcm (A022838 (n + 1)) (A086931 n))

end

end A147476.P14398697355519871454

/-!
# A147477: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-1111-1100 pattern in any orientation.

The programs for A147477, there is no canonical definition to state claims against.
-/

/-! ## A147477.P1227055298547452723

`A307891(A193536(n))+A147431(n+1)`
-/

namespace A147477.P1227055298547452723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307891 (A193536 n).toNat + A147431 (n + 1)

end

end A147477.P1227055298547452723

/-! ## A147477.P14492390545191073618

`A147356(n+1)-A037824(A000108(n))`
-/

namespace A147477.P14492390545191073618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147356 (n + 1) - A037824 (A000108 n).toNat

end

end A147477.P14492390545191073618

/-! ## A147477.P14482253222280663675

`A146677(n+1)-A006983(A269369(n+1))`
-/

namespace A147477.P14482253222280663675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146677 (n + 1) - A006983 (A269369 (n + 1)).toNat

end

end A147477.P14482253222280663675

/-! ## A147477.P8987015641101956325

`A147356(n+1)-A281446(A147455(n+1))`
-/

namespace A147477.P8987015641101956325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147356 (n + 1) - A281446 (A147455 (n + 1)).toNat

end

end A147477.P8987015641101956325

/-! ## A147477.P7084605964571368939

`A307891(A193536(n))+A147433(2*(n+2))`
-/

namespace A147477.P7084605964571368939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307891 (A193536 n).toNat + A147433 (2 * (n + 2))

end

end A147477.P7084605964571368939

/-!
# A147478: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-1111-1100 pattern in any orientation.

The programs for A147478, there is no canonical definition to state claims against.
-/

/-! ## A147478.P5343736937277461317

`A072089(A146417(n+1))`
-/

namespace A147478.P5343736937277461317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A146417 (n + 1)).toNat

end

end A147478.P5343736937277461317

/-! ## A147478.P7121671571755283353

`A167904(A147372(n+1))`
-/

namespace A147478.P7121671571755283353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A147372 (n + 1)).toNat

end

end A147478.P7121671571755283353

/-! ## A147478.P12111269878954310950

`A147372(n+1)-A055641(A147445(n+1))`
-/

namespace A147478.P12111269878954310950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147372 (n + 1) - A055641 (A147445 (n + 1)).toNat

end

end A147478.P12111269878954310950

/-! ## A147478.P5703418607918943261

`A146678(n+1)-A055641(A147445(n+1))²`
-/

namespace A147478.P5703418607918943261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146678 (n + 1) - A055641 (A147445 (n + 1)).toNat ^ 2

end

end A147478.P5703418607918943261

/-! ## A147478.P6473468935564009073

`A147440(n+1)-A055641(A147445(n+1))²`
-/

namespace A147478.P6473468935564009073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147440 (n + 1) - A055641 (A147445 (n + 1)).toNat ^ 2

end

end A147478.P6473468935564009073

/-!
# A147481: Number of n X n binary arrays with all ones connected only in a 11011-01110-00100 pattern in any orientation.

The programs for A147481, there is no canonical definition to state claims against.
-/

/-! ## A147481.P13922606874343625453

`A147483(2*(n+2))`
-/

namespace A147481.P13922606874343625453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147483 (2 * (n + 2))

end

end A147481.P13922606874343625453

/-! ## A147481.P2784471960149021411

`A091570((2-5*(1-n))*a(n-1)+1)` with `a(0)=1`
-/

namespace A147481.P2784471960149021411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091570 ((2 - 5 * (1 - (n : ℤ))) * a (n - 1) + 1).toNat

end

end A147481.P2784471960149021411

/-! ## A147481.P4353876201302159356

`A340678(A150594(n+1))`
-/

namespace A147481.P4353876201302159356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340678 (A150594 (n + 1)).toNat

end

end A147481.P4353876201302159356

/-!
# A147483: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 11011-01110-00100 pattern in any orientation.

The programs for A147483, there is no canonical definition to state claims against.
-/

/-! ## A147483.P14844906491265598188

`A184955(A089633(n))+A146997(n+1)`
-/

namespace A147483.P14844906491265598188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A089633 n).toNat + A146997 (n + 1)

end

end A147483.P14844906491265598188

/-! ## A147483.P6935572372515877754

`A280164(A147498(n+1))+A146997(n+1)`
-/

namespace A147483.P6935572372515877754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280164 (A147498 (n + 1)).toNat + A146997 (n + 1)

end

end A147483.P6935572372515877754

/-! ## A147483.P2473266940442317593

`A184955(A320928(n+1))+A146997(n+1)`
-/

namespace A147483.P2473266940442317593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A320928 (n + 1)).toNat + A146997 (n + 1)

end

end A147483.P2473266940442317593

/-! ## A147483.P9432053637907669636

`A184955(A261355(n+3))+A146997(n+1)`
-/

namespace A147483.P9432053637907669636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A261355 (n + 3)).toNat + A146997 (n + 1)

end

end A147483.P9432053637907669636

/-! ## A147483.P10054470825015906485

`A173992(C(A222275(n+1), A000005(n+1)))`
-/

namespace A147483.P10054470825015906485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173992 (Nat.choose (A222275 (n + 1)).toNat (A000005 (n + 1)).toNat)

end

end A147483.P10054470825015906485

/-!
# A147484: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 11011-01110-00100 pattern in any orientation.

The programs for A147484, there is no canonical definition to state claims against.
-/

/-! ## A147484.P3597692761570882741

`A147486(2*(n+2))`
-/

namespace A147484.P3597692761570882741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147486 (2 * (n + 2))

end

end A147484.P3597692761570882741

/-! ## A147484.P15536786423447309712

`A300163(A346735(n+1))`
-/

namespace A147484.P15536786423447309712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300163 (A346735 (n + 1)).toNat

end

end A147484.P15536786423447309712

/-! ## A147484.P1540370069433463832

`or(A146998(n+1), A265370(A107475(n)))`
-/

namespace A147484.P1540370069433463832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146998 (n + 1)) (A265370 (A107475 n).toNat)

end

end A147484.P1540370069433463832

/-! ## A147484.P6421684600228537214

`or(A045887(A172449(n+1)), A146998(n+1))`
-/

namespace A147484.P6421684600228537214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045887 (A172449 (n + 1)).toNat) (A146998 (n + 1))

end

end A147484.P6421684600228537214

/-! ## A147484.P4330358872714305615

`A154366(A023425(n))`
-/

namespace A147484.P4330358872714305615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154366 (A023425 n).toNat

end

end A147484.P4330358872714305615

/-!
# A147485: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 11011-01110-00100 pattern in any orientation.

The programs for A147485, there is no canonical definition to state claims against.
-/

/-! ## A147485.P10265456193930517249

`A341936(A146999(n+1))`
-/

namespace A147485.P10265456193930517249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A146999 (n + 1)).toNat

end

end A147485.P10265456193930517249

/-! ## A147485.P3267375221052653526

`A187946(A026677(n))+A146999(n+1)`
-/

namespace A147485.P3267375221052653526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187946 (A026677 n).toNat + A146999 (n + 1)

end

end A147485.P3267375221052653526

/-! ## A147485.P1710067129312634961

`A351870(xor(A061649(n), A146999(n+1)))`
-/

namespace A147485.P1710067129312634961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (Int.xor (A061649 n) (A146999 (n + 1))).toNat

end

end A147485.P1710067129312634961

/-! ## A147485.P1088574409654794672

`xor(A146999(n+1), A185037(A261764(n)))`
-/

namespace A147485.P1088574409654794672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A146999 (n + 1)) (A185037 (A261764 n).toNat)

end

end A147485.P1088574409654794672

/-!
# A147486: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 11011-01110-00100 pattern in any orientation.

The programs for A147486, there is no canonical definition to state claims against.
-/

/-! ## A147486.P15734724174202597357

`A167520(A147000(n+1))`
-/

namespace A147486.P15734724174202597357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (A147000 (n + 1)).toNat

end

end A147486.P15734724174202597357

/-! ## A147486.P4928280409068461152

`A143091(or(A003982(n), A147365(n+1)))`
-/

namespace A147486.P4928280409068461152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 (Int.lor (A003982 n) (A147365 (n + 1))).toNat

end

end A147486.P4928280409068461152

/-! ## A147486.P4720870572875498596

`A143091(or(A147365(n+1), A242887(n)))`
-/

namespace A147486.P4720870572875498596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 (Int.lor (A147365 (n + 1)) (A242887 n)).toNat

end

end A147486.P4720870572875498596

/-! ## A147486.P14169249332716543000

`A143091(xor(A003982(n), A147365(n+1)))`
-/

namespace A147486.P14169249332716543000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 (Int.xor (A003982 n) (A147365 (n + 1))).toNat

end

end A147486.P14169249332716543000

/-! ## A147486.P506437379578175340

`A143091(or(A147365(n+1), A285383(n+1)))`
-/

namespace A147486.P506437379578175340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 (Int.lor (A147365 (n + 1)) (A285383 (n + 1))).toNat

end

end A147486.P506437379578175340

/-!
# A147487: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 11011-01110-00100 pattern in any orientation.

The programs for A147487, there is no canonical definition to state claims against.
-/

/-! ## A147487.P4346313855905190502

`A055171(A321231(n)+A000122(n))`
-/

namespace A147487.P4346313855905190502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055171 (A321231 n + A000122 n).toNat

end

end A147487.P4346313855905190502

/-!
# A147489: Number of n X n binary arrays with all ones connected only in a 11101-10111 pattern in any orientation.

The programs for A147489, there is no canonical definition to state claims against.
-/

/-! ## A147489.P8192521044541515881

`A147491(2*n+3)`
-/

namespace A147489.P8192521044541515881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147491 (2 * n + 3)

end

end A147489.P8192521044541515881

/-! ## A147489.P11697895288286690446

`or(1, A147491(A144396(n+1)))`
-/

namespace A147489.P11697895288286690446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147491 (A144396 (n + 1)).toNat)

end

end A147489.P11697895288286690446

/-! ## A147489.P16950516260045360955

`∏{d}[A144396(n+1), A147491(#)]`
-/

namespace A147489.P16950516260045360955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147491 d

end

end A147489.P16950516260045360955

/-! ## A147489.P17183142549564252785

`A185284(n)+A147491(A144396(n+1))`
-/

namespace A147489.P17183142549564252785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A147491 (A144396 (n + 1)).toNat

end

end A147489.P17183142549564252785

/-! ## A147489.P10453501985221033644

`A147491(A144396(n+1))^A178334(n)`
-/

namespace A147489.P10453501985221033644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147491 (A144396 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A147489.P10453501985221033644

/-!
# A147490: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 11101-10111 pattern in any orientation.

The programs for A147490, there is no canonical definition to state claims against.
-/

/-! ## A147490.P4618657357601841255

`A243854(((1-n)²-n)²)`
-/

namespace A147490.P4618657357601841255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243854 (((1 - (n : ℤ)) ^ 2 - (n : ℤ)) ^ 2).toNat

end

end A147490.P4618657357601841255

/-! ## A147490.P16494619857367674851

`A309014(A326339(n))`
-/

namespace A147490.P16494619857367674851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309014 (A326339 n).toNat

end

end A147490.P16494619857367674851

/-! ## A147490.P9404618250535467622

`A254764(A210540(n))-2`
-/

namespace A147490.P9404618250535467622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (A210540 n).toNat - 2

end

end A147490.P9404618250535467622

/-! ## A147490.P9479311000341547862

`or(1, A111660(A299437(n)))`
-/

namespace A147490.P9479311000341547862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A111660 (A299437 n).toNat)

end

end A147490.P9479311000341547862

/-! ## A147490.P1107296163843638811

`A023990(C(A063834(n), A066578(n+1)))`
-/

namespace A147490.P1107296163843638811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023990 (Nat.choose (A063834 n).toNat (A066578 (n + 1)).toNat)

end

end A147490.P1107296163843638811

/-!
# A147491: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 11101-10111 pattern in any orientation.

The programs for A147491, there is no canonical definition to state claims against.
-/

/-! ## A147491.P4970318625779421708

`A382092(A147187(n+1))`
-/

namespace A147491.P4970318625779421708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382092 (A147187 (n + 1)).toNat

end

end A147491.P4970318625779421708

/-! ## A147491.P11048122289284017451

`A110566(A330626(floor(n/2)))`
-/

namespace A147491.P11048122289284017451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A330626 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A147491.P11048122289284017451

/-! ## A147491.P12744980720470664677

`A234640(∑[A165685(n+2)]!)`
-/

namespace A147491.P12744980720470664677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165685 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234640 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A147491.P12744980720470664677

/-!
# A147492: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 11101-10111 pattern in any orientation.

The programs for A147492, there is no canonical definition to state claims against.
-/

/-! ## A147492.P9391051924745597319

`A147494(2*(n+2))`
-/

namespace A147492.P9391051924745597319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147494 (2 * (n + 2))

end

end A147492.P9391051924745597319

/-! ## A147492.P1298825871913167004

`or(1, A147494(A144396(n+1)))`
-/

namespace A147492.P1298825871913167004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147494 (A144396 (n + 1)).toNat)

end

end A147492.P1298825871913167004

/-! ## A147492.P1174734168281719311

`or(1, A147494(A307782(n+1)))`
-/

namespace A147492.P1174734168281719311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147494 (A307782 (n + 1)).toNat)

end

end A147492.P1174734168281719311

/-! ## A147492.P8791142982894540165

`A028310(A147494(Δ[(n+1)²]))`
-/

namespace A147492.P8791142982894540165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A147494 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A147492.P8791142982894540165

/-! ## A147492.P14930790340465630192

`∏{d}[A144396(n+1), A147494(#)]`
-/

namespace A147492.P14930790340465630192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147494 d

end

end A147492.P14930790340465630192

/-!
# A147493: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 11101-10111 pattern in any orientation.

The programs for A147493, there is no canonical definition to state claims against.
-/

/-! ## A147493.P7541627820016856931

`floor(A147425(n+1)²/A147087(n+1))`
-/

namespace A147493.P7541627820016856931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147425 (n + 1) ^ 2 : ℚ) / (A147087 (n + 1) : ℚ)⌋

end

end A147493.P7541627820016856931

/-! ## A147493.P2194962872929960292

`A273190(A174613(n)+7)`
-/

namespace A147493.P2194962872929960292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A174613 n + 7).toNat

end

end A147493.P2194962872929960292

/-! ## A147493.P9332909449933985340

`A239931(A363124(n)^A054896(n))`
-/

namespace A147493.P9332909449933985340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (SequenceMachineLib.roundAway ((A363124 n : ℚ) ^ (A054896 n : ℤ))).toNat

end

end A147493.P9332909449933985340

/-! ## A147493.P17220207298341953589

`A239931(C(A363124(n), A054896(n)))`
-/

namespace A147493.P17220207298341953589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (Nat.choose (A363124 n).toNat (A054896 n).toNat)

end

end A147493.P17220207298341953589

/-! ## A147493.P16773304700274692278

`A003056(A194805(2*n+3))-A133263(n)`
-/

namespace A147493.P16773304700274692278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A194805 (2 * n + 3)).toNat - A133263 n

end

end A147493.P16773304700274692278

/-!
# A147494: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 11101-10111 pattern in any orientation.

The programs for A147494, there is no canonical definition to state claims against.
-/

/-! ## A147494.P5618787225490580088

`∏{d}[A004526(n), A147492(#)]`
-/

namespace A147494.P5618787225490580088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147492 d

end

end A147494.P5618787225490580088

/-!
# A147495: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 11101-10111 pattern in any orientation.

The programs for A147495, there is no canonical definition to state claims against.
-/

/-! ## A147495.P6787687024401225932

`A102510(A060455(n))`
-/

namespace A147495.P6787687024401225932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102510 (A060455 n).toNat

end

end A147495.P6787687024401225932

/-! ## A147495.P1097396839636933900

`xor(A060455(n), A280618(A001788(n)))`
-/

namespace A147495.P1097396839636933900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060455 n) (A280618 (A001788 n).toNat)

end

end A147495.P1097396839636933900

/-! ## A147495.P3040921746682471366

`xor(A060455(n), A333382(A301450(n+1)))`
-/

namespace A147495.P3040921746682471366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060455 n) (A333382 (A301450 (n + 1)).toNat)

end

end A147495.P3040921746682471366

/-!
# A147496: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 11101-10111 pattern in any orientation.

The programs for A147496, there is no canonical definition to state claims against.
-/

/-! ## A147496.P11780629145711000585

`A173451(A061219(n+1))+A147074(n+1)`
-/

namespace A147496.P11780629145711000585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173451 (A061219 (n + 1)).toNat + A147074 (n + 1)

end

end A147496.P11780629145711000585

/-! ## A147496.P17853637942278341447

`A245325(A360099(2*(n+2))+A000110(n))`
-/

namespace A147496.P17853637942278341447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (A360099 (2 * (n + 2)) + A000110 n).toNat

end

end A147496.P17853637942278341447

/-!
# A147497: Number of n X n binary arrays with all ones connected only in a 1110-0110-0111 pattern in any orientation.

The programs for A147497, there is no canonical definition to state claims against.
-/

/-! ## A147497.P9856522333173062671

`A147499(2*(n+2))`
-/

namespace A147497.P9856522333173062671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147499 (2 * (n + 2))

end

end A147497.P9856522333173062671

/-! ## A147497.P12944091455507353691

`or(1, A147499(A022305(n)))`
-/

namespace A147497.P12944091455507353691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147499 (A022305 n).toNat)

end

end A147497.P12944091455507353691

/-! ## A147497.P11585560385355952205

`or(1, A147499(A144396(n+1)))`
-/

namespace A147497.P11585560385355952205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147499 (A144396 (n + 1)).toNat)

end

end A147497.P11585560385355952205

/-! ## A147497.P11649632070243964827

`gcd(A000038(n), A147499(A022305(n)))`
-/

namespace A147497.P11649632070243964827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A147499 (A022305 n).toNat)

end

end A147497.P11649632070243964827

/-! ## A147497.P13584109299895484306

`A147499(A144396(n+1))/A007318(floor(n/12))`
-/

namespace A147497.P13584109299895484306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147499 (A144396 (n + 1)).toNat : ℚ) / (A007318 ⌊(n : ℚ) / 12⌋.toNat : ℚ)

end

end A147497.P13584109299895484306

/-!
# A147498: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1110-0110-0111 pattern in any orientation.

The programs for A147498, there is no canonical definition to state claims against.
-/

/-! ## A147498.P313696609942405233

`A000027(A337823(n+1)^A210713(n))`
-/

namespace A147498.P313696609942405233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A337823 (n + 1) : ℚ) ^ (A210713 n : ℤ))).toNat

end

end A147498.P313696609942405233

/-! ## A147498.P17395139140843337694

`A093178(A337823(n+1)^A210713(n))`
-/

namespace A147498.P17395139140843337694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.roundAway ((A337823 (n + 1) : ℚ) ^ (A210713 n : ℤ))).toNat

end

end A147498.P17395139140843337694

/-! ## A147498.P10987123222998242718

`A249817(A337823(n+1)^A210713(n))`
-/

namespace A147498.P10987123222998242718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (SequenceMachineLib.roundAway ((A337823 (n + 1) : ℚ) ^ (A210713 n : ℤ))).toNat

end

end A147498.P10987123222998242718

/-! ## A147498.P797594174126794317

`A337823(n+1)^A061798(A061808(n+1))`
-/

namespace A147498.P797594174126794317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337823 (n + 1) : ℚ) ^ (A061798 (A061808 (n + 1)).toNat : ℤ)

end

end A147498.P797594174126794317

/-! ## A147498.P14670589118111832951

`A061795(n+4)^A061798(A061808(n+1))`
-/

namespace A147498.P14670589118111832951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061795 (n + 4) : ℚ) ^ (A061798 (A061808 (n + 1)).toNat : ℤ)

end

end A147498.P14670589118111832951

/-!
# A147499: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1110-0110-0111 pattern in any orientation.

The programs for A147499, there is no canonical definition to state claims against.
-/

/-! ## A147499.P7579049807677648730

`A147497(n%∑[A282553(n)%2]+1)`
-/

namespace A147499.P7579049807677648730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282553 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147497 (Int.tmod (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A147499.P7579049807677648730

/-! ## A147499.P10627330641673988923

`A147497(floor(A104249(n)/A008486(n)))`
-/

namespace A147499.P10627330641673988923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147497 ⌊(A104249 n : ℚ) / (A008486 n : ℚ)⌋.toNat

end

end A147499.P10627330641673988923

/-! ## A147499.P728429351272495550

`A147497(∏{e}[A038754(n), #])`
-/

namespace A147499.P728429351272495550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147497 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A147499.P728429351272495550

/-! ## A147499.P15185075943839702717

`∏{e}[A032085(n+1), A147497(#)]`
-/

namespace A147499.P15185075943839702717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A147497 (Nat.factorization (f1 n).natAbs p)

end

end A147499.P15185075943839702717

/-! ## A147499.P14499198611397335651

`56%A000188(2^n)+1`
-/

namespace A147499.P14499198611397335651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 56 (A000188 (2 ^ n)) + 1

end

end A147499.P14499198611397335651

