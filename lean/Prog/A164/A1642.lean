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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A164200: Number of binary strings of length n with equal numbers of 00001 and 01011 substrings.

The programs for A164200, there is no canonical definition to state claims against.
-/

/-! ## A164200.P17911932514419146418

`A065033(A164204(n)+A164198(n))`
-/

namespace A164200.P17911932514419146418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A164204 n + A164198 n).toNat

end

end A164200.P17911932514419146418

/-! ## A164200.P14263612314671552143

`A110654(A164204(n)+A164198(n))`
-/

namespace A164200.P14263612314671552143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A164204 n + A164198 n).toNat

end

end A164200.P14263612314671552143

/-! ## A164200.P10653609709263219993

`A206915(A264200(n))`
-/

namespace A164200.P10653609709263219993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (A264200 n).toNat

end

end A164200.P10653609709263219993

/-! ## A164200.P12446910510258992543

`∑[A000196(A055891(n))]`
-/

namespace A164200.P12446910510258992543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A055891 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164200.P12446910510258992543

/-! ## A164200.P5150228012731059545

`A057142(∑[A007581(n)])`
-/

namespace A164200.P5150228012731059545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164200.P5150228012731059545

/-!
# A164201: Number of binary strings of length n with equal numbers of 00001 and 01100 substrings.

The programs for A164201, there is no canonical definition to state claims against.
-/

/-! ## A164201.P451158118253536644

`∑[A000006(∑[A319616(n)])]-char[9]`
-/

namespace A164201.P451158118253536644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164201.P451158118253536644

/-! ## A164201.P15802102958653101237

`A164264(n)+A033665(A075852(n))`
-/

namespace A164201.P15802102958653101237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164264 n + A033665 (A075852 n).toNat

end

end A164201.P15802102958653101237

/-! ## A164201.P8524783858907986512

`A164264(n)+A060510(A148776(n))`
-/

namespace A164201.P8524783858907986512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164264 n + A060510 (A148776 n).toNat

end

end A164201.P8524783858907986512

/-! ## A164201.P3227201792394723269

`A185238(A102526(n))+A164264(n)`
-/

namespace A164201.P3227201792394723269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A102526 n).toNat + A164264 n

end

end A164201.P3227201792394723269

/-! ## A164201.P18034499767880124653

`A286998(A164303(n))+A164264(n)`
-/

namespace A164201.P18034499767880124653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A164303 n).toNat + A164264 n

end

end A164201.P18034499767880124653

/-!
# A164202: Number of binary strings of length n with equal numbers of 00001 and 01110 substrings.

The programs for A164202, there is no canonical definition to state claims against.
-/

/-! ## A164202.P1744368152971474095

`A154470(A164227(n))`
-/

namespace A164202.P1744368152971474095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A164227 n).toNat

end

end A164202.P1744368152971474095

/-! ## A164202.P4544575556895346945

`A164227(A004895(n+1))`
-/

namespace A164202.P4544575556895346945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164227 (A004895 (n + 1)).toNat

end

end A164202.P4544575556895346945

/-! ## A164202.P11993799023561110262

`A164227(A004906(n+1))`
-/

namespace A164202.P11993799023561110262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164227 (A004906 (n + 1)).toNat

end

end A164202.P11993799023561110262

/-! ## A164202.P14945226873818890998

`A164227(A004917(n+1))`
-/

namespace A164202.P14945226873818890998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164227 (A004917 (n + 1)).toNat

end

end A164202.P14945226873818890998

/-! ## A164202.P14507106244093972211

`A002266(5*A164227(n))`
-/

namespace A164202.P14507106244093972211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (5 * A164227 n).toNat

end

end A164202.P14507106244093972211

/-!
# A164203: Number of binary strings of length n with equal numbers of 00001 and 10000 substrings.

The programs for A164203, there is no canonical definition to state claims against.
-/

/-! ## A164203.P15228760968355855743

`2*(a(n-1)-A010052(A146205(n+1)))` with `a(0)=1`
-/

namespace A164203.P15228760968355855743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - A010052 (A146205 (n + 1)).toNat)

end

end A164203.P15228760968355855743

/-! ## A164203.P471858528086614476

`2*(a(n-1)-A120936(A056627(n+1)))` with `a(0)=1`
-/

namespace A164203.P471858528086614476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - A120936 (A056627 (n + 1)).toNat)

end

end A164203.P471858528086614476

/-! ## A164203.P5447044324898534130

`2*(a(n-1)-A086010(A307853(a(n-1))))` with `a(0)=1`
-/

namespace A164203.P5447044324898534130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - A086010 (A307853 (a (n - 1)).toNat).toNat)

end

end A164203.P5447044324898534130

/-! ## A164203.P12308931185433051980

`2*(a(n-1)-A204549(A017402(n)))` with `a(0)=1`
-/

namespace A164203.P12308931185433051980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - A204549 (A017402 n).toNat)

end

end A164203.P12308931185433051980

/-! ## A164203.P16289375509288194228

`A257839(A147596(n+2))`
-/

namespace A164203.P16289375509288194228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A147596 (n + 2)).toNat

end

end A164203.P16289375509288194228

/-!
# A164204: Number of binary strings of length n with equal numbers of 00001 and 10001 substrings.

The programs for A164204, there is no canonical definition to state claims against.
-/

/-! ## A164204.P6628221968561658335

`A014682(A164225(n)+A164209(n))`
-/

namespace A164204.P6628221968561658335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A164225 n + A164209 n).toNat

end

end A164204.P6628221968561658335

/-! ## A164204.P11856054697807303882

`(A164209(n)+A004277(A164226(n))-A164243(n))/2`
-/

namespace A164204.P11856054697807303882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164209 n + (A004277 (A164226 n).toNat - A164243 n) : ℚ) / 2

end

end A164204.P11856054697807303882

/-! ## A164204.P15562740725333806414

`(A164225(n)+A004277(A164205(n))-A164261(n))/2`
-/

namespace A164204.P15562740725333806414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164225 n + (A004277 (A164205 n).toNat - A164261 n) : ℚ) / 2

end

end A164204.P15562740725333806414

/-! ## A164204.P3398293198591556789

`A004525(A164225(n)+A164209(n))`
-/

namespace A164204.P3398293198591556789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A164225 n + A164209 n).toNat

end

end A164204.P3398293198591556789

/-! ## A164204.P17391096128980850479

`A004526(A164225(n)+A164209(n))`
-/

namespace A164204.P17391096128980850479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A164225 n + A164209 n).toNat

end

end A164204.P17391096128980850479

/-!
# A164205: Number of binary strings of length n with equal numbers of 00001 and 10010 substrings.

The programs for A164205, there is no canonical definition to state claims against.
-/

/-! ## A164205.P13509652363249813469

`(A164209(n)+A004277(A164238(n))-A164243(n))/2`
-/

namespace A164205.P13509652363249813469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164209 n + (A004277 (A164238 n).toNat - A164243 n) : ℚ) / 2

end

end A164205.P13509652363249813469

/-! ## A164205.P5752004790904900448

`(A164261(n)+A005843(A164204(n))-A164225(n))/2`
-/

namespace A164205.P5752004790904900448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164261 n + (A005843 (A164204 n).toNat - A164225 n) : ℚ) / 2

end

end A164205.P5752004790904900448

/-! ## A164205.P14903264996926302512

`A004526(A164261(n)+A164209(n))`
-/

namespace A164205.P14903264996926302512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A164261 n + A164209 n).toNat

end

end A164205.P14903264996926302512

/-! ## A164205.P18285752029237767591

`A025480(A164261(n)+A164209(n))`
-/

namespace A164205.P18285752029237767591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A164261 n + A164209 n).toNat

end

end A164205.P18285752029237767591

/-! ## A164205.P2498469244966754620

`∑[A276581(A148588(n))]`
-/

namespace A164205.P2498469244966754620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A148588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164205.P2498469244966754620

/-!
# A164206: Number of binary strings of length n with equal numbers of 00001 and 10100 substrings.

The programs for A164206, there is no canonical definition to state claims against.
-/

/-! ## A164206.P3846251552626647255

`A164261(n)+A075199(A131235(n))`
-/

namespace A164206.P3846251552626647255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164261 n + A075199 (A131235 n).toNat

end

end A164206.P3846251552626647255

/-! ## A164206.P6492222015490923674

`A164261(A062399(n))`
-/

namespace A164206.P6492222015490923674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164261 (A062399 n).toNat

end

end A164206.P6492222015490923674

/-! ## A164206.P12577001425605548634

`A164261(A120126(n))`
-/

namespace A164206.P12577001425605548634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164261 (A120126 n).toNat

end

end A164206.P12577001425605548634

/-! ## A164206.P4697002295585124416

`A130891(A164261(n))`
-/

namespace A164206.P4697002295585124416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130891 (A164261 n).toNat

end

end A164206.P4697002295585124416

/-! ## A164206.P16164136868860051743

`A164261(A351870(n))`
-/

namespace A164206.P16164136868860051743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164261 (A351870 n).toNat

end

end A164206.P16164136868860051743

/-!
# A164207: Number of binary strings of length n with equal numbers of 00001 and 10101 substrings.

The programs for A164207, there is no canonical definition to state claims against.
-/

/-! ## A164207.P4043725848880905158

`∑[A257639(A295208(n+1))]`
-/

namespace A164207.P4043725848880905158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A295208 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164207.P4043725848880905158

/-! ## A164207.P18353181791681822381

`A100196(A051164(n)+A005592(n))`
-/

namespace A164207.P18353181791681822381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A051164 n + A005592 n).toNat

end

end A164207.P18353181791681822381

/-! ## A164207.P17366635146591723782

`A100196(A137256(n)+A005592(n))`
-/

namespace A164207.P17366635146591723782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A137256 n + A005592 n).toNat

end

end A164207.P17366635146591723782

/-! ## A164207.P4125171475104823246

`A100196(A005592(n)-(1-A051164(n)))`
-/

namespace A164207.P4125171475104823246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A005592 n - (1 - A051164 n)).toNat

end

end A164207.P4125171475104823246

/-! ## A164207.P9932352830786457796

`A085701(A164252(n))`
-/

namespace A164207.P9932352830786457796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A164252 n).toNat

end

end A164207.P9932352830786457796

/-!
# A164208: Number of binary strings of length n with equal numbers of 00001 and 11000 substrings.

The programs for A164208, there is no canonical definition to state claims against.
-/

/-! ## A164208.P16809242816669116505

`or(A164248(n), A185284((4-n)²))`
-/

namespace A164208.P16809242816669116505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164248 n) (A185284 ((4 - (n : ℤ)) ^ 2).toNat)

end

end A164208.P16809242816669116505

/-! ## A164208.P3805377121470150167

`A164248(A046469(n))`
-/

namespace A164208.P3805377121470150167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164248 (A046469 n).toNat

end

end A164208.P3805377121470150167

/-! ## A164208.P12263444228691134821

`A164248(A087036(n))`
-/

namespace A164208.P12263444228691134821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164248 (A087036 n).toNat

end

end A164208.P12263444228691134821

/-! ## A164208.P3128628399117129445

`A164248(A087051(n))`
-/

namespace A164208.P3128628399117129445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164248 (A087051 n).toNat

end

end A164208.P3128628399117129445

/-! ## A164208.P16621599831079870520

`filter[A164248(n), A300294(#)]`
-/

namespace A164208.P16621599831079870520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A300294 (f1 j).toNat = 1) n)

end

end A164208.P16621599831079870520

/-!
# A164209: Number of binary strings of length n with equal numbers of 00001 and 11010 substrings.

The programs for A164209, there is no canonical definition to state claims against.
-/

/-! ## A164209.P17106540205770467174

`A004277(A164204(n))-A164225(n)`
-/

namespace A164209.P17106540205770467174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A164204 n).toNat - A164225 n

end

end A164209.P17106540205770467174

/-! ## A164209.P17335514045551232888

`A004277(A164205(n))-A164261(n)`
-/

namespace A164209.P17335514045551232888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A164205 n).toNat - A164261 n

end

end A164209.P17335514045551232888

/-! ## A164209.P5946158654376587169

`2*A164204(n)-(A004277(A164226(n))-A164243(n))`
-/

namespace A164209.P5946158654376587169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164204 n - (A004277 (A164226 n).toNat - A164243 n)

end

end A164209.P5946158654376587169

/-! ## A164209.P10841204179575088355

`A005843(n)%2+A005843(A164204(n))-A164225(n)`
-/

namespace A164209.P10841204179575088355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n) 2 + (A005843 (A164204 n).toNat - A164225 n)

end

end A164209.P10841204179575088355

/-!
# A164210: Number of binary strings of length n with equal numbers of 00001 and 11011 substrings.

The programs for A164210, there is no canonical definition to state claims against.
-/

/-! ## A164210.P13977151229811135880

`A164219(n)+A088194(A013610(n))`
-/

namespace A164210.P13977151229811135880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164219 n + A088194 (A013610 n).toNat

end

end A164210.P13977151229811135880

/-! ## A164210.P2640540604691563481

`A154470(A164219(n))`
-/

namespace A164210.P2640540604691563481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A164219 n).toNat

end

end A164210.P2640540604691563481

/-! ## A164210.P1188659680536836923

`A164219(A004895(n+1))`
-/

namespace A164210.P1188659680536836923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164219 (A004895 (n + 1)).toNat

end

end A164210.P1188659680536836923

/-! ## A164210.P533767602930357833

`A164219(A004906(n+1))`
-/

namespace A164210.P533767602930357833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164219 (A004906 (n + 1)).toNat

end

end A164210.P533767602930357833

/-! ## A164210.P10192096864336682911

`A164219(A004917(n+1))`
-/

namespace A164210.P10192096864336682911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164219 (A004917 (n + 1)).toNat

end

end A164210.P10192096864336682911

/-!
# A164211: Number of binary strings of length n with equal numbers of 00010 and 00100 substrings.

The programs for A164211, there is no canonical definition to state claims against.
-/

/-! ## A164211.P15273375988985292910

`A164253(n)+A024362(A146701(n+1))`
-/

namespace A164211.P15273375988985292910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164253 n + A024362 (A146701 (n + 1)).toNat

end

end A164211.P15273375988985292910

/-! ## A164211.P7329132449360908236

`A164253(n)+A055641(A253433(n+1))`
-/

namespace A164211.P7329132449360908236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164253 n + A055641 (A253433 (n + 1)).toNat

end

end A164211.P7329132449360908236

/-! ## A164211.P2571743538648607818

`A164253(n)-A178779(A018762(n+1))`
-/

namespace A164211.P2571743538648607818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164253 n - A178779 (A018762 (n + 1)).toNat

end

end A164211.P2571743538648607818

/-! ## A164211.P9627555794954125436

`A164246(n)+A005088(A148511(n))`
-/

namespace A164211.P9627555794954125436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164246 n + A005088 (A148511 n).toNat

end

end A164211.P9627555794954125436

/-! ## A164211.P9552463586189906765

`A164253(n)+A005088(A148511(n))`
-/

namespace A164211.P9552463586189906765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164253 n + A005088 (A148511 n).toNat

end

end A164211.P9552463586189906765

/-!
# A164212: Number of binary strings of length n with equal numbers of 00010 and 00101 substrings.

The programs for A164212, there is no canonical definition to state claims against.
-/

/-! ## A164212.P17726098873731856339

`A178779(A018762(n+1))+A164254(n)`
-/

namespace A164212.P17726098873731856339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178779 (A018762 (n + 1)).toNat + A164254 n

end

end A164212.P17726098873731856339

/-!
# A164213: Number of binary strings of length n with equal numbers of 00010 and 00110 substrings.

The programs for A164213, there is no canonical definition to state claims against.
-/

/-! ## A164213.P9766684200279128588

`A164156(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A164213.P9766684200279128588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164156 (n - 1) + a (n - 1)

end

end A164213.P9766684200279128588

/-! ## A164213.P4032856809522524315

`∑[A164156(A004273(n)-n)]`
-/

namespace A164213.P4032856809522524315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164156 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164213.P4032856809522524315

/-! ## A164213.P1126589050956004627

`∑[A164156(A014681(2*n)-n)]`
-/

namespace A164213.P1126589050956004627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164156 (A014681 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164213.P1126589050956004627

/-! ## A164213.P3791416671675477104

`∑[A164156(A004526(A014681(2*n)))]`
-/

namespace A164213.P3791416671675477104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164156 (A004526 (A014681 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164213.P3791416671675477104

/-! ## A164213.P7886081444221559363

`∑[A164156(A109613(n)-A040001(n))]`
-/

namespace A164213.P7886081444221559363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164156 (A109613 n - A040001 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164213.P7886081444221559363

/-! ## A164213.P1304539112693296001

`∑[A164156(n)]+1-A164156(n)`
-/

namespace A164213.P1304539112693296001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A164156 n)

end

end A164213.P1304539112693296001

/-! ## A164213.P3370922519695719670

`∑[A164156(A000196(n²-n))]`
-/

namespace A164213.P3370922519695719670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164156 (A000196 (n ^ 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164213.P3370922519695719670

/-!
# A164214: Number of binary strings of length n with equal numbers of 00010 and 01000 substrings.

The programs for A164214, there is no canonical definition to state claims against.
-/

/-! ## A164214.P1100603529628397541

`A319840(A202856(n))`
-/

namespace A164214.P1100603529628397541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319840 (A202856 n).toNat

end

end A164214.P1100603529628397541

/-! ## A164214.P6444505019230612598

`A319840(A118929(n+1))`
-/

namespace A164214.P6444505019230612598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319840 (A118929 (n + 1)).toNat

end

end A164214.P6444505019230612598

/-! ## A164214.P3587941018748874523

`A325796(A129852(n)+n)`
-/

namespace A164214.P3587941018748874523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325796 (A129852 n + (n : ℤ)).toNat

end

end A164214.P3587941018748874523

/-! ## A164214.P7860460552712506793

`A358457(∑[∑[A346503(n)]])`
-/

namespace A164214.P7860460552712506793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346503 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358457 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164214.P7860460552712506793

/-! ## A164214.P10345844682853688418

`∑[A074712(A317875(n+1))]`
-/

namespace A164214.P10345844682853688418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (A317875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164214.P10345844682853688418

/-!
# A164215: Number of binary strings of length n with equal numbers of 00010 and 01001 substrings.

The programs for A164215, there is no canonical definition to state claims against.
-/

/-! ## A164215.P17564726057844203145

`A164251(A062399(n))`
-/

namespace A164215.P17564726057844203145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 (A062399 n).toNat

end

end A164215.P17564726057844203145

/-! ## A164215.P1496385714518601238

`A164251(A120126(n))`
-/

namespace A164215.P1496385714518601238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 (A120126 n).toNat

end

end A164215.P1496385714518601238

/-! ## A164215.P10959059609459636479

`A164251(A351870(n))`
-/

namespace A164215.P10959059609459636479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 (A351870 n).toNat

end

end A164215.P10959059609459636479

/-! ## A164215.P6838254405414846995

`A164251(A004894(n+1))`
-/

namespace A164215.P6838254405414846995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 (A004894 (n + 1)).toNat

end

end A164215.P6838254405414846995

/-! ## A164215.P15833187622626495875

`A164251(A004905(n+1))`
-/

namespace A164215.P15833187622626495875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 (A004905 (n + 1)).toNat

end

end A164215.P15833187622626495875

/-!
# A164216: Number of binary strings of length n with equal numbers of 00010 and 01010 substrings.

The programs for A164216, there is no canonical definition to state claims against.
-/

/-! ## A164216.P3634893999368101379

`∑[A172471(Δ[A074449(n+1)])]`
-/

namespace A164216.P3634893999368101379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074449 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164216.P3634893999368101379

/-! ## A164216.P11998005964637706102

`A225643(A018060(n))+A018085(n)`
-/

namespace A164216.P11998005964637706102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 (A018060 n).toNat + A018085 n

end

end A164216.P11998005964637706102

/-! ## A164216.P8219976866246511065

`A225643(A018061(n))+A018085(n)`
-/

namespace A164216.P8219976866246511065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 (A018061 n).toNat + A018085 n

end

end A164216.P8219976866246511065

/-! ## A164216.P15352887162832643995

`A185238(A216604(n))+A164249(n)`
-/

namespace A164216.P15352887162832643995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A216604 n).toNat + A164249 n

end

end A164216.P15352887162832643995

/-! ## A164216.P15927794877870596785

`A180601(A003945(n)+1)+A164217(n)`
-/

namespace A164216.P15927794877870596785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180601 (A003945 n + 1).toNat + A164217 n

end

end A164216.P15927794877870596785

/-!
# A164218: Number of binary strings of length n with equal numbers of 00010 and 01100 substrings.

The programs for A164218, there is no canonical definition to state claims against.
-/

/-! ## A164218.P9920660486879659457

`A164228(n)-A225099(A006498(n))`
-/

namespace A164218.P9920660486879659457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164228 n - A225099 (A006498 n).toNat

end

end A164218.P9920660486879659457

/-! ## A164218.P2907446401692049118

`or(A164209(A062399(n)), A164222(n))`
-/

namespace A164218.P2907446401692049118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164209 (A062399 n).toNat) (A164222 n)

end

end A164218.P2907446401692049118

/-! ## A164218.P6256608454035720267

`or(A164209(A062399(n)), A164243(n))`
-/

namespace A164218.P6256608454035720267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164209 (A062399 n).toNat) (A164243 n)

end

end A164218.P6256608454035720267

/-! ## A164218.P8808857385881399054

`or(A164209(n), A164222(A351870(n)))`
-/

namespace A164218.P8808857385881399054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164209 n) (A164222 (A351870 n).toNat)

end

end A164218.P8808857385881399054

/-! ## A164218.P6946106439178429092

`or(A164209(A351870(n)), A164243(n))`
-/

namespace A164218.P6946106439178429092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164209 (A351870 n).toNat) (A164243 n)

end

end A164218.P6946106439178429092

/-!
# A164219: Number of binary strings of length n with equal numbers of 00010 and 01101 substrings.

The programs for A164219, there is no canonical definition to state claims against.
-/

/-! ## A164219.P2643924088799409864

`A164210(n)-A088194(A013610(n))`
-/

namespace A164219.P2643924088799409864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164210 n - A088194 (A013610 n).toNat

end

end A164219.P2643924088799409864

/-!
# A164220: Number of binary strings of length n with equal numbers of 00010 and 10001 substrings.

The programs for A164220, there is no canonical definition to state claims against.
-/

/-! ## A164220.P11641008300988233500

`A206499(n²+9)+A164254(n)`
-/

namespace A164220.P11641008300988233500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (n ^ 2 + 9) + A164254 n

end

end A164220.P11641008300988233500

/-! ## A164220.P337078876774426281

`A164254(n)+A025466(A038018(n))`
-/

namespace A164220.P337078876774426281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164254 n + A025466 (A038018 n).toNat

end

end A164220.P337078876774426281

/-! ## A164220.P15148315760485999437

`A164254(n)+A025466(A047653(n))`
-/

namespace A164220.P15148315760485999437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164254 n + A025466 (A047653 n).toNat

end

end A164220.P15148315760485999437

/-! ## A164220.P10993651913642253467

`char[8]+A164192(n)+A005088(A148511(n))`
-/

namespace A164220.P10993651913642253467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A164192 n + A005088 (A148511 n).toNat)

end

end A164220.P10993651913642253467

/-! ## A164220.P15251416181998442336

`char[8]+A102681(A168596(n))+A065494(n)`
-/

namespace A164220.P15251416181998442336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A102681 (A168596 n).toNat + A065494 n)

end

end A164220.P15251416181998442336

/-!
# A164221: Number of binary strings of length n with equal numbers of 00010 and 10010 substrings.

The programs for A164221, there is no canonical definition to state claims against.
-/

/-! ## A164221.P16422628619784930476

`A025480(A164264(n)+A164261(n))`
-/

namespace A164221.P16422628619784930476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A164264 n + A164261 n).toNat

end

end A164221.P16422628619784930476

/-! ## A164221.P10836096990903473848

`A026741(A164264(n)+A164261(n))`
-/

namespace A164221.P10836096990903473848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A164264 n + A164261 n).toNat

end

end A164221.P10836096990903473848

/-! ## A164221.P12017468036074496540

`A065033(A164264(n)+A164261(n))`
-/

namespace A164221.P12017468036074496540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A164264 n + A164261 n).toNat

end

end A164221.P12017468036074496540

/-! ## A164221.P2865436676078744419

`A110654(A164264(n)+A164261(n))`
-/

namespace A164221.P2865436676078744419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A164264 n + A164261 n).toNat

end

end A164221.P2865436676078744419

/-! ## A164221.P3329673256765546359

`A366387(A164264(n)+A164261(n))`
-/

namespace A164221.P3329673256765546359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366387 (A164264 n + A164261 n).toNat

end

end A164221.P3329673256765546359

/-!
# A164222: Number of binary strings of length n with equal numbers of 00010 and 10011 substrings.

The programs for A164222, there is no canonical definition to state claims against.
-/

/-! ## A164222.P9692684700735297148

`A164243(n)+A075199(A131235(n))`
-/

namespace A164222.P9692684700735297148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164243 n + A075199 (A131235 n).toNat

end

end A164222.P9692684700735297148

/-! ## A164222.P7879073181893804015

`A164243(n)+A075199(A202812(n+1))`
-/

namespace A164222.P7879073181893804015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164243 n + A075199 (A202812 (n + 1)).toNat

end

end A164222.P7879073181893804015

/-! ## A164222.P9895664226887759827

`A230571(A067663(n+1))+A164243(n)`
-/

namespace A164222.P9895664226887759827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A067663 (n + 1)).toNat + A164243 n

end

end A164222.P9895664226887759827

/-! ## A164222.P5563738887399248402

`A164243(A062399(n))`
-/

namespace A164222.P5563738887399248402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164243 (A062399 n).toNat

end

end A164222.P5563738887399248402

/-! ## A164222.P15221187122729803434

`A164243(A120126(n))`
-/

namespace A164222.P15221187122729803434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164243 (A120126 n).toNat

end

end A164222.P15221187122729803434

/-!
# A164223: Number of binary strings of length n with equal numbers of 00010 and 10101 substrings.

The programs for A164223, there is no canonical definition to state claims against.
-/

/-! ## A164223.P5246010643208222498

`A059995(A374517(n+5))`
-/

namespace A164223.P5246010643208222498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A374517 (n + 5)).toNat

end

end A164223.P5246010643208222498

/-! ## A164223.P4858390764657120793

`A164237(n)+A003982(A000110(n))`
-/

namespace A164223.P4858390764657120793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164237 n + A003982 (A000110 n).toNat

end

end A164223.P4858390764657120793

/-! ## A164223.P1277578687831705966

`A187946(A000111(n))+A164237(n)`
-/

namespace A164223.P1277578687831705966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187946 (A000111 n).toNat + A164237 n

end

end A164223.P1277578687831705966

/-! ## A164223.P666886506743707144

`A164260(n)-A180649(A000013(n))`
-/

namespace A164223.P666886506743707144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164260 n - A180649 (A000013 n).toNat

end

end A164223.P666886506743707144

/-! ## A164223.P187982731412134585

`A164199(n)-A135907(A212998(n))`
-/

namespace A164223.P187982731412134585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164199 n - A135907 (A212998 n).toNat

end

end A164223.P187982731412134585

/-!
# A164224: Number of binary strings of length n with equal numbers of 00010 and 11000 substrings.

The programs for A164224, there is no canonical definition to state claims against.
-/

/-! ## A164224.P10891833746039447268

`A164231(A046469(n))`
-/

namespace A164224.P10891833746039447268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 (A046469 n).toNat

end

end A164224.P10891833746039447268

/-! ## A164224.P9492267145518619059

`A164231(A087036(n))`
-/

namespace A164224.P9492267145518619059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 (A087036 n).toNat

end

end A164224.P9492267145518619059

/-! ## A164224.P7706536056221480703

`A164231(A087051(n))`
-/

namespace A164224.P7706536056221480703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 (A087051 n).toNat

end

end A164224.P7706536056221480703

/-! ## A164224.P6822441638082957126

`A164231(A307887(n))`
-/

namespace A164224.P6822441638082957126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 (A307887 n).toNat

end

end A164224.P6822441638082957126

/-! ## A164224.P7372671068201444000

`filter[A164231(n), A236861(#)]`
-/

namespace A164224.P7372671068201444000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A164224.P7372671068201444000

/-!
# A164225: Number of binary strings of length n with equal numbers of 00010 and 11001 substrings.

The programs for A164225, there is no canonical definition to state claims against.
-/

/-! ## A164225.P13714285351764600032

`A004277(A164204(n))-A164209(n)`
-/

namespace A164225.P13714285351764600032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A164204 n).toNat - A164209 n

end

end A164225.P13714285351764600032

/-! ## A164225.P11871378487129286819

`A004277(A164226(n))-A164243(n)`
-/

namespace A164225.P11871378487129286819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A164226 n).toNat - A164243 n

