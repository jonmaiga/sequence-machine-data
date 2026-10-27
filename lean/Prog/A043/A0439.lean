import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C010
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C001
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

/-!
# A043900: Numbers k such that 0 and 5 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043900, there is no canonical definition to state claims against.
-/

/-! ## A043900.P9614039423240149243

`A342398(n+1)-A000007(A123023(n))`
-/

namespace A043900.P9614039423240149243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342398 (n + 1) - A000007 (A123023 n).toNat

end

end A043900.P9614039423240149243

/-! ## A043900.P13836950316288153711

`A342398(n+1)-A051731(A274230(n+4))`
-/

namespace A043900.P13836950316288153711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342398 (n + 1) - A051731 (A274230 (n + 4)).toNat

end

end A043900.P13836950316288153711

/-!
# A043903: Numbers k such that 1 and 4 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043903, there is no canonical definition to state claims against.
-/

/-! ## A043903.P10134207403908005356

`A142150(A193281(n))+A043123(n+1)`
-/

namespace A043903.P10134207403908005356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A193281 n).toNat + A043123 (n + 1)

end

end A043903.P10134207403908005356

/-! ## A043903.P5291505570423212545

`A325195(A000040(3*n+4))+A164901(2*(n+2))`
-/

namespace A043903.P5291505570423212545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (A000040 (3 * n + 4)).toNat + A164901 (2 * (n + 2))

end

end A043903.P5291505570423212545

/-!
# A043904: Numbers k such that 1 and 5 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043904, there is no canonical definition to state claims against.
-/

/-! ## A043904.P16832203561191819886

`or(A016969(3*n+1), A070014(A017054(n)))`
-/

namespace A043904.P16832203561191819886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016969 (3 * n + 1)) (A070014 (A017054 n).toNat)

end

end A043904.P16832203561191819886

/-! ## A043904.P3720218485743135217

`or(A043124(n+1), A172430(A015863(n+3)))`
-/

namespace A043904.P3720218485743135217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043124 (n + 1)) (A172430 (A015863 (n + 3)).toNat)

end

end A043904.P3720218485743135217

/-! ## A043904.P688690092762660911

`or(A126988(A212292(n+1)), A168489(3*n+2))`
-/

namespace A043904.P688690092762660911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126988 (A212292 (n + 1)).toNat) (A168489 (3 * n + 2))

end

end A043904.P688690092762660911

/-! ## A043904.P8197219936213251885

`or(p?[A321609(n)], A082286(n))`
-/

namespace A043904.P8197219936213251885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A082286 n)

end

end A043904.P8197219936213251885

/-! ## A043904.P3921671818976797942

`or(A034003(A352135(3*n+4)), A168489(3*n+2))`
-/

namespace A043904.P3921671818976797942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034003 (A352135 (3 * n + 4)).toNat) (A168489 (3 * n + 2))

end

end A043904.P3921671818976797942

/-!
# A043905: Numbers k such that 2 and 3 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043905, there is no canonical definition to state claims against.
-/

/-! ## A043905.P8247287803108211004

`A234581(A304605(n+1))+A043125(n+1)`
-/

namespace A043905.P8247287803108211004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234581 (A304605 (n + 1)).toNat + A043125 (n + 1)

end

end A043905.P8247287803108211004

/-!
# A043907: Numbers k such that 2 and 5 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043907, there is no canonical definition to state claims against.
-/

/-! ## A043907.P16533630846896172283

`xor(A000002(A003480(n)), A017245(2*n+1))`
-/

namespace A043907.P16533630846896172283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000002 (A003480 n).toNat) (A017245 (2 * n + 1))

end

end A043907.P16533630846896172283

/-! ## A043907.P3072554299578756868

`A168565(3*n+6)-A327076(A000079(n+1))`
-/

namespace A043907.P3072554299578756868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (3 * n + 6) - A327076 (A000079 (n + 1)).toNat

end

end A043907.P3072554299578756868

/-!
# A043909: Numbers k such that 3 and 5 occur juxtaposed in the base-6 representation of k but not of k+1.

The programs for A043909, there is no canonical definition to state claims against.
-/

/-! ## A043909.P13569109310978334105

`or(A003989(A088218(n)), A043129(n+1))`
-/

namespace A043909.P13569109310978334105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003989 (A088218 n).toNat) (A043129 (n + 1))

end

end A043909.P13569109310978334105

/-! ## A043909.P7322416350586215075

`A185336(A109692(n))+A043129(n+1)`
-/

namespace A043909.P7322416350586215075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185336 (A109692 n).toNat + A043129 (n + 1)

end

end A043909.P7322416350586215075

/-! ## A043909.P10697939583842150779

`A324098(A000055(n))+A043129(n+1)`
-/

namespace A043909.P10697939583842150779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324098 (A000055 n).toNat + A043129 (n + 1)

end

end A043909.P10697939583842150779

/-! ## A043909.P18178230899948135673

`A202954(A002849(n+1))+A043129(n+1)`
-/

namespace A043909.P18178230899948135673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202954 (A002849 (n + 1)).toNat + A043129 (n + 1)

end

end A043909.P18178230899948135673

/-!
# A043912: Numbers k such that 0 and 2 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043912, there is no canonical definition to state claims against.
-/

/-! ## A043912.P122371590078505407

`A103786(A000670(n))+A043132(n+1)`
-/

namespace A043912.P122371590078505407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103786 (A000670 n).toNat + A043132 (n + 1)

end

end A043912.P122371590078505407

/-!
# A043913: Numbers k such that 0 and 3 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043913, there is no canonical definition to state claims against.
-/

/-! ## A043913.P2232632289159103319

`A092660(A285522(2*(n+1)))+A043133(n+1)`
-/

namespace A043913.P2232632289159103319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092660 (A285522 (2 * (n + 1))).toNat + A043133 (n + 1)

end

end A043913.P2232632289159103319

/-! ## A043913.P11511659035555873706

`A039310(A007092(A037443(A037443(A007093(n+1)))))`
-/

namespace A043913.P11511659035555873706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039310 (A007092 (A037443 (A037443 (A007093 (n + 1)).toNat).toNat).toNat).toNat

end

end A043913.P11511659035555873706

/-!
# A043914: Numbers k such that 0 and 4 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043914, there is no canonical definition to state claims against.
-/

/-! ## A043914.P15330111937909155867

`A083206(A128816(n))+A043134(n+1)`
-/

namespace A043914.P15330111937909155867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A128816 n).toNat + A043134 (n + 1)

end

end A043914.P15330111937909155867

/-! ## A043914.P4791843296890425500

`xor(A043134(n+1), A185284((1-n)²))`
-/

namespace A043914.P4791843296890425500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043134 (n + 1)) (A185284 ((1 - (n : ℤ)) ^ 2).toNat)

end

end A043914.P4791843296890425500

/-! ## A043914.P6985750145907628111

