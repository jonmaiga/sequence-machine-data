import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

/-!
# A146600: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1000-1111 pattern in any orientation.

The programs for A146600, there is no canonical definition to state claims against.
-/

/-! ## A146600.P9789178273688354786

`A236378(n)+A087052(A229885(n))`
-/

namespace A146600.P9789178273688354786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n + A087052 (A229885 n).toNat

end

end A146600.P9789178273688354786

/-! ## A146600.P10934795496450354534

`A122213(A373912(n))`
-/

namespace A146600.P10934795496450354534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122213 (A373912 n).toNat

end

end A146600.P10934795496450354534

/-! ## A146600.P3667622159172378113

`A122213(A393658(n))`
-/

namespace A146600.P3667622159172378113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122213 (A393658 n).toNat

end

end A146600.P3667622159172378113

/-! ## A146600.P7118650224491789654

`A122213(A212386(n+1))`
-/

namespace A146600.P7118650224491789654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122213 (A212386 (n + 1)).toNat

end

end A146600.P7118650224491789654

/-! ## A146600.P10197882962077882051

`A347644(A036421(n+1))`
-/

namespace A146600.P10197882962077882051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347644 (A036421 (n + 1)).toNat

end

end A146600.P10197882962077882051

/-!
# A146602: Number of n X n binary arrays with all ones connected only in a 1000-1111-0001 pattern in any orientation.

The programs for A146602, there is no canonical definition to state claims against.
-/

/-! ## A146602.P12049564606948872795

`A146604(2*n+3)`
-/

namespace A146602.P12049564606948872795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146604 (2 * n + 3)

end

end A146602.P12049564606948872795

/-! ## A146602.P16677923252187098017

`or(1, A146604(A193175(n+1)))`
-/

namespace A146602.P16677923252187098017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146604 (A193175 (n + 1)).toNat)

end

end A146602.P16677923252187098017

/-! ## A146602.P5084317132410034566

`or(1, A146604(A325038(n+1)))`
-/

namespace A146602.P5084317132410034566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146604 (A325038 (n + 1)).toNat)

end

end A146602.P5084317132410034566

/-! ## A146602.P4673398463164047219

`A308978(n)+A146604(A193175(n+1))`
-/

namespace A146602.P4673398463164047219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308978 n + A146604 (A193175 (n + 1)).toNat

end

end A146602.P4673398463164047219

/-! ## A146602.P18366230549007769631

`A146604(A193175(n+1))/A146466(n+1)`
-/

namespace A146602.P18366230549007769631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146604 (A193175 (n + 1)).toNat : ℚ) / (A146466 (n + 1) : ℚ)

end

end A146602.P18366230549007769631

/-!
# A146605: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1111-0001 pattern in any orientation.

The programs for A146605, there is no canonical definition to state claims against.
-/

/-! ## A146605.P13014528714818120560

`A146607(2*(n+2))`
-/

namespace A146605.P13014528714818120560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146607 (2 * (n + 2))

end

end A146605.P13014528714818120560

/-! ## A146605.P2722169827776421850

`or(1, A146607(A144396(n+1)))`
-/

namespace A146605.P2722169827776421850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146607 (A144396 (n + 1)).toNat)

end

end A146605.P2722169827776421850

/-! ## A146605.P4244865959921044015

`or(1, A146607(A207188(n+1)))`
-/

namespace A146605.P4244865959921044015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146607 (A207188 (n + 1)).toNat)

end

end A146605.P4244865959921044015

/-! ## A146605.P9545354609259546695

`or(1, A146607(A346302(n+1)))`
-/

namespace A146605.P9545354609259546695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146607 (A346302 (n + 1)).toNat)

end

end A146605.P9545354609259546695

/-! ## A146605.P5042576146577062021

`A146607(A144396(n+1))+A011730(n)`
-/

namespace A146605.P5042576146577062021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146607 (A144396 (n + 1)).toNat + A011730 n

end

end A146605.P5042576146577062021

/-!
# A146606: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1111-0001 pattern in any orientation.

The programs for A146606, there is no canonical definition to state claims against.
-/

/-! ## A146606.P7743977161389919221

`A147380(A248502(n+1)+1)`
-/

namespace A146606.P7743977161389919221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147380 (A248502 (n + 1) + 1).toNat

end

end A146606.P7743977161389919221

/-! ## A146606.P6286541683725187750

`A147380(A250039(n+1)+1)`
-/

namespace A146606.P6286541683725187750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147380 (A250039 (n + 1) + 1).toNat

end

end A146606.P6286541683725187750

/-! ## A146606.P12581032445366297273

`or(A001222(A147393(n+1)), A147380(n+3))`
-/

namespace A146606.P12581032445366297273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A147393 (n + 1)).toNat) (A147380 (n + 3))

end

end A146606.P12581032445366297273

/-! ## A146606.P7914779834189463213

`or(A001222(A147395(n+1)), A147380(n+3))`
-/

namespace A146606.P7914779834189463213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A147395 (n + 1)).toNat) (A147380 (n + 3))

end

end A146606.P7914779834189463213

/-! ## A146606.P1892931576310959212

`A285356(A147432(n+1))`
-/

namespace A146606.P1892931576310959212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285356 (A147432 (n + 1)).toNat

end

end A146606.P1892931576310959212

/-!
# A146607: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1111-0001 pattern in any orientation.

The programs for A146607, there is no canonical definition to state claims against.
-/

/-! ## A146607.P8555975077537152527

`A125157(A147433(n+1))`
-/

namespace A146607.P8555975077537152527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125157 (A147433 (n + 1)).toNat

end

end A146607.P8555975077537152527

/-! ## A146607.P15956223112955121155

`A347179(A147190(n+1))`
-/

namespace A146607.P15956223112955121155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347179 (A147190 (n + 1)).toNat

end

end A146607.P15956223112955121155

/-!
# A146608: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1111-0001 pattern in any orientation.

The programs for A146608, there is no canonical definition to state claims against.
-/

/-! ## A146608.P8281829428771627944

`A185284((4-n)²)+A100135(n)`
-/

namespace A146608.P8281829428771627944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 ((4 - (n : ℤ)) ^ 2).toNat + A100135 n

end

end A146608.P8281829428771627944

/-!
# A146610: Number of n X n binary arrays with all ones connected only in a 1000-1111-0110 pattern in any orientation.

The programs for A146610, there is no canonical definition to state claims against.
-/

/-! ## A146610.P4219219765706073234

`A146612(2*(n+2))`
-/

namespace A146610.P4219219765706073234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146612 (2 * (n + 2))

end

end A146610.P4219219765706073234

/-! ## A146610.P13055014876114724466

`or(1, A146612(A144396(n+1)))`
-/

namespace A146610.P13055014876114724466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146612 (A144396 (n + 1)).toNat)

end

end A146610.P13055014876114724466

/-! ## A146610.P6913291149529602464

`A146612(A144396(n+1))^A007318(∑[n])`
-/

namespace A146610.P6913291149529602464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146612 (A144396 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A146610.P6913291149529602464

/-! ## A146610.P14005124387859464612

`lcm(A146583(n+1), A146612(A144396(n+1)))`
-/

namespace A146610.P14005124387859464612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A146583 (n + 1)) (A146612 (A144396 (n + 1)).toNat)

end

end A146610.P14005124387859464612

/-! ## A146610.P7932129553083794051

`C(A146612(A144396(n+1)), A146591(n+1))`
-/

namespace A146610.P7932129553083794051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A146612 (A144396 (n + 1)).toNat).toNat (A146591 (n + 1)).toNat

end

end A146610.P7932129553083794051

/-!
# A146611: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1111-0110 pattern in any orientation.

The programs for A146611, there is no canonical definition to state claims against.
-/

/-! ## A146611.P11836427852380500428

`A004525(C(A167499(n), A026812(n)))`
-/

namespace A146611.P11836427852380500428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Nat.choose (A167499 n).toNat (A026812 n).toNat)

end

end A146611.P11836427852380500428

/-! ## A146611.P752188954703981959

`A008619(C(A167499(n), A026812(n)))`
-/

namespace A146611.P752188954703981959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.choose (A167499 n).toNat (A026812 n).toNat)

end

end A146611.P752188954703981959

/-! ## A146611.P6422447971373332518

`A004525(C(A167499(n), A034092(n)))`
-/

namespace A146611.P6422447971373332518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Nat.choose (A167499 n).toNat (A034092 n).toNat)

end

end A146611.P6422447971373332518

/-! ## A146611.P6016696228737402927

`A008619(C(A167499(n), A034092(n)))`
-/

namespace A146611.P6016696228737402927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.choose (A167499 n).toNat (A034092 n).toNat)

end

end A146611.P6016696228737402927

/-! ## A146611.P12281114077349335339

`A004525(C(A167499(n), A122189(n)))`
-/

namespace A146611.P12281114077349335339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Nat.choose (A167499 n).toNat (A122189 n).toNat)

end

end A146611.P12281114077349335339

/-!
# A146612: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1111-0110 pattern in any orientation.

The programs for A146612, there is no canonical definition to state claims against.
-/

/-! ## A146612.P11393030225355796746

`∏{p}[A146644(n+1)², #]`
-/

namespace A146612.P11393030225355796746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146644 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A146612.P11393030225355796746

/-! ## A146612.P6876805508797962379

`∏{p}[A147180(n+1)², #]`
-/

namespace A146612.P6876805508797962379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147180 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A146612.P6876805508797962379

/-! ## A146612.P3656290145200088046

`A146841(A070939(2^n))`
-/

namespace A146612.P3656290145200088046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146841 (A070939 (2 ^ n)).toNat

end

end A146612.P3656290145200088046

/-! ## A146612.P12888985166556034699

`A159353(3*A146644(n+1))`
-/

namespace A146612.P12888985166556034699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (3 * A146644 (n + 1)).toNat

end

end A146612.P12888985166556034699

/-! ## A146612.P7456866424533855792

`A060819(4*A146644(n+1))`
-/

namespace A146612.P7456866424533855792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (4 * A146644 (n + 1)).toNat

end

end A146612.P7456866424533855792

/-!
# A146613: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1111-0110 pattern in any orientation.

The programs for A146613, there is no canonical definition to state claims against.
-/

/-! ## A146613.P13109288344010064740

`A146615(2*n+3)`
-/

namespace A146613.P13109288344010064740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146615 (2 * n + 3)

end

end A146613.P13109288344010064740

/-! ## A146613.P15316503973781058203

`or(1, A146615(A005408(n+1)))`
-/

