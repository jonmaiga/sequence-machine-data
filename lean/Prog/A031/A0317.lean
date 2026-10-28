import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A031702: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 24.

The programs for A031702, there is no canonical definition to state claims against.
-/

/-! ## A031702.P11311335483364990441

`A000265((12*(n+1))²+1)+n`
-/

namespace A031702.P11311335483364990441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((12 * (n + 1)) ^ 2 + 1) + (n : ℤ)

end

end A031702.P11311335483364990441

/-! ## A031702.P15532829127193594772

`A157685(3*n+4)+(12*(n+1))²`
-/

namespace A031702.P15532829127193594772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (3 * n + 4) + ((12 * (n + 1)) ^ 2 : ℤ)

end

end A031702.P15532829127193594772

/-! ## A031702.P14607117609792763716

`A008833(A017522(n+1))+n+1`
-/

namespace A031702.P14607117609792763716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A017522 (n + 1)).toNat + (n + 1 : ℤ)

end

end A031702.P14607117609792763716

/-! ## A031702.P261997080214634326

`A000265(A136017(2*(n+1)))+2+n`
-/

namespace A031702.P261997080214634326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A136017 (2 * (n + 1))).toNat + 2 + (n : ℤ)

end

end A031702.P261997080214634326

/-! ## A031702.P3903434314470240885

`A158132(n+1)-(n+1)%A337385(n+1)`
-/

namespace A031702.P3903434314470240885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158132 (n + 1) - Int.tmod (n + 1 : ℤ) (A337385 (n + 1))

end

end A031702.P3903434314470240885

/-!
# A031704: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 26.

The programs for A031704, there is no canonical definition to state claims against.
-/

/-! ## A031704.P4142366212953055053

`∑[Δ[(13*n)²]+1]%A133972(n+1)`
-/

namespace A031704.P4142366212953055053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (13 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A133972 (n + 1))

end

end A031704.P4142366212953055053

/-! ## A031704.P18162041249019745580

`A349907(∑[50*n+24])+∑[Δ[(13*n)²]+1]`
-/

namespace A031704.P18162041249019745580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * n + 24

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (13 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (∑ j ∈ Finset.range (n + 1), f1 j) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A031704.P18162041249019745580

/-! ## A031704.P11169548652142004384

`A173275(n+1)%A296097(n+1)`
-/

namespace A031704.P11169548652142004384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173275 (n + 1)) (A296097 (n + 1))

end

end A031704.P11169548652142004384

/-! ## A031704.P10719034682905707946

`(n+1)*A158221(A355249(3*(n+1)))`
-/

namespace A031704.P10719034682905707946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158221 (A355249 (3 * (n + 1))).toNat

end

end A031704.P10719034682905707946

/-! ## A031704.P14985108857402979856

`A173275(n+1)-A349907(∑[50*n+24])`
-/

namespace A031704.P14985108857402979856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * n + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173275 (n + 1) - A349907 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031704.P14985108857402979856

/-!
# A031706: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 28.

The programs for A031706, there is no canonical definition to state claims against.
-/

/-! ## A031706.P17539628453194387414

`Δ[A158223(A153058(n))+∑[n]]`
-/

namespace A031706.P17539628453194387414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158223 (A153058 n).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031706.P17539628453194387414

/-! ## A031706.P6380511411435483157

`∑[A000188(A051717(n))+Δ[(14*n)²]]`
-/

namespace A031706.P6380511411435483157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (14 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A051717 n).toNat + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031706.P6380511411435483157

/-! ## A031706.P3128738659382482735

`∑[Δ[(14*n)²]-A057428(A024598(n+1))]`
-/

namespace A031706.P3128738659382482735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (14 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A057428 (A024598 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031706.P3128738659382482735

/-! ## A031706.P1772075832991397001

`A000027(n+1)+Δ[A158223(A153058(n))]`
-/

namespace A031706.P1772075832991397001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158223 (A153058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (f1 (n + 1) - f1 n)

end

end A031706.P1772075832991397001

/-! ## A031706.P6360000796055175241

`(A000038(A162976(n))+n+1)*A158223(n+1)`
-/

namespace A031706.P6360000796055175241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 (A162976 n).toNat + (n + 1 : ℤ)) * A158223 (n + 1)

end

end A031706.P6360000796055175241

/-!
# A031710: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 32.

The programs for A031710, there is no canonical definition to state claims against.
-/

/-! ## A031710.P17237711469013421790

`∑[Δ[(16*n)²]+A177704(n²)^A106433(n)]`
-/

namespace A031710.P17237711469013421790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (16 * n) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) + (A177704 (n ^ 2) : ℚ) ^ (A106433 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031710.P17237711469013421790

/-! ## A031710.P4361718000553627264

`(16*16*(n+1)+1)*A065770(A161522(n+1))`
-/

namespace A031710.P4361718000553627264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * (16 * (n + 1)) + 1 : ℤ) * A065770 (A161522 (n + 1)).toNat

end

end A031710.P4361718000553627264

/-! ## A031710.P597950139997095305

`(16*16*(n+1)+1)*A289508(A001248(n+1))`
-/

namespace A031710.P597950139997095305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * (16 * (n + 1)) + 1 : ℤ) * A289508 (A001248 (n + 1)).toNat

end

end A031710.P597950139997095305

/-! ## A031710.P8101206186293246177

`(16*16*(n+1)+1)*A308049(A308021(n+1))`
-/

namespace A031710.P8101206186293246177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * (16 * (n + 1)) + 1 : ℤ) * A308049 (A308021 (n + 1)).toNat

end

end A031710.P8101206186293246177

/-! ## A031710.P4185826922364976963

`A016802(A328176(A016802(n+1)))+n+1`
-/

namespace A031710.P4185826922364976963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 (A328176 (A016802 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A031710.P4185826922364976963

/-!
# A031711: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 33.

The programs for A031711, there is no canonical definition to state claims against.
-/

/-! ## A031711.P17181113581836012401

`A158131((3*(n+1))²)+2*n+1`
-/

namespace A031711.P17181113581836012401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158131 ((3 * (n + 1)) ^ 2) + (2 * n + 1 : ℤ)

end

end A031711.P17181113581836012401

/-! ## A031711.P8468037466594851983

`A206798(A206798(n+1))+A031744(n+1)`
-/

namespace A031711.P8468037466594851983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206798 (A206798 (n + 1)).toNat + A031744 (n + 1)

end

end A031711.P8468037466594851983

/-! ## A031711.P9633347492311431827

`A206798(A206798(n+1))+A235201(A235201(33*(n+1)))²+n+1`
-/

namespace A031711.P9633347492311431827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206798 (A206798 (n + 1)).toNat + (A235201 (A235201 (33 * (n + 1))).toNat ^ 2 + (n + 1 : ℤ))

end

end A031711.P9633347492311431827

/-! ## A031711.P11470236239891726862

`A241909(A241909(n+1))+A031744(n+1)`
-/

namespace A031711.P11470236239891726862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A241909 (n + 1)).toNat + A031744 (n + 1)

end

end A031711.P11470236239891726862

/-! ## A031711.P6276016375015335748

`A281873(A281873(n+1))+A031744(n+1)`
-/

namespace A031711.P6276016375015335748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (A281873 (n + 1)).toNat + A031744 (n + 1)

end

end A031711.P6276016375015335748

/-!
# A031712: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 34.

The programs for A031712, there is no canonical definition to state claims against.
-/

/-! ## A031712.P3043558665697759434

`A158254(n+1)-A083918(A349174(2*(n+2)))-(n+1)`
-/

namespace A031712.P3043558665697759434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158254 (n + 1) - A083918 (A349174 (2 * (n + 2))).toNat - (n + 1 : ℤ)

end

end A031712.P3043558665697759434

/-! ## A031712.P12416402473334466035

`∑[A005843(A158255(n+1))-290]`
-/

namespace A031712.P12416402473334466035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A158255 (n + 1)).toNat - 290

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031712.P12416402473334466035

/-! ## A031712.P17106727130822262879

`(n+1)*A143051(A158255(n+1)+1)`
-/

namespace A031712.P17106727130822262879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143051 (A158255 (n + 1) + 1).toNat

end

end A031712.P17106727130822262879

/-! ## A031712.P7832847400277646694

`A001478(n+1)*A001478(A158255(n+1))`
-/

namespace A031712.P7832847400277646694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) * A001478 (A158255 (n + 1)).toNat

end

end A031712.P7832847400277646694

/-! ## A031712.P4436280198525449414

`A000027(n+1)*A028310(A158255(n+1))`
-/

namespace A031712.P4436280198525449414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A028310 (A158255 (n + 1)).toNat

end

end A031712.P4436280198525449414

/-!
# A031713: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 35.

The programs for A031713, there is no canonical definition to state claims against.
-/

/-! ## A031713.P18575924068177975

`A031748(n+1)+(n+1)%A141214(n)`
-/

namespace A031713.P18575924068177975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031748 (n + 1) + Int.tmod (n + 1 : ℤ) (A141214 n)

end

end A031713.P18575924068177975

/-! ## A031713.P11758755052283619122

`A031734(n+1)+A000027(A031720(n+1))`
-/

namespace A031713.P11758755052283619122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031734 (n + 1) + A000027 (A031720 (n + 1)).toNat

end

end A031713.P11758755052283619122

/-! ## A031713.P15723035840047770279

`A000027(A031720(n+1))+A158223((2*(n+1))²)+n`
-/

namespace A031713.P15723035840047770279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A031720 (n + 1)).toNat + (A158223 ((2 * (n + 1)) ^ 2) + (n : ℤ))

end

end A031713.P15723035840047770279

/-! ## A031713.P11976876964697973384

`A000027(A031720(n+1))+A158225((2*(n+1))²)+2+n`
-/