`A039311(n+1)+A034329(A034332(n))`
-/

namespace A043914.P6985750145907628111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039311 (n + 1) + A034329 (A034332 n).toNat

end

end A043914.P6985750145907628111

/-! ## A043914.P6417333462091146626

`A039311(n+1)+A034332(A034348(n+1))`
-/

namespace A043914.P6417333462091146626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039311 (n + 1) + A034332 (A034348 (n + 1)).toNat

end

end A043914.P6417333462091146626

/-!
# A043915: Numbers k such that 0 and 5 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043915, there is no canonical definition to state claims against.
-/

/-! ## A043915.P11394331539256870616

`xor(A043135(n+1), A231080(A208379(n+1)))`
-/

namespace A043915.P11394331539256870616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043135 (n + 1)) (A231080 (A208379 (n + 1)).toNat)

end

end A043915.P11394331539256870616

/-! ## A043915.P4624805169440045846

`xor(A043135(n+1), A185284(A206743(n)))`
-/

namespace A043915.P4624805169440045846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043135 (n + 1)) (A185284 (A206743 n).toNat)

end

end A043915.P4624805169440045846

/-! ## A043915.P10614607485113932720

`xor(A043135(n+1), A185284(A007094(3*(n+1))))`
-/

namespace A043915.P10614607485113932720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043135 (n + 1)) (A185284 (A007094 (3 * (n + 1))).toNat)

end

end A043915.P10614607485113932720

/-!
# A043916: Numbers k such that 0 and 6 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043916, there is no canonical definition to state claims against.
-/

/-! ## A043916.P1467576143949824559

`A200214(A115205(n))+A043136(n+1)`
-/

namespace A043916.P1467576143949824559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (A115205 n).toNat + A043136 (n + 1)

end

end A043916.P1467576143949824559

/-! ## A043916.P530721449420460740

`A200214(A008965(n+1))+A043136(n+1)`
-/

namespace A043916.P530721449420460740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (A008965 (n + 1)).toNat + A043136 (n + 1)

end

end A043916.P530721449420460740

/-! ## A043916.P7012732866840875884

`A043393(6*(n+1))%A083603(2*n+5)`
-/

namespace A043916.P7012732866840875884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043393 (6 * (n + 1))) (A083603 (2 * n + 5))

end

end A043916.P7012732866840875884

/-!
# A043917: Numbers k such that 1 and 2 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043917, there is no canonical definition to state claims against.
-/

/-! ## A043917.P15347230091906864419

`A175072(A215320(n+2)+1)`
-/

namespace A043917.P15347230091906864419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175072 (A215320 (n + 2) + 1).toNat

end

end A043917.P15347230091906864419

/-!
# A043918: Numbers k such that 1 and 3 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043918, there is no canonical definition to state claims against.
-/

/-! ## A043918.P12087699409045630873

`A043919(n+1)-A007913(7^n)`
-/

namespace A043918.P12087699409045630873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043919 (n + 1) - A007913 (7 ^ n)

end

end A043918.P12087699409045630873

/-! ## A043918.P11441406284265277524

`A044543(n+1)-A043132(A331561(n+1))`
-/

namespace A043918.P11441406284265277524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044543 (n + 1) - A043132 (A331561 (n + 1)).toNat

end

end A043918.P11441406284265277524

/-!
# A043919: Numbers k such that 1 and 4 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043919, there is no canonical definition to state claims against.
-/

/-! ## A043919.P12956881192779346134

`A043918(n+1)+A007913(7^n)`
-/

namespace A043919.P12956881192779346134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043918 (n + 1) + A007913 (7 ^ n)

end

end A043919.P12956881192779346134

/-! ## A043919.P5027443073496458583

`A043920(n+1)-A007913(7^n)`
-/

namespace A043919.P5027443073496458583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043920 (n + 1) - A007913 (7 ^ n)

end

end A043919.P5027443073496458583

/-!
# A043920: Numbers k such that 1 and 5 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043920, there is no canonical definition to state claims against.
-/

/-! ## A043920.P10279434352370711322

`A043919(n+1)+A007913(7^n)`
-/

namespace A043920.P10279434352370711322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043919 (n + 1) + A007913 (7 ^ n)

end

end A043920.P10279434352370711322

/-! ## A043920.P17964109866073414142

`A043921(n+1)-A007913(7^n)`
-/

namespace A043920.P17964109866073414142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043921 (n + 1) - A007913 (7 ^ n)

end

end A043920.P17964109866073414142

/-!
# A043921: Numbers k such that 1 and 6 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043921, there is no canonical definition to state claims against.
-/

/-! ## A043921.P8830371674795133265

`A043920(n+1)+A007913(7^n)`
-/

namespace A043921.P8830371674795133265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043920 (n + 1) + A007913 (7 ^ n)

end

end A043921.P8830371674795133265

/-!
# A043922: Numbers k such that 2 and 3 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043922, there is no canonical definition to state claims against.
-/

/-! ## A043922.P2774083839703460348

`A043923(n+1)-A007913(7^n)`
-/

namespace A043922.P2774083839703460348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043923 (n + 1) - A007913 (7 ^ n)

end

end A043922.P2774083839703460348

/-!
# A043923: Numbers k such that 2 and 4 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043923, there is no canonical definition to state claims against.
-/

/-! ## A043923.P14144069893255185601

`A043922(n+1)+A007913(7^n)`
-/

namespace A043923.P14144069893255185601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043922 (n + 1) + A007913 (7 ^ n)

end

end A043923.P14144069893255185601

/-! ## A043923.P13192601986087915641

`A043924(n+1)-A007913(7^n)`
-/

namespace A043923.P13192601986087915641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043924 (n + 1) - A007913 (7 ^ n)

end

end A043923.P13192601986087915641

/-!
# A043924: Numbers k such that 2 and 5 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043924, there is no canonical definition to state claims against.
-/

/-! ## A043924.P15894083227260630267

`A043923(n+1)+A007913(7^n)`
-/

namespace A043924.P15894083227260630267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043923 (n + 1) + A007913 (7 ^ n)

end

end A043924.P15894083227260630267

/-! ## A043924.P4649508324612484197

`A043925(n+1)-A007913(7^n)`
-/

namespace A043924.P4649508324612484197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043925 (n + 1) - A007913 (7 ^ n)

end

end A043924.P4649508324612484197

/-!
# A043925: Numbers k such that 2 and 6 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043925, there is no canonical definition to state claims against.
-/

/-! ## A043925.P2479369256878850773

`A329975(A329840(n+1)+A276383(n+1))`
-/

namespace A043925.P2479369256878850773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329975 (A329840 (n + 1) + A276383 (n + 1)).toNat

end

end A043925.P2479369256878850773

/-! ## A043925.P17079568200486521551

`A329975(A329840(n+1)+A329828(n+1))`
-/

namespace A043925.P17079568200486521551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329975 (A329840 (n + 1) + A329828 (n + 1)).toNat