namespace A146613.P15316503973781058203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146615 (A005408 (n + 1)).toNat)

end

end A146613.P15316503973781058203

/-! ## A146613.P15303983456723799005

`or(1, A146615(A144396(n+1)))`
-/

namespace A146613.P15303983456723799005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146615 (A144396 (n + 1)).toNat)

end

end A146613.P15303983456723799005

/-! ## A146613.P4891163554794405220

`or(1, A146615(A182318(n+1)))`
-/

namespace A146613.P4891163554794405220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146615 (A182318 (n + 1)).toNat)

end

end A146613.P4891163554794405220

/-! ## A146613.P4334126743265136702

`or(1, A146615(A267872(n+1)))`
-/

namespace A146613.P4334126743265136702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146615 (A267872 (n + 1)).toNat)

end

end A146613.P4334126743265136702

/-!
# A146614: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1111-0110 pattern in any orientation.

The programs for A146614, there is no canonical definition to state claims against.
-/

/-! ## A146614.P11036279377431968659

`A003059(A146670(n+1)²)`
-/

namespace A146614.P11036279377431968659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A146670 (n + 1) ^ 2).toNat

end

end A146614.P11036279377431968659

/-!
# A146615: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1111-0110 pattern in any orientation.

The programs for A146615, there is no canonical definition to state claims against.
-/

/-! ## A146615.P4478716763063321420

`A183233(A146370(n+1))`
-/

namespace A146615.P4478716763063321420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (A146370 (n + 1)).toNat

end

end A146615.P4478716763063321420

/-! ## A146615.P12967453174377680047

`A146639(A358373(n+1))`
-/

namespace A146615.P12967453174377680047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146639 (A358373 (n + 1)).toNat

end

end A146615.P12967453174377680047

/-! ## A146615.P4473927705032645745

`A003059(A146639(n+1)²)`
-/

namespace A146615.P4473927705032645745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A146639 (n + 1) ^ 2).toNat

end

end A146615.P4473927705032645745

/-! ## A146615.P15061293765273735407

`A145283(A146671(n+1))/3`
-/

namespace A146615.P15061293765273735407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145283 (A146671 (n + 1)).toNat : ℚ) / 3

end

end A146615.P15061293765273735407

/-!
# A146616: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1111-0110 pattern in any orientation.

The programs for A146616, there is no canonical definition to state claims against.
-/

/-! ## A146616.P1790685795208918737

`A247424(A146184(n+1))`
-/

namespace A146616.P1790685795208918737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247424 (A146184 (n + 1)).toNat

end

end A146616.P1790685795208918737

/-! ## A146616.P995015191550051449

`A247424(A058058(n+2))`
-/

namespace A146616.P995015191550051449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247424 (A058058 (n + 2)).toNat

end

end A146616.P995015191550051449

/-! ## A146616.P17594337062038654870

`A236378(n+1)+A087052(A229885(n))`
-/

namespace A146616.P17594337062038654870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 (n + 1) + A087052 (A229885 n).toNat

end

end A146616.P17594337062038654870

/-!
# A146617: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1111-0110 pattern in any orientation.

The programs for A146617, there is no canonical definition to state claims against.
-/

/-! ## A146617.P5531090842167955155

`A065766(A276096(2*(n+1))+A180503(n))`
-/

namespace A146617.P5531090842167955155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065766 (A276096 (2 * (n + 1)) + A180503 n).toNat

end

end A146617.P5531090842167955155

/-! ## A146617.P6132498499034769096

`or(A106619(A124355(n+1)), A147256(n+1))`
-/

namespace A146617.P6132498499034769096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106619 (A124355 (n + 1)).toNat) (A147256 (n + 1))

end

end A146617.P6132498499034769096

/-!
# A146618: Number of n X n binary arrays with all ones connected only in a 1001-1111 pattern in any orientation.

The programs for A146618, there is no canonical definition to state claims against.
-/

/-! ## A146618.P1103140320058508234

`A146620(2*n+3)`
-/

namespace A146618.P1103140320058508234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146620 (2 * n + 3)

end

end A146618.P1103140320058508234

/-! ## A146618.P12755631853247906002

`∏{d}[A062545(n), A146620(#)]`
-/

namespace A146618.P12755631853247906002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146620 d

end

end A146618.P12755631853247906002

/-! ## A146618.P3049844228963743597

`or(1, A146620(A144396(n+1)))`
-/

namespace A146618.P3049844228963743597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146620 (A144396 (n + 1)).toNat)

end

end A146618.P3049844228963743597

/-! ## A146618.P14182545651201026395

`∏{d}[A144396(n+1), A146620(#)]`
-/

namespace A146618.P14182545651201026395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146620 d

end

end A146618.P14182545651201026395

/-! ## A146618.P1823963259554089768

`A146620(A144396(n+1))^A007318(∑[n])`
-/

namespace A146618.P1823963259554089768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146620 (A144396 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A146618.P1823963259554089768

/-!
# A146620: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1001-1111 pattern in any orientation.

The programs for A146620, there is no canonical definition to state claims against.
-/

/-! ## A146620.P11255112820933984118

`A274300(A297497(n)^A258709(n))`
-/

namespace A146620.P11255112820933984118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274300 (SequenceMachineLib.roundAway ((A297497 n : ℚ) ^ (A258709 n : ℤ))).toNat

end

end A146620.P11255112820933984118

/-! ## A146620.P7149335297686777492

`A283646(n)%A001316(A320950(n))`
-/

namespace A146620.P7149335297686777492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283646 n) (A001316 (A320950 n).toNat)

end

end A146620.P7149335297686777492

/-! ## A146620.P17421402238890366557

`gcd(A114229(n+1), A229096(A307509(n)))`
-/

namespace A146620.P17421402238890366557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114229 (n + 1)) (A229096 (A307509 n).toNat)

end

end A146620.P17421402238890366557

/-! ## A146620.P17237639234278569678

`A123326(gcd(A123409(n+1), A215489(n+1)))`
-/

namespace A146620.P17237639234278569678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123326 (Int.gcd (A123409 (n + 1)) (A215489 (n + 1)))

end

end A146620.P17237639234278569678

/-! ## A146620.P1837361122763548745

`or(A147348(n+2), A147351(A147340(n+3)))`
-/

namespace A146620.P1837361122763548745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147348 (n + 2)) (A147351 (A147340 (n + 3)).toNat)

end

end A146620.P1837361122763548745

/-!
# A146621: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1001-1111 pattern in any orientation.

The programs for A146621, there is no canonical definition to state claims against.
-/

/-! ## A146621.P789686774596577076

`A146623(2*n+3)`
-/

namespace A146621.P789686774596577076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146623 (2 * n + 3)

end

end A146621.P789686774596577076

/-! ## A146621.P12800991999313142381

`or(1, A146623(A144396(n+1)))`
-/

namespace A146621.P12800991999313142381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146623 (A144396 (n + 1)).toNat)

end

end A146621.P12800991999313142381

/-! ## A146621.P5788321417442958018

`A146623(A144396(n+1))%A003501(n)`
-/

namespace A146621.P5788321417442958018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146623 (A144396 (n + 1)).toNat) (A003501 n)

end

end A146621.P5788321417442958018

/-! ## A146621.P2727813847567681652

`A146623(A144396(n+1))/A007318(∑[n])`
-/

namespace A146621.P2727813847567681652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146623 (A144396 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A146621.P2727813847567681652

/-! ## A146621.P15400416824903523013

`A146623(A144396(n+1))/A316439(n+1)`
-/

namespace A146621.P15400416824903523013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146623 (A144396 (n + 1)).toNat : ℚ) / (A316439 (n + 1) : ℚ)

end

end A146621.P15400416824903523013

/-!
# A146622: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1001-1111 pattern in any orientation.

The programs for A146622, there is no canonical definition to state claims against.
-/

/-! ## A146622.P11489593152886926710

`A178832(A054172(n))`
-/

namespace A146622.P11489593152886926710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A054172 n).toNat

end

end A146622.P11489593152886926710

/-! ## A146622.P18062412272277065616

`A328518(A308989(n+1))`
-/

namespace A146622.P18062412272277065616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328518 (A308989 (n + 1)).toNat

end

end A146622.P18062412272277065616

/-! ## A146622.P7701494924022013635

`A178832(A333958(n+1)+A290992(n))`
-/

namespace A146622.P7701494924022013635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A333958 (n + 1) + A290992 n).toNat

end

end A146622.P7701494924022013635

/-! ## A146622.P16136918383424882379

`A342515(A342129(n)+A146638(n+1))`
-/

namespace A146622.P16136918383424882379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A342129 n + A146638 (n + 1)).toNat

end

end A146622.P16136918383424882379

/-! ## A146622.P9553565616618062213

`or(A099597(A000217(n)), A309437(n+3))`
-/

namespace A146622.P9553565616618062213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099597 (A000217 n).toNat) (A309437 (n + 3))

end

end A146622.P9553565616618062213

/-!
# A146624: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1001-1111 pattern in any orientation.

The programs for A146624, there is no canonical definition to state claims against.
-/

/-! ## A146624.P9649634493382139144

`A140435(A060455(n+1)+1)`
-/

namespace A146624.P9649634493382139144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140435 (A060455 (n + 1) + 1).toNat

end

end A146624.P9649634493382139144

/-! ## A146624.P9167111789189186904

`A140435(A146140(n+1)+1)`
-/

namespace A146624.P9167111789189186904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140435 (A146140 (n + 1) + 1).toNat

end

end A146624.P9167111789189186904

/-! ## A146624.P706029487048566

`A115379(A115178(n*A139352(n)))`
-/

namespace A146624.P706029487048566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115379 (A115178 ((n : ℤ) * A139352 n).toNat).toNat

end

end A146624.P706029487048566

/-! ## A146624.P4953343619737617544

`A115379(A115178(n)^A139352(n))`
-/

namespace A146624.P4953343619737617544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115379 (SequenceMachineLib.roundAway ((A115178 n : ℚ) ^ (A139352 n : ℤ))).toNat

end

end A146624.P4953343619737617544

/-!
# A146625: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1001-1111 pattern in any orientation.

The programs for A146625, there is no canonical definition to state claims against.
-/

/-! ## A146625.P15815602236430877385

`A347358(A036375(n))-A070787(n+1)`
-/

namespace A146625.P15815602236430877385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347358 (A036375 n).toNat - A070787 (n + 1)

end

end A146625.P15815602236430877385

/-!
# A146626: Number of n X n binary arrays with all ones connected only in a 1010-1111-0010 pattern in any orientation.

The programs for A146626, there is no canonical definition to state claims against.
-/

