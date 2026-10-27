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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A210900: Number of n X n 0..2 symmetric matrices with every element equal to zero, one or two horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210900, there is no canonical definition to state claims against.
-/

/-! ## A210900.P1231297240446190321

`ceil(A211039(n+1)/2)`
-/

namespace A210900.P1231297240446190321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211039 (n + 1) : ℚ) / 2⌉

end

end A210900.P1231297240446190321

/-! ## A210900.P5901063232309497307

`round(A211039(n+1)/A020639(A036332(n+1)))`
-/

namespace A210900.P5901063232309497307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211039 (n + 1) : ℚ) / (A020639 (A036332 (n + 1)).toNat : ℚ))

end

end A210900.P5901063232309497307

/-!
# A210901: Number of n X n 0..2 symmetric matrices with every element equal to zero, one or three horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210901, there is no canonical definition to state claims against.
-/

/-! ## A210901.P17651141225988840814

`ceil(A211040(n+1)/2)`
-/

namespace A210901.P17651141225988840814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211040 (n + 1) : ℚ) / 2⌉

end

end A210901.P17651141225988840814

/-! ## A210901.P6012191923188108808

`A211040(n+1)/A020639(A315733(n))`
-/

namespace A210901.P6012191923188108808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211040 (n + 1) : ℚ) / (A020639 (A315733 n).toNat : ℚ)

end

end A210901.P6012191923188108808

/-! ## A210901.P13084286656435977366

`A211040(n+1)/A006530(A133025(n+1))`
-/

namespace A210901.P13084286656435977366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211040 (n + 1) : ℚ) / (A006530 (A133025 (n + 1)).toNat : ℚ)

end

end A210901.P13084286656435977366

/-! ## A210901.P6339288610492419122

`A211040(n+1)/A020639(A339905(n+1))`
-/

namespace A210901.P6339288610492419122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211040 (n + 1) : ℚ) / (A020639 (A339905 (n + 1)).toNat : ℚ)

end

end A210901.P6339288610492419122

/-!
# A210902: Number of n X n 0..2 symmetric matrices with every element equal to zero, two or three horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210902, there is no canonical definition to state claims against.
-/

/-! ## A210902.P14488925079399403772

`ceil(A211042(n+1)/2)`
-/

namespace A210902.P14488925079399403772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211042 (n + 1) : ℚ) / 2⌉

end

end A210902.P14488925079399403772

/-!
# A210903: Number of n X n 0..2 symmetric matrices with every element equal to one, two or three horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210903, there is no canonical definition to state claims against.
-/

/-! ## A210903.P2461197642862968813

`ceil(A211043(n+1)/2)`
-/

namespace A210903.P2461197642862968813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211043 (n + 1) : ℚ) / 2⌉

end

end A210903.P2461197642862968813

/-! ## A210903.P15029020979760498424

`A211043(n+1)/A006530(A011782(n))`
-/

namespace A210903.P15029020979760498424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211043 (n + 1) : ℚ) / (A006530 (A011782 n).toNat : ℚ)

end

end A210903.P15029020979760498424

/-! ## A210903.P3517506732536433089

`A211043(n+1)/A020639(A000061(n+1))`
-/

namespace A210903.P3517506732536433089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211043 (n + 1) : ℚ) / (A020639 (A000061 (n + 1)).toNat : ℚ)

end

end A210903.P3517506732536433089

/-! ## A210903.P13275628076822728841

`A211043(n+1)/A020639(A062112(n+1))`
-/

namespace A210903.P13275628076822728841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211043 (n + 1) : ℚ) / (A020639 (A062112 (n + 1)).toNat : ℚ)

end

end A210903.P13275628076822728841

/-!
# A210904: Number of n X n 0..2 symmetric matrices with every element equal to zero, one, two or three horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210904, there is no canonical definition to state claims against.
-/

/-! ## A210904.P11223614104889068662

`ceil(A211044(n+1)/2)`
-/

namespace A210904.P11223614104889068662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211044 (n + 1) : ℚ) / 2⌉

end

end A210904.P11223614104889068662

/-! ## A210904.P17730635765217270704

`round(A211044(n+1)/A020639(A001223(n+1)))`
-/

namespace A210904.P17730635765217270704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211044 (n + 1) : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ))

end

end A210904.P17730635765217270704

/-! ## A210904.P12435891464258658577

`round(A211044(n+1)/A020639(A036332(n+1)))`
-/

namespace A210904.P12435891464258658577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211044 (n + 1) : ℚ) / (A020639 (A036332 (n + 1)).toNat : ℚ))

end

end A210904.P12435891464258658577

/-!
# A210905: Number of n X n 0..2 symmetric matrices with every element equal to zero, one or four horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210905, there is no canonical definition to state claims against.
-/

/-! ## A210905.P9929124225466288204

`ceil(A211045(n+1)/2)`
-/

namespace A210905.P9929124225466288204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211045 (n + 1) : ℚ) / 2⌉

end

end A210905.P9929124225466288204

/-! ## A210905.P11883168398150427287

`A211045(n+1)/A014963(A000079(n))`
-/

namespace A210905.P11883168398150427287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211045 (n + 1) : ℚ) / (A014963 (A000079 n).toNat : ℚ)

end

end A210905.P11883168398150427287

/-! ## A210905.P3936089505905731523

`A211045(n+1)/A014963(A037445(n+1))`
-/

namespace A210905.P3936089505905731523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211045 (n + 1) : ℚ) / (A014963 (A037445 (n + 1)).toNat : ℚ)

end

end A210905.P3936089505905731523

/-! ## A210905.P12357988317490053936

`A211045(n+1)/A001221(A086909(n+1))`
-/

namespace A210905.P12357988317490053936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211045 (n + 1) : ℚ) / (A001221 (A086909 (n + 1)).toNat : ℚ)

end

end A210905.P12357988317490053936

/-! ## A210905.P10264629573556091820

`A211045(n+1)/A014963(A318307(n+1))`
-/

namespace A210905.P10264629573556091820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211045 (n + 1) : ℚ) / (A014963 (A318307 (n + 1)).toNat : ℚ)

end

end A210905.P10264629573556091820

/-!
# A210906: Number of n X n 0..2 symmetric matrices with every element equal to zero, two or four horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210906, there is no canonical definition to state claims against.
-/

/-! ## A210906.P14233093713814476994

`ceil(A211046(n+1)/2)`
-/

namespace A210906.P14233093713814476994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211046 (n + 1) : ℚ) / 2⌉

end

end A210906.P14233093713814476994

/-! ## A210906.P12221820876189427727

`round(A211046(n+1)/A020639(A036332(n+1)))`
-/

namespace A210906.P12221820876189427727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211046 (n + 1) : ℚ) / (A020639 (A036332 (n + 1)).toNat : ℚ))

end

end A210906.P12221820876189427727

/-! ## A210906.P16044296631164777196

`round(A211046(A085890(n+1))/2)`
-/

namespace A210906.P16044296631164777196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211046 (A085890 (n + 1)).toNat : ℚ) / 2)

end

end A210906.P16044296631164777196

/-!
# A210907: Number of n X n 0..2 symmetric matrices with every element equal to one, two or four horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210907, there is no canonical definition to state claims against.
-/

/-! ## A210907.P4651036970059112223

`ceil(A211047(n+1)/2)`
-/

namespace A210907.P4651036970059112223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211047 (n + 1) : ℚ) / 2⌉

end

end A210907.P4651036970059112223

/-! ## A210907.P8294386922429636037

`A211047(n+1)/A000005(A326843(n))`
-/

namespace A210907.P8294386922429636037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211047 (n + 1) : ℚ) / (A000005 (A326843 n).toNat : ℚ)

end

end A210907.P8294386922429636037

/-! ## A210907.P4754586073877105108

`A211047(n+1)/A020639(A000061(n+1))`
-/

namespace A210907.P4754586073877105108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211047 (n + 1) : ℚ) / (A020639 (A000061 (n + 1)).toNat : ℚ)

end

end A210907.P4754586073877105108

/-! ## A210907.P11878655139200193014

`A211047(n+1)/A000005(A242768(n+2))`
-/

namespace A210907.P11878655139200193014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211047 (n + 1) : ℚ) / (A000005 (A242768 (n + 2)).toNat : ℚ)

end

end A210907.P11878655139200193014

/-!
# A210908: Number of n X n 0..2 symmetric matrices with every element equal to zero, one, two or four horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210908, there is no canonical definition to state claims against.
-/

/-! ## A210908.P5185146851256652603

`ceil(A211048(n+1)/2)`
-/

namespace A210908.P5185146851256652603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211048 (n + 1) : ℚ) / 2⌉

end

end A210908.P5185146851256652603

/-! ## A210908.P1093054210373852363

`gcd(round(A211048(n+1)/2), A000038(n))`
-/

namespace A210908.P1093054210373852363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A211048 (n + 1) : ℚ) / 2)) (A000038 n)

end

end A210908.P1093054210373852363

/-! ## A210908.P3413308371544303215

`round(A211048(n+1)/2*A007318(C(n, 2)))`
-/

namespace A210908.P3413308371544303215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211048 (n + 1) : ℚ) / 2 * (A007318 (Nat.choose n 2) : ℚ))

end

end A210908.P3413308371544303215

/-! ## A210908.P8749604795007661813

`round(A070821(p?[61*n+37])+A211048(n+1)/2)`
-/

namespace A210908.P8749604795007661813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A070821 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) + (A211048 (n + 1) : ℚ) / 2)

end

end A210908.P8749604795007661813

/-!
# A210909: Number of n X n 0..2 symmetric matrices with every element equal to zero, one, three or four horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210909, there is no canonical definition to state claims against.
-/

/-! ## A210909.P1720937150073912543

`ceil(A211049(n+1)/2)`
-/

namespace A210909.P1720937150073912543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211049 (n + 1) : ℚ) / 2⌉

end

end A210909.P1720937150073912543

/-! ## A210909.P3746306883445991974

`(A211049(n+1)+A000007(n))/2`
-/

namespace A210909.P3746306883445991974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211049 (n + 1) + A000007 n : ℚ) / 2

end

end A210909.P3746306883445991974

/-! ## A210909.P3830921732138167220

`A211049(n+1)/gcd(2, A002457(n))`
-/

namespace A210909.P3830921732138167220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211049 (n + 1) : ℚ) / (Int.gcd 2 (A002457 n) : ℚ)

end

end A210909.P3830921732138167220

/-! ## A210909.P15807287740784126658

`A211049(n+1)/A014963(A001316(n))`
-/

namespace A210909.P15807287740784126658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211049 (n + 1) : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A210909.P15807287740784126658

/-! ## A210909.P15159498424516595527

`A211049(n+1)/(A001221(A000079(n))+1)`
-/

namespace A210909.P15159498424516595527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211049 (n + 1) : ℚ) / (A001221 (A000079 n).toNat + 1 : ℚ)

end

end A210909.P15159498424516595527

/-!
# A210910: Number of n X n 0..2 symmetric matrices with every element equal to zero, two, three or four horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210910, there is no canonical definition to state claims against.
-/

/-! ## A210910.P11564365378555801573

`ceil(A211051(n+1)/2)`
-/

namespace A210910.P11564365378555801573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211051 (n + 1) : ℚ) / 2⌉

end

end A210910.P11564365378555801573

/-! ## A210910.P1742918716760212819

`round(A211051(n+1)/A036453(n+1))`
-/

namespace A210910.P1742918716760212819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211051 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ))

end

end A210910.P1742918716760212819

/-! ## A210910.P3374368836067057917

`(A211051(n+1)-A008683(A007918(n)))/2`
-/

namespace A210910.P3374368836067057917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211051 (n + 1) - A008683 (A007918 n).toNat : ℚ) / 2

end

end A210910.P3374368836067057917

/-! ## A210910.P1985907490328082643

`round(A211051(n+1)/A020639(A036332(n+1)))`
-/

namespace A210910.P1985907490328082643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211051 (n + 1) : ℚ) / (A020639 (A036332 (n + 1)).toNat : ℚ))

end

end A210910.P1985907490328082643

/-!
# A210911: Number of transitive reflexive early confluent binary relations R on n labeled elements where |{y : xRy}| <= 3 for all x.

The programs for A210911, there is no canonical definition to state claims against.
-/

/-! ## A210911.P17472712593670082215

`A135302(∑[n+3]+6)`
-/

namespace A210911.P17472712593670082215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A210911.P17472712593670082215

/-! ## A210911.P15181586492022390640

`gcd(A000038(n), A135302(A167614(n+2)))`
-/

namespace A210911.P15181586492022390640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A135302 (A167614 (n + 2)).toNat)

end

end A210911.P15181586492022390640

/-! ## A210911.P10217288506227847491

`A135302(A167614(n+2))+A000038(n+2)`
-/

namespace A210911.P10217288506227847491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A167614 (n + 2)).toNat + A000038 (n + 2)

end

end A210911.P10217288506227847491

/-! ## A210911.P17489560886095320500

`A135302(A167614(n+2))/abs(A070750(n+2))`
-/

namespace A210911.P17489560886095320500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135302 (A167614 (n + 2)).toNat : ℚ) / (|A070750 (n + 2)| : ℚ)

end

end A210911.P17489560886095320500

/-! ## A210911.P9575654231533175347

`A135302(A167614(n+2))/A014491(n²+1)`
-/

namespace A210911.P9575654231533175347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135302 (A167614 (n + 2)).toNat : ℚ) / (A014491 (n ^ 2 + 1) : ℚ)

end

end A210911.P9575654231533175347

/-! ## A210911.P7585609066164367874

`A135302(A167614(n+2))+A027187(floor(n/(n+2))+1)`
-/

namespace A210911.P7585609066164367874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A167614 (n + 2)).toNat + A027187 (⌊(n : ℚ) / (n + 2 : ℚ)⌋ + 1).toNat

end

end A210911.P7585609066164367874

/-! ## A210911.P8965570387577991614

`A135302(A167614(n+2))+floor(A000010(n+2)/(n+2))`
-/

namespace A210911.P8965570387577991614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A167614 (n + 2)).toNat + ⌊(A000010 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A210911.P8965570387577991614

/-! ## A210911.P9151054550647089812

`A135302(A167614(n+2))/A342918(floor(n/(n+2))+1)`
-/

namespace A210911.P9151054550647089812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135302 (A167614 (n + 2)).toNat : ℚ) / (A342918 (⌊(n : ℚ) / (n + 2 : ℚ)⌋ + 1).toNat : ℚ)

end

end A210911.P9151054550647089812

/-!
# A210912: Number of transitive reflexive early confluent binary relations R on n labeled elements where |{y : xRy}| <= 4 for all x.

The programs for A210912, there is no canonical definition to state claims against.
-/

/-! ## A210912.P13418869828589727236

`A135302(A155212(n)+12)`
-/

namespace A210912.P13418869828589727236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A155212 n + 12).toNat

end

end A210912.P13418869828589727236

/-! ## A210912.P13664575524993759730

`A135302(eq[3, A141169(n)])`
-/

namespace A210912.P13664575524993759730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210912.P13664575524993759730

/-! ## A210912.P15510930911787891077

`A135302(eq[4, A002262(n)])`
-/

namespace A210912.P15510930911787891077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210912.P15510930911787891077

/-! ## A210912.P16630364234537629498

`A135302(A133263(n+4)+2)`
-/

namespace A210912.P16630364234537629498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A133263 (n + 4) + 2).toNat

end

end A210912.P16630364234537629498

/-! ## A210912.P7758647507773208602

`A135302(A000124(n+4)+3)`
-/

namespace A210912.P7758647507773208602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A000124 (n + 4) + 3).toNat

end

end A210912.P7758647507773208602

/-! ## A210912.P12682905804135827587

`A135302(A027379(n+2)+7)`
-/

namespace A210912.P12682905804135827587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A027379 (n + 2) + 7).toNat

end

end A210912.P12682905804135827587

/-! ## A210912.P2145833112044547744

`A135302(eq[5, A002260(n+1)])`
-/

namespace A210912.P2145833112044547744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210912.P2145833112044547744

/-! ## A210912.P8897779802517594209

`A135302(eq[5, A135223(n+1)])`
-/

namespace A210912.P8897779802517594209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210912.P8897779802517594209

/-! ## A210912.P12729383156722827193

`A135302(eq[6, A245093(n+1)])`
-/

namespace A210912.P12729383156722827193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210912.P12729383156722827193

/-! ## A210912.P7340481678091639058

`A135302(eq[2, A144328(n+1)-2])`
-/

namespace A210912.P7340481678091639058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210912.P7340481678091639058

/-!
# A210913: Number of transitive reflexive early confluent binary relations R on n labeled elements where |{y : xRy}| <= 5 for all x.

The programs for A210913, there is no canonical definition to state claims against.
-/

/-! ## A210913.P11516108235310774842

`A135302(A167499(n+4))`
-/

namespace A210913.P11516108235310774842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A167499 (n + 4)).toNat

end

end A210913.P11516108235310774842

/-! ## A210913.P13542648663937099848

`A135302(eq[5, A002262(n)])`
-/

namespace A210913.P13542648663937099848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210913.P13542648663937099848

/-! ## A210913.P3327649181152272920

`A135302(A000217(n+5)+5)`
-/

namespace A210913.P3327649181152272920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A000217 (n + 5) + 5).toNat

end

end A210913.P3327649181152272920

/-! ## A210913.P6849108217374912117

`A135302(A046691(n+3)+9)`
-/

namespace A210913.P6849108217374912117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A046691 (n + 3) + 9).toNat

end

end A210913.P6849108217374912117

/-! ## A210913.P14400884803836705157

`A135302(eq[5, A144328(n+1)])`
-/

namespace A210913.P14400884803836705157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210913.P14400884803836705157

/-! ## A210913.P11895729582144111492

`A135302(eq[6, A002260(n+1)])`
-/

namespace A210913.P11895729582144111492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210913.P11895729582144111492

/-!
# A210914: Number of transitive reflexive early confluent binary relations R on n labeled elements where |{y : xRy}| <= 6 for all x.

The programs for A210914, there is no canonical definition to state claims against.
-/

/-! ## A210914.P14618431155894513813

`A135302(eq[6, A002262(n)])`
-/

namespace A210914.P14618431155894513813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210914.P14618431155894513813

/-! ## A210914.P13028705482698039936

`A135302(eq[6, A144328(n+1)])`
-/

namespace A210914.P13028705482698039936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210914.P13028705482698039936

/-! ## A210914.P7129372396892213996

`A135302(eq[7, A002260(n+1)])`
-/

namespace A210914.P7129372396892213996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210914.P7129372396892213996