end

end A043925.P17079568200486521551

/-!
# A043928: Numbers k such that 3 and 6 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043928, there is no canonical definition to state claims against.
-/

/-! ## A043928.P16687803679437879350

`A043148(n+1)+A038383(A097331(n))`
-/

namespace A043928.P16687803679437879350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043148 (n + 1) + A038383 (A097331 n).toNat

end

end A043928.P16687803679437879350

/-!
# A043929: Numbers k such that 4 and 5 occur juxtaposed in the base-7 representation of k but not of k+1.

The programs for A043929, there is no canonical definition to state claims against.
-/

/-! ## A043929.P17571240276128271508

`A173068(A120126(n))+A043149(n+1)`
-/

namespace A043929.P17571240276128271508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (A120126 n).toNat + A043149 (n + 1)

end

end A043929.P17571240276128271508

/-! ## A043929.P13630309989196715755

`A173068(A024659(n))+A043149(n+1)`
-/

namespace A043929.P13630309989196715755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (A024659 n).toNat + A043149 (n + 1)

end

end A043929.P13630309989196715755

/-!
# A043932: Numbers k such that 0 and 1 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043932, there is no canonical definition to state claims against.
-/

/-! ## A043932.P15389951131284649215

`A037474(A043911(n+1)^A189006(n))`
-/

namespace A043932.P15389951131284649215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043911 (n + 1) : ℚ) ^ (A189006 n : ℤ))).toNat

end

end A043932.P15389951131284649215

/-! ## A043932.P7400416983246803169

`A037474(lcm(A043911(n+1), A141588(n)))`
-/

namespace A043932.P7400416983246803169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Int.lcm (A043911 (n + 1)) (A141588 n))

end

end A043932.P7400416983246803169

/-! ## A043932.P2370317201811343963

`A037474(C(A043911(n+1), A189006(n)))`
-/

namespace A043932.P2370317201811343963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Nat.choose (A043911 (n + 1)).toNat (A189006 n).toNat)

end

end A043932.P2370317201811343963

/-! ## A043932.P6736848000658203088

`A037474(A141588(n)²*A043911(n+1))`
-/

namespace A043932.P6736848000658203088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A141588 n ^ 2 * A043911 (n + 1)).toNat

end

end A043932.P6736848000658203088

/-! ## A043932.P9020995531635766992

`A037474(A043911(n+1))/A037474(A141588(n)²)`
-/

namespace A043932.P9020995531635766992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037474 (A043911 (n + 1)).toNat : ℚ) / (A037474 (A141588 n ^ 2).toNat : ℚ)

end

end A043932.P9020995531635766992

/-!
# A043933: Numbers k such that 0 and 2 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043933, there is no canonical definition to state claims against.
-/

/-! ## A043933.P9743088081844570673

`A225738(A337604(3*n+1))+A043153(n+1)`
-/

namespace A043933.P9743088081844570673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225738 ((A337604 (3 * n + 1)).toNat + 10) + A043153 (n + 1)

end

end A043933.P9743088081844570673

/-!
# A043934: Numbers k such that 0 and 3 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043934, there is no canonical definition to state claims against.
-/

/-! ## A043934.P14185512241191865624

`A185036(A011782(n))+A039331(n+1)`
-/

namespace A043934.P14185512241191865624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 (A011782 n).toNat + A039331 (n + 1)

end

end A043934.P14185512241191865624

/-!
# A043935: Numbers k such that 0 and 4 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043935, there is no canonical definition to state claims against.
-/

/-! ## A043935.P18273682519955966929

`A039332(∑[A351345(n)!])`
-/

namespace A043935.P18273682519955966929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A351345 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039332 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A043935.P18273682519955966929

/-! ## A043935.P14566432332062106885

`A328499(A252041(n+1))+A039332(n+1)`
-/

namespace A043935.P14566432332062106885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328499 (A252041 (n + 1)).toNat + A039332 (n + 1)

end

end A043935.P14566432332062106885

/-!
# A043938: Numbers k such that 0 and 7 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043938, there is no canonical definition to state claims against.
-/

/-! ## A043938.P4399297091944407985

`or(A010689(A298155(n)), A043937(n+1))`
-/

namespace A043938.P4399297091944407985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010689 (A298155 n).toNat) (A043937 (n + 1))

end

end A043938.P4399297091944407985

/-! ## A043938.P5889152140367719324

`or(A010689(A276086(n)), A043937(n+1))`
-/

namespace A043938.P5889152140367719324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010689 (A276086 n).toNat) (A043937 (n + 1))

end

end A043938.P5889152140367719324

/-! ## A043938.P13717555746767731863

`A043421(7*A187829(n+1))`
-/

namespace A043938.P13717555746767731863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043421 (7 * A187829 (n + 1)).toNat

end

end A043938.P13717555746767731863

/-!
# A043940: Numbers k such that 1 and 3 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043940, there is no canonical definition to state claims against.
-/

/-! ## A043940.P16223939337903465503

`or(A043160(n+1)-1, A043160(n+1))`
-/

namespace A043940.P16223939337903465503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043160 (n + 1) - 1) (A043160 (n + 1))

end

end A043940.P16223939337903465503

/-! ## A043940.P14311086032707513012

`or(A057428(n)+A043160(n+1), A043160(n+1))`
-/

namespace A043940.P14311086032707513012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A043160 (n + 1)) (A043160 (n + 1))

end

end A043940.P14311086032707513012

/-! ## A043940.P18338118235174095088

`A086799(A043160(n+1))`
-/

namespace A043940.P18338118235174095088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A043160 (n + 1)).toNat

end

end A043940.P18338118235174095088

/-!
# A043941: Numbers k such that 1 and 4 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043941, there is no canonical definition to state claims against.
-/

/-! ## A043941.P12594763445113106383

`and(A043942(n+1), A043943(A331561(n+1)))`
-/

namespace A043941.P12594763445113106383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043942 (n + 1)) (A043943 (A331561 (n + 1)).toNat)

end

end A043941.P12594763445113106383

/-!
# A043942: Numbers k such that 1 and 5 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043942, there is no canonical definition to state claims against.
-/

/-! ## A043942.P4388064037598212010

`or(A043162(n+1)-1, A043162(n+1))`
-/

namespace A043942.P4388064037598212010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043162 (n + 1) - 1) (A043162 (n + 1))

end

end A043942.P4388064037598212010

/-! ## A043942.P2566995812972419906

`A086799(A043162(n+1))`
-/

namespace A043942.P2566995812972419906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A043162 (n + 1)).toNat

end

end A043942.P2566995812972419906

/-!
# A043943: Numbers k such that 1 and 6 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043943, there is no canonical definition to state claims against.
-/

/-! ## A043943.P8349512960263606047

`or(A001222(A354378(n)), A043163(n+1))`
-/