end

end A164225.P11871378487129286819

/-! ## A164225.P6477096552259714910

`2*A164204(n)-(A004277(A164205(n))-A164261(n))`
-/

namespace A164225.P6477096552259714910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164204 n - (A004277 (A164205 n).toNat - A164261 n)

end

end A164225.P6477096552259714910

/-! ## A164225.P4264780998811167284

`A004275(Δ[record[A255122(n)]])`
-/

namespace A164225.P4264780998811167284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (n + 1) - f1 n).toNat

end

end A164225.P4264780998811167284

/-! ## A164225.P4477767485917180094

`A004277(record[A255122(n)-n])`
-/

namespace A164225.P4477767485917180094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255122 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A164225.P4477767485917180094

/-!
# A164226: Number of binary strings of length n with equal numbers of 00010 and 11011 substrings.

The programs for A164226, there is no canonical definition to state claims against.
-/

/-! ## A164226.P5461634872719557326

`(A164243(n)+A004277(A164204(n))-A164209(n))/2`
-/

namespace A164226.P5461634872719557326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164243 n + (A004277 (A164204 n).toNat - A164209 n) : ℚ) / 2

end

end A164226.P5461634872719557326

/-! ## A164226.P4530500281521204687

`A004525(A164243(n)+A164225(n))`
-/

namespace A164226.P4530500281521204687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A164243 n + A164225 n).toNat

end

end A164226.P4530500281521204687

/-! ## A164226.P6224606866297113184

`A004526(A164243(n)+A164225(n))`
-/

namespace A164226.P6224606866297113184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A164243 n + A164225 n).toNat

end

end A164226.P6224606866297113184

/-! ## A164226.P600868102640526286

`A025480(A164243(n)+A164225(n))`
-/

namespace A164226.P600868102640526286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A164243 n + A164225 n).toNat

end

end A164226.P600868102640526286

/-! ## A164226.P2212807496405270401

`A065033(A164243(n)+A164225(n))`
-/

namespace A164226.P2212807496405270401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A164243 n + A164225 n).toNat

end

end A164226.P2212807496405270401

/-!
# A164228: Number of binary strings of length n with equal numbers of 00011 and 00100 substrings.

The programs for A164228, there is no canonical definition to state claims against.
-/

/-! ## A164228.P916324176793818756

`A001281(A164243(n)+A164234(n))`
-/

namespace A164228.P916324176793818756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A164243 n + A164234 n).toNat

end

end A164228.P916324176793818756

/-! ## A164228.P14214082884257387792

`A004525(A164243(n)+A164234(n))`
-/

namespace A164228.P14214082884257387792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A164243 n + A164234 n).toNat

end

end A164228.P14214082884257387792

/-! ## A164228.P1941619630066912365

`A004526(A164243(n)+A164234(n))`
-/

namespace A164228.P1941619630066912365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A164243 n + A164234 n).toNat

end

end A164228.P1941619630066912365

/-! ## A164228.P198020024636444581

`A025480(A164243(n)+A164234(n))`
-/

namespace A164228.P198020024636444581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A164243 n + A164234 n).toNat

end

end A164228.P198020024636444581

/-! ## A164228.P11492927584952993733

`A065033(A164243(n)+A164234(n))`
-/

namespace A164228.P11492927584952993733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A164243 n + A164234 n).toNat

end

end A164228.P11492927584952993733

/-!
# A164229: Number of binary strings of length n with equal numbers of 00011 and 00101 substrings.

The programs for A164229, there is no canonical definition to state claims against.
-/

/-! ## A164229.P16814362168150927827

`and(A164209(A062399(n)), A164222(n))`
-/

namespace A164229.P16814362168150927827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164209 (A062399 n).toNat) (A164222 n)

end

end A164229.P16814362168150927827

/-! ## A164229.P15750151291681164772

`and(A164209(A062399(n)), A164225(n))`
-/

namespace A164229.P15750151291681164772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164209 (A062399 n).toNat) (A164225 n)

end

end A164229.P15750151291681164772

/-! ## A164229.P18082735439049468532

`and(A164222(A062399(n)), A164234(n))`
-/

namespace A164229.P18082735439049468532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164222 (A062399 n).toNat) (A164234 n)

end

end A164229.P18082735439049468532

/-! ## A164229.P11853889325561538360

`and(A164222(A062399(n)), A164237(n))`
-/

namespace A164229.P11853889325561538360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164222 (A062399 n).toNat) (A164237 n)

end

end A164229.P11853889325561538360

/-! ## A164229.P7266057268091206762

`and(A164209(n), A164222(A351870(n)))`
-/

namespace A164229.P7266057268091206762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164209 n) (A164222 (A351870 n).toNat)

end

end A164229.P7266057268091206762

/-!
# A164230: Number of binary strings of length n with equal numbers of 00011 and 01001 substrings.

The programs for A164230, there is no canonical definition to state claims against.
-/

/-! ## A164230.P17112251119069088273

`∑[A257934(A087051(n))]`
-/

namespace A164230.P17112251119069088273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257934 (A087051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164230.P17112251119069088273

/-! ## A164230.P424157093434646358

`record[A109964(A255122(n))]`
-/

namespace A164230.P424157093434646358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109964 (A255122 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164230.P424157093434646358

/-! ## A164230.P16424593389119813892

`∑[∑[A118759(A283834(n))]]`
-/

namespace A164230.P16424593389119813892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A283834 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164230.P16424593389119813892

/-! ## A164230.P1636247744694101189

`∑[A257934(A004904(n+1))]`
-/

namespace A164230.P1636247744694101189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257934 (A004904 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164230.P1636247744694101189

/-! ## A164230.P16713232120919782715

`A164205(n)-A081221(A007581(n))²`
-/

namespace A164230.P16713232120919782715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164205 n - A081221 (A007581 n).toNat ^ 2

end

end A164230.P16713232120919782715

/-!
# A164232: Number of binary strings of length n with equal numbers of 00011 and 01101 substrings.

The programs for A164232, there is no canonical definition to state claims against.
-/

/-! ## A164232.P4548075788193476611

`A164196(n)+A055641(A002064(n))`
-/

namespace A164232.P4548075788193476611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164196 n + A055641 (A002064 n).toNat

end

end A164232.P4548075788193476611

/-! ## A164232.P17184444452902196648

`A164217(n)+A055641(A002064(n))`
-/

namespace A164232.P17184444452902196648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164217 n + A055641 (A002064 n).toNat

end

end A164232.P17184444452902196648

/-! ## A164232.P206735783571330612

`A164196(A087051(n))+A049800(n+1)`
-/

namespace A164232.P206735783571330612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164196 (A087051 n).toNat + A049800 (n + 1)

end

end A164232.P206735783571330612

/-! ## A164232.P18068360754388970100

`A342753(A125714(n+1))+A164196(n)`
-/

namespace A164232.P18068360754388970100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A125714 (n + 1)).toNat + A164196 n

end

end A164232.P18068360754388970100

/-! ## A164232.P6642335175695474302

`A342753(A125714(n+1))+A164217(n)`
-/

namespace A164232.P6642335175695474302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A125714 (n + 1)).toNat + A164217 n

end

end A164232.P6642335175695474302

/-!
# A164233: Number of binary strings of length n with equal numbers of 00011 and 11000 substrings.

The programs for A164233, there is no canonical definition to state claims against.
-/

/-! ## A164233.P12985477336062074110

`∑[A161205(A148409(n))]`
-/

namespace A164233.P12985477336062074110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A148409 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164233.P12985477336062074110

/-! ## A164233.P14782103148040584046

`A008676(A086225(n))+A002620(n)`
-/

namespace A164233.P14782103148040584046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A086225 n).toNat + A002620 n

end

end A164233.P14782103148040584046

/-! ## A164233.P6833301446113782261

`A164197(n)+A016389(A164139(n))`
-/

namespace A164233.P6833301446113782261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164197 n + A016389 (A164139 n).toNat

end

end A164233.P6833301446113782261

/-! ## A164233.P11472829646595974749

`A185284(A000045(n))+A164197(n)`
-/

namespace A164233.P11472829646595974749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000045 n).toNat + A164197 n

end

end A164233.P11472829646595974749

/-! ## A164233.P6352106015129924833

`A185284(A047468(n+1))+A164197(n)`
-/

namespace A164233.P6352106015129924833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A047468 (n + 1)).toNat + A164197 n

end

end A164233.P6352106015129924833

/-!
# A164234: Number of binary strings of length n with equal numbers of 00011 and 11100 substrings.

The programs for A164234, there is no canonical definition to state claims against.
-/

/-! ## A164234.P3501054292764944519

`A164237(n)-A133988(A241482(n+1))`
-/

namespace A164234.P3501054292764944519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164237 n - A133988 (A241482 (n + 1)).toNat

end

end A164234.P3501054292764944519

/-! ## A164234.P7275454040152590376

`∑[A000006(∑[A319616(n)])]`
-/

namespace A164234.P7275454040152590376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164234.P7275454040152590376

/-! ## A164234.P1913432326068448248

`A164201(n)+A060510(A148776(n))`
-/

namespace A164234.P1913432326068448248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164201 n + A060510 (A148776 n).toNat

end

end A164234.P1913432326068448248

/-! ## A164234.P18350343191987695680

`A185238(A102526(n))+A164201(n)`
-/

namespace A164234.P18350343191987695680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A102526 n).toNat + A164201 n

end

end A164234.P18350343191987695680

/-! ## A164234.P16967133104735614660

`A164237(n)-A033665(A119002(n))`
-/

namespace A164234.P16967133104735614660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164237 n - A033665 (A119002 n).toNat

end

end A164234.P16967133104735614660

/-!
# A164235: Number of binary strings of length n with equal numbers of 00100 and 00110 substrings.

The programs for A164235, there is no canonical definition to state claims against.
-/

/-! ## A164235.P1767311823476796932

`A164237(n)-A033665(A191309(n)+1)`
-/

namespace A164235.P1767311823476796932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164237 n - A033665 (A191309 n + 1).toNat

end

end A164235.P1767311823476796932

/-! ## A164235.P17990028921823056726

`A164196(n+1)-A164166(A087051(n))`
-/

namespace A164235.P17990028921823056726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164196 (n + 1) - A164166 (A087051 n).toNat

end

end A164235.P17990028921823056726

/-! ## A164235.P2120457768002535402

`A164264(n)-A010054(A164259(n+4))`
-/

namespace A164235.P2120457768002535402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164264 n - A010054 (A164259 (n + 4)).toNat

end

end A164235.P2120457768002535402

/-! ## A164235.P15352281861727682547

`A164201(n)-A060510(A148776(n))-char[8]`
-/

namespace A164235.P15352281861727682547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164201 n - A060510 (A148776 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164235.P15352281861727682547

/-! ## A164235.P4939194070659218829

`A164201(n)-A185238(A102526(n))-char[8]`
-/

namespace A164235.P4939194070659218829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164201 n - A185238 (A102526 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164235.P4939194070659218829

/-!
# A164236: Number of binary strings of length n with equal numbers of 00100 and 01001 substrings.

The programs for A164236, there is no canonical definition to state claims against.
-/

/-! ## A164236.P4405978694615171488

`A164245(n)+A020987(A135808(n))`
-/

namespace A164236.P4405978694615171488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164245 n + A020987 (A135808 n).toNat

end

end A164236.P4405978694615171488

/-! ## A164236.P17840219909389782804

`A164259(n)-A185284(A011972(n))`
-/

namespace A164236.P17840219909389782804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164259 n - A185284 (A011972 n).toNat

end

end A164236.P17840219909389782804

/-! ## A164236.P5797270023462287622

`A085701(A164259(n))`
-/

namespace A164236.P5797270023462287622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A164259 n).toNat

end

end A164236.P5797270023462287622

/-! ## A164236.P3978053928284431150

`A164259(A004892(n+1))`
-/

namespace A164236.P3978053928284431150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164259 (A004892 (n + 1)).toNat

end

end A164236.P3978053928284431150

/-! ## A164236.P16366672206283673524

`A164259(A004903(n+1))`
-/

namespace A164236.P16366672206283673524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164259 (A004903 (n + 1)).toNat

end

end A164236.P16366672206283673524

/-!
# A164237: Number of binary strings of length n with equal numbers of 00100 and 01010 substrings.

The programs for A164237, there is no canonical definition to state claims against.
-/

/-! ## A164237.P2306049637335590720

`A164234(n)+A133988(A241482(n+1))`
-/

namespace A164237.P2306049637335590720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164234 n + A133988 (A241482 (n + 1)).toNat

end

end A164237.P2306049637335590720

/-! ## A164237.P16008835908257119914

`A011782(n)+A003056(A159036(n))`
-/

namespace A164237.P16008835908257119914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A003056 (A159036 n).toNat

end

end A164237.P16008835908257119914

/-! ## A164237.P2589803624109508004

`A164234(n)+A033665(A119002(n))`
-/

namespace A164237.P2589803624109508004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164234 n + A033665 (A119002 n).toNat

end

end A164237.P2589803624109508004

/-! ## A164237.P6122890876958558370

`A164201(n)+A033665(A191309(n))`
-/

namespace A164237.P6122890876958558370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164201 n + A033665 (A191309 n).toNat

end

end A164237.P6122890876958558370

/-! ## A164237.P8573496070828053329

`A164223(n)-A003982(A000110(n))`
-/

namespace A164237.P8573496070828053329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164223 n - A003982 (A000110 n).toNat

end

end A164237.P8573496070828053329

/-!
# A164238: Number of binary strings of length n with equal numbers of 00100 and 01101 substrings.

The programs for A164238, there is no canonical definition to state claims against.
-/

/-! ## A164238.P2242522777448494134

`A004525(A164261(n)+A164243(n))`
-/

namespace A164238.P2242522777448494134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A164261 n + A164243 n).toNat

end

end A164238.P2242522777448494134

/-! ## A164238.P2421933630379797955

`A004526(A164261(n)+A164243(n))`
-/

namespace A164238.P2421933630379797955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A164261 n + A164243 n).toNat

end

end A164238.P2421933630379797955

/-! ## A164238.P11087630999152765745

`A026741(A164261(n)+A164243(n))`
-/

namespace A164238.P11087630999152765745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A164261 n + A164243 n).toNat

end

end A164238.P11087630999152765745

/-! ## A164238.P3462269098320321573

`A110654(A164261(n)+A164243(n))`
-/

namespace A164238.P3462269098320321573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A164261 n + A164243 n).toNat

end

end A164238.P3462269098320321573

/-! ## A164238.P13036199847817928522

`A366387(A164261(n)+A164243(n))`
-/

namespace A164238.P13036199847817928522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366387 (A164261 n + A164243 n).toNat

end

end A164238.P13036199847817928522

/-!
# A164239: Number of binary strings of length n with equal numbers of 00100 and 01110 substrings.

The programs for A164239, there is no canonical definition to state claims against.
-/

/-! ## A164239.P16627460350525652892

`A164238(n)-A178798(A136484(n))`
-/

namespace A164239.P16627460350525652892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164238 n - A178798 (A136484 n).toNat

end

end A164239.P16627460350525652892

/-! ## A164239.P10050358765352903153

`or(A089870(A075199(n+1)), A164205(n))`
-/

namespace A164239.P10050358765352903153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089870 (A075199 (n + 1)).toNat) (A164205 n)

end

end A164239.P10050358765352903153

/-! ## A164239.P12549543616036376138

`A164205(n)+A081221(A007581(n))`
-/

namespace A164239.P12549543616036376138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164205 n + A081221 (A007581 n).toNat

end

end A164239.P12549543616036376138

/-! ## A164239.P4893823005295206887

`A164205(n)+A081221(A181769(n))`
-/

namespace A164239.P4893823005295206887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164205 n + A081221 (A181769 n).toNat

end

end A164239.P4893823005295206887

/-! ## A164239.P8323184018580541315

`A164222(n)-A217096(A005248(n))`
-/

namespace A164239.P8323184018580541315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164222 n - A217096 (A005248 n).toNat

end

end A164239.P8323184018580541315

/-!
# A164240: Number of binary strings of length n with equal numbers of 00100 and 10001 substrings.

The programs for A164240, there is no canonical definition to state claims against.
-/

/-! ## A164240.P9628750412730324459

`A338466(A113405(n))+A017996(n)`
-/

namespace A164240.P9628750412730324459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A113405 n).toNat + A017996 n

end

end A164240.P9628750412730324459

/-! ## A164240.P17114180349006001955

`A288752(A107697(n+1))+A275544(n)`
-/

namespace A164240.P17114180349006001955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288752 (A107697 (n + 1)).toNat + A275544 n

end

end A164240.P17114180349006001955

/-! ## A164240.P3636089125398869552

`A319840(A202856(n))-char[8]`
-/

namespace A164240.P3636089125398869552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319840 (A202856 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164240.P3636089125398869552

/-! ## A164240.P1244516296817886003

`A185284(A007770(n+1))+A164256(n)`
-/

namespace A164240.P1244516296817886003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A007770 (n + 1)).toNat + A164256 n

end

end A164240.P1244516296817886003

/-!
# A164241: Number of binary strings of length n with equal numbers of 00100 and 10011 substrings.

The programs for A164241, there is no canonical definition to state claims against.
-/

/-! ## A164241.P12121585048117636092

`2*A164215(A062399(n))-A164250(n)`
-/

namespace A164241.P12121585048117636092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164215 (A062399 n).toNat - A164250 n

end

end A164241.P12121585048117636092

/-! ## A164241.P16082472633160220812

`2*A164251(n)-A164250(A062399(n))`
-/

namespace A164241.P16082472633160220812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164251 n - A164250 (A062399 n).toNat

end

end A164241.P16082472633160220812

/-! ## A164241.P9683460290871854613