namespace A031713.P11976876964697973384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A031720 (n + 1)).toNat + (A158225 ((2 * (n + 1)) ^ 2) + 2 + (n : ℤ))

end

end A031713.P11976876964697973384

/-! ## A031713.P8087657820058697204

`A153212(A153212(n+1))+A031748(n+1)`
-/

namespace A031713.P8087657820058697204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (A153212 (n + 1)).toNat + A031748 (n + 1)

end

end A031713.P8087657820058697204

/-!
# A031714: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 36.

The programs for A031714, there is no canonical definition to state claims against.
-/

/-! ## A031714.P11216443612232229310

`A158271(n+1)-(n+1)%A316855(n+1)`
-/

namespace A031714.P11216443612232229310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158271 (n + 1) - Int.tmod (n + 1 : ℤ) (A316855 (n + 1))

end

end A031714.P11216443612232229310

/-! ## A031714.P14866005795155185073

`A158065(A000290(3*(n+1)))+n`
-/

namespace A031714.P14866005795155185073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (A000290 (3 * (n + 1))).toNat + (n : ℤ)

end

end A031714.P14866005795155185073

/-! ## A031714.P6811843572543424735

`A044102(A000290(3*n+3))+n+1`
-/

namespace A031714.P6811843572543424735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A000290 (3 * n + 3)).toNat + (n + 1 : ℤ)

end

end A031714.P6811843572543424735

/-! ## A031714.P7045847606328362779

`(n+1)*A097062(A008600(A008600(n+1)))`
-/

namespace A031714.P7045847606328362779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097062 (A008600 (A008600 (n + 1)).toNat).toNat

end

end A031714.P7045847606328362779

/-! ## A031714.P1752673389657372121

`A008600(A195321(n+1))+n+1`
-/

namespace A031714.P1752673389657372121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 (A195321 (n + 1)).toNat + (n + 1 : ℤ)

end

end A031714.P1752673389657372121

/-!
# A031715: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 37.

The programs for A031715, there is no canonical definition to state claims against.
-/

/-! ## A031715.P3798660555096532644

`A143052(A143051(2*(n+1)))+(37*(n+1))²`
-/

namespace A031715.P3798660555096532644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143052 (A143051 (2 * (n + 1))).toNat + ((37 * (n + 1)) ^ 2 : ℤ)

end

end A031715.P3798660555096532644

/-! ## A031715.P2555859045545572084

`A122111(A122111(n+1))+A031752(n+1)`
-/

namespace A031715.P2555859045545572084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A122111 (n + 1)).toNat + A031752 (n + 1)

end

end A031715.P2555859045545572084

/-! ## A031715.P7791224168897254984

`A346698(A001248(n+1))+A031752(n+1)`
-/

namespace A031715.P7791224168897254984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A001248 (n + 1)).toNat + A031752 (n + 1)

end

end A031715.P7791224168897254984

/-! ## A031715.P13837186828958685508

`A031752(n+1)+A002262(A178574(n+1))`
-/

namespace A031715.P13837186828958685508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031752 (n + 1) + A002262 (A178574 (n + 1)).toNat

end

end A031715.P13837186828958685508

/-!
# A031716: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 38.

The programs for A031716, there is no canonical definition to state claims against.
-/

/-! ## A031716.P17089007189880551218

`(n+1)*A158310(∑[A010894(n)!])`
-/

namespace A031716.P17089007189880551218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031716.P17089007189880551218

/-! ## A031716.P17151266890425480826

`A158310(A323462(2*(n+1))²)+n`
-/

namespace A031716.P17151266890425480826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158310 (A323462 (2 * (n + 1)) ^ 2).toNat + (n : ℤ)

end

end A031716.P17151266890425480826

/-! ## A031716.P12445533972158096986

`A158310(n+1)*A323462(2*(n+1))`
-/

namespace A031716.P12445533972158096986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158310 (n + 1) * A323462 (2 * (n + 1))

end

end A031716.P12445533972158096986

/-! ## A031716.P4477805198749068624

`A323462(2*(n+1))+A008601(n+1)²`
-/

namespace A031716.P4477805198749068624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323462 (2 * (n + 1)) + A008601 (n + 1) ^ 2

end

end A031716.P4477805198749068624

/-! ## A031716.P12451538518657413281

`A000027(∑[A158310(2*n+1)])`
-/

namespace A031716.P12451538518657413281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158310 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A031716.P12451538518657413281

/-!
# A031717: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 39.

The programs for A031717, there is no canonical definition to state claims against.
-/

/-! ## A031717.P14875828290031041128

`A309010(A000096(n))+A031756(n+1)`
-/

namespace A031717.P14875828290031041128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A000096 n).toNat + A031756 (n + 1)

end

end A031717.P14875828290031041128

/-! ## A031717.P7571162314317354986

`A122111(A122111(n+1))+A031756(n+1)`
-/

namespace A031717.P7571162314317354986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A122111 (n + 1)).toNat + A031756 (n + 1)

end

end A031717.P7571162314317354986

/-! ## A031717.P9760669022436321275

`(39*(n+1))²+Δ[n²]+A001221(A062064(n+1))`
-/

namespace A031717.P9760669022436321275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((39 * (n + 1)) ^ 2 : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + A001221 (A062064 (n + 1)).toNat)

end

end A031717.P9760669022436321275

/-! ## A031717.P8638969745014167931

`A000027(n+1)+A000027(A031756(n+1))`
-/

namespace A031717.P8638969745014167931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + A000027 (A031756 (n + 1)).toNat

end

end A031717.P8638969745014167931

/-!
# A031718: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 40.

The programs for A031718, there is no canonical definition to state claims against.
-/

/-! ## A031718.P15304462085884957718

`∑[A103391(A008590(Δ[(10*n)²]))]`
-/

namespace A031718.P15304462085884957718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A008590 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031718.P15304462085884957718

/-! ## A031718.P15788507534598833538

`A158313(A036445(2*(n+1))²)+n`
-/

namespace A031718.P15788507534598833538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158313 (A036445 (2 * (n + 1)) ^ 2).toNat + (n : ℤ)

end

end A031718.P15788507534598833538

/-! ## A031718.P15497360238224491184

`A036445(2*(n+1))*A158313(n+1)`
-/

namespace A031718.P15497360238224491184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (2 * (n + 1)) * A158313 (n + 1)

end

end A031718.P15497360238224491184

/-! ## A031718.P14846464547410520743

`A000027(∑[A158313(2*n+1)])`
-/

namespace A031718.P14846464547410520743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158313 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A031718.P14846464547410520743

/-! ## A031718.P15858579283597938763

`A000027((n+1)*A158313(n+1))`
-/

namespace A031718.P15858579283597938763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 1 : ℤ) * A158313 (n + 1)).toNat

end

end A031718.P15858579283597938763

/-!
# A031719: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 41.

The programs for A031719, there is no canonical definition to state claims against.
-/

/-! ## A031719.P10585667959397142053

`A322744(A000124(n))+A031760(n+1)`
-/

namespace A031719.P10585667959397142053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322744 (A000124 n).toNat + A031760 (n + 1)

end

end A031719.P10585667959397142053

/-! ## A031719.P11159408419344245867

`A084311(A084315(n+1))+A031760(n+1)`
-/

namespace A031719.P11159408419344245867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084311 (A084315 (n + 1)).toNat + A031760 (n + 1)

end

end A031719.P11159408419344245867

/-! ## A031719.P10704253091485003490

`A031760(n+1)-A334952(2*n+1)`
-/

namespace A031719.P10704253091485003490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031760 (n + 1) - A334952 (2 * n + 1)

end

end A031719.P10704253091485003490

/-! ## A031719.P18143913590318064542

`A000027(A031760(n+1)+n+1)`
-/

namespace A031719.P18143913590318064542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A031760 (n + 1) + (n + 1 : ℤ)).toNat

end

end A031719.P18143913590318064542

/-!
# A031720: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 42.

The programs for A031720, there is no canonical definition to state claims against.
-/

/-! ## A031720.P10760453680130475539

`A158322(n+1)*A183534(A001844(n))`
-/

namespace A031720.P10760453680130475539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158322 (n + 1) * A183534 (A001844 n).toNat

end

end A031720.P10760453680130475539

/-! ## A031720.P1009232563766938439

`A158321(n+1)-(n+1)%A238445(n+1)`
-/

namespace A031720.P1009232563766938439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158321 (n + 1) - Int.tmod (n + 1 : ℤ) (A238445 (n + 1))

end

end A031720.P1009232563766938439

/-! ## A031720.P5736011293867735530

`A158321(n+1)-A007321(A095909(n+1))`
-/

namespace A031720.P5736011293867735530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158321 (n + 1) - A007321 (A095909 (n + 1)).toNat

end

end A031720.P5736011293867735530

/-! ## A031720.P1225174076260873530

`∑[Δ[(21*n)²]+2-A023533(C(n+1, 3))]`
-/

namespace A031720.P1225174076260873530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (21 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2 - A023533 (Nat.choose (n + 1) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031720.P1225174076260873530

/-! ## A031720.P8339938842044013750

`(A057237(A264354(n+1))+n)*A158322(n+1)`
-/

namespace A031720.P8339938842044013750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057237 (A264354 (n + 1)).toNat + (n : ℤ)) * A158322 (n + 1)

end

end A031720.P8339938842044013750

/-!
# A031721: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 43.

The programs for A031721, there is no canonical definition to state claims against.
-/

/-! ## A031721.P2585494381092438141

`A212536(A000124(n))+A031764(n+1)`
-/

namespace A031721.P2585494381092438141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A000124 n).toNat + A031764 (n + 1)

end

end A031721.P2585494381092438141

/-! ## A031721.P15529489285974888951

`A212536(A000124(n))+A002260(A001844(n))+(43*(n+1))²`
-/

namespace A031721.P15529489285974888951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A000124 n).toNat + (A002260 (A001844 n).toNat + ((43 * (n + 1)) ^ 2 : ℤ))