/-! ## A210914.P13119654586702254652

`A135302(eq[8, A245093(n+1)])`
-/

namespace A210914.P13119654586702254652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210914.P13119654586702254652

/-! ## A210914.P12838341067707162919

`A135302(eq[8, A308690(n+1)])`
-/

namespace A210914.P12838341067707162919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210914.P12838341067707162919

/-!
# A210915: Number of transitive reflexive early confluent binary relations R on n labeled elements where |{y : xRy}| <= 7 for all x.

The programs for A210915, there is no canonical definition to state claims against.
-/

/-! ## A210915.P8678124907112914464

`A135302(eq[7, A002262(n)])`
-/

namespace A210915.P8678124907112914464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210915.P8678124907112914464

/-! ## A210915.P9956995371153951191

`A135302(eq[13, A141169(n)])`
-/

namespace A210915.P9956995371153951191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210915.P9956995371153951191

/-! ## A210915.P5164143668701008428

`A135302(eq[7, log2(A059268(n))])`
-/

namespace A210915.P5164143668701008428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A210915.P5164143668701008428

/-! ## A210915.P495564494639226865

`A135302(eq[7, A144328(n+1)])`
-/

namespace A210915.P495564494639226865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210915.P495564494639226865

/-! ## A210915.P7398767804531812123

`A135302(eq[8, A002260(n+1)])`
-/

namespace A210915.P7398767804531812123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210915.P7398767804531812123

/-! ## A210915.P3201663095081896099

`A135302(eq[15, A245093(n+1)])`
-/

namespace A210915.P3201663095081896099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210915.P3201663095081896099

/-!
# A210916: Number of transitive reflexive early confluent binary relations R on n labeled elements where |{y : xRy}| <= 8 for all x.

The programs for A210916, there is no canonical definition to state claims against.
-/

/-! ## A210916.P16734029109189195621

`A135302(eq[8, A002262(n)])`
-/

namespace A210916.P16734029109189195621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210916.P16734029109189195621

/-! ## A210916.P10004532642635650247

`A135302(eq[7, A327844(n+1)])`
-/

namespace A210916.P10004532642635650247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210916.P10004532642635650247

/-! ## A210916.P3033357949175901712

`A135302(eq[8, A144328(n+1)])`
-/

namespace A210916.P3033357949175901712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210916.P3033357949175901712

/-! ## A210916.P3768044488671334905

`A135302(eq[9, A002260(n+1)])`
-/

namespace A210916.P3768044488671334905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210916.P3768044488671334905

/-! ## A210916.P8939801969355729848

`A135302(eq[9, A134868(n+1)])`
-/

namespace A210916.P8939801969355729848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210916.P8939801969355729848

/-!
# A210917: Number of transitive reflexive early confluent binary relations R on n labeled elements where |{y : xRy}| <= 9 for all x.

The programs for A210917, there is no canonical definition to state claims against.
-/

/-! ## A210917.P13211306067964145994

`A135302(A167499(n+8)+4)`
-/

namespace A210917.P13211306067964145994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A167499 (n + 8) + 4).toNat

end

end A210917.P13211306067964145994

/-!
# A210918: Number of transitive reflexive early confluent binary relations R on n labeled elements where |{y : xRy}| <= 10 for all x.

The programs for A210918, there is no canonical definition to state claims against.
-/

/-! ## A210918.P16113970056026585352

`A135302(eq[11, A002260(n+1)])`
-/

namespace A210918.P16113970056026585352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210918.P16113970056026585352

/-! ## A210918.P14525393038656373883

`A135302(eq[11, A135223(n+1)])`
-/

namespace A210918.P14525393038656373883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210918.P14525393038656373883

/-!
# A210919: Number of n X n 0..3 symmetric matrices with every element equal to zero or one horizontal and vertical neighbor, and new values 0..3 introduced in lower triangle row major order.

The programs for A210919, there is no canonical definition to state claims against.
-/

/-! ## A210919.P16449817374719203932

`ceil(A211077(n+1)/6)`
-/

namespace A210919.P16449817374719203932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211077 (n + 1) : ℚ) / 6⌉

end

end A210919.P16449817374719203932

/-!
# A210922: Number of n X n 0..3 symmetric matrices with every element equal to one or two horizontal and vertical neighbors, and new values 0..3 introduced in lower triangle row major order.

The programs for A210922, there is no canonical definition to state claims against.
-/

/-! ## A210922.P17349661424439537920

`A298888(A150381(n))`
-/

namespace A210922.P17349661424439537920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (A150381 n).toNat

end

end A210922.P17349661424439537920

/-!
# A210930: Number of n X n 0..3 symmetric matrices with every element equal to one, two or four horizontal and vertical neighbors, and new values 0..3 introduced in lower triangle row major order.

The programs for A210930, there is no canonical definition to state claims against.
-/

/-! ## A210930.P10148484977404723411

`A000788(n)*A306326(A052975(n))`
-/

namespace A210930.P10148484977404723411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n * A306326 (A052975 n).toNat

end

end A210930.P10148484977404723411

/-!
# A210934: Sum of prime factors of prime(n)+1 (counted with multiplicity).

The programs for A210934, the canonical program `A210934.P6617217077888488102` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210934 has offset 1).

The definition of A210934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A210934.P6617217077888488102

`A001414(A008864(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A210934

/-- `A001414(A008864(n+1))` -/
def P6617217077888488102.Spec : Prop :=
  ∀ n, P6617217077888488102.a n = A210934 (n + 1)

theorem P6617217077888488102.correct : P6617217077888488102.Spec := by
  intro n
  simp only [A210934, Nat.add_sub_cancel]

end A210934

/-! ## A210934.P7480036648358144642

`A001414(A028815(n+1))`
-/

namespace A210934.P7480036648358144642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028815 (n + 1)).toNat

end

end A210934.P7480036648358144642

namespace A210934

/-- `A001414(A028815(n+1))` -/
def P7480036648358144642.Spec : Prop :=
  ∀ n, P7480036648358144642.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P2719588629086630042

`A001414(A299763(n+2))`
-/

namespace A210934.P2719588629086630042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A299763 (n + 2)).toNat

end

end A210934.P2719588629086630042

namespace A210934

/-- `A001414(A299763(n+2))` -/
def P2719588629086630042.Spec : Prop :=
  ∀ n, P2719588629086630042.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P10610967486111571651

`A001414(∑[A125266(n+1)])`
-/

namespace A210934.P10610967486111571651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210934.P10610967486111571651

namespace A210934

/-- `A001414(∑[A125266(n+1)])` -/
def P10610967486111571651.Spec : Prop :=
  ∀ n, P10610967486111571651.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P9973345522486744465

`A001414(Δ[A007504(n)]+1)`
-/

namespace A210934.P9973345522486744465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n + 1).toNat

end

end A210934.P9973345522486744465

namespace A210934

/-- `A001414(Δ[A007504(n)]+1)` -/
def P9973345522486744465.Spec : Prop :=
  ∀ n, P9973345522486744465.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P1032819252439856217

`A001414(A000040(n+1)+1)`
-/

namespace A210934.P1032819252439856217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000040 (n + 1) + 1).toNat

end

end A210934.P1032819252439856217

namespace A210934

/-- `A001414(A000040(n+1)+1)` -/
def P1032819252439856217.Spec : Prop :=
  ∀ n, P1032819252439856217.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P1096548561600083376

`A001414(A006093(n+1)+2)`
-/

namespace A210934.P1096548561600083376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A006093 (n + 1) + 2).toNat

end

end A210934.P1096548561600083376

namespace A210934

/-- `A001414(A006093(n+1)+2)` -/
def P1096548561600083376.Spec : Prop :=
  ∀ n, P1096548561600083376.a n = A210934 (n + 1)

theorem P1096548561600083376.correct : P1096548561600083376.Spec := by
  intro n
  simp only [A210934, Nat.add_sub_cancel, A210934.P1096548561600083376.a, A210934.P6617217077888488102.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210934

/-! ## A210934.P3234222326682576948

`A001414(A008578(n+2)+1)`
-/

namespace A210934.P3234222326682576948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A008578 (n + 2) + 1).toNat

end

end A210934.P3234222326682576948

namespace A210934

/-- `A001414(A008578(n+2)+1)` -/
def P3234222326682576948.Spec : Prop :=
  ∀ n, P3234222326682576948.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P8692428097782204381

`A001414(A052147(n+1)-1)`
-/

namespace A210934.P8692428097782204381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A052147 (n + 1) - 1).toNat

end

end A210934.P8692428097782204381

namespace A210934

/-- `A001414(A052147(n+1)-1)` -/
def P8692428097782204381.Spec : Prop :=
  ∀ n, P8692428097782204381.a n = A210934 (n + 1)

theorem P8692428097782204381.correct : P8692428097782204381.Spec := by
  intro n
  simp only [A210934, Nat.add_sub_cancel, A210934.P8692428097782204381.a, A210934.P6617217077888488102.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008864, A008864.P9177617808325052279.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210934

/-! ## A210934.P16369233197309701126

`A001414(A014688(n+1)-n)`
-/

namespace A210934.P16369233197309701126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014688 (n + 1) - (n : ℤ)).toNat

end

end A210934.P16369233197309701126

namespace A210934

/-- `A001414(A014688(n+1)-n)` -/
def P16369233197309701126.Spec : Prop :=
  ∀ n, P16369233197309701126.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P2827296763455884506

`A001414(record[A000010(n+1)+2])`
-/

namespace A210934.P2827296763455884506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210934.P2827296763455884506

namespace A210934

/-- `A001414(record[A000010(n+1)+2])` -/
def P2827296763455884506.Spec : Prop :=
  ∀ n, P2827296763455884506.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P562160174551982140

`A001414(record[A006530(n+2)+1])`
-/

namespace A210934.P562160174551982140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210934.P562160174551982140

namespace A210934

/-- `A001414(record[A006530(n+2)+1])` -/
def P562160174551982140.Spec : Prop :=
  ∀ n, P562160174551982140.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P7860351906363648397

`A001414(record[A020639(n+2)+1])`
-/

namespace A210934.P7860351906363648397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210934.P7860351906363648397

namespace A210934

/-- `A001414(record[A020639(n+2)+1])` -/
def P7860351906363648397.Spec : Prop :=
  ∀ n, P7860351906363648397.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P2726739456876263428

`A001414(record[A192133(n+1)+2])`
-/

namespace A210934.P2726739456876263428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210934.P2726739456876263428

namespace A210934

/-- `A001414(record[A192133(n+1)+2])` -/
def P2726739456876263428.Spec : Prop :=
  ∀ n, P2726739456876263428.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P8354357468571604779

`A001414(A100484(n+1)/2+1)`
-/

namespace A210934.P8354357468571604779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A210934.P8354357468571604779

namespace A210934

/-- `A001414(A100484(n+1)/2+1)` -/
def P8354357468571604779.Spec : Prop :=
  ∀ n, P8354357468571604779.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P18178800395524795752

`A001414(A014692(n+1)+1+n)`
-/

namespace A210934.P18178800395524795752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014692 (n + 1) + 1 + (n : ℤ)).toNat

end

end A210934.P18178800395524795752

namespace A210934

/-- `A001414(A014692(n+1)+1+n)` -/
def P18178800395524795752.Spec : Prop :=
  ∀ n, P18178800395524795752.a n = A210934 (n + 1)

theorem P18178800395524795752.correct : P18178800395524795752.Spec := by
  intro n
  simp only [A210934, Nat.add_sub_cancel, A210934.P18178800395524795752.a, A210934.P6617217077888488102.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008864, A008864.P9177617808325052279.a, A014692, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210934

/-! ## A210934.P15666781664691817879

`A001414(A014689(n+1)+2+n)`
-/

namespace A210934.P15666781664691817879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014689 (n + 1) + 2 + (n : ℤ)).toNat

end

end A210934.P15666781664691817879

namespace A210934

/-- `A001414(A014689(n+1)+2+n)` -/
def P15666781664691817879.Spec : Prop :=
  ∀ n, P15666781664691817879.a n = A210934 (n + 1)

theorem P15666781664691817879.correct : P15666781664691817879.Spec := by
  intro n
  simp only [A210934, Nat.add_sub_cancel, A210934.P15666781664691817879.a, A210934.P6617217077888488102.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008864, A008864.P9177617808325052279.a, A014689, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210934

/-! ## A210934.P9437911980302964571

`A001414(A000203(A008578(n+2)))`
-/

namespace A210934.P9437911980302964571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000203 (A008578 (n + 2)).toNat).toNat

end

end A210934.P9437911980302964571

namespace A210934

/-- `A001414(A000203(A008578(n+2)))` -/
def P9437911980302964571.Spec : Prop :=
  ∀ n, P9437911980302964571.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P12081022014567568731

`A001414(record[A010051(n+2)+A001414(n+2)])`
-/

namespace A210934.P12081022014567568731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) + A001414 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210934.P12081022014567568731

namespace A210934

/-- `A001414(record[A010051(n+2)+A001414(n+2)])` -/
def P12081022014567568731.Spec : Prop :=
  ∀ n, P12081022014567568731.a n = A210934 (n + 1)

end A210934

/-! ## A210934.P13635309374132020549

`A001414(eq[1, A001222(n+1)]+2)`
-/

namespace A210934.P13635309374132020549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A210934.P13635309374132020549

namespace A210934

/-- `A001414(eq[1, A001222(n+1)]+2)` -/
def P13635309374132020549.Spec : Prop :=
  ∀ n, P13635309374132020549.a n = A210934 (n + 1)

end A210934

/-!
# A210935: Numbers n for which n*n'/(n+n') is an integer, where n' is the arithmetic derivative of n.

The programs for A210935, there is no canonical definition to state claims against.
-/

/-! ## A210935.P18372026344850430695

`A052126(Δ[A181329(n)²])`
-/

namespace A210935.P18372026344850430695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181329 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (f1 (n + 1) - f1 n).toNat

end

end A210935.P18372026344850430695

/-!
# A210936: Sum of prime factors of prime(n)-1 (counted with multiplicity).

The programs for A210936, the canonical program `A210936.P14296701000802497448` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210936 has offset 1).

The definition of A210936 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A210936.P14296701000802497448

`A001414(A006093(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A210936

/-- `A001414(A006093(n+1))` -/
def P14296701000802497448.Spec : Prop :=
  ∀ n, P14296701000802497448.a n = A210936 (n + 1)

theorem P14296701000802497448.correct : P14296701000802497448.Spec := by
  intro n
  simp only [A210936, Nat.add_sub_cancel]

end A210936

/-! ## A210936.P12467653885035845836

`A001414(Δ[A007504(n)]-1)`
-/

namespace A210936.P12467653885035845836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n - 1).toNat

end

end A210936.P12467653885035845836

namespace A210936

/-- `A001414(Δ[A007504(n)]-1)` -/
def P12467653885035845836.Spec : Prop :=
  ∀ n, P12467653885035845836.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P6287860182108467832

`A001414(record[A000010(n+1)])`
-/

namespace A210936.P6287860182108467832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210936.P6287860182108467832

namespace A210936

/-- `A001414(record[A000010(n+1)])` -/
def P6287860182108467832.Spec : Prop :=
  ∀ n, P6287860182108467832.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P9748303957529455454

`A001414(record[A192133(n+1)])`
-/

namespace A210936.P9748303957529455454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210936.P9748303957529455454

namespace A210936

/-- `A001414(record[A192133(n+1)])` -/
def P9748303957529455454.Spec : Prop :=
  ∀ n, P9748303957529455454.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P4126840284527315670

`A001414(A040976(n+1)+1)`
-/

namespace A210936.P4126840284527315670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A040976 (n + 1) + 1).toNat

end

end A210936.P4126840284527315670

namespace A210936

/-- `A001414(A040976(n+1)+1)` -/
def P4126840284527315670.Spec : Prop :=
  ∀ n, P4126840284527315670.a n = A210936 (n + 1)

theorem P4126840284527315670.correct : P4126840284527315670.Spec := by
  intro n
  simp only [A210936, Nat.add_sub_cancel, A210936.P4126840284527315670.a, A210936.P14296701000802497448.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A006093, A006093.P2906174024863549003.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210936

/-! ## A210936.P475982948305648034

`A001414(A000040(n+1)-1)`
-/

namespace A210936.P475982948305648034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000040 (n + 1) - 1).toNat

end

end A210936.P475982948305648034

namespace A210936

/-- `A001414(A000040(n+1)-1)` -/
def P475982948305648034.Spec : Prop :=
  ∀ n, P475982948305648034.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P14271482576641790789

`A001414(A008578(n+2)-1)`
-/

namespace A210936.P14271482576641790789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A008578 (n + 2) - 1).toNat

end

end A210936.P14271482576641790789

namespace A210936

/-- `A001414(A008578(n+2)-1)` -/
def P14271482576641790789.Spec : Prop :=
  ∀ n, P14271482576641790789.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P4188251980553706915

`A001414(A008864(n+1)-2)`
-/

namespace A210936.P4188251980553706915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A008864 (n + 1) - 2).toNat

end

end A210936.P4188251980553706915

namespace A210936

/-- `A001414(A008864(n+1)-2)` -/
def P4188251980553706915.Spec : Prop :=
  ∀ n, P4188251980553706915.a n = A210936 (n + 1)

theorem P4188251980553706915.correct : P4188251980553706915.Spec := by
  intro n
  simp only [A210936, Nat.add_sub_cancel, A210936.P4188251980553706915.a, A210936.P14296701000802497448.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210936

/-! ## A210936.P2589781937327841814

`A001414(A028815(n+1)-2)`
-/

namespace A210936.P2589781937327841814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028815 (n + 1) - 2).toNat

end

end A210936.P2589781937327841814

namespace A210936

/-- `A001414(A028815(n+1)-2)` -/
def P2589781937327841814.Spec : Prop :=
  ∀ n, P2589781937327841814.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P16520506250629340002

`A001414(A299763(n+2)-2)`
-/

namespace A210936.P16520506250629340002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A299763 (n + 2) - 2).toNat

end

end A210936.P16520506250629340002

namespace A210936

/-- `A001414(A299763(n+2)-2)` -/
def P16520506250629340002.Spec : Prop :=
  ∀ n, P16520506250629340002.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P6104919089423209564

`A001414(A014689(n+1)+n)`
-/

namespace A210936.P6104919089423209564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014689 (n + 1) + (n : ℤ)).toNat

end

end A210936.P6104919089423209564

namespace A210936

/-- `A001414(A014689(n+1)+n)` -/
def P6104919089423209564.Spec : Prop :=
  ∀ n, P6104919089423209564.a n = A210936 (n + 1)