`2*A164251(n)-A164250(A351870(n))`
-/

namespace A164241.P9683460290871854613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164251 n - A164250 (A351870 n).toNat

end

end A164241.P9683460290871854613

/-! ## A164241.P13232604966083424311

`2*A164251(n)%p?[A000032(n)]-A164250(n)`
-/

namespace A164241.P13232604966083424311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A164251 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) - A164250 n

end

end A164241.P13232604966083424311

/-! ## A164241.P14361748306180974491

`A164215(A062399(n))+A164215(n)-A164250(n)`
-/

namespace A164241.P14361748306180974491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164215 (A062399 n).toNat + (A164215 n - A164250 n)

end

end A164241.P14361748306180974491

/-!
# A164242: Number of binary strings of length n with equal numbers of 00100 and 10101 substrings.

The programs for A164242, there is no canonical definition to state claims against.
-/

/-! ## A164242.P11710641830564302802

`A164252(n)+A055641(A000108(n))`
-/

namespace A164242.P11710641830564302802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164252 n + A055641 (A000108 n).toNat

end

end A164242.P11710641830564302802

/-! ## A164242.P8767617207862761009

`A286998(A052501(n))+A164252(n)`
-/

namespace A164242.P8767617207862761009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A052501 n).toNat + A164252 n

end

end A164242.P8767617207862761009

/-! ## A164242.P16243523477013321387

`A164199(n)-A180649(A000013(n))`
-/

namespace A164242.P16243523477013321387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164199 n - A180649 (A000013 n).toNat

end

end A164242.P16243523477013321387

/-! ## A164242.P17258742563417648637

`or(A033665(A119002(n)), A164252(n))`
-/

namespace A164242.P17258742563417648637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033665 (A119002 n).toNat) (A164252 n)

end

end A164242.P17258742563417648637

/-! ## A164242.P2726065152366958873

`xor(A033665(A191309(n)), A164201(n))`
-/

namespace A164242.P2726065152366958873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033665 (A191309 n).toNat) (A164201 n)

end

end A164242.P2726065152366958873

/-!
# A164243: Number of binary strings of length n with equal numbers of 00100 and 11011 substrings.

The programs for A164243, there is no canonical definition to state claims against.
-/

/-! ## A164243.P16839628649746677039

`A004277(A164226(n))-A164225(n)`
-/

namespace A164243.P16839628649746677039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A164226 n).toNat - A164225 n

end

end A164243.P16839628649746677039

/-! ## A164243.P17290165555198222115

`A004277(A164238(n))-A164261(n)`
-/

namespace A164243.P17290165555198222115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A164238 n).toNat - A164261 n

end

end A164243.P17290165555198222115

/-! ## A164243.P17718930737987156349

`2*A164226(n)-(A004277(A164204(n))-A164209(n))`
-/

namespace A164243.P17718930737987156349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164226 n - (A004277 (A164204 n).toNat - A164209 n)

end

end A164243.P17718930737987156349

/-! ## A164243.P3272060189075607703

`A164222(n)-A075199(A131235(n))`
-/

namespace A164243.P3272060189075607703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164222 n - A075199 (A131235 n).toNat

end

end A164243.P3272060189075607703

/-!
# A164244: Number of binary strings of length n with equal numbers of 00101 and 01001 substrings.

The programs for A164244, there is no canonical definition to state claims against.
-/

/-! ## A164244.P13179121666027159350

`A164208(n)+A025469(A041813(n))`
-/

namespace A164244.P13179121666027159350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164208 n + A025469 (A041813 n).toNat

end

end A164244.P13179121666027159350

/-! ## A164244.P2603278353128349835

`A164248(n)+A025469(A041813(n))`
-/

namespace A164244.P2603278353128349835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164248 n + A025469 (A041813 n).toNat

end

end A164244.P2603278353128349835

/-! ## A164244.P2913473489160759473

`A164208(n)+A055641(A033191(n))`
-/

namespace A164244.P2913473489160759473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164208 n + A055641 (A033191 n).toNat

end

end A164244.P2913473489160759473

/-! ## A164244.P1779254977084153803

`A164248(n)+A055641(A033191(n))`
-/

namespace A164244.P1779254977084153803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164248 n + A055641 (A033191 n).toNat

end

end A164244.P1779254977084153803

/-!
# A164245: Number of binary strings of length n with equal numbers of 00101 and 01010 substrings.

The programs for A164245, there is no canonical definition to state claims against.
-/

/-! ## A164245.P12886645059839424608

`A164236(n)-A020987(A135808(n))`
-/

namespace A164245.P12886645059839424608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164236 n - A020987 (A135808 n).toNat

end

end A164245.P12886645059839424608

/-! ## A164245.P8154471590083859491

`A164211(n)+A086075(A298449(n+1))`
-/

namespace A164245.P8154471590083859491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164211 n + A086075 (A298449 (n + 1)).toNat

end

end A164245.P8154471590083859491

/-! ## A164245.P3422021434428067697

`A100196(A306486(2*(n+1))+A002215(n+1))`
-/

namespace A164245.P3422021434428067697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A306486 (2 * (n + 1)) + A002215 (n + 1)).toNat

end

end A164245.P3422021434428067697

/-! ## A164245.P4835603723482600104

`A085914(A164259(n)+1)-A020987(A135808(n))`
-/

namespace A164245.P4835603723482600104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085914 (A164259 n + 1).toNat - A020987 (A135808 n).toNat

end

end A164245.P4835603723482600104

/-! ## A164245.P12086690696321464893

`A192654(A045918(n)-7)+A023443(A157133(n))`
-/

namespace A164245.P12086690696321464893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192654 (A045918 n - 7).toNat + A023443 (A157133 n).toNat

end

end A164245.P12086690696321464893

/-!
# A164246: Number of binary strings of length n with equal numbers of 00101 and 01011 substrings.

The programs for A164246, there is no canonical definition to state claims against.
-/

/-! ## A164246.P15362201885150764956

`or(A164253(n), A185284(A045686(n)))`
-/

namespace A164246.P15362201885150764956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164253 n) (A185284 (A045686 n).toNat)

end

end A164246.P15362201885150764956

/-! ## A164246.P783882334100630075

`A164253(A046469(n))`
-/

namespace A164246.P783882334100630075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164253 (A046469 n).toNat

end

end A164246.P783882334100630075

/-! ## A164246.P5714158539082926523

`A164253(A087036(n))`
-/

namespace A164246.P5714158539082926523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164253 (A087036 n).toNat

end

end A164246.P5714158539082926523

/-! ## A164246.P5392138178681772200

`A164253(A087051(n))`
-/

namespace A164246.P5392138178681772200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164253 (A087051 n).toNat

end

end A164246.P5392138178681772200

/-! ## A164246.P2736063002186309915

`filter[A164253(n), A392743(#)]`
-/

namespace A164246.P2736063002186309915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392743 (f1 j).toNat = 1) n)

end

end A164246.P2736063002186309915

/-!
# A164247: Number of binary strings of length n with equal numbers of 00101 and 10010 substrings.

The programs for A164247, there is no canonical definition to state claims against.
-/

/-! ## A164247.P1205523085983380917

`A178779(A018762(n+1)-1)+A164254(n)`
-/

namespace A164247.P1205523085983380917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178779 (A018762 (n + 1) - 1).toNat + A164254 n

end

end A164247.P1205523085983380917

/-! ## A164247.P3595329878239518136

`A178779(n+3)²+A164212(n)-A178779(A018762(n+1))`
-/

namespace A164247.P3595329878239518136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178779 (n + 3) ^ 2 + (A164212 n - A178779 (A018762 (n + 1)).toNat)

end

end A164247.P3595329878239518136

/-! ## A164247.P2531860120637619593

`A164254(n)+A102681(A047653(n))`
-/

namespace A164247.P2531860120637619593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164254 n + A102681 (A047653 n).toNat

end

end A164247.P2531860120637619593

/-! ## A164247.P10583746136898621893

`A206499(A056506(n))+A164254(n)`
-/

namespace A164247.P10583746136898621893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (A056506 n).toNat + A164254 n

end

end A164247.P10583746136898621893

/-! ## A164247.P7285758239041243360

`A184974(A184974(n))+A164254(n)`
-/

namespace A164247.P7285758239041243360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A184974 n).toNat + A164254 n

end

end A164247.P7285758239041243360

/-!
# A164248: Number of binary strings of length n with equal numbers of 00101 and 10100 substrings.

The programs for A164248, there is no canonical definition to state claims against.
-/

/-! ## A164248.P1698083143190760986

`A351870(A164231(n)-A164251(n))+A164250(n)`
-/

namespace A164248.P1698083143190760986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A164231 n - A164251 n).toNat + A164250 n

end

end A164248.P1698083143190760986

/-! ## A164248.P16593118380690667255

`A164250(A062399(n))-(A164251(n)-A164231(n))`
-/

namespace A164248.P16593118380690667255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164250 (A062399 n).toNat - (A164251 n - A164231 n)

end

end A164248.P16593118380690667255

/-! ## A164248.P3053961074584814178

`A164231(n)-(A164251(n)-A164250(A351870(n)))`
-/

namespace A164248.P3053961074584814178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 n - (A164251 n - A164250 (A351870 n).toNat)

end

end A164248.P3053961074584814178

/-!
# A164249: Number of binary strings of length n with equal numbers of 00101 and 10101 substrings.

The programs for A164249, there is no canonical definition to state claims against.
-/

/-! ## A164249.P7994308620978967761

`A164231(n)+A083896(A110181(n))`
-/

namespace A164249.P7994308620978967761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 n + A083896 (A110181 n).toNat

end

end A164249.P7994308620978967761

/-! ## A164249.P13496624852848326933

`A164216(n)-A185238(A216604(n))`
-/

namespace A164249.P13496624852848326933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164216 n - A185238 (A216604 n).toNat

end

end A164249.P13496624852848326933

/-! ## A164249.P1997556842378082913

`A164216(n)-A185238(∑[A346503(n)])`
-/

namespace A164249.P1997556842378082913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164216 n - A185238 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164249.P1997556842378082913

/-! ## A164249.P16068926955857813890

`A164216(n)-A025466(A216616(n+2))`
-/

namespace A164249.P16068926955857813890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164216 n - A025466 (A216616 (n + 2)).toNat

end

end A164249.P16068926955857813890

/-! ## A164249.P6908631990057556109

`A164216(n)-A185238(A214286(n+4))`
-/

namespace A164249.P6908631990057556109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164216 n - A185238 (A214286 (n + 4)).toNat

end

end A164249.P6908631990057556109

/-!
# A164250: Number of binary strings of length n with equal numbers of 00101 and 10110 substrings.

The programs for A164250, there is no canonical definition to state claims against.
-/

/-! ## A164250.P17639302647247115778

`A164251(n)+A018843(floor(2^(n/2))+1)`
-/

namespace A164250.P17639302647247115778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 n + A018843 (⌊(2 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ + 1).toNat

end

end A164250.P17639302647247115778

/-! ## A164250.P10934834226706477470

`A164215(n)+A003849(A017438(n))`
-/

namespace A164250.P10934834226706477470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164215 n + A003849 (A017438 n).toNat

end

end A164250.P10934834226706477470

/-! ## A164250.P1064490799340724049

`A164251(n)+A003849(A017438(n))`
-/

namespace A164250.P1064490799340724049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 n + A003849 (A017438 n).toNat

end

end A164250.P1064490799340724049

/-! ## A164250.P4586395745317287205

`A164215(n)+A025469(A083337(n))`
-/

namespace A164250.P4586395745317287205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164215 n + A025469 (A083337 n).toNat

end

end A164250.P4586395745317287205

/-! ## A164250.P18241898011333289079

`A164251(n)-A121373(A212232(n+1))`
-/

namespace A164250.P18241898011333289079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 n - A121373 (A212232 (n + 1)).toNat

end

end A164250.P18241898011333289079

/-!
# A164252: Number of binary strings of length n with equal numbers of 00110 and 01010 substrings.

The programs for A164252, there is no canonical definition to state claims against.
-/

/-! ## A164252.P9372141186947830612

`∑[A055086(A148591(n))]`
-/

namespace A164252.P9372141186947830612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A148591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164252.P9372141186947830612

/-! ## A164252.P202606117062719114

`∑[A000267(A108630(n+1)-1)]`
-/

namespace A164252.P202606117062719114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A108630 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164252.P202606117062719114

/-! ## A164252.P12844024475630901587

`A164228(n)+A033665(A191309(n))`
-/

namespace A164252.P12844024475630901587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164228 n + A033665 (A191309 n).toNat

end

end A164252.P12844024475630901587

/-! ## A164252.P2091142889008372668

`A164242(n)-A055641(A000108(n))`
-/

namespace A164252.P2091142889008372668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164242 n - A055641 (A000108 n).toNat

end

end A164252.P2091142889008372668

/-!
# A164253: Number of binary strings of length n with equal numbers of 00110 and 01100 substrings.

The programs for A164253, there is no canonical definition to state claims against.
-/

/-! ## A164253.P12367142881311668648

`A178779(A018762(n+1))+A164211(n)`
-/

namespace A164253.P12367142881311668648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178779 (A018762 (n + 1)).toNat + A164211 n

end

end A164253.P12367142881311668648

/-! ## A164253.P10142420827142983486

`A164211(n)-A024362(A146701(n+1))`
-/

namespace A164253.P10142420827142983486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164211 n - A024362 (A146701 (n + 1)).toNat

end

end A164253.P10142420827142983486

/-! ## A164253.P9134654133989443541

`A164211(n)-A055641(A253433(n+1))`
-/

namespace A164253.P9134654133989443541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164211 n - A055641 (A253433 (n + 1)).toNat

end

end A164253.P9134654133989443541

/-!
# A164254: Number of binary strings of length n with equal numbers of 00110 and 01101 substrings.

The programs for A164254, there is no canonical definition to state claims against.
-/

/-! ## A164254.P3823228805497075325

`A164212(n)-A178779(A018762(n+1))`
-/

namespace A164254.P3823228805497075325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164212 n - A178779 (A018762 (n + 1)).toNat

end

end A164254.P3823228805497075325

/-! ## A164254.P12238186439172965324

`A164251(A062399(n))+A164253(n)-A164231(n)`
-/

namespace A164254.P12238186439172965324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 (A062399 n).toNat + (A164253 n - A164231 n)

end

end A164254.P12238186439172965324

/-! ## A164254.P10254824068435664862

`A164251(n)+A164253(n)-A164231(A351870(n))`
-/

namespace A164254.P10254824068435664862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 n + (A164253 n - A164231 (A351870 n).toNat)

end

end A164254.P10254824068435664862

/-! ## A164254.P6199950959967917722

`A164251(n)-(A164231(A062399(n))-A164253(n))`
-/

namespace A164254.P6199950959967917722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 n - (A164231 (A062399 n).toNat - A164253 n)

end

end A164254.P6199950959967917722

/-! ## A164254.P2715228755961101332

`A164192(n)+A005088(A148511(n))`
-/

namespace A164254.P2715228755961101332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164192 n + A005088 (A148511 n).toNat

end

end A164254.P2715228755961101332

/-!
# A164255: Number of binary strings of length n with equal numbers of 00110 and 10001 substrings.

The programs for A164255, there is no canonical definition to state claims against.
-/

/-! ## A164255.P15990888199054711668

`A164231(A062399(n))+A164251(n)-A164250(n)`
-/

namespace A164255.P15990888199054711668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 (A062399 n).toNat + (A164251 n - A164250 n)

end

end A164255.P15990888199054711668

/-! ## A164255.P4981055064548798232

`A164231(n)+A164251(n)-A164250(A351870(n))`
-/

namespace A164255.P4981055064548798232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 n + (A164251 n - A164250 (A351870 n).toNat)

end

end A164255.P4981055064548798232

/-! ## A164255.P577583573198282570

`A164251(A062399(n))-(A164250(n)-A164231(n))`
-/

namespace A164255.P577583573198282570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164251 (A062399 n).toNat - (A164250 n - A164231 n)

end

end A164255.P577583573198282570

/-! ## A164255.P681219977930190289

`∑[A307531(A085139(n))]`
-/

namespace A164255.P681219977930190289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (A085139 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164255.P681219977930190289

/-! ## A164255.P1097000948366400280

`A164224(n)+A121373(A212232(n+1))`
-/

namespace A164255.P1097000948366400280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164224 n + A121373 (A212232 (n + 1)).toNat

end

end A164255.P1097000948366400280

/-!
# A164256: Number of binary strings of length n with equal numbers of 00110 and 11001 substrings.

The programs for A164256, there is no canonical definition to state claims against.
-/

/-! ## A164256.P5705664150983852881

`∑[A335944(A148701(n))]`
-/

namespace A164256.P5705664150983852881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335944 (A148701 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164256.P5705664150983852881

/-! ## A164256.P8509319982412431461

`A073188(A148390(n+1))`
-/

namespace A164256.P8509319982412431461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A148390 (n + 1)).toNat

end

end A164256.P8509319982412431461

/-! ## A164256.P7113904235155052738

`A069905(∑[A195944(n+1)]+4)`
-/

namespace A164256.P7113904235155052738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A164256.P7113904235155052738

/-! ## A164256.P2717106244277716463

`A275544(n)+A171871(A364552(n))`
-/

namespace A164256.P2717106244277716463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275544 n + A171871 (A364552 n).toNat

end

end A164256.P2717106244277716463

/-!
# A164257: Number of binary strings of length n with equal numbers of 01001 and 01010 substrings.

The programs for A164257, there is no canonical definition to state claims against.
-/

/-! ## A164257.P9110808567908706459

`A257839(A308580(n))`
-/

namespace A164257.P9110808567908706459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A308580 n).toNat

end

end A164257.P9110808567908706459

/-! ## A164257.P10506142149263143149

`A033183(9*A308580(n))`
-/

namespace A164257.P10506142149263143149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (9 * A308580 n).toNat

end

end A164257.P10506142149263143149

/-! ## A164257.P7036325135391491381

`A180649(A000579(n))+A164216(n)`
-/

namespace A164257.P7036325135391491381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A000579 n).toNat + A164216 n

end

end A164257.P7036325135391491381

/-! ## A164257.P1777782461334395472

`A276571(A128734(n))+A000070(n)`
-/

namespace A164257.P1777782461334395472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A128734 n).toNat + A000070 n

end

end A164257.P1777782461334395472

/-!
# A164258: Number of binary strings of length n with equal numbers of 01001 and 01101 substrings.

The programs for A164258, there is no canonical definition to state claims against.
-/

/-! ## A164258.P13460525797539844555

`A161205(A279557(n+1))`
-/

namespace A164258.P13460525797539844555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A279557 (n + 1)).toNat

end

end A164258.P13460525797539844555

/-! ## A164258.P11602042623993551835

`A161205(A294007(n+5))`
-/

namespace A164258.P11602042623993551835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A294007 (n + 5)).toNat

end

end A164258.P11602042623993551835

/-! ## A164258.P18128145220675205026

`∑[A000194(∑[A149264(n)])]`
-/

namespace A164258.P18128145220675205026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164258.P18128145220675205026

/-! ## A164258.P3171620695113927225

`A358007((n+1)²)+A164264(n)`
-/

namespace A164258.P3171620695113927225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358007 ((n + 1) ^ 2 + 53) + A164264 n

end

end A164258.P3171620695113927225

/-!
# A164259: Number of binary strings of length n with equal numbers of 01001 and 10010 substrings.

The programs for A164259, there is no canonical definition to state claims against.
-/

/-! ## A164259.P15158008201843929735

`A185284(A024675(n+1)-2)+A164236(n)`
-/

namespace A164259.P15158008201843929735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A024675 (n + 1) - 2).toNat + A164236 n

end

end A164259.P15158008201843929735

/-! ## A164259.P6355154964192128893

`A350348(A079967(n+1))`
-/

namespace A164259.P6355154964192128893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A079967 (n + 1)).toNat

end

end A164259.P6355154964192128893

/-! ## A164259.P10067414581903238732

`A350348(A134044(n+1))`
-/

namespace A164259.P10067414581903238732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A134044 (n + 1)).toNat

end

end A164259.P10067414581903238732

/-! ## A164259.P7896089602337567940

`A350348(A192655(n+1))`
-/

namespace A164259.P7896089602337567940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A192655 (n + 1)).toNat

end

end A164259.P7896089602337567940

/-! ## A164259.P8481243084825620531

`A185284(A011972(n))+A164236(n)`
-/

namespace A164259.P8481243084825620531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A011972 n).toNat + A164236 n

end

end A164259.P8481243084825620531

/-!
# A164260: Number of binary strings of length n with equal numbers of 01001 and 10101 substrings.

The programs for A164260, there is no canonical definition to state claims against.
-/

/-! ## A164260.P6925422739071092638

`∑[A172471(A001678(n+4)²)]`
-/

namespace A164260.P6925422739071092638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A001678 (n + 4) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164260.P6925422739071092638

/-! ## A164260.P862383199272419123

`A100196(A018030(n)+A000225(n))`
-/

namespace A164260.P862383199272419123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A018030 n + A000225 n).toNat

end

end A164260.P862383199272419123

/-! ## A164260.P6323369344695000810

`A180649(A000013(n))+A164223(n)`
-/

namespace A164260.P6323369344695000810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A000013 n).toNat + A164223 n

end

end A164260.P6323369344695000810

/-! ## A164260.P4332369466897012040

`A164196(n)-A033665(A119002(n))`
-/

namespace A164260.P4332369466897012040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164196 n - A033665 (A119002 n).toNat

end

end A164260.P4332369466897012040

/-! ## A164260.P17574854854870271371

`A164217(n)-A033665(A119002(n))`
-/

namespace A164260.P17574854854870271371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164217 n - A033665 (A119002 n).toNat

end

end A164260.P17574854854870271371

/-!
# A164261: Number of binary strings of length n with equal numbers of 01001 and 10110 substrings.

The programs for A164261, there is no canonical definition to state claims against.
-/

/-! ## A164261.P2971825481467356942

`A004277(A164205(n))-A164209(n)`
-/

namespace A164261.P2971825481467356942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A164205 n).toNat - A164209 n

end

end A164261.P2971825481467356942

/-! ## A164261.P12165921267376072324

`A004277(A164238(n))-A164243(n)`
-/

namespace A164261.P12165921267376072324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A164238 n).toNat - A164243 n

end

end A164261.P12165921267376072324

/-! ## A164261.P14515011167095604558

`2*A164205(n)-(A005843(A164204(n))-A164225(n))`
-/

namespace A164261.P14515011167095604558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164205 n - (A005843 (A164204 n).toNat - A164225 n)

end

end A164261.P14515011167095604558

/-! ## A164261.P4648103285188470087

`A164206(n)-A075199(A131235(n))`
-/

namespace A164261.P4648103285188470087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164206 n - A075199 (A131235 n).toNat

end

end A164261.P4648103285188470087

/-!
# A164262: Number of binary strings of length n with equal numbers of 01010 and 10001 substrings.

The programs for A164262, there is no canonical definition to state claims against.
-/

/-! ## A164262.P9750205344850929541

`∑[∑[A108602(A098703(n)+1)]]+1`
-/

namespace A164262.P9750205344850929541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A098703 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A164262.P9750205344850929541

/-! ## A164262.P2848454091849099752

`A103632(2*n+3)+A010051(A004043(n+8))`
-/