end

end A031721.P15529489285974888951

/-! ## A031721.P10630846105385125061

`A031764(n+1)+A029837(A000051(n))`
-/

namespace A031721.P10630846105385125061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031764 (n + 1) + A029837 (A000051 n).toNat

end

end A031721.P10630846105385125061

/-!
# A031722: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 44.

The programs for A031722, there is no canonical definition to state claims against.
-/

/-! ## A031722.P1101211401288841939

`A158325(n+1)-A117932(A117931(n+1))`
-/

namespace A031722.P1101211401288841939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158325 (n + 1) - A117932 (A117931 (n + 1)).toNat

end

end A031722.P1101211401288841939

/-! ## A031722.P17486195986871311818

`A117932(A117931(n+1))*A158326(n+1)`
-/

namespace A031722.P17486195986871311818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117932 (A117931 (n + 1)).toNat * A158326 (n + 1)

end

end A031722.P17486195986871311818

/-! ## A031722.P10644965451858623459

`A158325(n+1)-A000007(A358093(n+1))-(n+1)`
-/

namespace A031722.P10644965451858623459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158325 (n + 1) - A000007 (A358093 (n + 1)).toNat - (n + 1 : ℤ)

end

end A031722.P10644965451858623459

/-! ## A031722.P3706816282553665723

`∑[A004766(Δ[(11*n)²])]`
-/

namespace A031722.P3706816282553665723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031722.P3706816282553665723

/-! ## A031722.P17143548382491429595

`A161709(A195323(n+1))+n`
-/

namespace A031722.P17143548382491429595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (A195323 (n + 1)).toNat + (n : ℤ)

end

end A031722.P17143548382491429595

/-!
# A031723: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 45.

The programs for A031723, there is no canonical definition to state claims against.
-/

/-! ## A031723.P7722909562814326917

`A102569(A102568(n+1))+A031768(n+1)`
-/

namespace A031723.P7722909562814326917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102569 (A102568 (n + 1)).toNat + A031768 (n + 1)

end

end A031723.P7722909562814326917

/-! ## A031723.P9984193599338889987

`A102569(A102568(n+1))+A156855(n+1)+2*(n+1)`
-/

namespace A031723.P9984193599338889987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102569 (A102568 (n + 1)).toNat + (A156855 (n + 1) + (2 * (n + 1) : ℤ))

end

end A031723.P9984193599338889987

/-! ## A031723.P8193627446327418742

`A114579(A114579(n+1))+A031768(n+1)`
-/

namespace A031723.P8193627446327418742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114579 (A114579 (n + 1)).toNat + A031768 (n + 1)

end

end A031723.P8193627446327418742

/-!
# A031724: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 46.

The programs for A031724, there is no canonical definition to state claims against.
-/

/-! ## A031724.P3722174737916539054

`A158367(n+1)-A244319(A244319(n+1))`
-/

namespace A031724.P3722174737916539054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158367 (n + 1) - A244319 (A244319 (n + 1)).toNat

end

end A031724.P3722174737916539054

/-! ## A031724.P11584397425116662939

`A158368(n+1)*A244319(A244319(n+1))`
-/

namespace A031724.P11584397425116662939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158368 (n + 1) * A244319 (A244319 (n + 1)).toNat

end

end A031724.P11584397425116662939

/-! ## A031724.P1333911609749389986

`A158364(n+1)+A002024(A099392(3*n+4))`
-/

namespace A031724.P1333911609749389986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158364 (n + 1) + A002024 (A099392 (3 * n + 4)).toNat

end

end A031724.P1333911609749389986

/-! ## A031724.P5022952903666497037

`A003056(A000096(3*(n+1)))+(n+1)*(A158368(n+1)-3)`
-/

namespace A031724.P5022952903666497037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000096 (3 * (n + 1))).toNat + (n + 1 : ℤ) * (A158368 (n + 1) - 3)

end

end A031724.P5022952903666497037

/-! ## A031724.P3580495644832899967

`A003056(A000096(3*(n+1)))+A215148(n+1)²-A103214(2*(n+1))`
-/

namespace A031724.P3580495644832899967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000096 (3 * (n + 1))).toNat + (A215148 (n + 1) ^ 2 - A103214 (2 * (n + 1)))

end

end A031724.P3580495644832899967

/-!
# A031725: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 47.

The programs for A031725, there is no canonical definition to state claims against.
-/

/-! ## A031725.P15383428467016047742

`A122111(A122111(n+1))+A031772(n+1)`
-/

namespace A031725.P15383428467016047742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A122111 (n + 1)).toNat + A031772 (n + 1)

end

end A031725.P15383428467016047742

/-! ## A031725.P11405611624808236132

`A217296(A217015(n+1))+A031772(n+1)`
-/

namespace A031725.P11405611624808236132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217296 (A217015 (n + 1)).toNat + A031772 (n + 1)

end

end A031725.P11405611624808236132

/-! ## A031725.P13087262659715733939

`A000027(n+1)+A000027(A031772(n+1))`
-/

namespace A031725.P13087262659715733939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + A000027 (A031772 (n + 1)).toNat

end

end A031725.P13087262659715733939

/-! ## A031725.P10441018558009781005

`A087230(A087231(n+1))+A031772(n+1)`
-/

namespace A031725.P10441018558009781005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (A087231 (n + 1)).toNat + A031772 (n + 1)

end

end A031725.P10441018558009781005

/-!
# A031726: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 48.

The programs for A031726, there is no canonical definition to state claims against.
-/

/-! ## A031726.P6159956438427611123

`A158133((2*(n+1))²)+n`
-/

namespace A031726.P6159956438427611123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158133 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031726.P6159956438427611123

/-! ## A031726.P11298258176806669037

`A158136((2*(n+1))²)+2+n`
-/

namespace A031726.P11298258176806669037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158136 ((2 * (n + 1)) ^ 2) + 2 + (n : ℤ)

end

end A031726.P11298258176806669037

/-! ## A031726.P10373805564815228311

`Δ[A006370((2*n+1)²)]²+n+1`
-/

namespace A031726.P10373805564815228311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((2 * n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + (n : ℤ) + 1

end

end A031726.P10373805564815228311

/-! ## A031726.P10220577602091886587

`Δ[A016789(A078370(n))]²-xor(n, -1)`
-/

namespace A031726.P10220577602091886587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A078370 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - Int.xor (n : ℤ) (-1)

end

end A031726.P10220577602091886587

/-! ## A031726.P696663953220927569

`A044102(A008586(n+1)²)+n+1`
-/

namespace A031726.P696663953220927569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A008586 (n + 1) ^ 2).toNat + (n + 1 : ℤ)

end

end A031726.P696663953220927569

/-!
# A031727: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 49.

The programs for A031727, there is no canonical definition to state claims against.
-/

/-! ## A031727.P2402266501859685842

`A143182(A051682(n))+A031776(n+1)`
-/

namespace A031727.P2402266501859685842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (A051682 n).toNat + A031776 (n + 1)

end

end A031727.P2402266501859685842

/-! ## A031727.P7943579212107772903

`A144001(A167614(n+1))+A031776(n+1)`
-/

namespace A031727.P7943579212107772903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144001 (A167614 (n + 1)).toNat + A031776 (n + 1)

end

end A031727.P7943579212107772903

/-! ## A031727.P3285126478681450172

`A031776(n+1)+A000005(2^n)`
-/

namespace A031727.P3285126478681450172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031776 (n + 1) + A000005 (2 ^ n)

end

end A031727.P3285126478681450172

/-! ## A031727.P17459778825338576256

`A000005(A000079(n))+(49*A038690((n+1)²))²+n+1`
-/

namespace A031727.P17459778825338576256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 n).toNat + ((49 * A038690 ((n + 1) ^ 2)) ^ 2 + (n + 1 : ℤ))

end

end A031727.P17459778825338576256

/-!
# A031728: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 50.

The programs for A031728, there is no canonical definition to state claims against.
-/

/-! ## A031728.P8431896715478942513

`A158382(n+1)-(n+1)%A090793(n+1)`
-/

namespace A031728.P8431896715478942513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158382 (n + 1) - Int.tmod (n + 1 : ℤ) (A090793 (n + 1))

end

end A031728.P8431896715478942513

/-! ## A031728.P10517338557164276797

`A158382(n+1)-(n+1)%A158382(A025065(n))`
-/

namespace A031728.P10517338557164276797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158382 (n + 1) - Int.tmod (n + 1 : ℤ) (A158382 (A025065 n).toNat)

end

end A031728.P10517338557164276797

/-! ## A031728.P6545983965761620883

`A000038(A090793(n+1))+∑[A158383(2*n+1)]`
-/

namespace A031728.P6545983965761620883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158383 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A090793 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031728.P6545983965761620883

/-! ## A031728.P1637362016381908739

`A059841(A291282(n+1))+∑[A158383(2*n+1)]`
-/

namespace A031728.P1637362016381908739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158383 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A291282 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031728.P1637362016381908739

/-! ## A031728.P11345177970102857841

`∑[A158383(2*n+1)]*A342458(A059225(n+1))`
-/

namespace A031728.P11345177970102857841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158383 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A342458 (A059225 (n + 1)).toNat

end

end A031728.P11345177970102857841

/-! ## A031728.P13273363131527818473

`A158382(n+1)-A225281(∑[n]+1)`
-/

namespace A031728.P13273363131527818473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158382 (n + 1) - A225281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A031728.P13273363131527818473

/-! ## A031728.P13513777767874384204

`(A040011(A080856(n))+n)*A158383(n+1)`
-/

namespace A031728.P13513777767874384204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040011 (A080856 n).toNat + (n : ℤ)) * A158383 (n + 1)

end

end A031728.P13513777767874384204

/-! ## A031728.P2976268414022243211