/-! ## A146626.P17803684966296765421

`A146628(2*(n+2))`
-/

namespace A146626.P17803684966296765421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146628 (2 * (n + 2))

end

end A146626.P17803684966296765421

/-! ## A146626.P2860535181156260958

`or(1, A146628(A144396(n+1)))`
-/

namespace A146626.P2860535181156260958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146628 (A144396 (n + 1)).toNat)

end

end A146626.P2860535181156260958

/-! ## A146626.P6625937678367629314

`or(1, A146628(A250051(n+1)))`
-/

namespace A146626.P6625937678367629314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146628 (A250051 (n + 1)).toNat)

end

end A146626.P6625937678367629314

/-! ## A146626.P6444753645885196362

`or(1, A146628(A327213(n+1)))`
-/

namespace A146626.P6444753645885196362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146628 (A327213 (n + 1)).toNat)

end

end A146626.P6444753645885196362

/-! ## A146626.P11986193546345150524

`lcm(A033999(n), A146628(A144396(n+1)))`
-/

namespace A146626.P11986193546345150524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A146628 (A144396 (n + 1)).toNat)

end

end A146626.P11986193546345150524

/-!
# A146627: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1010-1111-0010 pattern in any orientation.

The programs for A146627, there is no canonical definition to state claims against.
-/

/-! ## A146627.P2969935193311602581

`A146635(n+1)%p?[floor(n^3/3)]`
-/

namespace A146627.P2969935193311602581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 3 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146635 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A146627.P2969935193311602581

/-! ## A146627.P12658222525561886559

`A146635(∑[A213217(n)])`
-/

namespace A146627.P12658222525561886559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146635 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146627.P12658222525561886559

/-! ## A146627.P4553546313310241359

`A146635(A002998(n)+1)`
-/

namespace A146627.P4553546313310241359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146635 (A002998 n + 1).toNat

end

end A146627.P4553546313310241359

/-! ## A146627.P2516924604090841147

`A004151(A146635(n+1))`
-/

namespace A146627.P2516924604090841147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A146635 (n + 1)).toNat

end

end A146627.P2516924604090841147

/-! ## A146627.P10132199527100065635

`A146635(A085908(n+1))`
-/

namespace A146627.P10132199527100065635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146635 (A085908 (n + 1)).toNat

end

end A146627.P10132199527100065635

/-!
# A146628: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1010-1111-0010 pattern in any orientation.

The programs for A146628, there is no canonical definition to state claims against.
-/

/-! ## A146628.P16237161717930241411

`A146636(A060695(n+1))`
-/

namespace A146628.P16237161717930241411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146636 (A060695 (n + 1)).toNat

end

end A146628.P16237161717930241411

/-! ## A146628.P14334373118816710224

`A146636(A060654(2*(n+1)))`
-/

namespace A146628.P14334373118816710224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146636 (A060654 (2 * (n + 1))).toNat

end

end A146628.P14334373118816710224

/-! ## A146628.P11713014432500780652

`A032742(3*A146636(n+1))`
-/

namespace A146628.P11713014432500780652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (3 * A146636 (n + 1)).toNat

end

end A146628.P11713014432500780652

/-! ## A146628.P10956090790431306694

`A146636(or(n, A146020(n+1)))`
-/

namespace A146628.P10956090790431306694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146636 (Int.lor (n : ℤ) (A146020 (n + 1))).toNat

end

end A146628.P10956090790431306694

/-! ## A146628.P485051019352934415

`A146636(or(n, A146068(n+1)))`
-/

namespace A146628.P485051019352934415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146636 (Int.lor (n : ℤ) (A146068 (n + 1))).toNat

end

end A146628.P485051019352934415

/-!
# A146629: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1010-1111-0010 pattern in any orientation.

The programs for A146629, there is no canonical definition to state claims against.
-/

/-! ## A146629.P11252746064389421055

`A146631(2*n+3)`
-/

namespace A146629.P11252746064389421055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146631 (2 * n + 3)

end

end A146629.P11252746064389421055

/-! ## A146629.P7614739885598740068

`or(1, A146631(A144396(n+1)))`
-/

namespace A146629.P7614739885598740068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146631 (A144396 (n + 1)).toNat)

end

end A146629.P7614739885598740068

/-! ## A146629.P17844623054615619968

`∏{d}[A144396(n+1), A146631(#)]`
-/

namespace A146629.P17844623054615619968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146631 d

end

end A146629.P17844623054615619968

/-!
# A146630: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1010-1111-0010 pattern in any orientation.

The programs for A146630, there is no canonical definition to state claims against.
-/

/-! ## A146630.P8653169677551668383

`A146710(n+1)-A185035(A185035(n))`
-/

namespace A146630.P8653169677551668383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146710 (n + 1) - A185035 (A185035 n).toNat

end

end A146630.P8653169677551668383

/-! ## A146630.P12016559081151014197

`A146710(A051053(n)+1)`
-/

namespace A146630.P12016559081151014197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146710 (A051053 n + 1).toNat

end

end A146630.P12016559081151014197

/-! ## A146630.P1200903676331978097

`A146843(A051053(n)+2)`
-/

namespace A146630.P1200903676331978097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146843 (A051053 n + 2).toNat

end

end A146630.P1200903676331978097

/-! ## A146630.P10900220774718675303

`A146710(A250266(n)+2)`
-/

namespace A146630.P10900220774718675303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146710 (A250266 n + 2).toNat

end

end A146630.P10900220774718675303

/-! ## A146630.P2868438229268645190

`A146843(A250266(n)+3)`
-/

namespace A146630.P2868438229268645190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146843 (A250266 n + 3).toNat

end

end A146630.P2868438229268645190

/-!
# A146631: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1010-1111-0010 pattern in any orientation.

The programs for A146631, there is no canonical definition to state claims against.
-/

/-! ## A146631.P17243803024247752194

`A130573(A146639(n+1))`
-/

namespace A146631.P17243803024247752194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A146639 (n + 1)).toNat

end

end A146631.P17243803024247752194

/-! ## A146631.P16906978343534007143

`A130573(A146671(n+1))`
-/

namespace A146631.P16906978343534007143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A146671 (n + 1)).toNat

end

end A146631.P16906978343534007143

/-! ## A146631.P4145867569163652241

`A133945(A146804(n+1))`
-/

namespace A146631.P4145867569163652241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133945 (A146804 (n + 1)).toNat

end

end A146631.P4145867569163652241

/-! ## A146631.P16991035353150702634

`A133945(A147056(n+1))`
-/

namespace A146631.P16991035353150702634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133945 (A147056 (n + 1)).toNat

end

end A146631.P16991035353150702634

/-! ## A146631.P12900017933733880968

`A147056(∑[A067169(n)!])`
-/

namespace A146631.P12900017933733880968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A067169 (n + 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147056 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146631.P12900017933733880968

/-!
# A146632: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1010-1111-0010 pattern in any orientation.

The programs for A146632, there is no canonical definition to state claims against.
-/

/-! ## A146632.P4859171607804136708

`A130011(A146457(n+1))`
-/

namespace A146632.P4859171607804136708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130011 (A146457 (n + 1)).toNat

end

end A146632.P4859171607804136708

/-! ## A146632.P7117551454365179737

`A193592(or(A020079(n), A037952(n)))`
-/

namespace A146632.P7117551454365179737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (Int.lor (A020079 n) (A037952 n)).toNat

end

end A146632.P7117551454365179737

/-! ## A146632.P494307704786441832

`or(A323352(n), A336138(A146696(n+1)))`
-/

namespace A146632.P494307704786441832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A323352 n) (A336138 (A146696 (n + 1)).toNat)

end

end A146632.P494307704786441832

/-! ## A146632.P5324836355789699308

`or(A094526(A001578(n+1)), A147221(n+1))`
-/

namespace A146632.P5324836355789699308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094526 (A001578 (n + 1)).toNat) (A147221 (n + 1))

end

end A146632.P5324836355789699308

/-! ## A146632.P4593882831008694054

`A196186(A019500(n))`
-/

namespace A146632.P4593882831008694054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196186 (A019500 n).toNat

end

end A146632.P4593882831008694054

/-!
# A146633: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1010-1111-0010 pattern in any orientation.

The programs for A146633, there is no canonical definition to state claims against.
-/

/-! ## A146633.P2784578226083374095

`2*A201909(A123014(n))-1`
-/

namespace A146633.P2784578226083374095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201909 (A123014 n).toNat - 1

end

end A146633.P2784578226083374095

/-! ## A146633.P17636924738896518634

`A123621(4*A146380(n+1))`
-/

namespace A146633.P17636924738896518634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (4 * A146380 (n + 1)).toNat

end

end A146633.P17636924738896518634

/-! ## A146633.P12960321520760465408

`A123621(lcm(4, A146380(n+1)))`
-/

namespace A146633.P12960321520760465408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (Int.lcm 4 (A146380 (n + 1)))

end

end A146633.P12960321520760465408

/-! ## A146633.P12730887837498492248

`A028234(or(A000088(n), A224977(n)))`
-/

namespace A146633.P12730887837498492248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (Int.lor (A000088 n) (A224977 n)).toNat

end

end A146633.P12730887837498492248

/-!
# A146634: Number of n X n binary arrays with all ones connected only in a 1010-1111-0100 pattern in any orientation.

The programs for A146634, there is no canonical definition to state claims against.
-/

/-! ## A146634.P12598480674689638998

`A146636(2*(n+2))`
-/

namespace A146634.P12598480674689638998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146636 (2 * (n + 2))

end

end A146634.P12598480674689638998

/-! ## A146634.P13532796154430747859

`or(1, A146636(A144396(n+1)))`
-/

namespace A146634.P13532796154430747859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146636 (A144396 (n + 1)).toNat)

end

end A146634.P13532796154430747859

/-! ## A146634.P2419984220179440601

`or(1, A146636(A250051(n+1)))`
-/

namespace A146634.P2419984220179440601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146636 (A250051 (n + 1)).toNat)

end

end A146634.P2419984220179440601

/-! ## A146634.P17138686641717578865

`or(1, A146636(A327213(n+1)))`
-/

namespace A146634.P17138686641717578865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146636 (A327213 (n + 1)).toNat)

end

end A146634.P17138686641717578865

/-!
# A146635: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1010-1111-0100 pattern in any orientation.

The programs for A146635, there is no canonical definition to state claims against.
-/

/-! ## A146635.P17954710613636053846

`or(A146627(n+1), A353390(A353390(n)))`
-/