namespace A164262.P2848454091849099752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (2 * n + 3) + A010051 (A004043 (n + 8)).toNat

end

end A164262.P2848454091849099752

/-! ## A164262.P2799284662729326650

`floor(∑[sqrt(A190915(n+2))])`
-/

namespace A164262.P2799284662729326650
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A190915 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A164262.P2799284662729326650

/-! ## A164262.P705186016812567576

`∑[A000196(∑[A005317(n)])]`
-/

namespace A164262.P705186016812567576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164262.P705186016812567576

/-! ## A164262.P16965563618273353728

`∑[A000196(∑[A126566(n)])]`
-/

namespace A164262.P16965563618273353728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164262.P16965563618273353728

/-!
# A164263: Number of binary strings of length n with equal numbers of 01010 and 10101 substrings.

The programs for A164263, there is no canonical definition to state claims against.
-/

/-! ## A164263.P18233167824801687955

`A157271(A147596(n+1)-A236380(n))`
-/

namespace A164263.P18233167824801687955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A147596 (n + 1) - A236380 n).toNat

end

end A164263.P18233167824801687955

/-! ## A164263.P9628278273652034378

`A008618(or(A027379(n), A242235(n+1)))`
-/

namespace A164263.P9628278273652034378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.lor (A027379 n) (A242235 (n + 1))).toNat

end

end A164263.P9628278273652034378

/-! ## A164263.P387183186986728567

`A008618(or(A055998(n), A242235(n+1)))`
-/

namespace A164263.P387183186986728567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.lor (A055998 n) (A242235 (n + 1))).toNat

end

end A164263.P387183186986728567

/-! ## A164263.P7791097343250822618

`A008618(or(A108392(3*n+1), A242235(n+1)))`
-/

namespace A164263.P7791097343250822618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.lor (A108392 (3 * n + 1)) (A242235 (n + 1))).toNat

end

end A164263.P7791097343250822618

/-! ## A164263.P11147514362886967779

`∑[∑[A108376(A114921(n))]]`
-/

namespace A164263.P11147514362886967779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108376 (A114921 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164263.P11147514362886967779

/-!
# A164264: Number of binary strings of length n with equal numbers of 01110 and 10001 substrings.

The programs for A164264, there is no canonical definition to state claims against.
-/

/-! ## A164264.P6207841233161731692

`A164201(n)-A060510(A148776(n))`
-/

namespace A164264.P6207841233161731692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164201 n - A060510 (A148776 n).toNat

end

end A164264.P6207841233161731692

/-! ## A164264.P17794763195182728222

`A164201(n)-A185238(A102526(n))`
-/

namespace A164264.P17794763195182728222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164201 n - A185238 (A102526 n).toNat

end

end A164264.P17794763195182728222

/-! ## A164264.P9323193519339297820

`A164201(n)-A286998(A164303(n))`
-/

namespace A164264.P9323193519339297820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164201 n - A286998 (A164303 n).toNat

end

end A164264.P9323193519339297820

/-! ## A164264.P7110279467308584500

`A164237(n)-A033665(∑[A191309(n)])`
-/

namespace A164264.P7110279467308584500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164237 n - A033665 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164264.P7110279467308584500

/-!
# A164265: Partial sums of A162766.

The programs for A164265, the canonical program `A164265.P11333839935283146567` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164265 has offset 1).

The definition of A164265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164265.P11333839935283146567

`3*a(n-2)+7` with `a(0)=4, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164265

/-- `3*a(n-2)+7` -/
def P11333839935283146567.Spec : Prop :=
  ∀ n, (P11333839935283146567.a n : ℤ) = A164265 (n + 1)

theorem P11333839935283146567.correct : P11333839935283146567.Spec := by
  intro n
  simp only [A164265, Nat.add_sub_cancel]

end A164265

/-! ## A164265.P3254541294839901330

`(11-4*(-1)^(n+1))*3^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2-7/2`
-/

namespace A164265.P3254541294839901330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (11 - 4 * (-1) ^ (n + 1) : ℝ) * (3 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ) / 2 - ((7 : ℚ) / 2 : ℝ)

end

end A164265.P3254541294839901330

namespace A164265

/-- `(11-4*(-1)^(n+1))*3^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2-7/2` -/
def P3254541294839901330.Spec : Prop :=
  ∀ n, P3254541294839901330.a n = (A164265 (n + 1) : ℝ)

end A164265

/-! ## A164265.P16638880050429479920

`∑[ogf((4+3x)/(1-3x^2))]`
-/

namespace A164265.P16638880050429479920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3] [1, 0, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164265.P16638880050429479920

namespace A164265

/-- `∑[ogf((4+3x)/(1-3x^2))]` -/
def P16638880050429479920.Spec : Prop :=
  ∀ n, P16638880050429479920.a n = A164265 (n + 1)

end A164265

/-! ## A164265.P11647708849081232049

`ogf((4+3x)/(1-x-3x^2+3x^3))`
-/

namespace A164265.P11647708849081232049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3] [1, -1, -3, 3] n

end

end A164265.P11647708849081232049

namespace A164265

/-- `ogf((4+3x)/(1-x-3x^2+3x^3))` -/
def P11647708849081232049.Spec : Prop :=
  ∀ n, P11647708849081232049.a n = A164265 (n + 1)

end A164265

/-! ## A164265.P4729710512805118585

`∑[3*a(n-2)]` with `a(0)=4, a(1)=3`
-/

namespace A164265.P4729710512805118585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164265.P4729710512805118585

namespace A164265

/-- `∑[3*a(n-2)]` -/
def P4729710512805118585.Spec : Prop :=
  ∀ n, (P4729710512805118585.a n : ℤ) = A164265 (n + 1)

end A164265

/-! ## A164265.P5975109667897826242

`∑[∏[3/a(n-1)]]` with `a(0)=4`
-/

namespace A164265.P5975109667897826242
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f2 =>
  3 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164265.P5975109667897826242

namespace A164265

/-- `∑[∏[3/a(n-1)]]` -/
def P5975109667897826242.Spec : Prop :=
  ∀ n, P5975109667897826242.a n = (A164265 (n + 1) : ℚ)

end A164265

/-! ## A164265.P14644011832603697665

`∑[a(n-2)/(1-2/3)]` with `a(0)=4, a(1)=3`
-/

namespace A164265.P14644011832603697665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  f1 (n - 2) / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164265.P14644011832603697665

namespace A164265

/-- `∑[a(n-2)/(1-2/3)]` -/
def P14644011832603697665.Spec : Prop :=
  ∀ n, P14644011832603697665.a n = (A164265 (n + 1) : ℚ)

end A164265

/-! ## A164265.P17125641338940811565

`∑[A162766(n+1)]`
-/

namespace A164265.P17125641338940811565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164265.P17125641338940811565

namespace A164265

/-- `∑[A162766(n+1)]` -/
def P17125641338940811565.Spec : Prop :=
  ∀ n, P17125641338940811565.a n = A164265 (n + 1)

end A164265

/-! ## A164265.P10780211673902068066

`∑[A074324(n+2)]`
-/

namespace A164265.P10780211673902068066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164265.P10780211673902068066

namespace A164265

/-- `∑[A074324(n+2)]` -/
def P10780211673902068066.Spec : Prop :=
  ∀ n, P10780211673902068066.a n = A164265 (n + 1)

end A164265

/-! ## A164265.P12372210093187031755

`∑[A166552(n+2)]`
-/

namespace A164265.P12372210093187031755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164265.P12372210093187031755

namespace A164265

/-- `∑[A166552(n+2)]` -/
def P12372210093187031755.Spec : Prop :=
  ∀ n, P12372210093187031755.a n = A164265 (n + 1)

end A164265

/-! ## A164265.P7837810807603569343

`∑[∑[A162852(n+1)]+1]`
-/

namespace A164265.P7837810807603569343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162852 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164265.P7837810807603569343

namespace A164265

/-- `∑[∑[A162852(n+1)]+1]` -/
def P7837810807603569343.Spec : Prop :=
  ∀ n, P7837810807603569343.a n = A164265 (n + 1)

end A164265

/-! ## A164265.P18286047537331788295

`∑[A000792(A168200(n+1))]`
-/

namespace A164265.P18286047537331788295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A168200 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164265.P18286047537331788295

namespace A164265

/-- `∑[A000792(A168200(n+1))]` -/
def P18286047537331788295.Spec : Prop :=
  ∀ n, P18286047537331788295.a n = A164265 (n + 1)

end A164265

/-!
# A164266: The count of primes between the n-th and (n+1)-st perfect number.

The programs for A164266, there is no canonical definition to state claims against.
-/

/-! ## A164266.P1013440086674520653

`Δ[A185174(n+1)]`
-/

namespace A164266.P1013440086674520653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164266.P1013440086674520653

/-! ## A164266.P4536067374149070510

`A185174(n+2)-A185174(n+1)`
-/

namespace A164266.P4536067374149070510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185174 (n + 2) - A185174 (n + 1)

end

end A164266.P4536067374149070510

/-!
# A164267: A Fibonacci convolution.

The programs for A164267, the canonical program `A164267.P12083113249208818540` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164267 has offset 0).

The definition of A164267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164267.P12083113249208818540

`2*a(n-1)+3*a(n-2)-4*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164267

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)+a(n-4)` -/
def P12083113249208818540.Spec : Prop :=
  ∀ n, P12083113249208818540.a n = A164267 n

theorem P12083113249208818540.correct : P12083113249208818540.Spec := by
  intro n
  simp only [A164267]

end A164267

/-! ## A164267.P410071637525344090

`ogf(x/(1-2x-3x^2+4x^3-x^4))`
-/

namespace A164267.P410071637525344090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -3, 4, -1] n

end

end A164267.P410071637525344090

namespace A164267

/-- `ogf(x/(1-2x-3x^2+4x^3-x^4))` -/
def P410071637525344090.Spec : Prop :=
  ∀ n, P410071637525344090.a n = A164267 n

end A164267

/-! ## A164267.P12640095237061434740

`∑[A049602(n)]`
-/

namespace A164267.P12640095237061434740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164267.P12640095237061434740

namespace A164267

/-- `∑[A049602(n)]` -/
def P12640095237061434740.Spec : Prop :=
  ∀ n, P12640095237061434740.a n = A164267 n

end A164267

/-! ## A164267.P2786476994856555411

`A000045(2*n)+a(n-2)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A164267.P2786476994856555411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 (2 * n) + (a (n - 2) - a (n - 1))

end

end A164267.P2786476994856555411

namespace A164267

/-- `A000045(2*n)+a(n-2)-a(n-1)` -/
def P2786476994856555411.Spec : Prop :=
  ∀ n, P2786476994856555411.a n = A164267 n

end A164267

/-! ## A164267.P683490231873256450

`A108479(n)-A106511(n)`
-/

namespace A164267.P683490231873256450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108479 n - A106511 n

end

end A164267.P683490231873256450

namespace A164267

/-- `A108479(n)-A106511(n)` -/
def P683490231873256450.Spec : Prop :=
  ∀ n, P683490231873256450.a n = A164267 n

end A164267

/-! ## A164267.P6048443027381941793

`∑[A001906(n)-A049601(n)]`
-/

namespace A164267.P6048443027381941793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A049601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164267.P6048443027381941793

namespace A164267

/-- `∑[A001906(n)-A049601(n)]` -/
def P6048443027381941793.Spec : Prop :=
  ∀ n, P6048443027381941793.a n = A164267 n

end A164267

/-! ## A164267.P11210179237506495464

`A094966(n)+A056014(n+1)`
-/

namespace A164267.P11210179237506495464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + A056014 (n + 1)

end

end A164267.P11210179237506495464

namespace A164267

/-- `A094966(n)+A056014(n+1)` -/
def P11210179237506495464.Spec : Prop :=
  ∀ n, P11210179237506495464.a n = A164267 n

end A164267

/-! ## A164267.P11215191484332133486

`A005207(n+1)-A094967(n)`
-/

namespace A164267.P11215191484332133486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) - A094967 n

end

end A164267.P11215191484332133486

namespace A164267

/-- `A005207(n+1)-A094967(n)` -/
def P11215191484332133486.Spec : Prop :=
  ∀ n, P11215191484332133486.a n = A164267 n

end A164267

/-! ## A164267.P8312284302371305748

`A005252(2*n)-A106511(n)`
-/

namespace A164267.P8312284302371305748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (2 * n) - A106511 n

end

end A164267.P8312284302371305748

namespace A164267

/-- `A005252(2*n)-A106511(n)` -/
def P8312284302371305748.Spec : Prop :=
  ∀ n, P8312284302371305748.a n = A164267 n

end A164267

/-! ## A164267.P12349656644469012011

`A094686(2*n)-A106511(n)`
-/

namespace A164267.P12349656644469012011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (2 * n) - A106511 n

end

end A164267.P12349656644469012011

namespace A164267

/-- `A094686(2*n)-A106511(n)` -/
def P12349656644469012011.Spec : Prop :=
  ∀ n, P12349656644469012011.a n = A164267 n

end A164267

/-! ## A164267.P18366291589579999977

`∑[A000045(2*n)-A049601(n)]`
-/

namespace A164267.P18366291589579999977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A049601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164267.P18366291589579999977

namespace A164267

/-- `∑[A000045(2*n)-A049601(n)]` -/
def P18366291589579999977.Spec : Prop :=
  ∀ n, P18366291589579999977.a n = A164267 n

end A164267

/-! ## A164267.P7940938107713249813

`∑[(A000032(n)-(-1)^n)*A000045(n)/2]`
-/

namespace A164267.P7940938107713249813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000032 n - (-1) ^ n) * A000045 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164267.P7940938107713249813

namespace A164267

/-- `∑[(A000032(n)-(-1)^n)*A000045(n)/2]` -/
def P7940938107713249813.Spec : Prop :=
  ∀ n, P7940938107713249813.a n = (A164267 n : ℚ)

end A164267

/-! ## A164267.P17394939651477232252

`A005207(n+1)-A122367(A002265(2*n))`
-/

namespace A164267.P17394939651477232252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) - A122367 (A002265 (2 * n)).toNat

end

end A164267.P17394939651477232252

namespace A164267

/-- `A005207(n+1)-A122367(A002265(2*n))` -/
def P17394939651477232252.Spec : Prop :=
  ∀ n, P17394939651477232252.a n = A164267 n

end A164267

/-! ## A164267.P4647284129829382503

`A033192(n+1)+A033192(n)-A094967(n)`
-/

namespace A164267.P4647284129829382503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) + (A033192 n - A094967 n)

end

end A164267.P4647284129829382503

namespace A164267

/-- `A033192(n+1)+A033192(n)-A094967(n)` -/
def P4647284129829382503.Spec : Prop :=
  ∀ n, P4647284129829382503.a n = A164267 n

end A164267

/-! ## A164267.P16813641820588335119

`A192352(n+2)+A049601(n)-A049602(n)`
-/

namespace A164267.P16813641820588335119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192352 (n + 2) + (A049601 n - A049602 n)

end

end A164267.P16813641820588335119

namespace A164267

/-- `A192352(n+2)+A049601(n)-A049602(n)` -/
def P16813641820588335119.Spec : Prop :=
  ∀ n, P16813641820588335119.a n = A164267 n

end A164267

/-! ## A164267.P5219809617331598293

`A059512(n+1)+A094966(n)-A000045(n+1)`
-/

namespace A164267.P5219809617331598293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 (n + 1) + (A094966 n - A000045 (n + 1))

end

end A164267.P5219809617331598293

namespace A164267

/-- `A059512(n+1)+A094966(n)-A000045(n+1)` -/
def P5219809617331598293.Spec : Prop :=
  ∀ n, P5219809617331598293.a n = A164267 n

end A164267

/-! ## A164267.P12507830415783913150

`A049601(n+1)-A049602(n)`
-/

namespace A164267.P12507830415783913150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049601 (n + 1) - A049602 n

end

end A164267.P12507830415783913150

namespace A164267

/-- `A049601(n+1)-A049602(n)` -/
def P12507830415783913150.Spec : Prop :=
  ∀ n, P12507830415783913150.a n = A164267 n

end A164267

/-! ## A164267.P5565151031774263152

`(A096140(n)+A005013(n))/2`
-/

namespace A164267.P5565151031774263152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096140 n + A005013 n : ℚ) / 2

end

end A164267.P5565151031774263152

namespace A164267

/-- `(A096140(n)+A005013(n))/2` -/
def P5565151031774263152.Spec : Prop :=
  ∀ n, P5565151031774263152.a n = (A164267 n : ℚ)

end A164267

/-! ## A164267.P3994074329214393767

`(record[A119282(n)]-A119282(n))/2`
-/

namespace A164267.P3994074329214393767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A119282 n : ℚ) / 2

end

end A164267.P3994074329214393767

namespace A164267

/-- `(record[A119282(n)]-A119282(n))/2` -/
def P3994074329214393767.Spec : Prop :=
  ∀ n, P3994074329214393767.a n = (A164267 n : ℚ)

end A164267

/-!
# A164269: Expansion of q * f(q^9)^3 * phi(q) / (f(q^3) * phi(q^3)^3) in powers of q where f(), phi() are Ramanujan theta functions.

The programs for A164269, there is no canonical definition to state claims against.
-/

/-! ## A164269.P10150749514459477058

`A010892(n)*A128129(n+1)`
-/

namespace A164269.P10150749514459477058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A128129 (n + 1)

end

end A164269.P10150749514459477058

/-! ## A164269.P9736003124526376993

`A010892(n)*A132975(2*(n+1))`
-/

namespace A164269.P9736003124526376993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A132975 (2 * (n + 1))

end

end A164269.P9736003124526376993

/-! ## A164269.P14203814038131950803

`record[A145977(n)]*A010892(n)`
-/

namespace A164269.P14203814038131950803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A010892 n

end

end A164269.P14203814038131950803

/-! ## A164269.P18133887398072392788

`A010892(n)*A213267(A103517(n))`
-/

namespace A164269.P18133887398072392788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A213267 (A103517 n).toNat

end

end A164269.P18133887398072392788

/-!
# A164270: Expansion of f(x^3)^3 * phi(x^3) / (f(x) * phi(x)^3) in powers of x where f(), phi() are Ramanujan theta functions.

The programs for A164270, there is no canonical definition to state claims against.
-/

/-! ## A164270.P7220971675797527801

`A164269(3*n+1)`
-/

namespace A164270.P7220971675797527801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164269 (3 * n + 1)

end

end A164270.P7220971675797527801

/-! ## A164270.P12311941901852486510

`A128129(3*n+1)/(-1)^n`
-/

namespace A164270.P12311941901852486510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128129 (3 * n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A164270.P12311941901852486510

/-! ## A164270.P8900281490962053210

`or(A000007(n), A164269(A016777(n)))`
-/

namespace A164270.P8900281490962053210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A164269 (A016777 n).toNat)

end

end A164270.P8900281490962053210

/-! ## A164270.P10450058293140282215

`A057077(2*n)*A128129(A016777(n))`
-/

namespace A164270.P10450058293140282215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A128129 (A016777 n).toNat

end

end A164270.P10450058293140282215

/-! ## A164270.P14367799819376157301

`(-1)^n*A122830(A016933(n))`
-/

namespace A164270.P14367799819376157301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122830 (A016933 n).toNat

end

end A164270.P14367799819376157301

/-!
# A164271: Expansion of ( f(-q^2) * f(q^3) * f(-q^6) / f(q)^3 )^2 in powers of q where f() is a Ramanujan theta function.

The programs for A164271, there is no canonical definition to state claims against.
-/

/-! ## A164271.P18433936381589882943

`A033999(n)*A233698(n)`
-/

namespace A164271.P18433936381589882943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A233698 n

end

end A164271.P18433936381589882943

/-! ## A164271.P17323560706158516056

`A057077(2*n)*A233698(n)`
-/

namespace A164271.P17323560706158516056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A233698 n

end

end A164271.P17323560706158516056

/-! ## A164271.P7304368290124157279

`(3-2*A000034(n))*A233698(n)`
-/

namespace A164271.P7304368290124157279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - 2 * A000034 n) * A233698 n

end

end A164271.P7304368290124157279

/-! ## A164271.P11153182292933264978

`A233698(n)/(A014681(n+1)-(n+1))`
-/

namespace A164271.P11153182292933264978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233698 n : ℚ) / (A014681 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A164271.P11153182292933264978

/-! ## A164271.P7903983908197048176

`A132977(2*n+1)/(2*A057077(2*n))`
-/

namespace A164271.P7903983908197048176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132977 (2 * n + 1) : ℚ) / (2 * A057077 (2 * n) : ℚ)

end

end A164271.P7903983908197048176

/-! ## A164271.P2799326057454051196

`A132977(n)/A258099(n)*A233698(n)`
-/

namespace A164271.P2799326057454051196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132977 n : ℚ) / (A258099 n : ℚ) * (A233698 n : ℚ)

end

end A164271.P2799326057454051196

/-! ## A164271.P15134978264099047155

`A233698(n)/A261325(n)*A261446(n)`
-/

namespace A164271.P15134978264099047155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233698 n : ℚ) / (A261325 n : ℚ) * (A261446 n : ℚ)

end

end A164271.P15134978264099047155

/-! ## A164271.P3991364612080657021

`A258099(2*n+1)/(2*A033999(n+1))`
-/

namespace A164271.P3991364612080657021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258099 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A164271.P3991364612080657021

/-! ## A164271.P5320511337619574589

`A164269(3*n+2)/2`
-/

namespace A164271.P5320511337619574589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164269 (3 * n + 2) : ℚ) / 2

end

end A164271.P5320511337619574589

/-!
# A164272: Expansion of phi(q) * phi(-q^3) in powers of q where phi() is a Ramanujan theta function.

The programs for A164272, there is no canonical definition to state claims against.
-/

/-! ## A164272.P2405499926497265054

`(-1)^n*A164273(n)`
-/

namespace A164272.P2405499926497265054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A164273 n

end

end A164272.P2405499926497265054

/-! ## A164272.P6744800431276388172

`A164273(n)/A131379(lcm(2, n))`
-/

namespace A164272.P6744800431276388172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164273 n : ℚ) / (A131379 (Nat.lcm 2 n) : ℚ)

end

end A164272.P6744800431276388172

/-! ## A164272.P11930608817697155476

`A164273(A347365(n))`
-/

namespace A164272.P11930608817697155476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164273 (A347365 n).toNat

end

end A164272.P11930608817697155476

/-! ## A164272.P15486398688816486816

`A164273(3*n)`
-/

namespace A164272.P15486398688816486816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164273 (3 * n)

end

end A164272.P15486398688816486816

/-! ## A164272.P9715552897463730753

`A164273(A005843(n)+n)%A005843(n+1)`
-/

namespace A164272.P9715552897463730753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164273 (A005843 n + (n : ℤ)).toNat) (A005843 (n + 1))

end

end A164272.P9715552897463730753

/-! ## A164272.P3508082681893036484

`A138270(12*n)`
-/

namespace A164272.P3508082681893036484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138270 (12 * n)

end

end A164272.P3508082681893036484

/-!
# A164273: Expansion of phi(-q) * phi(q^3) in powers of q where phi() is a Ramanujan theta function.

The programs for A164273, there is no canonical definition to state claims against.
-/

/-! ## A164273.P11127790828123775155

`(-1)^n*A164272(n)`
-/