theorem P6104919089423209564.correct : P6104919089423209564.Spec := by
  intro n
  simp only [A210936, Nat.add_sub_cancel, A210936.P6104919089423209564.a, A210936.P14296701000802497448.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A006093, A006093.P2906174024863549003.a, A014689, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210936

/-! ## A210936.P13272395867694754995

`A001414(∑[A125266(n+1)]-2)`
-/

namespace A210936.P13272395867694754995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat

end

end A210936.P13272395867694754995

namespace A210936

/-- `A001414(∑[A125266(n+1)]-2)` -/
def P13272395867694754995.Spec : Prop :=
  ∀ n, P13272395867694754995.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P2162429697752924755

`A001414(record[A006530(n+2)-1])`
-/

namespace A210936.P2162429697752924755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210936.P2162429697752924755

namespace A210936

/-- `A001414(record[A006530(n+2)-1])` -/
def P2162429697752924755.Spec : Prop :=
  ∀ n, P2162429697752924755.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P17189853293388263153

`A001414(record[A020639(n+2)-1])`
-/

namespace A210936.P17189853293388263153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210936.P17189853293388263153

namespace A210936

/-- `A001414(record[A020639(n+2)-1])` -/
def P17189853293388263153.Spec : Prop :=
  ∀ n, P17189853293388263153.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P3311040794732270665

`A001414(A065890(n+1)+n+1)`
-/

namespace A210936.P3311040794732270665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A065890 (n + 1) + (n + 1 : ℤ)).toNat

end

end A210936.P3311040794732270665

namespace A210936

/-- `A001414(A065890(n+1)+n+1)` -/
def P3311040794732270665.Spec : Prop :=
  ∀ n, P3311040794732270665.a n = A210936 (n + 1)

theorem P3311040794732270665.correct : P3311040794732270665.Spec := by
  intro n
  simp only [A210936, Nat.add_sub_cancel, A210936.P3311040794732270665.a, A210936.P14296701000802497448.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A006093, A006093.P2906174024863549003.a, A065890, A065890.P15936493256530540462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210936

/-! ## A210936.P3428097202131570883

`A001414(A014692(n+1)-1+n)`
-/

namespace A210936.P3428097202131570883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014692 (n + 1) - 1 + (n : ℤ)).toNat

end

end A210936.P3428097202131570883

namespace A210936

/-- `A001414(A014692(n+1)-1+n)` -/
def P3428097202131570883.Spec : Prop :=
  ∀ n, P3428097202131570883.a n = A210936 (n + 1)

theorem P3428097202131570883.correct : P3428097202131570883.Spec := by
  intro n
  simp only [A210936, Nat.add_sub_cancel, A210936.P3428097202131570883.a, A210936.P14296701000802497448.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A006093, A006093.P2906174024863549003.a, A014692, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210936

/-! ## A210936.P7845856343022722390

`A001414(A014688(n+1)-(n+2))`
-/

namespace A210936.P7845856343022722390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014688 (n + 1) - (n + 2 : ℤ)).toNat

end

end A210936.P7845856343022722390

namespace A210936

/-- `A001414(A014688(n+1)-(n+2))` -/
def P7845856343022722390.Spec : Prop :=
  ∀ n, P7845856343022722390.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P4386884727939626171

`A001414(A131733(n+1)+2*n)`
-/

namespace A210936.P4386884727939626171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A131733 (n + 1) + (2 * n : ℤ)).toNat

end

end A210936.P4386884727939626171

namespace A210936

/-- `A001414(A131733(n+1)+2*n)` -/
def P4386884727939626171.Spec : Prop :=
  ∀ n, P4386884727939626171.a n = A210936 (n + 1)

theorem P4386884727939626171.correct : P4386884727939626171.Spec := by
  intro n
  simp only [A210936, Nat.add_sub_cancel, A210936.P4386884727939626171.a, A210936.P14296701000802497448.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A006093, A006093.P2906174024863549003.a, A131733, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210936

/-! ## A210936.P17780878771897910597

`A001414(A000010(A000040(n+1)))`
-/

namespace A210936.P17780878771897910597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000010 (A000040 (n + 1)).toNat).toNat

end

end A210936.P17780878771897910597

namespace A210936

/-- `A001414(A000010(A000040(n+1)))` -/
def P17780878771897910597.Spec : Prop :=
  ∀ n, P17780878771897910597.a n = A210936 (n + 1)

end A210936

/-! ## A210936.P11547646366653713267

`A001414(A000010(A008578(n+2)))`
-/

namespace A210936.P11547646366653713267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000010 (A008578 (n + 2)).toNat).toNat

end

end A210936.P11547646366653713267

namespace A210936

/-- `A001414(A000010(A008578(n+2)))` -/
def P11547646366653713267.Spec : Prop :=
  ∀ n, P11547646366653713267.a n = A210936 (n + 1)

end A210936

/-!
# A210938: Triangle T(n,k) read by rows: coefficient [x^(n-k+1)] of the Zwegers polynomial r_(n)(x), 1 <= k <= n.

The programs for A210938, there is no canonical definition to state claims against.
-/

/-! ## A210938.P4360002632492142274

`A236930(A323997(n+2))-5`
-/

namespace A210938.P4360002632492142274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236930 (A323997 (n + 2)).toNat - 5

end

end A210938.P4360002632492142274

/-!
# A210939: Nonprime nearest-neighbors of the primes.

The programs for A210939, the canonical program `A210939.P14413920442416085938` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210939 has offset 1).

The definition of A210939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210939.P3902095417212530838

`∪[A055670(n+1), A136799(n+1)]`
-/

namespace A210939.P3902095417212530838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P3902095417212530838

namespace A210939