`∑[A056021(A158128(2*n+1))]`
-/

namespace A031728.P2976268414022243211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A158128 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031728.P2976268414022243211

/-!
# A031729: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 51.

The programs for A031729, there is no canonical definition to state claims against.
-/

/-! ## A031729.P216059487804270442

`A031768(n+1)+A000027(A031726(n+1))`
-/

namespace A031729.P216059487804270442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031768 (n + 1) + A000027 (A031726 (n + 1)).toNat

end

end A031729.P216059487804270442

/-! ## A031729.P2412378914372170557

`A031768(n+1)+A031726(A187829(n+1))`
-/

namespace A031729.P2412378914372170557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031768 (n + 1) + A031726 (A187829 (n + 1)).toNat

end

end A031729.P2412378914372170557

/-! ## A031729.P829417925283263192

`(n+1)*A016789(A158253(3*(n+1))+1)`
-/

namespace A031729.P829417925283263192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016789 (A158253 (3 * (n + 1)) + 1).toNat

end

end A031729.P829417925283263192

/-! ## A031729.P17037180522132794253

`A031712(3*n+3)-A010888(A031702(n+1))`
-/

namespace A031729.P17037180522132794253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031712 (3 * n + 3) - A010888 (A031702 (n + 1)).toNat

end

end A031729.P17037180522132794253

/-!
# A031730: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 52.

The programs for A031730, there is no canonical definition to state claims against.
-/

/-! ## A031730.P11284514092985521643

`A182164(A182165(n+1))+(26*(n+1))²`
-/

namespace A031730.P11284514092985521643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182164 (A182165 (n + 1)).toNat + ((26 * (n + 1)) ^ 2 : ℤ)

end

end A031730.P11284514092985521643

/-! ## A031730.P14597765625826768197

`A158385(n+1)-A182164(A182165(n+1))`
-/

namespace A031730.P14597765625826768197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158385 (n + 1) - A182164 (A182165 (n + 1)).toNat

end

end A031730.P14597765625826768197

/-! ## A031730.P17158291070152200313

`A158386(n+1)*A182164(A182165(n+1))`
-/

namespace A031730.P17158291070152200313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158386 (n + 1) * A182164 (A182165 (n + 1)).toNat

end

end A031730.P17158291070152200313

/-! ## A031730.P7962568922810212513

`A158385(n+1)-A115949(A115950(n+1))`
-/

namespace A031730.P7962568922810212513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158385 (n + 1) - A115949 (A115950 (n + 1)).toNat

end

end A031730.P7962568922810212513

/-! ## A031730.P9312012638834093156

`A158385(n+1)-A331441(A331440(n+1))`
-/

namespace A031730.P9312012638834093156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158385 (n + 1) - A331441 (A331440 (n + 1)).toNat

end

end A031730.P9312012638834093156

/-! ## A031730.P16706901969341018746

`A115949(A115950(n+1))*A158386(n+1)`
-/

namespace A031730.P16706901969341018746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115949 (A115950 (n + 1)).toNat * A158386 (n + 1)

end

end A031730.P16706901969341018746

/-! ## A031730.P14173062375922552755

`A158386(n+1)*A331441(A331440(n+1))`
-/

namespace A031730.P14173062375922552755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158386 (n + 1) * A331441 (A331440 (n + 1)).toNat

end

end A031730.P14173062375922552755

/-! ## A031730.P17187374489941349454

`A158385(n+1)-A114650(A114651(n+1))`
-/

namespace A031730.P17187374489941349454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158385 (n + 1) - A114650 (A114651 (n + 1)).toNat

end

end A031730.P17187374489941349454

/-! ## A031730.P2921746415043032445

`A114650(A114651(n+1))*A158386(n+1)`
-/

namespace A031730.P2921746415043032445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114650 (A114651 (n + 1)).toNat * A158386 (n + 1)

end

end A031730.P2921746415043032445

/-! ## A031730.P4794895702026177551

`A158221((2*(n+1))²)+n`
-/

namespace A031730.P4794895702026177551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158221 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031730.P4794895702026177551

/-!
# A031731: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 53.

The programs for A031731, there is no canonical definition to state claims against.
-/

/-! ## A031731.P3435204970861883595

`A031768(n+1)+A000027(A031734(n+1))`
-/

namespace A031731.P3435204970861883595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031768 (n + 1) + A000027 (A031734 (n + 1)).toNat

end

end A031731.P3435204970861883595

/-!
# A031732: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 54.

The programs for A031732, there is no canonical definition to state claims against.
-/

/-! ## A031732.P18348982974746510407

`A158396(n+1)-A194104(A194105(n+1))`
-/

namespace A031732.P18348982974746510407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158396 (n + 1) - A194104 (A194105 (n + 1)).toNat

end

end A031732.P18348982974746510407

/-! ## A031732.P16512810101606360998

`A158397(n+1)*A194104(A194105(n+1))`
-/

namespace A031732.P16512810101606360998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158397 (n + 1) * A194104 (A194105 (n + 1)).toNat

end

end A031732.P16512810101606360998

/-! ## A031732.P940352676479231639

`A158396(n+1)-A257735(A257736(n+1))`
-/

namespace A031732.P940352676479231639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158396 (n + 1) - A257735 (A257736 (n + 1)).toNat

end

end A031732.P940352676479231639

/-! ## A031732.P1272668058349923701

`A158397(n+1)*A257735(A257736(n+1))`
-/

namespace A031732.P1272668058349923701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158397 (n + 1) * A257735 (A257736 (n + 1)).toNat

end

end A031732.P1272668058349923701

/-! ## A031732.P6299185002681802465

`A158396(n+1)-A253551(A253552(n+1))`
-/

namespace A031732.P6299185002681802465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158396 (n + 1) - A253551 (A253552 (n + 1)).toNat

end

end A031732.P6299185002681802465

/-! ## A031732.P4891119609983917471

`A158397(n+1)*A253551(A253552(n+1))`
-/

namespace A031732.P4891119609983917471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158397 (n + 1) * A253551 (A253552 (n + 1)).toNat

end

end A031732.P4891119609983917471

/-!
# A031733: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 55.

The programs for A031733, there is no canonical definition to state claims against.
-/

/-! ## A031733.P3320425118496591620

`A031744(n+1)+A158326((2*(n+1))²)+n`
-/

namespace A031733.P3320425118496591620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031744 (n + 1) + (A158326 ((2 * (n + 1)) ^ 2) + (n : ℤ))

end

end A031733.P3320425118496591620

/-! ## A031733.P992797210761106634

`A031766(n+1)+A000027(A031744(n+1))`
-/

namespace A031733.P992797210761106634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031766 (n + 1) + A000027 (A031744 (n + 1)).toNat

end

end A031733.P992797210761106634

/-! ## A031733.P15963263124115478912

`∑[A017413(55*A017329(n))]`
-/