namespace A164273.P11127790828123775155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A164272 n

end

end A164273.P11127790828123775155

/-! ## A164273.P18113061337117084940

`A164272(n)*A210628(Δ[A008619(n)])`
-/

namespace A164273.P18113061337117084940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164272 n * A210628 (f1 (n + 1) - f1 n).toNat

end

end A164273.P18113061337117084940

/-! ## A164273.P9174007645767125431

`A164272(n)*A309873(A007947(n+1))`
-/

namespace A164273.P9174007645767125431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164272 n * A309873 (A007947 (n + 1)).toNat

end

end A164273.P9174007645767125431

/-! ## A164273.P2841785239831093117

`A164272(n)/A210628(Δ[A008619(n)]²)`
-/

namespace A164273.P2841785239831093117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164272 n : ℚ) / (A210628 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A164273.P2841785239831093117

/-! ## A164273.P5395509500261239998

`A164272(A347365(n))`
-/

namespace A164273.P5395509500261239998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164272 (A347365 n).toNat

end

end A164273.P5395509500261239998

/-! ## A164273.P4927300650941445402

`A164272(3*n)`
-/

namespace A164273.P4927300650941445402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164272 (3 * n)

end

end A164273.P4927300650941445402

/-! ## A164273.P17935839832120335698

`A138270(4*n)`
-/

namespace A164273.P17935839832120335698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138270 (4 * n)

end

end A164273.P17935839832120335698

/-!
# A164274: (n-th isolated prime) plus (n-th isolated composite).

The programs for A164274, the canonical program `A164274.P11426709217476400918` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164274 has offset 1).

The definition of A164274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164274.P11426709217476400918

`A007510(n+1)+A014574(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A164274

/-- `A007510(n+1)+A014574(n+1)` -/
def P11426709217476400918.Spec : Prop :=
  ∀ n, P11426709217476400918.a n = A164274 (n + 1)

theorem P11426709217476400918.correct : P11426709217476400918.Spec := by
  intro n
  simp only [A164274, Nat.add_sub_cancel]

end A164274

/-! ## A164274.P588196473755504537

`A167277(n+1)+A006512(n+1)`
-/

namespace A164274.P588196473755504537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1) + A006512 (n + 1)

end

end A164274.P588196473755504537

namespace A164274

/-- `A167277(n+1)+A006512(n+1)` -/
def P588196473755504537.Spec : Prop :=
  ∀ n, P588196473755504537.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P15226534504669006929

`A007510(n+1)+sqrt(A075369(n+1))`
-/

namespace A164274.P15226534504669006929
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007510 (n + 1) : ℝ) + Real.sqrt (A075369 (n + 1) : ℝ)

end

end A164274.P15226534504669006929

namespace A164274

/-- `A007510(n+1)+sqrt(A075369(n+1))` -/
def P15226534504669006929.Spec : Prop :=
  ∀ n, P15226534504669006929.a n = (A164274 (n + 1) : ℝ)

end A164274

/-! ## A164274.P1927537492525718365

`A001359(n+1)+A007510(n+1)+1`
-/

namespace A164274.P1927537492525718365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A007510 (n + 1) + 1)

end

end A164274.P1927537492525718365

namespace A164274

/-- `A001359(n+1)+A007510(n+1)+1` -/
def P1927537492525718365.Spec : Prop :=
  ∀ n, P1927537492525718365.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P3098974780904697156

`A014574(n+1)+A167277(n+1)+1`
-/

namespace A164274.P3098974780904697156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + (A167277 (n + 1) + 1)

end

end A164274.P3098974780904697156

namespace A164274

/-- `A014574(n+1)+A167277(n+1)+1` -/
def P3098974780904697156.Spec : Prop :=
  ∀ n, P3098974780904697156.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P478840113431197581

`A006512(n+1)+A007510(n+1)-1`
-/

namespace A164274.P478840113431197581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + (A007510 (n + 1) - 1)

end

end A164274.P478840113431197581

namespace A164274

/-- `A006512(n+1)+A007510(n+1)-1` -/
def P478840113431197581.Spec : Prop :=
  ∀ n, P478840113431197581.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P455984358083649412

`A007510(n+1)+A144834(n+1)+2`
-/

namespace A164274.P455984358083649412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + (A144834 (n + 1) + 2)

end

end A164274.P455984358083649412

namespace A164274

/-- `A007510(n+1)+A144834(n+1)+2` -/
def P455984358083649412.Spec : Prop :=
  ∀ n, P455984358083649412.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P9991083259176587097

`A001359(n+1)+A167277(n+1)+2`
-/

namespace A164274.P9991083259176587097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A167277 (n + 1) + 2)

end

end A164274.P9991083259176587097

namespace A164274

/-- `A001359(n+1)+A167277(n+1)+2` -/
def P9991083259176587097.Spec : Prop :=
  ∀ n, P9991083259176587097.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P14093340349093191159

`A007510(n+1)+2*A040040(n+1)`
-/

namespace A164274.P14093340349093191159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + 2 * A040040 (n + 1)

end

end A164274.P14093340349093191159

namespace A164274

/-- `A007510(n+1)+2*A040040(n+1)` -/
def P14093340349093191159.Spec : Prop :=
  ∀ n, P14093340349093191159.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P721452043359332075

`A007510(n+1)+A054735(n+1)/2`
-/

namespace A164274.P721452043359332075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007510 (n + 1) : ℚ) + (A054735 (n + 1) : ℚ) / 2

end

end A164274.P721452043359332075

namespace A164274

/-- `A007510(n+1)+A054735(n+1)/2` -/
def P721452043359332075.Spec : Prop :=
  ∀ n, P721452043359332075.a n = (A164274 (n + 1) : ℚ)

end A164274

/-! ## A164274.P5715894941114439306

`A007510(n+1)+A111166(n+1)+A054977(n)`
-/

namespace A164274.P5715894941114439306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + (A111166 (n + 1) + A054977 n)

end

end A164274.P5715894941114439306

namespace A164274

/-- `A007510(n+1)+A111166(n+1)+A054977(n)` -/
def P5715894941114439306.Spec : Prop :=
  ∀ n, P5715894941114439306.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P3683605075128046941

`A007510(n+1)+A168497(n+2)+A168497(n+2)`
-/

namespace A164274.P3683605075128046941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + (A168497 (n + 2) + A168497 (n + 2))

end

end A164274.P3683605075128046941

namespace A164274

/-- `A007510(n+1)+A168497(n+2)+A168497(n+2)` -/
def P3683605075128046941.Spec : Prop :=
  ∀ n, P3683605075128046941.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P6827307970563103072

`A014574(n+1)+p?[A167706(n+1)]`
-/

namespace A164274.P6827307970563103072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164274.P6827307970563103072

namespace A164274

/-- `A014574(n+1)+p?[A167706(n+1)]` -/
def P6827307970563103072.Spec : Prop :=
  ∀ n, P6827307970563103072.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P5774964223649231680

`A001359(n+1)+A000203(A007510(n+1))`
-/

namespace A164274.P5774964223649231680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + A000203 (A007510 (n + 1)).toNat

end

end A164274.P5774964223649231680

namespace A164274

/-- `A001359(n+1)+A000203(A007510(n+1))` -/
def P5774964223649231680.Spec : Prop :=
  ∀ n, P5774964223649231680.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P944846661290760636

`A006512(n+1)+A000010(A007510(n+1))`
-/

namespace A164274.P944846661290760636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + A000010 (A007510 (n + 1)).toNat

end

end A164274.P944846661290760636

namespace A164274

/-- `A006512(n+1)+A000010(A007510(n+1))` -/
def P944846661290760636.Spec : Prop :=
  ∀ n, P944846661290760636.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P15745927893079703877

`A077800(A005408(n))+A000203(A007510(n+1))`
-/

namespace A164274.P15745927893079703877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A005408 n).toNat + A000203 (A007510 (n + 1)).toNat

end

end A164274.P15745927893079703877

namespace A164274

/-- `A077800(A005408(n))+A000203(A007510(n+1))` -/
def P15745927893079703877.Spec : Prop :=
  ∀ n, P15745927893079703877.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P6327668712990366866

`A014574(n+1)+p?[A062729(n+1)]`
-/

namespace A164274.P6327668712990366866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164274.P6327668712990366866

namespace A164274

/-- `A014574(n+1)+p?[A062729(n+1)]` -/
def P6327668712990366866.Spec : Prop :=
  ∀ n, P6327668712990366866.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P8875309968861920588

`A006512(n+1)+p?[A062729(n+1)]-1`
-/

namespace A164274.P8875309968861920588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A164274.P8875309968861920588

namespace A164274

/-- `A006512(n+1)+p?[A062729(n+1)]-1` -/
def P8875309968861920588.Spec : Prop :=
  ∀ n, P8875309968861920588.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P15503314042577563029

`A007510(n+1)+A000040(A107770(n+1))-1`
-/

namespace A164274.P15503314042577563029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + (A000040 (A107770 (n + 1)).toNat - 1)

end

end A164274.P15503314042577563029

namespace A164274

/-- `A007510(n+1)+A000040(A107770(n+1))-1` -/
def P15503314042577563029.Spec : Prop :=
  ∀ n, P15503314042577563029.a n = A164274 (n + 1)

end A164274

/-! ## A164274.P16722705155688940549

`p?[A000040(n+1)+2]+A000010(A007510(n+1))`
-/

namespace A164274.P16722705155688940549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000010 (A007510 (n + 1)).toNat

end

end A164274.P16722705155688940549

namespace A164274

/-- `p?[A000040(n+1)+2]+A000010(A007510(n+1))` -/
def P16722705155688940549.Spec : Prop :=
  ∀ n, P16722705155688940549.a n = A164274 (n + 1)

end A164274

/-!
# A164275: The absolute value of (the n-th isolated composite minus the n-th isolated prime).

The programs for A164275, the canonical program `A164275.P16688256668584044959` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164275 has offset 1).

The definition of A164275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164275.P16688256668584044959

`abs(A007510(n+1)-A014574(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A164275

/-- `abs(A007510(n+1)-A014574(n+1))` -/
def P16688256668584044959.Spec : Prop :=
  ∀ n, P16688256668584044959.a n = A164275 (n + 1)

theorem P16688256668584044959.correct : P16688256668584044959.Spec := by
  intro n
  simp only [A164275, Nat.add_sub_cancel]

end A164275

/-! ## A164275.P10824728851419677235

`abs(A007510(n+1)-sqrt(A075369(n+1)))`
-/

namespace A164275.P10824728851419677235
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(A007510 (n + 1) : ℝ) - Real.sqrt (A075369 (n + 1) : ℝ)|

end

end A164275.P10824728851419677235

namespace A164275

/-- `abs(A007510(n+1)-sqrt(A075369(n+1)))` -/
def P10824728851419677235.Spec : Prop :=
  ∀ n, P10824728851419677235.a n = (A164275 (n + 1) : ℝ)

end A164275

/-! ## A164275.P9900905045467232171

`abs(A006512(n+1)-1-A007510(n+1))`
-/

namespace A164275.P9900905045467232171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006512 (n + 1) - 1 - A007510 (n + 1)|

end

end A164275.P9900905045467232171

namespace A164275

/-- `abs(A006512(n+1)-1-A007510(n+1))` -/
def P9900905045467232171.Spec : Prop :=
  ∀ n, P9900905045467232171.a n = A164275 (n + 1)

end A164275

/-! ## A164275.P11385763346241683348

`abs(2*A040040(n+1)-A007510(n+1))`
-/

namespace A164275.P11385763346241683348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A040040 (n + 1) - A007510 (n + 1)|

end

end A164275.P11385763346241683348

namespace A164275

/-- `abs(2*A040040(n+1)-A007510(n+1))` -/
def P11385763346241683348.Spec : Prop :=
  ∀ n, P11385763346241683348.a n = A164275 (n + 1)

end A164275

/-! ## A164275.P12947017455026757192

`abs(A007510(n+1)-A054735(n+1)/2)`
-/

namespace A164275.P12947017455026757192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A007510 (n + 1) : ℚ) - (A054735 (n + 1) : ℚ) / 2|

end

end A164275.P12947017455026757192

namespace A164275

/-- `abs(A007510(n+1)-A054735(n+1)/2)` -/
def P12947017455026757192.Spec : Prop :=
  ∀ n, P12947017455026757192.a n = (A164275 (n + 1) : ℚ)

end A164275

/-! ## A164275.P18039983433903970183

`abs(A007510(n+1)-(A176810(n+1)/2-1))`
-/

namespace A164275.P18039983433903970183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A007510 (n + 1) : ℚ) - ((A176810 (n + 1) : ℚ) / 2 - 1)|

end

end A164275.P18039983433903970183

namespace A164275

/-- `abs(A007510(n+1)-(A176810(n+1)/2-1))` -/
def P18039983433903970183.Spec : Prop :=
  ∀ n, P18039983433903970183.a n = (A164275 (n + 1) : ℚ)

end A164275

/-! ## A164275.P4715638692686424219

`abs(2*A040040(n+1)-(A167397(n+1)+1+n))`
-/

namespace A164275.P4715638692686424219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A040040 (n + 1) - (A167397 (n + 1) + 1 + (n : ℤ))|

end

end A164275.P4715638692686424219

namespace A164275

/-- `abs(2*A040040(n+1)-(A167397(n+1)+1+n))` -/
def P4715638692686424219.Spec : Prop :=
  ∀ n, P4715638692686424219.a n = A164275 (n + 1)

end A164275

/-! ## A164275.P17057927294404264178

`abs(A111046(n+1)/4-(A167397(n+1)+1+n))`
-/

namespace A164275.P17057927294404264178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A111046 (n + 1) : ℚ) / 4 - (A167397 (n + 1) + 1 + (n : ℤ) : ℚ)|

end

end A164275.P17057927294404264178

namespace A164275

/-- `abs(A111046(n+1)/4-(A167397(n+1)+1+n))` -/
def P17057927294404264178.Spec : Prop :=
  ∀ n, P17057927294404264178.a n = (A164275 (n + 1) : ℚ)

end A164275

/-! ## A164275.P11836271385085235308

`abs(A111166(n+1)+A054977(n)-A007510(n+1))`
-/

namespace A164275.P11836271385085235308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111166 (n + 1) + A054977 n - A007510 (n + 1)|

end

end A164275.P11836271385085235308

namespace A164275

/-- `abs(A111166(n+1)+A054977(n)-A007510(n+1))` -/
def P11836271385085235308.Spec : Prop :=
  ∀ n, P11836271385085235308.a n = A164275 (n + 1)

end A164275

/-! ## A164275.P15202463042223215131

`abs(A144834(n+1)+2-(A161165(n+1)-A001097(n+1)))`
-/

namespace A164275.P15202463042223215131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144834 (n + 1) + 2 - (A161165 (n + 1) - A001097 (n + 1))|

end

end A164275.P15202463042223215131

namespace A164275

/-- `abs(A144834(n+1)+2-(A161165(n+1)-A001097(n+1)))` -/
def P15202463042223215131.Spec : Prop :=
  ∀ n, P15202463042223215131.a n = A164275 (n + 1)

end A164275

/-! ## A164275.P12102656320355189929

`abs(A144834(n+1)+2-(A163654(n+1)-A134797(n+1)))`
-/

namespace A164275.P12102656320355189929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144834 (n + 1) + 2 - (A163654 (n + 1) - A134797 (n + 1))|

end

end A164275.P12102656320355189929

namespace A164275

/-- `abs(A144834(n+1)+2-(A163654(n+1)-A134797(n+1)))` -/
def P12102656320355189929.Spec : Prop :=
  ∀ n, P12102656320355189929.a n = A164275 (n + 1)

end A164275

/-! ## A164275.P5532209103819262019

`abs(A163654(n+1)-A134797(n+1)-2*A040040(n+1))`
-/

namespace A164275.P5532209103819262019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163654 (n + 1) - A134797 (n + 1) - 2 * A040040 (n + 1)|

end

end A164275.P5532209103819262019

namespace A164275

/-- `abs(A163654(n+1)-A134797(n+1)-2*A040040(n+1))` -/
def P5532209103819262019.Spec : Prop :=
  ∀ n, P5532209103819262019.a n = A164275 (n + 1)

end A164275

/-! ## A164275.P8756097900780917569

`abs(A163654(n+1)-A134797(n+1)-A111046(n+1)/4)`
-/

namespace A164275.P8756097900780917569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A163654 (n + 1) - A134797 (n + 1) : ℚ) - (A111046 (n + 1) : ℚ) / 4|

end

end A164275.P8756097900780917569

namespace A164275

/-- `abs(A163654(n+1)-A134797(n+1)-A111046(n+1)/4)` -/
def P8756097900780917569.Spec : Prop :=
  ∀ n, P8756097900780917569.a n = (A164275 (n + 1) : ℚ)

end A164275

/-! ## A164275.P11870590580467867255

`abs(A167397(n+1)+1+n-(A111166(n+1)+A054977(n)))`
-/

namespace A164275.P11870590580467867255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167397 (n + 1) + 1 + (n : ℤ) - (A111166 (n + 1) + A054977 n)|

end

end A164275.P11870590580467867255

namespace A164275

/-- `abs(A167397(n+1)+1+n-(A111166(n+1)+A054977(n)))` -/
def P11870590580467867255.Spec : Prop :=
  ∀ n, P11870590580467867255.a n = A164275 (n + 1)

end A164275

/-! ## A164275.P6799886242903114521

`abs(A164274(n+1)+1-A006512(n+1)-2*A040040(n+1))`
-/

namespace A164275.P6799886242903114521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164274 (n + 1) + (1 - A006512 (n + 1)) - 2 * A040040 (n + 1)|

end

end A164275.P6799886242903114521

namespace A164275

/-- `abs(A164274(n+1)+1-A006512(n+1)-2*A040040(n+1))` -/
def P6799886242903114521.Spec : Prop :=
  ∀ n, P6799886242903114521.a n = A164275 (n + 1)

end A164275

/-! ## A164275.P11377949992151925716

`abs(A164274(n+1)+1-A006512(n+1)-A111046(n+1)/4)`
-/

namespace A164275.P11377949992151925716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A164274 (n + 1) + (1 - A006512 (n + 1)) : ℚ) - (A111046 (n + 1) : ℚ) / 4|

end

end A164275.P11377949992151925716

namespace A164275

/-- `abs(A164274(n+1)+1-A006512(n+1)-A111046(n+1)/4)` -/
def P11377949992151925716.Spec : Prop :=
  ∀ n, P11377949992151925716.a n = (A164275 (n + 1) : ℚ)

end A164275

/-! ## A164275.P5902932687582766562

`abs(A164274(n+1)-A111046(n+1)/4-(A144834(n+1)+2))`
-/

namespace A164275.P5902932687582766562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A164274 (n + 1) : ℚ) - (A111046 (n + 1) : ℚ) / 4 - (A144834 (n + 1) + 2 : ℚ)|

end

end A164275.P5902932687582766562

namespace A164275

/-- `abs(A164274(n+1)-A111046(n+1)/4-(A144834(n+1)+2))` -/
def P5902932687582766562.Spec : Prop :=
  ∀ n, P5902932687582766562.a n = (A164275 (n + 1) : ℚ)

end A164275

/-! ## A164275.P15220512188287695242

`abs(A164274(n+1)-A111046(n+1)/4-2*A040040(n+1))`
-/

namespace A164275.P15220512188287695242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A164274 (n + 1) : ℚ) - (A111046 (n + 1) : ℚ) / 4 - (2 * A040040 (n + 1) : ℚ)|

end

end A164275.P15220512188287695242

namespace A164275

/-- `abs(A164274(n+1)-A111046(n+1)/4-2*A040040(n+1))` -/
def P15220512188287695242.Spec : Prop :=
  ∀ n, P15220512188287695242.a n = (A164275 (n + 1) : ℚ)

end A164275

/-! ## A164275.P4128605768043886443

`abs(A176915(n+1)+A078571(n+1)-(A167397(n+1)+1+n))`
-/

namespace A164275.P4128605768043886443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176915 (n + 1) + A078571 (n + 1) - (A167397 (n + 1) + 1 + (n : ℤ))|

end

end A164275.P4128605768043886443

namespace A164275

/-- `abs(A176915(n+1)+A078571(n+1)-(A167397(n+1)+1+n))` -/
def P4128605768043886443.Spec : Prop :=
  ∀ n, P4128605768043886443.a n = A164275 (n + 1)

end A164275

/-! ## A164275.P3145264656393975680

`abs(A014574(n+1)-p?[A167706(n+1)])`
-/

namespace A164275.P3145264656393975680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014574 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A164275.P3145264656393975680

namespace A164275

/-- `abs(A014574(n+1)-p?[A167706(n+1)])` -/
def P3145264656393975680.Spec : Prop :=
  ∀ n, P3145264656393975680.a n = A164275 (n + 1)

end A164275

/-!
# A164276: The non-isolated nonprimes.

The programs for A164276, the canonical program `A164276.P18321897255352052551` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164276 has offset 1).

The definition of A164276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164276.P10377999721893086827

`lt[0, A292438(n)]`
-/

namespace A164276.P10377999721893086827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164276.P10377999721893086827

namespace A164276