namespace A043943.P8349512960263606047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A354378 n).toNat) (A043163 (n + 1))

end

end A043943.P8349512960263606047

/-!
# A043944: Numbers k such that 1 and 7 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043944, there is no canonical definition to state claims against.
-/

/-! ## A043944.P11256769751415009834

`or(A043164(n+1)-1, A043164(n+1))`
-/

namespace A043944.P11256769751415009834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043164 (n + 1) - 1) (A043164 (n + 1))

end

end A043944.P11256769751415009834

/-! ## A043944.P3096399938089660686

`A086799(A043164(n+1))`
-/

namespace A043944.P3096399938089660686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A043164 (n + 1)).toNat

end

end A043944.P3096399938089660686

/-! ## A043944.P10461170495177595569

`or(9, A043943(A187829(n+1)))`
-/

namespace A043944.P10461170495177595569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A043943 (A187829 (n + 1)).toNat)

end

end A043944.P10461170495177595569

/-! ## A043944.P17936367666821669896

`or(A043939(n+1), A043942(A187829(n+1)))`
-/

namespace A043944.P17936367666821669896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043939 (n + 1)) (A043942 (A187829 (n + 1)).toNat)

end

end A043944.P17936367666821669896

/-! ## A043944.P7534160360860338045

`or(A043940(n+1), A043942(A187829(n+1)))`
-/

namespace A043944.P7534160360860338045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043940 (n + 1)) (A043942 (A187829 (n + 1)).toNat)

end

end A043944.P7534160360860338045

/-!
# A043945: Numbers k such that 2 and 3 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043945, there is no canonical definition to state claims against.
-/

/-! ## A043945.P13154763776266438607

`or(A004183(A067089(n+1)), A043165(n+1))`
-/

namespace A043945.P13154763776266438607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004183 (A067089 (n + 1)).toNat) (A043165 (n + 1))

end

end A043945.P13154763776266438607

/-! ## A043945.P12032482169806945333

`or(A020639(A301527(n+1)), A043165(n+1))`
-/

namespace A043945.P12032482169806945333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A301527 (n + 1)).toNat) (A043165 (n + 1))

end

end A043945.P12032482169806945333

/-!
# A043946: Numbers k such that 2 and 4 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043946, there is no canonical definition to state claims against.
-/

/-! ## A043946.P12701804813795507662

`A043167(n+1)-A010125(A200468(n+1))`
-/

namespace A043946.P12701804813795507662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043167 (n + 1) - A010125 (A200468 (n + 1)).toNat

end

end A043946.P12701804813795507662

/-! ## A043946.P12023859315179188696

`A046665(n+1)+A037474(A043922(n+1)+A007913(7^n))`
-/

namespace A043946.P12023859315179188696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + A037474 (A043922 (n + 1) + A007913 (7 ^ n)).toNat

end

end A043946.P12023859315179188696

/-!
# A043947: Numbers k such that 2 and 5 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043947, there is no canonical definition to state claims against.
-/

/-! ## A043947.P397072465985710387

`or(A043167(n+1), A043946(A331561(n+1)))`
-/

namespace A043947.P397072465985710387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043167 (n + 1)) (A043946 (A331561 (n + 1)).toNat)

end

end A043947.P397072465985710387

/-!
# A043948: Numbers k such that 2 and 6 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043948, there is no canonical definition to state claims against.
-/

/-! ## A043948.P12858323606604348761

`A057168(A043168(n+1)-1)`
-/

namespace A043948.P12858323606604348761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A043168 (n + 1) - 1).toNat

end

end A043948.P12858323606604348761

/-! ## A043948.P10607647732185643907

`A182187(A043168(n+1)-1)`
-/

namespace A043948.P10607647732185643907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182187 (A043168 (n + 1) - 1).toNat

end

end A043948.P10607647732185643907

/-! ## A043948.P11351627448016857908

`or(A003285(A216493(n)), A043168(n+1))`
-/

namespace A043948.P11351627448016857908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003285 (A216493 n).toNat) (A043168 (n + 1))

end

end A043948.P11351627448016857908

/-!
# A043949: Numbers k such that 2 and 7 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043949, there is no canonical definition to state claims against.
-/

/-! ## A043949.P1249677550252652131

`or(A040461(A256291(n+1)), A043948(n+1))`
-/

namespace A043949.P1249677550252652131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040461 (A256291 (n + 1)).toNat) (A043948 (n + 1))

end

end A043949.P1249677550252652131

/-! ## A043949.P5180199116667388547

`or(A043945(n+1), A043946(A187829(n+1)))`
-/

namespace A043949.P5180199116667388547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043945 (n + 1)) (A043946 (A187829 (n + 1)).toNat)

end

end A043949.P5180199116667388547

/-! ## A043949.P334379390667376589

`or(A043945(A187829(n+1)), A043947(n+1))`
-/

namespace A043949.P334379390667376589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043945 (A187829 (n + 1)).toNat) (A043947 (n + 1))

end

end A043949.P334379390667376589

/-! ## A043949.P9485291980635959616

`or(A043945(A187829(n+1)), A043948(n+1))`
-/

namespace A043949.P9485291980635959616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043945 (A187829 (n + 1)).toNat) (A043948 (n + 1))

end

end A043949.P9485291980635959616

/-! ## A043949.P15003930105963743446

`or(A043945(n+1), A043946(A077168(n)))`
-/

namespace A043949.P15003930105963743446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043945 (n + 1)) (A043946 (A077168 n).toNat)

end

end A043949.P15003930105963743446

/-!
# A043951: Numbers k such that 3 and 5 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043951, there is no canonical definition to state claims against.
-/

/-! ## A043951.P16808496168248426991

`or(A043171(n+1)-1, A043171(n+1))`
-/

namespace A043951.P16808496168248426991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043171 (n + 1) - 1) (A043171 (n + 1))

end

end A043951.P16808496168248426991

/-! ## A043951.P8013291138013058036

`A086799(A043171(n+1))`
-/

namespace A043951.P8013291138013058036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A043171 (n + 1)).toNat

end

end A043951.P8013291138013058036

/-! ## A043951.P9670266722726514135

`A241816(A043952(n+1)*A147454(n+1))`
-/

namespace A043951.P9670266722726514135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A043952 (n + 1) * A147454 (n + 1)).toNat

end

end A043951.P9670266722726514135

/-! ## A043951.P18063628832407124307

`A241816(A043952(n+1)^A147454(n+1))`
-/

namespace A043951.P18063628832407124307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (SequenceMachineLib.roundAway ((A043952 (n + 1) : ℚ) ^ (A147454 (n + 1) : ℤ))).toNat

end

end A043951.P18063628832407124307

/-! ## A043951.P4850018423010982023

`or(A043171(n+1), A103627(A146611(n+1)))`
-/

namespace A043951.P4850018423010982023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043171 (n + 1)) (A103627 (A146611 (n + 1)).toNat)

end