/-- `∪[A055670(n+1), A136799(n+1)]` -/
def P3902095417212530838.Spec : Prop :=
  ∀ n, (P3902095417212530838.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P17958470639274976208

`∪[A055670(n+1), A165972(n+1)]`
-/

namespace A210939.P17958470639274976208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P17958470639274976208

namespace A210939

/-- `∪[A055670(n+1), A165972(n+1)]` -/
def P17958470639274976208.Spec : Prop :=
  ∀ n, (P17958470639274976208.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P14413920442416085938

`∪[A136798(n+1), A165972(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A210939

/-- `∪[A136798(n+1), A165972(n+1)]` -/
def P14413920442416085938.Spec : Prop :=
  ∀ n, (P14413920442416085938.a n : ℤ) = A210939 (n + 1)

theorem P14413920442416085938.correct : P14413920442416085938.Spec := by
  intro n
  simp only [A210939, Nat.add_sub_cancel]

end A210939

/-! ## A210939.P15106239105273605475

`A045718(n+2)%∑[n+2]`
-/

namespace A210939.P15106239105273605475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045718 (n + 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A210939.P15106239105273605475

namespace A210939

/-- `A045718(n+2)%∑[n+2]` -/
def P15106239105273605475.Spec : Prop :=
  ∀ n, P15106239105273605475.a n = A210939 (n + 1)

end A210939

/-! ## A210939.P14574509390814195699

`A045718(A114637(n+1))`
-/

namespace A210939.P14574509390814195699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 (A114637 (n + 1)).toNat

end

end A210939.P14574509390814195699

namespace A210939

/-- `A045718(A114637(n+1))` -/
def P14574509390814195699.Spec : Prop :=
  ∀ n, P14574509390814195699.a n = A210939 (n + 1)

end A210939

/-! ## A210939.P3552816770947006674

`filter[A045718(n), A005171(#)]`
-/

namespace A210939.P3552816770947006674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A210939.P3552816770947006674

namespace A210939

/-- `filter[A045718(n), A005171(#)]` -/
def P3552816770947006674.Spec : Prop :=
  ∀ n, P3552816770947006674.a n = A210939 (n + 1)

end A210939

/-! ## A210939.P2325833909886339665

`filter[A045718(n), A283265(#)]`
-/

namespace A210939.P2325833909886339665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A210939.P2325833909886339665

namespace A210939

/-- `filter[A045718(n), A283265(#)]` -/
def P2325833909886339665.Spec : Prop :=
  ∀ n, P2325833909886339665.a n = A210939 (n + 1)

end A210939

/-! ## A210939.P7118031031989036965

`∩[A205783(n+1), A045718(n)]`
-/

namespace A210939.P7118031031989036965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P7118031031989036965

namespace A210939

/-- `∩[A205783(n+1), A045718(n)]` -/
def P7118031031989036965.Spec : Prop :=
  ∀ n, (P7118031031989036965.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P10612641811759139803

`filter[A210940(n+1), A005171(#)]`
-/

namespace A210939.P10612641811759139803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A210939.P10612641811759139803

namespace A210939

/-- `filter[A210940(n+1), A005171(#)]` -/
def P10612641811759139803.Spec : Prop :=
  ∀ n, P10612641811759139803.a n = A210939 (n + 1)

end A210939

/-! ## A210939.P18282831421933399167

`∩[A205783(n+1), A210940(n+1)]`
-/

namespace A210939.P18282831421933399167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P18282831421933399167

namespace A210939

/-- `∩[A205783(n+1), A210940(n+1)]` -/
def P18282831421933399167.Spec : Prop :=
  ∀ n, (P18282831421933399167.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P508657557998746114

`∩[A045718(n), A103517(n)]`
-/

namespace A210939.P508657557998746114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P508657557998746114

namespace A210939

/-- `∩[A045718(n), A103517(n)]` -/
def P508657557998746114.Spec : Prop :=
  ∀ n, (P508657557998746114.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P17073286093453593415

`∩[A018252(n+1), A045718(n)]`
-/

namespace A210939.P17073286093453593415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P17073286093453593415

namespace A210939

/-- `∩[A018252(n+1), A045718(n)]` -/
def P17073286093453593415.Spec : Prop :=
  ∀ n, (P17073286093453593415.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P18230421975869052201

`∩[A141468(n+1), A045718(n)]`
-/

namespace A210939.P18230421975869052201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P18230421975869052201

namespace A210939

/-- `∩[A141468(n+1), A045718(n)]` -/
def P18230421975869052201.Spec : Prop :=
  ∀ n, (P18230421975869052201.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P11838570956260460824

`∩[A210940(n+1), A103517(n)]`
-/

namespace A210939.P11838570956260460824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P11838570956260460824

namespace A210939

/-- `∩[A210940(n+1), A103517(n)]` -/
def P11838570956260460824.Spec : Prop :=
  ∀ n, (P11838570956260460824.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P12589969027453068041

`∩[A018252(n+1), A210940(n+1)]`
-/

namespace A210939.P12589969027453068041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P12589969027453068041

namespace A210939

/-- `∩[A018252(n+1), A210940(n+1)]` -/
def P12589969027453068041.Spec : Prop :=
  ∀ n, (P12589969027453068041.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P5769208784804664062

`∩[A141468(n+1), A210940(n+1)]`
-/

namespace A210939.P5769208784804664062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P5769208784804664062

namespace A210939

/-- `∩[A141468(n+1), A210940(n+1)]` -/
def P5769208784804664062.Spec : Prop :=
  ∀ n, (P5769208784804664062.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P12363486334956204402

`∩[A045762(n+1), A045718(n)]`
-/

namespace A210939.P12363486334956204402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P12363486334956204402

namespace A210939

/-- `∩[A045762(n+1), A045718(n)]` -/
def P12363486334956204402.Spec : Prop :=
  ∀ n, (P12363486334956204402.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P4910829582429521898

`eq[1, A051699(n)]`
-/

namespace A210939.P4910829582429521898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210939.P4910829582429521898

namespace A210939

/-- `eq[1, A051699(n)]` -/
def P4910829582429521898.Spec : Prop :=
  ∀ n, (P4910829582429521898.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P11045248010957115937

`eq[1, abs(n-A051697(n))]`
-/

namespace A210939.P11045248010957115937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A051697 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210939.P11045248010957115937

namespace A210939

/-- `eq[1, abs(n-A051697(n))]` -/
def P11045248010957115937.Spec : Prop :=
  ∀ n, (P11045248010957115937.a n : ℤ) = A210939 (n + 1)

end A210939

/-! ## A210939.P3293869539258150288

`record[abs(Δ[A191558(n+1)])]`
-/

namespace A210939.P3293869539258150288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210939.P3293869539258150288

namespace A210939

/-- `record[abs(Δ[A191558(n+1)])]` -/
def P3293869539258150288.Spec : Prop :=
  ∀ n, P3293869539258150288.a n = A210939 (n + 1)

end A210939

/-!
# A210940: The prime numbers and their nonprime nearest-neighbors.

The programs for A210940, the canonical program `A210940.P13267635171587036371` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210940 has offset 1).

The definition of A210940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210940.P13267635171587036371

`∪[A000040(n+1), A045718(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A210940

/-- `∪[A000040(n+1), A045718(n)]` -/
def P13267635171587036371.Spec : Prop :=
  ∀ n, (P13267635171587036371.a n : ℤ) = A210940 (n + 1)

theorem P13267635171587036371.correct : P13267635171587036371.Spec := by
  intro n
  simp only [A210940, Nat.add_sub_cancel]

end A210940

/-! ## A210940.P9571827012230120152

`∪[A006005(n+1), A045718(n)]`
-/

namespace A210940.P9571827012230120152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210940.P9571827012230120152

namespace A210940

/-- `∪[A006005(n+1), A045718(n)]` -/
def P9571827012230120152.Spec : Prop :=
  ∀ n, (P9571827012230120152.a n : ℤ) = A210940 (n + 1)

end A210940

/-! ## A210940.P15358376887639052276

`∪[A008578(n+1), A045718(n)]`
-/

namespace A210940.P15358376887639052276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210940.P15358376887639052276

namespace A210940

/-- `∪[A008578(n+1), A045718(n)]` -/
def P15358376887639052276.Spec : Prop :=
  ∀ n, (P15358376887639052276.a n : ℤ) = A210940 (n + 1)

end A210940

/-! ## A210940.P1528690412501897387

`∪[A045344(n+1), A045718(n)]`
-/

namespace A210940.P1528690412501897387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210940.P1528690412501897387

namespace A210940

/-- `∪[A045344(n+1), A045718(n)]` -/
def P1528690412501897387.Spec : Prop :=
  ∀ n, (P1528690412501897387.a n : ℤ) = A210940 (n + 1)

end A210940

/-! ## A210940.P3515804897090582030

`∪[A046022(n+1), A045718(n)]`
-/

namespace A210940.P3515804897090582030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210940.P3515804897090582030

namespace A210940

/-- `∪[A046022(n+1), A045718(n)]` -/
def P3515804897090582030.Spec : Prop :=
  ∀ n, (P3515804897090582030.a n : ℤ) = A210940 (n + 1)

end A210940

/-! ## A210940.P969616868910487149

`lt[A051699(n), 2]`
-/

namespace A210940.P969616868910487149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A210940.P969616868910487149

namespace A210940

/-- `lt[A051699(n), 2]` -/
def P969616868910487149.Spec : Prop :=
  ∀ n, (P969616868910487149.a n : ℤ) = A210940 (n + 1)

end A210940

/-! ## A210940.P10396259189959759236

`lt[0, A090113(n+1)]`
-/

namespace A210940.P10396259189959759236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A210940.P10396259189959759236

namespace A210940

/-- `lt[0, A090113(n+1)]` -/
def P10396259189959759236.Spec : Prop :=
  ∀ n, (P10396259189959759236.a n : ℤ) = A210940 (n + 1)

end A210940

/-! ## A210940.P14850014900389036062

`lt[A007920(n), 3]+1`
-/

namespace A210940.P14850014900389036062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A210940.P14850014900389036062

namespace A210940

/-- `lt[A007920(n), 3]+1` -/
def P14850014900389036062.Spec : Prop :=
  ∀ n, (P14850014900389036062.a n : ℤ) = A210940 (n + 1)

end A210940

/-! ## A210940.P3023872902927007183

`lt[abs(n-A051697(n)), 2]`
-/

namespace A210940.P3023872902927007183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A051697 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A210940.P3023872902927007183

namespace A210940

/-- `lt[abs(n-A051697(n)), 2]` -/
def P3023872902927007183.Spec : Prop :=
  ∀ n, (P3023872902927007183.a n : ℤ) = A210940 (n + 1)

end A210940

/-! ## A210940.P4602807641255371098

`lt[A361902(n), 4]+1`
-/

namespace A210940.P4602807641255371098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A210940.P4602807641255371098

namespace A210940

/-- `lt[A361902(n), 4]+1` -/
def P4602807641255371098.Spec : Prop :=
  ∀ n, (P4602807641255371098.a n : ℤ) = A210940 (n + 1)

end A210940

/-! ## A210940.P11666327877031594413

`record[A060246(n+1)]`
-/

namespace A210940.P11666327877031594413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210940.P11666327877031594413

namespace A210940

/-- `record[A060246(n+1)]` -/
def P11666327877031594413.Spec : Prop :=
  ∀ n, P11666327877031594413.a n = A210940 (n + 1)

end A210940

/-! ## A210940.P5733729675767861439

`lt[n-1, A006530(lcm(n+2, a(n-1)))]+1` with `a(0)=8`
-/

namespace A210940.P5733729675767861439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  A006530 (Int.lcm (n + 2 : ℤ) (f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A210940.P5733729675767861439

namespace A210940

/-- `lt[n-1, A006530(lcm(n+2, a(n-1)))]+1` -/
def P5733729675767861439.Spec : Prop :=
  ∀ n, (P5733729675767861439.a n : ℤ) = A210940 (n + 1)

end A210940

/-! ## A210940.P11670456960473339552

`lt[n+1-A006530((n+1)*(n-a(n-1))), 3]` with `a(0)=3, a(1)=0`
-/

namespace A210940.P11670456960473339552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  (n + 1 : ℤ) - A006530 ((n + 1 : ℤ) * ((n : ℤ) - f1 (n - 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A210940.P11670456960473339552

namespace A210940

/-- `lt[n+1-A006530((n+1)*(n-a(n-1))), 3]` -/
def P11670456960473339552.Spec : Prop :=
  ∀ n, (P11670456960473339552.a n : ℤ) = A210940 (n + 1)

end A210940

/-!
# A210941: Triangle read by rows in which row n lists the parts > 1 of the n-th zone of the modular table of partitions, with a(1) = 1.

The programs for A210941, there is no canonical definition to state claims against.
-/

/-! ## A210941.P14538423096404452049

`A067132(A307675(n+1)+A004968(n))`
-/

namespace A210941.P14538423096404452049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A307675 (n + 1) + A004968 n).toNat

end

end A210941.P14538423096404452049

/-! ## A210941.P10236302935055252271

`A355770(A001358(n+1)*A175242(n+1))`
-/

namespace A210941.P10236302935055252271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355770 (A001358 (n + 1) * A175242 (n + 1)).toNat

end

end A210941.P10236302935055252271

/-! ## A210941.P16680364723818413533

`A355770(A001358(n+1)*A355770(n+1))`
-/

namespace A210941.P16680364723818413533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355770 (A001358 (n + 1) * A355770 (n + 1)).toNat

end

end A210941.P16680364723818413533

/-! ## A210941.P10213747753719802370

`A355770(lcm(A001358(n+1), A355770(n+1)))`
-/

namespace A210941.P10213747753719802370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355770 (Int.lcm (A001358 (n + 1)) (A355770 (n + 1)))

end

end A210941.P10213747753719802370

/-!
# A210942: Triangle read by rows in which row n lists the parts > 1 of the n-th region of the modular table of partitions, with a(1) = 1.

The programs for A210942, there is no canonical definition to state claims against.
-/

/-! ## A210942.P16000480073278261564

`A193870(lt[A057427(n), A193870(n+1)]+1)`
-/

namespace A210942.P16000480073278261564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A210942.P16000480073278261564

/-! ## A210942.P12990761156243482594

`A193870(lt[A165581(n)², A193870(n+1)]+1)`
-/

namespace A210942.P12990761156243482594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165581 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A210942.P12990761156243482594

/-! ## A210942.P5251359303180806554

`A206442(3*(n+1))+A206442(A003242(n+4))`
-/

namespace A210942.P5251359303180806554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206442 (3 * (n + 1)) + A206442 (A003242 (n + 4)).toNat

end

end A210942.P5251359303180806554

/-! ## A210942.P10891350142003083199

`A241911(A354909(n+2)+A008597(n))`
-/

namespace A210942.P10891350142003083199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241911 (A354909 (n + 2) + A008597 n).toNat

end

end A210942.P10891350142003083199

/-!
# A210943: Square array read by antidiagonals in which row n lists the parts of the infinite n-th zone of the modular table of partitions, in nonincreasing order.

The programs for A210943, there is no canonical definition to state claims against.
-/

/-! ## A210943.P15628797236563430158

`A051801(A193870(n+1)%A114134(n+1))`
-/

namespace A210943.P15628797236563430158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (Int.tmod (A193870 (n + 1)) (A114134 (n + 1))).toNat

end

end A210943.P15628797236563430158

/-! ## A210943.P12409681846593443992

`A114806(A193870(n+1))%A237711(n+3)`
-/

namespace A210943.P12409681846593443992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114806 (A193870 (n + 1)).toNat) (A237711 (n + 3))

end

end A210943.P12409681846593443992

/-! ## A210943.P1469866301519115774

`A028310(A193870(n+1))%A128155(n+4)`
-/

namespace A210943.P1469866301519115774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A193870 (n + 1)).toNat) (A128155 (n + 4))

end

end A210943.P1469866301519115774

/-! ## A210943.P17756616225563616923

`A204016(A193870(n+1)+A000217(3*(n+1)))`
-/

namespace A210943.P17756616225563616923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (A193870 (n + 1) + A000217 (3 * (n + 1))).toNat

end

end A210943.P17756616225563616923

/-! ## A210943.P16549567177840720692

`A085158(A193870(n+1))%A182877(n+1)`
-/

namespace A210943.P16549567177840720692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085158 (A193870 (n + 1)).toNat) (A182877 (n + 1))

end

end A210943.P16549567177840720692

/-!
# A210949: 

The programs for A210949, there is no canonical definition to state claims against.
-/

/-! ## A210949.P12105440386029132464

`abs(A067146(n+2))`
-/

namespace A210949.P12105440386029132464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067146 (n + 2)|

end

end A210949.P12105440386029132464

/-! ## A210949.P6420658443115511255

`gcd(A067146(n+2), A193680(A072570(n+1)))`
-/

namespace A210949.P6420658443115511255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067146 (n + 2)) (A193680 (A072570 (n + 1)).toNat)

end

end A210949.P6420658443115511255

/-! ## A210949.P14301972630381642494

`gcd(A067146(n+2), A129251(A220944(n)))`
-/

namespace A210949.P14301972630381642494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067146 (n + 2)) (A129251 (A220944 n).toNat)

end

end A210949.P14301972630381642494

/-!
# A210950: Triangle read by rows: T(n,k) = number of parts in the k-th column of the partitions of n but with the partitions aligned to the right margin.

The programs for A210950, there is no canonical definition to state claims against.
-/

/-! ## A210950.P17781777264857120753

`A058399(∑[char[∑[n]]]²-n)`
-/

namespace A210950.P17781777264857120753
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A210950.P17781777264857120753

/-! ## A210950.P3410656719283160766

`or(char[1], A058399(A114327(n)+1+n))`
-/

namespace A210950.P3410656719283160766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A058399 (A114327 n + 1 + (n : ℤ)).toNat)

end

end A210950.P3410656719283160766

/-! ## A210950.P1490003127305981955

`A007318(C(2, n))*A058399(A038722(n+1))`
-/

namespace A210950.P1490003127305981955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A058399 (A038722 (n + 1)).toNat

end

end A210950.P1490003127305981955

/-! ## A210950.P17581572278477266942

`A000041(C(2, n+2))*A058399(A038722(n+1))`
-/

namespace A210950.P17581572278477266942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A058399 (A038722 (n + 1)).toNat

end

end A210950.P17581572278477266942

/-! ## A210950.P10684450337926408043

`A014963(44*(n+1))*A058399(A038722(n+1))`
-/

namespace A210950.P10684450337926408043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (44 * (n + 1)) * A058399 (A038722 (n + 1)).toNat

end

end A210950.P10684450337926408043

/-! ## A210950.P11066529672732393386

`A058399(A038722(n+1))^A014963(∑[n+1])`
-/

namespace A210950.P11066529672732393386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058399 (A038722 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A210950.P11066529672732393386

/-!
# A210951: Triangle read by rows: T(n,k) is the number of parts in the k-th column of the modular table of partitions considering only the n-th section and with its parts aligned to the right margin.

The programs for A210951, there is no canonical definition to state claims against.
-/

/-! ## A210951.P11032652939937138993

`floor(A060653(A019538(n+1))/A073107(n))`
-/

namespace A210951.P11032652939937138993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060653 (A019538 (n + 1)).toNat : ℚ) / (A073107 n : ℚ)⌋

end

end A210951.P11032652939937138993

/-! ## A210951.P2711523266349853658

`C(A198194(A185045(n+1)), A209148(n+1))`
-/

namespace A210951.P2711523266349853658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A198194 (A185045 (n + 1)).toNat).toNat (A209148 (n + 1)).toNat

end

end A210951.P2711523266349853658

/-! ## A210951.P15391306644849031880

`C(A198194(A185045(n+1)), A209149(n+1))`
-/

namespace A210951.P15391306644849031880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A198194 (A185045 (n + 1)).toNat).toNat (A209149 (n + 1)).toNat

end

end A210951.P15391306644849031880

/-! ## A210951.P15721379940922062139

`A014963(A268009(n+1))*A059607(n)`
-/

namespace A210951.P15721379940922062139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A268009 (n + 1)).toNat * A059607 n

end

end A210951.P15721379940922062139

/-! ## A210951.P9776076628556441576

`floor(A026820(n+1)/A350292(n+1))`
-/

namespace A210951.P9776076628556441576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026820 (n + 1) : ℚ) / (A350292 (n + 1) : ℚ)⌋

end

end A210951.P9776076628556441576

/-!
# A210952: Triangle read by rows: T(n,k) = sum of all parts of the k-th column of the partitions of n but with the partitions aligned to the right margin.

The programs for A210952, there is no canonical definition to state claims against.
-/

/-! ## A210952.P6527200449836695939

`A206283(∑[char[∑[n]]]²-n)`
-/

namespace A210952.P6527200449836695939
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206283 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A210952.P6527200449836695939

/-! ## A210952.P6445021605634895631

`xor(1, xor(1, A206283(A038722(n+1))))`
-/

namespace A210952.P6445021605634895631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A206283 (A038722 (n + 1)).toNat))

end

end A210952.P6445021605634895631

/-! ## A210952.P7288073442770656895

`A206283(A038722(n+1))%A071833(n)`
-/

namespace A210952.P7288073442770656895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206283 (A038722 (n + 1)).toNat) (A071833 n)

end

end A210952.P7288073442770656895

/-! ## A210952.P13067691176525305786

`gcd(A000038(n), A206283(A038722(n+1)))`
-/

namespace A210952.P13067691176525305786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A206283 (A038722 (n + 1)).toNat)

end

end A210952.P13067691176525305786

/-! ## A210952.P9276033287576109758

`and(A059278(n), A206283(A038722(n+1)))`
-/

namespace A210952.P9276033287576109758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059278 n) (A206283 (A038722 (n + 1)).toNat)

end

end A210952.P9276033287576109758

/-! ## A210952.P5561385623344649865

`A206283(A038722(n+1))^A089309(n²)`
-/

namespace A210952.P5561385623344649865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206283 (A038722 (n + 1)).toNat : ℚ) ^ (A089309 (n ^ 2) : ℤ)

end

end A210952.P5561385623344649865

/-! ## A210952.P6645222475408110271

`A206283(A038722(n+1))/A007318(C(3, n))`
-/

namespace A210952.P6645222475408110271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206283 (A038722 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A210952.P6645222475408110271

/-! ## A210952.P3506693579398434684

`(A000041(n)%2)!*A206283(A038722(n+1))`
-/

namespace A210952.P3506693579398434684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A206283 (A038722 (n + 1)).toNat

end

end A210952.P3506693579398434684

/-! ## A210952.P12397949805242385702

`A206283(A038722(n+1))^A014963(4*n+2)`
-/

namespace A210952.P12397949805242385702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206283 (A038722 (n + 1)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A210952.P12397949805242385702

/-!
# A210954: Triangle read by rows which arises from A210944 in the same way as A175003 arises from A195310. Column k starts at row A195818(k).

The programs for A210954, there is no canonical definition to state claims against.
-/

/-! ## A210954.P15197212517417022529

`A195843(A028310(n))%A035244(n+3)`
-/

namespace A210954.P15197212517417022529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195843 (A028310 n).toNat) (A035244 (n + 3))

end

end A210954.P15197212517417022529

/-! ## A210954.P11450452201926899937

`A195843(A034888(2*n+1)%A353852(2*(n+1)))`
-/

namespace A210954.P11450452201926899937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195843 (Int.tmod (A034888 (2 * n + 1)) (A353852 (2 * (n + 1)))).toNat

end

end A210954.P11450452201926899937

/-! ## A210954.P2310553874090195433

`A195843(n^A096860(n+1))`
-/

namespace A210954.P2310553874090195433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195843 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A096860 (n + 1) : ℤ))).toNat

end

end A210954.P2310553874090195433

/-! ## A210954.P3627225190882799605

`A195842((n-1)^A096860(n+1))`
-/

namespace A210954.P3627225190882799605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195842 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A096860 (n + 1) : ℤ))).toNat

end

end A210954.P3627225190882799605

/-! ## A210954.P381814591995131251

`A195843(gcd(n, A001335(n)))`
-/

namespace A210954.P381814591995131251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195843 (Int.gcd (n : ℤ) (A001335 n))

end

end A210954.P381814591995131251

/-!
# A210955: Triangle read by rows: T(n,k) = total number of parts <= k in the last section of the set of partitions of n.

The programs for A210955, there is no canonical definition to state claims against.
-/

/-! ## A210955.P780249264035281990

`A322921(n+1)-A316345(A209992(n))`
-/

namespace A210955.P780249264035281990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322921 (n + 1) - A316345 (A209992 n).toNat

end

end A210955.P780249264035281990

/-! ## A210955.P17822357635802031401

`A081604(record[A058071(n)]*A233324(n+1))`
-/

namespace A210955.P17822357635802031401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A233324 (n + 1)).toNat

end

end A210955.P17822357635802031401

/-! ## A210955.P1360837808410341268

`A081604(record[A097575(n)]*A233324(n+1))`
-/

namespace A210955.P1360837808410341268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A233324 (n + 1)).toNat

end

end A210955.P1360837808410341268

/-! ## A210955.P3427465052787211292

`A081604(record[A212804(n)]*A233324(n+1))`
-/

namespace A210955.P3427465052787211292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A233324 (n + 1)).toNat

end

end A210955.P3427465052787211292

/-! ## A210955.P16247232460484958452

`A266977(n)-A073490(A224603(n+1)+2)`
-/

namespace A210955.P16247232460484958452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n - A073490 (A224603 (n + 1) + 2).toNat

end

end A210955.P16247232460484958452

/-!
# A210957: Prime pair (p, q), p<=q, such that p + q = 2*n and p*q is the minimal product.

The programs for A210957, there is no canonical definition to state claims against.
-/

/-! ## A210957.P1177984009250120624

`A014673(A104772(n+3))`
-/

namespace A210957.P1177984009250120624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A104772 (n + 3)).toNat

end

end A210957.P1177984009250120624

/-! ## A210957.P14010084884004238930

`p?[C(A023503(n+2), A175851(n+1))]`
-/

namespace A210957.P14010084884004238930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023503 (n + 2)).toNat (A175851 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A210957.P14010084884004238930

/-! ## A210957.P16177082261473833506

`A271774(n+1)+A010060(A271504(n+1))`
-/

namespace A210957.P16177082261473833506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271774 (n + 1) + A010060 (A271504 (n + 1)).toNat

end

end A210957.P16177082261473833506

/-! ## A210957.P10780043817766249578

`char[A046144(n+1)]+A277127(n+1)%A217944(n)+1`
-/

namespace A210957.P10780043817766249578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (Int.tmod (A277127 (n + 1)) (A217944 n) + 1)

end

end A210957.P10780043817766249578

/-! ## A210957.P9274323431584750791

`∏{d}[1-n, #%2]+A000005(A219792(n+1)^A277127(n+1))`
-/

namespace A210957.P9274323431584750791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2 : ℕ) : ℤ) + A000005 (SequenceMachineLib.roundAway ((A219792 (n + 1) : ℚ) ^ (A277127 (n + 1) : ℤ))).toNat

end

end A210957.P9274323431584750791

/-!
# A210958: Decimal expansion of 1 - (Pi/4).

The programs for A210958, there is no canonical definition to state claims against.
-/

/-! ## A210958.P14639176350486288391

`9-A003881(n)`
-/

namespace A210958.P14639176350486288391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A003881 n

end

end A210958.P14639176350486288391

/-!
# A210959: Triangle read by rows in which row n lists the divisors of n starting with 1, n, the second smallest divisor of n, the second largest divisor of n, the third smallest divisor of n, the third largest divisor of n, and so on.

The programs for A210959, there is no canonical definition to state claims against.
-/

/-! ## A210959.P2309020244275546634

`A161904(comp[A322068(∑[n])])`
-/

namespace A210959.P2309020244275546634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322068 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161904 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A210959.P2309020244275546634

/-! ## A210959.P8296865664551027898

`A228814(record[(n+1)*A228813(n+1)])`
-/

namespace A210959.P8296865664551027898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A228813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210959.P8296865664551027898

/-! ## A210959.P11628990880790551026

`A228814(lt[1, A228814(n+1)+1]+1)`
-/

namespace A210959.P11628990880790551026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228814 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A210959.P11628990880790551026

/-! ## A210959.P18369536902557481642

`A221642(lt[0, A221641(n+1)]+1)`
-/

namespace A210959.P18369536902557481642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A210959.P18369536902557481642

/-! ## A210959.P5835945339718068325

`A221642(lt[0, A221642(n+1)]+1)`
-/

namespace A210959.P5835945339718068325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A210959.P5835945339718068325

/-!
# A210960: Tetrahedron T(j,n,k) in which the slice j is a finite triangle read by rows T(n,k) which lists the number of parts in the columns of the modular table of partitions with n sections mentioned in A210970.

The programs for A210960, there is no canonical definition to state claims against.
-/

/-! ## A210960.P1463324380887285132

`A055801(A274079(n+1))`
-/

namespace A210960.P1463324380887285132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A274079 (n + 1)).toNat

end

end A210960.P1463324380887285132

/-! ## A210960.P1825910711453413387

`gcd(A028422(n+1)-A329342(n+1), A329316(n))`
-/

namespace A210960.P1825910711453413387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028422 (n + 1) - A329342 (n + 1)) (A329316 n)

end

end A210960.P1825910711453413387

/-! ## A210960.P17023493783077334775

`∏{e}[A165030(A143773(n+1)), #]`
-/

namespace A210960.P17023493783077334775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165030 (A143773 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A210960.P17023493783077334775

/-! ## A210960.P10887046361879516561

`gcd(A003640(A009766(n)), A155893(2*n+1))`
-/

namespace A210960.P10887046361879516561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003640 (A009766 n).toNat) (A155893 (2 * n + 1))

end

end A210960.P10887046361879516561

/-! ## A210960.P8660251073367511983

`gcd(A338687(n+1), A351206(A260876(n)))`
-/

namespace A210960.P8660251073367511983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A338687 (n + 1)) (A351206 (A260876 n).toNat)

end

end A210960.P8660251073367511983

/-!
# A210961: Tetrahedron T(j,n,k) in which the slice j is a finite triangle read by rows T(n,k) which lists the sums of the columns of the modular table of partitions with n sections mentioned in A210970.

The programs for A210961, there is no canonical definition to state claims against.
-/

/-! ## A210961.P10641681443187530119

`gcd(A173311(n), A303719(A132280(n)))`
-/

namespace A210961.P10641681443187530119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173311 n) (A303719 (A132280 n).toNat)

end

end A210961.P10641681443187530119

/-! ## A210961.P15877333328494630532

`A211992(A120452(n+1)+A030227(n))`
-/

namespace A210961.P15877333328494630532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (A120452 (n + 1) + A030227 n).toNat

end

end A210961.P15877333328494630532

/-! ## A210961.P10958238852388103592

`gcd(A249031(A058696(n)), A300840(n+1))`
-/

namespace A210961.P10958238852388103592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A249031 (A058696 n).toNat) (A300840 (n + 1))

end

end A210961.P10958238852388103592

/-! ## A210961.P5937478943209025617

`A051903(A200858(n+1)-A194376(n+1))`
-/

namespace A210961.P5937478943209025617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A200858 (n + 1) - A194376 (n + 1)).toNat

end

end A210961.P5937478943209025617

/-! ## A210961.P16538733025758950076

`gcd(A126351(n+1), A322832(A187075(n+1)))`
-/

namespace A210961.P16538733025758950076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126351 (n + 1)) (A322832 (A187075 (n + 1)).toNat)

end

end A210961.P16538733025758950076

/-!
# A210964: Column 10 of square array A195825. Also column 1 of triangle A210954. Also 1 together with the row sums of triangle A210954.

The programs for A210964, there is no canonical definition to state claims against.
-/

/-! ## A210964.P5544740365322172343

`A196933(A081600(n)%A355514(n+1))`
-/

namespace A210964.P5544740365322172343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196933 (Int.tmod (A081600 n) (A355514 (n + 1))).toNat

end

end A210964.P5544740365322172343

/-! ## A210964.P14548356940224052744

`A196933(A081600(n))%A134820(n+1)`
-/

namespace A210964.P14548356940224052744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196933 (A081600 n).toNat) (A134820 (n + 1))

end

end A210964.P14548356940224052744

/-!
# A210966: Sum of all region numbers of all parts of the n-th region of the modular table of partitions.

The programs for A210966, there is no canonical definition to state claims against.
-/

/-! ## A210966.P18104116175705770951

`(n+1)*A194446(n+1)`
-/

namespace A210966.P18104116175705770951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A194446 (n + 1)

end

end A210966.P18104116175705770951

/-! ## A210966.P13374293921654453706

`∑[1-Δ[A210451(n)]]*(n+1)`
-/

namespace A210966.P13374293921654453706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℤ)

end

end A210966.P13374293921654453706

/-! ## A210966.P12361869324194383019

`(1-A210451(n+1)+n)*(n+1)`
-/

namespace A210966.P12361869324194383019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A210451 (n + 1) + (n : ℤ)) * (n + 1 : ℤ)

end

end A210966.P12361869324194383019

/-! ## A210966.P14493368597020959657

`A075362(A194446(n+1)+∑[n])`
-/

namespace A210966.P14493368597020959657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A194446 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A210966.P14493368597020959657

/-! ## A210966.P2246527733954226339

`A091435(A210451(n+1)+∑[n+1])`
-/

namespace A210966.P2246527733954226339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 (A210451 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A210966.P2246527733954226339

/-! ## A210966.P8354806752189035758

`(n+1)*(A141285(n+1)-A194447(n+1))`
-/

namespace A210966.P8354806752189035758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A141285 (n + 1) - A194447 (n + 1))

end

end A210966.P8354806752189035758

/-!
# A210969: Sum of all region numbers of all parts of the last section of the set of partitions of n.

The programs for A210969, there is no canonical definition to state claims against.
-/

/-! ## A210969.P8591833748769643507

`A122212(A301258(n))`
-/

namespace A210969.P8591833748769643507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122212 (A301258 n).toNat

end

end A210969.P8591833748769643507

/-! ## A210969.P13271908655551999792

`A199535(A199535(n+1)+A000330(n))`
-/

namespace A210969.P13271908655551999792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199535 (A199535 (n + 1) + A000330 n).toNat

end

end A210969.P13271908655551999792

/-!
# A210970: Total area of the shadows of the three views of a three-dimensional version of the modular table of partitions with n sections, where the area of the shadows are A006128(n), A006128(n) and A000217(n).

The programs for A210970, there is no canonical definition to state claims against.
-/

/-! ## A210970.P17030402588112473191

`2*A006128(n)+A000217(n)`
-/

namespace A210970.P17030402588112473191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006128 n + A000217 n

end

end A210970.P17030402588112473191

/-! ## A210970.P18438048079627332734

`A211978(n)+∑[n]`
-/

namespace A210970.P18438048079627332734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A210970.P18438048079627332734

/-! ## A210970.P1395773004419403183

`∑[A278602(n)/2+n]`
-/

namespace A210970.P1395773004419403183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278602 n : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210970.P1395773004419403183

/-! ## A210970.P3978981892798776866

`2*A006128(n)-∑[A001489(n)]`
-/

namespace A210970.P3978981892798776866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006128 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210970.P3978981892798776866

/-! ## A210970.P12462542877514772290

`∑[n]+2*(A093694(n)-A000041(n))`
-/

namespace A210970.P12462542877514772290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * (A093694 n - A000041 n)

end

end A210970.P12462542877514772290

/-! ## A210970.P3630057338398724782

`∑[A233968(n+1)+n]-A233968(n+1)`
-/

namespace A210970.P3630057338398724782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233968 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A233968 (n + 1)

end

end A210970.P3630057338398724782

/-! ## A210970.P14877516449817731223

`∑[n]+A278355(n)/2`
-/

namespace A210970.P14877516449817731223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A278355 n : ℚ) / 2

end

end A210970.P14877516449817731223

/-! ## A210970.P13921321088361439101

`A006128(n)+A207380(n)-A066186(n)`
-/

namespace A210970.P13921321088361439101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (A207380 n - A066186 n)

end

end A210970.P13921321088361439101

/-!
# A210972: Sum of all region numbers of all parts of all partitions of n.

The programs for A210972, there is no canonical definition to state claims against.
-/

/-! ## A210972.P4645599425745900957

`∑[A210969(n+1)]`
-/

namespace A210972.P4645599425745900957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210972.P4645599425745900957

/-! ## A210972.P17866407388166109725

`and(∑[A210969(n-log2(1/2))], -1)`
-/

namespace A210972.P17866407388166109725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210969 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A210972.P17866407388166109725

/-! ## A210972.P7549338002729901070

`∑[record[A210969(A022446(n))]]`
-/

namespace A210972.P7549338002729901070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210969 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210972.P7549338002729901070

/-! ## A210972.P1211227466409867075

`∑[record[A210969(A053261(n))]]`
-/

namespace A210972.P1211227466409867075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210969 (A053261 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210972.P1211227466409867075

/-! ## A210972.P4164372521686605305

`∑[record[A210969(A088748(n))]]`
-/

namespace A210972.P4164372521686605305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210969 (A088748 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210972.P4164372521686605305

/-!
# A210976: Square array T(n,k), n>=1, k>=1, read by antidiagonals in which column k lists the positive integers whose number of divisors is not k.

The programs for A210976, there is no canonical definition to state claims against.
-/

/-! ## A210976.P15783569581944470349

`A187637(n+1)+A187637(A187617(n))!`
-/

namespace A210976.P15783569581944470349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187637 (n + 1) + (Nat.factorial (A187637 (A187617 n).toNat).toNat : ℤ)

end

end A210976.P15783569581944470349

/-! ## A210976.P6674396927421106381

`A334968(A050376(n+1)*A210391(n))`
-/

namespace A210976.P6674396927421106381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 (A050376 (n + 1) * A210391 n).toNat

end

end A210976.P6674396927421106381

/-! ## A210976.P16179250554051058867

`A187637(A014132(n+1)^A293960(n))`
-/

namespace A210976.P16179250554051058867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187637 (SequenceMachineLib.roundAway ((A014132 (n + 1) : ℚ) ^ (A293960 n : ℤ))).toNat

end

end A210976.P16179250554051058867

/-!
# A210977: A005475 and positive terms of A000566 interleaved.

The programs for A210977, the canonical program `A210977.P890094841231326042` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210977 has offset 0).

The definition of A210977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210977.P890094841231326042

`(10*n²+6*n-1-(2*n-1)*(-1)^n)/16`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A210977

/-- `(10*n²+6*n-1-(2*n-1)*(-1)^n)/16` -/
def P890094841231326042.Spec : Prop :=
  ∀ n, P890094841231326042.a n = (A210977 n : ℚ)

end A210977

/-! ## A210977.P8017851937118946566

`∑[floor((lcm(2, n)+n)/2)]`
-/

namespace A210977.P8017851937118946566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 n + n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210977.P8017851937118946566

namespace A210977

/-- `∑[floor((lcm(2, n)+n)/2)]` -/
def P8017851937118946566.Spec : Prop :=
  ∀ n, P8017851937118946566.a n = A210977 n

end A210977

/-! ## A210977.P17385469903590189174

`∑[n]+C(floor((n+1)/2), 2)`
-/

namespace A210977.P17385469903590189174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose ⌊(n + 1 : ℚ) / 2⌋.toNat 2

end

end A210977.P17385469903590189174

namespace A210977

/-- `∑[n]+C(floor((n+1)/2), 2)` -/
def P17385469903590189174.Spec : Prop :=
  ∀ n, (P17385469903590189174.a n : ℤ) = A210977 n

end A210977

/-! ## A210977.P6490816151440726026

`∑[floor(2*n-n/gcd(2, n+1))]`
-/

namespace A210977.P6490816151440726026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) - (n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210977.P6490816151440726026

namespace A210977

/-- `∑[floor(2*n-n/gcd(2, n+1))]` -/
def P6490816151440726026.Spec : Prop :=
  ∀ n, P6490816151440726026.a n = A210977 n

end A210977

/-! ## A210977.P7799590756124772624

`∑[or(2, a(n-2))]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A210977.P7799590756124772624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.lor 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A210977.P7799590756124772624

namespace A210977

/-- `∑[or(2, a(n-2))]+a(n-2)` -/
def P7799590756124772624.Spec : Prop :=
  ∀ n, (P7799590756124772624.a n : ℤ) = A210977 n

end A210977

/-! ## A210977.P9771915793424183088

`∑[gcd(xor(1, -n), ∑[n])+n]-(n+1)`
-/

namespace A210977.P9771915793424183088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A210977.P9771915793424183088

namespace A210977

/-- `∑[gcd(xor(1, -n), ∑[n])+n]-(n+1)` -/
def P9771915793424183088.Spec : Prop :=
  ∀ n, P9771915793424183088.a n = A210977 n

end A210977

/-! ## A210977.P16108588862650382917

`∑[a(n-2)+5]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A210977.P16108588862650382917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A210977.P16108588862650382917

namespace A210977

/-- `∑[a(n-2)+5]-a(n-1)` -/
def P16108588862650382917.Spec : Prop :=
  ∀ n, P16108588862650382917.a n = A210977 n

end A210977

/-! ## A210977.P4639624196543114763

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A210977.P4639624196543114763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210977.P4639624196543114763

namespace A210977

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P4639624196543114763.Spec : Prop :=
  ∀ n, P4639624196543114763.a n = A210977 n

end A210977

/-! ## A210977.P7018505084697039972

`∑[∑[5-a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A210977.P7018505084697039972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210977.P7018505084697039972

namespace A210977

/-- `∑[∑[5-a(n-1)]-a(n-1)]` -/
def P7018505084697039972.Spec : Prop :=
  ∀ n, P7018505084697039972.a n = A210977 n

end A210977

/-! ## A210977.P11105214500554522781

`∑[A063914(n+1)-1]`
-/

namespace A210977.P11105214500554522781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063914 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210977.P11105214500554522781

namespace A210977

/-- `∑[A063914(n+1)-1]` -/
def P11105214500554522781.Spec : Prop :=
  ∀ n, P11105214500554522781.a n = A210977 n

end A210977

/-! ## A210977.P7181627779719721625

`∑[A195013(n+1)-2]`
-/

namespace A210977.P7181627779719721625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210977.P7181627779719721625

namespace A210977

/-- `∑[A195013(n+1)-2]` -/
def P7181627779719721625.Spec : Prop :=
  ∀ n, P7181627779719721625.a n = A210977 n

end A210977

/-! ## A210977.P9792470566805615964

`A087099(n+1)-(n+1)`
-/

namespace A210977.P9792470566805615964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087099 (n + 1) - (n + 1 : ℤ)

end

end A210977.P9792470566805615964

namespace A210977

/-- `A087099(n+1)-(n+1)` -/
def P9792470566805615964.Spec : Prop :=
  ∀ n, P9792470566805615964.a n = A210977 n

end A210977

/-! ## A210977.P13955683438654812284

`A002620(n)+A001318(n)`
-/

namespace A210977.P13955683438654812284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + A001318 n

end

end A210977.P13955683438654812284

namespace A210977

/-- `A002620(n)+A001318(n)` -/
def P13955683438654812284.Spec : Prop :=
  ∀ n, P13955683438654812284.a n = A210977 n

end A210977

/-! ## A210977.P7153046293249552442

`A165157(n)+A050187(n)`
-/

namespace A210977.P7153046293249552442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n + A050187 n

end

end A210977.P7153046293249552442

namespace A210977

/-- `A165157(n)+A050187(n)` -/
def P7153046293249552442.Spec : Prop :=
  ∀ n, P7153046293249552442.a n = A210977 n

end A210977

/-! ## A210977.P8719727746337000401

`A319390(n)+A078126(n)`
-/

namespace A210977.P8719727746337000401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n + A078126 n

end

end A210977.P8719727746337000401

namespace A210977

/-- `A319390(n)+A078126(n)` -/
def P8719727746337000401.Spec : Prop :=
  ∀ n, P8719727746337000401.a n = A210977 n

end A210977

/-! ## A210977.P4597774349095419427

`A330133(n)+A130722(n)`
-/

namespace A210977.P4597774349095419427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 n + A130722 n

end

end A210977.P4597774349095419427

namespace A210977

/-- `A330133(n)+A130722(n)` -/
def P4597774349095419427.Spec : Prop :=
  ∀ n, P4597774349095419427.a n = A210977 n

end A210977

/-! ## A210977.P16963192956409739719

`A109900(n)-A111384(n)`
-/

namespace A210977.P16963192956409739719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n - A111384 n

end

end A210977.P16963192956409739719

namespace A210977

/-- `A109900(n)-A111384(n)` -/
def P16963192956409739719.Spec : Prop :=
  ∀ n, P16963192956409739719.a n = A210977 n

end A210977

/-! ## A210977.P10140935486134944379

`A085787(n)-A142150(n)`
-/

namespace A210977.P10140935486134944379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n - A142150 n

end

end A210977.P10140935486134944379

namespace A210977

/-- `A085787(n)-A142150(n)` -/
def P10140935486134944379.Spec : Prop :=
  ∀ n, P10140935486134944379.a n = A210977 n

end A210977

/-! ## A210977.P9421048253424951862

`A035608(n)-A211539(n)`
-/

namespace A210977.P9421048253424951862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n - A211539 n

end

end A210977.P9421048253424951862

namespace A210977

/-- `A035608(n)-A211539(n)` -/
def P9421048253424951862.Spec : Prop :=
  ∀ n, P9421048253424951862.a n = A210977 n

end A210977

/-! ## A210977.P12657945228639855633

`A238377(n)-A008805(n)`
-/

namespace A210977.P12657945228639855633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238377 n - A008805 n

end

end A210977.P12657945228639855633

namespace A210977

/-- `A238377(n)-A008805(n)` -/
def P12657945228639855633.Spec : Prop :=
  ∀ n, P12657945228639855633.a n = A210977 n

end A210977

/-!
# A210978: A186029 and positive terms of A001106 interleaved.

The programs for A210978, the canonical program `A210978.P9647571706520754832` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210978 has offset 0).

The definition of A210978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210978.P9647571706520754832

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=9, a(4)=17`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A210978

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P9647571706520754832.Spec : Prop :=
  ∀ n, P9647571706520754832.a n = A210978 n

theorem P9647571706520754832.correct : P9647571706520754832.Spec := by
  intro n
  simp only [A210978]

end A210978

/-! ## A210978.P11628867411666097778

`∑[floor(n*(gcd(2, n)/2+1))]`
-/

namespace A210978.P11628867411666097778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Nat.gcd 2 n : ℚ) / 2 + 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P11628867411666097778

namespace A210978

/-- `∑[floor(n*(gcd(2, n)/2+1))]` -/
def P11628867411666097778.Spec : Prop :=
  ∀ n, P11628867411666097778.a n = A210978 n

end A210978

/-! ## A210978.P16411844134540233259

`∑[floor(n*(2-n%2/2))]`
-/

namespace A210978.P16411844134540233259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (2 - ((n % 2 : ℕ) : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P16411844134540233259

namespace A210978

/-- `∑[floor(n*(2-n%2/2))]` -/
def P16411844134540233259.Spec : Prop :=
  ∀ n, P16411844134540233259.a n = A210978 n

end A210978

/-! ## A210978.P15117488571985485482

`∑[(∑[n]-1)%(n+1)+n]`
-/

namespace A210978.P15117488571985485482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P15117488571985485482

namespace A210978

/-- `∑[(∑[n]-1)%(n+1)+n]` -/
def P15117488571985485482.Spec : Prop :=
  ∀ n, P15117488571985485482.a n = A210978 n

end A210978

/-! ## A210978.P1412496017079085494

`∑[gcd(n+1, ∑[n])-1+n]`
-/

namespace A210978.P1412496017079085494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P1412496017079085494

namespace A210978

/-- `∑[gcd(n+1, ∑[n])-1+n]` -/
def P1412496017079085494.Spec : Prop :=
  ∀ n, P1412496017079085494.a n = A210978 n

end A210978

/-! ## A210978.P11146388238184072631

`∑[lcm(2, n+1)/2-1+n]`
-/

namespace A210978.P11146388238184072631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2 - 1 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P11146388238184072631

namespace A210978

/-- `∑[lcm(2, n+1)/2-1+n]` -/
def P11146388238184072631.Spec : Prop :=
  ∀ n, P11146388238184072631.a n = (A210978 n : ℚ)

end A210978

/-! ## A210978.P8585443460761898872

`∑[2*n]-C(floor((n+3)/2), 2)`
-/

namespace A210978.P8585443460761898872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose ⌊(n + 3 : ℚ) / 2⌋.toNat 2 : ℤ)

end

end A210978.P8585443460761898872

namespace A210978

/-- `∑[2*n]-C(floor((n+3)/2), 2)` -/
def P8585443460761898872.Spec : Prop :=
  ∀ n, P8585443460761898872.a n = A210978 n

end A210978

/-! ## A210978.P3173150903345363420

`∑[∑[a(n-2)+(-1)^n]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A210978.P3173150903345363420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  f2 (n - 2) + (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P3173150903345363420

namespace A210978

/-- `∑[∑[a(n-2)+(-1)^n]]` -/
def P3173150903345363420.Spec : Prop :=
  ∀ n, P3173150903345363420.a n = A210978 n

end A210978

/-! ## A210978.P5166498981583670727

`∑[∑[∑[n*(-1)^a(n-2)]]]` with `a(0)=0, a(1)=1`
-/

namespace A210978.P5166498981583670727
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  (n : ℝ) * (-1 : ℝ) ^ (f3 (n - 2))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P5166498981583670727

namespace A210978

/-- `∑[∑[∑[n*(-1)^a(n-2)]]]` -/
def P5166498981583670727.Spec : Prop :=
  ∀ n, P5166498981583670727.a n = (A210978 n : ℝ)

end A210978

/-! ## A210978.P10855814965646564168

`∑[∑[∑[n/(-1)^a(n-2)]]]` with `a(0)=0, a(1)=1`
-/

namespace A210978.P10855814965646564168
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  (n : ℝ) / (-1 : ℝ) ^ (f3 (n - 2))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P10855814965646564168

namespace A210978

/-- `∑[∑[∑[n/(-1)^a(n-2)]]]` -/
def P10855814965646564168.Spec : Prop :=
  ∀ n, P10855814965646564168.a n = (A210978 n : ℝ)

end A210978

/-! ## A210978.P867999724482194819

`∑[(n+1)/(and(1, n)+1)+n-1]`
-/

namespace A210978.P867999724482194819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P867999724482194819

namespace A210978

/-- `∑[(n+1)/(and(1, n)+1)+n-1]` -/
def P867999724482194819.Spec : Prop :=
  ∀ n, P867999724482194819.a n = (A210978 n : ℚ)

end A210978

/-! ## A210978.P7046115081175890474

`∑[a(n-2)+7]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A210978.P7046115081175890474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A210978.P7046115081175890474

namespace A210978

/-- `∑[a(n-2)+7]-a(n-1)` -/
def P7046115081175890474.Spec : Prop :=
  ∀ n, P7046115081175890474.a n = A210978 n

end A210978

/-! ## A210978.P401113547985438376

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=4`
-/

namespace A210978.P401113547985438376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 4] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P401113547985438376

namespace A210978

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P401113547985438376.Spec : Prop :=
  ∀ n, P401113547985438376.a n = A210978 n

end A210978

/-! ## A210978.P4936044999901510724

`∑[a(n-2)-(a(n-4)-a(n-2))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=4`
-/

namespace A210978.P4936044999901510724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 4] fun n f1 =>
  f1 (n - 2) - (f1 (n - 4) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P4936044999901510724

namespace A210978

/-- `∑[a(n-2)-(a(n-4)-a(n-2))]` -/
def P4936044999901510724.Spec : Prop :=
  ∀ n, P4936044999901510724.a n = A210978 n

end A210978

/-! ## A210978.P15730834256979528506

`A211539(n)+∑[n]`
-/

namespace A210978.P15730834256979528506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A210978.P15730834256979528506

namespace A210978

/-- `A211539(n)+∑[n]` -/
def P15730834256979528506.Spec : Prop :=
  ∀ n, P15730834256979528506.a n = A210978 n

end A210978

/-! ## A210978.P14364127151605410584

`∑[A065423(n+1)+n]`
-/

namespace A210978.P14364127151605410584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P14364127151605410584

namespace A210978

/-- `∑[A065423(n+1)+n]` -/
def P14364127151605410584.Spec : Prop :=
  ∀ n, P14364127151605410584.a n = A210978 n

end A210978

/-! ## A210978.P4338899923660319863

`∑[n]+A144065(n)-n`
-/

namespace A210978.P4338899923660319863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A144065 n - (n : ℤ))

end

end A210978.P4338899923660319863

namespace A210978

/-- `∑[n]+A144065(n)-n` -/
def P4338899923660319863.Spec : Prop :=
  ∀ n, P4338899923660319863.a n = A210978 n

end A210978

/-! ## A210978.P3608997313099892636

`∑[2*n-∑[A001057(n)]]`
-/

namespace A210978.P3608997313099892636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P3608997313099892636

namespace A210978

/-- `∑[2*n-∑[A001057(n)]]` -/
def P3608997313099892636.Spec : Prop :=
  ∀ n, P3608997313099892636.a n = A210978 n

end A210978

/-! ## A210978.P17775218747042882808

`(n+1)²-A165157(n+1)`
-/

namespace A210978.P17775218747042882808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A165157 (n + 1)

end

end A210978.P17775218747042882808

namespace A210978

/-- `(n+1)²-A165157(n+1)` -/
def P17775218747042882808.Spec : Prop :=
  ∀ n, P17775218747042882808.a n = A210978 n

end A210978

/-! ## A210978.P11941652161944956703

`∑[A026741(n+1)+n-1]`
-/

namespace A210978.P11941652161944956703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210978.P11941652161944956703

namespace A210978

/-- `∑[A026741(n+1)+n-1]` -/
def P11941652161944956703.Spec : Prop :=
  ∀ n, P11941652161944956703.a n = A210978 n

end A210978

/-!
# A210979: Total area of the shadows of the three views of the version "Tree" of the modular table of partitions with n shells.

The programs for A210979, there is no canonical definition to state claims against.
-/

/-! ## A210979.P10182548750715318780

`A006128(n)+A194803(n)+A194805(n)`
-/

namespace A210979.P10182548750715318780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + A194803 n + A194805 n

end

end A210979.P10182548750715318780

/-! ## A210979.P16477448074561109817

`A123578((or(1, n)+n)*A095151(n))`
-/

namespace A210979.P16477448074561109817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 ((Nat.lor 1 n + n : ℤ) * A095151 n).toNat

end

end A210979.P16477448074561109817

/-! ## A210979.P7533424052650516617

`A071330(A261386(n))+A001182(n+1)`
-/

namespace A210979.P7533424052650516617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A261386 n).toNat + A001182 (n + 1)

end

end A210979.P7533424052650516617

/-!
# A210980: Total area of the shadows of the three views of the modular table of partitions, version "Tree", with n shells.

The programs for A210980, there is no canonical definition to state claims against.
-/

/-! ## A210980.P637205600292662076

`A066186(n)+A194804(n)+A194805(n)`
-/

namespace A210980.P637205600292662076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + A194804 n + A194805 n

end

end A210980.P637205600292662076

/-! ## A210980.P1250164631410783886

`A107393(n)+A003056(A279129(n+1))`
-/

namespace A210980.P1250164631410783886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n + A003056 (A279129 (n + 1)).toNat

end

end A210980.P1250164631410783886

/-!
# A210981: A062725 and positive terms of A051682 interleaved.

The programs for A210981, the canonical program `A210981.P16326599302125340332` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210981 has offset 0).

The definition of A210981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210981.P16326599302125340332

`(18*n²+14*n-5+(6*n+5)*(-1)^n)/16`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A210981

/-- `(18*n²+14*n-5+(6*n+5)*(-1)^n)/16` -/
def P16326599302125340332.Spec : Prop :=
  ∀ n, P16326599302125340332.a n = (A210981 n : ℚ)

end A210981

/-! ## A210981.P311265775210723282

`C(∑[gcd(2, n)], 2)-(n+1)`
-/

namespace A210981.P311265775210723282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n + 1 : ℤ)

end

end A210981.P311265775210723282

namespace A210981

/-- `C(∑[gcd(2, n)], 2)-(n+1)` -/
def P311265775210723282.Spec : Prop :=
  ∀ n, P311265775210723282.a n = A210981 n

end A210981

/-! ## A210981.P3261912933606156944

`∑[floor(3*n/(n%2+1))]`
-/

namespace A210981.P3261912933606156944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P3261912933606156944

namespace A210981

/-- `∑[floor(3*n/(n%2+1))]` -/
def P3261912933606156944.Spec : Prop :=
  ∀ n, P3261912933606156944.a n = A210981 n

end A210981

/-! ## A210981.P7135104254433716746

`∑[∑[9*n]%(3*n+1)]`
-/

namespace A210981.P7135104254433716746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P7135104254433716746

namespace A210981

/-- `∑[∑[9*n]%(3*n+1)]` -/
def P7135104254433716746.Spec : Prop :=
  ∀ n, (P7135104254433716746.a n : ℤ) = A210981 n

end A210981

/-! ## A210981.P6148064914896653949

`∑[lcm(2, 3*n+1)/2-1]`
-/

namespace A210981.P6148064914896653949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n + 1) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P6148064914896653949

namespace A210981

/-- `∑[lcm(2, 3*n+1)/2-1]` -/
def P6148064914896653949.Spec : Prop :=
  ∀ n, P6148064914896653949.a n = (A210981 n : ℚ)

end A210981

/-! ## A210981.P393669227342959789

`C(comp[3*n]+1, 2)-(n+1)`
-/

namespace A210981.P393669227342959789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 2 : ℤ) - (n + 1 : ℤ)

end

end A210981.P393669227342959789

namespace A210981

/-- `C(comp[3*n]+1, 2)-(n+1)` -/
def P393669227342959789.Spec : Prop :=
  ∀ n, P393669227342959789.a n = A210981 n

end A210981

/-! ## A210981.P15078051089496156074

`∑[a(n-2)+gcd(6, lcm(81, n))]` with `a(0)=0, a(1)=1`
-/

namespace A210981.P15078051089496156074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + Nat.gcd 6 (Nat.lcm 81 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P15078051089496156074

namespace A210981

/-- `∑[a(n-2)+gcd(6, lcm(81, n))]` -/
def P15078051089496156074.Spec : Prop :=
  ∀ n, (P15078051089496156074.a n : ℤ) = A210981 n

end A210981

/-! ## A210981.P15393963064777856498

`∑[floor(3*n/gcd(n+1, 4/2))]`
-/

namespace A210981.P15393963064777856498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway ((4 : ℚ) / 2)) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P15393963064777856498

namespace A210981

/-- `∑[floor(3*n/gcd(n+1, 4/2))]` -/
def P15393963064777856498.Spec : Prop :=
  ∀ n, P15393963064777856498.a n = A210981 n

end A210981

/-! ## A210981.P6747647015606306861

`∑[gcd(4, ∏{p}[n, #])*floor(3*n/2)]`
-/

namespace A210981.P6747647015606306861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℤ) * ⌊3 * ((n : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P6747647015606306861

namespace A210981

/-- `∑[gcd(4, ∏{p}[n, #])*floor(3*n/2)]` -/
def P6747647015606306861.Spec : Prop :=
  ∀ n, P6747647015606306861.a n = A210981 n

end A210981

/-! ## A210981.P3375832833767651018

`C(round((n+3)/2)+n, 2)-1-n`
-/

namespace A210981.P3375832833767651018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.roundAway ((n + 3 : ℚ) / 2) + (n : ℤ)).toNat 2 : ℤ) - 1 - (n : ℤ)

end

end A210981.P3375832833767651018

namespace A210981

/-- `C(round((n+3)/2)+n, 2)-1-n` -/
def P3375832833767651018.Spec : Prop :=
  ∀ n, P3375832833767651018.a n = A210981 n

end A210981

/-! ## A210981.P12969268805098811923

`∑[lcm(n^((n+1)%2), floor(n/2+n))]`
-/

namespace A210981.P12969268805098811923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ ((n + 1) % 2) : ℤ) ⌊(n : ℚ) / 2 + (n : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P12969268805098811923

namespace A210981

/-- `∑[lcm(n^((n+1)%2), floor(n/2+n))]` -/
def P12969268805098811923.Spec : Prop :=
  ∀ n, (P12969268805098811923.a n : ℤ) = A210981 n

end A210981

/-! ## A210981.P15954765625681363791

`∑[(1-(1-n)%2)*∑[1-(1-n)%2]]`
-/

namespace A210981.P15954765625681363791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (1 - (n : ℤ)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.tmod (1 - (n : ℤ)) 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P15954765625681363791

namespace A210981

/-- `∑[(1-(1-n)%2)*∑[1-(1-n)%2]]` -/
def P15954765625681363791.Spec : Prop :=
  ∀ n, P15954765625681363791.a n = A210981 n

end A210981

/-! ## A210981.P15629266054467338411

`∑[A165355(n)-1]`
-/

namespace A210981.P15629266054467338411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P15629266054467338411

namespace A210981

/-- `∑[A165355(n)-1]` -/
def P15629266054467338411.Spec : Prop :=
  ∀ n, P15629266054467338411.a n = A210981 n

end A210981

/-! ## A210981.P5786346528098791595

`∑[gcd(2, n)*A032766(n)]`
-/

namespace A210981.P5786346528098791595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P5786346528098791595

namespace A210981

/-- `∑[gcd(2, n)*A032766(n)]` -/
def P5786346528098791595.Spec : Prop :=
  ∀ n, P5786346528098791595.a n = A210981 n

end A210981

/-! ## A210981.P3221331436980757397

`∑[A065262(n+1)-1+n]`
-/

namespace A210981.P3221331436980757397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (n + 1) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210981.P3221331436980757397

namespace A210981

/-- `∑[A065262(n+1)-1+n]` -/
def P3221331436980757397.Spec : Prop :=
  ∀ n, P3221331436980757397.a n = A210981 n

end A210981

/-! ## A210981.P5531241179505747887

`A000217(comp[3*n])-(n+1)`
-/

namespace A210981.P5531241179505747887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - (n + 1 : ℤ)

end

end A210981.P5531241179505747887

namespace A210981

/-- `A000217(comp[3*n])-(n+1)` -/
def P5531241179505747887.Spec : Prop :=
  ∀ n, P5531241179505747887.a n = A210981 n

end A210981

/-! ## A210981.P4358453306677879917

`A118277(n)+A002620(n)`
-/

namespace A210981.P4358453306677879917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n + A002620 n

end

end A210981.P4358453306677879917

namespace A210981

/-- `A118277(n)+A002620(n)` -/
def P4358453306677879917.Spec : Prop :=
  ∀ n, P4358453306677879917.a n = A210981 n

end A210981

/-! ## A210981.P1636438668809336180

`A144065(n)+A032438(n)`
-/

namespace A210981.P1636438668809336180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 n + A032438 n

end

end A210981.P1636438668809336180

namespace A210981

/-- `A144065(n)+A032438(n)` -/
def P1636438668809336180.Spec : Prop :=
  ∀ n, P1636438668809336180.a n = A210981 n

end A210981

/-! ## A210981.P7436944593348512840

`A210978(n)+A110660(n)`
-/

namespace A210981.P7436944593348512840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210978 n + A110660 n

end

end A210981.P7436944593348512840

namespace A210981

/-- `A210978(n)+A110660(n)` -/
def P7436944593348512840.Spec : Prop :=
  ∀ n, P7436944593348512840.a n = A210981 n

end A210981

/-! ## A210981.P5979612553344367101

`A195160(n)-A142150(n)`
-/

namespace A210981.P5979612553344367101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195160 n - A142150 n

end

end A210981.P5979612553344367101

namespace A210981

/-- `A195160(n)-A142150(n)` -/
def P5979612553344367101.Spec : Prop :=
  ∀ n, P5979612553344367101.a n = A210981 n

end A210981

/-!
# A210982: Zero together with A126264 and positive terms of A051624 interleaved.

The programs for A210982, the canonical program `A210982.P5957070517431460579` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210982 has offset 0).

The definition of A210982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210982.P5957070517431460579

`(10*n²+8*n-3+(4*n+3)*(-1)^n)/8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A210982

/-- `(10*n²+8*n-3+(4*n+3)*(-1)^n)/8` -/
def P5957070517431460579.Spec : Prop :=
  ∀ n, P5957070517431460579.a n = (A210982 n : ℚ)

end A210982

/-! ## A210982.P1432576978179562171

`∑[((n+2)*2*n)%(4*n+1)]`
-/

namespace A210982.P1432576978179562171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * n) % (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210982.P1432576978179562171

namespace A210982

/-- `∑[((n+2)*2*n)%(4*n+1)]` -/
def P1432576978179562171.Spec : Prop :=
  ∀ n, (P1432576978179562171.a n : ℤ) = A210982 n

end A210982

/-! ## A210982.P4731540677811019956

`∑[n*gcd(2, n)²]-(n-gcd(n, ∑[n]))`
-/

namespace A210982.P4731540677811019956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ))

end

end A210982.P4731540677811019956

namespace A210982

/-- `∑[n*gcd(2, n)²]-(n-gcd(n, ∑[n]))` -/
def P4731540677811019956.Spec : Prop :=
  ∀ n, P4731540677811019956.a n = A210982 n

end A210982

/-! ## A210982.P16601655619398334810

`A074377(n)+floor((n/2)²)`
-/

namespace A210982.P16601655619398334810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A210982.P16601655619398334810

namespace A210982

/-- `A074377(n)+floor((n/2)²)` -/
def P16601655619398334810.Spec : Prop :=
  ∀ n, P16601655619398334810.a n = A210982 n

end A210982

/-! ## A210982.P3633513962670623908

`A195162(n)-(n-gcd(n, ∑[n]))`
-/

namespace A210982.P3633513962670623908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n - ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A210982.P3633513962670623908

namespace A210982

/-- `A195162(n)-(n-gcd(n, ∑[n]))` -/
def P3633513962670623908.Spec : Prop :=
  ∀ n, P3633513962670623908.a n = A210982 n

end A210982

/-! ## A210982.P12775808505472398211

`∑[A047215(n)]-∑[-(n*(-1)^n)]`
-/

namespace A210982.P12775808505472398211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A210982.P12775808505472398211

namespace A210982

/-- `∑[A047215(n)]-∑[-(n*(-1)^n)]` -/
def P12775808505472398211.Spec : Prop :=
  ∀ n, P12775808505472398211.a n = A210982 n

end A210982

/-! ## A210982.P6576082023961870984

`A118277(n)+∑[floor(n/(n%2+1))]`
-/

namespace A210982.P6576082023961870984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210982.P6576082023961870984

namespace A210982

/-- `A118277(n)+∑[floor(n/(n%2+1))]` -/
def P6576082023961870984.Spec : Prop :=
  ∀ n, P6576082023961870984.a n = A210982 n

end A210982

/-! ## A210982.P14460391872072602207

`A000217(or(1, n))+∑[round(3*n/2)-1]`
-/

namespace A210982.P14460391872072602207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n : ℚ) / 2)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.lor 1 n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210982.P14460391872072602207

namespace A210982

/-- `A000217(or(1, n))+∑[round(3*n/2)-1]` -/
def P14460391872072602207.Spec : Prop :=
  ∀ n, P14460391872072602207.a n = A210982 n

end A210982

/-! ## A210982.P952674401452721405

`A071045(n)+A032527(n)`
-/

namespace A210982.P952674401452721405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n + A032527 n

end

end A210982.P952674401452721405

namespace A210982

/-- `A071045(n)+A032527(n)` -/
def P952674401452721405.Spec : Prop :=
  ∀ n, P952674401452721405.a n = A210982 n

end A210982

/-! ## A210982.P5857977059740663795

`A211539(n)+A118277(n)`
-/

namespace A210982.P5857977059740663795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n + A118277 n

end

end A210982.P5857977059740663795

namespace A210982

/-- `A211539(n)+A118277(n)` -/
def P5857977059740663795.Spec : Prop :=
  ∀ n, P5857977059740663795.a n = A210982 n

end A210982

/-! ## A210982.P17316564821984958455

`A266440(n)+A077043(n)`
-/

namespace A210982.P17316564821984958455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266440 n + A077043 n

end

end A210982.P17316564821984958455

namespace A210982

/-- `A266440(n)+A077043(n)` -/
def P17316564821984958455.Spec : Prop :=
  ∀ n, P17316564821984958455.a n = A210982 n

end A210982

/-! ## A210982.P12070979272001016868

`A249547(n)+A130472(n)`
-/

namespace A210982.P12070979272001016868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n + A130472 n

end

end A210982.P12070979272001016868

namespace A210982

/-- `A249547(n)+A130472(n)` -/
def P12070979272001016868.Spec : Prop :=
  ∀ n, P12070979272001016868.a n = A210982 n

end A210982

/-! ## A210982.P511852620287795069

`A266304(n)+A242477(n)`
-/

namespace A210982.P511852620287795069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 n + A242477 n

end

end A210982.P511852620287795069

namespace A210982

/-- `A266304(n)+A242477(n)` -/
def P511852620287795069.Spec : Prop :=
  ∀ n, P511852620287795069.a n = A210982 n

end A210982

/-! ## A210982.P2636613844164711239

`A249547(n)-A001057(n)`
-/

namespace A210982.P2636613844164711239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n - A001057 n

end

end A210982.P2636613844164711239

namespace A210982

/-- `A249547(n)-A001057(n)` -/
def P2636613844164711239.Spec : Prop :=
  ∀ n, P2636613844164711239.a n = A210982 n

end A210982

/-! ## A210982.P7893946307485812022

`A195162(n)-A142150(n)`
-/

namespace A210982.P7893946307485812022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n - A142150 n

end

end A210982.P7893946307485812022

namespace A210982

/-- `A195162(n)-A142150(n)` -/
def P7893946307485812022.Spec : Prop :=
  ∀ n, P7893946307485812022.a n = A210982 n

end A210982

/-! ## A210982.P1410676947311593960

`A273368(n)-A115006(n)`
-/

namespace A210982.P1410676947311593960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273368 n - A115006 n

end

end A210982.P1410676947311593960

namespace A210982

/-- `A273368(n)-A115006(n)` -/
def P1410676947311593960.Spec : Prop :=
  ∀ n, P1410676947311593960.a n = A210982 n

end A210982

/-! ## A210982.P5919135236907065734

`A213399(n)-A263807(n)`
-/

namespace A210982.P5919135236907065734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 n - A263807 n

end

end A210982.P5919135236907065734

namespace A210982

/-- `A213399(n)-A263807(n)` -/
def P5919135236907065734.Spec : Prop :=
  ∀ n, P5919135236907065734.a n = A210982 n

end A210982

/-! ## A210982.P4726796061449551695

`A317637(n)%A083363(n)`
-/

namespace A210982.P4726796061449551695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317637 n) (A083363 n)

end

end A210982.P4726796061449551695

namespace A210982

/-- `A317637(n)%A083363(n)` -/
def P4726796061449551695.Spec : Prop :=
  ∀ n, P4726796061449551695.a n = A210982 n

end A210982

/-! ## A210982.P12477470893801137177

`A174114(n+1)+A078126(n)`
-/

namespace A210982.P12477470893801137177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174114 (n + 1) + A078126 n

end

end A210982.P12477470893801137177

namespace A210982

/-- `A174114(n+1)+A078126(n)` -/
def P12477470893801137177.Spec : Prop :=
  ∀ n, P12477470893801137177.a n = A210982 n

end A210982

/-! ## A210982.P2102283677914479697

`A239767(n)+A065423(n+1)`
-/

namespace A210982.P2102283677914479697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 n + A065423 (n + 1)

end

end A210982.P2102283677914479697

namespace A210982

/-- `A239767(n)+A065423(n+1)` -/
def P2102283677914479697.Spec : Prop :=
  ∀ n, P2102283677914479697.a n = A210982 n

end A210982

/-!
# A210983: Total number of pairs of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

The programs for A210983, there is no canonical definition to state claims against.
-/

/-! ## A210983.P13803526192608436220

`A210984(n+1)/2`
-/

namespace A210983.P13803526192608436220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210984 (n + 1) : ℚ) / 2

end

end A210983.P13803526192608436220

/-! ## A210983.P10044907455569719603

`a(n-floor(sqrt(Δ[n²])))+1+n` with `a(0)=1`
-/

namespace A210983.P10044907455569719603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - Int.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat + 1 + n

end

end A210983.P10044907455569719603

/-! ## A210983.P10576220477658124730

`a(n-floor(sqrt(2*n+1)))+n+1` with `a(0)=1`
-/

namespace A210983.P10576220477658124730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - Nat.sqrt (2 * n + 1)) + (n + 1)

end

end A210983.P10576220477658124730

/-! ## A210983.P507586120507458536

`∑[comp[∑[n]]-n-abs(ceil(sqrt(Δ[n²]))²-n-comp[∑[n]])]`
-/

namespace A210983.P507586120507458536
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) - |⌈Real.sqrt ((f4 (n + 1) : ℤ) - (f4 n : ℤ) : ℝ)⌉ ^ 2 - (n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210983.P507586120507458536

/-! ## A210983.P392056315921509234

`∑[A162630(n+1)]/2`
-/

namespace A210983.P392056315921509234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162630 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A210983.P392056315921509234

/-! ## A210983.P4368776070031360815

`∑[A181940(n)]+1+n`
-/

namespace A210983.P4368776070031360815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A210983.P4368776070031360815

/-! ## A210983.P14141235263930260578

`or(∑[A130517(n+1)], char[1])`
-/

namespace A210983.P14141235263930260578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210983.P14141235263930260578

/-! ## A210983.P14710872935976263492

`floor(∑[sqrt(A124258(2*n+1))])`
-/

namespace A210983.P14710872935976263492
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A124258 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A210983.P14710872935976263492

/-! ## A210983.P14090810350079547173

`or(∑[A004737(2*n+1)], char[1])`
-/

namespace A210983.P14090810350079547173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210983.P14090810350079547173

/-! ## A210983.P9504015203073932315

`A001281(A210984(n+1))`
-/

namespace A210983.P9504015203073932315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A210984 (n + 1)).toNat

end

end A210983.P9504015203073932315

/-!
# A210984: Total number of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

The programs for A210984, there is no canonical definition to state claims against.
-/

/-! ## A210984.P4704969442679068306

`2*A210983(n+1)`
-/

namespace A210984.P4704969442679068306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210983 (n + 1)

end

end A210984.P4704969442679068306

/-! ## A210984.P15535724212235401211

`∑[A162630(n+1)]`
-/

namespace A210984.P15535724212235401211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210984.P15535724212235401211

/-! ## A210984.P1018648520991940958

`∑[2*A130517(n+1)]`
-/

namespace A210984.P1018648520991940958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210984.P1018648520991940958

/-! ## A210984.P17987976753639026555

`∑[2*(A181940(n)+1)]`
-/

namespace A210984.P17987976753639026555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181940 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210984.P17987976753639026555

/-! ## A210984.P16629877035161461049

`∑[2*A004737(Δ[n²])]`
-/

namespace A210984.P16629877035161461049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004737 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210984.P16629877035161461049

/-! ## A210984.P14505836001226894463

`∑[abs(2*A056951(n+1))]`
-/

namespace A210984.P14505836001226894463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A056951 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210984.P14505836001226894463

/-! ## A210984.P5750672567278046961

`∑[2*sqrt(A124258(2*n+1))]`
-/

namespace A210984.P5750672567278046961
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A124258 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210984.P5750672567278046961

/-! ## A210984.P15601030860908900462

`a(n-1)+2*A004737(2*n+1)` with `a(0)=2`
-/

namespace A210984.P15601030860908900462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A004737 (2 * n + 1)

end

end A210984.P15601030860908900462

/-! ## A210984.P8252167901179250596

`A004277(A210983(n+1))`
-/

namespace A210984.P8252167901179250596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210983 (n + 1)).toNat

end

end A210984.P8252167901179250596

/-! ## A210984.P3243548291036821750

`∑[A088226(A017101(n))+1]`
-/

namespace A210984.P3243548291036821750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A017101 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210984.P3243548291036821750

/-!
# A210985: Number of segments needed to draw the toothpick structure of A139250 as it is after 2^n stages.

The programs for A210985, the canonical program `A210985.P6221915631124938783` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210985 has offset 0).

The definition of A210985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210985.P17613062620826246261

`A139252(2^n)`
-/

namespace A210985.P17613062620826246261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (2 ^ n)

end

end A210985.P17613062620826246261

namespace A210985

/-- `A139252(2^n)` -/
def P17613062620826246261.Spec : Prop :=
  ∀ n, P17613062620826246261.a n = A210985 n

end A210985

/-! ## A210985.P14511125521443272387

`∑[∑[ogf((-1+3x+2x^2)/(-1+4x))]]`
-/

namespace A210985.P14511125521443272387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -2] [1, -4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210985.P14511125521443272387

namespace A210985

/-- `∑[∑[ogf((-1+3x+2x^2)/(-1+4x))]]` -/
def P14511125521443272387.Spec : Prop :=
  ∀ n, P14511125521443272387.a n = A210985 n

end A210985

/-! ## A210985.P10993832741484747245

`ogf((-1+3x+2x^2)/(-1+6x-9x^2+4x^3))`
-/

namespace A210985.P10993832741484747245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -2] [1, -6, 9, -4] n

end

end A210985.P10993832741484747245

namespace A210985

/-- `ogf((-1+3x+2x^2)/(-1+6x-9x^2+4x^3))` -/
def P10993832741484747245.Spec : Prop :=
  ∀ n, P10993832741484747245.a n = A210985 n

end A210985

/-! ## A210985.P6221915631124938783

`∑[∑[ceil(2^(2*n-3))]]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A210985

/-- `∑[∑[ceil(2^(2*n-3))]]` -/
def P6221915631124938783.Spec : Prop :=
  ∀ n, P6221915631124938783.a n = A210985 n

theorem P6221915631124938783.correct : P6221915631124938783.Spec := by
  intro n
  simp only [A210985]

end A210985

/-! ## A210985.P6487562252055728519

`4*(a(n-1)-n)+3` with `a(0)=1`
-/

namespace A210985.P6487562252055728519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) - (n : ℤ)) + 3

end

end A210985.P6487562252055728519

namespace A210985

/-- `4*(a(n-1)-n)+3` -/
def P6487562252055728519.Spec : Prop :=
  ∀ n, P6487562252055728519.a n = A210985 n

end A210985

/-! ## A210985.P1848143948675268306

`3-4*(n-a(n-1))` with `a(0)=1`
-/

namespace A210985.P1848143948675268306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - 4 * ((n : ℤ) - a (n - 1))

end

end A210985.P1848143948675268306

namespace A210985

/-- `3-4*(n-a(n-1))` -/
def P1848143948675268306.Spec : Prop :=
  ∀ n, P1848143948675268306.a n = A210985 n

end A210985

/-! ## A210985.P6927442015922377640

`A350717(n)+n`
-/

namespace A210985.P6927442015922377640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350717 n + (n : ℤ)

end

end A210985.P6927442015922377640

namespace A210985

/-- `A350717(n)+n` -/
def P6927442015922377640.Spec : Prop :=
  ∀ n, P6927442015922377640.a n = A210985 n

end A210985

/-! ## A210985.P9633367180472504450

`or(1, ∑[A039301(n)])`
-/

namespace A210985.P9633367180472504450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210985.P9633367180472504450

namespace A210985

/-- `or(1, ∑[A039301(n)])` -/
def P9633367180472504450.Spec : Prop :=
  ∀ n, P9633367180472504450.a n = A210985 n

end A210985

/-! ## A210985.P1152102411726623218

`abs(A140962(Δ[n²]))`
-/

namespace A210985.P1152102411726623218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140962 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A210985.P1152102411726623218

namespace A210985

/-- `abs(A140962(Δ[n²]))` -/
def P1152102411726623218.Spec : Prop :=
  ∀ n, P1152102411726623218.a n = A210985 n

end A210985

/-! ## A210985.P12091378647023009121

`abs(∑[record[A084247(n)]])`
-/

namespace A210985.P12091378647023009121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A210985.P12091378647023009121

namespace A210985

/-- `abs(∑[record[A084247(n)]])` -/
def P12091378647023009121.Spec : Prop :=
  ∀ n, P12091378647023009121.a n = A210985 n

end A210985

/-! ## A210985.P11111771539170241192

`A068018(2*n)+1`
-/

namespace A210985.P11111771539170241192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068018 (2 * n) + 1

end

end A210985.P11111771539170241192

namespace A210985

/-- `A068018(2*n)+1` -/
def P11111771539170241192.Spec : Prop :=
  ∀ n, P11111771539170241192.a n = A210985 n

end A210985

/-! ## A210985.P3248386049379458014

`record[-A140962(n+1)]`
-/

namespace A210985.P3248386049379458014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A140962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210985.P3248386049379458014

namespace A210985

/-- `record[-A140962(n+1)]` -/
def P3248386049379458014.Spec : Prop :=
  ∀ n, P3248386049379458014.a n = A210985 n

end A210985

/-! ## A210985.P10938403932618317294

`record[2-A077898(n)+n]`
-/

namespace A210985.P10938403932618317294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A077898 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210985.P10938403932618317294

namespace A210985

/-- `record[2-A077898(n)+n]` -/
def P10938403932618317294.Spec : Prop :=
  ∀ n, P10938403932618317294.a n = A210985 n

end A210985

/-! ## A210985.P4616920328998432187

`A113954(2*n)+2*n`
-/

namespace A210985.P4616920328998432187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 (2 * n) + (2 * n : ℤ)

end

end A210985.P4616920328998432187

namespace A210985

/-- `A113954(2*n)+2*n` -/
def P4616920328998432187.Spec : Prop :=
  ∀ n, P4616920328998432187.a n = A210985 n

end A210985

/-! ## A210985.P17501313153426108075

`∑[A173197(2*n)]-2*n`
-/

namespace A210985.P17501313153426108075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173197 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A210985.P17501313153426108075

namespace A210985

/-- `∑[A173197(2*n)]-2*n` -/
def P17501313153426108075.Spec : Prop :=
  ∀ n, P17501313153426108075.a n = A210985 n

end A210985

/-! ## A210985.P15642768546941328600

`∑[∑[A171869(2*n+1)]]-n`
-/

namespace A210985.P15642768546941328600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171869 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A210985.P15642768546941328600

namespace A210985

/-- `∑[∑[A171869(2*n+1)]]-n` -/
def P15642768546941328600.Spec : Prop :=
  ∀ n, P15642768546941328600.a n = A210985 n

end A210985

/-! ## A210985.P2242553226696960906

`∑[A135351(2*n)]+2*n+1`
-/

namespace A210985.P2242553226696960906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A210985.P2242553226696960906

namespace A210985

/-- `∑[A135351(2*n)]+2*n+1` -/
def P2242553226696960906.Spec : Prop :=
  ∀ n, P2242553226696960906.a n = A210985 n

end A210985

/-! ## A210985.P9486033847561609046

`(1-4/2)*A140962(2*n+1)`
-/

namespace A210985.P9486033847561609046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) * (A140962 (2 * n + 1) : ℚ)

end

end A210985.P9486033847561609046

namespace A210985

/-- `(1-4/2)*A140962(2*n+1)` -/
def P9486033847561609046.Spec : Prop :=
  ∀ n, P9486033847561609046.a n = (A210985 n : ℚ)

end A210985

/-! ## A210985.P1551659805340554490

`A243514(n+1)+n-A000051(n)`
-/

namespace A210985.P1551659805340554490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243514 (n + 1) + ((n : ℤ) - A000051 n)

end

end A210985.P1551659805340554490

namespace A210985

/-- `A243514(n+1)+n-A000051(n)` -/
def P1551659805340554490.Spec : Prop :=
  ∀ n, P1551659805340554490.a n = A210985 n

end A210985

/-! ## A210985.P13676684540079790638

`∑[A001045(A004277(n)-1)]+n+1`
-/

namespace A210985.P13676684540079790638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004277 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A210985.P13676684540079790638

namespace A210985

/-- `∑[A001045(A004277(n)-1)]+n+1` -/
def P13676684540079790638.Spec : Prop :=
  ∀ n, P13676684540079790638.a n = A210985 n

end A210985

/-!
# A210986: Number of fixed polyominoes with 2n cells.

The programs for A210986, there is no canonical definition to state claims against.
-/

/-! ## A210986.P11155579289521808099

`A001168(2*(n+1))`
-/

namespace A210986.P11155579289521808099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (2 * (n + 1))

end

end A210986.P11155579289521808099

/-! ## A210986.P406042140420422447

`A006762(2*(n+1))+2`
-/

namespace A210986.P406042140420422447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006762 (2 * (n + 1)) + 2

end

end A210986.P406042140420422447

/-! ## A210986.P1126000526162030356

`record[A001168(and(n, n-1)+2)]`
-/

namespace A210986.P1126000526162030356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (Int.land (n : ℤ) ((n : ℤ) - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210986.P1126000526162030356

/-! ## A210986.P7605505213799220589

`record[A001168(A103889(n+1))]`
-/

namespace A210986.P7605505213799220589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A103889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210986.P7605505213799220589

/-! ## A210986.P10705494342017678525

`record[A001168(2*A008611(n))]`
-/

namespace A210986.P10705494342017678525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (2 * A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210986.P10705494342017678525

/-!
# A210987: Number of fixed polyominoes with 2n-1 cells.

The programs for A210987, there is no canonical definition to state claims against.
-/

/-! ## A210987.P15994609080605994766

`A001168(2*(n+1)-1)`
-/

namespace A210987.P15994609080605994766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (2 * (n + 1) - 1)

end

end A210987.P15994609080605994766

/-! ## A210987.P1080946958951311720

`record[A001168(xor(1, n))]`
-/

namespace A210987.P1080946958951311720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210987.P1080946958951311720

/-! ## A210987.P12168241222811207248

`record[A001168(gcd(n, ∑[n]))]`
-/

namespace A210987.P12168241222811207248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210987.P12168241222811207248

/-! ## A210987.P15854884776839587629

`record[A001168(n*n%2)]`
-/

namespace A210987.P15854884776839587629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210987.P15854884776839587629

/-! ## A210987.P10239697043640492360

`record[A001168(and(n, n-1)+1)]`
-/

namespace A210987.P10239697043640492360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210987.P10239697043640492360

/-!
# A210988: Number of one-sided polyominoes with 2n cells.

The programs for A210988, there is no canonical definition to state claims against.
-/

/-! ## A210988.P1467209999510494742

`A000988(2*(n+1))`
-/

namespace A210988.P1467209999510494742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 (2 * (n + 1))

end

end A210988.P1467209999510494742

/-! ## A210988.P15946305774935471038

`record[A000988(and(n, n+1))]`
-/

namespace A210988.P15946305774935471038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210988.P15946305774935471038

/-! ## A210988.P16212746207196516552

`A006758(2*(n+1))+1`
-/

namespace A210988.P16212746207196516552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006758 (2 * (n + 1)) + 1

end

end A210988.P16212746207196516552

/-! ## A210988.P7959579592653655163

`record[A000988(A124625(n))]`
-/

namespace A210988.P7959579592653655163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210988.P7959579592653655163

/-!
# A210989: Number of one-sided polyominoes with 2n-1 cells.

The programs for A210989, there is no canonical definition to state claims against.
-/

/-! ## A210989.P8847234732623638927

`A000988(Δ[n²])`
-/

namespace A210989.P8847234732623638927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A210989.P8847234732623638927

/-! ## A210989.P8829195894556573395

`A006758(Δ[n²])+1`
-/

namespace A210989.P8829195894556573395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A210989.P8829195894556573395

/-! ## A210989.P7740114774238660669

`A121198(Δ[n²])/2`
-/

namespace A210989.P7740114774238660669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121198 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A210989.P7740114774238660669

/-! ## A210989.P4687950894077931374

`record[A000988(n*n%2)]`
-/

namespace A210989.P4687950894077931374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210989.P4687950894077931374

/-! ## A210989.P5295067476082217602

`record[A000988(n*and(1, n))]`
-/

namespace A210989.P5295067476082217602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210989.P5295067476082217602

/-!
# A210992: Square array read by antidiagonals, in which column k starts with k plateaus of lengths k+1, k, k-1, k-2, k-3,..2 and of levels A000124: 1, 2, 4, 7, 11..., if k >= 1, connected by consecutive integers. After the last plateau the length remains 1.

The programs for A210992, there is no canonical definition to state claims against.
-/

/-! ## A210992.P11671849075131930034

`A240060(A072733(n)+1)`
-/

namespace A210992.P11671849075131930034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240060 (A072733 n + 1).toNat

end

end A210992.P11671849075131930034

/-! ## A210992.P14309986683566483228

`A294991(gcd(A068009(n), A140648(n)))`
-/

namespace A210992.P14309986683566483228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294991 (Int.gcd (A068009 n) (A140648 n))

end

end A210992.P14309986683566483228

/-! ## A210992.P15904219194016062372

`A304036(gcd(A048994(n), A130478(n+1)))`
-/

namespace A210992.P15904219194016062372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 (Int.gcd (A048994 n) (A130478 (n + 1)))

end

end A210992.P15904219194016062372

/-! ## A210992.P7237438340381485509

`A004736(n+1)-A097150(A176348(n))`
-/

namespace A210992.P7237438340381485509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A097150 (A176348 n).toNat

end

end A210992.P7237438340381485509

/-! ## A210992.P14243461943642750974

`A385866(n+2)-A385881(A385862(n))`
-/

namespace A210992.P14243461943642750974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385866 (n + 2) - A385881 (A385862 n).toNat

end

end A210992.P14243461943642750974

/-!
# A210993: Fermat pseudoprimes to base 2 of the form (6*k - 1)*((6*k - 2)*n + 1), where k and n are positive integers.

The programs for A210993, there is no canonical definition to state claims against.
-/

/-! ## A210993.P8302937902940074287

`A001567(record[Δ[A322528(2*n+1)]])`
-/

namespace A210993.P8302937902940074287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322528 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210993.P8302937902940074287

/-! ## A210993.P8919102195470561851

`A001567(∑[gcd(3, A247830(2*(n+2)))])`
-/

namespace A210993.P8919102195470561851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A247830 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210993.P8919102195470561851

/-! ## A210993.P5888884936478756114

`A001567(eq[A025880(n), A185213(n)])`
-/

namespace A210993.P5888884936478756114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A210993.P5888884936478756114

/-! ## A210993.P16876285968873602568

`A001567(eq[A277826(2*n), A347451(n+1)])`
-/

namespace A210993.P16876285968873602568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A210993.P16876285968873602568

/-!
# A210994: Numbers k such that A000005(k) != 4.

The programs for A210994, the canonical program `A210994.P14985166472289145165` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210994 has offset 1).

The definition of A210994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210994.P54983279105736492

`comp[A030513(n+1)-1]+1`
-/

namespace A210994.P54983279105736492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A210994.P54983279105736492

namespace A210994

/-- `comp[A030513(n+1)-1]+1` -/
def P54983279105736492.Spec : Prop :=
  ∀ n, (P54983279105736492.a n : ℤ) = A210994 (n + 1)

end A210994

/-! ## A210994.P14985166472289145165

`comp[A007422(n+2)-1]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A210994

/-- `comp[A007422(n+2)-1]+1` -/
def P14985166472289145165.Spec : Prop :=
  ∀ n, (P14985166472289145165.a n : ℤ) = A210994 (n + 1)

theorem P14985166472289145165.correct : P14985166472289145165.Spec := by
  intro n
  simp only [A210994, Nat.add_sub_cancel]

end A210994

/-! ## A210994.P12564182048956464839

`comp[eq[4, A000005(n+1)]]+1`
-/

namespace A210994.P12564182048956464839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A210994.P12564182048956464839

namespace A210994

/-- `comp[eq[4, A000005(n+1)]]+1` -/
def P12564182048956464839.Spec : Prop :=
  ∀ n, (P12564182048956464839.a n : ℤ) = A210994 (n + 1)

end A210994

/-! ## A210994.P1453783367319075832

`∪[A084400(n+1), A058080(n+1)]`
-/

namespace A210994.P1453783367319075832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210994.P1453783367319075832

namespace A210994

/-- `∪[A084400(n+1), A058080(n+1)]` -/
def P1453783367319075832.Spec : Prop :=
  ∀ n, (P1453783367319075832.a n : ℤ) = A210994 (n + 1)

end A210994

/-! ## A210994.P15520378271327010433

`∪[A326715(n+1), A066423(n+1)]`
-/

namespace A210994.P15520378271327010433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210994.P15520378271327010433

namespace A210994

/-- `∪[A326715(n+1), A066423(n+1)]` -/
def P15520378271327010433.Spec : Prop :=
  ∀ n, (P15520378271327010433.a n : ℤ) = A210994 (n + 1)

end A210994

/-! ## A210994.P10052100378094023489

`lt[1, abs(4-A002033(n))]+1`
-/

namespace A210994.P10052100378094023489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A002033 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A210994.P10052100378094023489

namespace A210994

/-- `lt[1, abs(4-A002033(n))]+1` -/
def P10052100378094023489.Spec : Prop :=
  ∀ n, (P10052100378094023489.a n : ℤ) = A210994 (n + 1)

end A210994

/-!
# A210996: Number of free polyominoes with 2n cells.

The programs for A210996, there is no canonical definition to state claims against.
-/

/-! ## A210996.P5325412515064599313

`A000105(2*n)`
-/

namespace A210996.P5325412515064599313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (2 * n)

end

end A210996.P5325412515064599313

/-! ## A210996.P816695182938710031

`A006765(A004277(n))+1`
-/

namespace A210996.P816695182938710031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (A004277 n).toNat + 1

end

end A210996.P816695182938710031

/-! ## A210996.P13966907490506514226

`A006765(A028310(2*n))+1`
-/

namespace A210996.P13966907490506514226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (A028310 (2 * n)).toNat + 1

end

end A210996.P13966907490506514226

/-! ## A210996.P8911507572449180786

`A006765(A028310(n)+n)+1`
-/

namespace A210996.P8911507572449180786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (A028310 n + (n : ℤ)).toNat + 1

end

end A210996.P8911507572449180786

/-! ## A210996.P14835587199240304465

`A030228(2*n)+A030227(2*n)`
-/

namespace A210996.P14835587199240304465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030228 (2 * n) + A030227 (2 * n)

end

end A210996.P14835587199240304465

/-!
# A210997: Number of free polyominoes with 2n-1 cells.

The programs for A210997, there is no canonical definition to state claims against.
-/

/-! ## A210997.P3664744372251514466

`A000105(Δ[n²])`
-/

namespace A210997.P3664744372251514466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A210997.P3664744372251514466

/-! ## A210997.P11644845010371953890

`A006765(Δ[n²])+1`
-/

namespace A210997.P11644845010371953890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A210997.P11644845010371953890

/-! ## A210997.P7307191655732231070

`A001933(Δ[n²])/2`
-/

namespace A210997.P7307191655732231070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001933 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A210997.P7307191655732231070

/-! ## A210997.P3396206529724272359

`record[A000105(xor(1, n+1))]`
-/

namespace A210997.P3396206529724272359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210997.P3396206529724272359

/-! ## A210997.P3181742844222136189

`record[A000105(n*n%2)]`
-/

namespace A210997.P3181742844222136189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210997.P3181742844222136189

/-!
# A210998: Composite numbers that are in the gap between an even-indexed prime and an odd-indexed prime.

The programs for A210998, there is no canonical definition to state claims against.
-/

/-! ## A210998.P1718772220435884512

`eq[1, (A000720(a(n-1)+n)+1)%2]+1` with `a(0)=4`
-/

namespace A210998.P1718772220435884512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  Int.tmod (A000720 (f2 (n - 1) + (n : ℤ)).toNat + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A210998.P1718772220435884512

/-! ## A210998.P606177354442930181

`eq[1, A329647(A030664(n))]`
-/

namespace A210998.P606177354442930181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329647 (A030664 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210998.P606177354442930181

/-! ## A210998.P6545293836484350419

`record[A191558(A057811(n+3))]`
-/

namespace A210998.P6545293836484350419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A057811 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210998.P6545293836484350419

/-! ## A210998.P2852603377899631181

`filter[A057811(n+1), A066247(#)]`
-/

namespace A210998.P2852603377899631181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A210998.P2852603377899631181

/-! ## A210998.P8949366610750185662

`filter[A002808(n+1), A131377(#)]`
-/

namespace A210998.P8949366610750185662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131377 (f1 j).toNat = 1) n)

end

end A210998.P8949366610750185662

/-! ## A210998.P2997254938325433314

`filter[A057811(n+2), A005171(#)]`
-/

namespace A210998.P2997254938325433314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A210998.P2997254938325433314

/-! ## A210998.P331683640547407646

`filter[A018252(n+2), A131377(#)]`
-/

namespace A210998.P331683640547407646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131377 (f1 j).toNat = 1) n)

end

end A210998.P331683640547407646

/-! ## A210998.P18156907877441827865

`filter[A065090(n+2), A131377(#)]`
-/

namespace A210998.P18156907877441827865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131377 (f1 j).toNat = 1) n)