/-- `lt[0, A292438(n)]` -/
def P10377999721893086827.Spec : Prop :=
  ∀ n, (P10377999721893086827.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P3747519377085013124

`comp[A174219(n+1)]`
-/

namespace A164276.P3747519377085013124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164276.P3747519377085013124

namespace A164276

/-- `comp[A174219(n+1)]` -/
def P3747519377085013124.Spec : Prop :=
  ∀ n, (P3747519377085013124.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P12352777661051264758

`record[n*A292438(n%(n+1))]`
-/

namespace A164276.P12352777661051264758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292438 (n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164276.P12352777661051264758

namespace A164276

/-- `record[n*A292438(n%(n+1))]` -/
def P12352777661051264758.Spec : Prop :=
  ∀ n, P12352777661051264758.a n = A164276 (n + 1)

end A164276

/-! ## A164276.P18321897255352052551

`eq[0, A010051(or(n, a(n-1)))]` with `a(0)=0`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A164276

/-- `eq[0, A010051(or(n, a(n-1)))]` -/
def P18321897255352052551.Spec : Prop :=
  ∀ n, (P18321897255352052551.a n : ℤ) = A164276 (n + 1)

theorem P18321897255352052551.correct : P18321897255352052551.Spec := by
  intro n
  simp only [A164276, Nat.add_sub_cancel]

end A164276

/-! ## A164276.P7035766404760088001

`filter[A141468(n+1), A292438(#)]`
-/

namespace A164276.P7035766404760088001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A164276.P7035766404760088001

namespace A164276

/-- `filter[A141468(n+1), A292438(#)]` -/
def P7035766404760088001.Spec : Prop :=
  ∀ n, P7035766404760088001.a n = A164276 (n + 1)

end A164276

/-! ## A164276.P6693707646149411601

`filter[A173905(n+1), A292438(#)]`
-/

namespace A164276.P6693707646149411601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A164276.P6693707646149411601

namespace A164276

/-- `filter[A173905(n+1), A292438(#)]` -/
def P6693707646149411601.Spec : Prop :=
  ∀ n, P6693707646149411601.a n = A164276 (n + 1)

end A164276

/-! ## A164276.P415284031577771779

`filter[A156657(n+1), A292438(#)]`
-/

namespace A164276.P415284031577771779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A164276.P415284031577771779

namespace A164276

/-- `filter[A156657(n+1), A292438(#)]` -/
def P415284031577771779.Spec : Prop :=
  ∀ n, P415284031577771779.a n = A164276 (n + 1)

end A164276

/-! ## A164276.P6717259575689784553

`filter[A045762(n+1), A292438(#)]`
-/

namespace A164276.P6717259575689784553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A164276.P6717259575689784553

namespace A164276

/-- `filter[A045762(n+1), A292438(#)]` -/
def P6717259575689784553.Spec : Prop :=
  ∀ n, P6717259575689784553.a n = A164276 (n + 1)

end A164276

/-! ## A164276.P17196727842324180052

`record[(n+1)%(A325142(n+1)+n)]`
-/

namespace A164276.P17196727842324180052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A325142 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164276.P17196727842324180052

namespace A164276

/-- `record[(n+1)%(A325142(n+1)+n)]` -/
def P17196727842324180052.Spec : Prop :=
  ∀ n, P17196727842324180052.a n = A164276 (n + 1)

end A164276

/-! ## A164276.P12749900161873194107

`eq[A033999(n)², A292438(n)]`
-/

namespace A164276.P12749900161873194107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164276.P12749900161873194107

namespace A164276

/-- `eq[A033999(n)², A292438(n)]` -/
def P12749900161873194107.Spec : Prop :=
  ∀ n, (P12749900161873194107.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P3302992015108389846

`lt[A325142(n), A325142(n)²]`
-/

namespace A164276.P3302992015108389846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164276.P3302992015108389846

namespace A164276

/-- `lt[A325142(n), A325142(n)²]` -/
def P3302992015108389846.Spec : Prop :=
  ∀ n, (P3302992015108389846.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P8275969822162020361

`eq[A055671(n), A353464(n+1)]`
-/

namespace A164276.P8275969822162020361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164276.P8275969822162020361

namespace A164276

/-- `eq[A055671(n), A353464(n+1)]` -/
def P8275969822162020361.Spec : Prop :=
  ∀ n, (P8275969822162020361.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P11422774434695402647

`eq[A055672(n), A353464(n+1)]`
-/

namespace A164276.P11422774434695402647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164276.P11422774434695402647

namespace A164276

/-- `eq[A055672(n), A353464(n+1)]` -/
def P11422774434695402647.Spec : Prop :=
  ∀ n, (P11422774434695402647.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P1535063562049899171

`eq[A292438(n), A329684(n)]`
-/

namespace A164276.P1535063562049899171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164276.P1535063562049899171

namespace A164276

/-- `eq[A292438(n), A329684(n)]` -/
def P1535063562049899171.Spec : Prop :=
  ∀ n, (P1535063562049899171.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P1112698477553690493

`eq[A045496(n+1), A292438(n)]`
-/

namespace A164276.P1112698477553690493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164276.P1112698477553690493

namespace A164276

/-- `eq[A045496(n+1), A292438(n)]` -/
def P1112698477553690493.Spec : Prop :=
  ∀ n, (P1112698477553690493.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P8010230892994671293

`eq[A059811(n+1), A292438(n)]`
-/

namespace A164276.P8010230892994671293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164276.P8010230892994671293

namespace A164276

/-- `eq[A059811(n+1), A292438(n)]` -/
def P8010230892994671293.Spec : Prop :=
  ∀ n, (P8010230892994671293.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P14635475608710814408

`eq[A125846(n+1), A292438(n)]`
-/

namespace A164276.P14635475608710814408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164276.P14635475608710814408

namespace A164276

/-- `eq[A125846(n+1), A292438(n)]` -/
def P14635475608710814408.Spec : Prop :=
  ∀ n, (P14635475608710814408.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P15699469446630015664

`eq[A283149(n+1), A292438(n)]`
-/

namespace A164276.P15699469446630015664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164276.P15699469446630015664

namespace A164276

/-- `eq[A283149(n+1), A292438(n)]` -/
def P15699469446630015664.Spec : Prop :=
  ∀ n, (P15699469446630015664.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P17080974783512133879

`lt[n, A007920(n)*A051697(n)]`
-/

namespace A164276.P17080974783512133879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n * A051697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164276.P17080974783512133879

namespace A164276

/-- `lt[n, A007920(n)*A051697(n)]` -/
def P17080974783512133879.Spec : Prop :=
  ∀ n, (P17080974783512133879.a n : ℤ) = A164276 (n + 1)

end A164276

/-! ## A164276.P782713785072037889

`eq[A000034(2*n), A292438(n)]`
-/

namespace A164276.P782713785072037889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164276.P782713785072037889

namespace A164276

/-- `eq[A000034(2*n), A292438(n)]` -/
def P782713785072037889.Spec : Prop :=
  ∀ n, (P782713785072037889.a n : ℤ) = A164276 (n + 1)

end A164276

/-!
# A164278: a(n) = (6*n + 1)^(2*n) - 1.

The programs for A164278, the canonical program `A164278.P12076350594904206176` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164278 has offset 0).

The definition of A164278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)^(2*n)-1` (program `A164278.P12076350594904206176`, by `A164278.P12076350594904206176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164278.P12076350594904206176

`(6*n+1)^(2*n)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164278

/-- `(6*n+1)^(2*n)-1` -/
def P12076350594904206176.Spec : Prop :=
  ∀ n, P12076350594904206176.a n = A164278 n

theorem P12076350594904206176.correct : P12076350594904206176.Spec := by
  intro n
  simp only [A164278]

end A164278

/-! ## A164278.P2545668573315887910

`xor(1, A016922(n)^n)`
-/

namespace A164278.P2545668573315887910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A016922 n ^ n)

end

end A164278.P2545668573315887910

namespace A164278

/-- `xor(1, A016922(n)^n)` -/
def P2545668573315887910.Spec : Prop :=
  ∀ n, P2545668573315887910.a n = A164278 n

end A164278

/-!
# A164279: Triangle of 2^n terms per row, a Petoukhov sequence generated from (3,2).

The programs for A164279, the canonical program `A164279.P1036385505928145271` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164279 has offset 0).

The definition of A164279 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088696, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164279.P1036385505928145271

`3^A000523(n+1)*(2/3)^(A088696(n+1)-1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A164279

/-- `3^A000523(n+1)*(2/3)^(A088696(n+1)-1)` -/
def P1036385505928145271.Spec : Prop :=
  ∀ n, P1036385505928145271.a n = (A164279 n : ℚ)

end A164279

/-! ## A164279.P6790647310028230172

`A073061(A154436(n+1))`
-/

namespace A164279.P6790647310028230172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A154436 (n + 1)).toNat

end

end A164279.P6790647310028230172

namespace A164279

/-- `A073061(A154436(n+1))` -/
def P6790647310028230172.Spec : Prop :=
  ∀ n, P6790647310028230172.a n = A164279 n

end A164279

/-! ## A164279.P5330800809602744834

`A072029(A164309(n))`
-/

namespace A164279.P5330800809602744834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072029 (A164309 n).toNat

end

end A164279.P5330800809602744834

namespace A164279

/-- `A072029(A164309(n))` -/
def P5330800809602744834.Spec : Prop :=
  ∀ n, P5330800809602744834.a n = A164279 n

end A164279

/-! ## A164279.P13927023151084781741

`A267099(2*A164309(n))/2`
-/

namespace A164279.P13927023151084781741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267099 (2 * A164309 n).toNat : ℚ) / 2

end

end A164279.P13927023151084781741

namespace A164279

/-- `A267099(2*A164309(n))/2` -/
def P13927023151084781741.Spec : Prop :=
  ∀ n, P13927023151084781741.a n = (A164279 n : ℚ)

end A164279

/-! ## A164279.P1539110159939300283

`∏{d}[A235200(A164309(n)), A014963(#)]`
-/

namespace A164279.P1539110159939300283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235200 (A164309 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A164279.P1539110159939300283

namespace A164279

/-- `∏{d}[A235200(A164309(n)), A014963(#)]` -/
def P1539110159939300283.Spec : Prop :=
  ∀ n, P1539110159939300283.a n = A164279 n

end A164279

/-!
# A164280: a(n) is the sum of the first A129749(n) nonprimes.

The programs for A164280, there is no canonical definition to state claims against.
-/

/-! ## A164280.P17252809379120414136

`A129749(n+1)*A160758(n+1)`
-/

namespace A164280.P17252809379120414136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129749 (n + 1) * A160758 (n + 1)

end

end A164280.P17252809379120414136

/-! ## A164280.P15869070010072000581

`A051349(A129749(n+1))`
-/

namespace A164280.P15869070010072000581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (A129749 (n + 1)).toNat

end

end A164280.P15869070010072000581

/-! ## A164280.P10096581067064728494

`A175967(A129749(n+1)+1)-1`
-/

namespace A164280.P10096581067064728494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (A129749 (n + 1) + 1).toNat - 1

end

end A164280.P10096581067064728494

/-!
# A164281: Triangle read by rows, a Petoukhov sequence (cf. A164279) generated from (1,2).

The programs for A164281, the canonical program `A164281.P1689118351507972365` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164281 has offset 0).

The definition of A164281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164281.P9180612057686289518

`2^(A088696(n+1)-1)`
-/

namespace A164281.P9180612057686289518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A088696 (n + 1) - 1 : ℤ)

end

end A164281.P9180612057686289518

namespace A164281

/-- `2^(A088696(n+1)-1)` -/
def P9180612057686289518.Spec : Prop :=
  ∀ n, P9180612057686289518.a n = (A164281 n : ℚ)

end A164281

/-! ## A164281.P2781153917946084469

`A001316(A362160(n))`
-/

namespace A164281.P2781153917946084469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A362160 n).toNat

end

end A164281.P2781153917946084469

namespace A164281

/-- `A001316(A362160(n))` -/
def P2781153917946084469.Spec : Prop :=
  ∀ n, P2781153917946084469.a n = A164281 n

end A164281

/-! ## A164281.P1689118351507972365

`A011782(A088696(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A164281

/-- `A011782(A088696(n+1))` -/
def P1689118351507972365.Spec : Prop :=
  ∀ n, P1689118351507972365.a n = A164281 n

theorem P1689118351507972365.correct : P1689118351507972365.Spec := by
  intro n
  simp only [A164281]

end A164281

/-! ## A164281.P488890405361689994

`A080100(A154436(n+1))`
-/

namespace A164281.P488890405361689994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A154436 (n + 1)).toNat

end

end A164281.P488890405361689994

namespace A164281

/-- `A080100(A154436(n+1))` -/
def P488890405361689994.Spec : Prop :=
  ∀ n, P488890405361689994.a n = A164281 n

end A164281

/-! ## A164281.P4319406091083792245

`A000079(A088696(n+1)-1)`
-/

namespace A164281.P4319406091083792245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A088696 (n + 1) - 1).toNat

end

end A164281.P4319406091083792245

namespace A164281

/-- `A000079(A088696(n+1)-1)` -/
def P4319406091083792245.Spec : Prop :=
  ∀ n, P4319406091083792245.a n = A164281 n

end A164281

/-! ## A164281.P4702016892797280247

`A000010(2^A088696(n+1))`
-/

namespace A164281.P4702016892797280247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A088696 (n + 1) : ℤ))).toNat

end

end A164281.P4702016892797280247

namespace A164281

/-- `A000010(2^A088696(n+1))` -/
def P4702016892797280247.Spec : Prop :=
  ∀ n, P4702016892797280247.a n = A164281 n

end A164281

/-! ## A164281.P13679331398816506266

`A000079(A005811(A038554(A006068(n+1))))`
-/

namespace A164281.P13679331398816506266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A005811 (A038554 (A006068 (n + 1)).toNat).toNat).toNat

end

end A164281.P13679331398816506266

namespace A164281

/-- `A000079(A005811(A038554(A006068(n+1))))` -/
def P13679331398816506266.Spec : Prop :=
  ∀ n, P13679331398816506266.a n = A164281 n

end A164281

/-! ## A164281.P8588864340845457002

`A038554(A000079(A005811(A054429(n+1))))`
-/

namespace A164281.P8588864340845457002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A000079 (A005811 (A054429 (n + 1)).toNat).toNat).toNat

end

end A164281.P8588864340845457002

namespace A164281

/-- `A038554(A000079(A005811(A054429(n+1))))` -/
def P8588864340845457002.Spec : Prop :=
  ∀ n, P8588864340845457002.a n = A164281 n

end A164281

/-! ## A164281.P11158161472700639707

`A006519(A164279(n))`
-/

namespace A164281.P11158161472700639707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A164279 n).toNat

end

end A164281.P11158161472700639707

namespace A164281

/-- `A006519(A164279(n))` -/
def P11158161472700639707.Spec : Prop :=
  ∀ n, P11158161472700639707.a n = A164281 n

end A164281

/-! ## A164281.P12809938608086142673

`gcd(A000079(n), A164279(n))`
-/

namespace A164281.P12809938608086142673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A164279 n)

end

end A164281.P12809938608086142673

namespace A164281

/-- `gcd(A000079(n), A164279(n))` -/
def P12809938608086142673.Spec : Prop :=
  ∀ n, (P12809938608086142673.a n : ℤ) = A164281 n

end A164281

/-!
# A164282: Hypotenuses of more than two Pythagorean triangles.

The programs for A164282, the canonical program `A164282.P11359782556062153401` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164282 has offset 1).

The definition of A164282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164282.P11359782556062153401

`lt[3, A063014(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A164282

/-- `lt[3, A063014(n)]` -/
def P11359782556062153401.Spec : Prop :=
  ∀ n, (P11359782556062153401.a n : ℤ) = A164282 (n + 1)

theorem P11359782556062153401.correct : P11359782556062153401.Spec := by
  intro n
  simp only [A164282, Nat.add_sub_cancel]

end A164282

/-! ## A164282.P653045157470065850

`lt[5, sqrt(A046109(n))]`
-/

namespace A164282.P653045157470065850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046109 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A164282.P653045157470065850

namespace A164282

/-- `lt[5, sqrt(A046109(n))]` -/
def P653045157470065850.Spec : Prop :=
  ∀ n, (P653045157470065850.a n : ℤ) = A164282 (n + 1)

end A164282

/-! ## A164282.P11945229975309621283

`lt[2, A046080(n+1)]+1`
-/

namespace A164282.P11945229975309621283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A164282.P11945229975309621283

namespace A164282

/-- `lt[2, A046080(n+1)]+1` -/
def P11945229975309621283.Spec : Prop :=
  ∀ n, (P11945229975309621283.a n : ℤ) = A164282 (n + 1)

end A164282

/-! ## A164282.P14596003213807998741

`lt[5, A256452(n+1)]+1`
-/

namespace A164282.P14596003213807998741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A164282.P14596003213807998741

namespace A164282

/-- `lt[5, A256452(n+1)]+1` -/
def P14596003213807998741.Spec : Prop :=
  ∀ n, (P14596003213807998741.a n : ℤ) = A164282 (n + 1)

end A164282

/-! ## A164282.P8129634942998263452

`lt[2, A046080(A028310(n))]`
-/

namespace A164282.P8129634942998263452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164282.P8129634942998263452

namespace A164282

/-- `lt[2, A046080(A028310(n))]` -/
def P8129634942998263452.Spec : Prop :=
  ∀ n, (P8129634942998263452.a n : ℤ) = A164282 (n + 1)

end A164282

/-! ## A164282.P18218220975775911467

`A065475(lt[2, A046080(n+1)])`
-/

namespace A164282.P18218220975775911467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A164282.P18218220975775911467

namespace A164282

/-- `A065475(lt[2, A046080(n+1)])` -/
def P18218220975775911467.Spec : Prop :=
  ∀ n, P18218220975775911467.a n = A164282 (n + 1)

end A164282

/-! ## A164282.P2761820565735553765

`∪[A084647(n+1), A391107(n+1)]`
-/

namespace A164282.P2761820565735553765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164282.P2761820565735553765

namespace A164282

/-- `∪[A084647(n+1), A391107(n+1)]` -/
def P2761820565735553765.Spec : Prop :=
  ∀ n, (P2761820565735553765.a n : ℤ) = A164282 (n + 1)

end A164282

/-! ## A164282.P7567457114432011272

`lt[A219140(((-1)^n)²), A046109(n)]`
-/

namespace A164282.P7567457114432011272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219140 (((-1) ^ n) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164282.P7567457114432011272

namespace A164282

/-- `lt[A219140(((-1)^n)²), A046109(n)]` -/
def P7567457114432011272.Spec : Prop :=
  ∀ n, (P7567457114432011272.a n : ℤ) = A164282 (n + 1)

end A164282

/-! ## A164282.P657649203405657718

`lt[2, A328712(2*(n+1))]+1`
-/

namespace A164282.P657649203405657718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A164282.P657649203405657718

namespace A164282

/-- `lt[2, A328712(2*(n+1))]+1` -/
def P657649203405657718.Spec : Prop :=
  ∀ n, (P657649203405657718.a n : ℤ) = A164282 (n + 1)

end A164282

/-! ## A164282.P165209255929979081

`lt[2, A328712(A022144(n))]`
-/

namespace A164282.P165209255929979081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164282.P165209255929979081

namespace A164282

/-- `lt[2, A328712(A022144(n))]` -/
def P165209255929979081.Spec : Prop :=
  ∀ n, (P165209255929979081.a n : ℤ) = A164282 (n + 1)

end A164282

/-!
# A164283: Number of ways to write n as the root-mean-square (RMS) of a set of distinct positive integers.

The programs for A164283, there is no canonical definition to state claims against.
-/

/-! ## A164283.P14135944259152008045

`2*(A061358(floor(floor(2^n/3)²/2))+1)-1`
-/

namespace A164283.P14135944259152008045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061358 ⌊(⌊(2 ^ n : ℚ) / 3⌋ ^ 2 : ℚ) / 2⌋.toNat + 1) - 1

end

end A164283.P14135944259152008045

/-!
# A164284: a(n) = 15*n-7.

The programs for A164284, the canonical program `A164284.P14321963772346116769` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164284 has offset 1).

The definition of A164284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*(n+1)-7` (program `A164284.P14321963772346116769`, by `A164284.P14321963772346116769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164284.P14321963772346116769

`15*(n+1)-7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164284

/-- `15*(n+1)-7` -/
def P14321963772346116769.Spec : Prop :=
  ∀ n, P14321963772346116769.a n = A164284 (n + 1)

theorem P14321963772346116769.correct : P14321963772346116769.Spec := by
  intro n
  simp only [A164284, Nat.add_sub_cancel]

end A164284

/-!
# A164285: a(n) = 7*2^n + 3.

The programs for A164285, the canonical program `A164285.P3743901133409701877` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164285 has offset 0).

The definition of A164285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n+3` (program `A164285.P3743901133409701877`, by `A164285.P3743901133409701877.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164285.P3743901133409701877

`7*2^n+3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164285

/-- `7*2^n+3` -/
def P3743901133409701877.Spec : Prop :=
  ∀ n, (P3743901133409701877.a n : ℤ) = A164285 n

theorem P3743901133409701877.correct : P3743901133409701877.Spec := by
  intro n
  simp only [A164285]

end A164285

/-! ## A164285.P1588955500035941334

`ogf((10-13x)/(1-3x+2x^2))`
-/

namespace A164285.P1588955500035941334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -13] [1, -3, 2] n

end

end A164285.P1588955500035941334

namespace A164285

/-- `ogf((10-13x)/(1-3x+2x^2))` -/
def P1588955500035941334.Spec : Prop :=
  ∀ n, P1588955500035941334.a n = A164285 n

end A164285

/-! ## A164285.P15433451686771530183

`∑[2*a(n-1)]` with `a(0)=10, a(1)=7`
-/

namespace A164285.P15433451686771530183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 7] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164285.P15433451686771530183

namespace A164285

/-- `∑[2*a(n-1)]` -/
def P15433451686771530183.Spec : Prop :=
  ∀ n, (P15433451686771530183.a n : ℤ) = A164285 n

end A164285

/-! ## A164285.P8087431391857998342

`∑[a(n-1)+a(n-1)]` with `a(0)=10, a(1)=7`
-/

namespace A164285.P8087431391857998342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 7] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164285.P8087431391857998342

namespace A164285

/-- `∑[a(n-1)+a(n-1)]` -/
def P8087431391857998342.Spec : Prop :=
  ∀ n, (P8087431391857998342.a n : ℤ) = A164285 n

end A164285

/-! ## A164285.P17745736239342026063

`floor(a(n-1)+a(n-1)-3)` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A164285.P17745736239342026063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) + (a (n - 1) - 3)

end

end A164285.P17745736239342026063

namespace A164285

/-- `floor(a(n-1)+a(n-1)-3)` -/
def P17745736239342026063.Spec : Prop :=
  ∀ n, P17745736239342026063.a n = A164285 n

theorem P17745736239342026063.correct : P17745736239342026063.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164285, Nat.add_sub_cancel, A164285.P17745736239342026063.a, A164285.P3743901133409701877.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164285, Nat.add_sub_cancel, A164285.P17745736239342026063.a, A164285.P3743901133409701877.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164285

/-! ## A164285.P5678474643925951141

`floor(a(n-1)-(3-a(n-1)))` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A164285.P5678474643925951141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) - (3 - a (n - 1))

end

end A164285.P5678474643925951141

namespace A164285

/-- `floor(a(n-1)-(3-a(n-1)))` -/
def P5678474643925951141.Spec : Prop :=
  ∀ n, P5678474643925951141.a n = A164285 n

theorem P5678474643925951141.correct : P5678474643925951141.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164285, Nat.add_sub_cancel, A164285.P5678474643925951141.a, A164285.P3743901133409701877.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164285, Nat.add_sub_cancel, A164285.P5678474643925951141.a, A164285.P3743901133409701877.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164285

/-! ## A164285.P3738421173826698559

`(A175161(n+1)-A052548(n+1))/2`
-/

namespace A164285.P3738421173826698559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175161 (n + 1) - A052548 (n + 1) : ℚ) / 2

end

end A164285.P3738421173826698559

namespace A164285

/-- `(A175161(n+1)-A052548(n+1))/2` -/
def P3738421173826698559.Spec : Prop :=
  ∀ n, P3738421173826698559.a n = (A164285 n : ℚ)

end A164285

/-! ## A164285.P1993753465177687630

`(A175161(n+1)-A133140(n+1))/2`
-/

namespace A164285.P1993753465177687630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175161 (n + 1) - A133140 (n + 1) : ℚ) / 2

end

end A164285.P1993753465177687630

namespace A164285

/-- `(A175161(n+1)-A133140(n+1))/2` -/
def P1993753465177687630.Spec : Prop :=
  ∀ n, P1993753465177687630.a n = (A164285 n : ℚ)

end A164285

/-! ## A164285.P5375421073765422994

`Δ[A070875(2*n+1)+A008486(n+1)]`
-/

namespace A164285.P5375421073765422994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (2 * n + 1) + A008486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164285.P5375421073765422994

namespace A164285

/-- `Δ[A070875(2*n+1)+A008486(n+1)]` -/
def P5375421073765422994.Spec : Prop :=
  ∀ n, P5375421073765422994.a n = A164285 n

end A164285

/-! ## A164285.P18153465605795683259

`floor(A083686(n)+A110287(n)/A083686(n))`
-/

namespace A164285.P18153465605795683259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083686 n : ℚ) + (A110287 n : ℚ) / (A083686 n : ℚ)⌋

end

end A164285.P18153465605795683259

namespace A164285

/-- `floor(A083686(n)+A110287(n)/A083686(n))` -/
def P18153465605795683259.Spec : Prop :=
  ∀ n, P18153465605795683259.a n = A164285 n

end A164285

/-! ## A164285.P15579359716227286473

`A099944(n+3)%A304387(n)`
-/

namespace A164285.P15579359716227286473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099944 (n + 3)) (A304387 n)