namespace A146635.P17954710613636053846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146627 (n + 1)) (A353390 (A353390 n).toNat)

end

end A146635.P17954710613636053846

/-! ## A146635.P3050576209800127082

`or(A146575(A146622(n+1)), A146627(n+1))`
-/

namespace A146635.P3050576209800127082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146575 (A146622 (n + 1)).toNat) (A146627 (n + 1))

end

end A146635.P3050576209800127082

/-!
# A146637: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1010-1111-0100 pattern in any orientation.

The programs for A146637, there is no canonical definition to state claims against.
-/

/-! ## A146637.P1322295668577113088

`A146639(2*n+3)`
-/

namespace A146637.P1322295668577113088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146639 (2 * n + 3)

end

end A146637.P1322295668577113088

/-! ## A146637.P12912398237585470915

`or(1, A146639(A005408(n+1)))`
-/

namespace A146637.P12912398237585470915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146639 (A005408 (n + 1)).toNat)

end

end A146637.P12912398237585470915

/-! ## A146637.P17400595386619934112

`or(1, A146639(A144396(n+1)))`
-/

namespace A146637.P17400595386619934112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146639 (A144396 (n + 1)).toNat)

end

end A146637.P17400595386619934112

/-! ## A146637.P16785218370990345327

`A028310(A146639(n+3+n))`
-/

namespace A146637.P16785218370990345327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A146639 (n + 3 + n)).toNat

end

end A146637.P16785218370990345327

/-! ## A146637.P3786867183774909838

`∏{d}[n+1, A146639(A005408(#))]`
-/

namespace A146637.P3786867183774909838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A146639 (A005408 d).toNat

end

end A146637.P3786867183774909838

/-!
# A146638: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1010-1111-0100 pattern in any orientation.

The programs for A146638, there is no canonical definition to state claims against.
-/

/-! ## A146638.P5109609567447718177

`A146710(n+1)-A184955(A007092(n))`
-/

namespace A146638.P5109609567447718177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146710 (n + 1) - A184955 (A007092 n).toNat

end

end A146638.P5109609567447718177

/-! ## A146638.P4443973617226080465

`and(A039653(A007283(n)), A146710(n+1))`
-/

namespace A146638.P4443973617226080465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039653 (A007283 n).toNat) (A146710 (n + 1))

end

end A146638.P4443973617226080465

/-! ## A146638.P18077185692570273921

`and(A146710(n+1), A183613(A051053(n)))`
-/

namespace A146638.P18077185692570273921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146710 (n + 1)) (A183613 (A051053 n).toNat)

end

end A146638.P18077185692570273921

/-! ## A146638.P15261666565760413868

`and(A146710(n+1), A183613(A250266(n)))`
-/

namespace A146638.P15261666565760413868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146710 (n + 1)) (A183613 (A250266 n).toNat)

end

end A146638.P15261666565760413868

/-! ## A146638.P847131458104001638

`A147055(n+1)+A046660(A147092(n+1))`
-/

namespace A146638.P847131458104001638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147055 (n + 1) + A046660 (A147092 (n + 1)).toNat

end

end A146638.P847131458104001638

/-!
# A146640: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1010-1111-0100 pattern in any orientation.

The programs for A146640, there is no canonical definition to state claims against.
-/

/-! ## A146640.P3045251334912286623

`A071766(∑[∑[A210326(n+1)]])`
-/

namespace A146640.P3045251334912286623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210326 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146640.P3045251334912286623

/-! ## A146640.P15382710012718939983

`A147183(n+1)+A037834(A146643(n+1))`
-/

namespace A146640.P15382710012718939983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147183 (n + 1) + A037834 (A146643 (n + 1)).toNat

end

end A146640.P15382710012718939983

/-! ## A146640.P12687107225274336359

`A332640(A146644(n+1))+A146781(n+1)`
-/

namespace A146640.P12687107225274336359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332640 (A146644 (n + 1)).toNat + A146781 (n + 1)

end

end A146640.P12687107225274336359

/-! ## A146640.P8602956050171486573

`A332640(A146652(n+1))+A146781(n+1)`
-/

namespace A146640.P8602956050171486573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332640 (A146652 (n + 1)).toNat + A146781 (n + 1)

end

end A146640.P8602956050171486573

/-! ## A146640.P10520942035473279855

`A093697(A019500(n))`
-/

namespace A146640.P10520942035473279855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A019500 n).toNat

end

end A146640.P10520942035473279855

/-!
# A146641: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1010-1111-0100 pattern in any orientation.

The programs for A146641, there is no canonical definition to state claims against.
-/

/-! ## A146641.P17994714045888212607

`A345992(∏[A000005(n+4)]-1)`
-/

namespace A146641.P17994714045888212607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A146641.P17994714045888212607

/-! ## A146641.P9470661830373970059

`A240831(A143494(2*n+3)+A111004(n))`
-/

namespace A146641.P9470661830373970059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240831 (A143494 (2 * n + 3) + A111004 n).toNat

end

end A146641.P9470661830373970059

/-!
# A146642: Number of n X n binary arrays with all ones connected only in a 1010-1111-1000 pattern in any orientation.

The programs for A146642, there is no canonical definition to state claims against.
-/

/-! ## A146642.P12089468758474513011

`A146644(2*(n+2))`
-/

namespace A146642.P12089468758474513011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146644 (2 * (n + 2))

end

end A146642.P12089468758474513011

/-! ## A146642.P10503938954585655633

`∏{d}[A062545(n), A146644(#)]`
-/

namespace A146642.P10503938954585655633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146644 d

end

end A146642.P10503938954585655633

/-! ## A146642.P3631039234888495077

`or(1, A146644(A144396(n+1)))`
-/

namespace A146642.P3631039234888495077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146644 (A144396 (n + 1)).toNat)

end

end A146642.P3631039234888495077

/-! ## A146642.P5043790098457610859

`or(1, A146644(A167907(n+1)))`
-/

namespace A146642.P5043790098457610859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146644 (A167907 (n + 1)).toNat)

end

end A146642.P5043790098457610859

/-! ## A146642.P13183837863089141498

`or(1, A146644(A285593(n+1)))`
-/

namespace A146642.P13183837863089141498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146644 (A285593 (n + 1)).toNat)

end

end A146642.P13183837863089141498

/-!
# A146643: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1010-1111-1000 pattern in any orientation.

The programs for A146643, there is no canonical definition to state claims against.
-/

/-! ## A146643.P10826006943498064494

`A146715((n+1)^2^∑{digits}[n, #%C(n, #)])`
-/

namespace A146643.P10826006943498064494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146715 ((n + 1) ^ 2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A146643.P10826006943498064494

/-! ## A146643.P4061726665989788558

`A146715(∑[A213217(n)])`
-/

namespace A146643.P4061726665989788558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146715 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146643.P4061726665989788558

/-! ## A146643.P11047394483652766239

`A000026(A146715(n+1))`
-/

namespace A146643.P11047394483652766239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A146715 (n + 1)).toNat

end

end A146643.P11047394483652766239

/-! ## A146643.P14355347021071718760

`A146715(A002998(n)+1)`
-/

namespace A146643.P14355347021071718760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146715 (A002998 n + 1).toNat

end

end A146643.P14355347021071718760

/-! ## A146643.P5020585695618048839

`A146715(A213217(n)+n)`
-/

namespace A146643.P5020585695618048839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146715 (A213217 n + (n : ℤ)).toNat

end

end A146643.P5020585695618048839

/-!
# A146645: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1010-1111-1000 pattern in any orientation.

The programs for A146645, there is no canonical definition to state claims against.
-/

/-! ## A146645.P17067588490542575375

`A146647(2*(n+2))`
-/

namespace A146645.P17067588490542575375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146647 (2 * (n + 2))

end

end A146645.P17067588490542575375

/-! ## A146645.P976029850368783747

`or(1, A146647(A144396(n+1)))`
-/

namespace A146645.P976029850368783747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146647 (A144396 (n + 1)).toNat)

end

end A146645.P976029850368783747

/-! ## A146645.P14562532368370307810

`or(1, A146647(A325038(n+1)))`
-/

namespace A146645.P14562532368370307810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146647 (A325038 (n + 1)).toNat)

end

end A146645.P14562532368370307810

/-! ## A146645.P9800386525096394378

`A028310(A146647(n+3+n))`
-/

namespace A146645.P9800386525096394378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A146647 (n + 3 + n)).toNat

end

end A146645.P9800386525096394378

/-!
# A146646: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1010-1111-1000 pattern in any orientation.

The programs for A146646, there is no canonical definition to state claims against.
-/

/-! ## A146646.P15267576537306756938

`A147258(n+1)+A024325(A147266(n+1))`
-/

namespace A146646.P15267576537306756938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147258 (n + 1) + A024325 (A147266 (n + 1)).toNat

end

end A146646.P15267576537306756938

/-! ## A146646.P18258933540754091853

`A147258(n+1)+A024325(A147280(n+1))`
-/

namespace A146646.P18258933540754091853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147258 (n + 1) + A024325 (A147280 (n + 1)).toNat

end

end A146646.P18258933540754091853

/-! ## A146646.P10656588080218569091

`A241822(A147244(n+1))+A147258(n+1)`
-/

namespace A146646.P10656588080218569091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241822 (A147244 (n + 1)).toNat + A147258 (n + 1)

end

end A146646.P10656588080218569091

/-! ## A146646.P3979642515734735216

`A326636(A201873(n+1))+A147258(n+1)`
-/

namespace A146646.P3979642515734735216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 (A201873 (n + 1)).toNat + A147258 (n + 1)

end

end A146646.P3979642515734735216

/-! ## A146646.P9965395143181193082

`A089868(A147258(n+1))`
-/

namespace A146646.P9965395143181193082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A147258 (n + 1)).toNat

end

end A146646.P9965395143181193082

/-!
# A146647: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1010-1111-1000 pattern in any orientation.

The programs for A146647, there is no canonical definition to state claims against.
-/

/-! ## A146647.P13760593619437176112

`A089868(A146719(n+1))`
-/

namespace A146647.P13760593619437176112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A146719 (n + 1)).toNat

end

end A146647.P13760593619437176112

/-! ## A146647.P10084392511414850848

`A089868(A147167(n+1))`
-/

namespace A146647.P10084392511414850848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A147167 (n + 1)).toNat

end

end A146647.P10084392511414850848

/-! ## A146647.P259349344488540308

`A111622(A147190(n+1))`
-/

namespace A146647.P259349344488540308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111622 (A147190 (n + 1)).toNat

end

end A146647.P259349344488540308

/-! ## A146647.P1190831960769777445