namespace A031733.P15963263124115478912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 (55 * A017329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031733.P15963263124115478912

/-! ## A031733.P1252229379414570513

`A031766(n+1)+A031744(A187829(n+1))`
-/

namespace A031733.P1252229379414570513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031766 (n + 1) + A031744 (A187829 (n + 1)).toNat

end

end A031733.P1252229379414570513

/-!
# A031734: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 56.

The programs for A031734, there is no canonical definition to state claims against.
-/

/-! ## A031734.P11930738154973921196

`∑[A064547(A140001(2*(n+2)))+Δ[(28*n)²]]`
-/

namespace A031734.P11930738154973921196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (28 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A140001 (2 * (n + 2))).toNat + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031734.P11930738154973921196

/-! ## A031734.P49420893867189921

`∑[A064547(A139992(2*n+3))+Δ[(28*n)²]]`
-/

namespace A031734.P49420893867189921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (28 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A139992 (2 * n + 3)).toNat + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031734.P49420893867189921

/-! ## A031734.P12940136132202643496

`∑[A064547(A140023(2*n+1))+Δ[(28*n)²]]`
-/

namespace A031734.P12940136132202643496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (28 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A140023 (2 * n + 1)).toNat + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031734.P12940136132202643496

/-! ## A031734.P3361380537670810699

`∑[A064547(A139984(2*n+3))+Δ[(28*n)²]]`
-/

namespace A031734.P3361380537670810699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (28 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A139984 (2 * n + 3)).toNat + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031734.P3361380537670810699

/-! ## A031734.P4084829730406038630

`(n+1)*A016813(A008596(A008596(n+1)))`
-/

namespace A031734.P4084829730406038630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016813 (A008596 (A008596 (n + 1)).toNat).toNat

end

end A031734.P4084829730406038630

/-! ## A031734.P14335467141486354005

`A158223((2*(n+1))²)+n`
-/

namespace A031734.P14335467141486354005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158223 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031734.P14335467141486354005

/-! ## A031734.P7801903072472813878

`A158225((2*(n+1))²)+2+n`
-/

namespace A031734.P7801903072472813878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158225 ((2 * (n + 1)) ^ 2) + 2 + (n : ℤ)

end

end A031734.P7801903072472813878

/-!
# A031736: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 58.

The programs for A031736, there is no canonical definition to state claims against.
-/

/-! ## A031736.P15615815879107558300

`record[A158403(A112382(n))]-(n+1)`
-/

namespace A031736.P15615815879107558300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158403 (A112382 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A031736.P15615815879107558300

/-! ## A031736.P3679908365115371920

`record[A158403(A112382(abs(1-n)))-1]-n`
-/

namespace A031736.P3679908365115371920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158403 (A112382 |1 - (n : ℤ)|.toNat).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A031736.P3679908365115371920

/-! ## A031736.P3908962135100024649

`record[A158403(A112382(floor(n/3)))]-n-1`
-/

namespace A031736.P3908962135100024649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158403 (A112382 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ) - 1

end

end A031736.P3908962135100024649

/-! ## A031736.P3047696786595348774

`record[A158403(A112382(n))-A112382(n)]`
-/

namespace A031736.P3047696786595348774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158403 (A112382 n).toNat - A112382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031736.P3047696786595348774

/-! ## A031736.P6206057363036826556

`A001478(n+1)+record[A158403(A112382(n))]`
-/

namespace A031736.P6206057363036826556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158403 (A112382 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031736.P6206057363036826556

/-! ## A031736.P8406218562933914656

`A158403(n+1)-A110654(A105356(n+1))`
-/

namespace A031736.P8406218562933914656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158403 (n + 1) - A110654 (A105356 (n + 1)).toNat

end

end A031736.P8406218562933914656

/-! ## A031736.P7508148921886980591

`A158403(n+1)-(n+1)%A161850(n+1)`
-/

namespace A031736.P7508148921886980591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158403 (n + 1) - Int.tmod (n + 1 : ℤ) (A161850 (n + 1))

end

end A031736.P7508148921886980591

/-! ## A031736.P16300304590123934196

`A158403(n+1)-(A305079(A318718(n+1))+n)`
-/

namespace A031736.P16300304590123934196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158403 (n + 1) - (A305079 (A318718 (n + 1)).toNat + (n : ℤ))

end

end A031736.P16300304590123934196

/-!
# A031737: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 59.

The programs for A031737, there is no canonical definition to state claims against.
-/

/-! ## A031737.P7322766513031314894

`record[A000005(A335431(n+1))]+(59*(n+1))²`
-/

namespace A031737.P7322766513031314894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A335431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((59 * (n + 1)) ^ 2 : ℤ)

end

end A031737.P7322766513031314894

/-! ## A031737.P8822868988351576477

`A001222(4^(n+1))+(59*(n+1))²`
-/

namespace A031737.P8822868988351576477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 ^ (n + 1)) + ((59 * (n + 1)) ^ 2 : ℤ)

end

end A031737.P8822868988351576477

/-!
# A031738: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 60.

The programs for A031738, there is no canonical definition to state claims against.
-/

/-! ## A031738.P6339633754579312019

`∑[Δ[(30*n)²]+2-A151728(n)%2]`
-/

namespace A031738.P6339633754579312019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (30 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2 - Int.tmod (A151728 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031738.P6339633754579312019

/-! ## A031738.P322140578654841298

`A158406(n+1)-A105354(A105353(n+1))`
-/

namespace A031738.P322140578654841298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158406 (n + 1) - A105354 (A105353 (n + 1)).toNat

end

end A031738.P322140578654841298

/-! ## A031738.P115535208640377891

`A158406(n+1)-A105358(A105357(n+1))`
-/

namespace A031738.P115535208640377891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158406 (n + 1) - A105358 (A105357 (n + 1)).toNat

end

end A031738.P115535208640377891

/-! ## A031738.P4912737751555730698

`A158406(n+1)-A227324(A227324(n+1))`
-/

namespace A031738.P4912737751555730698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158406 (n + 1) - A227324 (A227324 (n + 1)).toNat

end

end A031738.P4912737751555730698

/-! ## A031738.P18376478110428615936

`A105354(A105353(n+1))*A158407(n+1)`
-/

namespace A031738.P18376478110428615936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105354 (A105353 (n + 1)).toNat * A158407 (n + 1)

end

end A031738.P18376478110428615936

/-! ## A031738.P16389300503836597682

`A158229((2*(n+1))²)+n`
-/

namespace A031738.P16389300503836597682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158229 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031738.P16389300503836597682

/-! ## A031738.P6945268497414216862

`A158227((2*(n+1))²)+n+2`
-/

namespace A031738.P6945268497414216862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158227 ((2 * (n + 1)) ^ 2) + (n + 2 : ℤ)

end

end A031738.P6945268497414216862

/-!
# A031739: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 61.

The programs for A031739, there is no canonical definition to state claims against.
-/

/-! ## A031739.P15340229393317138310

`A000005(A007283(n))+(61*(n+1))²`
-/

namespace A031739.P15340229393317138310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007283 n).toNat + ((61 * (n + 1)) ^ 2 : ℤ)

end

end A031739.P15340229393317138310

/-!
# A031740: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 62.

The programs for A031740, there is no canonical definition to state claims against.
-/

/-! ## A031740.P2778748104747648587

`A158413(n+1)-A122348(A122347(n+1))`
-/

namespace A031740.P2778748104747648587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158413 (n + 1) - A122348 (A122347 (n + 1)).toNat

end

end A031740.P2778748104747648587

/-! ## A031740.P2892778647199753929

`A158413(n+1)-A125980(A125980(n+1))`
-/

namespace A031740.P2892778647199753929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158413 (n + 1) - A125980 (A125980 (n + 1)).toNat

end

end A031740.P2892778647199753929

/-! ## A031740.P9194401274171146093

`A158413(n+1)-A271647(A271647(n+1))`
-/

namespace A031740.P9194401274171146093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158413 (n + 1) - A271647 (A271647 (n + 1)).toNat

end

end A031740.P9194401274171146093

/-! ## A031740.P8573162187642893840

`A122348(A122347(n+1))*A158414(n+1)`
-/

namespace A031740.P8573162187642893840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122348 (A122347 (n + 1)).toNat * A158414 (n + 1)

end

end A031740.P8573162187642893840

/-! ## A031740.P5809055085359726137

`A158414(n+1)*A271647(A271647(n+1))`
-/

namespace A031740.P5809055085359726137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158414 (n + 1) * A271647 (A271647 (n + 1)).toNat

end

end A031740.P5809055085359726137

/-! ## A031740.P4801276640161943265

`A158413(n+1)-(n+1)%A017449(A093110(n+1))`
-/

namespace A031740.P4801276640161943265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158413 (n + 1) - Int.tmod (n + 1 : ℤ) (A017449 (A093110 (n + 1)).toNat)

end

end A031740.P4801276640161943265

/-! ## A031740.P3860349603275364963

`(A158413(n+1)-(n+1))%A158413(A211777(n+1)+1)`
-/

namespace A031740.P3860349603275364963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158413 (n + 1) - (n + 1 : ℤ)) (A158413 (A211777 (n + 1) + 1).toNat)

end

end A031740.P3860349603275364963

/-!
# A031742: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 64.

The programs for A031742, there is no canonical definition to state claims against.
-/

/-! ## A031742.P1366913576110417013

`A290103(A330225(n+1))+A047393(A017077(n+1))²`
-/

namespace A031742.P1366913576110417013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A330225 (n + 1)).toNat + A047393 (A017077 (n + 1)).toNat ^ 2

end

end A031742.P1366913576110417013

/-! ## A031742.P13208712777917526885

`A194104(A194105(n+1))+(32*(n+1))²`
-/

namespace A031742.P13208712777917526885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194104 (A194105 (n + 1)).toNat + ((32 * (n + 1)) ^ 2 : ℤ)

end

end A031742.P13208712777917526885

/-! ## A031742.P6839580647755952634

`∑[Δ[(32*n)²]+A014963(A074902(n+1))]`
-/

namespace A031742.P6839580647755952634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (32 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + A014963 (A074902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031742.P6839580647755952634

/-! ## A031742.P9980635238359667831

`A047393(A017077(n+1))²+A001221(A181526(n+1))+n`
-/

namespace A031742.P9980635238359667831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A017077 (n + 1)).toNat ^ 2 + (A001221 (A181526 (n + 1)).toNat + (n : ℤ))

end

end A031742.P9980635238359667831

/-! ## A031742.P1911801082301211604

`A047393(A017077(n+1))²+n%A332287(n+1)+1`
-/

namespace A031742.P1911801082301211604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A017077 (n + 1)).toNat ^ 2 + (Int.tmod (n : ℤ) (A332287 (n + 1)) + 1)

end

end A031742.P1911801082301211604

/-! ## A031742.P14540106582833513848

`A047393(A017077(n+1))²+A001222(A186782(n+1))+n`
-/

namespace A031742.P14540106582833513848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A017077 (n + 1)).toNat ^ 2 + (A001222 (A186782 (n + 1)).toNat + (n : ℤ))

end

end A031742.P14540106582833513848

/-! ## A031742.P12827823542592917388

`A158231((2*(n+1))²)+n`
-/

namespace A031742.P12827823542592917388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031742.P12827823542592917388

/-!
# A031743: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 65.

The programs for A031743, there is no canonical definition to state claims against.
-/

/-! ## A031743.P9625595989354291865

`A000027(A031728(n+1))+∑[Δ[(60*n)²]+1]`
-/

namespace A031743.P9625595989354291865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (60 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A031728 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031743.P9625595989354291865

/-! ## A031743.P9308437010393714344

`A157861(n+1)+A000027(A031728(n+1))`
-/

namespace A031743.P9308437010393714344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157861 (n + 1) + A000027 (A031728 (n + 1)).toNat

end

end A031743.P9308437010393714344

/-!
# A031744: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 66.

The programs for A031744, there is no canonical definition to state claims against.
-/

/-! ## A031744.P16542578284029359172

`A235201(A235201(33*(n+1)))²+n+1`
-/

namespace A031744.P16542578284029359172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235201 (33 * (n + 1))).toNat ^ 2 + (n + 1 : ℤ)

end

end A031744.P16542578284029359172

/-! ## A031744.P5395411404159127500

`A239086(A239086(n+1))+A017390(3*n+3)`
-/

namespace A031744.P5395411404159127500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A239086 (n + 1)).toNat + A017390 (3 * n + 3)

end

end A031744.P5395411404159127500

/-! ## A031744.P3888650348472962510

`A017390(A008486(n+1))+(n+1)%A102829(n+1)`
-/

namespace A031744.P3888650348472962510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017390 (A008486 (n + 1)).toNat + Int.tmod (n + 1 : ℤ) (A102829 (n + 1))

end

end A031744.P3888650348472962510

/-! ## A031744.P11896661407139646635