end

end A164285.P15579359716227286473

namespace A164285

/-- `A099944(n+3)%A304387(n)` -/
def P15579359716227286473.Spec : Prop :=
  ∀ n, P15579359716227286473.a n = A164285 n

end A164285

/-! ## A164285.P17140847841337381499

`or(A083686(n)+2, A326695(n))`
-/

namespace A164285.P17140847841337381499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083686 n + 2) (A326695 n)

end

end A164285.P17140847841337381499

namespace A164285

/-- `or(A083686(n)+2, A326695(n))` -/
def P17140847841337381499.Spec : Prop :=
  ∀ n, P17140847841337381499.a n = A164285 n

end A164285

/-!
# A164288: Members of A164368 which are not Ramanujan primes.

The programs for A164288, there is no canonical definition to state claims against.
-/

/-! ## A164288.P3013287313468851863

`∩[A164368(n+1), A174635(n+1)]`
-/

namespace A164288.P3013287313468851863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164288.P3013287313468851863

/-! ## A164288.P5198313925495827987

`∩[A174635(n+1), A252463(A194598(n+1))]`
-/

namespace A164288.P5198313925495827987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A194598 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164288.P5198313925495827987

/-! ## A164288.P10755027616929519553

`∩[A174635(n+1), A035031(A194598(n+2))]`
-/

namespace A164288.P10755027616929519553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A194598 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164288.P10755027616929519553

/-! ## A164288.P1455118006544599966

`∩[A174635(n+1), A283463(A194598(n+1)+1)]`
-/

namespace A164288.P1455118006544599966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A194598 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164288.P1455118006544599966

/-! ## A164288.P2179827581298866050

`A194658(lt[A346100(n+1), A194186(n+1)])`
-/

namespace A164288.P2179827581298866050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194658 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164288.P2179827581298866050

/-!
# A164289: Sequence of twin primes p where the middle term p+1 has 5 prime factors (here p+2 is the associated twin prime, not listed).

The programs for A164289, the canonical program `A164289.P14731636054711746706` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164289 has offset 1).

The definition of A164289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164289.P14731636054711746706

`A045344(eq[5, A077218(n+1)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A164289

/-- `A045344(eq[5, A077218(n+1)])` -/
def P14731636054711746706.Spec : Prop :=
  ∀ n, P14731636054711746706.a n = A164289 (n + 1)

theorem P14731636054711746706.correct : P14731636054711746706.Spec := by
  intro n
  simp only [A164289, Nat.add_sub_cancel]

end A164289

/-! ## A164289.P8746491529909918495

`A065091(eq[5, A077218(n+1)])`
-/

namespace A164289.P8746491529909918495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164289.P8746491529909918495

namespace A164289

/-- `A065091(eq[5, A077218(n+1)])` -/
def P8746491529909918495.Spec : Prop :=
  ∀ n, P8746491529909918495.a n = A164289 (n + 1)

end A164289

/-! ## A164289.P13508471691129123970

`p?[A151800(A014614(n+1))-2]`
-/

namespace A164289.P13508471691129123970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A014614 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164289.P13508471691129123970

namespace A164289

/-- `p?[A151800(A014614(n+1))-2]` -/
def P13508471691129123970.Spec : Prop :=
  ∀ n, P13508471691129123970.a n = A164289 (n + 1)

end A164289

/-! ## A164289.P9009192202455521538

`∩[A001359(n+1), A114436(n+1)]`
-/

namespace A164289.P9009192202455521538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164289.P9009192202455521538

namespace A164289

/-- `∩[A001359(n+1), A114436(n+1)]` -/
def P9009192202455521538.Spec : Prop :=
  ∀ n, (P9009192202455521538.a n : ℤ) = A164289 (n + 1)

end A164289

/-! ## A164289.P6244009325854691803

`∩[A111166(n+1), A114436(n+1)]`
-/

namespace A164289.P6244009325854691803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164289.P6244009325854691803

namespace A164289

/-- `∩[A111166(n+1), A114436(n+1)]` -/
def P6244009325854691803.Spec : Prop :=
  ∀ n, (P6244009325854691803.a n : ℤ) = A164289 (n + 1)

end A164289

/-! ## A164289.P4712061543007124876

`∩[A114436(n+1), A124588(n+1)]`
-/

namespace A164289.P4712061543007124876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164289.P4712061543007124876

namespace A164289

/-- `∩[A114436(n+1), A124588(n+1)]` -/
def P4712061543007124876.Spec : Prop :=
  ∀ n, (P4712061543007124876.a n : ℤ) = A164289 (n + 1)

end A164289

/-! ## A164289.P5123224398571477812

`∩[A114436(n+1), A181747(n+1)]`
-/

namespace A164289.P5123224398571477812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164289.P5123224398571477812

namespace A164289

/-- `∩[A114436(n+1), A181747(n+1)]` -/
def P5123224398571477812.Spec : Prop :=
  ∀ n, (P5123224398571477812.a n : ℤ) = A164289 (n + 1)

end A164289

/-! ## A164289.P8281162436929166093

`∩[A114436(n+1), A238528(n+1)]`
-/

namespace A164289.P8281162436929166093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164289.P8281162436929166093

namespace A164289

/-- `∩[A114436(n+1), A238528(n+1)]` -/
def P8281162436929166093.Spec : Prop :=
  ∀ n, (P8281162436929166093.a n : ℤ) = A164289 (n + 1)

end A164289

/-! ## A164289.P3108174061829716302

`p?[A083254(p?[A014614(n+1)+1])]`
-/

namespace A164289.P3108174061829716302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164289.P3108174061829716302

namespace A164289

/-- `p?[A083254(p?[A014614(n+1)+1])]` -/
def P3108174061829716302.Spec : Prop :=
  ∀ n, P3108174061829716302.a n = A164289 (n + 1)

end A164289

/-! ## A164289.P11789204685864509361

`p?[A083254(A151800(A014614(n+1)))]`
-/

namespace A164289.P11789204685864509361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A151800 (A014614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164289.P11789204685864509361

namespace A164289

/-- `p?[A083254(A151800(A014614(n+1)))]` -/
def P11789204685864509361.Spec : Prop :=
  ∀ n, P11789204685864509361.a n = A164289 (n + 1)

end A164289

/-!
# A164290: Sequence of twin prime p where the middle term p+1 has 6 prime factors (here p+2 is the associated twin prime, not listed).

The programs for A164290, the canonical program `A164290.P2722954149927449051` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164290 has offset 1).

The definition of A164290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164290.P2722954149927449051

`A045344(eq[6, A077218(n+1)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A164290

/-- `A045344(eq[6, A077218(n+1)])` -/
def P2722954149927449051.Spec : Prop :=
  ∀ n, P2722954149927449051.a n = A164290 (n + 1)

theorem P2722954149927449051.correct : P2722954149927449051.Spec := by
  intro n
  simp only [A164290, Nat.add_sub_cancel]

end A164290

/-! ## A164290.P10882643393183250747

`A065091(eq[6, A077218(n+1)])`
-/

namespace A164290.P10882643393183250747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164290.P10882643393183250747

namespace A164290

/-- `A065091(eq[6, A077218(n+1)])` -/
def P10882643393183250747.Spec : Prop :=
  ∀ n, P10882643393183250747.a n = A164290 (n + 1)

end A164290

/-! ## A164290.P6026282206764344888

`∩[A114437(n+1), A087693(n)]`
-/

namespace A164290.P6026282206764344888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164290.P6026282206764344888

namespace A164290

/-- `∩[A114437(n+1), A087693(n)]` -/
def P6026282206764344888.Spec : Prop :=
  ∀ n, (P6026282206764344888.a n : ℤ) = A164290 (n + 1)

end A164290

/-! ## A164290.P8512570873877933770

`∩[A001359(n+1), A114437(n+1)]`
-/

namespace A164290.P8512570873877933770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164290.P8512570873877933770

namespace A164290

/-- `∩[A001359(n+1), A114437(n+1)]` -/
def P8512570873877933770.Spec : Prop :=
  ∀ n, (P8512570873877933770.a n : ℤ) = A164290 (n + 1)

end A164290

/-! ## A164290.P17574477540582751448

`eq[6, A001222(A174453(n+5))]`
-/

namespace A164290.P17574477540582751448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A174453 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164290.P17574477540582751448

namespace A164290

/-- `eq[6, A001222(A174453(n+5))]` -/
def P17574477540582751448.Spec : Prop :=
  ∀ n, (P17574477540582751448.a n : ℤ) = A164290 (n + 1)

end A164290

/-!
# A164291: a(n) = p is the first twin prime (p, p+2) for which p+1 has n prime factors (n>=2, multiplicity counted).

The programs for A164291, there is no canonical definition to state claims against.
-/

/-! ## A164291.P10729209587065055506

`A068525(n+2)-A097479(n)!`
-/

namespace A164291.P10729209587065055506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068525 (n + 2) - (Nat.factorial (A097479 n).toNat : ℤ)

end

end A164291.P10729209587065055506

/-! ## A164291.P12125627307899278020

`A068525(n+2)-A243832(n)!`
-/

namespace A164291.P12125627307899278020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068525 (n + 2) - (Nat.factorial (A243832 n).toNat : ℤ)

end

end A164291.P12125627307899278020

/-! ## A164291.P4888074468365905039

`A068525(n+2)-A057427(A017910(n))`
-/

namespace A164291.P4888074468365905039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068525 (n + 2) - A057427 (A017910 n).toNat

end

end A164291.P4888074468365905039

/-! ## A164291.P1397575277454577366

`A068525(n+2)-A057979(A299474(n))`
-/

namespace A164291.P1397575277454577366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068525 (n + 2) - A057979 (A299474 n).toNat

end

end A164291.P1397575277454577366

/-! ## A164291.P13422170887004108396

`A099837(A016116(n+1))+A068525(n+2)`
-/

namespace A164291.P13422170887004108396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A016116 (n + 1)).toNat + A068525 (n + 2)

end

end A164291.P13422170887004108396

/-!
# A164292: Binary sequence identifying the twin primes (characteristic function of twin primes: 1 if n is a twin prime else 0).

The programs for A164292, the canonical program `A164292.P14089630238313038939` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164292 has offset 1).

The definition of A164292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164292.P2580308120266577636

`ceil(A129950(n+1)/2)`
-/

namespace A164292.P2580308120266577636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129950 (n + 1) : ℚ) / 2⌉

end

end A164292.P2580308120266577636

namespace A164292

/-- `ceil(A129950(n+1)/2)` -/
def P2580308120266577636.Spec : Prop :=
  ∀ n, P2580308120266577636.a n = A164292 (n + 1)

end A164292

/-! ## A164292.P13545326801764067384

`char[A001097(n+1)-1]`
-/

namespace A164292.P13545326801764067384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164292.P13545326801764067384

namespace A164292

/-- `char[A001097(n+1)-1]` -/
def P13545326801764067384.Spec : Prop :=
  ∀ n, (P13545326801764067384.a n : ℤ) = A164292 (n + 1)

end A164292

/-! ## A164292.P11891782193667270076

`char[A077800(n+1)-1]`
-/

namespace A164292.P11891782193667270076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164292.P11891782193667270076

namespace A164292

/-- `char[A077800(n+1)-1]` -/
def P11891782193667270076.Spec : Prop :=
  ∀ n, (P11891782193667270076.a n : ℤ) = A164292 (n + 1)

end A164292

/-! ## A164292.P9661059630513401320

`char[A099609(n+2)-1]`
-/

namespace A164292.P9661059630513401320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164292.P9661059630513401320

namespace A164292

/-- `char[A099609(n+2)-1]` -/
def P9661059630513401320.Spec : Prop :=
  ∀ n, (P9661059630513401320.a n : ℤ) = A164292 (n + 1)

end A164292

/-! ## A164292.P2762878887545844535

`char[A171821(n+2)-1]`
-/

namespace A164292.P2762878887545844535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164292.P2762878887545844535

namespace A164292

/-- `char[A171821(n+2)-1]` -/
def P2762878887545844535.Spec : Prop :=
  ∀ n, (P2762878887545844535.a n : ℤ) = A164292 (n + 1)

end A164292

/-! ## A164292.P4530659403530448499

`C(A284599(n+1), n+1)`
-/

namespace A164292.P4530659403530448499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A284599 (n + 1)).toNat (n + 1)

end

end A164292.P4530659403530448499

namespace A164292

/-- `C(A284599(n+1), n+1)` -/
def P4530659403530448499.Spec : Prop :=
  ∀ n, (P4530659403530448499.a n : ℤ) = A164292 (n + 1)

end A164292

/-! ## A164292.P14089630238313038939

`A353464(A169609(n)+n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A164292

/-- `A353464(A169609(n)+n)` -/
def P14089630238313038939.Spec : Prop :=
  ∀ n, P14089630238313038939.a n = A164292 (n + 1)

theorem P14089630238313038939.correct : P14089630238313038939.Spec := by
  intro n
  simp only [A164292, Nat.add_sub_cancel]

end A164292

/-! ## A164292.P7075011783192620410

`char[A000010(A001097(n+1))]`
-/

namespace A164292.P7075011783192620410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001097 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164292.P7075011783192620410

namespace A164292

/-- `char[A000010(A001097(n+1))]` -/
def P7075011783192620410.Spec : Prop :=
  ∀ n, (P7075011783192620410.a n : ℤ) = A164292 (n + 1)

end A164292

/-! ## A164292.P9595140239223192401

`char[A000010(A077800(n+1))]`
-/

namespace A164292.P9595140239223192401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A077800 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164292.P9595140239223192401

namespace A164292

/-- `char[A000010(A077800(n+1))]` -/
def P9595140239223192401.Spec : Prop :=
  ∀ n, (P9595140239223192401.a n : ℤ) = A164292 (n + 1)

end A164292

/-! ## A164292.P8007247357569312400

`char[A000010(A278972(n+1))]`
-/

namespace A164292.P8007247357569312400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A278972 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164292.P8007247357569312400

namespace A164292

/-- `char[A000010(A278972(n+1))]` -/
def P8007247357569312400.Spec : Prop :=
  ∀ n, (P8007247357569312400.a n : ℤ) = A164292 (n + 1)

end A164292

/-! ## A164292.P3434909983955725756

`char[A000010(A099609(n+2))]`
-/

namespace A164292.P3434909983955725756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A099609 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164292.P3434909983955725756

namespace A164292

/-- `char[A000010(A099609(n+2))]` -/
def P3434909983955725756.Spec : Prop :=
  ∀ n, (P3434909983955725756.a n : ℤ) = A164292 (n + 1)

end A164292

/-! ## A164292.P16729389626141101416

`char[A000010(A171821(n+2))]`
-/

namespace A164292.P16729389626141101416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A171821 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164292.P16729389626141101416

namespace A164292

/-- `char[A000010(A171821(n+2))]` -/
def P16729389626141101416.Spec : Prop :=
  ∀ n, (P16729389626141101416.a n : ℤ) = A164292 (n + 1)

end A164292

/-! ## A164292.P6421197230151178663

`1-A283265(A093178(n+1))`
-/

namespace A164292.P6421197230151178663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A283265 (A093178 (n + 1)).toNat

end

end A164292.P6421197230151178663

namespace A164292

/-- `1-A283265(A093178(n+1))` -/
def P6421197230151178663.Spec : Prop :=
  ∀ n, P6421197230151178663.a n = A164292 (n + 1)

end A164292

/-! ## A164292.P16779318146171286013

`1-A283265(A060576(n)+n)`
-/

namespace A164292.P16779318146171286013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A283265 (A060576 n + (n : ℤ)).toNat

end

end A164292.P16779318146171286013

namespace A164292

/-- `1-A283265(A060576(n)+n)` -/
def P16779318146171286013.Spec : Prop :=
  ∀ n, P16779318146171286013.a n = A164292 (n + 1)

end A164292

/-! ## A164292.P10149742568707702562

`xor(A060576(n), A283265(n+1))`
-/

namespace A164292.P10149742568707702562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 n) (A283265 (n + 1))

end

end A164292.P10149742568707702562

namespace A164292

/-- `xor(A060576(n), A283265(n+1))` -/
def P10149742568707702562.Spec : Prop :=
  ∀ n, P10149742568707702562.a n = A164292 (n + 1)

end A164292

/-! ## A164292.P6987472780786891443

`A283265(2-Δ[A283265(n+1)])`
-/

namespace A164292.P6987472780786891443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A164292.P6987472780786891443

namespace A164292

/-- `A283265(2-Δ[A283265(n+1)])` -/
def P6987472780786891443.Spec : Prop :=
  ∀ n, P6987472780786891443.a n = A164292 (n + 1)

end A164292

/-! ## A164292.P4387450456312608428

`A000007(1-A284599(n+1)+n)`
-/

namespace A164292.P4387450456312608428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (1 - A284599 (n + 1) + (n : ℤ)).toNat

end

end A164292.P4387450456312608428

namespace A164292

/-- `A000007(1-A284599(n+1)+n)` -/
def P4387450456312608428.Spec : Prop :=
  ∀ n, P4387450456312608428.a n = A164292 (n + 1)

end A164292

/-! ## A164292.P8948291090583397131

`A005451(n+1)%A072963(n+1)`
-/

namespace A164292.P8948291090583397131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005451 (n + 1)) (A072963 (n + 1))

end

end A164292.P8948291090583397131

namespace A164292

/-- `A005451(n+1)%A072963(n+1)` -/
def P8948291090583397131.Spec : Prop :=
  ∀ n, P8948291090583397131.a n = A164292 (n + 1)

end A164292

/-! ## A164292.P17922818603059820180

`A014683(n+1)%A072963(n+1)`
-/

namespace A164292.P17922818603059820180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014683 (n + 1)) (A072963 (n + 1))

end

end A164292.P17922818603059820180

namespace A164292

/-- `A014683(n+1)%A072963(n+1)` -/
def P17922818603059820180.Spec : Prop :=
  ∀ n, P17922818603059820180.a n = A164292 (n + 1)

end A164292

/-! ## A164292.P18033128720373566845

`A072195(n+1)%A072963(n+1)`
-/

namespace A164292.P18033128720373566845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072195 (n + 1)) (A072963 (n + 1))

end

end A164292.P18033128720373566845

namespace A164292

/-- `A072195(n+1)%A072963(n+1)` -/
def P18033128720373566845.Spec : Prop :=
  ∀ n, P18033128720373566845.a n = A164292 (n + 1)

end A164292

/-!
# A164294: Primes prime(k) such that all integers in [(prime(k-1)+1)/2,(prime(k)-1)/2] are composite, excluding those primes in A080359.

The programs for A164294, there is no canonical definition to state claims against.
-/

/-! ## A164294.P1946467314421874732

`A168425(lt[A346100(n+1), A194186(n+1)])`
-/

namespace A164294.P1946467314421874732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164294.P1946467314421874732

/-! ## A164294.P11407728110983616936

`A168425(lt[A060575(n²), A194186(n+1)])`
-/

namespace A164294.P11407728110983616936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060575 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164294.P11407728110983616936

/-! ## A164294.P16601537879757733931

`A168425(lt[A164917(n+1), A194186(n+1)])`
-/

namespace A164294.P16601537879757733931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164294.P16601537879757733931

/-! ## A164294.P9097655028471720257

`A168425(lt[A324026(n), A194186(n+1)])`
-/

namespace A164294.P9097655028471720257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324026 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164294.P9097655028471720257

/-!
# A164295: Triangle T(n,k) read by rows: sum of the triangles A054521 and A051731.

The programs for A164295, the canonical program `A164295.P6843823552470505705` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164295 has offset 1).

The definition of A164295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164295.P1425946074208110500

`A035214(n)-A304571(n+1)`
-/

namespace A164295.P1425946074208110500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n - A304571 (n + 1)

end

end A164295.P1425946074208110500

namespace A164295

/-- `A035214(n)-A304571(n+1)` -/
def P1425946074208110500.Spec : Prop :=
  ∀ n, P1425946074208110500.a n = A164295 (n + 1)

end A164295

/-! ## A164295.P6843823552470505705

`A054521(n+1)+A051731(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A164295

/-- `A054521(n+1)+A051731(n+1)` -/
def P6843823552470505705.Spec : Prop :=
  ∀ n, P6843823552470505705.a n = A164295 (n + 1)

theorem P6843823552470505705.correct : P6843823552470505705.Spec := by
  intro n
  simp only [A164295, Nat.add_sub_cancel]

end A164295

/-! ## A164295.P9549178433997168896

`1-A304571(n+1)+A010054(n)`
-/

namespace A164295.P9549178433997168896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A304571 (n + 1) + A010054 n

end

end A164295.P9549178433997168896

namespace A164295

/-- `1-A304571(n+1)+A010054(n)` -/
def P9549178433997168896.Spec : Prop :=
  ∀ n, P9549178433997168896.a n = A164295 (n + 1)

end A164295

/-! ## A164295.P11651572790616550105

`A051731(n+1)+A215200(n+1)²`
-/

namespace A164295.P11651572790616550105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A215200 (n + 1) ^ 2

end

end A164295.P11651572790616550105

namespace A164295

/-- `A051731(n+1)+A215200(n+1)²` -/
def P11651572790616550105.Spec : Prop :=
  ∀ n, P11651572790616550105.a n = A164295 (n + 1)

end A164295

/-! ## A164295.P4471439849167441889

`A057427(A054522(n+1))+A054521(n+1)`
-/

namespace A164295.P4471439849167441889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A054522 (n + 1)).toNat + A054521 (n + 1)

end

end A164295.P4471439849167441889

namespace A164295

/-- `A057427(A054522(n+1))+A054521(n+1)` -/
def P4471439849167441889.Spec : Prop :=
  ∀ n, P4471439849167441889.a n = A164295 (n + 1)

end A164295

/-! ## A164295.P17531001559788929754

`A010054(n*A304571(n+1))+A010054(n)`
-/

namespace A164295.P17531001559788929754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((n : ℤ) * A304571 (n + 1)).toNat + A010054 n

end

end A164295.P17531001559788929754

namespace A164295

/-- `A010054(n*A304571(n+1))+A010054(n)` -/
def P17531001559788929754.Spec : Prop :=
  ∀ n, P17531001559788929754.a n = A164295 (n + 1)

end A164295

/-! ## A164295.P6228548343346923975

`A051731(n+1)+1-A000007(A127368(n+1))`
-/

namespace A164295.P6228548343346923975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (1 - A000007 (A127368 (n + 1)).toNat)

end

end A164295.P6228548343346923975

namespace A164295

/-- `A051731(n+1)+1-A000007(A127368(n+1))` -/
def P6228548343346923975.Spec : Prop :=
  ∀ n, P6228548343346923975.a n = A164295 (n + 1)

end A164295

/-! ## A164295.P1215964263670038194

`A054521(n+1)+A000040(A126988(n+1)+1)%2`
-/