`A125060(A146370(n+1))`
-/

namespace A146647.P1190831960769777445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125060 (A146370 (n + 1)).toNat

end

end A146647.P1190831960769777445

/-! ## A146647.P4797013052801739875

`A000188(A146719(n+1)²)`
-/

namespace A146647.P4797013052801739875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A146719 (n + 1) ^ 2).toNat

end

end A146647.P4797013052801739875

/-!
# A146648: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1010-1111-1000 pattern in any orientation.

The programs for A146648, there is no canonical definition to state claims against.
-/

/-! ## A146648.P11771842431261983354

`A342194(A362318(n))`
-/

namespace A146648.P11771842431261983354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A362318 n).toNat

end

end A146648.P11771842431261983354

/-! ## A146648.P4666644492454988418

`A287086(A146633(n+1))+A147259(n+1)`
-/

namespace A146648.P4666644492454988418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287086 (A146633 (n + 1)).toNat + A147259 (n + 1)

end

end A146648.P4666644492454988418

/-! ## A146648.P7967913095751327370

`or(A002024(A146579(n+1)), A146590(n+1))`
-/

namespace A146648.P7967913095751327370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002024 (A146579 (n + 1)).toNat) (A146590 (n + 1))

end

end A146648.P7967913095751327370

/-! ## A146648.P888745393702568155

`A274773(((n-1)%2-C(n, 5))²+1)`
-/

namespace A146648.P888745393702568155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 ((Int.tmod ((n : ℤ) - 1) 2 - (Nat.choose n 5 : ℤ)) ^ 2 + 1).toNat

end

end A146648.P888745393702568155

/-! ## A146648.P4596467792932766991

`A195935(A010750(n))`
-/

namespace A146648.P4596467792932766991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195935 (A010750 n).toNat

end

end A146648.P4596467792932766991

/-!
# A146649: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1010-1111-1000 pattern in any orientation.

The programs for A146649, there is no canonical definition to state claims against.
-/

/-! ## A146649.P13255137534818304487

`A049456(A255541(n)+A240577(n))`
-/

namespace A146649.P13255137534818304487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (A255541 n + A240577 n).toNat

end

end A146649.P13255137534818304487

/-!
# A146650: Number of n X n binary arrays with all ones connected only in a 1100-0100-1111 pattern in any orientation.

The programs for A146650, there is no canonical definition to state claims against.
-/

/-! ## A146650.P13651727177888909130

`A146652(2*(n+2))`
-/

namespace A146650.P13651727177888909130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146652 (2 * (n + 2))

end

end A146650.P13651727177888909130

/-! ## A146650.P11504923573765362637

`or(1, A146652(A004277(n+2)))`
-/

namespace A146650.P11504923573765362637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146652 (A004277 (n + 2)).toNat)

end

end A146650.P11504923573765362637

/-! ## A146650.P8277789002583384994

`lcm((-1)^n, A146652(A248609(n+2)))`
-/

namespace A146650.P8277789002583384994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A146652 (A248609 (n + 2)).toNat)

end

end A146650.P8277789002583384994

/-!
# A146651: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-0100-1111 pattern in any orientation.

The programs for A146651, there is no canonical definition to state claims against.
-/

/-! ## A146651.P2184803333511473227

`A371835(A000626(n+1))`
-/

namespace A146651.P2184803333511473227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371835 (A000626 (n + 1)).toNat

end

end A146651.P2184803333511473227

/-! ## A146651.P653852035781505193

`or(A147218(A001104(n+1)), A175773(n))`
-/

namespace A146651.P653852035781505193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147218 (A001104 (n + 1)).toNat) (A175773 n)

end

end A146651.P653852035781505193

/-! ## A146651.P4106886128810276124

`or(A146776(A001104(n+1)), A212385(n))`
-/

namespace A146651.P4106886128810276124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146776 (A001104 (n + 1)).toNat) (A212385 n)

end

end A146651.P4106886128810276124

/-! ## A146651.P4342997131052916313

`or(A105353(A212385(n)), A147218(n+1))`
-/

namespace A146651.P4342997131052916313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105353 (A212385 n).toNat) (A147218 (n + 1))

end

end A146651.P4342997131052916313

/-! ## A146651.P866565259574111922

`or(A146776(n+1), A343252(A212385(n)))`
-/

namespace A146651.P866565259574111922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146776 (n + 1)) (A343252 (A212385 n).toNat)

end

end A146651.P866565259574111922

/-!
# A146652: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-0100-1111 pattern in any orientation.

The programs for A146652, there is no canonical definition to state claims against.
-/

/-! ## A146652.P12938999871628369985

`A146650(gcd(floor(n/2), A000142(n)))`
-/

namespace A146652.P12938999871628369985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146650 (Int.gcd ⌊(n : ℚ) / 2⌋ (A000142 n))

end

end A146652.P12938999871628369985

/-! ## A146652.P16685999134485720322

`A028310(A146684(n+1))`
-/

namespace A146652.P16685999134485720322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A146684 (n + 1)).toNat

end

end A146652.P16685999134485720322

/-! ## A146652.P9581618104585987124

`A353897(A146684(or(1, n)))`
-/

namespace A146652.P9581618104585987124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A146684 (Nat.lor 1 n)).toNat

end

end A146652.P9581618104585987124

/-! ## A146652.P15299184896623142332

`A080412(A146684(n+1)+1)`
-/

namespace A146652.P15299184896623142332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A146684 (n + 1) + 1).toNat

end

end A146652.P15299184896623142332

/-! ## A146652.P4927324692591010977

`A146684(or(n, A147152(n+1)))`
-/

namespace A146652.P4927324692591010977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146684 (Int.lor (n : ℤ) (A147152 (n + 1))).toNat

end

end A146652.P4927324692591010977

/-!
# A146653: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0100-1111 pattern in any orientation.

The programs for A146653, there is no canonical definition to state claims against.
-/

/-! ## A146653.P3829687215364288500

`A146655(2*(n+2))`
-/

namespace A146653.P3829687215364288500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146655 (2 * (n + 2))

end

end A146653.P3829687215364288500

/-! ## A146653.P8563527571743391242

`A028310(A146655(Δ[n²]+2))`
-/

namespace A146653.P8563527571743391242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A146655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat).toNat

end

end A146653.P8563527571743391242

/-! ## A146653.P8285327193148643502

`or(1, A146655(A248106(n+1)-1))`
-/

namespace A146653.P8285327193148643502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146655 (A248106 (n + 1) - 1).toNat)

end

end A146653.P8285327193148643502

/-!
# A146654: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0100-1111 pattern in any orientation.

The programs for A146654, there is no canonical definition to state claims against.
-/

/-! ## A146654.P13427160672149608350

`A342194(A251653(n))`
-/

namespace A146654.P13427160672149608350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A251653 n).toNat

end

end A146654.P13427160672149608350

/-! ## A146654.P4759099382680232343

`A336358(A351755(n))`
-/

namespace A146654.P4759099382680232343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A351755 n).toNat

end

end A146654.P4759099382680232343

/-! ## A146654.P9643456063394668193

`A342194(A251708(n+1))`
-/

namespace A146654.P9643456063394668193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A251708 (n + 1)).toNat

end

end A146654.P9643456063394668193

/-! ## A146654.P17964398357133617740

`A342194(2*A251708(n))`
-/

namespace A146654.P17964398357133617740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (2 * A251708 n).toNat

end

end A146654.P17964398357133617740

/-! ## A146654.P3902818885587738501

`A324692(A147203(n+1))+A147235(n+1)`
-/

namespace A146654.P3902818885587738501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A147203 (n + 1)).toNat + A147235 (n + 1)

end

end A146654.P3902818885587738501

/-!
# A146655: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1100-0100-1111 pattern in any orientation.

The programs for A146655, there is no canonical definition to state claims against.
-/

/-! ## A146655.P11195716982161790934

`A118759(A146687(n+1))`
-/

namespace A146655.P11195716982161790934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A146687 (n + 1)).toNat

end

end A146655.P11195716982161790934

/-! ## A146655.P10363580573868562811

`A018851(A146687(n+1)²)`
-/

namespace A146655.P10363580573868562811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A146687 (n + 1) ^ 2).toNat

end

end A146655.P10363580573868562811

/-! ## A146655.P13326744816465214625

`A046692(A146687(n+1)²)`
-/

namespace A146655.P13326744816465214625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A146687 (n + 1) ^ 2).toNat

end

end A146655.P13326744816465214625

/-! ## A146655.P6815318464446989010

`A346487(A146687(n+1)²)`
-/

namespace A146655.P6815318464446989010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346487 (A146687 (n + 1) ^ 2).toNat

end

end A146655.P6815318464446989010

/-! ## A146655.P4700551355405051744

`A007947(A146687(n+1)^3)`
-/

namespace A146655.P4700551355405051744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A146687 (n + 1) ^ 3).toNat

end

end A146655.P4700551355405051744

/-!
# A146656: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0100-1111 pattern in any orientation.

The programs for A146656, there is no canonical definition to state claims against.
-/

/-! ## A146656.P7602341334552086189

`A146688(lcm(∑{digits}[n, #]+1, n+1))`
-/

namespace A146656.P7602341334552086189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146688 (Nat.lcm (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1) (n + 1))

end

end A146656.P7602341334552086189

/-! ## A146656.P9840348191570902128

`A118759(A146688(n+1))`
-/

namespace A146656.P9840348191570902128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A146688 (n + 1)).toNat

end

end A146656.P9840348191570902128

/-! ## A146656.P13322561246623723760

`A229618(A196876(n+1))`
-/

namespace A146656.P13322561246623723760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229618 (A196876 (n + 1)).toNat

end

end A146656.P13322561246623723760

/-! ## A146656.P5000052883835959409

`A233508(5*A157162(n+1))`
-/

namespace A146656.P5000052883835959409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233508 (5 * A157162 (n + 1)).toNat

end

end A146656.P5000052883835959409

/-! ## A146656.P14340820450493634484

`A019555(A146688(n+1)^2)`
-/

namespace A146656.P14340820450493634484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A146688 (n + 1) ^ 2).toNat

end

end A146656.P14340820450493634484

/-!
# A146657: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-0100-1111 pattern in any orientation.

The programs for A146657, there is no canonical definition to state claims against.
-/

/-! ## A146657.P15506299813277782926

`A077581(or(7, n!))`
-/

namespace A146657.P15506299813277782926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (Nat.lor 7 (Nat.factorial n))

end

end A146657.P15506299813277782926

/-! ## A146657.P11839275381807357360