end A043951.P4850018423010982023

/-!
# A043952: Numbers k such that 3 and 6 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043952, there is no canonical definition to state claims against.
-/

/-! ## A043952.P16952463574565884638

`A204293(A093637(n))+A043172(n+1)`
-/

namespace A043952.P16952463574565884638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204293 (A093637 n).toNat + A043172 (n + 1)

end

end A043952.P16952463574565884638

/-! ## A043952.P13049501282869746431

`or(A043172(n+1), A325135(A017934(n)))`
-/

namespace A043952.P13049501282869746431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043172 (n + 1)) (A325135 (A017934 n).toNat)

end

end A043952.P13049501282869746431

/-! ## A043952.P7772520609242814551

`or(A001222(A126094(n+1)), A043172(n+1))`
-/

namespace A043952.P7772520609242814551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A126094 (n + 1)).toNat) (A043172 (n + 1))

end

end A043952.P7772520609242814551

/-!
# A043953: Numbers k such that 3 and 7 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043953, there is no canonical definition to state claims against.
-/

/-! ## A043953.P12842760928822486571

`A086799(A043173(n+1))`
-/

namespace A043953.P12842760928822486571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A043173 (n + 1)).toNat

end

end A043953.P12842760928822486571

/-! ## A043953.P10921277695453394818

`or(or(9, A043952(n+1)), A343378(A192517(n+2)))`
-/

namespace A043953.P10921277695453394818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lor 9 (A043952 (n + 1))) (A343378 (A192517 (n + 2)).toNat)

end

end A043953.P10921277695453394818

/-! ## A043953.P2180964692755548355

`or(9, A043952(n+1))%A236612(2*n+5)`
-/

namespace A043953.P2180964692755548355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 9 (A043952 (n + 1))) (A236612 (2 * n + 5))

end

end A043953.P2180964692755548355

/-! ## A043953.P1394286212925950474

`A010052(A183215(n+1))+or(9, A043952(n+1))`
-/

namespace A043953.P1394286212925950474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A183215 (n + 1)).toNat + Int.lor 9 (A043952 (n + 1))

end

end A043953.P1394286212925950474

/-! ## A043953.P1025240603105987343

`or(9, A043952(n+1))*A057427(A000009(n+1))`
-/

namespace A043953.P1025240603105987343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A043952 (n + 1)) * A057427 (A000009 (n + 1)).toNat

end

end A043953.P1025240603105987343

/-! ## A043953.P16778008036308957300

`or(9, A043952(n+1))*A057427(A246088(n+1))`
-/

namespace A043953.P16778008036308957300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A043952 (n + 1)) * A057427 (A246088 (n + 1)).toNat

end

end A043953.P16778008036308957300

/-! ## A043953.P2642572999613663966

`or(9, A043952(n+1))*A001222(A065854(n+1))`
-/

namespace A043953.P2642572999613663966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A043952 (n + 1)) * A001222 (A065854 (n + 1)).toNat

end

end A043953.P2642572999613663966

/-! ## A043953.P219251953029790198

`or(9, A043952(n+1))*A001222(A282345(n+1))`
-/

namespace A043953.P219251953029790198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A043952 (n + 1)) * A001222 (A282345 (n + 1)).toNat

end

end A043953.P219251953029790198

/-!
# A043956: Numbers k such that 4 and 7 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043956, there is no canonical definition to state claims against.
-/

/-! ## A043956.P15232170205212528965

`or(A040881(A090108(n+1)²), A043955(n+1))`
-/

namespace A043956.P15232170205212528965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040881 (A090108 (n + 1) ^ 2).toNat) (A043955 (n + 1))

end

end A043956.P15232170205212528965

/-! ## A043956.P10035922002405894965

`or(A040881(A167614(2*(n+1))+6), A043955(n+1))`
-/

namespace A043956.P10035922002405894965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040881 (A167614 (2 * (n + 1)) + 6).toNat) (A043955 (n + 1))

end

end A043956.P10035922002405894965

/-! ## A043956.P2041876575999380457

`or(A040881((n+1)*A154385(n+5)), A043955(n+1))`
-/

namespace A043956.P2041876575999380457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040881 ((n + 1 : ℤ) * A154385 (n + 5)).toNat) (A043955 (n + 1))

end

end A043956.P2041876575999380457

/-! ## A043956.P6289499060639328402

`or(A040881((n+1)^3), A043955(n+1))`
-/

namespace A043956.P6289499060639328402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040881 ((n + 1) ^ 3)) (A043955 (n + 1))

end

end A043956.P6289499060639328402

/-! ## A043956.P8617008020262496958

`or(A043954(n+1), A043955(A187829(n+1)))`
-/

namespace A043956.P8617008020262496958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043954 (n + 1)) (A043955 (A187829 (n + 1)).toNat)

end

end A043956.P8617008020262496958

/-!
# A043958: Numbers k such that 5 and 7 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043958, there is no canonical definition to state claims against.
-/

/-! ## A043958.P7482349372041347918

`or(A043178(n+1)-1, A043178(n+1))`
-/

namespace A043958.P7482349372041347918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043178 (n + 1) - 1) (A043178 (n + 1))

end

end A043958.P7482349372041347918

/-! ## A043958.P3792481571906029105

`A086799(A043178(n+1))`
-/

namespace A043958.P3792481571906029105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A043178 (n + 1)).toNat

end

end A043958.P3792481571906029105

/-! ## A043958.P15380095657538456762

`A115510(or(9, A043957(n+1)))`
-/

namespace A043958.P15380095657538456762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (Int.lor 9 (A043957 (n + 1))).toNat

end

end A043958.P15380095657538456762

/-! ## A043958.P11099009501356811495

`or(9, A043957(A187829(n+1)))`
-/

namespace A043958.P11099009501356811495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A043957 (A187829 (n + 1)).toNat)

end

end A043958.P11099009501356811495

/-! ## A043958.P7510728226583580006

`or(A043178(n+1), A280489(A204644(n+1)))`
-/

namespace A043958.P7510728226583580006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043178 (n + 1)) (A280489 (A204644 (n + 1)).toNat)

end

end A043958.P7510728226583580006

/-!
# A043959: Numbers k such that 6 and 7 occur juxtaposed in the base-8 representation of k but not of k+1.

The programs for A043959, there is no canonical definition to state claims against.
-/

/-! ## A043959.P16913230624088979458

`or(A043179(n+1), A287877(A273255(n+1)))`
-/

namespace A043959.P16913230624088979458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043179 (n + 1)) (A287877 (A273255 (n + 1)).toNat)

end

end A043959.P16913230624088979458

/-! ## A043959.P18110554795339229937

`or(A001222(A121648(n)), A043179(n+1))`
-/

namespace A043959.P18110554795339229937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A121648 n).toNat) (A043179 (n + 1))

end

end A043959.P18110554795339229937

/-! ## A043959.P798971696044977875