namespace A164295.P1215964263670038194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) + Int.tmod (A000040 (A126988 (n + 1) + 1).toNat) 2

end

end A164295.P1215964263670038194

namespace A164295

/-- `A054521(n+1)+A000040(A126988(n+1)+1)%2` -/
def P1215964263670038194.Spec : Prop :=
  ∀ n, P1215964263670038194.a n = A164295 (n + 1)

end A164295

/-! ## A164295.P13355472163681880269

`A054521(n+1)+A054522(n+1)/A054526(n+1)`
-/

namespace A164295.P13355472163681880269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054521 (n + 1) : ℚ) + (A054522 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A164295.P13355472163681880269

namespace A164295

/-- `A054521(n+1)+A054522(n+1)/A054526(n+1)` -/
def P13355472163681880269.Spec : Prop :=
  ∀ n, P13355472163681880269.a n = (A164295 (n + 1) : ℚ)

end A164295

/-! ## A164295.P17079300349472603485

`A054521(n+1)+A126988(n+1)/A010766(n+1)`
-/

namespace A164295.P17079300349472603485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054521 (n + 1) : ℚ) + (A126988 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A164295.P17079300349472603485

namespace A164295

/-- `A054521(n+1)+A126988(n+1)/A010766(n+1)` -/
def P17079300349472603485.Spec : Prop :=
  ∀ n, P17079300349472603485.a n = (A164295 (n + 1) : ℚ)

end A164295

/-!
# A164296: Let S(n) be the set of all positive integers that are <= n and are coprime to n. a(n) = the number of members of S(n) that are each coprime to every other member of S(n).

The programs for A164296, there is no canonical definition to state claims against.
-/

/-! ## A164296.P18179833932514008831

`Δ[A002088(n)]-A164297(n+1)`
-/

namespace A164296.P18179833932514008831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A164297 (n + 1)

end

end A164296.P18179833932514008831

/-! ## A164296.P2879942680912715109

`A000010(n+1)-A164297(n+1)`
-/

namespace A164296.P2879942680912715109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A164297 (n + 1)

end

end A164296.P2879942680912715109

/-! ## A164296.P10061684833552334436

`A349137(Δ[n²])-A164297(n+1)`
-/

namespace A164296.P10061684833552334436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A164297 (n + 1)

end

end A164296.P10061684833552334436

/-! ## A164296.P3619848239713027155

`sqrt(A127473(n+1))-A164297(n+1)`
-/

namespace A164296.P3619848239713027155
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A164297 (n + 1) : ℝ)

end

end A164296.P3619848239713027155

/-! ## A164296.P12903691868106522693

`Δ[A100449(n)/4]-A164297(n+1)`
-/

namespace A164296.P12903691868106522693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A164297 (n + 1) : ℚ)

end

end A164296.P12903691868106522693

/-! ## A164296.P13599907781440190781

`A039649(n+1)-(A164297(n+1)+1)`
-/

namespace A164296.P13599907781440190781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A164297 (n + 1) + 1)

end

end A164296.P13599907781440190781

/-! ## A164296.P5840721166792579449

`A109606(n+1)+1-A164297(n+1)`
-/

namespace A164296.P5840721166792579449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A164297 (n + 1))

end

end A164296.P5840721166792579449

/-! ## A164296.P121942077873470709

`A319998(2*(n+1))/2-A164297(n+1)`
-/

namespace A164296.P121942077873470709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (2 * (n + 1)) : ℚ) / 2 - (A164297 (n + 1) : ℚ)

end

end A164296.P121942077873470709

/-! ## A164296.P11778021578625046311

`n+1-A051953(n+1)-A164297(n+1)`
-/

namespace A164296.P11778021578625046311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051953 (n + 1) - A164297 (n + 1)

end

end A164296.P11778021578625046311

/-! ## A164296.P2908592055214612504

`A002618(n+1)/(n+1)-A164297(n+1)`
-/

namespace A164296.P2908592055214612504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ) - (A164297 (n + 1) : ℚ)

end

end A164296.P2908592055214612504

/-! ## A164296.P5850671995202916839

`A049633(n)-(A164297(n+1)+A049632(n))`
-/

namespace A164296.P5850671995202916839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - (A164297 (n + 1) + A049632 n)

end

end A164296.P5850671995202916839

/-! ## A164296.P3221762896639168572

`Δ[A049632(n)-A049643(n)]-A164297(n+1)`
-/

namespace A164296.P3221762896639168572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A164297 (n + 1)

end

end A164296.P3221762896639168572

/-! ## A164296.P16955742200398846079

`A002088(n+1)-(A164297(n+1)+A002088(n))`
-/

namespace A164296.P16955742200398846079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - (A164297 (n + 1) + A002088 n)

end

end A164296.P16955742200398846079

/-! ## A164296.P3733655954666969511

`A048864(n+1)+A048865(n+1)-A164297(n+1)`
-/

namespace A164296.P3733655954666969511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) + (A048865 (n + 1) - A164297 (n + 1))

end

end A164296.P3733655954666969511

/-! ## A164296.P10109946785026652766

`A285699(n+1)+A285709(n+1)-A164297(n+1)`
-/

namespace A164296.P10109946785026652766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285699 (n + 1) + (A285709 (n + 1) - A164297 (n + 1))

end

end A164296.P10109946785026652766

/-! ## A164296.P4692409495586454646

`A300821(n+1)+A300822(n+1)-A164297(n+1)`
-/

namespace A164296.P4692409495586454646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300821 (n + 1) + (A300822 (n + 1) - A164297 (n + 1))

end

end A164296.P4692409495586454646

/-! ## A164296.P11043918995835936621

`A046073(n+1)*A060594(n+1)-A164297(n+1)`
-/

namespace A164296.P11043918995835936621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A060594 (n + 1) - A164297 (n + 1)

end

end A164296.P11043918995835936621

/-! ## A164296.P16848541511456432460

`A140434(n+1)/A020639(A140434(n+1))-A164297(n+1)`
-/

namespace A164296.P16848541511456432460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140434 (n + 1) : ℚ) / (A020639 (A140434 (n + 1)).toNat : ℚ) - (A164297 (n + 1) : ℚ)

end

end A164296.P16848541511456432460

/-!
# A164297: Let S(n) be the set of all positive integers that are <= n and are coprime to n. a(n) = the number of members of S(n) that are each non-coprime with at least one other member of S(n).

The programs for A164297, there is no canonical definition to state claims against.
-/

/-! ## A164297.P2091566246136925906

`Δ[A002088(n)]-A164296(n+1)`
-/

namespace A164297.P2091566246136925906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A164296 (n + 1)

end

end A164297.P2091566246136925906

/-! ## A164297.P9288822112126973891

`A000010(n+1)-A164296(n+1)`
-/

namespace A164297.P9288822112126973891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A164296 (n + 1)

end

end A164297.P9288822112126973891

/-! ## A164297.P4897341420667193637

`A039649(n+1)-(A164296(n+1)+1)`
-/

namespace A164297.P4897341420667193637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A164296 (n + 1) + 1)

end

end A164297.P4897341420667193637

/-! ## A164297.P13315192494081942942

`A109606(n+1)+1-A164296(n+1)`
-/

namespace A164297.P13315192494081942942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A164296 (n + 1))

end

end A164297.P13315192494081942942

/-! ## A164297.P16883928699794445460

`n+1-A051953(n+1)-A164296(n+1)`
-/

namespace A164297.P16883928699794445460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051953 (n + 1) - A164296 (n + 1)

end

end A164297.P16883928699794445460

/-! ## A164297.P11405240844179984893

`A002618(n+1)/(n+1)-A164296(n+1)`
-/

namespace A164297.P11405240844179984893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ) - (A164296 (n + 1) : ℚ)

end

end A164297.P11405240844179984893

/-! ## A164297.P1200838531708419994

`A049633(n)-(A164296(n+1)+A049632(n))`
-/

namespace A164297.P1200838531708419994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - (A164296 (n + 1) + A049632 n)

end

end A164297.P1200838531708419994

/-! ## A164297.P10343396796246189414

`Δ[A049632(n)-A049643(n)]-A164296(n+1)`
-/

namespace A164297.P10343396796246189414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A164296 (n + 1)

end

end A164297.P10343396796246189414

/-! ## A164297.P5731068050133239880

`A002088(n+1)-(A164296(n+1)+A002088(n))`
-/

namespace A164297.P5731068050133239880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - (A164296 (n + 1) + A002088 n)

end

end A164297.P5731068050133239880

/-! ## A164297.P3507826543438127526

`A048864(n+1)+A048865(n+1)-A164296(n+1)`
-/

namespace A164297.P3507826543438127526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) + (A048865 (n + 1) - A164296 (n + 1))

end

end A164297.P3507826543438127526

/-! ## A164297.P3955617967530008027

`A285699(n+1)+A285709(n+1)-A164296(n+1)`
-/

namespace A164297.P3955617967530008027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285699 (n + 1) + (A285709 (n + 1) - A164296 (n + 1))

end

end A164297.P3955617967530008027

/-! ## A164297.P7103625753936563750

`A300821(n+1)+A300822(n+1)-A164296(n+1)`
-/

namespace A164297.P7103625753936563750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300821 (n + 1) + (A300822 (n + 1) - A164296 (n + 1))

end

end A164297.P7103625753936563750

/-! ## A164297.P5003799568453318074

`A046073(n+1)*A060594(n+1)-A164296(n+1)`
-/

namespace A164297.P5003799568453318074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A060594 (n + 1) - A164296 (n + 1)

end

end A164297.P5003799568453318074

/-! ## A164297.P2929533341895189232

`A140434(n+1)/A020639(A140434(n+1))-A164296(n+1)`
-/

namespace A164297.P2929533341895189232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140434 (n + 1) : ℚ) / (A020639 (A140434 (n + 1)).toNat : ℚ) - (A164296 (n + 1) : ℚ)

end

end A164297.P2929533341895189232

/-!
# A164298: a(n) = ((1+4*sqrt(2))*(2+sqrt(2))^n + (1-4*sqrt(2))*(2-sqrt(2))^n)/2.

The programs for A164298, the canonical program `A164298.P15462841741568578987` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164298 has offset 0).

The definition of A164298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164298.P15462841741568578987

`4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164298

/-- `4*a(n-1)-2*a(n-2)` -/
def P15462841741568578987.Spec : Prop :=
  ∀ n, P15462841741568578987.a n = A164298 n

theorem P15462841741568578987.correct : P15462841741568578987.Spec := by
  intro n
  simp only [A164298]

end A164298

/-! ## A164298.P17707896341894213214

`ogf((1+6x)/(1-4x+2x^2))`
-/

namespace A164298.P17707896341894213214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -4, 2] n

end

end A164298.P17707896341894213214

namespace A164298

/-- `ogf((1+6x)/(1-4x+2x^2))` -/
def P17707896341894213214.Spec : Prop :=
  ∀ n, P17707896341894213214.a n = A164298 n

end A164298

/-! ## A164298.P17665742014900717521

`A164304(n)-A056236(n)`
-/

namespace A164298.P17665742014900717521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164304 n - A056236 n

end

end A164298.P17665742014900717521

namespace A164298

/-- `A164304(n)-A056236(n)` -/
def P17665742014900717521.Spec : Prop :=
  ∀ n, P17665742014900717521.a n = A164298 n

end A164298

/-! ## A164298.P14442680892837378214

`A163613(n)-A106731(n)`
-/

namespace A164298.P14442680892837378214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163613 n - A106731 n

end

end A164298.P14442680892837378214

namespace A164298

/-- `A163613(n)-A106731(n)` -/
def P14442680892837378214.Spec : Prop :=
  ∀ n, P14442680892837378214.a n = A164298 n

end A164298

/-! ## A164298.P2900193190705670600

`A163613(n)+A060995(n+1)`
-/

namespace A164298.P2900193190705670600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163613 n + A060995 (n + 1)

end

end A164298.P2900193190705670600

namespace A164298

/-- `A163613(n)+A060995(n+1)` -/
def P2900193190705670600.Spec : Prop :=
  ∀ n, P2900193190705670600.a n = A164298 n

end A164298

/-! ## A164298.P6638114764094385875

`A111567(n+1)-A265185(n)`
-/

namespace A164298.P6638114764094385875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111567 (n + 1) - A265185 n

end

end A164298.P6638114764094385875

namespace A164298

/-- `A111567(n+1)-A265185(n)` -/
def P6638114764094385875.Spec : Prop :=
  ∀ n, P6638114764094385875.a n = A164298 n

end A164298

/-! ## A164298.P9071127755806942312

`2*A111566(n)-A006012(n)`
-/

namespace A164298.P9071127755806942312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111566 n - A006012 n

end

end A164298.P9071127755806942312

namespace A164298

/-- `2*A111566(n)-A006012(n)` -/
def P9071127755806942312.Spec : Prop :=
  ∀ n, P9071127755806942312.a n = A164298 n

end A164298

/-! ## A164298.P12000246337424578921

`A111566(n)-2*A106731(n)`
-/

namespace A164298.P12000246337424578921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n - 2 * A106731 n

end

end A164298.P12000246337424578921

namespace A164298

/-- `A111566(n)-2*A106731(n)` -/
def P12000246337424578921.Spec : Prop :=
  ∀ n, P12000246337424578921.a n = A164298 n

end A164298

/-! ## A164298.P13152982676604899022

`A006012(n)-4*A106731(n)`
-/

namespace A164298.P13152982676604899022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n - 4 * A106731 n

end

end A164298.P13152982676604899022

namespace A164298

/-- `A006012(n)-4*A106731(n)` -/
def P13152982676604899022.Spec : Prop :=
  ∀ n, P13152982676604899022.a n = A164298 n

end A164298

/-! ## A164298.P3853376779125729524

`A111566(n)+2*A060995(n+1)`
-/

namespace A164298.P3853376779125729524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n + 2 * A060995 (n + 1)

end

end A164298.P3853376779125729524

namespace A164298

/-- `A111566(n)+2*A060995(n+1)` -/
def P3853376779125729524.Spec : Prop :=
  ∀ n, P3853376779125729524.a n = A164298 n

end A164298

/-! ## A164298.P9444529922770270579

`A007070(n)+3*A060995(n+1)`
-/

namespace A164298.P9444529922770270579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + 3 * A060995 (n + 1)

end

end A164298.P9444529922770270579

namespace A164298

/-- `A007070(n)+3*A060995(n+1)` -/
def P9444529922770270579.Spec : Prop :=
  ∀ n, P9444529922770270579.a n = A164298 n

end A164298

/-! ## A164298.P12123224215593242157

`Δ[A056236(n)]+A111566(n)-A056236(n)`
-/

namespace A164298.P12123224215593242157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A111566 n - A056236 n)

end

end A164298.P12123224215593242157

namespace A164298

/-- `Δ[A056236(n)]+A111566(n)-A056236(n)` -/
def P12123224215593242157.Spec : Prop :=
  ∀ n, P12123224215593242157.a n = A164298 n

end A164298

/-! ## A164298.P18231261141792475083

`A007070(n+1)+A007070(n)-A265185(n)`
-/

namespace A164298.P18231261141792475083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 1) + (A007070 n - A265185 n)

end

end A164298.P18231261141792475083

namespace A164298

/-- `A007070(n+1)+A007070(n)-A265185(n)` -/
def P18231261141792475083.Spec : Prop :=
  ∀ n, P18231261141792475083.a n = A164298 n

end A164298

/-! ## A164298.P7058463490376514758

`A111567(n+1)+A007070(n)-A162269(n)`
-/

namespace A164298.P7058463490376514758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111567 (n + 1) + (A007070 n - A162269 n)

end

end A164298.P7058463490376514758

namespace A164298

/-- `A111567(n+1)+A007070(n)-A162269(n)` -/
def P7058463490376514758.Spec : Prop :=
  ∀ n, P7058463490376514758.a n = A164298 n

end A164298

/-! ## A164298.P508423991935817591

`A007070(n+1)-(A162269(n)+A106731(n+1))`
-/

namespace A164298.P508423991935817591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 1) - (A162269 n + A106731 (n + 1))

end

end A164298.P508423991935817591

namespace A164298

/-- `A007070(n+1)-(A162269(n)+A106731(n+1))` -/
def P508423991935817591.Spec : Prop :=
  ∀ n, P508423991935817591.a n = A164298 n

end A164298

/-! ## A164298.P9774308110892947185

`A007052(n+1)-(A265185(n)+A106731(n+1))`
-/

namespace A164298.P9774308110892947185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1) - (A265185 n + A106731 (n + 1))

end

end A164298.P9774308110892947185

namespace A164298

/-- `A007052(n+1)-(A265185(n)+A106731(n+1))` -/
def P9774308110892947185.Spec : Prop :=
  ∀ n, P9774308110892947185.a n = A164298 n

end A164298

/-! ## A164298.P1972996982216518443

`A007052(n+1)+A060995(n+2)-A265185(n)`
-/

namespace A164298.P1972996982216518443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1) + (A060995 (n + 2) - A265185 n)

end

end A164298.P1972996982216518443

namespace A164298

/-- `A007052(n+1)+A060995(n+2)-A265185(n)` -/
def P1972996982216518443.Spec : Prop :=
  ∀ n, P1972996982216518443.a n = A164298 n

end A164298

/-! ## A164298.P18233487420557604673

`((1+4*sqrt(2))*(2+sqrt(2))^n+(1-4*sqrt(2))*(2-sqrt(2))^n)/2`
-/

namespace A164298.P18233487420557604673
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 4 * Real.sqrt (2 : ℝ)) * (2 + Real.sqrt (2 : ℝ)) ^ n + (1 - 4 * Real.sqrt (2 : ℝ)) * (2 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164298.P18233487420557604673

namespace A164298

/-- `((1+4*sqrt(2))*(2+sqrt(2))^n+(1-4*sqrt(2))*(2-sqrt(2))^n)/2` -/
def P18233487420557604673.Spec : Prop :=
  ∀ n, P18233487420557604673.a n = (A164298 n : ℝ)

end A164298

/-! ## A164298.P15864474677274610362

`A111566(n+1)-A162269(n)`
-/

namespace A164298.P15864474677274610362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 (n + 1) - A162269 n

end

end A164298.P15864474677274610362

namespace A164298

/-- `A111566(n+1)-A162269(n)` -/
def P15864474677274610362.Spec : Prop :=
  ∀ n, P15864474677274610362.a n = A164298 n

end A164298

/-!
# A164299: a(n) = ((1+4*sqrt(2))*(3+sqrt(2))^n + (1-4*sqrt(2))*(3-sqrt(2))^n)/2.

The programs for A164299, the canonical program `A164299.P11916543774408298108` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164299 has offset 0).

The definition of A164299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164299.P11916543774408298108

`6*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164299

/-- `6*a(n-1)-7*a(n-2)` -/
def P11916543774408298108.Spec : Prop :=
  ∀ n, P11916543774408298108.a n = A164299 n

theorem P11916543774408298108.correct : P11916543774408298108.Spec := by
  intro n
  simp only [A164299]

end A164299

/-! ## A164299.P17023337051145992029

`A083878(n)+8*A081179(n)`
-/

namespace A164299.P17023337051145992029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n + 8 * A081179 n

end

end A164299.P17023337051145992029

namespace A164299

/-- `A083878(n)+8*A081179(n)` -/
def P17023337051145992029.Spec : Prop :=
  ∀ n, P17023337051145992029.a n = A164299 n

end A164299

/-! ## A164299.P2708343689858605231

`ogf((1+5x)/(1-6x+7x^2))`
-/

namespace A164299.P2708343689858605231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -6, 7] n

end

end A164299.P2708343689858605231

namespace A164299

/-- `ogf((1+5x)/(1-6x+7x^2))` -/
def P2708343689858605231.Spec : Prop :=
  ∀ n, P2708343689858605231.a n = A164299 n

end A164299

/-! ## A164299.P4027577008480594248

`A163614(n)+2*A081179(n)`
-/

namespace A164299.P4027577008480594248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163614 n + 2 * A081179 n

end

end A164299.P4027577008480594248

namespace A164299

/-- `A163614(n)+2*A081179(n)` -/
def P4027577008480594248.Spec : Prop :=
  ∀ n, P4027577008480594248.a n = A164299 n

end A164299

/-! ## A164299.P11342425578355579488

`A163348(n)+4*A081179(n)`
-/

namespace A164299.P11342425578355579488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 n + 4 * A081179 n

end

end A164299.P11342425578355579488

namespace A164299

/-- `A163348(n)+4*A081179(n)` -/
def P11342425578355579488.Spec : Prop :=
  ∀ n, P11342425578355579488.a n = A164299 n

end A164299

/-! ## A164299.P12964049829253165264

`A102285(n)+6*A081179(n)`
-/

namespace A164299.P12964049829253165264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n + 6 * A081179 n

end

end A164299.P12964049829253165264

namespace A164299

/-- `A102285(n)+6*A081179(n)` -/
def P12964049829253165264.Spec : Prop :=
  ∀ n, P12964049829253165264.a n = A164299 n

end A164299

/-! ## A164299.P4652728610786100400

`A163348(n)+A163614(n)-A102285(n)`
-/

namespace A164299.P4652728610786100400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 n + (A163614 n - A102285 n)

end

end A164299.P4652728610786100400

namespace A164299

/-- `A163348(n)+A163614(n)-A102285(n)` -/
def P4652728610786100400.Spec : Prop :=
  ∀ n, P4652728610786100400.a n = A164299 n

end A164299

/-! ## A164299.P10913460387580187629

`((1+4*sqrt(2))*(sqrt(2)+3)^n+(1-4*sqrt(2))*(3-sqrt(2))^n)/2`
-/

namespace A164299.P10913460387580187629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 4 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 3) ^ n + (1 - 4 * Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164299.P10913460387580187629

namespace A164299

/-- `((1+4*sqrt(2))*(sqrt(2)+3)^n+(1-4*sqrt(2))*(3-sqrt(2))^n)/2` -/
def P10913460387580187629.Spec : Prop :=
  ∀ n, P10913460387580187629.a n = (A164299 n : ℝ)

end A164299

/-! ## A164299.P8578854849962630520

`Δ[A163348(n)]-A162270(n)`
-/

namespace A164299.P8578854849962630520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A162270 n

end

end A164299.P8578854849962630520

namespace A164299

/-- `Δ[A163348(n)]-A162270(n)` -/
def P8578854849962630520.Spec : Prop :=
  ∀ n, P8578854849962630520.a n = A164299 n

end A164299

/-! ## A164299.P12354312342624892301

`2*A163614(n)-A163348(n)`
-/

namespace A164299.P12354312342624892301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163614 n - A163348 n

end

end A164299.P12354312342624892301

namespace A164299

/-- `2*A163614(n)-A163348(n)` -/
def P12354312342624892301.Spec : Prop :=
  ∀ n, P12354312342624892301.a n = A164299 n

end A164299

/-! ## A164299.P17233731626863218559

`A081179(n+2)+A081179(n)-A163609(n)`
-/

namespace A164299.P17233731626863218559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 2) + (A081179 n - A163609 n)

end

end A164299.P17233731626863218559

namespace A164299

/-- `A081179(n+2)+A081179(n)-A163609(n)` -/
def P17233731626863218559.Spec : Prop :=
  ∀ n, P17233731626863218559.a n = A164299 n

end A164299