`A054576(C(n, 2)+n!)`
-/

namespace A146657.P11839275381807357360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (Nat.choose n 2 + Nat.factorial n)

end

end A146657.P11839275381807357360

/-! ## A146657.P8264040830647268579

`A267872(A113439(n)!)`
-/

namespace A146657.P8264040830647268579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (Nat.factorial (A113439 n).toNat)

end

end A146657.P8264040830647268579

/-! ## A146657.P10388970977841499503

`A014085(A052518(n))+1`
-/

namespace A146657.P10388970977841499503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A052518 n).toNat + 1

end

end A146657.P10388970977841499503

/-!
# A146658: Number of n X n binary arrays with all ones connected only in a 1100-0111-0001 pattern in any orientation.

The programs for A146658, there is no canonical definition to state claims against.
-/

/-! ## A146658.P9678173520194575513

`A146660(2*(n+2))`
-/

namespace A146658.P9678173520194575513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146660 (2 * (n + 2))

end

end A146658.P9678173520194575513

/-! ## A146658.P15659316299888873146

`or(1, A146660(A346302(n+1)))`
-/

namespace A146658.P15659316299888873146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146660 (A346302 (n + 1)).toNat)

end

end A146658.P15659316299888873146

/-! ## A146658.P17593753259705542442

`lcm((-1)^n, A146660(A248609(n+2)))`
-/

namespace A146658.P17593753259705542442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A146660 (A248609 (n + 2)).toNat)

end

end A146658.P17593753259705542442

/-!
# A146660: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-0111-0001 pattern in any orientation.

The programs for A146660, there is no canonical definition to state claims against.
-/

/-! ## A146660.P863987432530156802

`A146658(gcd(floor(n/2), A000142(n)))`
-/

namespace A146660.P863987432530156802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146658 (Int.gcd ⌊(n : ℚ) / 2⌋ (A000142 n))

end

end A146660.P863987432530156802

/-! ## A146660.P89326203212757730

`A329888(and(n, -2)²²+1)`
-/

namespace A146660.P89326203212757730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 ((Int.land (n : ℤ) (-2) ^ 2) ^ 2 + 1).toNat

end

end A146660.P89326203212757730

/-! ## A146660.P12134087941686394574

`A120242(A146471(n+1))`
-/

namespace A146660.P12134087941686394574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120242 (A146471 (n + 1)).toNat

end

end A146660.P12134087941686394574

/-! ## A146660.P6186564144257383562

`A122077(A146367(n+1))`
-/

namespace A146660.P6186564144257383562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122077 (A146367 (n + 1)).toNat

end

end A146660.P6186564144257383562

/-! ## A146660.P9523177279466122139

`A122077(A147430(n+1))`
-/

namespace A146660.P9523177279466122139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122077 (A147430 (n + 1)).toNat

end

end A146660.P9523177279466122139

/-!
# A146661: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0111-0001 pattern in any orientation.

The programs for A146661, there is no canonical definition to state claims against.
-/

/-! ## A146661.P2451894100386364815

`A146663(2*(n+2))`
-/

namespace A146661.P2451894100386364815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146663 (2 * (n + 2))

end

end A146661.P2451894100386364815

/-! ## A146661.P14989899737375032752

`or(1, A146663(A346302(n+1)))`
-/

namespace A146661.P14989899737375032752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146663 (A346302 (n + 1)).toNat)

end

end A146661.P14989899737375032752

/-! ## A146661.P10142257307362491076

`or(1, A146663(A005843(n+2)))`
-/

namespace A146661.P10142257307362491076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146663 (A005843 (n + 2)).toNat)

end

end A146661.P10142257307362491076

/-! ## A146661.P301850683364594388

`A000265(A146663(Δ[(n+1)²]))`
-/

namespace A146661.P301850683364594388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A146663 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146661.P301850683364594388

/-!
# A146662: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0111-0001 pattern in any orientation.

The programs for A146662, there is no canonical definition to state claims against.
-/

/-! ## A146662.P2070981531082779734

`or(1, ∑[A376985(2*n+1)])`
-/

namespace A146662.P2070981531082779734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376985 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146662.P2070981531082779734

/-! ## A146662.P7649764722466151323

`A101435(A068042(n))`
-/

namespace A146662.P7649764722466151323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A068042 n).toNat

end

end A146662.P7649764722466151323

/-! ## A146662.P10313773367089600827

`A092629(A058058(n+1))`
-/

namespace A146662.P10313773367089600827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092629 (A058058 (n + 1)).toNat

end

end A146662.P10313773367089600827

/-! ## A146662.P18151244102663320159

`A156724(A006979(n)+1)`
-/

namespace A146662.P18151244102663320159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A006979 n + 1).toNat

end

end A146662.P18151244102663320159

/-! ## A146662.P16601845916806978442

`A157966(A146268(n+1))`
-/

namespace A146662.P16601845916806978442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A146268 (n + 1)).toNat

end

end A146662.P16601845916806978442

/-!
# A146664: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0111-0001 pattern in any orientation.

The programs for A146664, there is no canonical definition to state claims against.
-/

/-! ## A146664.P2422543328339173362

`A193592(or(n+1, A067648(n)))`
-/

namespace A146664.P2422543328339173362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (Int.lor (n + 1 : ℤ) (A067648 n)).toNat

end

end A146664.P2422543328339173362

/-! ## A146664.P15903188983582348222

`A365139(∏[∏[A292505(n+2)]])`
-/

namespace A146664.P15903188983582348222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292505 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365139 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146664.P15903188983582348222

/-! ## A146664.P13620379450805470337

`A227140(A028408(A187328(n)))`
-/

namespace A146664.P13620379450805470337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (A028408 (A187328 n).toNat).toNat

end

end A146664.P13620379450805470337

/-! ## A146664.P3074562453760246114

`A118759(or(A049164(n), A146672(n+1)))`
-/

namespace A146664.P3074562453760246114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lor (A049164 n) (A146672 (n + 1))).toNat

end

end A146664.P3074562453760246114

/-! ## A146664.P11309291707622728333

`A216455(or(A049164(n), A146672(n+1)))`
-/

namespace A146664.P11309291707622728333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (Int.lor (A049164 n) (A146672 (n + 1))).toNat

end

end A146664.P11309291707622728333

/-!
# A146666: Number of n X n binary arrays with all ones connected only in a 1100-0111-0110 pattern in any orientation.

The programs for A146666, there is no canonical definition to state claims against.
-/

/-! ## A146666.P16644222544987140348

`A146668(2*(n+2))`
-/

namespace A146666.P16644222544987140348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146668 (2 * (n + 2))

end

end A146666.P16644222544987140348

/-! ## A146666.P6120580063281101697

`or(1, A146668(A144396(n+1)))`
-/

namespace A146666.P6120580063281101697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146668 (A144396 (n + 1)).toNat)

end

end A146666.P6120580063281101697

/-! ## A146666.P15483951259258309647

`or(1, A146668(A346302(n+1)))`
-/

namespace A146666.P15483951259258309647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146668 (A346302 (n + 1)).toNat)

end

end A146666.P15483951259258309647

/-! ## A146666.P12832738170531281482

`or(1, A146668(A005843(n+2)))`
-/

namespace A146666.P12832738170531281482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146668 (A005843 (n + 2)).toNat)

end

end A146666.P12832738170531281482

/-! ## A146666.P5208770493089823459

`lcm((-1)^n, A146668(A248609(n+2)))`
-/

namespace A146666.P5208770493089823459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A146668 (A248609 (n + 2)).toNat)

end

end A146666.P5208770493089823459

/-!
# A146667: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-0111-0110 pattern in any orientation.

The programs for A146667, there is no canonical definition to state claims against.
-/

/-! ## A146667.P16535365125868108893

`A026741(A146731(n+1)+A005873(n))`
-/

namespace A146667.P16535365125868108893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A146731 (n + 1) + A005873 n).toNat

end

end A146667.P16535365125868108893

/-! ## A146667.P2209026262419326134

`A028310(A146731(n+1)+A005873(n))`
-/

namespace A146667.P2209026262419326134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A146731 (n + 1) + A005873 n).toNat

end

end A146667.P2209026262419326134

/-! ## A146667.P17871645211983499330

`A060819(A146731(n+1)+A005873(n))`
-/

namespace A146667.P17871645211983499330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A146731 (n + 1) + A005873 n).toNat

end

end A146667.P17871645211983499330

/-! ## A146667.P15131180598233176535

`A106617(A146731(n+1)+A005873(n))`
-/

namespace A146667.P15131180598233176535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A146731 (n + 1) + A005873 n).toNat

end

end A146667.P15131180598233176535

/-! ## A146667.P15185545089952310367

`A184955(A004956(n))+A146731(n+1)`
-/

namespace A146667.P15185545089952310367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A004956 n).toNat + A146731 (n + 1)

end

end A146667.P15185545089952310367

/-!
# A146668: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-0111-0110 pattern in any orientation.

The programs for A146668, there is no canonical definition to state claims against.
-/

/-! ## A146668.P13438503106247076219

`A146732(A077168(n))`
-/

namespace A146668.P13438503106247076219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146732 (A077168 n).toNat

end

end A146668.P13438503106247076219

/-! ## A146668.P4616033966927971654

`A289437(3*A146732(n+1))`
-/

namespace A146668.P4616033966927971654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (3 * A146732 (n + 1)).toNat

end

end A146668.P4616033966927971654

/-! ## A146668.P7875450448823849718

`A146732(or(n, A146719(n+1)))`
-/

namespace A146668.P7875450448823849718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146732 (Int.lor (n : ℤ) (A146719 (n + 1))).toNat

end

end A146668.P7875450448823849718

/-! ## A146668.P12821202984684442905

`A146732(or(n, A146780(n+1)))`
-/

namespace A146668.P12821202984684442905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146732 (Int.lor (n : ℤ) (A146780 (n + 1))).toNat

end

end A146668.P12821202984684442905

/-! ## A146668.P9693663221578214205

`A146732(or(n, A146788(n+1)))`
-/

namespace A146668.P9693663221578214205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146732 (Int.lor (n : ℤ) (A146788 (n + 1))).toNat

end

end A146668.P9693663221578214205

/-!
# A146669: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0111-0110 pattern in any orientation.

The programs for A146669, there is no canonical definition to state claims against.
-/

/-! ## A146669.P7986416494506262411

`A146671(2*n+3)`
-/

namespace A146669.P7986416494506262411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146671 (2 * n + 3)

end

end A146669.P7986416494506262411

/-! ## A146669.P9218421607097821462