end

end A210998.P18156907877441827865

/-! ## A210998.P17784746552855014840

`filter[A135684(n+2), A131377(#)]`
-/

namespace A210998.P17784746552855014840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135684 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131377 (f1 j).toNat = 1) n)

end

end A210998.P17784746552855014840

/-! ## A210998.P3894011038645442871

`filter[A014685(n+3), A131377(#)]`
-/

namespace A210998.P3894011038645442871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014685 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131377 (f1 j).toNat = 1) n)

end

end A210998.P3894011038645442871

/-!
# A210999: Composite numbers that are in the gap between an odd-indexed prime and an even-indexed prime.

The programs for A210999, the canonical program `A210999.P457972312276480137` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210999 has offset 1).

The definition of A210999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210999.P4625537988532804143

`eq[0, (n-A305801(n+1))%2]+1`
-/

namespace A210999.P4625537988532804143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A305801 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A210999.P4625537988532804143

namespace A210999

/-- `eq[0, (n-A305801(n+1))%2]+1` -/
def P4625537988532804143.Spec : Prop :=
  ∀ n, (P4625537988532804143.a n : ℤ) = A210999 (n + 1)

end A210999

/-! ## A210999.P15387733511055144139

`eq[A055671(n), A131377(n)]`
-/

namespace A210999.P15387733511055144139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210999.P15387733511055144139