`A031733(n+1)-(A158326((2*(n+1))²)+n)`
-/

namespace A031744.P11896661407139646635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031733 (n + 1) - (A158326 ((2 * (n + 1)) ^ 2) + (n : ℤ))

end

end A031744.P11896661407139646635

/-!
# A031745: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 67.

The programs for A031745, there is no canonical definition to state claims against.
-/

/-! ## A031745.P16799400164839951795

`record[A103889(A162190(n))]+(67*(n+1))²`
-/

namespace A031745.P16799400164839951795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A162190 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((67 * (n + 1)) ^ 2 : ℤ)

end

end A031745.P16799400164839951795

/-!
# A031746: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 68.

The programs for A031746, there is no canonical definition to state claims against.
-/

/-! ## A031746.P16890256667162243039

`A347401(A347401(n+1))+(34*(n+1))²`
-/

namespace A031746.P16890256667162243039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347401 (A347401 (n + 1)).toNat + ((34 * (n + 1)) ^ 2 : ℤ)

end

end A031746.P16890256667162243039

/-! ## A031746.P854518110261367465

`(34*A127286(A127285(n+1)))²+n+1`
-/

namespace A031746.P854518110261367465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (34 * A127286 (A127285 (n + 1)).toNat) ^ 2 + (n + 1 : ℤ)

end

end A031746.P854518110261367465

/-! ## A031746.P2776526478460223297

`A158255((2*(n+1))²)+n`
-/

namespace A031746.P2776526478460223297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158255 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031746.P2776526478460223297

/-! ## A031746.P9129979185854446178

`A000027(∑[Δ[A158731(n)]+1])`
-/

namespace A031746.P9129979185854446178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A031746.P9129979185854446178

/-!
# A031747: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 69.

The programs for A031747, there is no canonical definition to state claims against.
-/

/-! ## A031747.P9050974880029550464

`A031724(3*n+3)-A032548(A017007(n))`
-/

namespace A031747.P9050974880029550464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031724 (3 * n + 3) - A032548 (A017007 n).toNat

end

end A031747.P9050974880029550464

/-!
# A031748: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 70.

The programs for A031748, there is no canonical definition to state claims against.
-/

/-! ## A031748.P15028698350829106052

`(35*(n+1))²+A054977(2*A350634(n+1))+n`
-/

namespace A031748.P15028698350829106052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((35 * (n + 1)) ^ 2 : ℤ) + (A054977 (2 * A350634 (n + 1)).toNat + (n : ℤ))

end

end A031748.P15028698350829106052

/-! ## A031748.P8781607199563466881

`A123882(A123883(n+1))+A000290(35*(n+1))`
-/

namespace A031748.P8781607199563466881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (A123883 (n + 1)).toNat + A000290 (35 * (n + 1))

end

end A031748.P8781607199563466881

/-! ## A031748.P12617186200164533670

`(35*(n+1))²+(n+1)%A048212(A001844(n))`
-/

namespace A031748.P12617186200164533670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((35 * (n + 1)) ^ 2 : ℤ) + Int.tmod (n + 1 : ℤ) (A048212 (A001844 n).toNat)

end

end A031748.P12617186200164533670

/-! ## A031748.P8843146218680654981

`A122280(A122281(n+1))+A000290(35*(n+1))`
-/

namespace A031748.P8843146218680654981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122280 (A122281 (n + 1)).toNat + A000290 (35 * (n + 1))

end

end A031748.P8843146218680654981

/-! ## A031748.P5404758032978198099

`record[35*A278603(n+1)]²+n+1`
-/

namespace A031748.P5404758032978198099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A278603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 + (n + 1 : ℤ)

end

end A031748.P5404758032978198099

/-! ## A031748.P10638006058942278048

`(35*A303776(A303775(n+1)))²+n+1`
-/

namespace A031748.P10638006058942278048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * A303776 (A303775 (n + 1)).toNat) ^ 2 + (n + 1 : ℤ)

end

end A031748.P10638006058942278048

/-!
# A031749: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 71.

The programs for A031749, there is no canonical definition to state claims against.
-/

/-! ## A031749.P5256055469482034026

`A166931(2*(n+1)²)+(n+2)²`
-/

namespace A031749.P5256055469482034026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (2 * (n + 1) ^ 2) + ((n + 2) ^ 2 : ℤ)

end

end A031749.P5256055469482034026

/-!
# A031750: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 72.

The programs for A031750, there is no canonical definition to state claims against.
-/

/-! ## A031750.P702752786000888824

`∑[A161705(Δ[72*n²])]`
-/

namespace A031750.P702752786000888824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031750.P702752786000888824

/-! ## A031750.P6399262333939703746

`(n+1)*A017173(12*12*(n+1))`
-/

namespace A031750.P6399262333939703746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017173 (12 * (12 * (n + 1)))

end

end A031750.P6399262333939703746

/-! ## A031750.P7964103181340134985

`A000027(A017522(3*(n+1))+n+1)`
-/

namespace A031750.P7964103181340134985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A017522 (3 * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A031750.P7964103181340134985

/-! ## A031750.P830424259655162665

`A044102(A044102((n+1)²))+n+1`
-/

namespace A031750.P830424259655162665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A044102 ((n + 1) ^ 2)).toNat + (n + 1 : ℤ)

end

end A031750.P830424259655162665

/-!
# A031752: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 74.

The programs for A031752, there is no canonical definition to state claims against.
-/

/-! ## A031752.P16749533496754943256

`A162344(A162344(n+1))+(37*(n+1))²`
-/

namespace A031752.P16749533496754943256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A162344 (n + 1)).toNat + ((37 * (n + 1)) ^ 2 : ℤ)

end

end A031752.P16749533496754943256

/-! ## A031752.P8310462354464428546

`A003989(A001844(n))+(37*(n+1))²`
-/

namespace A031752.P8310462354464428546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A001844 n).toNat + ((37 * (n + 1)) ^ 2 : ℤ)

end

end A031752.P8310462354464428546

/-! ## A031752.P16111171780002622263

`A143053(A143054(n+1))+(37*(n+1))²`
-/

namespace A031752.P16111171780002622263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143053 (A143054 (n + 1)).toNat + ((37 * (n + 1)) ^ 2 : ℤ)

end

end A031752.P16111171780002622263

/-! ## A031752.P13981678401900748247

`(37*(n+1))²+A000188(A139656(n+1))+n`
-/

namespace A031752.P13981678401900748247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((37 * (n + 1)) ^ 2 : ℤ) + (A000188 (A139656 (n + 1)).toNat + (n : ℤ))

end

end A031752.P13981678401900748247

/-! ## A031752.P9866296477712417909

`A061395(A036689(n+1))+(37*(n+1))²`
-/

namespace A031752.P9866296477712417909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A036689 (n + 1)).toNat + ((37 * (n + 1)) ^ 2 : ℤ)

end

end A031752.P9866296477712417909

/-!
# A031753: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 75.

The programs for A031753, there is no canonical definition to state claims against.
-/

/-! ## A031753.P3614105553007530139

`A008607(A156813(n+1))+A008591(3*(n+1))`
-/

namespace A031753.P3614105553007530139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (A156813 (n + 1)).toNat + A008591 (3 * (n + 1))

end

end A031753.P3614105553007530139

/-!
# A031754: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 76.

The programs for A031754, there is no canonical definition to state claims against.
-/

/-! ## A031754.P8866405429920036183

`A000290(38*(n+1))+A057427(A216645(n+1))+n`
-/

namespace A031754.P8866405429920036183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (38 * (n + 1)) + (A057427 (A216645 (n + 1)).toNat + (n : ℤ))

end

end A031754.P8866405429920036183

/-! ## A031754.P14788552463069221276

`A002260(A001844(n))+(38*(n+1))²`
-/

namespace A031754.P14788552463069221276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A001844 n).toNat + ((38 * (n + 1)) ^ 2 : ℤ)

end

end A031754.P14788552463069221276

/-! ## A031754.P10012822875429648400

`C(A215461(n), n)!+(38*(n+1))²+n`
-/

namespace A031754.P10012822875429648400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose (A215461 n).toNat n) + (38 * (n + 1)) ^ 2 + n

end

end A031754.P10012822875429648400

/-! ## A031754.P10444379383920934442

`(38*(n+1))²+A000034(A090288(n))+n`
-/

namespace A031754.P10444379383920934442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((38 * (n + 1)) ^ 2 : ℤ) + (A000034 (A090288 n).toNat + (n : ℤ))

end

end A031754.P10444379383920934442

/-! ## A031754.P10246136194144585689

`(n+1)*A000265(38*38*(n+1)+1)`
-/

namespace A031754.P10246136194144585689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000265 (38 * (38 * (n + 1)) + 1)

end

end A031754.P10246136194144585689

/-! ## A031754.P11690102019221823530

`A158310((2*(n+1))²)+n`
-/

namespace A031754.P11690102019221823530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158310 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031754.P11690102019221823530

/-!
# A031756: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 78.

The programs for A031756, there is no canonical definition to state claims against.
-/

/-! ## A031756.P16373936712878072796

`A002260(A001844(n))+(39*(n+1))²`
-/

namespace A031756.P16373936712878072796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A001844 n).toNat + ((39 * (n + 1)) ^ 2 : ℤ)

end

end A031756.P16373936712878072796

/-! ## A031756.P4659139088820389185

`(39*A122282(A122282(n+1)))²+n+1`
-/

namespace A031756.P4659139088820389185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * A122282 (A122282 (n + 1)).toNat) ^ 2 + (n + 1 : ℤ)

end

end A031756.P4659139088820389185

/-! ## A031756.P15078256263712822338

`A052938(A005843(n))+(39*A122282(A122282(n+1)))^2`
-/

namespace A031756.P15078256263712822338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A005843 n).toNat + (39 * A122282 (A122282 (n + 1)).toNat) ^ 2