`or(A043179(n+1), A185284(A030106(n)))`
-/

namespace A043959.P798971696044977875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043179 (n + 1)) (A185284 (A030106 n).toNat)

end

end A043959.P798971696044977875

/-! ## A043959.P7882182589725851766

`or(A012265(A007030(n+1)), A043179(n+1))`
-/

namespace A043959.P7882182589725851766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012265 (A007030 (n + 1)).toNat) (A043179 (n + 1))

end

end A043959.P7882182589725851766

/-!
# A043960: Numbers k such that 0 and 1 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043960, there is no canonical definition to state claims against.
-/

/-! ## A043960.P15351472634103520365

`A037475(A043911(n+1)^A189006(n))`
-/

namespace A043960.P15351472634103520365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043911 (n + 1) : ℚ) ^ (A189006 n : ℤ))).toNat

end

end A043960.P15351472634103520365

/-! ## A043960.P6304319306926277734

`A037477(A043932(n+1)^A189006(n))`
-/

namespace A043960.P6304319306926277734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043932 (n + 1) : ℚ) ^ (A189006 n : ℤ))).toNat

end

end A043960.P6304319306926277734

/-! ## A043960.P18156934725630038887

`A037475(lcm(A043911(n+1), A141588(n)))`
-/

namespace A043960.P18156934725630038887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Int.lcm (A043911 (n + 1)) (A141588 n))

end

end A043960.P18156934725630038887

/-! ## A043960.P10464347817898648537

`A037475(C(A043911(n+1), A189006(n)))`
-/

namespace A043960.P10464347817898648537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Nat.choose (A043911 (n + 1)).toNat (A189006 n).toNat)

end

end A043960.P10464347817898648537

/-! ## A043960.P4029864459692346428

`A037477(C(A043932(n+1), A189006(n)))`
-/

namespace A043960.P4029864459692346428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A043932 (n + 1)).toNat (A189006 n).toNat)

end

end A043960.P4029864459692346428

/-!
# A043962: Numbers k such that 0 and 3 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043962, there is no canonical definition to state claims against.
-/

/-! ## A043962.P10531497050247239082

`or(A028932(A175164(n)), A043182(n+1))`
-/

namespace A043962.P10531497050247239082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028932 (A175164 n).toNat) (A043182 (n + 1))

end

end A043962.P10531497050247239082

/-! ## A043962.P1370115976261747450

`A061858(A289066(n))+A043182(n+1)`
-/

namespace A043962.P1370115976261747450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (A289066 n).toNat + A043182 (n + 1)

end

end A043962.P1370115976261747450

/-! ## A043962.P2580827244546349877

`A061858(A125859(n))+A043182(n+1)`
-/

namespace A043962.P2580827244546349877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (A125859 n).toNat + A043182 (n + 1)

end

end A043962.P2580827244546349877

/-!
# A043963: Numbers k such that 0 and 4 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043963, there is no canonical definition to state claims against.
-/

/-! ## A043963.P1014989481832024032

`or(A043183(n+1), A210607(A174300(n)))`
-/

namespace A043963.P1014989481832024032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043183 (n + 1)) (A210607 (A174300 n).toNat)

end

end A043963.P1014989481832024032

/-! ## A043963.P3808157670227503441

`or(A043183(n+1), A210608(A318123(n)))`
-/

namespace A043963.P3808157670227503441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043183 (n + 1)) (A210608 (A318123 n).toNat)

end

end A043963.P3808157670227503441

/-! ## A043963.P7112230461247616977

`A043183(n+1)+A028609(A065762(n+1))`
-/

namespace A043963.P7112230461247616977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043183 (n + 1) + A028609 (A065762 (n + 1)).toNat

end

end A043963.P7112230461247616977

/-! ## A043963.P17865481959503854158

`A260671(A030078(n+1))+A043183(n+1)`
-/

namespace A043963.P17865481959503854158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (A030078 (n + 1)).toNat + A043183 (n + 1)

end

end A043963.P17865481959503854158

/-!
# A043964: Numbers k such that 0 and 5 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043964, there is no canonical definition to state claims against.
-/

/-! ## A043964.P17829964218770600039

`or(A005928(A331976(n+2)), A043184(n+1))`
-/

namespace A043964.P17829964218770600039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005928 (A331976 (n + 2)).toNat) (A043184 (n + 1))

end

end A043964.P17829964218770600039

/-! ## A043964.P3110416604462895659

`or(A043184(n+1), A326596(A267266(n+1)))`
-/

namespace A043964.P3110416604462895659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043184 (n + 1)) (A326596 (A267266 (n + 1)).toNat)

end

end A043964.P3110416604462895659

/-!
# A043965: Numbers k such that 0 and 6 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043965, there is no canonical definition to state claims against.
-/

/-! ## A043965.P12757503166364266186

`or(A043185(n+1), A185284((5-n)²))`
-/

namespace A043965.P12757503166364266186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043185 (n + 1)) (A185284 ((5 - (n : ℤ)) ^ 2).toNat)

end

end A043965.P12757503166364266186

/-!
# A043969: Numbers k such that 1 and 3 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043969, there is no canonical definition to state claims against.
-/

/-! ## A043969.P6547419738154770224

`A255805(A043940(n+1)^Δ[A255805(n+1)])`
-/

namespace A043969.P6547419738154770224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255805 (SequenceMachineLib.roundAway ((A043940 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A043969.P6547419738154770224

/-!
# A043970: Numbers k such that 1 and 4 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043970, there is no canonical definition to state claims against.
-/

/-! ## A043970.P17984246886601099299

`A043974(n+1)-A055491(A008776(n))`
-/

namespace A043970.P17984246886601099299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043974 (n + 1) - A055491 (A008776 n).toNat

end

end A043970.P17984246886601099299

/-! ## A043970.P16211556445823704070

`or(A043190(n+1), A175375(A076279(n+1)))`
-/

namespace A043970.P16211556445823704070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043190 (n + 1)) (A175375 (A076279 (n + 1)).toNat)

end

end A043970.P16211556445823704070

/-! ## A043970.P10573595051417988838

`or(A043190(n+1), A309788(A039101(n+1)!))`
-/

namespace A043970.P10573595051417988838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043190 (n + 1)) (A309788 (Nat.factorial (A039101 (n + 1)).toNat))

end

end A043970.P10573595051417988838

/-!
# A043971: Numbers k such that 1 and 5 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043971, there is no canonical definition to state claims against.
-/

/-! ## A043971.P18282237696844684294

`A037475(A043919(n+1)+A007913(7^n)+1)-1`
-/

namespace A043971.P18282237696844684294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A043919 (n + 1) + A007913 (7 ^ n) + 1).toNat - 1

end

end A043971.P18282237696844684294

/-! ## A043971.P9705405027237151918

`A037475(A043921(n+1)-A007913(7^n)+1)-1`
-/