`or(1, A146671(A077797(n+1)))`
-/

namespace A146669.P9218421607097821462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146671 (A077797 (n + 1)).toNat)

end

end A146669.P9218421607097821462

/-! ## A146669.P8996859843838224743

`or(1, A146671(A144396(n+1)))`
-/

namespace A146669.P8996859843838224743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146671 (A144396 (n + 1)).toNat)

end

end A146669.P8996859843838224743

/-! ## A146669.P5494542951652181377

`or(1, A146671(A346302(n+1)))`
-/

namespace A146669.P5494542951652181377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146671 (A346302 (n + 1)).toNat)

end

end A146669.P5494542951652181377

/-! ## A146669.P16541773482378482170

`A028310(A146671(n+3+n))`
-/

namespace A146669.P16541773482378482170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A146671 (n + 3 + n)).toNat

end

end A146669.P16541773482378482170

/-!
# A146670: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0111-0110 pattern in any orientation.

The programs for A146670, there is no canonical definition to state claims against.
-/

/-! ## A146670.P3125150309042369982

`or(A146577(A146615(n+2)), A146614(n+1))`
-/

namespace A146670.P3125150309042369982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146577 (A146615 (n + 2)).toNat) (A146614 (n + 1))

end

end A146670.P3125150309042369982

/-!
# A146672: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0111-0110 pattern in any orientation.

The programs for A146672, there is no canonical definition to state claims against.
-/

/-! ## A146672.P1799925364468725233

`or(A147215(n+1), A237593(A146705(n+1)))`
-/

namespace A146672.P1799925364468725233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147215 (n + 1)) (A237593 (A146705 (n + 1)).toNat)

end

end A146672.P1799925364468725233

/-! ## A146672.P14217500640096319350

`or(A001222(A147210(n+3)), A147215(n+1))`
-/

namespace A146672.P14217500640096319350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A147210 (n + 3)).toNat) (A147215 (n + 1))

end

end A146672.P14217500640096319350

/-! ## A146672.P777749219354812301

`A060775(A000040(2*(n+1))*A146664(n+1))`
-/

namespace A146672.P777749219354812301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A000040 (2 * (n + 1)) * A146664 (n + 1)).toNat

end

end A146672.P777749219354812301

/-! ## A146672.P6528587875607878050

`or(A001222(A147195(2*(n+1))), A147215(n+1))`
-/

namespace A146672.P6528587875607878050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A147195 (2 * (n + 1))).toNat) (A147215 (n + 1))

end

end A146672.P6528587875607878050

/-! ## A146672.P8300011814368843883

`or(A001222(A147266(2*(n+2))), A147215(n+1))`
-/

namespace A146672.P8300011814368843883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A147266 (2 * (n + 2))).toNat) (A147215 (n + 1))

end

end A146672.P8300011814368843883

/-!
# A146674: Number of n X n binary arrays with all ones connected only in a 1100-0111-1100 pattern in any orientation.

The programs for A146674, there is no canonical definition to state claims against.
-/

/-! ## A146674.P1983474007136128062

`A146676(2*(n+2))`
-/

namespace A146674.P1983474007136128062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146676 (2 * (n + 2))

end

end A146674.P1983474007136128062

/-! ## A146674.P2550022199012664721

`A146676(A248609(n+2))^A146652(n+1)`
-/

namespace A146674.P2550022199012664721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146676 (A248609 (n + 2)).toNat : ℚ) ^ (A146652 (n + 1) : ℤ)

end

end A146674.P2550022199012664721

/-! ## A146674.P17285989853180226130

`A146676(A248609(n+2))^A146660(n+1)`
-/

namespace A146674.P17285989853180226130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146676 (A248609 (n + 2)).toNat : ℚ) ^ (A146660 (n + 1) : ℤ)

end

end A146674.P17285989853180226130

/-! ## A146674.P15679328413701757042

`A146676(A248609(n+2))^A146668(n+1)`
-/

namespace A146674.P15679328413701757042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146676 (A248609 (n + 2)).toNat : ℚ) ^ (A146668 (n + 1) : ℤ)

end

end A146674.P15679328413701757042

/-!
# A146676: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-0111-1100 pattern in any orientation.

The programs for A146676, there is no canonical definition to state claims against.
-/

/-! ## A146676.P15406099838940939909

`A263274(A055226(n)*A332639(n))`
-/

namespace A146676.P15406099838940939909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263274 (A055226 n * A332639 n).toNat

end

end A146676.P15406099838940939909

/-! ## A146676.P10192237971389416886

`A006226(A061395(2*n+1)%A383799(n+3))`
-/

namespace A146676.P10192237971389416886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006226 (Int.tmod (A061395 (2 * n + 1)) (A383799 (n + 3))).toNat

end

end A146676.P10192237971389416886

/-!
# A146677: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-0111-1100 pattern in any orientation.

The programs for A146677, there is no canonical definition to state claims against.
-/

/-! ## A146677.P10875255396040322762

`A146679(2*(n+2))`
-/

namespace A146677.P10875255396040322762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146679 (2 * (n + 2))

end

end A146677.P10875255396040322762

/-! ## A146677.P6419951230226321322

`A147477(n+1)+A006983(A269369(n+1))`
-/

namespace A146677.P6419951230226321322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147477 (n + 1) + A006983 (A269369 (n + 1)).toNat

end

end A146677.P6419951230226321322

/-! ## A146677.P1253236037524705856

`A118168(A287141(n))`
-/

namespace A146677.P1253236037524705856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A287141 n).toNat

end

end A146677.P1253236037524705856

/-! ## A146677.P11283847427339130086

`A147477(A032555(n+1))`
-/

namespace A146677.P11283847427339130086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147477 (A032555 (n + 1)).toNat

end

end A146677.P11283847427339130086

/-! ## A146677.P14101143759507887448

`A117333(A147416(n+1))`
-/

namespace A146677.P14101143759507887448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117333 (A147416 (n + 1)).toNat

end

end A146677.P14101143759507887448

/-!
# A146678: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-0111-1100 pattern in any orientation.

The programs for A146678, there is no canonical definition to state claims against.
-/

/-! ## A146678.P8084763475085312794

`A004438(A147372(n+1))`
-/

namespace A146678.P8084763475085312794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A147372 (n + 1)).toNat

end

end A146678.P8084763475085312794

/-! ## A146678.P2045422120070956755

`A072089(A147440(n+1))`
-/

namespace A146678.P2045422120070956755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A147440 (n + 1)).toNat

end

end A146678.P2045422120070956755

/-! ## A146678.P8282597762483055372

`A085735(A146417(n+1))`
-/

namespace A146678.P8282597762483055372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A146417 (n + 1)).toNat

end

end A146678.P8282597762483055372

/-! ## A146678.P6518931010554358993

`A147440(A246200(n)+1)`
-/

namespace A146678.P6518931010554358993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147440 (A246200 n + 1).toNat

end

end A146678.P6518931010554358993

/-! ## A146678.P13134838632182392616

`A147440(∑[A147494(n+2)])`
-/

namespace A146678.P13134838632182392616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146678.P13134838632182392616

/-!
# A146680: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-0111-1100 pattern in any orientation.

The programs for A146680, there is no canonical definition to state claims against.
-/

/-! ## A146680.P4681237933535991357

`A147479(A326698(n+1)+n)`
-/

namespace A146680.P4681237933535991357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147479 (A326698 (n + 1) + (n : ℤ)).toNat

end

end A146680.P4681237933535991357

/-! ## A146680.P11282352568771728296

`A147479((n+1)*A036370(n))`
-/

namespace A146680.P11282352568771728296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147479 ((n + 1 : ℤ) * A036370 n).toNat

end

end A146680.P11282352568771728296

/-! ## A146680.P15069302213994874971

`A147479((n+1)^A036370(n))`
-/

namespace A146680.P15069302213994874971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147479 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A036370 n : ℤ))).toNat

end

end A146680.P15069302213994874971

/-!
# A146682: Number of n X n binary arrays with all ones connected only in a 1100-1000-1111 pattern in any orientation.

The programs for A146682, there is no canonical definition to state claims against.
-/

/-! ## A146682.P1999566524484193988

`A146684(2*n+3)`
-/

namespace A146682.P1999566524484193988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146684 (2 * n + 3)

end

end A146682.P1999566524484193988

/-! ## A146682.P7288599301698946280

`or(1, A146684(A144396(n+1)))`
-/

namespace A146682.P7288599301698946280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146684 (A144396 (n + 1)).toNat)

end

end A146682.P7288599301698946280

/-! ## A146682.P7215301518346522958

`gcd(A000038(n), A146684(A144396(n+1)))`
-/

namespace A146682.P7215301518346522958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A146684 (A144396 (n + 1)).toNat)

end

end A146682.P7215301518346522958

/-! ## A146682.P16233063188061931306

`A146684(A144396(n+1))/A007318(C(2, n))`
-/

namespace A146682.P16233063188061931306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146684 (A144396 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A146682.P16233063188061931306

/-! ## A146682.P7145558335072849208

`A146684(A144396(n+1))^A000041(C(2, n))`
-/

namespace A146682.P7145558335072849208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146684 (A144396 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A146682.P7145558335072849208

/-!
# A146685: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-1000-1111 pattern in any orientation.

The programs for A146685, there is no canonical definition to state claims against.
-/

/-! ## A146685.P3869691861850773682

`A146687(2*n+3)`
-/

namespace A146685.P3869691861850773682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146687 (2 * n + 3)

end

end A146685.P3869691861850773682

/-! ## A146685.P1069858425964088137

`or(1, A146687(A144396(n+1)))`
-/

namespace A146685.P1069858425964088137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146687 (A144396 (n + 1)).toNat)

end

end A146685.P1069858425964088137

/-! ## A146685.P3224687585117639755

`or(1, A146687(A235866(n+1)))`
-/

namespace A146685.P3224687585117639755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146687 (A235866 (n + 1)).toNat)

end

end A146685.P3224687585117639755

/-! ## A146685.P17000084224426300530

`or(1, A146687(A247424(n+1)))`
-/

namespace A146685.P17000084224426300530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146687 (A247424 (n + 1)).toNat)

end

end A146685.P17000084224426300530

/-!
# A146689: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-1000-1111 pattern in any orientation.

The programs for A146689, there is no canonical definition to state claims against.
-/

/-! ## A146689.P15323059666802952711

`A007310((n-n%4)^xor(4, n)+1)`
-/

namespace A146689.P15323059666802952711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (((n : ℤ) - ((n % 4 : ℕ) : ℤ)) ^ Nat.xor 4 n + 1).toNat