end

end A031756.P15078256263712822338

/-! ## A031756.P5128165720241039616

`A120913(A120913(n+1))+(39*(n+1))²`
-/

namespace A031756.P5128165720241039616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120913 (A120913 (n + 1)).toNat + ((39 * (n + 1)) ^ 2 : ℤ)

end

end A031756.P5128165720241039616

/-! ## A031756.P13830555002641478656

`A061395(A001248(n+1))+(39*(n+1))²`
-/

namespace A031756.P13830555002641478656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A001248 (n + 1)).toNat + ((39 * (n + 1)) ^ 2 : ℤ)

end

end A031756.P13830555002641478656

/-!
# A031758: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 80.

The programs for A031758, there is no canonical definition to state claims against.
-/

/-! ## A031758.P3389661148448475929

`∑[A158060(Δ[A158686(n)])]`
-/

namespace A031758.P3389661148448475929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158686 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031758.P3389661148448475929

/-! ## A031758.P3549883891972275469

`∑[A158060(Δ[A008590(n)²])]`
-/

namespace A031758.P3549883891972275469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031758.P3549883891972275469

/-! ## A031758.P219643629830983557

`∑[A158060(A022144(A022144(2*n+1)))]`
-/

namespace A031758.P219643629830983557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (A022144 (A022144 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031758.P219643629830983557

/-! ## A031758.P16943403350483445551

`A122282(A122282(n+1))+(40*(n+1))²`
-/

namespace A031758.P16943403350483445551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A122282 (n + 1)).toNat + ((40 * (n + 1)) ^ 2 : ℤ)

end

end A031758.P16943403350483445551

/-! ## A031758.P18410181579508585322

`∑[A215145(Δ[A158776(n)])]`
-/

namespace A031758.P18410181579508585322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031758.P18410181579508585322

/-! ## A031758.P6158312393452250898

`A137734(∑[A282939(n)])+A017270(4*(n+1))`
-/

namespace A031758.P6158312393452250898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A017270 (4 * (n + 1))

end

end A031758.P6158312393452250898

/-!
# A031759: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 81.

The programs for A031759, there is no canonical definition to state claims against.
-/

/-! ## A031759.P14223402648736763064

`A158397(A008486(n+1)²)+Δ[n²]`
-/

namespace A031759.P14223402648736763064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158397 (A008486 (n + 1) ^ 2).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A031759.P14223402648736763064

/-! ## A031759.P10339037846096769915

`(1-A000007(n))!*A158397(A008486(n+1)²)+2*n+1`
-/

namespace A031759.P10339037846096769915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A000007 n).toNat : ℤ) * A158397 (A008486 (n + 1) ^ 2).toNat + (2 * n + 1 : ℤ)

end

end A031759.P10339037846096769915

/-! ## A031759.P4588866478075449652

`n+1+A158397(A008486(n+1)²)+A082360(A082359(n))`
-/

namespace A031759.P4588866478075449652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A158397 (A008486 (n + 1) ^ 2).toNat + A082360 (A082359 n).toNat)

end

end A031759.P4588866478075449652

/-!
# A031760: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 82.

The programs for A031760, there is no canonical definition to state claims against.
-/

/-! ## A031760.P15977897430926853772

`(41*(n+1))²+A082647(A139969(n+1))+n`
-/

namespace A031760.P15977897430926853772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((41 * (n + 1)) ^ 2 : ℤ) + (A082647 (A139969 (n + 1)).toNat + (n : ℤ))

end

end A031760.P15977897430926853772

/-! ## A031760.P13666644238554504518

`A123882(A123883(n+1))+(41*(n+1))²`
-/

namespace A031760.P13666644238554504518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (A123883 (n + 1)).toNat + ((41 * (n + 1)) ^ 2 : ℤ)

end

end A031760.P13666644238554504518

/-! ## A031760.P2844666978553386628

`A235201(A235201(41*(n+1)))²+n+1`
-/

namespace A031760.P2844666978553386628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A235201 (41 * (n + 1))).toNat ^ 2 + (n + 1 : ℤ)

end

end A031760.P2844666978553386628

/-! ## A031760.P2767841681305503463

`A239086(A239086(n+1))+(41*(n+1))²`
-/

namespace A031760.P2767841681305503463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A239086 (n + 1)).toNat + ((41 * (n + 1)) ^ 2 : ℤ)

end

end A031760.P2767841681305503463

/-! ## A031760.P1178350530898476364

`(41*A112592(∑[n+1]+1))²+n+1`
-/

namespace A031760.P1178350530898476364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * A112592 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) ^ 2 + (n + 1 : ℤ)

end

end A031760.P1178350530898476364

/-!
# A031761: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 83.

The programs for A031761, there is no canonical definition to state claims against.
-/

/-! ## A031761.P9389957630302000452

`A000027((A044634(n+1)+2*n)²+n+1)+n+1`
-/

namespace A031761.P9389957630302000452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((A044634 (n + 1) + (2 * n : ℤ)) ^ 2 + (n + 1 : ℤ)).toNat + (n + 1 : ℤ)

end

end A031761.P9389957630302000452

/-!
# A031762: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 84.

The programs for A031762, there is no canonical definition to state claims against.
-/

/-! ## A031762.P14238155076816500261

`A003056(∑[A085736(n+1)])+(42*(n+1))²`
-/

namespace A031762.P14238155076816500261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((42 * (n + 1)) ^ 2 : ℤ)

end

end A031762.P14238155076816500261

/-! ## A031762.P2525032646825721383

`A338478(A338478(42*(n+1)))²+n+1`
-/

namespace A031762.P2525032646825721383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338478 (A338478 (42 * (n + 1))).toNat ^ 2 + (n + 1 : ℤ)

end

end A031762.P2525032646825721383

/-! ## A031762.P13838008186974924295

`A158319((2*(n+1))²)+n+2`
-/

namespace A031762.P13838008186974924295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158319 ((2 * (n + 1)) ^ 2) + (n + 2 : ℤ)

end

end A031762.P13838008186974924295

/-!
# A031764: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 86.

The programs for A031764, there is no canonical definition to state claims against.
-/

/-! ## A031764.P9745397318781142668

`A002260(A001844(n))+(43*(n+1))²`
-/

namespace A031764.P9745397318781142668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A001844 n).toNat + ((43 * (n + 1)) ^ 2 : ℤ)

end

end A031764.P9745397318781142668

/-! ## A031764.P16970354229909304218

`A227324(A227324(n+1))+(43*(n+1))²`
-/

namespace A031764.P16970354229909304218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227324 (A227324 (n + 1)).toNat + ((43 * (n + 1)) ^ 2 : ℤ)

end

end A031764.P16970354229909304218

/-! ## A031764.P5449936848065866203

`A031721(n+1)-A212536(A000124(n))`
-/

namespace A031764.P5449936848065866203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031721 (n + 1) - A212536 (A000124 n).toNat

end

end A031764.P5449936848065866203

/-! ## A031764.P17601183989974142135

`A031721(n+1)-A122111(A122111(n+1))`
-/

namespace A031764.P17601183989974142135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031721 (n + 1) - A122111 (A122111 (n + 1)).toNat

end

end A031764.P17601183989974142135

/-! ## A031764.P6462562409070379913

`A000027(A031721(n+1)-(n+1))`
-/

namespace A031764.P6462562409070379913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A031721 (n + 1) - (n + 1 : ℤ)).toNat

end

end A031764.P6462562409070379913

/-!
# A031765: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 87.

The programs for A031765, there is no canonical definition to state claims against.
-/

/-! ## A031765.P8350881838904837366

`A000027(A031736(3*(n+1))-(n+1))`
-/

namespace A031765.P8350881838904837366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A031736 (3 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A031765.P8350881838904837366

/-! ## A031765.P9065593020943078507

`∑[9*A022998(Δ[(29*n)²])+2]`
-/

namespace A031765.P9065593020943078507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (29 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A022998 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031765.P9065593020943078507

/-!
# A031766: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 88.

The programs for A031766, there is no canonical definition to state claims against.
-/

/-! ## A031766.P13960156502272025847

`A158326((2*(n+1))²)+n`
-/

namespace A031766.P13960156502272025847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158326 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031766.P13960156502272025847

/-! ## A031766.P4715998993431031675

`xor(1, A158326((Δ[n²]+1)²))+1+n`
-/

namespace A031766.P4715998993431031675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A158326 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2).toNat) + 1 + (n : ℤ)

end

end A031766.P4715998993431031675

/-! ## A031766.P1348381659988187599

`A158325(2*(n+1))-A002260(A000217(3*(n+1)))`
-/

namespace A031766.P1348381659988187599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158325 (2 * (n + 1)) - A002260 (A000217 (3 * (n + 1))).toNat

end

end A031766.P1348381659988187599

/-!
# A031770: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 92.

The programs for A031770, there is no canonical definition to state claims against.
-/

/-! ## A031770.P2015562311196425338

`A158368((2*(n+1))²)+n`
-/

namespace A031770.P2015562311196425338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158368 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031770.P2015562311196425338

/-! ## A031770.P714050404732167531

`4*A008605(A008605((n+1)²))+n+1`
-/

namespace A031770.P714050404732167531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008605 (A008605 ((n + 1) ^ 2)).toNat + (n + 1 : ℤ)

end

end A031770.P714050404732167531

/-! ## A031770.P3203471829334314282

`(n+1)*A016813(A008605(A008605(n+1)))`
-/

namespace A031770.P3203471829334314282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016813 (A008605 (A008605 (n + 1)).toNat).toNat

end

end A031770.P3203471829334314282

/-! ## A031770.P4407408703563820755

`∑[A016813(Δ[A158631(n)])]`
-/

namespace A031770.P4407408703563820755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031770.P4407408703563820755

/-!
# A031772: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 94.