namespace A043971.P9705405027237151918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A043921 (n + 1) - A007913 (7 ^ n) + 1).toNat - 1

end

end A043971.P9705405027237151918

/-!
# A043972: Numbers k such that 1 and 6 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043972, there is no canonical definition to state claims against.
-/

/-! ## A043972.P12023707377510949858

`A043974(n+1)-A055491(A008776(n))/2`
-/

namespace A043972.P12023707377510949858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043974 (n + 1) : ℚ) - (A055491 (A008776 n).toNat : ℚ) / 2

end

end A043972.P12023707377510949858

/-! ## A043972.P17013122724566926338

`or(A043192(n+1), A125061(A069975(n+1)))`
-/

namespace A043972.P17013122724566926338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043192 (n + 1)) (A125061 (A069975 (n + 1)).toNat)

end

end A043972.P17013122724566926338

/-! ## A043972.P8936171453327442842

`A108563(A264902(2*n+1))+A043192(n+1)`
-/

namespace A043972.P8936171453327442842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (A264902 (2 * n + 1)).toNat + A043192 (n + 1)

end

end A043972.P8936171453327442842

/-!
# A043973: Numbers k such that 1 and 7 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043973, there is no canonical definition to state claims against.
-/

/-! ## A043973.P5942577944497220512

`A259567(A258881(n))+A043193(n+1)`
-/

namespace A043973.P5942577944497220512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259567 (A258881 n).toNat + A043193 (n + 1)

end

end A043973.P5942577944497220512

/-! ## A043973.P14758820697107073947

`A043974(n+1)-A055491(A000244(n))`
-/

namespace A043973.P14758820697107073947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043974 (n + 1) - A055491 (A000244 n).toNat

end

end A043973.P14758820697107073947

/-! ## A043973.P11749878814448943082

`A043974(n+1)-A055491(A008776(n)/2)`
-/

namespace A043973.P11749878814448943082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043974 (n + 1) - A055491 (SequenceMachineLib.roundAway ((A008776 n : ℚ) / 2)).toNat

end

end A043973.P11749878814448943082

/-! ## A043973.P5601912068235457266

`A043193(n+1)+A004018(A087185(n+3))`
-/

namespace A043973.P5601912068235457266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043193 (n + 1) + A004018 (A087185 (n + 3)).toNat

end

end A043973.P5601912068235457266

/-!
# A043974: Numbers k such that 1 and 8 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043974, there is no canonical definition to state claims against.
-/

/-! ## A043974.P12749185782028839935

`A126257(A043973(n+1)+A043961(n+1))`
-/

namespace A043974.P12749185782028839935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A043973 (n + 1) + A043961 (n + 1)).toNat

end

end A043974.P12749185782028839935

/-! ## A043974.P4315545623219740927

`A259567(A258881(n))+A043194(n+1)`
-/

namespace A043974.P4315545623219740927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259567 (A258881 n).toNat + A043194 (n + 1)

end

end A043974.P4315545623219740927

/-!
# A043975: Numbers k such that 2 and 3 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043975, there is no canonical definition to state claims against.
-/

/-! ## A043975.P7866805331938493916

`A057464(A232982(n))+A043195(n+1)`
-/

namespace A043975.P7866805331938493916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057464 (A232982 n).toNat + A043195 (n + 1)

end

end A043975.P7866805331938493916

/-!
# A043976: Numbers k such that 2 and 4 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043976, there is no canonical definition to state claims against.
-/

/-! ## A043976.P3174415842326723058

`A283978(A276080(n))+A043196(n+1)`
-/

namespace A043976.P3174415842326723058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (A276080 n).toNat + A043196 (n + 1)

end

end A043976.P3174415842326723058

/-! ## A043976.P7980108026116492884

`or(A043196(n+1), A177886(A016933(n)))`
-/

namespace A043976.P7980108026116492884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043196 (n + 1)) (A177886 (A016933 n).toNat)

end

end A043976.P7980108026116492884

/-! ## A043976.P15463646338180823972

`or(A001222(A182967(n)), A043196(n+1))`
-/

namespace A043976.P15463646338180823972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A182967 n).toNat) (A043196 (n + 1))

end

end A043976.P15463646338180823972

/-!
# A043977: Numbers k such that 2 and 5 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043977, there is no canonical definition to state claims against.
-/

/-! ## A043977.P5932212309825348014

`A283978(A276080(n))+A043197(n+1)`
-/

namespace A043977.P5932212309825348014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (A276080 n).toNat + A043197 (n + 1)

end

end A043977.P5932212309825348014

/-! ## A043977.P370537530481914674

`A043197(n+1)+A007331(A051118(n))`
-/

namespace A043977.P370537530481914674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043197 (n + 1) + A007331 (A051118 n).toNat

end

end A043977.P370537530481914674

/-!
# A043978: Numbers k such that 2 and 6 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043978, there is no canonical definition to state claims against.
-/

/-! ## A043978.P4215373132533978295

`A283978(A276080(n))+A043198(n+1)`
-/

namespace A043978.P4215373132533978295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (A276080 n).toNat + A043198 (n + 1)

end

end A043978.P4215373132533978295

/-!
# A043979: Numbers k such that 2 and 7 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043979, there is no canonical definition to state claims against.
-/

/-! ## A043979.P1061005021656788688

`A126257(A043980(n+1)+A043978(n+1))`
-/

namespace A043979.P1061005021656788688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A043980 (n + 1) + A043978 (n + 1)).toNat

end

end A043979.P1061005021656788688

/-! ## A043979.P3710870574214862390

`A283978(A276080(n))+A043199(n+1)`
-/

namespace A043979.P3710870574214862390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (A276080 n).toNat + A043199 (n + 1)

end

end A043979.P3710870574214862390

/-! ## A043979.P192972920788171208

`A283978(A276080(n))+A126257(A044301(n+1))`
-/

namespace A043979.P192972920788171208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (A276080 n).toNat + A126257 (A044301 (n + 1)).toNat

end

end A043979.P192972920788171208

/-!
# A043980: Numbers k such that 2 and 8 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043980, there is no canonical definition to state claims against.
-/

/-! ## A043980.P15791353477129720889

`A126257(A043979(n+1)+A043962(n+1))`
-/

namespace A043980.P15791353477129720889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A043979 (n + 1) + A043962 (n + 1)).toNat

end

end A043980.P15791353477129720889

/-! ## A043980.P2645013319576551096

`A283978(A276080(n))+A043200(n+1)`
-/

namespace A043980.P2645013319576551096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (A276080 n).toNat + A043200 (n + 1)

end

end A043980.P2645013319576551096

/-!
# A043981: Numbers k such that 3 and 4 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043981, there is no canonical definition to state claims against.
-/

/-! ## A043981.P110282042618871099

`or(A010894(A320964(n)), A043201(n+1))`
-/

namespace A043981.P110282042618871099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A320964 n).toNat + 21)) (A043201 (n + 1))