namespace A210999

/-- `eq[A055671(n), A131377(n)]` -/
def P15387733511055144139.Spec : Prop :=
  ∀ n, (P15387733511055144139.a n : ℤ) = A210999 (n + 1)

end A210999

/-! ## A210999.P17349555543453905816

`eq[A055672(n), A131377(n)]`
-/

namespace A210999.P17349555543453905816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210999.P17349555543453905816

namespace A210999

/-- `eq[A055672(n), A131377(n)]` -/
def P17349555543453905816.Spec : Prop :=
  ∀ n, (P17349555543453905816.a n : ℤ) = A210999 (n + 1)

end A210999

/-! ## A210999.P956350264550833809

`filter[A057812(n+1), A005171(#)]`
-/

namespace A210999.P956350264550833809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A210999.P956350264550833809

namespace A210999

/-- `filter[A057812(n+1), A005171(#)]` -/
def P956350264550833809.Spec : Prop :=
  ∀ n, P956350264550833809.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P16904410242613511680

`filter[A002808(n+1), A071986(#)]`
-/

namespace A210999.P16904410242613511680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A210999.P16904410242613511680

namespace A210999

/-- `filter[A002808(n+1), A071986(#)]` -/
def P16904410242613511680.Spec : Prop :=
  ∀ n, P16904410242613511680.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P1744610153497200889