The programs for A031772, there is no canonical definition to state claims against.
-/

/-! ## A031772.P3011128824057727333

`A057427(A061037(n+6))+Δ[A129428(n)]²+n`
-/

namespace A031772.P3011128824057727333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A061037 (n + 6)).toNat + ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ))

end

end A031772.P3011128824057727333

/-! ## A031772.P3512471999960203780

`A057427(A212359(n+1))+Δ[A129428(n)]²+n`
-/

namespace A031772.P3512471999960203780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A212359 (n + 1)).toNat + ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ))

end

end A031772.P3512471999960203780

/-! ## A031772.P18158972895301193667

`A057427(A079216(n))+Δ[A129428(n)]²+n`
-/

namespace A031772.P18158972895301193667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A079216 n).toNat + ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ))

end

end A031772.P18158972895301193667

/-! ## A031772.P18405607793062255768

`A057427(A073726(n+1))+Δ[A129428(n)]²+n`
-/

namespace A031772.P18405607793062255768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A073726 (n + 1)).toNat + ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ))

end

end A031772.P18405607793062255768

/-! ## A031772.P1631479340129524775

`A057427(A272451(n))+Δ[A129428(n)]²+n`
-/

namespace A031772.P1631479340129524775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A272451 n).toNat + ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ))

end

end A031772.P1631479340129524775

/-! ## A031772.P5202031335211372725

`A057427(A153158(n+1))+Δ[A129428(n)]²+n`
-/

namespace A031772.P5202031335211372725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A153158 (n + 1)).toNat + ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ))

end

end A031772.P5202031335211372725

/-! ## A031772.P2696403009809877514

`A057427(A274533(n+1))+Δ[A129428(n)]²+n`
-/

namespace A031772.P2696403009809877514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A274533 (n + 1)).toNat + ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ))

end

end A031772.P2696403009809877514

/-! ## A031772.P3089324526672816334

`A057427(A318454(3*n+1))+Δ[A129428(n)]²+n`
-/

namespace A031772.P3089324526672816334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A318454 (3 * n + 1)).toNat + ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ))

end

end A031772.P3089324526672816334

/-!
# A031774: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 96.

The programs for A031774, there is no canonical definition to state claims against.
-/

/-! ## A031774.P2898807714727564341

`A234840(A234840(n+1))+A002620(96*(n+1))`
-/

namespace A031774.P2898807714727564341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 (A234840 (n + 1)).toNat + A002620 (96 * (n + 1))

end

end A031774.P2898807714727564341

/-! ## A031774.P11955895794476747005

`A002260(Δ[A005900(n)])+(8*A008458(n+1))²`
-/

namespace A031774.P11955895794476747005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (n + 1) - f1 n).toNat + (8 * A008458 (n + 1)) ^ 2

end

end A031774.P11955895794476747005

/-! ## A031774.P8738890965618421009

`A008130(Δ[4*A164016(n)])+1+n`
-/

namespace A031774.P8738890965618421009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A164016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (f1 (n + 1) - f1 n).toNat + 1 + (n : ℤ)

end

end A031774.P8738890965618421009

/-! ## A031774.P4814800095625087952

`A002264(A008598(8*(n+1)+n+1))²+n+1`
-/

namespace A031774.P4814800095625087952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008598 (8 * (n + 1) + (n + 1))).toNat ^ 2 + (n + 1 : ℤ)

end

end A031774.P4814800095625087952

/-! ## A031774.P5847561438999939484

`A158370((2*(n+1))²)+n`
-/

namespace A031774.P5847561438999939484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158370 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031774.P5847561438999939484

/-!
# A031775: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 97.

The programs for A031775, there is no canonical definition to state claims against.
-/

/-! ## A031775.P3820793932291395406

`A000005(5*A000079(n))+(97*(n+1))²`
-/

namespace A031775.P3820793932291395406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * A000079 n).toNat + ((97 * (n + 1)) ^ 2 : ℤ)

end

end A031775.P3820793932291395406

/-!
# A031776: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 98.

The programs for A031776, the canonical program `A031776.P17682919768694238535` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031776 has offset 1).

The definition of A031776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031776.P15452099603353319558

`(49*A038690((n+1)²))²+n+1`
-/

namespace A031776.P15452099603353319558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * A038690 ((n + 1) ^ 2)) ^ 2 + (n + 1 : ℤ)

end

end A031776.P15452099603353319558

namespace A031776

/-- `(49*A038690((n+1)²))²+n+1` -/
def P15452099603353319558.Spec : Prop :=
  ∀ n, P15452099603353319558.a n = A031776 (n + 1)

end A031776

/-! ## A031776.P17682919768694238535

`A000188(∑[A005408(n)])+(49*(n+1))²`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031776

/-- `A000188(∑[A005408(n)])+(49*(n+1))²` -/
def P17682919768694238535.Spec : Prop :=
  ∀ n, P17682919768694238535.a n = A031776 (n + 1)

theorem P17682919768694238535.correct : P17682919768694238535.Spec := by
  intro n
  simp only [A031776, Nat.add_sub_cancel]

end A031776

/-! ## A031776.P10980982801100036167

`A033676(∑[A005408(n)])+(49*(n+1))²`
-/

namespace A031776.P10980982801100036167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((49 * (n + 1)) ^ 2 : ℤ)

end

end A031776.P10980982801100036167

namespace A031776

/-- `A033676(∑[A005408(n)])+(49*(n+1))²` -/
def P10980982801100036167.Spec : Prop :=
  ∀ n, P10980982801100036167.a n = A031776 (n + 1)

end A031776

/-! ## A031776.P8077847985271189127

`A057918((n+2)²)+(7*7*(n+1))²`
-/

namespace A031776.P8077847985271189127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 ((n + 2) ^ 2) + ((7 * (7 * (n + 1))) ^ 2 : ℤ)

end

end A031776.P8077847985271189127

namespace A031776

/-- `A057918((n+2)²)+(7*7*(n+1))²` -/
def P8077847985271189127.Spec : Prop :=
  ∀ n, P8077847985271189127.a n = A031776 (n + 1)

end A031776

/-! ## A031776.P7142529451403061867

`(49*A118759(A118759(n+1)))²+n+1`
-/

namespace A031776.P7142529451403061867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * A118759 (A118759 (n + 1)).toNat) ^ 2 + (n + 1 : ℤ)

end

end A031776.P7142529451403061867

namespace A031776

/-- `(49*A118759(A118759(n+1)))²+n+1` -/
def P7142529451403061867.Spec : Prop :=
  ∀ n, P7142529451403061867.a n = A031776 (n + 1)

end A031776

/-! ## A031776.P10650790635542506986

`∑[A040425(A272809(n))^4*A005408(n)+1]`
-/

namespace A031776.P10650790635542506986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040425 (A272809 n).toNat ^ 4 * A005408 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031776.P10650790635542506986

namespace A031776

/-- `∑[A040425(A272809(n))^4*A005408(n)+1]` -/
def P10650790635542506986.Spec : Prop :=
  ∀ n, P10650790635542506986.a n = A031776 (n + 1)

end A031776

/-! ## A031776.P8848714155272329045

`A002260(A001844(n))+(49*(n+1))²`
-/

namespace A031776.P8848714155272329045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A001844 n).toNat + ((49 * (n + 1)) ^ 2 : ℤ)

end

end A031776.P8848714155272329045

namespace A031776

/-- `A002260(A001844(n))+(49*(n+1))²` -/
def P8848714155272329045.Spec : Prop :=
  ∀ n, P8848714155272329045.a n = A031776 (n + 1)

end A031776

/-!
# A031777: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 99.

The programs for A031777, there is no canonical definition to state claims against.
-/

/-! ## A031777.P169165717150278343

`A002024(A001105(n+1))+(99*(n+1))²`
-/

namespace A031777.P169165717150278343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A001105 (n + 1)).toNat + ((99 * (n + 1)) ^ 2 : ℤ)

end

end A031777.P169165717150278343

/-! ## A031777.P4074136899908603051

`A000196(A028552(2*n+1))+(99*(n+1))²`
-/

namespace A031777.P4074136899908603051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028552 (2 * n + 1)).toNat + ((99 * (n + 1)) ^ 2 : ℤ)

end

end A031777.P4074136899908603051

/-!
# A031778: Numbers k such that the least term in the periodic part of the continued fraction for sqrt(k) is 100.

The programs for A031778, the canonical program `A031778.P7044411394653041818` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031778 has offset 1).

The definition of A031778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031778.P3435414190793343915

`A220645(∑[n])+Δ[A001545(n)]²`
-/

namespace A031778.P3435414190793343915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220645 (∑ j ∈ Finset.range (n + 1), f1 j) + (f2 (n + 1) - f2 n) ^ 2

end

end A031778.P3435414190793343915

namespace A031778

/-- `A220645(∑[n])+Δ[A001545(n)]²` -/
def P3435414190793343915.Spec : Prop :=
  ∀ n, P3435414190793343915.a n = A031778 (n + 1)

end A031778

/-! ## A031778.P7044411394653041818

`(50*A000188((n+1)²))²+n+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031778

/-- `(50*A000188((n+1)²))²+n+1` -/
def P7044411394653041818.Spec : Prop :=
  ∀ n, P7044411394653041818.a n = A031778 (n + 1)

theorem P7044411394653041818.correct : P7044411394653041818.Spec := by
  intro n
  simp only [A031778, Nat.add_sub_cancel]

end A031778

/-! ## A031778.P7690595719728502842

`A158383((2*(n+1))²)+n`
-/

namespace A031778.P7690595719728502842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158383 ((2 * (n + 1)) ^ 2) + (n : ℤ)

end

end A031778.P7690595719728502842

namespace A031778

/-- `A158383((2*(n+1))²)+n` -/
def P7690595719728502842.Spec : Prop :=
  ∀ n, P7690595719728502842.a n = A031778 (n + 1)

end A031778