end

end A043981.P110282042618871099

/-!
# A043982: Numbers k such that 3 and 5 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043982, there is no canonical definition to state claims against.
-/

/-! ## A043982.P11616474916313427724

`A184974(A161119(n))+A043202(n+1)`
-/

namespace A043982.P11616474916313427724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A161119 n).toNat + A043202 (n + 1)

end

end A043982.P11616474916313427724

/-! ## A043982.P11985772742095000865

`A184974(A161121(n))+A043202(n+1)`
-/

namespace A043982.P11985772742095000865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A161121 n).toNat + A043202 (n + 1)

end

end A043982.P11985772742095000865

/-!
# A043983: Numbers k such that 3 and 6 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043983, there is no canonical definition to state claims against.
-/

/-! ## A043983.P2511798437107862249

`A319021(A043203(n+1)-2)`
-/

namespace A043983.P2511798437107862249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A043203 (n + 1) - 2).toNat

end

end A043983.P2511798437107862249

/-!
# A043984: Numbers k such that 3 and 7 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043984, there is no canonical definition to state claims against.
-/

/-! ## A043984.P15973308352695207934

`A270417(A042645(n))+A043204(n+1)`
-/

namespace A043984.P15973308352695207934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A042645 n).toNat + A043204 (n + 1)

end

end A043984.P15973308352695207934

/-! ## A043984.P15287286405460892619

`or(A043204(n+1), A185255(A020492(n+1)))`
-/

namespace A043984.P15287286405460892619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043204 (n + 1)) (A185255 (A020492 (n + 1)).toNat)

end

end A043984.P15287286405460892619

/-!
# A043985: Numbers k such that 3 and 8 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043985, there is no canonical definition to state claims against.
-/

/-! ## A043985.P16267016501985543771

`A280799(A000142(n))+A043205(n+1)`
-/

namespace A043985.P16267016501985543771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280799 (A000142 n).toNat + A043205 (n + 1)

end

end A043985.P16267016501985543771

/-!
# A043986: Numbers k such that 4 and 5 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043986, there is no canonical definition to state claims against.
-/

/-! ## A043986.P8725634295242927785

`A138472(n+1)+A037477(A136400(n)!*A043174(n+1))`
-/

namespace A043986.P8725634295242927785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138472 (n + 1) + A037477 ((Nat.factorial (A136400 n).toNat : ℤ) * A043174 (n + 1)).toNat

end

end A043986.P8725634295242927785

/-! ## A043986.P5759337594941454121

`A138472(n+1)+A037477(A043174(n+1)^A136400(n)!)`
-/

namespace A043986.P5759337594941454121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138472 (n + 1) + A037477 (A043174 (n + 1) ^ Nat.factorial (A136400 n).toNat).toNat

end

end A043986.P5759337594941454121

/-!
# A043987: Numbers k such that 4 and 6 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043987, there is no canonical definition to state claims against.
-/

/-! ## A043987.P11708063686798220503

`A169778(A169764(n+1))+A043207(n+1)`
-/

namespace A043987.P11708063686798220503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169778 (A169764 (n + 1)).toNat + A043207 (n + 1)

end

end A043987.P11708063686798220503

/-!
# A043988: Numbers k such that 4 and 7 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043988, there is no canonical definition to state claims against.
-/

/-! ## A043988.P6969084646374860745

`or(A043208(n+1), A202385(A008955(n)))`
-/

namespace A043988.P6969084646374860745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043208 (n + 1)) (A202385 ((A008955 n).toNat + 31))

end

end A043988.P6969084646374860745

/-!
# A043990: Numbers k such that 5 and 6 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043990, there is no canonical definition to state claims against.
-/

/-! ## A043990.P768607642712780587

`A181153(A084600(n))+A043210(n+1)`
-/

namespace A043990.P768607642712780587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181153 (A084600 n).toNat + A043210 (n + 1)

end

end A043990.P768607642712780587

/-!
# A043993: Numbers k such that 6 and 7 occur juxtaposed in the base-9 representation of k but not of k+1.

The programs for A043993, there is no canonical definition to state claims against.
-/

/-! ## A043993.P9467442567524618209

`or(A004181(A185213(n)), A043213(n+1))`
-/

namespace A043993.P9467442567524618209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004181 (A185213 n).toNat) (A043213 (n + 1))

end

end A043993.P9467442567524618209

/-!
# A043996: Numbers k such that 0 and 1 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A043996, there is no canonical definition to state claims against.
-/

/-! ## A043996.P8603327194220340977

`A007095(A043960(n+1)%A075975(n))`
-/

namespace A043996.P8603327194220340977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043960 (n + 1)) (A075975 n)).toNat

end

end A043996.P8603327194220340977

/-! ## A043996.P10699462934394213236

`A007095(A043960(n+1))%A205046(A037405(n+1))`
-/

namespace A043996.P10699462934394213236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043960 (n + 1)).toNat) (A205046 (A037405 (n + 1)).toNat)

end

end A043996.P10699462934394213236

/-! ## A043996.P1535154318833395265

`A243055(2^n)+A007095(A043960(n+1))`
-/

namespace A043996.P1535154318833395265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (2 ^ n) + A007095 (A043960 (n + 1)).toNat

end

end A043996.P1535154318833395265

/-! ## A043996.P16221819837860493261

`A007095(A043960(n+1))*A300219(2^n)`
-/

namespace A043996.P16221819837860493261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043960 (n + 1)).toNat * A300219 (2 ^ n)

end

end A043996.P16221819837860493261

/-! ## A043996.P11742272138716146869

`A007095(A043960(n+1))*A301391(2^n)`
-/

namespace A043996.P11742272138716146869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043960 (n + 1)).toNat * A301391 (2 ^ n)

end

end A043996.P11742272138716146869

/-!
# A043997: Numbers k such that 0 and 2 occur juxtaposed in the base-10 representation of k but not of k+1.

The programs for A043997, there is no canonical definition to state claims against.
-/

/-! ## A043997.P9998246492917377741

`A347149(A000029(2*n+3))+A043217(n+1)`
-/

namespace A043997.P9998246492917377741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347149 (A000029 (2 * n + 3)).toNat + A043217 (n + 1)

end

end A043997.P9998246492917377741

/-! ## A043997.P12983382216818531394

`A255808(C(A043961(n+1), A255808(n+1)-n))`
-/

namespace A043997.P12983382216818531394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255808 (Nat.choose (A043961 (n + 1)).toNat (A255808 (n + 1) - (n : ℤ)).toNat)

end

end A043997.P12983382216818531394

/-! ## A043997.P8687235694260970078

`A255808(C(A043961(n+1), A147215(n+1)))`
-/

namespace A043997.P8687235694260970078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255808 (Nat.choose (A043961 (n + 1)).toNat (A147215 (n + 1)).toNat)

end

end A043997.P8687235694260970078