`filter[A005451(n+1), A071986(#)]`
-/

namespace A210999.P1744610153497200889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A210999.P1744610153497200889

namespace A210999

/-- `filter[A005451(n+1), A071986(#)]` -/
def P1744610153497200889.Spec : Prop :=
  ∀ n, P1744610153497200889.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P6826173989027589541

`filter[A018252(n+1), A071986(#)]`
-/

namespace A210999.P6826173989027589541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A210999.P6826173989027589541

namespace A210999

/-- `filter[A018252(n+1), A071986(#)]` -/
def P6826173989027589541.Spec : Prop :=
  ∀ n, P6826173989027589541.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P16716231991002249106

`filter[A057812(n+1), A066247(#)]`
-/

namespace A210999.P16716231991002249106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A210999.P16716231991002249106

namespace A210999

/-- `filter[A057812(n+1), A066247(#)]` -/
def P16716231991002249106.Spec : Prop :=
  ∀ n, P16716231991002249106.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P15632516009382557832

`filter[A056653(n+1), A071986(#)]`
-/

namespace A210999.P15632516009382557832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A210999.P15632516009382557832

namespace A210999

/-- `filter[A056653(n+1), A071986(#)]` -/
def P15632516009382557832.Spec : Prop :=
  ∀ n, P15632516009382557832.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P474659960133823427