end

end A146689.P15323059666802952711

/-! ## A146689.P8738518488104958058

`A272882(A350249(n+1))`
-/

namespace A146689.P8738518488104958058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272882 (A350249 (n + 1)).toNat

end

end A146689.P8738518488104958058

/-! ## A146689.P9833398041999091520

`A317543(A335472(n+1))`
-/

namespace A146689.P9833398041999091520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317543 (A335472 (n + 1)).toNat

end

end A146689.P9833398041999091520

/-! ## A146689.P14876752467267616425

`A317543(A375135(n+1))`
-/

namespace A146689.P14876752467267616425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317543 (A375135 (n + 1)).toNat

end

end A146689.P14876752467267616425

/-!
# A146690: Number of n X n binary arrays with all ones connected only in a 1100-1100-0111 pattern in any orientation.

The programs for A146690, there is no canonical definition to state claims against.
-/

/-! ## A146690.P7067796846288520594

`A146692(2*(n+2))`
-/

namespace A146690.P7067796846288520594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146692 (2 * (n + 2))

end

end A146690.P7067796846288520594

/-! ## A146690.P16111299751238608748

`or(1, A146692(A005408(n+1)))`
-/

namespace A146690.P16111299751238608748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146692 (A005408 (n + 1)).toNat)

end

end A146690.P16111299751238608748

/-! ## A146690.P12017954419966836898

`or(1, A146692(A133012(n+1)))`
-/

namespace A146690.P12017954419966836898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146692 (A133012 (n + 1)).toNat)

end

end A146690.P12017954419966836898

/-! ## A146690.P1509851291503059117

`or(1, A146692(A144396(n+1)))`
-/

namespace A146690.P1509851291503059117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146692 (A144396 (n + 1)).toNat)

end

end A146690.P1509851291503059117

/-! ## A146690.P16840245265837023073

`or(1, A146692(A193175(n+1)))`
-/

namespace A146690.P16840245265837023073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146692 (A193175 (n + 1)).toNat)

end

end A146690.P16840245265837023073

/-!
# A146691: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-1100-0111 pattern in any orientation.

The programs for A146691, there is no canonical definition to state claims against.
-/

/-! ## A146691.P15857502671429288816

`xor(3, A233583(A146792(n+1)))`
-/

namespace A146691.P15857502671429288816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A233583 (A146792 (n + 1)).toNat)

end

end A146691.P15857502671429288816

/-! ## A146691.P557986264052982847

`xor(3, A233583(A146872(n+1)))`
-/

namespace A146691.P557986264052982847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A233583 (A146872 (n + 1)).toNat)

end

end A146691.P557986264052982847

/-! ## A146691.P11935397884729168773

`or(A001222(A113031(n+1)), A146792(n+1))`
-/

namespace A146691.P11935397884729168773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A113031 (n + 1)).toNat) (A146792 (n + 1))

end

end A146691.P11935397884729168773

/-! ## A146691.P7718444749420006642

`or(A001222(A113031(n+1)), A146872(n+1))`
-/

namespace A146691.P7718444749420006642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A113031 (n + 1)).toNat) (A146872 (n + 1))

end

end A146691.P7718444749420006642

/-! ## A146691.P3217387362382882202

`or(A102669(A146822(n+1)), A146792(n+1))`
-/

namespace A146691.P3217387362382882202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102669 (A146822 (n + 1)).toNat) (A146792 (n + 1))

end

end A146691.P3217387362382882202

/-!
# A146693: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-1100-0111 pattern in any orientation.

The programs for A146693, there is no canonical definition to state claims against.
-/

/-! ## A146693.P11790096771465686230

`A146695(2*(n+2))`
-/

namespace A146693.P11790096771465686230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146695 (2 * (n + 2))

end

end A146693.P11790096771465686230

/-! ## A146693.P6329001760673005852

`or(1, A146695(A022839(n+1)))`
-/

namespace A146693.P6329001760673005852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146695 (A022839 (n + 1)).toNat)

end

end A146693.P6329001760673005852

/-! ## A146693.P8336025990753883188

`or(1, A146695(A144396(n+1)))`
-/

namespace A146693.P8336025990753883188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146695 (A144396 (n + 1)).toNat)

end

end A146693.P8336025990753883188

/-! ## A146693.P10098037740425002798

`or(1, A146695(A160217(n+1)))`
-/

namespace A146693.P10098037740425002798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146695 (A160217 (n + 1)).toNat)

end

end A146693.P10098037740425002798

/-! ## A146693.P6775284979796528664

`or(1, A146695(A346302(n+1)))`
-/

namespace A146693.P6775284979796528664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146695 (A346302 (n + 1)).toNat)

end

end A146693.P6775284979796528664

/-!
# A146694: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-1100-0111 pattern in any orientation.

The programs for A146694, there is no canonical definition to state claims against.
-/

/-! ## A146694.P11888085161727697690

`A366066(A322262(n))`
-/

namespace A146694.P11888085161727697690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366066 (A322262 n).toNat

end

end A146694.P11888085161727697690

/-! ## A146694.P8856619763449612166

`A001948(A146931(n+1))`
-/

namespace A146694.P8856619763449612166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001948 (A146931 (n + 1)).toNat

end

end A146694.P8856619763449612166

/-! ## A146694.P17155696221680373956

`A138234(A058058(n+1))`
-/

namespace A146694.P17155696221680373956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (A058058 (n + 1)).toNat

end

end A146694.P17155696221680373956

/-! ## A146694.P2102411877334379215

`A156724(A196876(n+1))`
-/

namespace A146694.P2102411877334379215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A196876 (n + 1)).toNat

end

end A146694.P2102411877334379215

/-! ## A146694.P3614565031928113138

`A147502(A282760(n+1))`
-/

namespace A146694.P3614565031928113138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147502 (A282760 (n + 1)).toNat

end

end A146694.P3614565031928113138

/-!
# A146696: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-1100-0111 pattern in any orientation.

The programs for A146696, there is no canonical definition to state claims against.
-/

/-! ## A146696.P15331153710105126720

`A147215(n+1)-A054740(A147215(n+1))`
-/

namespace A146696.P15331153710105126720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147215 (n + 1) - A054740 (A147215 (n + 1)).toNat

end

end A146696.P15331153710105126720

/-! ## A146696.P5604197457171380432

`A345452(A360038(n+1)%A031141(3*n+2))`
-/

namespace A146696.P5604197457171380432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (Int.tmod (A360038 (n + 1)) (A031141 (3 * n + 2))).toNat

end

end A146696.P5604197457171380432

/-! ## A146696.P12398203281293896957

`abs(2-∏{p}[A090295(n)², #])`
-/

namespace A146696.P12398203281293896957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090295 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)|

end

end A146696.P12398203281293896957

/-! ## A146696.P18437641753629572779

`Δ[A329138(floor(n^(1/3))*a(n-1))]` with `a(0)=4`
-/

namespace A146696.P18437641753629572779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A329138 (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A146696.P18437641753629572779

/-! ## A146696.P11951428244329447373

`A274613(∑[2*n]-∏{p}[n+1, (n+1)/#]%(n+1))`
-/

namespace A146696.P11951428244329447373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274613 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)).toNat

end

end A146696.P11951428244329447373

/-!
# A146697: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-1100-0111 pattern in any orientation.

The programs for A146697, there is no canonical definition to state claims against.
-/

/-! ## A146697.P2440513074979925344

`A002635(A150349(n))`
-/

namespace A146697.P2440513074979925344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A150349 n).toNat

end

end A146697.P2440513074979925344

/-! ## A146697.P13168962826722166010

`or(1, A339218(A067829(n+1)))`
-/

namespace A146697.P13168962826722166010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A339218 (A067829 (n + 1)).toNat)

end

end A146697.P13168962826722166010

/-! ## A146697.P16229730037632482790

`or(1, A339218(A175075(n+1)))`
-/

namespace A146697.P16229730037632482790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A339218 (A175075 (n + 1)).toNat)

end

end A146697.P16229730037632482790

/-! ## A146697.P7691062007624270457

`A008618(A175395(n)*A295685(n))`
-/

namespace A146697.P7691062007624270457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A175395 n * A295685 n).toNat

end

end A146697.P7691062007624270457

/-!
# A146698: Number of n X n binary arrays with all ones connected only in a 1100-1111-0010 pattern in any orientation.

The programs for A146698, there is no canonical definition to state claims against.
-/

/-! ## A146698.P14916310396406625809

`A146700(2*(n+2))`
-/

namespace A146698.P14916310396406625809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146700 (2 * (n + 2))

end

end A146698.P14916310396406625809

/-! ## A146698.P174488101682804578

`gcd(C(2, n+2), A146700(A005408(n+1)))`
-/

namespace A146698.P174488101682804578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A146700 (A005408 (n + 1)).toNat)

end

end A146698.P174488101682804578

/-! ## A146698.P16941396147080840603

`lcm(A146700(A005408(n+1)), A146711(n+1))`
-/

namespace A146698.P16941396147080840603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A146700 (A005408 (n + 1)).toNat) (A146711 (n + 1))

end

end A146698.P16941396147080840603

/-! ## A146698.P9204201993138409426

`A146700(A285075(n+1))^A146684(n+1)`
-/

namespace A146698.P9204201993138409426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146700 (A285075 (n + 1)).toNat : ℚ) ^ (A146684 (n + 1) : ℤ)

end

end A146698.P9204201993138409426

/-!
# A146699: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-1111-0010 pattern in any orientation.

The programs for A146699, there is no canonical definition to state claims against.
-/

/-! ## A146699.P8409141654724362922

`A146707(∑[(1-(∑{digits}[n, #]-n))²])`
-/

namespace A146699.P8409141654724362922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146707 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146699.P8409141654724362922

/-! ## A146699.P1027679354124436542

`A146707(∑[A213217(n)])`
-/

namespace A146699.P1027679354124436542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146707 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146699.P1027679354124436542

/-! ## A146699.P6175827998196247761

`A146707(A002998(n)+1)`
-/

namespace A146699.P6175827998196247761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146707 (A002998 n + 1).toNat

end

end A146699.P6175827998196247761

/-! ## A146699.P522935071765129654

`A022998(A146707(n+1))`
-/

namespace A146699.P522935071765129654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A146707 (n + 1)).toNat

end

end A146699.P522935071765129654

/-! ## A146699.P12848602015742848278

`A146707(A085908(n+1))`
-/

namespace A146699.P12848602015742848278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146707 (A085908 (n + 1)).toNat

end

end A146699.P12848602015742848278