`filter[A002808(n+1), A131378(#)]`
-/

namespace A210999.P474659960133823427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A210999.P474659960133823427

namespace A210999

/-- `filter[A002808(n+1), A131378(#)]` -/
def P474659960133823427.Spec : Prop :=
  ∀ n, P474659960133823427.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P9790245111297469762

`filter[A062973(n+1), A071986(#)]`
-/

namespace A210999.P9790245111297469762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A210999.P9790245111297469762

namespace A210999

/-- `filter[A062973(n+1), A071986(#)]` -/
def P9790245111297469762.Spec : Prop :=
  ∀ n, P9790245111297469762.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P457972312276480137

`filter[A005451(n+1), A131378(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A210999

/-- `filter[A005451(n+1), A131378(#)]` -/
def P457972312276480137.Spec : Prop :=
  ∀ n, P457972312276480137.a n = A210999 (n + 1)

theorem P457972312276480137.correct : P457972312276480137.Spec := by
  intro n
  simp only [A210999, Nat.add_sub_cancel]

end A210999

/-! ## A210999.P4236747515356073111

`filter[A018252(n+1), A131378(#)]`
-/

namespace A210999.P4236747515356073111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A210999.P4236747515356073111

namespace A210999

/-- `filter[A018252(n+1), A131378(#)]` -/
def P4236747515356073111.Spec : Prop :=
  ∀ n, P4236747515356073111.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P5215609790675209334

`filter[A056653(n+1), A131378(#)]`
-/

namespace A210999.P5215609790675209334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A210999.P5215609790675209334

namespace A210999

/-- `filter[A056653(n+1), A131378(#)]` -/
def P5215609790675209334.Spec : Prop :=
  ∀ n, P5215609790675209334.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P14744643947863949143

`filter[A062973(n+1), A131378(#)]`
-/

namespace A210999.P14744643947863949143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A210999.P14744643947863949143

namespace A210999

/-- `filter[A062973(n+1), A131378(#)]` -/
def P14744643947863949143.Spec : Prop :=
  ∀ n, P14744643947863949143.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P5651899487149760995

`filter[A176423(n+1), A071986(#)]`
-/

namespace A210999.P5651899487149760995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A210999.P5651899487149760995

namespace A210999

/-- `filter[A176423(n+1), A071986(#)]` -/
def P5651899487149760995.Spec : Prop :=
  ∀ n, P5651899487149760995.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P4744237304604476877

`filter[A141468(n+1), A131378(#)]`
-/

namespace A210999.P4744237304604476877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A210999.P4744237304604476877

namespace A210999

/-- `filter[A141468(n+1), A131378(#)]` -/
def P4744237304604476877.Spec : Prop :=
  ∀ n, P4744237304604476877.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P1847602668972411961

`filter[A176423(n+1), A131378(#)]`
-/

namespace A210999.P1847602668972411961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A210999.P1847602668972411961

namespace A210999

/-- `filter[A176423(n+1), A131378(#)]` -/
def P1847602668972411961.Spec : Prop :=
  ∀ n, P1847602668972411961.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P13733444648344763035

`filter[A191558(n+1), A131378(#)]`
-/

namespace A210999.P13733444648344763035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A210999.P13733444648344763035

namespace A210999

/-- `filter[A191558(n+1), A131378(#)]` -/
def P13733444648344763035.Spec : Prop :=
  ∀ n, P13733444648344763035.a n = A210999 (n + 1)

end A210999

/-! ## A210999.P771815762198018578

`filter[A141468(n+2), A071986(#)]`
-/

namespace A210999.P771815762198018578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071986 (f1 j).toNat = 1) n)

end

end A210999.P771815762198018578

namespace A210999

/-- `filter[A141468(n+2), A071986(#)]` -/
def P771815762198018578.Spec : Prop :=
  ∀ n, P771815762198018578.a n = A210999 (n + 1)

end A210999

