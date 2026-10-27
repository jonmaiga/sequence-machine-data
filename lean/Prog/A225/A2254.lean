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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

/-!
# A225400: First occurrence of n in A225399, or -1 if n does not appear in A225399.

The programs for A225400, there is no canonical definition to state claims against.
-/

/-! ## A225400.P3139017587763428498

`A002260(A076983(n+2))%A006442(n)`
-/

namespace A225400.P3139017587763428498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (A076983 (n + 2)).toNat) (A006442 n)

end

end A225400.P3139017587763428498

/-! ## A225400.P16925538035486726980

`A228474(A076983(n+2))%A004989(n)`
-/

namespace A225400.P16925538035486726980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228474 (A076983 (n + 2)).toNat) (A004989 n)

end

end A225400.P16925538035486726980

/-! ## A225400.P11095285907399269354

`A213781(A076983(n+2))%A057326(n+1)`
-/

namespace A225400.P11095285907399269354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213781 (A076983 (n + 2)).toNat) (A057326 (n + 1))

end

end A225400.P11095285907399269354

/-!
# A225401: 10-adic integer x such that x^3 = -7/9.

The programs for A225401, there is no canonical definition to state claims against.
-/

/-! ## A225401.P2194737072260249894

`A225402(n)+A225411(n)-A225410(n)`
-/

namespace A225401.P2194737072260249894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225410 n)

end

end A225401.P2194737072260249894

/-! ## A225401.P6451168231895874413

`A225405(n)+A225408(n)-A225410(n)`
-/

namespace A225401.P6451168231895874413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225410 n)

end

end A225401.P6451168231895874413

/-! ## A225401.P645351802546217032

`A225406(n)+A225409(n)-A225410(n)`
-/

namespace A225401.P645351802546217032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225410 n)

end

end A225401.P645351802546217032

/-! ## A225401.P10160552338916283532

`A309601(n)+A309647(n)-A225410(n)`
-/

namespace A225401.P10160552338916283532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A225410 n)

end

end A225401.P10160552338916283532

/-! ## A225401.P8114350797663415217

`A309602(n)+A309646(n)-A225410(n)`
-/

namespace A225401.P8114350797663415217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A225410 n)

end

end A225401.P8114350797663415217

/-! ## A225401.P8267008518898842332

`A309603(n)+A309645(n)-A225410(n)`
-/

namespace A225401.P8267008518898842332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309603 n + (A309645 n - A225410 n)

end

end A225401.P8267008518898842332

/-! ## A225401.P16136652175011909100

`A309604(n)+A309644(n)-A225410(n)`
-/

namespace A225401.P16136652175011909100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A225410 n)

end

end A225401.P16136652175011909100

/-! ## A225401.P14886042643052856965

`A309605(n)+A309643(n)-A225410(n)`
-/

namespace A225401.P14886042643052856965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309605 n + (A309643 n - A225410 n)

end

end A225401.P14886042643052856965

/-! ## A225401.P13094833151080132053

`A309606(n)+A309642(n)-A225410(n)`
-/

namespace A225401.P13094833151080132053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A225410 n)

end

end A225401.P13094833151080132053

/-! ## A225401.P6618485866746900477

`A153042(n+1)+A225412(n)-A225410(n)`
-/

namespace A225401.P6618485866746900477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A225410 n)

end

end A225401.P6618485866746900477

/-! ## A225401.P11313276059607523234

`A225404(n+1)+A225407(n)-A225410(n)`
-/

namespace A225401.P11313276059607523234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225410 n)

end

end A225401.P11313276059607523234

/-! ## A225401.P12711448739191625344

`A306554(n+1)+A306555(n+1)-A225410(n)`
-/

namespace A225401.P12711448739191625344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225410 n)

end

end A225401.P12711448739191625344

/-!
# A225402: 10-adic cube root of -1/3.

The programs for A225402, there is no canonical definition to state claims against.
-/

/-! ## A225402.P3010022592420814535

`A225401(n)+A225410(n)-A225411(n)`
-/

namespace A225402.P3010022592420814535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225411 n)

end

end A225402.P3010022592420814535

/-! ## A225402.P14047994013885861768

`A225405(n)+A225408(n)-A225411(n)`
-/

namespace A225402.P14047994013885861768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225411 n)

end

end A225402.P14047994013885861768

/-! ## A225402.P11565633867574387814

`A225406(n)+A225409(n)-A225411(n)`
-/

namespace A225402.P11565633867574387814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225411 n)

end

end A225402.P11565633867574387814

/-! ## A225402.P4574011966058031315

`A225442(n)+A225451(n)-A225411(n)`
-/

namespace A225402.P4574011966058031315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225411 n)

end

end A225402.P4574011966058031315

/-! ## A225402.P16269922312486564679

`A309604(n)+A309644(n)-A225411(n)`
-/

namespace A225402.P16269922312486564679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A225411 n)

end

end A225402.P16269922312486564679

/-! ## A225402.P3896908112119221922

`A153042(n+1)+A225412(n)-A225411(n)`
-/

namespace A225402.P3896908112119221922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A225411 n)

end

end A225402.P3896908112119221922

/-! ## A225402.P17682997480546213025

`A225404(n+1)+A225407(n)-A225411(n)`
-/

namespace A225402.P17682997480546213025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225411 n)

end

end A225402.P17682997480546213025

/-! ## A225402.P4589148328189042840

`A306552(n+1)+A319739(n)-A225411(n)`
-/

namespace A225402.P4589148328189042840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A225411 n)

end

end A225402.P4589148328189042840

/-! ## A225402.P17345311346138318237

`A306554(n+1)+A306555(n+1)-A225411(n)`
-/

namespace A225402.P17345311346138318237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225411 n)

end

end A225402.P17345311346138318237

/-! ## A225402.P2571102366179931640

`A306553(n+1)+A319740(n+1)-A225411(n)`
-/

namespace A225402.P2571102366179931640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306553 (n + 1) + (A319740 (n + 1) - A225411 n)

end

end A225402.P2571102366179931640

/-! ## A225402.P5099609886808263246

`9-A225411(A007318(∑[n]+1))`
-/

namespace A225402.P5099609886808263246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A225411 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A225402.P5099609886808263246

/-!
# A225404: 10-adic integer x such that x^3 == 3 mod 10^n for all n.

The programs for A225404, there is no canonical definition to state claims against.
-/

/-! ## A225404.P12209454567530115134

`A225401(n)+A225410(n)-A225407(n)`
-/

namespace A225404.P12209454567530115134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225407 n)

end

end A225404.P12209454567530115134

/-! ## A225404.P13549723136475272678

`A225402(n)+A225411(n)-A225407(n)`
-/

namespace A225404.P13549723136475272678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225407 n)

end

end A225404.P13549723136475272678

/-! ## A225404.P6687283484462874666

`A225405(n)+A225408(n)-A225407(n)`
-/

namespace A225404.P6687283484462874666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225407 n)

end

end A225404.P6687283484462874666

/-! ## A225404.P8309698959716887757

`A225406(n)+A225409(n)-A225407(n)`
-/

namespace A225404.P8309698959716887757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225407 n)

end

end A225404.P8309698959716887757

/-! ## A225404.P13367029358155702155

`A309609(n)+A309612(n)-A225407(n)`
-/

namespace A225404.P13367029358155702155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309609 n + (A309612 n - A225407 n)

end

end A225404.P13367029358155702155

/-! ## A225404.P15177843561069468976

`A309600(n)+A309648(n)-A225407(n)`
-/

namespace A225404.P15177843561069468976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A225407 n)

end

end A225404.P15177843561069468976

/-! ## A225404.P15604084555178652572

`A306552(n+1)+A319739(n)-A225407(n)`
-/

namespace A225404.P15604084555178652572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A225407 n)

end

end A225404.P15604084555178652572

/-! ## A225404.P4679550024331347490

`A306554(n+1)+A306555(n+1)-A225407(n)`
-/

namespace A225404.P4679550024331347490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225407 n)

end

end A225404.P4679550024331347490

/-! ## A225404.P11533936502834977544

`A306553(n+1)+A319740(n+1)-A225407(n)`
-/

namespace A225404.P11533936502834977544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306553 (n + 1) + (A319740 (n + 1) - A225407 n)

end

end A225404.P11533936502834977544

/-!
# A225405: 10-adic integer x such that x^3 = 7.

The programs for A225405, there is no canonical definition to state claims against.
-/

/-! ## A225405.P1625003638697696835

`A018247(n)+A091663(n)-A225408(n)`
-/

namespace A225405.P1625003638697696835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A225408 n)

end

end A225405.P1625003638697696835

/-! ## A225405.P14691649053589655981

`A225401(n)+A225410(n)-A225408(n)`
-/

namespace A225405.P14691649053589655981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225408 n)

end

end A225405.P14691649053589655981

/-! ## A225405.P252859784267394859

`A225406(n)+A225409(n)-A225408(n)`
-/

namespace A225405.P252859784267394859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225408 n)

end

end A225405.P252859784267394859

/-! ## A225405.P18333993015540613958

`A225457(n)+A225460(n)-A225408(n)`
-/

namespace A225405.P18333993015540613958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225408 n)

end

end A225405.P18333993015540613958

/-! ## A225405.P14473990803988512923

`A225404(n+1)+A225407(n)-A225408(n)`
-/

namespace A225405.P14473990803988512923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225408 n)

end

end A225405.P14473990803988512923

/-! ## A225405.P1394462233995571832

`A306552(n+1)+A319739(n)-A225408(n)`
-/

namespace A225405.P1394462233995571832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A225408 n)

end

end A225405.P1394462233995571832

/-! ## A225405.P11507205476261617579

`A306554(n+1)+A306555(n+1)-A225408(n)`
-/

namespace A225405.P11507205476261617579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225408 n)

end

end A225405.P11507205476261617579

/-!
# A225406: Digits of the 10-adic integer 9^(1/3).

The programs for A225406, there is no canonical definition to state claims against.
-/

/-! ## A225406.P13341892983260077486

`A225401(n)+A225410(n)-A225409(n)`
-/

namespace A225406.P13341892983260077486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225409 n)

end

end A225406.P13341892983260077486

/-! ## A225406.P5956918741848477087

`A225402(n)+A225411(n)-A225409(n)`
-/

namespace A225406.P5956918741848477087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225409 n)

end

end A225406.P5956918741848477087

/-! ## A225406.P4538038081152628223

`A225405(n)+A225408(n)-A225409(n)`
-/

namespace A225406.P4538038081152628223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225409 n)

end

end A225406.P4538038081152628223

/-! ## A225406.P5224670832592964116

`A309600(n)+A309648(n)-A225409(n)`
-/

namespace A225406.P5224670832592964116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A225409 n)

end

end A225406.P5224670832592964116

/-! ## A225406.P1013441012536180305

`A309601(n)+A309647(n)-A225409(n)`
-/

namespace A225406.P1013441012536180305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A225409 n)

end

end A225406.P1013441012536180305

/-! ## A225406.P16107422053837208804

`A153042(n+1)+A225412(n)-A225409(n)`
-/

namespace A225406.P16107422053837208804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A225409 n)

end

end A225406.P16107422053837208804

/-! ## A225406.P18222977356305582871

`A225404(n+1)+A225407(n)-A225409(n)`
-/

namespace A225406.P18222977356305582871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225409 n)

end

end A225406.P18222977356305582871

/-! ## A225406.P1322214824419796839

`A306554(n+1)+A306555(n+1)-A225409(n)`
-/

namespace A225406.P1322214824419796839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225409 n)

end

end A225406.P1322214824419796839

/-!
# A225407: 10-adic integer x such that x^3 = -3.

The programs for A225407, there is no canonical definition to state claims against.
-/

/-! ## A225407.P12304684449781209550

`A225401(n)+A225410(n)-A225404(n+1)`
-/

namespace A225407.P12304684449781209550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225404 (n + 1))

end

end A225407.P12304684449781209550

/-! ## A225407.P5988954608727491766

`A225402(n)+A225411(n)-A225404(n+1)`
-/

namespace A225407.P5988954608727491766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225404 (n + 1))

end

end A225407.P5988954608727491766

/-! ## A225407.P2887945746782431167

`A225405(n)+A225408(n)-A225404(n+1)`
-/

namespace A225407.P2887945746782431167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225404 (n + 1))

end

end A225407.P2887945746782431167

/-! ## A225407.P13399696641836863901

`A309600(n)+A309648(n)-A225404(n+1)`
-/

namespace A225407.P13399696641836863901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A225404 (n + 1))

end

end A225407.P13399696641836863901

/-! ## A225407.P1247594335120366853

`A309601(n)+A309647(n)-A225404(n+1)`
-/

namespace A225407.P1247594335120366853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A225404 (n + 1))

end

end A225407.P1247594335120366853

/-! ## A225407.P9299914572501415767

`A309602(n)+A309646(n)-A225404(n+1)`
-/

namespace A225407.P9299914572501415767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A225404 (n + 1))

end

end A225407.P9299914572501415767

/-! ## A225407.P1739184740374740089

`A309603(n)+A309645(n)-A225404(n+1)`
-/

namespace A225407.P1739184740374740089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309603 n + (A309645 n - A225404 (n + 1))

end

end A225407.P1739184740374740089

/-! ## A225407.P17628505142163245595

`A309604(n)+A309644(n)-A225404(n+1)`
-/

namespace A225407.P17628505142163245595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A225404 (n + 1))

end

end A225407.P17628505142163245595

/-! ## A225407.P3494574500414044256

`A309605(n)+A309643(n)-A225404(n+1)`
-/

namespace A225407.P3494574500414044256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309605 n + (A309643 n - A225404 (n + 1))

end

end A225407.P3494574500414044256

/-! ## A225407.P7140545313031552021

`A309606(n)+A309642(n)-A225404(n+1)`
-/

namespace A225407.P7140545313031552021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A225404 (n + 1))

end

end A225407.P7140545313031552021

/-! ## A225407.P350801132576567323

`A306552(n+1)+A319739(n)-A225404(n+1)`
-/

namespace A225407.P350801132576567323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A225404 (n + 1))

end

end A225407.P350801132576567323

/-! ## A225407.P17185601326204226634

`A306554(n+1)+A306555(n+1)-A225404(n+1)`
-/

namespace A225407.P17185601326204226634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225404 (n + 1))

end

end A225407.P17185601326204226634

/-!
# A225408: 10-adic integer x=.....8457 satisfying x^3 = -7.

The programs for A225408, there is no canonical definition to state claims against.
-/

/-! ## A225408.P18139760221862336516

`A018247(n)+A091663(n)-A225405(n)`
-/

namespace A225408.P18139760221862336516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A225405 n)

end

end A225408.P18139760221862336516

/-! ## A225408.P8990407449460653896

`A225401(n)+A225410(n)-A225405(n)`
-/

namespace A225408.P8990407449460653896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225405 n)

end

end A225408.P8990407449460653896

/-! ## A225408.P2119451209560077569

`A225442(n)+A225451(n)-A225405(n)`
-/

namespace A225408.P2119451209560077569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225405 n)

end

end A225408.P2119451209560077569

/-! ## A225408.P865024555016902131

`A225457(n)+A225460(n)-A225405(n)`
-/

namespace A225408.P865024555016902131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225405 n)

end

end A225408.P865024555016902131

/-! ## A225408.P15232672027668493717

`A309569(n)+A309641(n)-A225405(n)`
-/

namespace A225408.P15232672027668493717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309569 n + (A309641 n - A225405 n)

end

end A225408.P15232672027668493717

/-! ## A225408.P17764913188582299701

`A309570(n)+A309640(n)-A225405(n)`
-/

namespace A225408.P17764913188582299701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A225405 n)

end

end A225408.P17764913188582299701

/-! ## A225408.P91358804341183676

`A309595(n)+A309614(n)-A225405(n)`
-/

namespace A225408.P91358804341183676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A225405 n)

end

end A225408.P91358804341183676

/-! ## A225408.P13252024694414070951

`A309608(n)+A309613(n)-A225405(n)`
-/

namespace A225408.P13252024694414070951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309608 n + (A309613 n - A225405 n)

end

end A225408.P13252024694414070951

/-! ## A225408.P7844247423686064014

`A309609(n)+A309612(n)-A225405(n)`
-/

namespace A225408.P7844247423686064014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309609 n + (A309612 n - A225405 n)

end

end A225408.P7844247423686064014

/-! ## A225408.P235845341371063533

`A309610(n)+A309611(n)-A225405(n)`
-/

namespace A225408.P235845341371063533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309610 n + (A309611 n - A225405 n)

end

end A225408.P235845341371063533

/-! ## A225408.P6935570344695067166

`A309600(n)+A309648(n)-A225405(n)`
-/

namespace A225408.P6935570344695067166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A225405 n)

end

end A225408.P6935570344695067166

/-! ## A225408.P6326621925828175830

`A309601(n)+A309647(n)-A225405(n)`
-/

namespace A225408.P6326621925828175830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A225405 n)

end

end A225408.P6326621925828175830

/-! ## A225408.P8727274420828530283

`A309602(n)+A309646(n)-A225405(n)`
-/

namespace A225408.P8727274420828530283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A225405 n)

end

end A225408.P8727274420828530283

/-! ## A225408.P3495684267888730748

`A309603(n)+A309645(n)-A225405(n)`
-/

namespace A225408.P3495684267888730748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309603 n + (A309645 n - A225405 n)

end

end A225408.P3495684267888730748

/-! ## A225408.P18188295144208909441

`A309604(n)+A309644(n)-A225405(n)`
-/

namespace A225408.P18188295144208909441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A225405 n)

end

end A225408.P18188295144208909441

/-! ## A225408.P17649430811753330445

`A309605(n)+A309643(n)-A225405(n)`
-/

namespace A225408.P17649430811753330445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309605 n + (A309643 n - A225405 n)

end

end A225408.P17649430811753330445

/-! ## A225408.P7538317776342028667

`A309606(n)+A309642(n)-A225405(n)`
-/

namespace A225408.P7538317776342028667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A225405 n)

end

end A225408.P7538317776342028667

/-! ## A225408.P11015553794069055364

`A225404(n+1)+A225407(n)-A225405(n)`
-/

namespace A225408.P11015553794069055364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225405 n)

end

end A225408.P11015553794069055364

/-! ## A225408.P17353022897848391577

`A306554(n+1)+A306555(n+1)-A225405(n)`
-/

namespace A225408.P17353022897848391577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225405 n)

end

end A225408.P17353022897848391577

/-!
# A225409: Digits of the 10-adic integers (-9)^(1/3).

The programs for A225409, there is no canonical definition to state claims against.
-/

/-! ## A225409.P9060398714713187142

`A225402(n)+A225411(n)-A225406(n)`
-/

namespace A225409.P9060398714713187142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225406 n)

end

end A225409.P9060398714713187142

/-! ## A225409.P344120055634830158

`A225405(n)+A225408(n)-A225406(n)`
-/

namespace A225409.P344120055634830158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225406 n)

end

end A225409.P344120055634830158

/-! ## A225409.P7637445456298149931

`A309569(n)+A309641(n)-A225406(n)`
-/

namespace A225409.P7637445456298149931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309569 n + (A309641 n - A225406 n)

end

end A225409.P7637445456298149931

/-! ## A225409.P8074880128441388505

`A309570(n)+A309640(n)-A225406(n)`
-/

namespace A225409.P8074880128441388505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A225406 n)

end

end A225409.P8074880128441388505

/-! ## A225409.P18139686221385150854

`A309595(n)+A309614(n)-A225406(n)`
-/

namespace A225409.P18139686221385150854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A225406 n)

end

end A225409.P18139686221385150854

/-! ## A225409.P9032138796652122757

`A309608(n)+A309613(n)-A225406(n)`
-/

namespace A225409.P9032138796652122757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309608 n + (A309613 n - A225406 n)

end

end A225409.P9032138796652122757

/-! ## A225409.P3628651477996417684

`A309609(n)+A309612(n)-A225406(n)`
-/

namespace A225409.P3628651477996417684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309609 n + (A309612 n - A225406 n)

end

end A225409.P3628651477996417684

/-! ## A225409.P14624104486825814745

`A309610(n)+A309611(n)-A225406(n)`
-/

namespace A225409.P14624104486825814745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309610 n + (A309611 n - A225406 n)

end

end A225409.P14624104486825814745

/-! ## A225409.P2767506252989292336

`A309600(n)+A309648(n)-A225406(n)`
-/

namespace A225409.P2767506252989292336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A225406 n)

end

end A225409.P2767506252989292336

/-! ## A225409.P5539766798356961917

`A309601(n)+A309647(n)-A225406(n)`
-/

namespace A225409.P5539766798356961917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A225406 n)

end

end A225409.P5539766798356961917

/-! ## A225409.P10390505707342503209

`A309602(n)+A309646(n)-A225406(n)`
-/

namespace A225409.P10390505707342503209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A225406 n)

end

end A225409.P10390505707342503209

/-! ## A225409.P9818951955197604788

`A309603(n)+A309645(n)-A225406(n)`
-/

namespace A225409.P9818951955197604788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309603 n + (A309645 n - A225406 n)

end

end A225409.P9818951955197604788

/-! ## A225409.P18373542245069143691

`A309604(n)+A309644(n)-A225406(n)`
-/

namespace A225409.P18373542245069143691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A225406 n)

end

end A225409.P18373542245069143691

/-! ## A225409.P13358253443676618226

`A309605(n)+A309643(n)-A225406(n)`
-/

namespace A225409.P13358253443676618226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309605 n + (A309643 n - A225406 n)

end

end A225409.P13358253443676618226

/-! ## A225409.P14488353299135280365

`A309606(n)+A309642(n)-A225406(n)`
-/

namespace A225409.P14488353299135280365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A225406 n)

end

end A225409.P14488353299135280365

/-! ## A225409.P4416384603335125056

`A153042(n+1)+A225412(n)-A225406(n)`
-/

namespace A225409.P4416384603335125056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A225406 n)

end

end A225409.P4416384603335125056

/-! ## A225409.P17017905154608057129

`A225404(n+1)+A225407(n)-A225406(n)`
-/

namespace A225409.P17017905154608057129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225406 n)

end

end A225409.P17017905154608057129

/-! ## A225409.P3157711991236105518

`A306552(n+1)+A319739(n)-A225406(n)`
-/

namespace A225409.P3157711991236105518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A225406 n)

end

end A225409.P3157711991236105518

/-! ## A225409.P13776874234198367782

`A226602(A016105(a(n-1)+1))-A225406(n)` with `a(0)=1`
-/

namespace A225409.P13776874234198367782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226602 (A016105 (a (n - 1) + 1).toNat).toNat - A225406 n

end

end A225409.P13776874234198367782

/-! ## A225409.P6348619198185371524

`A306554(n+1)+A306555(n+1)-A225406(n)`
-/

namespace A225409.P6348619198185371524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225406 n)

end

end A225409.P6348619198185371524

/-!
# A225410: 10-adic integer x such that x^3 = 7/9.

The programs for A225410, there is no canonical definition to state claims against.
-/

/-! ## A225410.P7445960243027019178

`A225402(n)+A225411(n)-A225401(n)`
-/

namespace A225410.P7445960243027019178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225401 n)

end

end A225410.P7445960243027019178

/-! ## A225410.P12391132793468887973

`A225405(n)+A225408(n)-A225401(n)`
-/

namespace A225410.P12391132793468887973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225401 n)

end

end A225410.P12391132793468887973

/-! ## A225410.P14331439429608937901

`A225406(n)+A225409(n)-A225401(n)`
-/

namespace A225410.P14331439429608937901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225401 n)

end

end A225410.P14331439429608937901

/-! ## A225410.P6307080855351355695

`A309569(n)+A309641(n)-A225401(n)`
-/

namespace A225410.P6307080855351355695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309569 n + (A309641 n - A225401 n)

end

end A225410.P6307080855351355695

/-! ## A225410.P15517829979742639111

`A309570(n)+A309640(n)-A225401(n)`
-/

namespace A225410.P15517829979742639111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A225401 n)

end

end A225410.P15517829979742639111

/-! ## A225410.P8111081456149829919

`A309595(n)+A309614(n)-A225401(n)`
-/

namespace A225410.P8111081456149829919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A225401 n)

end

end A225410.P8111081456149829919

/-! ## A225410.P6038448376544346007

`A309608(n)+A309613(n)-A225401(n)`
-/

namespace A225410.P6038448376544346007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309608 n + (A309613 n - A225401 n)

end

end A225410.P6038448376544346007

/-! ## A225410.P18040209098610809932

`A309609(n)+A309612(n)-A225401(n)`
-/

namespace A225410.P18040209098610809932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309609 n + (A309612 n - A225401 n)

end

end A225410.P18040209098610809932

/-! ## A225410.P10279217141906781068

`A309610(n)+A309611(n)-A225401(n)`
-/

namespace A225410.P10279217141906781068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309610 n + (A309611 n - A225401 n)

end

end A225410.P10279217141906781068

/-! ## A225410.P15247735729840082190

`A309600(n)+A309648(n)-A225401(n)`
-/

namespace A225410.P15247735729840082190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A225401 n)

end

end A225410.P15247735729840082190

/-! ## A225410.P9510275546364091986

`A309601(n)+A309647(n)-A225401(n)`
-/

namespace A225410.P9510275546364091986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A225401 n)

end

end A225410.P9510275546364091986

/-! ## A225410.P5303159058028012540

`A309602(n)+A309646(n)-A225401(n)`
-/

namespace A225410.P5303159058028012540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A225401 n)

end

end A225410.P5303159058028012540

/-! ## A225410.P15639566157029407661

`A309603(n)+A309645(n)-A225401(n)`
-/

namespace A225410.P15639566157029407661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309603 n + (A309645 n - A225401 n)

end

end A225410.P15639566157029407661

/-! ## A225410.P9628753444127784542

`A309604(n)+A309644(n)-A225401(n)`
-/

namespace A225410.P9628753444127784542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A225401 n)

end

end A225410.P9628753444127784542

/-! ## A225410.P12020309350585120214

`A309605(n)+A309643(n)-A225401(n)`
-/

namespace A225410.P12020309350585120214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309605 n + (A309643 n - A225401 n)

end

end A225410.P12020309350585120214

/-! ## A225410.P12484251997647649348

`A309606(n)+A309642(n)-A225401(n)`
-/

namespace A225410.P12484251997647649348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A225401 n)

end

end A225410.P12484251997647649348

/-! ## A225410.P14398793969176343788

`A153042(n+1)+A225412(n)-A225401(n)`
-/

namespace A225410.P14398793969176343788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A225401 n)

end

end A225410.P14398793969176343788

/-! ## A225410.P7743091817797854377

`A306554(n+1)+A306555(n+1)-A225401(n)`
-/

namespace A225410.P7743091817797854377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225401 n)

end

end A225410.P7743091817797854377

/-!
# A225411: 10-adic integer x such that x^3 == (6*(10^(n+1)-1)/9)+1 mod 10^(n+1) for all n.

The programs for A225411, there is no canonical definition to state claims against.
-/

/-! ## A225411.P8128164791846545236

`A225401(n)+A225410(n)-A225402(n)`
-/

namespace A225411.P8128164791846545236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225402 n)

end

end A225411.P8128164791846545236

/-! ## A225411.P13722541234087603254

`A225405(n)+A225408(n)-A225402(n)`
-/

namespace A225411.P13722541234087603254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225402 n)

end

end A225411.P13722541234087603254

/-! ## A225411.P3548617037897127946

`A309569(n)+A309641(n)-A225402(n)`
-/

namespace A225411.P3548617037897127946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309569 n + (A309641 n - A225402 n)

end

end A225411.P3548617037897127946

/-! ## A225411.P6800726937324602134

`A309570(n)+A309640(n)-A225402(n)`
-/

namespace A225411.P6800726937324602134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A225402 n)

end

end A225411.P6800726937324602134

/-! ## A225411.P10757382699832169549

`A309595(n)+A309614(n)-A225402(n)`
-/

namespace A225411.P10757382699832169549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A225402 n)

end

end A225411.P10757382699832169549

/-! ## A225411.P7191769010340894017

`A309608(n)+A309613(n)-A225402(n)`
-/

namespace A225411.P7191769010340894017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309608 n + (A309613 n - A225402 n)

end

end A225411.P7191769010340894017

/-! ## A225411.P5837623047073495811

`A309609(n)+A309612(n)-A225402(n)`
-/

namespace A225411.P5837623047073495811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309609 n + (A309612 n - A225402 n)

end

end A225411.P5837623047073495811

/-! ## A225411.P1501327415848814909

`A309610(n)+A309611(n)-A225402(n)`
-/

namespace A225411.P1501327415848814909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309610 n + (A309611 n - A225402 n)

end

end A225411.P1501327415848814909

/-! ## A225411.P13084002919787628839

`A309600(n)+A309648(n)-A225402(n)`
-/

namespace A225411.P13084002919787628839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A225402 n)

end

end A225411.P13084002919787628839

/-! ## A225411.P8896648192341153474

`A309601(n)+A309647(n)-A225402(n)`
-/

namespace A225411.P8896648192341153474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A225402 n)

end

end A225411.P8896648192341153474

/-! ## A225411.P16322588630268622979

`A309602(n)+A309646(n)-A225402(n)`
-/

namespace A225411.P16322588630268622979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A225402 n)

end

end A225411.P16322588630268622979

/-! ## A225411.P15044860860040687467

`A309603(n)+A309645(n)-A225402(n)`
-/

namespace A225411.P15044860860040687467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309603 n + (A309645 n - A225402 n)

end

end A225411.P15044860860040687467

/-! ## A225411.P13697581285783834788

`A309604(n)+A309644(n)-A225402(n)`
-/

namespace A225411.P13697581285783834788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A225402 n)

end

end A225411.P13697581285783834788

/-! ## A225411.P16367312195401915408

`A309605(n)+A309643(n)-A225402(n)`
-/

namespace A225411.P16367312195401915408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309605 n + (A309643 n - A225402 n)

end

end A225411.P16367312195401915408

/-! ## A225411.P9263618676595074199

`A309606(n)+A309642(n)-A225402(n)`
-/

namespace A225411.P9263618676595074199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A225402 n)

end

end A225411.P9263618676595074199

/-! ## A225411.P7191272666107358938

`A153042(n+1)+A225412(n)-A225402(n)`
-/

namespace A225411.P7191272666107358938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A225402 n)

end

end A225411.P7191272666107358938

/-! ## A225411.P12395130694323475505

`A225404(n+1)+A225407(n)-A225402(n)`
-/

namespace A225411.P12395130694323475505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225402 n)

end

end A225411.P12395130694323475505

/-! ## A225411.P4063796380422082675

`A306552(n+1)+A319739(n)-A225402(n)`
-/

namespace A225411.P4063796380422082675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A225402 n)

end

end A225411.P4063796380422082675

/-! ## A225411.P4761202461865144988

`A306554(n+1)+A306555(n+1)-A225402(n)`
-/

namespace A225411.P4761202461865144988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225402 n)

end

end A225411.P4761202461865144988

/-! ## A225411.P14833558443934114275

`A306553(n+1)+A319740(n+1)-A225402(n)`
-/

namespace A225411.P14833558443934114275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306553 (n + 1) + (A319740 (n + 1) - A225402 n)

end

end A225411.P14833558443934114275

/-!
# A225412: Digits of the 10-adic integer (1/9)^(1/3).

The programs for A225412, there is no canonical definition to state claims against.
-/

/-! ## A225412.P12553613794536776211

`A225401(n)+A225410(n)-A153042(n+1)`
-/

namespace A225412.P12553613794536776211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A153042 (n + 1))

end

end A225412.P12553613794536776211

/-! ## A225412.P4154395303136354329

`A225402(n)+A225411(n)-A153042(n+1)`
-/

namespace A225412.P4154395303136354329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A153042 (n + 1))

end

end A225412.P4154395303136354329

/-! ## A225412.P13890857847502234502

`A225405(n)+A225408(n)-A153042(n+1)`
-/

namespace A225412.P13890857847502234502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A153042 (n + 1))

end

end A225412.P13890857847502234502

/-! ## A225412.P11481045432991321506

`A225406(n)+A225409(n)-A153042(n+1)`
-/

namespace A225412.P11481045432991321506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A153042 (n + 1))

end

end A225412.P11481045432991321506

/-! ## A225412.P6871163077980613109

`A309569(n)+A309641(n)-A153042(n+1)`
-/

namespace A225412.P6871163077980613109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309569 n + (A309641 n - A153042 (n + 1))

end

end A225412.P6871163077980613109

/-! ## A225412.P5792639660229399402

`A309570(n)+A309640(n)-A153042(n+1)`
-/

namespace A225412.P5792639660229399402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A153042 (n + 1))

end

end A225412.P5792639660229399402

/-! ## A225412.P17683883401295880313

`A309595(n)+A309614(n)-A153042(n+1)`
-/

namespace A225412.P17683883401295880313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A153042 (n + 1))

end

end A225412.P17683883401295880313

/-! ## A225412.P8363021886839837172

`A309608(n)+A309613(n)-A153042(n+1)`
-/

namespace A225412.P8363021886839837172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309608 n + (A309613 n - A153042 (n + 1))

end

end A225412.P8363021886839837172

/-! ## A225412.P17553143842355764604

`A309609(n)+A309612(n)-A153042(n+1)`
-/

namespace A225412.P17553143842355764604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309609 n + (A309612 n - A153042 (n + 1))

end

end A225412.P17553143842355764604

/-! ## A225412.P18268666000531981416

`A309610(n)+A309611(n)-A153042(n+1)`
-/

namespace A225412.P18268666000531981416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309610 n + (A309611 n - A153042 (n + 1))

end

end A225412.P18268666000531981416

/-! ## A225412.P8049546457010888810

`A309600(n)+A309648(n)-A153042(n+1)`
-/

namespace A225412.P8049546457010888810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A153042 (n + 1))

end

end A225412.P8049546457010888810

/-! ## A225412.P12400613640581930584

`A309601(n)+A309647(n)-A153042(n+1)`
-/

namespace A225412.P12400613640581930584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A153042 (n + 1))

end

end A225412.P12400613640581930584

/-! ## A225412.P560677369278599513

`A309602(n)+A309646(n)-A153042(n+1)`
-/

namespace A225412.P560677369278599513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A153042 (n + 1))

end

end A225412.P560677369278599513

/-! ## A225412.P2133184344899312515

`A309603(n)+A309645(n)-A153042(n+1)`
-/

namespace A225412.P2133184344899312515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309603 n + (A309645 n - A153042 (n + 1))

end

end A225412.P2133184344899312515

/-! ## A225412.P14510696055463952867

`A309604(n)+A309644(n)-A153042(n+1)`
-/

namespace A225412.P14510696055463952867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A153042 (n + 1))

end

end A225412.P14510696055463952867

/-! ## A225412.P12408351813195156165

`A309605(n)+A309643(n)-A153042(n+1)`
-/

namespace A225412.P12408351813195156165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309605 n + (A309643 n - A153042 (n + 1))

end

end A225412.P12408351813195156165

/-! ## A225412.P11488503160617373058

`A309606(n)+A309642(n)-A153042(n+1)`
-/

namespace A225412.P11488503160617373058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A153042 (n + 1))

end

end A225412.P11488503160617373058

/-! ## A225412.P12390007102086928345

`A225404(n+1)+A225407(n)-A153042(n+1)`
-/

namespace A225412.P12390007102086928345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A153042 (n + 1))

end

end A225412.P12390007102086928345

/-! ## A225412.P14676132204885717474

`A306554(n+1)+A306555(n+1)-A153042(n+1)`
-/

namespace A225412.P14676132204885717474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A153042 (n + 1))

end

end A225412.P14676132204885717474

/-!
# A225413: Triangle read by rows: T(n,k) = (A101164(n,k) - A014473(n,k))/2.

The programs for A225413, the canonical program `A225413.P17496356582495702000` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225413 has offset 0).

The definition of A225413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225413.P17496356582495702000

`A108350(n)-A007318(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A225413

/-- `A108350(n)-A007318(n)` -/
def P17496356582495702000.Spec : Prop :=
  ∀ n, P17496356582495702000.a n = A225413 n

theorem P17496356582495702000.correct : P17496356582495702000.Spec := by
  intro n
  simp only [A225413]

end A225413

/-! ## A225413.P5562738369071257626

`(A101164(n)-A014473(n))/2`
-/

namespace A225413.P5562738369071257626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101164 n - A014473 n : ℚ) / 2

end

end A225413.P5562738369071257626

namespace A225413

/-- `(A101164(n)-A014473(n))/2` -/
def P5562738369071257626.Spec : Prop :=
  ∀ n, P5562738369071257626.a n = (A225413 n : ℚ)

end A225413

/-! ## A225413.P10153663996875021794

`(A008288(n)-A109128(n))/2`
-/

namespace A225413.P10153663996875021794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008288 n - A109128 n : ℚ) / 2

end

end A225413.P10153663996875021794

namespace A225413

/-- `(A008288(n)-A109128(n))/2` -/
def P10153663996875021794.Spec : Prop :=
  ∀ n, P10153663996875021794.a n = (A225413 n : ℚ)

end A225413

/-! ## A225413.P2216047557572896791

`ceil(A008288(n)/2-A007318(n))`
-/

namespace A225413.P2216047557572896791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008288 n : ℚ) / 2 - (A007318 n : ℚ)⌉

end

end A225413.P2216047557572896791

namespace A225413

/-- `ceil(A008288(n)/2-A007318(n))` -/
def P2216047557572896791.Spec : Prop :=
  ∀ n, P2216047557572896791.a n = A225413 n

end A225413

/-! ## A225413.P2788989278971319991

`ceil((A101164(n)-A007318(n))/2)`
-/

namespace A225413.P2788989278971319991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101164 n - A007318 n : ℚ) / 2⌉

end

end A225413.P2788989278971319991

namespace A225413

/-- `ceil((A101164(n)-A007318(n))/2)` -/
def P2788989278971319991.Spec : Prop :=
  ∀ n, P2788989278971319991.a n = A225413 n

end A225413

/-! ## A225413.P11494444607118247417

`A101164(n)+(1-A008288(n))/2`
-/

namespace A225413.P11494444607118247417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101164 n : ℚ) + (1 - A008288 n : ℚ) / 2

end

end A225413.P11494444607118247417

namespace A225413

/-- `A101164(n)+(1-A008288(n))/2` -/
def P11494444607118247417.Spec : Prop :=
  ∀ n, P11494444607118247417.a n = (A225413 n : ℚ)

end A225413

/-! ## A225413.P7735910725473367587

`A008288(n)+A101164(n)-A047671(n+1)`
-/

namespace A225413.P7735910725473367587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + (A101164 n - A047671 (n + 1))

end

end A225413.P7735910725473367587

namespace A225413

/-- `A008288(n)+A101164(n)-A047671(n+1)` -/
def P7735910725473367587.Spec : Prop :=
  ∀ n, P7735910725473367587.a n = A225413 n

end A225413

/-! ## A225413.P10146853007237772043

`A014682(A101164(n)-A014473(n))`
-/

namespace A225413.P10146853007237772043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A101164 n - A014473 n).toNat

end

end A225413.P10146853007237772043

namespace A225413

/-- `A014682(A101164(n)-A014473(n))` -/
def P10146853007237772043.Spec : Prop :=
  ∀ n, P10146853007237772043.a n = A225413 n

end A225413

/-! ## A225413.P12241069519948516094

`A014682(A008288(n)-A109128(n))`
-/

namespace A225413.P12241069519948516094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008288 n - A109128 n).toNat

end

end A225413.P12241069519948516094

namespace A225413

/-- `A014682(A008288(n)-A109128(n))` -/
def P12241069519948516094.Spec : Prop :=
  ∀ n, P12241069519948516094.a n = A225413 n

end A225413

/-! ## A225413.P9903116487046908090

`A038572(A101164(n)-A014473(n))`
-/

namespace A225413.P9903116487046908090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A101164 n - A014473 n).toNat

end

end A225413.P9903116487046908090

namespace A225413

/-- `A038572(A101164(n)-A014473(n))` -/
def P9903116487046908090.Spec : Prop :=
  ∀ n, P9903116487046908090.a n = A225413 n

end A225413

/-!
# A225414: Ordered counts of internal lattice points within primitive Pythagorean triangles (PPT).

The programs for A225414, there is no canonical definition to state claims against.
-/

/-! ## A225414.P3007817566744274492

`A226028(∑[n]+1)`
-/

namespace A225414.P3007817566744274492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A225414.P3007817566744274492

/-! ## A225414.P16626828101536077431

`A226028(A000124(n))+char[10]`
-/

namespace A225414.P16626828101536077431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226028 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A225414.P16626828101536077431

/-! ## A225414.P5592341363375028582

`record[A226028(n+1)/A013611(n)]`
-/

namespace A225414.P5592341363375028582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226028 (n + 1) : ℚ) / (A013611 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225414.P5592341363375028582

/-! ## A225414.P15283625896473443580

`record[A226028(n+1)/A337369(n)]`
-/

namespace A225414.P15283625896473443580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226028 (n + 1) : ℚ) / (A337369 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225414.P15283625896473443580

/-! ## A225414.P15246052683537786985

`record[A226028(n+1)/A337389(n)]`
-/

namespace A225414.P15246052683537786985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226028 (n + 1) : ℚ) / (A337389 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225414.P15246052683537786985

/-!
# A225415: Triangle read by rows: absolute values of odd-numbered rows of A225434.

The programs for A225415, there is no canonical definition to state claims against.
-/

/-! ## A225415.P13152050299445024709

`abs(A225434(A161983(n)))`
-/

namespace A225415.P13152050299445024709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225434 (A161983 n).toNat|

end

end A225415.P13152050299445024709

/-! ## A225415.P10718305788847119061

`abs(A225434(A116942(2*n)))`
-/

namespace A225415.P10718305788847119061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225434 (A116942 (2 * n)).toNat|

end

end A225415.P10718305788847119061

/-! ## A225415.P4714185806979391557

`gcd(A000038(n), A225434(A161983(n)))`
-/

namespace A225415.P4714185806979391557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A225434 (A161983 n).toNat)

end

end A225415.P4714185806979391557

/-! ## A225415.P17411348126612696688

`lcm(A225434(A161983(n)), A332433(n))`
-/

namespace A225415.P17411348126612696688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A225434 (A161983 n).toNat) (A332433 n)

end

end A225415.P17411348126612696688

/-! ## A225415.P10866932931900854586

`abs(A225434(A061887(n)+A000196(n)))`
-/

namespace A225415.P10866932931900854586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225434 (A061887 n + A000196 n).toNat|

end

end A225415.P10866932931900854586

/-!
# A225416: Number of iterations of the map n -> f(n) needed to reach 0 and starting with n, where f(n) is given by the following definition: f(n) = u(n) mod v(n) where u(n) = max (n, reverse(n)) and v(n) = min(n, reverse(n)).

The programs for A225416, there is no canonical definition to state claims against.
-/

/-! ## A225416.P17013521174193406376

`A005555(a(A061467(n)))` with `a(0)=0`
-/

namespace A225416.P17013521174193406376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005555 (a (A061467 n).toNat).toNat

end

end A225416.P17013521174193406376

/-! ## A225416.P3542504337910595582

`A008730(a(A061467(n)))` with `a(0)=0`
-/

namespace A225416.P3542504337910595582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008730 (a (A061467 n).toNat).toNat

end

end A225416.P3542504337910595582

/-! ## A225416.P10639702349592841447

`A291769(a(A061467(n)))` with `a(0)=0`
-/

namespace A225416.P10639702349592841447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A291769 (a (A061467 n).toNat).toNat

end

end A225416.P10639702349592841447

/-! ## A225416.P9965160077801947425

`(a(A061467(n))+1)%∑[A004277(n)]` with `a(0)=0`
-/

namespace A225416.P9965160077801947425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (A061467 n).toNat + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225416.P9965160077801947425

/-! ## A225416.P5163316861852728600

`A008611(A008585(a(A061467(n))))` with `a(0)=0`
-/

namespace A225416.P5163316861852728600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008611 (A008585 (a (A061467 n).toNat).toNat).toNat

end

end A225416.P5163316861852728600

/-!
# A225418: Composite numbers which contain their sum of the distinct prime factors (sopf function) as a substring.

The programs for A225418, there is no canonical definition to state claims against.
-/

/-! ## A225418.P8388978886481984785

`∩[A277851(n+1), A287763(n+1)]`
-/

namespace A225418.P8388978886481984785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225418.P8388978886481984785

/-!
# A225419: Triangle read by rows: T(n,k) (0 <= k <= n) = binomial(2*n+2,k).

The programs for A225419, there is no canonical definition to state claims against.
-/

/-! ## A225419.P7988999351313021273

`C(2*(row(n)+1), col(n))`
-/

namespace A225419.P7988999351313021273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (SequenceMachineLib.triRow n + 1)) (SequenceMachineLib.triCol n)

end

end A225419.P7988999351313021273

/-! ## A225419.P8157954681283185170

`C(∑[2*char[∑[n]]], n-C(∑[char[∑[n]]], 2))`
-/

namespace A225419.P8157954681283185170
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat

end

end A225419.P8157954681283185170

/-! ## A225419.P8537072132643879538

`A062344(comp[∑[n-1]])`
-/

namespace A225419.P8537072132643879538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A225419.P8537072132643879538

/-! ## A225419.P8055780847911999967

`A127673(comp[∑[n-1]])`
-/

namespace A225419.P8055780847911999967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127673 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A225419.P8055780847911999967

/-! ## A225419.P3720952145629003686

`A014462(lt[0, n-round(sqrt(n))²])`
-/

namespace A225419.P3720952145629003686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A225419.P3720952145629003686

/-!
# A225421: Prime numbers consisting of only odd digits such that there is only one permutation of its digits that produces a prime number.

The programs for A225421, there is no canonical definition to state claims against.
-/

/-! ## A225421.P15259321873816578353

`∩[A030096(n+1), A039986(n+1)]`
-/

namespace A225421.P15259321873816578353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225421.P15259321873816578353

/-! ## A225421.P9010252073744145132

`∩[A030096(n+1), A245808(n+1)]`
-/

namespace A225421.P9010252073744145132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225421.P9010252073744145132

/-! ## A225421.P17424691410897534570

`∩[A030096(n+1), A246044(n+1)]`
-/

namespace A225421.P17424691410897534570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225421.P17424691410897534570

/-! ## A225421.P2927503871315719901

`∩[A039986(n+1), A066640(n+1)]`
-/

namespace A225421.P2927503871315719901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225421.P2927503871315719901

/-! ## A225421.P11822487386294971634

`∩[A066640(n+1), A246044(n+1)]`
-/

namespace A225421.P11822487386294971634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225421.P11822487386294971634

/-!
# A225422: Largest number k such that k < d(k)^(n/10), where d(k) is the number of divisors of k.

The programs for A225422, there is no canonical definition to state claims against.
-/

/-! ## A225422.P15131444747356943718

`A355649(record[A210762(n+5)-A080576(3*n+4)])`
-/

namespace A225422.P15131444747356943718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210762 (n + 5) - A080576 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225422.P15131444747356943718

/-! ## A225422.P14739292952902780062

`A046523(floor(sqrt(A221965(n+1))))`
-/

namespace A225422.P14739292952902780062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.sqrt (A221965 (n + 1))).toNat

end

end A225422.P14739292952902780062

/-! ## A225422.P14144757223545415192

`A140635(floor(sqrt(A221965(n+1))))`
-/

namespace A225422.P14144757223545415192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (Int.sqrt (A221965 (n + 1))).toNat

end

end A225422.P14144757223545415192

/-! ## A225422.P17845736485684844361

`A291185(n+2)*A326842(A246458(n))`
-/

namespace A225422.P17845736485684844361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291185 (n + 2) * A326842 (A246458 n).toNat

end

end A225422.P17845736485684844361

/-!
# A225423: Primes p such that p + 70000000 is also prime.

The programs for A225423, there is no canonical definition to state claims against.
-/

/-! ## A225423.P10957918947723063491

`A319504(A125260(n+2)+1)`
-/

namespace A225423.P10957918947723063491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319504 (A125260 (n + 2) + 1).toNat

end

end A225423.P10957918947723063491

/-! ## A225423.P9719368815598123811

`A260682(eq[A260686(n), A260716(3*n+5)])`
-/

namespace A225423.P9719368815598123811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260716 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225423.P9719368815598123811

/-!
# A225425: 

The programs for A225425, there is no canonical definition to state claims against.
-/

/-! ## A225425.P2521568412488817677

`A216370(n+1)+A000389(A071919(n))`
-/

namespace A225425.P2521568412488817677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216370 (n + 1) + A000389 (A071919 n).toNat

end

end A225425.P2521568412488817677

/-! ## A225425.P3472839216103446356

`A216370(n+1)+A062707(A062707(n))`
-/

namespace A225425.P3472839216103446356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216370 (n + 1) + A062707 (A062707 n).toNat

end

end A225425.P3472839216103446356

/-! ## A225425.P9078308350420874088

`A225413(A079551(n))+A216370(n+1)`
-/

namespace A225425.P9078308350420874088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225413 (A079551 n).toNat + A216370 (n + 1)

end

end A225425.P9078308350420874088

/-! ## A225425.P6780583903759246545

`A249733(A065033(n))+A216370(n+1)`
-/

namespace A225425.P6780583903759246545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249733 (A065033 n).toNat + A216370 (n + 1)

end

end A225425.P6780583903759246545

/-! ## A225425.P305298807652034364

`A216370(n+1)+A173068(A339650(n))`
-/

namespace A225425.P305298807652034364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216370 (n + 1) + A173068 (A339650 n).toNat

end

end A225425.P305298807652034364

/-!
# A225428: Number of numbers x < 10^n such that the digits of x^2 occur with an equal frequency of 2.

The programs for A225428, there is no canonical definition to state claims against.
-/

/-! ## A225428.P3499416159228340460

`∑[A225429(n+1)]`
-/

namespace A225428.P3499416159228340460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225428.P3499416159228340460

/-! ## A225428.P7285515110910237397

`∑[record[A225429(A025453(n))]]`
-/

namespace A225428.P7285515110910237397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225429 (A025453 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225428.P7285515110910237397

/-! ## A225428.P1285797923767705313

`∑[record[A225429(A028920(n))]]`
-/

namespace A225428.P1285797923767705313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225429 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225428.P1285797923767705313

/-! ## A225428.P2350865213016610073

`∑[record[A225429(A033666(n))]]`
-/

namespace A225428.P2350865213016610073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225429 (A033666 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225428.P2350865213016610073

/-! ## A225428.P7663783149841820287

`∑[record[A225429(A051801(n))]]`
-/

namespace A225428.P7663783149841820287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225429 (A051801 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225428.P7663783149841820287

/-!
# A225429: Number of n-digit numbers x such that the digits of x^2 occur with frequency 2.

The programs for A225429, there is no canonical definition to state claims against.
-/

/-! ## A225429.P9177092420179681599

`Δ[A225428(round(sqrt(n²+1)))]`
-/

namespace A225429.P9177092420179681599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225428 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225429.P9177092420179681599

/-! ## A225429.P18339454591292069470

`abs(Δ[A225428(A028310(n))])`
-/

namespace A225429.P18339454591292069470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225428 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A225429.P18339454591292069470

/-! ## A225429.P18014232393203490738

`record[Δ[A225428(A003105(n))]]`
-/

namespace A225429.P18014232393203490738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225428 (A003105 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225429.P18014232393203490738

/-! ## A225429.P17041572679326330585

`record[Δ[A225428(A006949(n))]]`
-/

namespace A225429.P17041572679326330585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225428 (A006949 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225429.P17041572679326330585

/-! ## A225429.P16545488307785279050

`record[Δ[A225428(A008619(n))]]`
-/

namespace A225429.P16545488307785279050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225428 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225429.P16545488307785279050

/-!
# A225430: a(n) is the smallest m for which there appears for the first time a prime p which equals odd part of sum of digits of m^2.

The programs for A225430, there is no canonical definition to state claims against.
-/

/-! ## A225430.P3636715515616386830

`A389004(A225516(n+1))`
-/

namespace A225430.P3636715515616386830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389004 (A225516 (n + 1)).toNat

end

end A225430.P3636715515616386830

/-! ## A225430.P1929760235815953232

`A326623(A143486(n+1)+A000292(n))`
-/

namespace A225430.P1929760235815953232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (A143486 (n + 1) + A000292 n).toNat

end

end A225430.P1929760235815953232

/-! ## A225430.P5879551235789905418

`A300273(A211681(n+1)+A206563(n+1))`
-/

namespace A225430.P5879551235789905418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (A211681 (n + 1) + A206563 (n + 1)).toNat

end

end A225430.P5879551235789905418

/-!
# A225431: Primes p such that there is a prime q satisfying 3*p^2 - q^2 = 2.

The programs for A225431, there is no canonical definition to state claims against.
-/

/-! ## A225431.P17316173048026366103

`A096147(floor(2*sqrt(∑[n+1]))-1)`
-/

namespace A225431.P17316173048026366103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096147 (⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋ - 1).toNat

end

end A225431.P17316173048026366103

/-!
# A225432: Twice the coefficient of sqrt(q) in e^h, where e is the fundamental unit and h is the class number of Q(sqrt(q)), q prime and congruent to 1 mod 4. (The coefficient lies in (1/2)Z, so twice it is an integer.)

The programs for A225432, there is no canonical definition to state claims against.
-/

/-! ## A225432.P13068555391222055210

`A000027(A201170(n+1))/A002144(n+1)`
-/

namespace A225432.P13068555391222055210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A201170 (n + 1)).toNat : ℚ) / (A002144 (n + 1) : ℚ)

end

end A225432.P13068555391222055210

/-! ## A225432.P15006463030824761493

`A028310(A201170(n+1)/A002144(n+1))`
-/

namespace A225432.P15006463030824761493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A201170 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ))).toNat

end

end A225432.P15006463030824761493

/-! ## A225432.P11371880502377885497

`A028310(A201170(n+1)/p?[A077426(n+1)])`
-/

namespace A225432.P11371880502377885497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A201170 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ))).toNat

end

end A225432.P11371880502377885497

/-! ## A225432.P12390310445756527357

`A201170(n+1)/A014963(A080109(n+1))`
-/

namespace A225432.P12390310445756527357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201170 (n + 1) : ℚ) / (A014963 (A080109 (n + 1)).toNat : ℚ)

end

end A225432.P12390310445756527357

/-! ## A225432.P9447160689424764373

`A302776(A201170(n+1))`
-/

namespace A225432.P9447160689424764373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302776 (A201170 (n + 1)).toNat

end

end A225432.P9447160689424764373

/-!
# A225433: Triangle T(n, k) = T(n, k-1) + (-1)^k*A142458(n+2, k+1) if k <= floor(n/2), otherwise T(n, n-k), with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A225433, there is no canonical definition to state claims against.
-/

/-! ## A225433.P6504343347570893258

`A001489(A050237(n))^A034852(n)`
-/

namespace A225433.P6504343347570893258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (A050237 n).toNat : ℚ) ^ (A034852 n : ℤ)

end

end A225433.P6504343347570893258

/-! ## A225433.P3865818379732063273

`A001489(A050237(n))^A238012(n)`
-/

namespace A225433.P3865818379732063273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (A050237 n).toNat : ℚ) ^ (A238012 n : ℤ)

end

end A225433.P3865818379732063273

/-!
# A225435: Numerators of convergents to the general continued fraction 1/(1 + 2/(1 + 3/(1 + 4/(1+ ...)))).

The programs for A225435, there is no canonical definition to state claims against.
-/

/-! ## A225435.P12725337024688108586

`A289491(n+1)-A225436(n+1)`
-/

namespace A225435.P12725337024688108586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289491 (n + 1) - A225436 (n + 1)

end

end A225435.P12725337024688108586

/-! ## A225435.P13488241939917500080

`A028310(A289491(n+1)%A225436(n+1))`
-/

namespace A225435.P13488241939917500080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A289491 (n + 1)) (A225436 (n + 1))).toNat

end

end A225435.P13488241939917500080

/-!
# A225436: Denominators of convergents to the general continued fraction 1/(1 + 2/(1 + 3/(1 + 4/(1+ ...)))).

The programs for A225436, there is no canonical definition to state claims against.
-/

/-! ## A225436.P14719929939881288659

`A289491(n+1)-A225435(n+1)`
-/

namespace A225436.P14719929939881288659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289491 (n + 1) - A225435 (n + 1)

end

end A225436.P14719929939881288659

/-! ## A225436.P3260696328997008716

`A078268(record[a(n-1)-(1-n)*a(n-2)])` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A225436.P3260696328997008716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  f1 (n - 1) - (1 - (n : ℤ)) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078268 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225436.P3260696328997008716

/-! ## A225436.P17864349249866739498

`A078268(A000932(n+1))`
-/

namespace A225436.P17864349249866739498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078268 (A000932 (n + 1)).toNat

end

end A225436.P17864349249866739498

/-!
# A225438: Odd numbers such that no permutation of its digits yields a prime.

The programs for A225438, there is no canonical definition to state claims against.
-/

/-! ## A225438.P1720421861587721626

`∩[2*n+1, A067013(n+1)]`
-/

namespace A225438.P1720421861587721626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225438.P1720421861587721626

/-! ## A225438.P7972843885071824111

`eq[0, a(A039999(n))-gcd(2, n)]` with `a(0)=1`
-/

namespace A225438.P7972843885071824111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A039999 n).toNat - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225438.P7972843885071824111

/-! ## A225438.P4458745277849175716

`lt[A039999(n+1), (-1)^n]+1`
-/

namespace A225438.P4458745277849175716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A225438.P4458745277849175716

/-! ## A225438.P2759466985834956779

`record[A093178(A067012(n+1))]`
-/

namespace A225438.P2759466985834956779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A067012 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225438.P2759466985834956779

/-! ## A225438.P17090868623185959841

`record[A093178(A067013(n+1))]`
-/

namespace A225438.P17090868623185959841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A067013 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225438.P17090868623185959841

/-! ## A225438.P6467047908144107644

`record[A000265(A067012(n+3))]`
-/

namespace A225438.P6467047908144107644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067012 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225438.P6467047908144107644

/-! ## A225438.P14018891745770620844

`record[A000265(A067013(n+4))]`
-/

namespace A225438.P14018891745770620844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067013 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225438.P14018891745770620844

/-! ## A225438.P8708615703778160941

`filter[A067013(n+1), A000035(#)]`
-/

namespace A225438.P8708615703778160941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A225438.P8708615703778160941

/-! ## A225438.P15024584004515855957

`∩[A067013(n+1), A004273(n)]`
-/

namespace A225438.P15024584004515855957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225438.P15024584004515855957

/-! ## A225438.P10820237976801458892

`∩[A067013(n+1), A004274(n)]`
-/

namespace A225438.P10820237976801458892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225438.P10820237976801458892

/-!
# A225439: Expansion of 3*x/((1-(1-9*x)^(1/3))*(1-9*x)^(2/3)).

The programs for A225439, the canonical program `A225439.P2860573056763394502` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225439 has offset 0).

The definition of A225439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225439.P2860573056763394502

`A025748(n)+(9-6/n)*a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225439

/-- `A025748(n)+(9-6/n)*a(n-1)` -/
def P2860573056763394502.Spec : Prop :=
  ∀ n, P2860573056763394502.a n = (A225439 n : ℚ)

end A225439

/-!
# A225441: 10-adic integer x such that x^7 = -7/9.

The programs for A225441, there is no canonical definition to state claims against.
-/

/-! ## A225441.P4534338294895509638

`A225406(n)+A225409(n)-A225450(n+1)`
-/

namespace A225441.P4534338294895509638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225450 (n + 1))

end

end A225441.P4534338294895509638

/-! ## A225441.P8915498402298832814

`A225442(n)+A225451(n)-A225450(n+1)`
-/

namespace A225441.P8915498402298832814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225450 (n + 1))

end

end A225441.P8915498402298832814

/-! ## A225441.P2880849587842568923

`A225443(n)+A225452(n)-A225450(n+1)`
-/

namespace A225441.P2880849587842568923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225450 (n + 1))

end

end A225441.P2880849587842568923

/-! ## A225441.P6250500096189319514

`A225444(n)+A225447(n)-A225450(n+1)`
-/

namespace A225441.P6250500096189319514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225450 (n + 1))

end

end A225441.P6250500096189319514

/-! ## A225441.P582594819954650869

`A225445(n)+A225448(n)-A225450(n+1)`
-/

namespace A225441.P582594819954650869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225450 (n + 1))

end

end A225441.P582594819954650869

/-! ## A225441.P11001782519527559399

`A225446(n)+A225449(n)-A225450(n+1)`
-/

namespace A225441.P11001782519527559399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225450 (n + 1))

end

end A225441.P11001782519527559399

/-! ## A225441.P8753451831720235030

`A225453(n)+A225462(n)-A225450(n+1)`
-/

namespace A225441.P8753451831720235030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225453 n + (A225462 n - A225450 (n + 1))

end

end A225441.P8753451831720235030

/-! ## A225441.P1713159520554810312

`A225454(n)+A225463(n)-A225450(n+1)`
-/

namespace A225441.P1713159520554810312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225454 n + (A225463 n - A225450 (n + 1))

end

end A225441.P1713159520554810312

/-! ## A225441.P5123898478212709133

`A225456(n)+A225459(n)-A225450(n+1)`
-/

namespace A225441.P5123898478212709133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225456 n + (A225459 n - A225450 (n + 1))

end

end A225441.P5123898478212709133

/-! ## A225441.P13209433232942030723

`A225457(n)+A225460(n)-A225450(n+1)`
-/

namespace A225441.P13209433232942030723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225450 (n + 1))

end

end A225441.P13209433232942030723

/-! ## A225441.P1494172809187903670

`A225404(n+1)+A225407(n)-A225450(n+1)`
-/

namespace A225441.P1494172809187903670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225450 (n + 1))

end

end A225441.P1494172809187903670

/-! ## A225441.P618186609125324998

`A225455(n+1)+A225464(n)-A225450(n+1)`
-/

namespace A225441.P618186609125324998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225450 (n + 1))

end

end A225441.P618186609125324998

/-!
# A225442: 10-adic integer x such that x^7 = -1/3.

The programs for A225442, there is no canonical definition to state claims against.
-/

/-! ## A225442.P6096180312180744890

`A225405(n)+A225408(n)-A225451(n)`
-/

namespace A225442.P6096180312180744890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225451 n)

end

end A225442.P6096180312180744890

/-! ## A225442.P18331925353015489898

`A225406(n)+A225409(n)-A225451(n)`
-/

namespace A225442.P18331925353015489898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225451 n)

end

end A225442.P18331925353015489898

/-! ## A225442.P14430142451665739162

`A225443(n)+A225452(n)-A225451(n)`
-/

namespace A225442.P14430142451665739162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225451 n)

end

end A225442.P14430142451665739162

/-! ## A225442.P13967083029084680396

`A225444(n)+A225447(n)-A225451(n)`
-/

namespace A225442.P13967083029084680396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225451 n)

end

end A225442.P13967083029084680396

/-! ## A225442.P3566342114468164523

`A225445(n)+A225448(n)-A225451(n)`
-/

namespace A225442.P3566342114468164523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225451 n)

end

end A225442.P3566342114468164523

/-! ## A225442.P16730194567733380503

`A225446(n)+A225449(n)-A225451(n)`
-/

namespace A225442.P16730194567733380503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225451 n)

end

end A225442.P16730194567733380503

/-! ## A225442.P11229880561055359472

`A225453(n)+A225462(n)-A225451(n)`
-/

namespace A225442.P11229880561055359472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225453 n + (A225462 n - A225451 n)

end

end A225442.P11229880561055359472

/-! ## A225442.P17095713415561238093

`A225454(n)+A225463(n)-A225451(n)`
-/

namespace A225442.P17095713415561238093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225454 n + (A225463 n - A225451 n)

end

end A225442.P17095713415561238093

/-! ## A225442.P51290396662085972

`A225456(n)+A225459(n)-A225451(n)`
-/

namespace A225442.P51290396662085972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225456 n + (A225459 n - A225451 n)

end

end A225442.P51290396662085972

/-! ## A225442.P15953616526922153597

`A225457(n)+A225460(n)-A225451(n)`
-/

namespace A225442.P15953616526922153597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225451 n)

end

end A225442.P15953616526922153597

/-! ## A225442.P6586559809492117109

`A225450(n+1)+A225441(n)-A225451(n)`
-/

namespace A225442.P6586559809492117109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225451 n)

end

end A225442.P6586559809492117109

/-! ## A225442.P10795953345271420284

`A225455(n+1)+A225464(n)-A225451(n)`
-/

namespace A225442.P10795953345271420284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225451 n)

end

end A225442.P10795953345271420284

/-! ## A225442.P10546178365097929089

`A306552(n+1)+A319739(n)-A225451(n)`
-/

namespace A225442.P10546178365097929089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A225451 n)

end

end A225442.P10546178365097929089

/-! ## A225442.P5437210146359977410

`A306554(n+1)+A306555(n+1)-A225451(n)`
-/

namespace A225442.P5437210146359977410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225451 n)

end

end A225442.P5437210146359977410

/-!
# A225443: Digits of the 10-adic integer (-1/9)^(1/7).

The programs for A225443, there is no canonical definition to state claims against.
-/

/-! ## A225443.P15615421223546840153

`A000007(n)+9-A225452(n)`
-/

namespace A225443.P15615421223546840153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A225452 n)

end

end A225443.P15615421223546840153

/-! ## A225443.P6581631922498849092

`10-(A225452(n)+A057427(n))`
-/

namespace A225443.P6581631922498849092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A225452 n + A057427 n)

end

end A225443.P6581631922498849092

/-! ## A225443.P6749495818097738370

`A225401(n)+A225410(n)-A225452(n)`
-/

namespace A225443.P6749495818097738370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225452 n)

end

end A225443.P6749495818097738370

/-! ## A225443.P11237462007221988845

`A225405(n)+A225408(n)-A225452(n)`
-/

namespace A225443.P11237462007221988845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225452 n)

end

end A225443.P11237462007221988845

/-! ## A225443.P13242375036342180701

`A225406(n)+A225409(n)-A225452(n)`
-/

namespace A225443.P13242375036342180701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225452 n)

end

end A225443.P13242375036342180701

/-! ## A225443.P9147404305919158712

`A225442(n)+A225451(n)-A225452(n)`
-/

namespace A225443.P9147404305919158712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225452 n)

end

end A225443.P9147404305919158712

/-! ## A225443.P9666393141012374981

`A225444(n)+A225447(n)-A225452(n)`
-/

namespace A225443.P9666393141012374981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225452 n)

end

end A225443.P9666393141012374981

/-! ## A225443.P14803623013201675076

`A225445(n)+A225448(n)-A225452(n)`
-/

namespace A225443.P14803623013201675076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225452 n)

end

end A225443.P14803623013201675076

/-! ## A225443.P1239475281385725220

`A225446(n)+A225449(n)-A225452(n)`
-/

namespace A225443.P1239475281385725220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225452 n)

end

end A225443.P1239475281385725220

/-! ## A225443.P7174607553944772696

`A225453(n)+A225462(n)-A225452(n)`
-/

namespace A225443.P7174607553944772696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225453 n + (A225462 n - A225452 n)

end

end A225443.P7174607553944772696

/-! ## A225443.P1194489538262595593

`A225456(n)+A225459(n)-A225452(n)`
-/

namespace A225443.P1194489538262595593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225456 n + (A225459 n - A225452 n)

end

end A225443.P1194489538262595593

/-! ## A225443.P17568061954011682569

`A225450(n+1)+A225441(n)-A225452(n)`
-/

namespace A225443.P17568061954011682569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225452 n)

end

end A225443.P17568061954011682569

/-! ## A225443.P18275595320221914672

`A225446(2*n)-(A225452(n)-A225449(2*n))`
-/

namespace A225443.P18275595320221914672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 (2 * n) - (A225452 n - A225449 (2 * n))

end

end A225443.P18275595320221914672

/-!
# A225444: 10-adic integer x such that x^7 = 3.

The programs for A225444, there is no canonical definition to state claims against.
-/

/-! ## A225444.P16888853513394839356

`A225401(n)+A225410(n)-A225447(n)`
-/

namespace A225444.P16888853513394839356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225447 n)

end

end A225444.P16888853513394839356

/-! ## A225444.P16184171743071254552

`A225405(n)+A225408(n)-A225447(n)`
-/

namespace A225444.P16184171743071254552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225447 n)

end

end A225444.P16184171743071254552

/-! ## A225444.P10455441174255971247

`A225406(n)+A225409(n)-A225447(n)`
-/

namespace A225444.P10455441174255971247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225447 n)

end

end A225444.P10455441174255971247

/-! ## A225444.P12731133213784130852

`A225442(n)+A225451(n)-A225447(n)`
-/

namespace A225444.P12731133213784130852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225447 n)

end

end A225444.P12731133213784130852

/-! ## A225444.P10557489696119885244

`A225443(n)+A225452(n)-A225447(n)`
-/

namespace A225444.P10557489696119885244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225447 n)

end

end A225444.P10557489696119885244

/-! ## A225444.P7624684917857120916

`A225445(n)+A225448(n)-A225447(n)`
-/

namespace A225444.P7624684917857120916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225447 n)

end

end A225444.P7624684917857120916

/-! ## A225444.P3893318813355512121

`A225446(n)+A225449(n)-A225447(n)`
-/

namespace A225444.P3893318813355512121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225447 n)

end

end A225444.P3893318813355512121

/-! ## A225444.P5458192292499506168

`A225453(n)+A225462(n)-A225447(n)`
-/

namespace A225444.P5458192292499506168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225453 n + (A225462 n - A225447 n)

end

end A225444.P5458192292499506168

/-! ## A225444.P6194499107356352944

`A225454(n)+A225463(n)-A225447(n)`
-/

namespace A225444.P6194499107356352944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225454 n + (A225463 n - A225447 n)

end

end A225444.P6194499107356352944

/-! ## A225444.P16076194592130125933

`A225456(n)+A225459(n)-A225447(n)`
-/

namespace A225444.P16076194592130125933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225456 n + (A225459 n - A225447 n)

end

end A225444.P16076194592130125933

/-! ## A225444.P1933089767500154354

`A225457(n)+A225460(n)-A225447(n)`
-/

namespace A225444.P1933089767500154354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225447 n)

end

end A225444.P1933089767500154354

/-! ## A225444.P1250172548435329218

`A225450(n+1)+A225441(n)-A225447(n)`
-/

namespace A225444.P1250172548435329218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225447 n)

end

end A225444.P1250172548435329218

/-! ## A225444.P1838075690676864466

`A225455(n+1)+A225464(n)-A225447(n)`
-/

namespace A225444.P1838075690676864466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225447 n)

end

end A225444.P1838075690676864466

/-!
# A225445: 10-adic integer x such that x^7 = 7.

The programs for A225445, there is no canonical definition to state claims against.
-/

/-! ## A225445.P9006772085464653086

`A225401(n)+A225410(n)-A225448(n)`
-/

namespace A225445.P9006772085464653086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225448 n)

end

end A225445.P9006772085464653086

/-! ## A225445.P6728264102487804390

`A225402(n)+A225411(n)-A225448(n)`
-/

namespace A225445.P6728264102487804390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225448 n)

end

end A225445.P6728264102487804390

/-! ## A225445.P15642371870688037253

`A225405(n)+A225408(n)-A225448(n)`
-/

namespace A225445.P15642371870688037253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225448 n)

end

end A225445.P15642371870688037253

/-! ## A225445.P11011068349546199516

`A225406(n)+A225409(n)-A225448(n)`
-/

namespace A225445.P11011068349546199516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225448 n)

end

end A225445.P11011068349546199516

/-! ## A225445.P1434494508438951235

`A309569(n)+A309641(n)-A225448(n)`
-/

namespace A225445.P1434494508438951235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309569 n + (A309641 n - A225448 n)

end

end A225445.P1434494508438951235

/-! ## A225445.P5896435776688600412

`A309595(n)+A309614(n)-A225448(n)`
-/

namespace A225445.P5896435776688600412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A225448 n)

end

end A225445.P5896435776688600412

/-! ## A225445.P5275037133319471302

`A309600(n)+A309648(n)-A225448(n)`
-/

namespace A225445.P5275037133319471302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A225448 n)

end

end A225445.P5275037133319471302

/-! ## A225445.P10475034027173844592

`A309606(n)+A309642(n)-A225448(n)`
-/

namespace A225445.P10475034027173844592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A225448 n)

end

end A225445.P10475034027173844592

/-! ## A225445.P8095867572324839366

`A225455(n+1)+A225464(n)-A225448(n)`
-/

namespace A225445.P8095867572324839366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225448 n)

end

end A225445.P8095867572324839366

/-!
# A225446: Digits of the 10-adic integer 9^(1/7).

The programs for A225446, there is no canonical definition to state claims against.
-/

/-! ## A225446.P13114931579469291909

`A000007(n)+9-A225449(n)`
-/

namespace A225446.P13114931579469291909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A225449 n)

end

end A225446.P13114931579469291909

/-! ## A225446.P4723909673582303215

`10-(A225449(n)+A057427(n))`
-/

namespace A225446.P4723909673582303215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A225449 n + A057427 n)

end

end A225446.P4723909673582303215

/-! ## A225446.P15042041490985366421

`a(A000038(n))-A225449(n)` with `a(0)=9`
-/

namespace A225446.P15042041490985366421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (A000038 n).toNat - A225449 n

end

end A225446.P15042041490985366421

/-! ## A225446.P7019494818669102204

`A225401(n)+A225410(n)-A225449(n)`
-/

namespace A225446.P7019494818669102204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225449 n)

end

end A225446.P7019494818669102204

/-! ## A225446.P16781887674551379844

`A225406(n)+A225409(n)-A225449(n)`
-/

namespace A225446.P16781887674551379844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225449 n)

end

end A225446.P16781887674551379844

/-! ## A225446.P6779894088246565685

`A225443(n)+A225452(n)-A225449(n)`
-/

namespace A225446.P6779894088246565685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225449 n)

end

end A225446.P6779894088246565685

/-! ## A225446.P15732406137986077520

`A225444(n)+A225447(n)-A225449(n)`
-/

namespace A225446.P15732406137986077520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225449 n)

end

end A225446.P15732406137986077520

/-! ## A225446.P8885699162507952273

`A225453(n)+A225462(n)-A225449(n)`
-/

namespace A225446.P8885699162507952273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225453 n + (A225462 n - A225449 n)

end

end A225446.P8885699162507952273

/-! ## A225446.P11778466223419567670

`A225450(n+1)+A225441(n)-A225449(n)`
-/

namespace A225446.P11778466223419567670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225449 n)

end

end A225446.P11778466223419567670

/-! ## A225446.P7569324664790766713

`A225443(2*n)-(A225449(n)-A225452(2*n))`
-/

namespace A225446.P7569324664790766713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 (2 * n) - (A225449 n - A225452 (2 * n))

end

end A225446.P7569324664790766713

/-!
# A225447: 10-adic integer x such that x^7 = -3.

The programs for A225447, there is no canonical definition to state claims against.
-/

/-! ## A225447.P12000453595650864233

`A225401(n)+A225410(n)-A225444(n)`
-/

namespace A225447.P12000453595650864233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225444 n)

end

end A225447.P12000453595650864233

/-! ## A225447.P16490774776026398909

`A225405(n)+A225408(n)-A225444(n)`
-/

namespace A225447.P16490774776026398909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225444 n)

end

end A225447.P16490774776026398909

/-! ## A225447.P14431835347230364434

`A225406(n)+A225409(n)-A225444(n)`
-/

namespace A225447.P14431835347230364434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225444 n)

end

end A225447.P14431835347230364434

/-! ## A225447.P16565396192562878620

`A225442(n)+A225451(n)-A225444(n)`
-/

namespace A225447.P16565396192562878620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225444 n)

end

end A225447.P16565396192562878620

/-! ## A225447.P12974362551820196175

`A225443(n)+A225452(n)-A225444(n)`
-/

namespace A225447.P12974362551820196175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225444 n)

end

end A225447.P12974362551820196175

/-! ## A225447.P17612423334405363659

`A225445(n)+A225448(n)-A225444(n)`
-/

namespace A225447.P17612423334405363659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225444 n)

end

end A225447.P17612423334405363659

/-! ## A225447.P17407178511992893234

`A225446(n)+A225449(n)-A225444(n)`
-/

namespace A225447.P17407178511992893234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225444 n)

end

end A225447.P17407178511992893234

/-! ## A225447.P3181142200649579659

`A225453(n)+A225462(n)-A225444(n)`
-/

namespace A225447.P3181142200649579659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225453 n + (A225462 n - A225444 n)

end

end A225447.P3181142200649579659

/-! ## A225447.P8489947327076045865

`A225454(n)+A225463(n)-A225444(n)`
-/

namespace A225447.P8489947327076045865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225454 n + (A225463 n - A225444 n)

end

end A225447.P8489947327076045865

/-! ## A225447.P13931828668893539196

`A225456(n)+A225459(n)-A225444(n)`
-/

namespace A225447.P13931828668893539196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225456 n + (A225459 n - A225444 n)

end

end A225447.P13931828668893539196

/-! ## A225447.P15632463593494256524

`A225457(n)+A225460(n)-A225444(n)`
-/

namespace A225447.P15632463593494256524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225444 n)

end

end A225447.P15632463593494256524

/-! ## A225447.P12787734829171651060

`A225404(n+1)+A225407(n)-A225444(n)`
-/

namespace A225447.P12787734829171651060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225444 n)

end

end A225447.P12787734829171651060

/-! ## A225447.P8317244012808526758

`A225450(n+1)+A225441(n)-A225444(n)`
-/

namespace A225447.P8317244012808526758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225444 n)

end

end A225447.P8317244012808526758

/-!
# A225448: 10-adic integer x such that x^7 = -7.

The programs for A225448, there is no canonical definition to state claims against.
-/

/-! ## A225448.P9429276103777341361

`A225401(n)+A225410(n)-A225445(n)`
-/

namespace A225448.P9429276103777341361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225445 n)

end

end A225448.P9429276103777341361

/-! ## A225448.P11390365509479615020

`A225402(n)+A225411(n)-A225445(n)`
-/

namespace A225448.P11390365509479615020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225445 n)

end

end A225448.P11390365509479615020

/-! ## A225448.P7848789703751777784

`A225405(n)+A225408(n)-A225445(n)`
-/

namespace A225448.P7848789703751777784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225445 n)

end

end A225448.P7848789703751777784

/-! ## A225448.P2648492019515751957

`A225406(n)+A225409(n)-A225445(n)`
-/

namespace A225448.P2648492019515751957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225445 n)

end

end A225448.P2648492019515751957

/-! ## A225448.P4786691900684872488

`A225455(n+1)+A225464(n)-A225445(n)`
-/

namespace A225448.P4786691900684872488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225445 n)

end

end A225448.P4786691900684872488

/-! ## A225448.P14469495346066590705

`A193345(n+1)+A225458(n)-A225445(n)`
-/

namespace A225448.P14469495346066590705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193345 (n + 1) + (A225458 n - A225445 n)

end

end A225448.P14469495346066590705

/-!
# A225449: Digits of the 10-adic integer (-9)^(1/7).

The programs for A225449, there is no canonical definition to state claims against.
-/

/-! ## A225449.P8833750378326467526

`A000007(n)+9-A225446(n)`
-/

namespace A225449.P8833750378326467526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A225446 n)

end

end A225449.P8833750378326467526

/-! ## A225449.P205751043590576501

`10-(A225446(n)+A057427(n))`
-/

namespace A225449.P205751043590576501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A225446 n + A057427 n)

end

end A225449.P205751043590576501

/-! ## A225449.P3899022836121310308

`A225401(n)+A225410(n)-A225446(n)`
-/

namespace A225449.P3899022836121310308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225446 n)

end

end A225449.P3899022836121310308

/-! ## A225449.P2173094051211813906

`A225405(n)+A225408(n)-A225446(n)`
-/

namespace A225449.P2173094051211813906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225446 n)

end

end A225449.P2173094051211813906

/-! ## A225449.P7346875946238023143

`A225406(n)+A225409(n)-A225446(n)`
-/

namespace A225449.P7346875946238023143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225446 n)

end

end A225449.P7346875946238023143

/-! ## A225449.P5462052016585777629

`A225442(n)+A225451(n)-A225446(n)`
-/

namespace A225449.P5462052016585777629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225446 n)

end

end A225449.P5462052016585777629

/-! ## A225449.P1050471671205420784

`A225443(n)+A225452(n)-A225446(n)`
-/

namespace A225449.P1050471671205420784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225446 n)

end

end A225449.P1050471671205420784

/-! ## A225449.P312087822759886787

`A225444(n)+A225447(n)-A225446(n)`
-/

namespace A225449.P312087822759886787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225446 n)

end

end A225449.P312087822759886787

/-! ## A225449.P10909604887307431769

`A225445(n)+A225448(n)-A225446(n)`
-/

namespace A225449.P10909604887307431769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225446 n)

end

end A225449.P10909604887307431769

/-! ## A225449.P11788926490432003625

`A225450(n+1)+A225441(n)-A225446(n)`
-/

namespace A225449.P11788926490432003625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225446 n)

end

end A225449.P11788926490432003625

/-! ## A225449.P1105623806520060730

`A225443(2*n)-(A225446(n)-A225452(2*n))`
-/

namespace A225449.P1105623806520060730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 (2 * n) - (A225446 n - A225452 (2 * n))

end

end A225449.P1105623806520060730

/-!
# A225450: 10-adic integer x such that x^7 == (2*(10^n-1)/9)+1 mod 10^n for all n.

The programs for A225450, there is no canonical definition to state claims against.
-/

/-! ## A225450.P12466730533157856509

`A225401(n)+A225410(n)-A225441(n)`
-/

namespace A225450.P12466730533157856509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225441 n)

end

end A225450.P12466730533157856509

/-! ## A225450.P13170862905131321265

`A225405(n)+A225408(n)-A225441(n)`
-/

namespace A225450.P13170862905131321265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225441 n)

end

end A225450.P13170862905131321265

/-! ## A225450.P2240977673377719482

`A225406(n)+A225409(n)-A225441(n)`
-/

namespace A225450.P2240977673377719482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225441 n)

end

end A225450.P2240977673377719482

/-! ## A225450.P12818731402452209363

`A225442(n)+A225451(n)-A225441(n)`
-/

namespace A225450.P12818731402452209363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225441 n)

end

end A225450.P12818731402452209363

/-! ## A225450.P13343314538075172208

`A225443(n)+A225452(n)-A225441(n)`
-/

namespace A225450.P13343314538075172208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225441 n)

end

end A225450.P13343314538075172208

/-! ## A225450.P7639596298215877030

`A225444(n)+A225447(n)-A225441(n)`
-/

namespace A225450.P7639596298215877030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225441 n)

end

end A225450.P7639596298215877030

/-! ## A225450.P10615739055931381758

`A225445(n)+A225448(n)-A225441(n)`
-/

namespace A225450.P10615739055931381758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225441 n)

end

end A225450.P10615739055931381758

/-! ## A225450.P16597099557381442685

`A225446(n)+A225449(n)-A225441(n)`
-/

namespace A225450.P16597099557381442685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225441 n)

end

end A225450.P16597099557381442685

/-! ## A225450.P11561977129811463758

`A225456(n)+A225459(n)-A225441(n)`
-/

namespace A225450.P11561977129811463758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225456 n + (A225459 n - A225441 n)

end

end A225450.P11561977129811463758

/-! ## A225450.P617829096873109666

`A225457(n)+A225460(n)-A225441(n)`
-/

namespace A225450.P617829096873109666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225441 n)

end

end A225450.P617829096873109666

/-! ## A225450.P1994571265083171874

`A225404(n+1)+A225407(n)-A225441(n)`
-/

namespace A225450.P1994571265083171874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225441 n)

end

end A225450.P1994571265083171874

/-! ## A225450.P1552328425369987741

`A225455(n+1)+A225464(n)-A225441(n)`
-/

namespace A225450.P1552328425369987741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225441 n)

end

end A225450.P1552328425369987741

/-!
# A225451: 10-adic integer x such that x^7 = 1/3.

The programs for A225451, there is no canonical definition to state claims against.
-/

/-! ## A225451.P11542899077961568540

`A225405(n)+A225408(n)-A225442(n)`
-/

namespace A225451.P11542899077961568540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225442 n)

end

end A225451.P11542899077961568540

/-! ## A225451.P6578550284782201623

`A225443(n)+A225452(n)-A225442(n)`
-/

namespace A225451.P6578550284782201623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225442 n)

end

end A225451.P6578550284782201623

/-! ## A225451.P3178945477291204486

`A225444(n)+A225447(n)-A225442(n)`
-/

namespace A225451.P3178945477291204486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225442 n)

end

end A225451.P3178945477291204486

/-! ## A225451.P17211029167278977754

`A225445(n)+A225448(n)-A225442(n)`
-/

namespace A225451.P17211029167278977754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225442 n)

end

end A225451.P17211029167278977754

/-! ## A225451.P6694553448549520719

`A225446(n)+A225449(n)-A225442(n)`
-/

namespace A225451.P6694553448549520719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225442 n)

end

end A225451.P6694553448549520719

/-! ## A225451.P1846546545258276698

`A225457(n)+A225460(n)-A225442(n)`
-/

namespace A225451.P1846546545258276698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225442 n)

end

end A225451.P1846546545258276698

/-! ## A225451.P15819546299738723197

`A225450(n+1)+A225441(n)-A225442(n)`
-/

namespace A225451.P15819546299738723197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225442 n)

end

end A225451.P15819546299738723197

/-! ## A225451.P179480635763928602

`A306552(n+1)+A319739(n)-A225442(n)`
-/

namespace A225451.P179480635763928602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A225442 n)

end

end A225451.P179480635763928602

/-! ## A225451.P16821558272201464113

`A306554(n+1)+A306555(n+1)-A225442(n)`
-/

namespace A225451.P16821558272201464113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225442 n)

end

end A225451.P16821558272201464113

/-!
# A225452: Digits of the 10-adic integer (1/9)^(1/7).

The programs for A225452, there is no canonical definition to state claims against.
-/

/-! ## A225452.P16611733888730343941

`A000007(n)+9-A225443(n)`
-/

namespace A225452.P16611733888730343941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A225443 n)

end

end A225452.P16611733888730343941

/-! ## A225452.P502098977719833239

`10-(A225443(n)+A057427(n))`
-/

namespace A225452.P502098977719833239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A225443 n + A057427 n)

end

end A225452.P502098977719833239

/-! ## A225452.P14504847341284110553

`a(A000038(n))-A225443(n)` with `a(0)=9`
-/

namespace A225452.P14504847341284110553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (A000038 n).toNat - A225443 n

end

end A225452.P14504847341284110553

/-! ## A225452.P16769837561382245212

`A225401(n)+A225410(n)-A225443(n)`
-/

namespace A225452.P16769837561382245212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225443 n)

end

end A225452.P16769837561382245212

/-! ## A225452.P2126143009519841318

`A225405(n)+A225408(n)-A225443(n)`
-/

namespace A225452.P2126143009519841318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225443 n)

end

end A225452.P2126143009519841318

/-! ## A225452.P4467938393607300316

`A225406(n)+A225409(n)-A225443(n)`
-/

namespace A225452.P4467938393607300316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225443 n)

end

end A225452.P4467938393607300316

/-! ## A225452.P12400540577894678339

`A225444(n)+A225447(n)-A225443(n)`
-/

namespace A225452.P12400540577894678339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225443 n)

end

end A225452.P12400540577894678339

/-! ## A225452.P6707445835164731946

`A225445(n)+A225448(n)-A225443(n)`
-/

namespace A225452.P6707445835164731946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225443 n)

end

end A225452.P6707445835164731946

/-! ## A225452.P17856394743802913134

`A225446(n)+A225449(n)-A225443(n)`
-/

namespace A225452.P17856394743802913134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225443 n)

end

end A225452.P17856394743802913134

/-! ## A225452.P17542468132711514356

`A225450(n+1)+A225441(n)-A225443(n)`
-/

namespace A225452.P17542468132711514356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225443 n)

end

end A225452.P17542468132711514356

/-! ## A225452.P4543035997635147980

`A225446(2*n)-(A225443(n)-A225449(2*n))`
-/

namespace A225452.P4543035997635147980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 (2 * n) - (A225443 n - A225449 (2 * n))

end

end A225452.P4543035997635147980

/-!
# A225453: 10-adic integer x such that x^9 = -7/9.

The programs for A225453, there is no canonical definition to state claims against.
-/

/-! ## A225453.P4600180351890550770

`A225442(n)+A225451(n)-A225462(n)`
-/

namespace A225453.P4600180351890550770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225462 n)

end

end A225453.P4600180351890550770

/-! ## A225453.P17008059677396323319

`A225443(n)+A225452(n)-A225462(n)`
-/

namespace A225453.P17008059677396323319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225462 n)

end

end A225453.P17008059677396323319

/-! ## A225453.P16584418347542367686

`A225444(n)+A225447(n)-A225462(n)`
-/

namespace A225453.P16584418347542367686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225462 n)

end

end A225453.P16584418347542367686

/-! ## A225453.P9125725910841665044

`A225445(n)+A225448(n)-A225462(n)`
-/

namespace A225453.P9125725910841665044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225462 n)

end

end A225453.P9125725910841665044

/-! ## A225453.P8218333759461183718

`A225446(n)+A225449(n)-A225462(n)`
-/

namespace A225453.P8218333759461183718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225462 n)

end

end A225453.P8218333759461183718

/-! ## A225453.P18215698220303800184

`A225454(n)+A225463(n)-A225462(n)`
-/

namespace A225453.P18215698220303800184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225454 n + (A225463 n - A225462 n)

end

end A225453.P18215698220303800184

/-! ## A225453.P17916979674110725694

`A225456(n)+A225459(n)-A225462(n)`
-/

namespace A225453.P17916979674110725694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225456 n + (A225459 n - A225462 n)

end

end A225453.P17916979674110725694

/-! ## A225453.P11018920975334831829

`A225457(n)+A225460(n)-A225462(n)`
-/

namespace A225453.P11018920975334831829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225462 n)

end

end A225453.P11018920975334831829

/-! ## A225453.P12443109336661990751

`A225455(n+1)+A225464(n)-A225462(n)`
-/

namespace A225453.P12443109336661990751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225462 n)

end

end A225453.P12443109336661990751

/-!
# A225454: 10-adic integer x such that x^9 = -1/3.

The programs for A225454, there is no canonical definition to state claims against.
-/

/-! ## A225454.P13362974430920811503

`A225442(n)+A225451(n)-A225463(n)`
-/

namespace A225454.P13362974430920811503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225463 n)

end

end A225454.P13362974430920811503

/-! ## A225454.P4612104672821698429

`A225443(n)+A225452(n)-A225463(n)`
-/

namespace A225454.P4612104672821698429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225463 n)

end

end A225454.P4612104672821698429

/-! ## A225454.P17344154689533833907

`A225444(n)+A225447(n)-A225463(n)`
-/

namespace A225454.P17344154689533833907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225463 n)

end

end A225454.P17344154689533833907

/-! ## A225454.P12837334232996367377

`A225445(n)+A225448(n)-A225463(n)`
-/

namespace A225454.P12837334232996367377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225463 n)

end

end A225454.P12837334232996367377

/-! ## A225454.P9917531859428180415

`A225446(n)+A225449(n)-A225463(n)`
-/

namespace A225454.P9917531859428180415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225463 n)

end

end A225454.P9917531859428180415

/-! ## A225454.P9477623369009187689

`A225453(n)+A225462(n)-A225463(n)`
-/

namespace A225454.P9477623369009187689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225453 n + (A225462 n - A225463 n)

end

end A225454.P9477623369009187689

/-! ## A225454.P4631601870891940474

`A225456(n)+A225459(n)-A225463(n)`
-/

namespace A225454.P4631601870891940474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225456 n + (A225459 n - A225463 n)

end

end A225454.P4631601870891940474

/-! ## A225454.P4222885986892094698

`A225457(n)+A225460(n)-A225463(n)`
-/

namespace A225454.P4222885986892094698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225463 n)

end

end A225454.P4222885986892094698

/-! ## A225454.P17606629372206298486

`A225450(n+1)+A225441(n)-A225463(n)`
-/

namespace A225454.P17606629372206298486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225463 n)

end

end A225454.P17606629372206298486

/-! ## A225454.P12467248764907831902

`A225455(n+1)+A225464(n)-A225463(n)`
-/

namespace A225454.P12467248764907831902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225463 n)

end

end A225454.P12467248764907831902

/-!
# A225455: 10-adic integer x such that x^9 == (10^n-1)/9 mod 10^n for all n.

The programs for A225455, there is no canonical definition to state claims against.
-/

/-! ## A225455.P4020435681573137443

`A000007(n)+9-A225464(n)`
-/

namespace A225455.P4020435681573137443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A225464 n)

end

end A225455.P4020435681573137443

/-! ## A225455.P6128866707690613802

`A225402(n)+A225411(n)-A225464(n)`
-/

namespace A225455.P6128866707690613802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225464 n)

end

end A225455.P6128866707690613802

/-! ## A225455.P11137301772993777358

`A029614(A025847(a(n-1)))²-A225464(n)` with `a(0)=1`
-/

namespace A225455.P11137301772993777358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029614 (A025847 (a (n - 1)).toNat).toNat ^ 2 - A225464 n

end

end A225455.P11137301772993777358

/-! ## A225455.P7629482929454729299

`A029614(A095269(a(n-1)))²-A225464(n)` with `a(0)=1`
-/

namespace A225455.P7629482929454729299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029614 (A095269 (a (n - 1)).toNat).toNat ^ 2 - A225464 n

end

end A225455.P7629482929454729299

/-!
# A225456: 10-adic integer x such that x^9 = 3.

The programs for A225456, there is no canonical definition to state claims against.
-/

/-! ## A225456.P7960421228712056471

`A225442(n)+A225451(n)-A225459(n)`
-/

namespace A225456.P7960421228712056471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225459 n)

end

end A225456.P7960421228712056471

/-! ## A225456.P13231430710214586566

`A225443(n)+A225452(n)-A225459(n)`
-/

namespace A225456.P13231430710214586566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225459 n)

end

end A225456.P13231430710214586566

/-! ## A225456.P6496744146508916978

`A225444(n)+A225447(n)-A225459(n)`
-/

namespace A225456.P6496744146508916978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225459 n)

end

end A225456.P6496744146508916978

/-! ## A225456.P6149791037026402718

`A225445(n)+A225448(n)-A225459(n)`
-/

namespace A225456.P6149791037026402718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225459 n)

end

end A225456.P6149791037026402718

/-! ## A225456.P6411110302034438409

`A225446(n)+A225449(n)-A225459(n)`
-/

namespace A225456.P6411110302034438409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225459 n)

end

end A225456.P6411110302034438409

/-! ## A225456.P11549076446469732262

`A225453(n)+A225462(n)-A225459(n)`
-/

namespace A225456.P11549076446469732262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225453 n + (A225462 n - A225459 n)

end

end A225456.P11549076446469732262

/-! ## A225456.P12090068660671134415

`A225454(n)+A225463(n)-A225459(n)`
-/

namespace A225456.P12090068660671134415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225454 n + (A225463 n - A225459 n)

end

end A225456.P12090068660671134415

/-! ## A225456.P7688184112346600712

`A225457(n)+A225460(n)-A225459(n)`
-/

namespace A225456.P7688184112346600712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225459 n)

end

end A225456.P7688184112346600712

/-! ## A225456.P6400165372325510102

`A225455(n+1)+A225464(n)-A225459(n)`
-/

namespace A225456.P6400165372325510102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225459 n)

end

end A225456.P6400165372325510102

/-!
# A225457: 10-adic integer x such that x^9 = 7.

The programs for A225457, there is no canonical definition to state claims against.
-/

/-! ## A225457.P8188833614792743261

`A000007(n)+9-A225460(n)`
-/

namespace A225457.P8188833614792743261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A225460 n)

end

end A225457.P8188833614792743261

/-! ## A225457.P5989252488768323655

`A018247(n)+A091663(n)-A225460(n)`
-/

namespace A225457.P5989252488768323655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A225460 n)

end

end A225457.P5989252488768323655

/-! ## A225457.P18181314148014290668

`A018248(n)+A091664(n)-A225460(n)`
-/

namespace A225457.P18181314148014290668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A225460 n)

end

end A225457.P18181314148014290668

/-! ## A225457.P12811196452203021508

`A063006(n)+A091661(n)-A225460(n)`
-/

namespace A225457.P12811196452203021508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A225460 n)

end

end A225457.P12811196452203021508

/-! ## A225457.P5346035378580010551

`A120817(n)+A120818(n)-A225460(n)`
-/

namespace A225457.P5346035378580010551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A225460 n)

end

end A225457.P5346035378580010551

/-! ## A225457.P12272378151597433604

`A225402(n)+A225411(n)-A225460(n)`
-/

namespace A225457.P12272378151597433604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225460 n)

end

end A225457.P12272378151597433604

/-! ## A225457.P3550612618819594521

`A225405(n)+A225408(n)-A225460(n)`
-/

namespace A225457.P3550612618819594521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225460 n)

end

end A225457.P3550612618819594521

/-! ## A225457.P13417993825437449841

`A225406(n)+A225409(n)-A225460(n)`
-/

namespace A225457.P13417993825437449841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225460 n)

end

end A225457.P13417993825437449841

/-! ## A225457.P13179138712775051311

`A290372(n)+A290375(n)-A225460(n)`
-/

namespace A225457.P13179138712775051311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A225460 n)

end

end A225457.P13179138712775051311

/-! ## A225457.P17728223265631385336

`A290373(n)+A290374(n)-A225460(n)`
-/

namespace A225457.P17728223265631385336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A225460 n)

end

end A225457.P17728223265631385336

/-! ## A225457.P2233857302569686330

`A306554(n+1)+A306555(n+1)-A225460(n)`
-/

namespace A225457.P2233857302569686330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225460 n)

end

end A225457.P2233857302569686330

/-! ## A225457.P9873850876105395891

`9-and(A198694(n), A225460(n))`
-/

namespace A225457.P9873850876105395891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.land (A198694 n) (A225460 n)

end

end A225457.P9873850876105395891

/-!
# A225458: 10-adic integer x such that x^9 = 9.

The programs for A225458, there is no canonical definition to state claims against.
-/

/-! ## A225458.P13704452357082707864

`10-(A193345(n+1)+ceil(sin(n)²))`
-/

namespace A225458.P13704452357082707864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A193345 (n + 1) + ⌈Real.sin (n : ℝ) ^ 2⌉)

end

end A225458.P13704452357082707864

/-! ## A225458.P4345642990359611186

`A000007(n)+9-A193345(n+1)`
-/

namespace A225458.P4345642990359611186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A193345 (n + 1))

end

end A225458.P4345642990359611186

/-! ## A225458.P1731889946851405126

`10-(A193345(n+1)+A057427(n))`
-/

namespace A225458.P1731889946851405126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A193345 (n + 1) + A057427 n)

end

end A225458.P1731889946851405126

/-! ## A225458.P15662899241772689410

`A057428(n)+10-A193345(n+1)`
-/

namespace A225458.P15662899241772689410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (10 - A193345 (n + 1))

end

end A225458.P15662899241772689410

/-! ## A225458.P12406505075462906133

`10-(A193345(n+1)+A178334(n))`
-/

namespace A225458.P12406505075462906133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A193345 (n + 1) + A178334 n)

end

end A225458.P12406505075462906133

/-! ## A225458.P4598295373550796659

`A178815(n+1)+7-A193345(n+1)`
-/

namespace A225458.P4598295373550796659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1) + (7 - A193345 (n + 1))

end

end A225458.P4598295373550796659

/-! ## A225458.P16767923416916081647

`A000041(C(2, n+1))+8-A193345(n+1)`
-/

namespace A225458.P16767923416916081647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) + (8 - A193345 (n + 1))

end

end A225458.P16767923416916081647

/-! ## A225458.P8503395421341874990

`A061601(A178334(n)*A193345(n+1))`
-/

namespace A225458.P8503395421341874990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A178334 n * A193345 (n + 1)).toNat

end

end A225458.P8503395421341874990

/-! ## A225458.P10017049674329622799

`A018247(n)+A091663(n)-A193345(n+1)`
-/

namespace A225458.P10017049674329622799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A193345 (n + 1))

end

end A225458.P10017049674329622799

/-!
# A225459: 10-adic integer x such that x^9 = -3.

The programs for A225459, there is no canonical definition to state claims against.
-/

/-! ## A225459.P17677561694739308215

`A225405(n)+A225408(n)-A225456(n)`
-/

namespace A225459.P17677561694739308215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225456 n)

end

end A225459.P17677561694739308215

/-! ## A225459.P1563055166178050405

`A225406(n)+A225409(n)-A225456(n)`
-/

namespace A225459.P1563055166178050405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225456 n)

end

end A225459.P1563055166178050405

/-! ## A225459.P389008774430954300

`A225442(n)+A225451(n)-A225456(n)`
-/

namespace A225459.P389008774430954300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225456 n)

end

end A225459.P389008774430954300

/-! ## A225459.P14066132887333385636

`A225443(n)+A225452(n)-A225456(n)`
-/

namespace A225459.P14066132887333385636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225456 n)

end

end A225459.P14066132887333385636

/-! ## A225459.P12253982893754445428

`A225444(n)+A225447(n)-A225456(n)`
-/

namespace A225459.P12253982893754445428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225456 n)

end

end A225459.P12253982893754445428

/-! ## A225459.P10925829566114365208

`A225445(n)+A225448(n)-A225456(n)`
-/

namespace A225459.P10925829566114365208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225456 n)

end

end A225459.P10925829566114365208

/-! ## A225459.P5764145752229452100

`A225446(n)+A225449(n)-A225456(n)`
-/

namespace A225459.P5764145752229452100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225456 n)

end

end A225459.P5764145752229452100

/-! ## A225459.P11283365337227283466

`A225453(n)+A225462(n)-A225456(n)`
-/

namespace A225459.P11283365337227283466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225453 n + (A225462 n - A225456 n)

end

end A225459.P11283365337227283466

/-! ## A225459.P10698640967006893164

`A225454(n)+A225463(n)-A225456(n)`
-/

namespace A225459.P10698640967006893164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225454 n + (A225463 n - A225456 n)

end

end A225459.P10698640967006893164

/-! ## A225459.P8961945103623045499

`A225457(n)+A225460(n)-A225456(n)`
-/

namespace A225459.P8961945103623045499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225456 n)

end

end A225459.P8961945103623045499

/-! ## A225459.P16596558583542790267

`A225450(n+1)+A225441(n)-A225456(n)`
-/

namespace A225459.P16596558583542790267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225456 n)

end

end A225459.P16596558583542790267

/-! ## A225459.P17481474985588378132

`A225455(n+1)+A225464(n)-A225456(n)`
-/

namespace A225459.P17481474985588378132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225456 n)

end

end A225459.P17481474985588378132

/-!
# A225460: 10-adic integer x such that x^9 = -7.

The programs for A225460, there is no canonical definition to state claims against.
-/

/-! ## A225460.P16502346065631737217

`A000007(n)+9-A225457(n)`
-/

namespace A225460.P16502346065631737217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A225457 n)

end

end A225460.P16502346065631737217

/-! ## A225460.P32956860603629155

`10-(A225457(n)+A057427(n))`
-/

namespace A225460.P32956860603629155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A225457 n + A057427 n)

end

end A225460.P32956860603629155

/-! ## A225460.P3790286684312934101

`A018247(n)+A091663(n)-A225457(n)`
-/

namespace A225460.P3790286684312934101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A225457 n)

end

end A225460.P3790286684312934101

/-! ## A225460.P4756497640243174895

`A018248(n)+A091664(n)-A225457(n)`
-/

namespace A225460.P4756497640243174895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A225457 n)

end

end A225460.P4756497640243174895

/-! ## A225460.P2673581193139279980

`A063006(n)+A091661(n)-A225457(n)`
-/

namespace A225460.P2673581193139279980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A225457 n)

end

end A225460.P2673581193139279980

/-! ## A225460.P16579213405326316796

`A120817(n)+A120818(n)-A225457(n)`
-/

namespace A225460.P16579213405326316796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A225457 n)

end

end A225460.P16579213405326316796

/-! ## A225460.P4670132657642589936

`A225402(n)+A225411(n)-A225457(n)`
-/

namespace A225460.P4670132657642589936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225457 n)

end

end A225460.P4670132657642589936

/-! ## A225460.P12263950875359937346

`A225405(n)+A225408(n)-A225457(n)`
-/

namespace A225460.P12263950875359937346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225457 n)

end

end A225460.P12263950875359937346

/-! ## A225460.P13186929793554083519

`A225406(n)+A225409(n)-A225457(n)`
-/

namespace A225460.P13186929793554083519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225457 n)

end

end A225460.P13186929793554083519

/-! ## A225460.P11850392254004977336

`A290372(n)+A290375(n)-A225457(n)`
-/

namespace A225460.P11850392254004977336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A225457 n)

end

end A225460.P11850392254004977336

/-! ## A225460.P14457029565998193599

`A290373(n)+A290374(n)-A225457(n)`
-/

namespace A225460.P14457029565998193599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A225457 n)

end

end A225460.P14457029565998193599

/-!
# A225461: a(n) = (prime(k) + prime(k+1))/2 where k = A098015(n).

The programs for A225461, the canonical program `A225461.P17354319866027206044` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225461 has offset 1).

The definition of A225461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225461.P2419568448140860416

`A162735(A098015(n+1))`
-/

namespace A225461.P2419568448140860416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (A098015 (n + 1)).toNat

end

end A225461.P2419568448140860416

namespace A225461

/-- `A162735(A098015(n+1))` -/
def P2419568448140860416.Spec : Prop :=
  ∀ n, P2419568448140860416.a n = A225461 (n + 1)

end A225461

/-! ## A225461.P1542471197132957619

`A024675(A098015(n+1)-1)`
-/

namespace A225461.P1542471197132957619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (A098015 (n + 1) - 1).toNat

end

end A225461.P1542471197132957619

namespace A225461

/-- `A024675(A098015(n+1)-1)` -/
def P1542471197132957619.Spec : Prop :=
  ∀ n, P1542471197132957619.a n = A225461 (n + 1)

end A225461

/-! ## A225461.P17213834979273863088

`∩[A350460(n+1), A162800(n)]`
-/

namespace A225461.P17213834979273863088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225461.P17213834979273863088

namespace A225461

/-- `∩[A350460(n+1), A162800(n)]` -/
def P17213834979273863088.Spec : Prop :=
  ∀ n, (P17213834979273863088.a n : ℤ) = A225461 (n + 1)

end A225461

/-! ## A225461.P17354319866027206044

`∩[A024675(n+1), A160666(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A225461

/-- `∩[A024675(n+1), A160666(n+1)]` -/
def P17354319866027206044.Spec : Prop :=
  ∀ n, (P17354319866027206044.a n : ℤ) = A225461 (n + 1)

theorem P17354319866027206044.correct : P17354319866027206044.Spec := by
  intro n
  simp only [A225461, Nat.add_sub_cancel]

end A225461

/-! ## A225461.P12451683009627899789

`∩[A063934(n+1), A160666(n+1)]`
-/

namespace A225461.P12451683009627899789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225461.P12451683009627899789

namespace A225461

/-- `∩[A063934(n+1), A160666(n+1)]` -/
def P12451683009627899789.Spec : Prop :=
  ∀ n, (P12451683009627899789.a n : ℤ) = A225461 (n + 1)

end A225461

/-! ## A225461.P12426758143230468069

`∩[A145025(n+1), A160666(n+1)]`
-/

namespace A225461.P12426758143230468069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225461.P12426758143230468069

namespace A225461

/-- `∩[A145025(n+1), A160666(n+1)]` -/
def P12426758143230468069.Spec : Prop :=
  ∀ n, (P12426758143230468069.a n : ℤ) = A225461 (n + 1)

end A225461

/-! ## A225461.P7516274311132668321

`∩[A160666(n+1), A162735(n+1)]`
-/

namespace A225461.P7516274311132668321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225461.P7516274311132668321

namespace A225461

/-- `∩[A160666(n+1), A162735(n+1)]` -/
def P7516274311132668321.Spec : Prop :=
  ∀ n, (P7516274311132668321.a n : ℤ) = A225461 (n + 1)

end A225461

/-! ## A225461.P3187121660498739631

`∩[A024675(n+1), A350460(n+1)]`
-/

namespace A225461.P3187121660498739631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225461.P3187121660498739631

namespace A225461

/-- `∩[A024675(n+1), A350460(n+1)]` -/
def P3187121660498739631.Spec : Prop :=
  ∀ n, (P3187121660498739631.a n : ℤ) = A225461 (n + 1)

end A225461

/-! ## A225461.P11621882031408204938

`∩[A162735(n+1), A350460(n+1)]`
-/

namespace A225461.P11621882031408204938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225461.P11621882031408204938

namespace A225461

/-- `∩[A162735(n+1), A350460(n+1)]` -/
def P11621882031408204938.Spec : Prop :=
  ∀ n, (P11621882031408204938.a n : ℤ) = A225461 (n + 1)

end A225461

/-! ## A225461.P3459663433133501222

`A243153(n+1)-p?[A028334(n+2)]`
-/

namespace A225461.P3459663433133501222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243153 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225461.P3459663433133501222

namespace A225461

/-- `A243153(n+1)-p?[A028334(n+2)]` -/
def P3459663433133501222.Spec : Prop :=
  ∀ n, P3459663433133501222.a n = A225461 (n + 1)

end A225461

/-! ## A225461.P2117081944531767770

`A058620(n+1)+A098013(n+1)/2`
-/

namespace A225461.P2117081944531767770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058620 (n + 1) : ℚ) + (A098013 (n + 1) : ℚ) / 2

end

end A225461.P2117081944531767770

namespace A225461

/-- `A058620(n+1)+A098013(n+1)/2` -/
def P2117081944531767770.Spec : Prop :=
  ∀ n, P2117081944531767770.a n = (A225461 (n + 1) : ℚ)

end A225461

/-! ## A225461.P9477715115235713038

`(A243153(n+1)+A058620(n+1))/2`
-/

namespace A225461.P9477715115235713038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243153 (n + 1) + A058620 (n + 1) : ℚ) / 2

end

end A225461.P9477715115235713038

namespace A225461

/-- `(A243153(n+1)+A058620(n+1))/2` -/
def P9477715115235713038.Spec : Prop :=
  ∀ n, P9477715115235713038.a n = (A225461 (n + 1) : ℚ)

end A225461

/-! ## A225461.P9090829086591652073

`A243153(n+1)-A098013(n+1)/2`
-/

namespace A225461.P9090829086591652073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243153 (n + 1) : ℚ) - (A098013 (n + 1) : ℚ) / 2

end

end A225461.P9090829086591652073

namespace A225461

/-- `A243153(n+1)-A098013(n+1)/2` -/
def P9090829086591652073.Spec : Prop :=
  ∀ n, P9090829086591652073.a n = (A225461 (n + 1) : ℚ)

end A225461

/-! ## A225461.P14629507454387381846

`A024675(eq[2, A001222(A001223(n+1))])`
-/

namespace A225461.P14629507454387381846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225461.P14629507454387381846

namespace A225461

/-- `A024675(eq[2, A001222(A001223(n+1))])` -/
def P14629507454387381846.Spec : Prop :=
  ∀ n, P14629507454387381846.a n = A225461 (n + 1)

end A225461

/-! ## A225461.P17721856804550043875

`A063932(A058620(n+1)+1)`
-/

namespace A225461.P17721856804550043875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (A058620 (n + 1) + 1).toNat

end

end A225461.P17721856804550043875

namespace A225461

/-- `A063932(A058620(n+1)+1)` -/
def P17721856804550043875.Spec : Prop :=
  ∀ n, P17721856804550043875.a n = A225461 (n + 1)

end A225461

/-! ## A225461.P1143714363003032606

`A063932(A243153(n+1)-1)`
-/

namespace A225461.P1143714363003032606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (A243153 (n + 1) - 1).toNat

end

end A225461.P1143714363003032606

namespace A225461

/-- `A063932(A243153(n+1)-1)` -/
def P1143714363003032606.Spec : Prop :=
  ∀ n, P1143714363003032606.a n = A225461 (n + 1)

end A225461

/-! ## A225461.P13774814767977841989

`A063932(xor(1, A243153(n+1)))`
-/

namespace A225461.P13774814767977841989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (Int.xor 1 (A243153 (n + 1))).toNat

end

end A225461.P13774814767977841989

namespace A225461

/-- `A063932(xor(1, A243153(n+1)))` -/
def P13774814767977841989.Spec : Prop :=
  ∀ n, P13774814767977841989.a n = A225461 (n + 1)

end A225461

/-! ## A225461.P15980711444509542851

`A004526(A243153(n+1)+A058620(n+1))`
-/

namespace A225461.P15980711444509542851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A243153 (n + 1) + A058620 (n + 1)).toNat

end

end A225461.P15980711444509542851

namespace A225461

/-- `A004526(A243153(n+1)+A058620(n+1))` -/
def P15980711444509542851.Spec : Prop :=
  ∀ n, P15980711444509542851.a n = A225461 (n + 1)

end A225461

/-! ## A225461.P6841486481720604234

`A098014(n+1)+A058620(n+1)`
-/

namespace A225461.P6841486481720604234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098014 (n + 1) + A058620 (n + 1)

end

end A225461.P6841486481720604234

namespace A225461

/-- `A098014(n+1)+A058620(n+1)` -/
def P6841486481720604234.Spec : Prop :=
  ∀ n, P6841486481720604234.a n = A225461 (n + 1)

end A225461

/-! ## A225461.P12073868584243965521

`A243153(n+1)-A098014(n+1)`
-/

namespace A225461.P12073868584243965521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243153 (n + 1) - A098014 (n + 1)

end

end A225461.P12073868584243965521

namespace A225461

/-- `A243153(n+1)-A098014(n+1)` -/
def P12073868584243965521.Spec : Prop :=
  ∀ n, P12073868584243965521.a n = A225461 (n + 1)

end A225461

/-!
# A225462: 10-adic integer x such that x^9 = 7/9.

The programs for A225462, there is no canonical definition to state claims against.
-/

/-! ## A225462.P12643651850664841904

`A225405(n)+A225408(n)-A225453(n)`
-/

namespace A225462.P12643651850664841904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225453 n)

end

end A225462.P12643651850664841904

/-! ## A225462.P8892210705809073909

`A225442(n)+A225451(n)-A225453(n)`
-/

namespace A225462.P8892210705809073909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225453 n)

end

end A225462.P8892210705809073909

/-! ## A225462.P2877423792697460932

`A225443(n)+A225452(n)-A225453(n)`
-/

namespace A225462.P2877423792697460932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225453 n)

end

end A225462.P2877423792697460932

/-! ## A225462.P4324748872421990293

`A225444(n)+A225447(n)-A225453(n)`
-/

namespace A225462.P4324748872421990293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225453 n)

end

end A225462.P4324748872421990293

/-! ## A225462.P12808371467269709656

`A225445(n)+A225448(n)-A225453(n)`
-/

namespace A225462.P12808371467269709656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225453 n)

end

end A225462.P12808371467269709656

/-! ## A225462.P9482743489724092190

`A225446(n)+A225449(n)-A225453(n)`
-/

namespace A225462.P9482743489724092190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225453 n)

end

end A225462.P9482743489724092190

/-! ## A225462.P12714290532428394558

`A225454(n)+A225463(n)-A225453(n)`
-/

namespace A225462.P12714290532428394558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225454 n + (A225463 n - A225453 n)

end

end A225462.P12714290532428394558

/-! ## A225462.P5599736567296264964

`A225456(n)+A225459(n)-A225453(n)`
-/

namespace A225462.P5599736567296264964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225456 n + (A225459 n - A225453 n)

end

end A225462.P5599736567296264964

/-! ## A225462.P14802425912065387105

`A225457(n)+A225460(n)-A225453(n)`
-/

namespace A225462.P14802425912065387105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225453 n)

end

end A225462.P14802425912065387105

/-! ## A225462.P14987518764973691225

`A225450(n+1)+A225441(n)-A225453(n)`
-/

namespace A225462.P14987518764973691225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225453 n)

end

end A225462.P14987518764973691225

/-! ## A225462.P3956570146295043796

`A225455(n+1)+A225464(n)-A225453(n)`
-/

namespace A225462.P3956570146295043796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225453 n)

end

end A225462.P3956570146295043796

/-!
# A225463: 10-adic integer x such that x^9 = 1/3.

The programs for A225463, there is no canonical definition to state claims against.
-/

/-! ## A225463.P13572875348716852221

`A225401(n)+A225410(n)-A225454(n)`
-/

namespace A225463.P13572875348716852221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225454 n)

end

end A225463.P13572875348716852221

/-! ## A225463.P14291071109488246461

`A225405(n)+A225408(n)-A225454(n)`
-/

namespace A225463.P14291071109488246461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225454 n)

end

end A225463.P14291071109488246461

/-! ## A225463.P1290137463230444003

`A225406(n)+A225409(n)-A225454(n)`
-/

namespace A225463.P1290137463230444003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225454 n)

end

end A225463.P1290137463230444003

/-! ## A225463.P9256972886491958484

`A225442(n)+A225451(n)-A225454(n)`
-/

namespace A225463.P9256972886491958484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225454 n)

end

end A225463.P9256972886491958484

/-! ## A225463.P13224583182975235842

`A225443(n)+A225452(n)-A225454(n)`
-/

namespace A225463.P13224583182975235842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225443 n + (A225452 n - A225454 n)

end

end A225463.P13224583182975235842

/-! ## A225463.P13968879903635764632

`A225444(n)+A225447(n)-A225454(n)`
-/

namespace A225463.P13968879903635764632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225444 n + (A225447 n - A225454 n)

end

end A225463.P13968879903635764632

/-! ## A225463.P6507315273301191681

`A225445(n)+A225448(n)-A225454(n)`
-/

namespace A225463.P6507315273301191681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 n + (A225448 n - A225454 n)

end

end A225463.P6507315273301191681

/-! ## A225463.P6380997050789951949

`A225446(n)+A225449(n)-A225454(n)`
-/

namespace A225463.P6380997050789951949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225446 n + (A225449 n - A225454 n)

end

end A225463.P6380997050789951949

/-! ## A225463.P1898808714152861712

`A225453(n)+A225462(n)-A225454(n)`
-/

namespace A225463.P1898808714152861712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225453 n + (A225462 n - A225454 n)

end

end A225463.P1898808714152861712

/-! ## A225463.P17533908971425044851

`A225456(n)+A225459(n)-A225454(n)`
-/

namespace A225463.P17533908971425044851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225456 n + (A225459 n - A225454 n)

end

end A225463.P17533908971425044851

/-! ## A225463.P171976827954920390

`A225457(n)+A225460(n)-A225454(n)`
-/

namespace A225463.P171976827954920390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A225454 n)

end

end A225463.P171976827954920390

/-! ## A225463.P17354579454662156212

`A225450(n+1)+A225441(n)-A225454(n)`
-/

namespace A225463.P17354579454662156212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225450 (n + 1) + (A225441 n - A225454 n)

end

end A225463.P17354579454662156212

/-! ## A225463.P9711781280516217043

`A225455(n+1)+A225464(n)-A225454(n)`
-/

namespace A225463.P9711781280516217043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225455 (n + 1) + (A225464 n - A225454 n)

end

end A225463.P9711781280516217043

/-!
# A225464: 10-adic integer x such that x^9 = 1/9.

The programs for A225464, there is no canonical definition to state claims against.
-/

/-! ## A225464.P14655659354072633769

`A000007(n)+9-A225455(n+1)`
-/

namespace A225464.P14655659354072633769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A225455 (n + 1))

end

end A225464.P14655659354072633769

/-! ## A225464.P14114628928027036798

`A225401(n)+A225410(n)-A225455(n+1)`
-/

namespace A225464.P14114628928027036798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225455 (n + 1))

end

end A225464.P14114628928027036798

/-! ## A225464.P13355134301652872014

`A225402(n)+A225411(n)-A225455(n+1)`
-/

namespace A225464.P13355134301652872014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225455 (n + 1))

end

end A225464.P13355134301652872014

/-! ## A225464.P10652302696411652915

`A225405(n)+A225408(n)-A225455(n+1)`
-/

namespace A225464.P10652302696411652915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225455 (n + 1))

end

end A225464.P10652302696411652915

/-! ## A225464.P10510074241289993717

`A225406(n)+A225409(n)-A225455(n+1)`
-/

namespace A225464.P10510074241289993717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225455 (n + 1))

end

end A225464.P10510074241289993717

/-! ## A225464.P18198716996317374062

`A309570(n)+A309640(n)-A225455(n+1)`
-/

namespace A225464.P18198716996317374062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A225455 (n + 1))

end

end A225464.P18198716996317374062

/-! ## A225464.P15649664087981033497

`A309595(n)+A309614(n)-A225455(n+1)`
-/

namespace A225464.P15649664087981033497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A225455 (n + 1))

end

end A225464.P15649664087981033497

/-! ## A225464.P10521533242236441708

`A309608(n)+A309613(n)-A225455(n+1)`
-/

namespace A225464.P10521533242236441708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309608 n + (A309613 n - A225455 (n + 1))

end

end A225464.P10521533242236441708

/-! ## A225464.P251611100744448036

`A309604(n)+A309644(n)-A225455(n+1)`
-/

namespace A225464.P251611100744448036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A225455 (n + 1))

end

end A225464.P251611100744448036

/-!
# A225465: Triangular array read by rows: T(n, k) is the number of rooted forests on {1, 2, ..., n} in which one tree has been specially designated that contain exactly k trees; n >= 1, 1 <= k <= n.

The programs for A225465, there is no canonical definition to state claims against.
-/

/-! ## A225465.P10093037465962077933

`(1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n+1]]]!/(C(comp[∑[n]]-n, 2)-(n+1))!*∑[char[∑[n]]]^(C(comp[∑[n]]-n, 2)-(n+1))/(n-C(∑[char[∑[n]]], 2))!`
-/

namespace A225465.P10093037465962077933
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

open Classical in
def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f15 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (Nat.factorial (∑ j ∈ Finset.range (n + 1), f4 j) : ℤ) : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ) * ((∑ j ∈ Finset.range (n + 1), f9 j : ℕ) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f12 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f14 j) 2 : ℤ)).toNat : ℚ)

end

end A225465.P10093037465962077933

/-! ## A225465.P16037137453084927248

`(1-C(∑[char[∑[n]]], 2)+n)*A061356(n+2)`
-/

namespace A225465.P16037137453084927248
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A061356 (n + 2)

end

end A225465.P16037137453084927248

/-! ## A225465.P12774940040852452869

`A033842(n)*A368310(n)`
-/

namespace A225465.P12774940040852452869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033842 n * A368310 n

end

end A225465.P12774940040852452869

/-! ## A225465.P9312753141614609276

`A003991(n+1)*A033842(n)`
-/

namespace A225465.P9312753141614609276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A033842 n

end

end A225465.P9312753141614609276

/-! ## A225465.P5810048042287534710

`A095888(n+1)*A103406(n)`
-/

namespace A225465.P5810048042287534710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) * A103406 n

end

end A225465.P5810048042287534710

/-!
# A225466: Triangle read by rows, 3^k*S_3(n, k) where S_m(n, k) are the Stirling-Frobenius subset numbers of order m; n >= 0, k >= 0.

The programs for A225466, the canonical program `A225466.P13185322976981182542` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225466 has offset 0).

The definition of A225466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225466.P2432027444003147367

`A000244(A002262(n))*A225468(n)`
-/

namespace A225466.P2432027444003147367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A225468 n

end

end A225466.P2432027444003147367

namespace A225466

/-- `A000244(A002262(n))*A225468(n)` -/
def P2432027444003147367.Spec : Prop :=
  ∀ n, P2432027444003147367.a n = A225466 n

end A225466

/-! ## A225466.P6175794831082827015

`A140303(A061579(n))*A225468(n)`
-/

namespace A225466.P6175794831082827015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 (A061579 n).toNat * A225468 n

end

end A225466.P6175794831082827015

namespace A225466

/-- `A140303(A061579(n))*A225468(n)` -/
def P6175794831082827015.Spec : Prop :=
  ∀ n, P6175794831082827015.a n = A225466 n

end A225466

/-! ## A225466.P13185322976981182542

`A225472(n)/A233543(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225466

/-- `A225472(n)/A233543(n)` -/
def P13185322976981182542.Spec : Prop :=
  ∀ n, P13185322976981182542.a n = (A225466 n : ℚ)

end A225466

/-! ## A225466.P8357611710404820571

`A225472(n)/A002262(n)!`
-/

namespace A225466.P8357611710404820571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225472 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A225466.P8357611710404820571

namespace A225466

/-- `A225472(n)/A002262(n)!` -/
def P8357611710404820571.Spec : Prop :=
  ∀ n, P8357611710404820571.a n = (A225466 n : ℚ)

end A225466

/-! ## A225466.P5429601332278329176

`A225472(n)/A285066(n)*A285061(n)`
-/

namespace A225466.P5429601332278329176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225472 n : ℚ) / (A285066 n : ℚ) * (A285061 n : ℚ)

end

end A225466.P5429601332278329176

namespace A225466

/-- `A225472(n)/A285066(n)*A285061(n)` -/
def P5429601332278329176.Spec : Prop :=
  ∀ n, P5429601332278329176.a n = (A225466 n : ℚ)

end A225466

/-! ## A225466.P8037264058463322909

`A225467(n)/A225473(n)*A225472(n)`
-/

namespace A225466.P8037264058463322909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225467 n : ℚ) / (A225473 n : ℚ) * (A225472 n : ℚ)

end

end A225466.P8037264058463322909

namespace A225466

/-- `A225467(n)/A225473(n)*A225472(n)` -/
def P8037264058463322909.Spec : Prop :=
  ∀ n, P8037264058463322909.a n = (A225466 n : ℚ)

end A225466

/-! ## A225466.P11379828594258640071

`A003959(A059268(n))*A225468(n)`
-/

namespace A225466.P11379828594258640071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A059268 n).toNat * A225468 n

end

end A225466.P11379828594258640071

namespace A225466

/-- `A003959(A059268(n))*A225468(n)` -/
def P11379828594258640071.Spec : Prop :=
  ∀ n, P11379828594258640071.a n = A225466 n

end A225466

/-! ## A225466.P12686354573758922814

`A225472(n)/A112624(A059268(n))`
-/

namespace A225466.P12686354573758922814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225472 n : ℚ) / (A112624 (A059268 n).toNat : ℚ)

end

end A225466.P12686354573758922814

namespace A225466

/-- `A225472(n)/A112624(A059268(n))` -/
def P12686354573758922814.Spec : Prop :=
  ∀ n, P12686354573758922814.a n = (A225466 n : ℚ)

end A225466

/-! ## A225466.P4741642826574090638

`A000265(A036561(n))*A225468(n)`
-/

namespace A225466.P4741642826574090638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036561 n).toNat * A225468 n

end

end A225466.P4741642826574090638

namespace A225466

/-- `A000265(A036561(n))*A225468(n)` -/
def P4741642826574090638.Spec : Prop :=
  ∀ n, P4741642826574090638.a n = A225466 n

end A225466

/-!
# A225467: Triangle read by rows, T(n, k) = 4^k*S_4(n, k) where S_m(n, k) are the Stirling-Frobenius subset numbers of order m; n >= 0, k >= 0.

The programs for A225467, there is no canonical definition to state claims against.
-/

/-! ## A225467.P4528055149051954675

`A059268(n)²*A225469(n)`
-/

namespace A225467.P4528055149051954675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A225469 n

end

end A225467.P4528055149051954675

/-! ## A225467.P13162516254131854152

`A000302(A002262(n))*A225469(n)`
-/

namespace A225467.P13162516254131854152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A002262 n).toNat * A225469 n

end

end A225467.P13162516254131854152

/-! ## A225467.P17460178350574158736

`A225473(n)/A233543(n)`
-/

namespace A225467.P17460178350574158736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225473 n : ℚ) / (A233543 n : ℚ)

end

end A225467.P17460178350574158736

/-! ## A225467.P18311906174611538746

`A225473(n)/A002262(n)!`
-/

namespace A225467.P18311906174611538746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225473 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A225467.P18311906174611538746

/-! ## A225467.P371395194336060070

`A225473(n)/A119502(A061579(n))`
-/

namespace A225467.P371395194336060070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225473 n : ℚ) / (A119502 (A061579 n).toNat : ℚ)

end

end A225467.P371395194336060070

/-! ## A225467.P15922517685308715252

`A225466(n)/A225472(n)*A225473(n)`
-/

namespace A225467.P15922517685308715252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225466 n : ℚ) / (A225472 n : ℚ) * (A225473 n : ℚ)

end

end A225467.P15922517685308715252

/-! ## A225467.P11463012108814936320

`A225473(n)/A285066(n)*A285061(n)`
-/

namespace A225467.P11463012108814936320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225473 n : ℚ) / (A285066 n : ℚ) * (A285061 n : ℚ)

end

end A225467.P11463012108814936320

/-! ## A225467.P6742111000788005439

`A225473(n)/A112624(A059268(n))`
-/

namespace A225467.P6742111000788005439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225473 n : ℚ) / (A112624 (A059268 n).toNat : ℚ)

end

end A225467.P6742111000788005439

/-!
# A225468: Triangle read by rows, S_3(n, k) where S_m(n, k) are the Stirling-Frobenius subset numbers of order m; n >= 0, k >= 0.

The programs for A225468, the canonical program `A225468.P16349640510992352417` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225468 has offset 0).

The definition of A225468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225468.P16349640510992352417

`A225466(n)/A000244(A002262(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A225468

/-- `A225466(n)/A000244(A002262(n))` -/
def P16349640510992352417.Spec : Prop :=
  ∀ n, P16349640510992352417.a n = (A225468 n : ℚ)

end A225468

/-! ## A225468.P278685857820826587

`A225466(n)/A013622(A112367(n))`
-/

namespace A225468.P278685857820826587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225466 n : ℚ) / (A013622 (A112367 n).toNat : ℚ)

end

end A225468.P278685857820826587

namespace A225468

/-- `A225466(n)/A013622(A112367(n))` -/
def P278685857820826587.Spec : Prop :=
  ∀ n, P278685857820826587.a n = (A225468 n : ℚ)

end A225468

/-! ## A225468.P17691850106677834834

`A225466(n)/A140303(A061579(n))`
-/

namespace A225468.P17691850106677834834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225466 n : ℚ) / (A140303 (A061579 n).toNat : ℚ)

end

end A225468.P17691850106677834834

namespace A225468

/-- `A225466(n)/A140303(A061579(n))` -/
def P17691850106677834834.Spec : Prop :=
  ∀ n, P17691850106677834834.a n = (A225468 n : ℚ)

end A225468

/-! ## A225468.P17893925016208954846

`A130321(n)/A036561(n)*A225466(n)`
-/

namespace A225468.P17893925016208954846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130321 n : ℚ) / (A036561 n : ℚ) * (A225466 n : ℚ)

end

end A225468.P17893925016208954846

namespace A225468

/-- `A130321(n)/A036561(n)*A225466(n)` -/
def P17893925016208954846.Spec : Prop :=
  ∀ n, P17893925016208954846.a n = (A225468 n : ℚ)

end A225468

/-! ## A225468.P7846548550513613434

`A111577(n+1)/A282629(n)*A225466(n)`
-/

namespace A225468.P7846548550513613434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111577 (n + 1) : ℚ) / (A282629 n : ℚ) * (A225466 n : ℚ)

end

end A225468.P7846548550513613434

namespace A225468

/-- `A111577(n+1)/A282629(n)*A225466(n)` -/
def P7846548550513613434.Spec : Prop :=
  ∀ n, P7846548550513613434.a n = (A225468 n : ℚ)

end A225468

/-! ## A225468.P11257068944245355284

`A225472(n)/A032031(A002262(n))`
-/

namespace A225468.P11257068944245355284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225472 n : ℚ) / (A032031 (A002262 n).toNat : ℚ)

end

end A225468.P11257068944245355284

namespace A225468

/-- `A225472(n)/A032031(A002262(n))` -/
def P11257068944245355284.Spec : Prop :=
  ∀ n, P11257068944245355284.a n = (A225468 n : ℚ)

end A225468

/-! ## A225468.P10831615760643737246

`A225466(n)/A003959(A059268(n))`
-/

namespace A225468.P10831615760643737246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225466 n : ℚ) / (A003959 (A059268 n).toNat : ℚ)

end

end A225468.P10831615760643737246

namespace A225468

/-- `A225466(n)/A003959(A059268(n))` -/
def P10831615760643737246.Spec : Prop :=
  ∀ n, P10831615760643737246.a n = (A225468 n : ℚ)

end A225468

/-! ## A225468.P5875265846645584963

`A225466(n)/A000265(A036561(n))`
-/

namespace A225468.P5875265846645584963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225466 n : ℚ) / (A000265 (A036561 n).toNat : ℚ)

end

end A225468.P5875265846645584963

namespace A225468

/-- `A225466(n)/A000265(A036561(n))` -/
def P5875265846645584963.Spec : Prop :=
  ∀ n, P5875265846645584963.a n = (A225468 n : ℚ)

end A225468

/-!
# A225469: Triangle read by rows, S_4(n, k) where S_m(n, k) are the Stirling-Frobenius subset numbers of order m; n >= 0, k >= 0.

The programs for A225469, there is no canonical definition to state claims against.
-/

/-! ## A225469.P5004143792089196867

`A225467(n)/A059268(n)²`
-/

namespace A225469.P5004143792089196867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225467 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A225469.P5004143792089196867

/-! ## A225469.P7247365885529010459

`A225467(n)/A000302(A002262(n))`
-/

namespace A225469.P7247365885529010459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225467 n : ℚ) / (A000302 (A002262 n).toNat : ℚ)

end

end A225469.P7247365885529010459

/-! ## A225469.P8715664343576902965

`A225467(n)/A262616(A061579(n))`
-/

namespace A225469.P8715664343576902965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225467 n : ℚ) / (A262616 (A061579 n).toNat : ℚ)

end

end A225469.P8715664343576902965

/-! ## A225469.P5470647876949186482

`A225467(n)/A262616(A112367(n))`
-/

namespace A225469.P5470647876949186482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225467 n : ℚ) / (A262616 (A112367 n).toNat : ℚ)

end

end A225469.P5470647876949186482

/-! ## A225469.P5239364240701829209

`A225467(n)/A262616(A286147(n))`
-/

namespace A225469.P5239364240701829209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225467 n : ℚ) / (A262616 (A286147 n).toNat : ℚ)

end

end A225469.P5239364240701829209

/-! ## A225469.P17540105333820498675

`A225467(n)/A007179(A158405(n+1))`
-/

namespace A225469.P17540105333820498675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225467 n : ℚ) / (A007179 (A158405 (n + 1)).toNat : ℚ)

end

end A225469.P17540105333820498675

/-! ## A225469.P3692564994211751943

`A111578(n+1)/A285066(n)*A225473(n)`
-/

namespace A225469.P3692564994211751943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111578 (n + 1) : ℚ) / (A285066 n : ℚ) * (A225473 n : ℚ)

end

end A225469.P3692564994211751943

/-!
# A225470: Triangle read by rows, s_3(n, k) where s_m(n, k) are the Stirling-Frobenius cycle numbers of order m; n >= 0, k >= 0.

The programs for A225470, there is no canonical definition to state claims against.
-/

/-! ## A225470.P3532999062278147761

`A225477(n)/A000244(A002262(n))`
-/

namespace A225470.P3532999062278147761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225477 n : ℚ) / (A000244 (A002262 n).toNat : ℚ)

end

end A225470.P3532999062278147761

/-! ## A225470.P17149907374850262798

`A225477(n)/A013622(A112367(n))`
-/

namespace A225470.P17149907374850262798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225477 n : ℚ) / (A013622 (A112367 n).toNat : ℚ)

end

end A225470.P17149907374850262798

/-! ## A225470.P13998920096131037811

`A225477(n)/A140303(A061579(n))`
-/

namespace A225470.P13998920096131037811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225477 n : ℚ) / (A140303 (A061579 n).toNat : ℚ)

end

end A225470.P13998920096131037811

/-! ## A225470.P129113015007555724

`A225477(n)/A133494(A002260(n+1))`
-/

namespace A225470.P129113015007555724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225477 n : ℚ) / (A133494 (A002260 (n + 1)).toNat : ℚ)

end

end A225470.P129113015007555724

/-! ## A225470.P11429063963727243091

`A225468(n)/A225466(n)*A225477(n)`
-/

namespace A225470.P11429063963727243091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225468 n : ℚ) / (A225466 n : ℚ) * (A225477 n : ℚ)

end

end A225470.P11429063963727243091

/-! ## A225470.P9147068337945223103

`A225477(n)/A003959(A059268(n))`
-/

namespace A225470.P9147068337945223103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225477 n : ℚ) / (A003959 (A059268 n).toNat : ℚ)

end

end A225470.P9147068337945223103

/-! ## A225470.P2657256416798070439

`A225477(n)/A000265(A036561(n))`
-/

namespace A225470.P2657256416798070439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225477 n : ℚ) / (A000265 (A036561 n).toNat : ℚ)

end

end A225470.P2657256416798070439

/-!
# A225471: Triangle read by rows, s_4(n, k) where s_m(n, k) are the Stirling-Frobenius cycle numbers of order m; n >= 0, k >= 0.

The programs for A225471, there is no canonical definition to state claims against.
-/

/-! ## A225471.P14795572595163650489

`A225478(n)/A059268(n)²`
-/

namespace A225471.P14795572595163650489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225478 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A225471.P14795572595163650489

/-! ## A225471.P4128507238042918872

`A225478(n)/A000302(A002262(n))`
-/

namespace A225471.P4128507238042918872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225478 n : ℚ) / (A000302 (A002262 n).toNat : ℚ)

end

end A225471.P4128507238042918872

/-! ## A225471.P15580232042520093358

`A225478(n)/A053125(A112367(n))`
-/

namespace A225471.P15580232042520093358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225478 n : ℚ) / (A053125 (A112367 n).toNat : ℚ)

end

end A225471.P15580232042520093358

/-! ## A225471.P10645121003886134895

`A225478(n)/A262616(A061579(n))`
-/

namespace A225471.P10645121003886134895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225478 n : ℚ) / (A262616 (A061579 n).toNat : ℚ)

end

end A225471.P10645121003886134895

/-! ## A225471.P8821597396894702582

`A225478(n)/A011782(A158405(n+1))`
-/

namespace A225471.P8821597396894702582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225478 n : ℚ) / (A011782 (A158405 (n + 1)).toNat : ℚ)

end

end A225471.P8821597396894702582

/-! ## A225471.P7809492751820863893

`A225469(n)/A225467(n)*A225478(n)`
-/

namespace A225471.P7809492751820863893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225469 n : ℚ) / (A225467 n : ℚ) * (A225478 n : ℚ)

end

end A225471.P7809492751820863893

/-! ## A225471.P1619617638492725569

`A225478(n)/A011782(A002260(n+1))²`
-/

namespace A225471.P1619617638492725569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225478 n : ℚ) / (A011782 (A002260 (n + 1)).toNat ^ 2 : ℚ)

end

end A225471.P1619617638492725569

/-!
# A225472: Triangle read by rows, k!*S_3(n, k) where S_m(n, k) are the Stirling-Frobenius subset numbers of order m; n >= 0, k >= 0.

The programs for A225472, the canonical program `A225472.P16721652761374133983` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225472 has offset 0).

The definition of A225472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225472.P16721652761374133983

`3*col(n)*T(n-1,k-1)+(2+3*col(n))*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225472

/-- `3*col(n)*T(n-1,k-1)+(2+3*col(n))*T(n-1,k)` -/
def P16721652761374133983.Spec : Prop :=
  ∀ n, (P16721652761374133983.a n : ℤ) = A225472 n

theorem P16721652761374133983.correct : P16721652761374133983.Spec := by
  intro n
  simp only [A225472]

end A225472

/-! ## A225472.P6100388587403256792

`A225466(n)*A233543(n)`
-/

namespace A225472.P6100388587403256792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225466 n * A233543 n

end

end A225472.P6100388587403256792

namespace A225472

/-- `A225466(n)*A233543(n)` -/
def P6100388587403256792.Spec : Prop :=
  ∀ n, P6100388587403256792.a n = A225472 n

end A225472

/-! ## A225472.P9949215866458935619

`A002262(n)!*A225466(n)`
-/

namespace A225472.P9949215866458935619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A225466 n

end

end A225472.P9949215866458935619

namespace A225472

/-- `A002262(n)!*A225466(n)` -/
def P9949215866458935619.Spec : Prop :=
  ∀ n, P9949215866458935619.a n = A225472 n

end A225472

/-! ## A225472.P2414957760957900227

`A144328(n+1)!*A225466(n)`
-/

namespace A225472.P2414957760957900227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A225466 n

end

end A225472.P2414957760957900227

namespace A225472

/-- `A144328(n+1)!*A225466(n)` -/
def P2414957760957900227.Spec : Prop :=
  ∀ n, P2414957760957900227.a n = A225472 n

end A225472

/-! ## A225472.P7292310184953805841

`(A002260(n+1)-1)!*A225466(n)`
-/

namespace A225472.P7292310184953805841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1) - 1).toNat : ℤ) * A225466 n

end

end A225472.P7292310184953805841

namespace A225472

/-- `(A002260(n+1)-1)!*A225466(n)` -/
def P7292310184953805841.Spec : Prop :=
  ∀ n, P7292310184953805841.a n = A225472 n

end A225472

/-! ## A225472.P11185093949642505268

`A032031(A002262(n))*A225468(n)`
-/

namespace A225472.P11185093949642505268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032031 (A002262 n).toNat * A225468 n

end

end A225472.P11185093949642505268

namespace A225472

/-- `A032031(A002262(n))*A225468(n)` -/
def P11185093949642505268.Spec : Prop :=
  ∀ n, P11185093949642505268.a n = A225472 n

end A225472

/-! ## A225472.P6110535704500046505

`A119502(A061579(n))*A225466(n)`
-/

namespace A225472.P6110535704500046505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n).toNat * A225466 n

end

end A225472.P6110535704500046505

namespace A225472

/-- `A119502(A061579(n))*A225466(n)` -/
def P6110535704500046505.Spec : Prop :=
  ∀ n, P6110535704500046505.a n = A225472 n

end A225472

/-! ## A225472.P14423257185051086994

`A098361(A112367(n))*A225466(n)`
-/

namespace A225472.P14423257185051086994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A112367 n).toNat * A225466 n

end

end A225472.P14423257185051086994

namespace A225472

/-- `A098361(A112367(n))*A225466(n)` -/
def P14423257185051086994.Spec : Prop :=
  ∀ n, P14423257185051086994.a n = A225472 n

end A225472

/-! ## A225472.P11752657460585814902

`A081123(A158405(n+1))*A225466(n)`
-/

namespace A225472.P11752657460585814902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A158405 (n + 1)).toNat * A225466 n

end

end A225472.P11752657460585814902

namespace A225472

/-- `A081123(A158405(n+1))*A225466(n)` -/
def P11752657460585814902.Spec : Prop :=
  ∀ n, P11752657460585814902.a n = A225472 n

end A225472

/-! ## A225472.P13016690553952195862

`A225466(n)/A225467(n)*A225473(n)`
-/

namespace A225472.P13016690553952195862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225466 n : ℚ) / (A225467 n : ℚ) * (A225473 n : ℚ)

end

end A225472.P13016690553952195862

namespace A225472

/-- `A225466(n)/A225467(n)*A225473(n)` -/
def P13016690553952195862.Spec : Prop :=
  ∀ n, P13016690553952195862.a n = (A225472 n : ℚ)

end A225472

/-! ## A225472.P10232114680736369614

`A112624(A059268(n))*A225466(n)`
-/

namespace A225472.P10232114680736369614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A059268 n).toNat * A225466 n

end

end A225472.P10232114680736369614

namespace A225472

/-- `A112624(A059268(n))*A225466(n)` -/
def P10232114680736369614.Spec : Prop :=
  ∀ n, P10232114680736369614.a n = A225472 n

end A225472

/-!
# A225473: Triangle read by rows, k!*S_4(n, k) where S_m(n, k) are the Stirling-Frobenius subset numbers of order m; n >= 0, k >= 0.

The programs for A225473, there is no canonical definition to state claims against.
-/

/-! ## A225473.P2397162019396984604

`A225467(n)*A233543(n)`
-/

namespace A225473.P2397162019396984604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225467 n * A233543 n

end

end A225473.P2397162019396984604

/-! ## A225473.P3467760584387238264

`A002262(n)!*A225467(n)`
-/

namespace A225473.P3467760584387238264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A225467 n

end

end A225473.P3467760584387238264

/-! ## A225473.P6180362787388604493

`A047920(A112367(n))*A225467(n)`
-/

namespace A225473.P6180362787388604493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A112367 n).toNat * A225467 n

end

end A225473.P6180362787388604493

/-! ## A225473.P653402947566862681

`A119502(A061579(n))*A225467(n)`
-/

namespace A225473.P653402947566862681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n).toNat * A225467 n

end

end A225473.P653402947566862681

/-! ## A225473.P7743779098219663721

`A081123(A158405(n+1))*A225467(n)`
-/

namespace A225473.P7743779098219663721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A158405 (n + 1)).toNat * A225467 n

end

end A225473.P7743779098219663721

/-! ## A225473.P9420297387352384032

`A225467(n)/A225466(n)*A225472(n)`
-/

namespace A225473.P9420297387352384032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225467 n : ℚ) / (A225466 n : ℚ) * (A225472 n : ℚ)

end

end A225473.P9420297387352384032

/-! ## A225473.P3073935677465898287

`A112624(A059268(n))*A225467(n)`
-/

namespace A225473.P3073935677465898287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A059268 n).toNat * A225467 n

end

end A225473.P3073935677465898287

/-!
# A225474: Triangle read by rows, k!*2^k*s_2(n, k) where s_m(n, k) are the Stirling-Frobenius cycle numbers of order m; n >= 0, k >= 0.

The programs for A225474, the canonical program `A225474.P2006782864380872905` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225474 has offset 0).

The definition of A225474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225474.P18162049844854374655

`A059268(n)*A225475(n)`
-/

namespace A225474.P18162049844854374655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A225475 n

end

end A225474.P18162049844854374655

namespace A225474

/-- `A059268(n)*A225475(n)` -/
def P18162049844854374655.Spec : Prop :=
  ∀ n, P18162049844854374655.a n = A225474 n

end A225474

/-! ## A225474.P2006782864380872905

`A161198(n)*A233543(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225474

/-- `A161198(n)*A233543(n)` -/
def P2006782864380872905.Spec : Prop :=
  ∀ n, P2006782864380872905.a n = A225474 n

theorem P2006782864380872905.correct : P2006782864380872905.Spec := by
  intro n
  simp only [A225474]

end A225474

/-! ## A225474.P6284942647415809730

`2^A002262(n)*A225475(n)`
-/

namespace A225474.P6284942647415809730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A225475 n : ℚ)

end

end A225474.P6284942647415809730

namespace A225474

/-- `2^A002262(n)*A225475(n)` -/
def P6284942647415809730.Spec : Prop :=
  ∀ n, P6284942647415809730.a n = (A225474 n : ℚ)

end A225474

/-! ## A225474.P10387671955791837083

`A000165(A002262(n))*A028338(n)`
-/

namespace A225474.P10387671955791837083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (A002262 n).toNat * A028338 n

end

end A225474.P10387671955791837083

namespace A225474

/-- `A000165(A002262(n))*A028338(n)` -/
def P10387671955791837083.Spec : Prop :=
  ∀ n, P10387671955791837083.a n = A225474 n

end A225474

/-! ## A225474.P10774165508329511130

`A000079(A002262(n))*A225475(n)`
-/

namespace A225474.P10774165508329511130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A225475 n

end

end A225474.P10774165508329511130

namespace A225474

/-- `A000079(A002262(n))*A225475(n)` -/
def P10774165508329511130.Spec : Prop :=
  ∀ n, P10774165508329511130.a n = A225474 n

end A225474

/-! ## A225474.P6922611503351182674

`A028338(n)*A059268(n)*A112624(A059268(n))`
-/

namespace A225474.P6922611503351182674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A059268 n * A112624 (A059268 n).toNat

end

end A225474.P6922611503351182674

namespace A225474

/-- `A028338(n)*A059268(n)*A112624(A059268(n))` -/
def P6922611503351182674.Spec : Prop :=
  ∀ n, P6922611503351182674.a n = A225474 n

end A225474

/-!
# A225475: Triangle read by rows, k!*s_2(n, k) where s_m(n, k) are the Stirling-Frobenius cycle numbers of order m; n >= 0, k >= 0.

The programs for A225475, the canonical program `A225475.P11294771516076438273` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225475 has offset 0).

The definition of A225475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1782 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225475.P11294771516076438273

`A028338(n)*A233543(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225475

/-- `A028338(n)*A233543(n)` -/
def P11294771516076438273.Spec : Prop :=
  ∀ n, P11294771516076438273.a n = A225475 n

theorem P11294771516076438273.correct : P11294771516076438273.Spec := by
  intro n
  simp only [A225475]

end A225475

/-! ## A225475.P9105088643985399679

`A002262(n)!*A028338(n)`
-/

namespace A225475.P9105088643985399679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A028338 n

end

end A225475.P9105088643985399679

namespace A225475

/-- `A002262(n)!*A028338(n)` -/
def P9105088643985399679.Spec : Prop :=
  ∀ n, P9105088643985399679.a n = A225475 n

end A225475

/-! ## A225475.P3614982440577126874

`A144328(n+1)!*A028338(n)`
-/

namespace A225475.P3614982440577126874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A028338 n

end

end A225475.P3614982440577126874

namespace A225475

/-- `A144328(n+1)!*A028338(n)` -/
def P3614982440577126874.Spec : Prop :=
  ∀ n, P3614982440577126874.a n = A225475 n

end A225475

/-! ## A225475.P15004411576894255812

`A028338(n)*A081123(A158405(n+1))`
-/

namespace A225475.P15004411576894255812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A081123 (A158405 (n + 1)).toNat

end

end A225475.P15004411576894255812

namespace A225475

/-- `A028338(n)*A081123(A158405(n+1))` -/
def P15004411576894255812.Spec : Prop :=
  ∀ n, P15004411576894255812.a n = A225475 n

end A225475

/-! ## A225475.P7691641002057239947

`A028338(n)/A001497(n)*A193229(n)`
-/

namespace A225475.P7691641002057239947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028338 n : ℚ) / (A001497 n : ℚ) * (A193229 n : ℚ)

end

end A225475.P7691641002057239947

namespace A225475

/-- `A028338(n)/A001497(n)*A193229(n)` -/
def P7691641002057239947.Spec : Prop :=
  ∀ n, P7691641002057239947.a n = (A225475 n : ℚ)

end A225475

/-! ## A225475.P3693329431147919364

`A048594(n+1)/A028421(n)*A039757(n)`
-/

namespace A225475.P3693329431147919364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (n + 1) : ℚ) / (A028421 n : ℚ) * (A039757 n : ℚ)

end

end A225475.P3693329431147919364

namespace A225475

/-- `A048594(n+1)/A028421(n)*A039757(n)` -/
def P3693329431147919364.Spec : Prop :=
  ∀ n, P3693329431147919364.a n = (A225475 n : ℚ)

end A225475

/-! ## A225475.P10170782819143825495

`A188881(n+1)/A008275(n+1)*A039757(n)`
-/

namespace A225475.P10170782819143825495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188881 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A039757 n : ℚ)

end

end A225475.P10170782819143825495

namespace A225475

/-- `A188881(n+1)/A008275(n+1)*A039757(n)` -/
def P10170782819143825495.Spec : Prop :=
  ∀ n, P10170782819143825495.a n = (A225475 n : ℚ)

end A225475

/-! ## A225475.P15018954756021533182

`A225474(n)/A059268(n)`
-/

namespace A225475.P15018954756021533182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225474 n : ℚ) / (A059268 n : ℚ)

end

end A225475.P15018954756021533182

namespace A225475

/-- `A225474(n)/A059268(n)` -/
def P15018954756021533182.Spec : Prop :=
  ∀ n, P15018954756021533182.a n = (A225475 n : ℚ)

end A225475

/-! ## A225475.P4263293044726293445

`A028338(n)*A112624(A059268(n))`
-/

namespace A225475.P4263293044726293445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A112624 (A059268 n).toNat

end

end A225475.P4263293044726293445

namespace A225475

/-- `A028338(n)*A112624(A059268(n))` -/
def P4263293044726293445.Spec : Prop :=
  ∀ n, P4263293044726293445.a n = A225475 n

end A225475

/-!
# A225476: Triangle read by rows, k!*2^k*S_2(n, k) where S_m(n, k) are the Stirling-Frobenius subset numbers of order m; n >= 0, k >= 0.

The programs for A225476, the canonical program `A225476.P567430394423262503` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225476 has offset 0).

The definition of A225476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225476.P567430394423262503

`A039755(n)*A233543(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225476

/-- `A039755(n)*A233543(n)` -/
def P567430394423262503.Spec : Prop :=
  ∀ n, P567430394423262503.a n = A225476 n

theorem P567430394423262503.correct : P567430394423262503.Spec := by
  intro n
  simp only [A225476]

end A225476

/-! ## A225476.P12754682787879873368

`A002262(n)!*A039755(n)`
-/

namespace A225476.P12754682787879873368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A039755 n

end

end A225476.P12754682787879873368

namespace A225476

/-- `A002262(n)!*A039755(n)` -/
def P12754682787879873368.Spec : Prop :=
  ∀ n, P12754682787879873368.a n = A225476 n

end A225476

/-! ## A225476.P17120297598982857705

`A144328(n+1)!*A039755(n)`
-/

namespace A225476.P17120297598982857705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A039755 n

end

end A225476.P17120297598982857705

namespace A225476

/-- `A144328(n+1)!*A039755(n)` -/
def P17120297598982857705.Spec : Prop :=
  ∀ n, P17120297598982857705.a n = A225476 n

end A225476

/-! ## A225476.P7791153167672852702

`A002262(n)!*A039756(A061579(n))`
-/

namespace A225476.P7791153167672852702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A039756 (A061579 n).toNat

end

end A225476.P7791153167672852702

namespace A225476

/-- `A002262(n)!*A039756(A061579(n))` -/
def P7791153167672852702.Spec : Prop :=
  ∀ n, P7791153167672852702.a n = A225476 n

end A225476

/-! ## A225476.P15169454448169319559

`A039755(n)*A081123(A158405(n+1))`
-/

namespace A225476.P15169454448169319559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 n * A081123 (A158405 (n + 1)).toNat

end

end A225476.P15169454448169319559

namespace A225476

/-- `A039755(n)*A081123(A158405(n+1))` -/
def P15169454448169319559.Spec : Prop :=
  ∀ n, P15169454448169319559.a n = A225476 n

end A225476

/-! ## A225476.P6644551309720067538

`A008279(n)/A007318(n)*A039755(n)`
-/

namespace A225476.P6644551309720067538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n : ℚ) * (A039755 n : ℚ)

end

end A225476.P6644551309720067538

namespace A225476

/-- `A008279(n)/A007318(n)*A039755(n)` -/
def P6644551309720067538.Spec : Prop :=
  ∀ n, P6644551309720067538.a n = (A225476 n : ℚ)

end A225476

/-! ## A225476.P10721325762319646822

`A028246(n+1)/A008277(n+1)*A039755(n)`
-/

namespace A225476.P10721325762319646822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A039755 n : ℚ)

end

end A225476.P10721325762319646822

namespace A225476

/-- `A028246(n+1)/A008277(n+1)*A039755(n)` -/
def P10721325762319646822.Spec : Prop :=
  ∀ n, P10721325762319646822.a n = (A225476 n : ℚ)

end A225476

/-! ## A225476.P12013519823850555244

`A145901(n)/A059268(n)`
-/

namespace A225476.P12013519823850555244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145901 n : ℚ) / (A059268 n : ℚ)

end

end A225476.P12013519823850555244

namespace A225476

/-- `A145901(n)/A059268(n)` -/
def P12013519823850555244.Spec : Prop :=
  ∀ n, P12013519823850555244.a n = (A225476 n : ℚ)

end A225476

/-! ## A225476.P8336361664258253029

`A001222(A059268(n))!*A039755(n)`
-/

namespace A225476.P8336361664258253029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (A059268 n).toNat).toNat : ℤ) * A039755 n

end

end A225476.P8336361664258253029

namespace A225476

/-- `A001222(A059268(n))!*A039755(n)` -/
def P8336361664258253029.Spec : Prop :=
  ∀ n, P8336361664258253029.a n = A225476 n

end A225476

/-! ## A225476.P4477271347243393556

`A039755(n)*A112624(A059268(n))`
-/

namespace A225476.P4477271347243393556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 n * A112624 (A059268 n).toNat

end

end A225476.P4477271347243393556

namespace A225476

/-- `A039755(n)*A112624(A059268(n))` -/
def P4477271347243393556.Spec : Prop :=
  ∀ n, P4477271347243393556.a n = A225476 n

end A225476

/-!
# A225477: Triangle read by rows, 3^k*s_3(n, k) where s_m(n, k) are the Stirling-Frobenius cycle numbers of order m; n >= 0, k >= 0.

The programs for A225477, there is no canonical definition to state claims against.
-/

/-! ## A225477.P14302230363991608253

`A000244(A002262(n))*A225470(n)`
-/

namespace A225477.P14302230363991608253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A225470 n

end

end A225477.P14302230363991608253

/-! ## A225477.P14458920599732467822

`A013622(A112367(n))*A225470(n)`
-/

namespace A225477.P14458920599732467822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 (A112367 n).toNat * A225470 n

end

end A225477.P14458920599732467822

/-! ## A225477.P13780749457442304899

`A133494(A002260(n+1))*A225470(n)`
-/

namespace A225477.P13780749457442304899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A002260 (n + 1)).toNat * A225470 n

end

end A225477.P13780749457442304899

/-! ## A225477.P314565670339362073

`A225466(n)/A225468(n)*A225470(n)`
-/

namespace A225477.P314565670339362073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225466 n : ℚ) / (A225468 n : ℚ) * (A225470 n : ℚ)

end

end A225477.P314565670339362073

/-! ## A225477.P14539761705787532135

`A000244(A002260(n+1)-1)*A225470(n)`
-/

namespace A225477.P14539761705787532135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002260 (n + 1) - 1).toNat * A225470 n

end

end A225477.P14539761705787532135

/-! ## A225477.P16490240517999156575

`A003959(A059268(n))*A225470(n)`
-/

namespace A225477.P16490240517999156575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A059268 n).toNat * A225470 n

end

end A225477.P16490240517999156575

/-! ## A225477.P14399096182057209681

`A000265(A036561(n))*A225470(n)`
-/

namespace A225477.P14399096182057209681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036561 n).toNat * A225470 n

end

end A225477.P14399096182057209681

/-!
# A225478: Triangle read by rows, 4^k*s_4(n, k) where s_m(n, k) are the Stirling-Frobenius cycle numbers of order m; n >= 0, k >= 0.

The programs for A225478, there is no canonical definition to state claims against.
-/

/-! ## A225478.P2600138186294935190

`A059268(n)²*A225471(n)`
-/

namespace A225478.P2600138186294935190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A225471 n

end

end A225478.P2600138186294935190

/-! ## A225478.P6512214608300791802

`4^A002262(n)*A225471(n)`
-/

namespace A225478.P6512214608300791802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A002262 n : ℤ) * (A225471 n : ℚ)

end

end A225478.P6512214608300791802

/-! ## A225478.P9714741736373097414

`A000302(A002262(n))*A225471(n)`
-/

namespace A225478.P9714741736373097414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A002262 n).toNat * A225471 n

end

end A225478.P9714741736373097414

/-! ## A225478.P6340842587144003074

`A225471(n)*A262616(A061579(n))`
-/

namespace A225478.P6340842587144003074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225471 n * A262616 (A061579 n).toNat

end

end A225478.P6340842587144003074

/-! ## A225478.P13381638508353313099

`A011782(A158405(n+1))*A225471(n)`
-/

namespace A225478.P13381638508353313099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A158405 (n + 1)).toNat * A225471 n

end

end A225478.P13381638508353313099

/-! ## A225478.P5799956643480982297

`A225467(n)/A225469(n)*A225471(n)`
-/

namespace A225478.P5799956643480982297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225467 n : ℚ) / (A225469 n : ℚ) * (A225471 n : ℚ)

end

end A225478.P5799956643480982297

/-!
# A225479: Triangle read by rows, the ordered Stirling cycle numbers, T(n, k) = k!* s(n, k); n >= 0 k >= 0.

The programs for A225479, the canonical program `A225479.P13866257615232345579` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225479 has offset 0).

The definition of A225479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225479.P13866257615232345579

`A132393(n)*A233543(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225479

/-- `A132393(n)*A233543(n)` -/
def P13866257615232345579.Spec : Prop :=
  ∀ n, P13866257615232345579.a n = A225479 n

theorem P13866257615232345579.correct : P13866257615232345579.Spec := by
  intro n
  simp only [A225479]

end A225479

/-! ## A225479.P2414186741919849156

`A002262(n)!*A132393(n)`
-/

namespace A225479.P2414186741919849156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A132393 n

end

end A225479.P2414186741919849156

namespace A225479

/-- `A002262(n)!*A132393(n)` -/
def P2414186741919849156.Spec : Prop :=
  ∀ n, P2414186741919849156.a n = A225479 n

end A225479

/-! ## A225479.P17698422134470683984

`log2(A059268(n))!*A132393(n)`
-/

namespace A225479.P17698422134470683984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat : ℤ) * A132393 n

end

end A225479.P17698422134470683984

namespace A225479

/-- `log2(A059268(n))!*A132393(n)` -/
def P17698422134470683984.Spec : Prop :=
  ∀ n, P17698422134470683984.a n = A225479 n

end A225479

/-! ## A225479.P16824809070372027488

`A144328(n+1)!*A132393(n)`
-/

namespace A225479.P16824809070372027488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A132393 n

end

end A225479.P16824809070372027488

namespace A225479

/-- `A144328(n+1)!*A132393(n)` -/
def P16824809070372027488.Spec : Prop :=
  ∀ n, P16824809070372027488.a n = A225479 n

end A225479

/-! ## A225479.P13711138134431509750

`A132393(n)*A166350(A028310(n))`
-/

namespace A225479.P13711138134431509750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A166350 (A028310 n).toNat

end

end A225479.P13711138134431509750

namespace A225479

/-- `A132393(n)*A166350(A028310(n))` -/
def P13711138134431509750.Spec : Prop :=
  ∀ n, P13711138134431509750.a n = A225479 n

end A225479

/-! ## A225479.P12044299992105976732

`A000142(log2(A059268(n)))*A132393(n)`
-/

namespace A225479.P12044299992105976732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A132393 n

end

end A225479.P12044299992105976732

namespace A225479

/-- `A000142(log2(A059268(n)))*A132393(n)` -/
def P12044299992105976732.Spec : Prop :=
  ∀ n, P12044299992105976732.a n = A225479 n

end A225479

/-! ## A225479.P4029751561758994284

`A132393(n)*A166350(A007401(n+1))`
-/

namespace A225479.P4029751561758994284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A166350 (A007401 (n + 1)).toNat

end

end A225479.P4029751561758994284

namespace A225479

/-- `A132393(n)*A166350(A007401(n+1))` -/
def P4029751561758994284.Spec : Prop :=
  ∀ n, P4029751561758994284.a n = A225479 n

end A225479

/-! ## A225479.P2224501253518496424

`A132393(n)*A166350(A066182(n+1))`
-/

namespace A225479.P2224501253518496424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A166350 (A066182 (n + 1)).toNat

end

end A225479.P2224501253518496424

namespace A225479

/-- `A132393(n)*A166350(A066182(n+1))` -/
def P2224501253518496424.Spec : Prop :=
  ∀ n, P2224501253518496424.a n = A225479 n

end A225479

/-! ## A225479.P10304399133264668609

`A132393(n)*A166350(A233583(n+1))`
-/

namespace A225479.P10304399133264668609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A166350 (A233583 (n + 1)).toNat

end

end A225479.P10304399133264668609

namespace A225479

/-- `A132393(n)*A166350(A233583(n+1))` -/
def P10304399133264668609.Spec : Prop :=
  ∀ n, P10304399133264668609.a n = A225479 n

end A225479

/-!
# A225480: a(n) = B2(n) * C(n) where B2(n) are generalized Bernoulli numbers and C(n) the Clausen numbers.

The programs for A225480, there is no canonical definition to state claims against.
-/

/-! ## A225480.P7458417943254097793

`(2-2^n)*A027641(n)`
-/

namespace A225480.P7458417943254097793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (2 ^ n : ℤ)) * A027641 n

end

end A225480.P7458417943254097793

/-! ## A225480.P8172416143436003294

`(a(n-1)+2)*A157779(n)` with `a(0)=1`
-/

namespace A225480.P8172416143436003294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) * A157779 n

end

end A225480.P8172416143436003294

/-! ## A225480.P8236105939817871411

`A040001(n)*A157779(n)`
-/

namespace A225480.P8236105939817871411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A157779 n

end

end A225480.P8236105939817871411

/-! ## A225480.P616237477832860953

`A043529(n)*A157779(n)`
-/

namespace A225480.P616237477832860953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n * A157779 n

end

end A225480.P616237477832860953

/-!
# A225481: a(n) = product{ p primes <= n+1 such that p divides n+1 or p-1 divides n }.

The programs for A225481, the canonical program `A225481.P12092037040883699574` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225481 has offset 0).

The definition of A225481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225481.P17626292670405893474

`∏{p}[n+1, #]*A050932(n)`
-/

namespace A225481.P17626292670405893474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A050932 n

end

end A225481.P17626292670405893474

namespace A225481

/-- `∏{p}[n+1, #]*A050932(n)` -/
def P17626292670405893474.Spec : Prop :=
  ∀ n, P17626292670405893474.a n = A225481 n

end A225481

/-! ## A225481.P17749592728052914154

`lcm(∏{p}[n+1, #], A027642(n))`
-/

namespace A225481.P17749592728052914154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A027642 n)

end

end A225481.P17749592728052914154

namespace A225481

/-- `lcm(∏{p}[n+1, #], A027642(n))` -/
def P17749592728052914154.Spec : Prop :=
  ∀ n, (P17749592728052914154.a n : ℤ) = A225481 n

end A225481

/-! ## A225481.P12092037040883699574

`lcm(∏{p}[n+1, -#], A141056(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A225481

/-- `lcm(∏{p}[n+1, -#], A141056(n))` -/
def P12092037040883699574.Spec : Prop :=
  ∀ n, (P12092037040883699574.a n : ℤ) = A225481 n

theorem P12092037040883699574.correct : P12092037040883699574.Spec := by
  intro n
  simp only [A225481]

end A225481

/-! ## A225481.P13597596495740813479

`A141056(n)*A226040(n)`
-/

namespace A225481.P13597596495740813479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n * A226040 n

end

end A225481.P13597596495740813479

namespace A225481

/-- `A141056(n)*A226040(n)` -/
def P13597596495740813479.Spec : Prop :=
  ∀ n, P13597596495740813479.a n = A225481 n

end A225481

/-! ## A225481.P1876721487557059253

`A007947(n+1)*A050932(n)`
-/

namespace A225481.P1876721487557059253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A050932 n

end

end A225481.P1876721487557059253

namespace A225481

/-- `A007947(n+1)*A050932(n)` -/
def P1876721487557059253.Spec : Prop :=
  ∀ n, P1876721487557059253.a n = A225481 n

end A225481

/-! ## A225481.P16157861601564011147

`A015053(n+1)*A050932(n)`
-/

namespace A225481.P16157861601564011147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 1) * A050932 n

end

end A225481.P16157861601564011147

namespace A225481

/-- `A015053(n+1)*A050932(n)` -/
def P16157861601564011147.Spec : Prop :=
  ∀ n, P16157861601564011147.a n = A225481 n

end A225481

/-! ## A225481.P1713872903103716713

`lcm(A007947(n+1), A027642(n))`
-/

namespace A225481.P1713872903103716713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A027642 n)

end

end A225481.P1713872903103716713

namespace A225481

/-- `lcm(A007947(n+1), A027642(n))` -/
def P1713872903103716713.Spec : Prop :=
  ∀ n, (P1713872903103716713.a n : ℤ) = A225481 n

end A225481

/-! ## A225481.P3642327989715471609

`lcm(A050932(n), A062953(n+1))`
-/

namespace A225481.P3642327989715471609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050932 n) (A062953 (n + 1))

end

end A225481.P3642327989715471609

namespace A225481

/-- `lcm(A050932(n), A062953(n+1))` -/
def P3642327989715471609.Spec : Prop :=
  ∀ n, (P3642327989715471609.a n : ℤ) = A225481 n

end A225481

/-! ## A225481.P6829707484573517578

`lcm(A015053(n+1), A176289(n))`
-/

namespace A225481.P6829707484573517578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015053 (n + 1)) (A176289 n)

end

end A225481.P6829707484573517578

namespace A225481

/-- `lcm(A015053(n+1), A176289(n))` -/
def P6829707484573517578.Spec : Prop :=
  ∀ n, (P6829707484573517578.a n : ℤ) = A225481 n

end A225481

/-! ## A225481.P6991554204031049508

`lcm(A056554(n+1), A176591(n))`
-/

namespace A225481.P6991554204031049508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056554 (n + 1)) (A176591 n)

end

end A225481.P6991554204031049508

namespace A225481

/-- `lcm(A056554(n+1), A176591(n))` -/
def P6991554204031049508.Spec : Prop :=
  ∀ n, (P6991554204031049508.a n : ℤ) = A225481 n

end A225481

/-! ## A225481.P11988256192306911581

`lcm(A166120(n+1), A347230(n+1))`
-/

namespace A225481.P11988256192306911581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166120 (n + 1)) (A347230 (n + 1))

end

end A225481.P11988256192306911581

namespace A225481

/-- `lcm(A166120(n+1), A347230(n+1))` -/
def P11988256192306911581.Spec : Prop :=
  ∀ n, (P11988256192306911581.a n : ℤ) = A225481 n

end A225481

/-! ## A225481.P10373752555229079648

`A015052(A015052(n+1))*A050932(n)`
-/

namespace A225481.P10373752555229079648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat * A050932 n

end

end A225481.P10373752555229079648

namespace A225481

/-- `A015052(A015052(n+1))*A050932(n)` -/
def P10373752555229079648.Spec : Prop :=
  ∀ n, P10373752555229079648.a n = A225481 n

end A225481

/-!
# A225482: Expansion of 1/(1 - x^3 - x^4 - x^5 + x^8).

The programs for A225482, the canonical program `A225482.P636557740797864749` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225482 has offset 0).

The definition of A225482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5+x^8))` (program `A225482.P636557740797864749`, by `A225482.P636557740797864749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225482.P15160292594794411018

`a(n-3)+a(n-4)+a(n-5)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=2`
-/

namespace A225482.P15160292594794411018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1, 1, 2] fun n a =>
  a (n - 3) + a (n - 4) + a (n - 5) - a (n - 8)

end

end A225482.P15160292594794411018

namespace A225482

/-- `a(n-3)+a(n-4)+a(n-5)-a(n-8)` -/
def P15160292594794411018.Spec : Prop :=
  ∀ n, P15160292594794411018.a n = A225482 n

end A225482

/-! ## A225482.P636557740797864749

`ogf(1/(1-x^3-x^4-x^5+x^8))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225482

/-- `ogf(1/(1-x^3-x^4-x^5+x^8))` -/
def P636557740797864749.Spec : Prop :=
  ∀ n, P636557740797864749.a n = A225482 n

theorem P636557740797864749.correct : P636557740797864749.Spec := by
  intro n
  simp only [A225482]

end A225482

/-! ## A225482.P10374781564347204774

`A048766(A008621(n)*A190165(n))`
-/

namespace A225482.P10374781564347204774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A008621 n * A190165 n).toNat

end

end A225482.P10374781564347204774

namespace A225482

/-- `A048766(A008621(n)*A190165(n))` -/
def P10374781564347204774.Spec : Prop :=
  ∀ n, P10374781564347204774.a n = A225482 n

end A225482

/-! ## A225482.P3757219833854993140

`A319951(A017823(n))`
-/

namespace A225482.P3757219833854993140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A017823 n).toNat

end

end A225482.P3757219833854993140

namespace A225482

/-- `A319951(A017823(n))` -/
def P3757219833854993140.Spec : Prop :=
  ∀ n, P3757219833854993140.a n = A225482 n

end A225482

/-! ## A225482.P87845416416361186

`A339221(A001318(n)-A029578(n))`
-/

namespace A225482.P87845416416361186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339221 (A001318 n - A029578 n).toNat

end

end A225482.P87845416416361186

namespace A225482

/-- `A339221(A001318(n)-A029578(n))` -/
def P87845416416361186.Spec : Prop :=
  ∀ n, P87845416416361186.a n = A225482 n

end A225482

/-!
# A225483: Triangle T(n, k) = Sum_{j=0..k} (-1)^(k-j)*A159041(2*n+1, j), read by rows.

The programs for A225483, there is no canonical definition to state claims against.
-/

/-! ## A225483.P8904726332066879732

`A227725(n)-A106177(A227728(n+1))`
-/

namespace A225483.P8904726332066879732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227725 n - A106177 (A227728 (n + 1)).toNat

end

end A225483.P8904726332066879732

/-! ## A225483.P16528298900006864164

`A131361(2*(n+1))-A123578(A004534(n+2))`
-/

namespace A225483.P16528298900006864164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131361 (2 * (n + 1)) - A123578 (A004534 (n + 2)).toNat

end

end A225483.P16528298900006864164

/-!
# A225484: Expansion of 1/(1 - x^3 - x^4 - x^5 - x^6 + x^9).

The programs for A225484, the canonical program `A225484.P14675796721270320481` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225484 has offset 0).

The definition of A225484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5-x^6+x^9))` (program `A225484.P14675796721270320481`, by `A225484.P14675796721270320481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225484.P14675796721270320481

`ogf(1/(1-x^3-x^4-x^5-x^6+x^9))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225484

/-- `ogf(1/(1-x^3-x^4-x^5-x^6+x^9))` -/
def P14675796721270320481.Spec : Prop :=
  ∀ n, P14675796721270320481.a n = A225484 n

theorem P14675796721270320481.correct : P14675796721270320481.Spec := by
  intro n
  simp only [A225484]

end A225484

/-! ## A225484.P9067911884566825152

`A273190(A275806(n)+A049864(n))`
-/

namespace A225484.P9067911884566825152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A275806 n + A049864 n).toNat

end

end A225484.P9067911884566825152

namespace A225484

/-- `A273190(A275806(n)+A049864(n))` -/
def P9067911884566825152.Spec : Prop :=
  ∀ n, P9067911884566825152.a n = A225484 n

end A225484

/-! ## A225484.P9768027933669149686

`Δ[A003059(abs(A100683(n)))]`
-/

namespace A225484.P9768027933669149686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 |A100683 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225484.P9768027933669149686

namespace A225484

/-- `Δ[A003059(abs(A100683(n)))]` -/
def P9768027933669149686.Spec : Prop :=
  ∀ n, P9768027933669149686.a n = A225484 n

end A225484

/-! ## A225484.P10149647158960719563

`Δ[A000196(A100683(n)+A000007(n))]`
-/

namespace A225484.P10149647158960719563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A100683 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225484.P10149647158960719563

namespace A225484

/-- `Δ[A000196(A100683(n)+A000007(n))]` -/
def P10149647158960719563.Spec : Prop :=
  ∀ n, P10149647158960719563.a n = A225484 n

end A225484

/-! ## A225484.P1083529601468344753

`Δ[A000196(A100683(n)+A008647(n))]`
-/

namespace A225484.P1083529601468344753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A100683 n + A008647 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225484.P1083529601468344753

namespace A225484

/-- `Δ[A000196(A100683(n)+A008647(n))]` -/
def P1083529601468344753.Spec : Prop :=
  ∀ n, P1083529601468344753.a n = A225484 n

end A225484

/-!
# A225485: Number of partitions of n that have frequency depth k, an array read by rows.

The programs for A225485, there is no canonical definition to state claims against.
-/

/-! ## A225485.P16266173255097296471

`A089309(A089309(A131388(n+1))*A111694(n+1))`
-/

namespace A225485.P16266173255097296471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A089309 (A131388 (n + 1)).toNat * A111694 (n + 1)).toNat

end

end A225485.P16266173255097296471

/-! ## A225485.P13738953043463446272

`gcd(A275842(n), A275846(2*A000045(n)))`
-/

namespace A225485.P13738953043463446272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275842 n) (A275846 (2 * A000045 n).toNat)

end

end A225485.P13738953043463446272

/-! ## A225485.P2183461535160051935

`A122402(or(A051801(n+1), A051885(n)))`
-/

namespace A225485.P2183461535160051935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122402 (Int.lor (A051801 (n + 1)) (A051885 n)).toNat

end

end A225485.P2183461535160051935

/-!
# A225486: Maximal frequency depth for the partitions of n.

The programs for A225486, there is no canonical definition to state claims against.
-/

/-! ## A225486.P12086781477237902766

`ceil(3*atan(sqrt(n))²)`
-/

namespace A225486.P12086781477237902766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * Real.arctan (Real.sqrt (n : ℝ)) ^ 2⌉

end

end A225486.P12086781477237902766

/-! ## A225486.P6320899871699761608

`ceil(3*atan(sqrt(n))^2)`
-/

namespace A225486.P6320899871699761608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * Real.arctan (Real.sqrt (n : ℝ)) ^ 2⌉

end

end A225486.P6320899871699761608

/-! ## A225486.P9065686526360155710

`round(log2(3*ceil(log2(n+1)^2)+1))`
-/

namespace A225486.P9065686526360155710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (3 * ⌈Real.logb 2 (n + 1 : ℝ) ^ 2⌉ + 1 : ℝ))

end

end A225486.P9065686526360155710

/-! ## A225486.P2102659378578979537

`ceil(sqrt(log2(A292335(n+1))))`
-/

namespace A225486.P2102659378578979537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.logb 2 (A292335 (n + 1) : ℝ))⌉

end

end A225486.P2102659378578979537

/-! ## A225486.P10513345479276676573

`A325282(ceil(sqrt(∑[2*n])))`
-/

namespace A225486.P10513345479276676573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325282 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A225486.P10513345479276676573

/-! ## A225486.P17151330320605771105

`A345378(A358197(n+1))`
-/

namespace A225486.P17151330320605771105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345378 (A358197 (n + 1)).toNat

end

end A225486.P17151330320605771105

/-! ## A225486.P13732314752612101703

`A130233(∑[char[A123015(n)]])`
-/

namespace A225486.P13732314752612101703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123015 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A225486.P13732314752612101703

/-! ## A225486.P4364750381327981390

`A084556(record[A006530(n+1)]*A084556(n))`
-/

namespace A225486.P4364750381327981390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A084556 n).toNat

end

end A225486.P4364750381327981390

/-! ## A225486.P15620848119958060058

`A325282(A199969(n+2))²/A325282(n+1)`
-/

namespace A225486.P15620848119958060058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325282 (A199969 (n + 2)).toNat ^ 2 : ℚ) / (A325282 (n + 1) : ℚ)

end

end A225486.P15620848119958060058

/-! ## A225486.P8744140420613461327

`A261101(A261101(A219642(A255056(n))))`
-/

namespace A225486.P8744140420613461327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261101 (A261101 (A219642 (A255056 n).toNat).toNat).toNat

end

end A225486.P8744140420613461327

/-!
# A225487: Duplicate primes found by Rowland's recurrence in the order of their reappearance.

The programs for A225487, there is no canonical definition to state claims against.
-/

/-! ## A225487.P10262777209906053629

`A309392(A018097(n))`
-/

namespace A225487.P10262777209906053629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309392 (A018097 n).toNat

end

end A225487.P10262777209906053629

/-! ## A225487.P8190315441013843864

`A006530(A038722(∑[5^n]+1))`
-/

namespace A225487.P8190315441013843864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A225487.P8190315441013843864

/-!
# A225488: Murai Chuzen numbers.

The programs for A225488, there is no canonical definition to state claims against.
-/

/-! ## A225488.P265923543434204122

`or(A096688(n+1), A178798(A002623(n)))`
-/

namespace A225488.P265923543434204122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096688 (n + 1)) (A178798 (A002623 n).toNat)

end

end A225488.P265923543434204122

/-! ## A225488.P7476661558492068274

`or(A008683(A244827(n+1)), A096688(n+1))`
-/

namespace A225488.P7476661558492068274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A244827 (n + 1)).toNat) (A096688 (n + 1))

end

end A225488.P7476661558492068274

/-! ## A225488.P2271184152797064799

`or(A008683(A244827(n+1)), A181431(n+1))`
-/

namespace A225488.P2271184152797064799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A244827 (n + 1)).toNat) (A181431 (n + 1))

end

end A225488.P2271184152797064799

/-!
# A225489: Elimination order for the first person in a linear Josephus problem.

The programs for A225489, there is no canonical definition to state claims against.
-/

/-! ## A225489.P6631874937341719921

`A048766(A154958(Δ[A185505(n+1)]))`
-/

namespace A225489.P6631874937341719921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A154958 (f1 (n + 1) - f1 n).toNat).toNat

end

end A225489.P6631874937341719921

/-! ## A225489.P2379662780864011441

`A001222(2^(n+2))-A106466(A008619(n))`
-/

namespace A225489.P2379662780864011441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ (n + 2)) - A106466 (A008619 n).toNat

end

end A225489.P2379662780864011441

/-! ## A225489.P14581316185200539659

`A335841(A000079(n))-A029236(A098181(n))`
-/

namespace A225489.P14581316185200539659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335841 (A000079 n).toNat - A029236 (A098181 n).toNat

end

end A225489.P14581316185200539659

/-! ## A225489.P9434252916097808747

`A187829(A187829(n+2))-A106466(A106466(2*n+1))`
-/

namespace A225489.P9434252916097808747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (A187829 (n + 2)).toNat - A106466 (A106466 (2 * n + 1)).toNat

end

end A225489.P9434252916097808747

/-! ## A225489.P3437905339812712003

`A057525(A189911(n+1))`
-/

namespace A225489.P3437905339812712003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057525 (A189911 (n + 1)).toNat

end

end A225489.P3437905339812712003

/-!
# A225490: Expansion of 1/(1 - x - x^2 + x^5 + x^6 - x^7).

The programs for A225490, the canonical program `A225490.P5956650449028100079` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225490 has offset 0).

The definition of A225490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^5+x^6-x^7))` (program `A225490.P5956650449028100079`, by `A225490.P5956650449028100079.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225490.P5956650449028100079

`ogf(1/(1-x-x^2+x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225490

/-- `ogf(1/(1-x-x^2+x^5+x^6-x^7))` -/
def P5956650449028100079.Spec : Prop :=
  ∀ n, P5956650449028100079.a n = A225490 n

theorem P5956650449028100079.correct : P5956650449028100079.Spec := by
  intro n
  simp only [A225490]

end A225490

/-! ## A225490.P13373856799285227428

`∑[A143438(n)]`
-/

namespace A225490.P13373856799285227428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225490.P13373856799285227428

namespace A225490

/-- `∑[A143438(n)]` -/
def P13373856799285227428.Spec : Prop :=
  ∀ n, P13373856799285227428.a n = A225490 n

end A225490

/-! ## A225490.P9510941908695283886

`A143438(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A225490.P9510941908695283886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143438 (A028310 n).toNat + a (n - 1)

end

end A225490.P9510941908695283886

namespace A225490

/-- `A143438(A028310(n))+a(n-1)` -/
def P9510941908695283886.Spec : Prop :=
  ∀ n, P9510941908695283886.a n = A225490 n

end A225490

/-! ## A225490.P5966737136581813497

`A143438(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A225490.P5966737136581813497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143438 (A004526 (n + n)).toNat + a (n - 1)

end

end A225490.P5966737136581813497

namespace A225490

/-- `A143438(A004526(n+n))+a(n-1)` -/
def P5966737136581813497.Spec : Prop :=
  ∀ n, P5966737136581813497.a n = A225490 n

end A225490

/-! ## A225490.P11367631373184871601

`1+a(n-2)+a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=7`
-/

namespace A225490.P11367631373184871601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 7] fun n a =>
  1 + (a (n - 2) + a (n - 3) + a (n - 4) - a (n - 6))

end

end A225490.P11367631373184871601

namespace A225490

/-- `1+a(n-2)+a(n-3)+a(n-4)-a(n-6)` -/
def P11367631373184871601.Spec : Prop :=
  ∀ n, P11367631373184871601.a n = A225490 n

end A225490

/-! ## A225490.P7101653946289954794

`∑[Δ[A080013(n+6)]-A080013(n)]`
-/

namespace A225490.P7101653946289954794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A080013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225490.P7101653946289954794

namespace A225490

/-- `∑[Δ[A080013(n+6)]-A080013(n)]` -/
def P7101653946289954794.Spec : Prop :=
  ∀ n, P7101653946289954794.a n = A225490 n

end A225490

/-! ## A225490.P5906892030949200553

`A200661(n)-a(n-1)` with `a(0)=1`
-/

namespace A225490.P5906892030949200553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A200661 n - a (n - 1)

end

end A225490.P5906892030949200553

namespace A225490

/-- `A200661(n)-a(n-1)` -/
def P5906892030949200553.Spec : Prop :=
  ∀ n, P5906892030949200553.a n = A225490 n

end A225490

/-! ## A225490.P4036961192063198965

`a(n-1)+A143438(n)%A117791(n)` with `a(0)=1`
-/

namespace A225490.P4036961192063198965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A143438 n) (A117791 n)

end

end A225490.P4036961192063198965

namespace A225490

/-- `a(n-1)+A143438(n)%A117791(n)` -/
def P4036961192063198965.Spec : Prop :=
  ∀ n, P4036961192063198965.a n = A225490 n

end A225490

/-! ## A225490.P3904556368778618595

`A200668(A000217(n))-a(n-1)` with `a(0)=1`
-/

namespace A225490.P3904556368778618595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A200668 (A000217 n).toNat - a (n - 1)

end

end A225490.P3904556368778618595

namespace A225490

/-- `A200668(A000217(n))-a(n-1)` -/
def P3904556368778618595.Spec : Prop :=
  ∀ n, P3904556368778618595.a n = A225490 n

end A225490

/-! ## A225490.P9450882582213373606

`A200668(A000096(n-1)+1)-a(n-1)` with `a(0)=1`
-/

namespace A225490.P9450882582213373606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A200668 (A000096 (n - 1) + 1).toNat - a (n - 1)

end

end A225490.P9450882582213373606

namespace A225490

/-- `A200668(A000096(n-1)+1)-a(n-1)` -/
def P9450882582213373606.Spec : Prop :=
  ∀ n, P9450882582213373606.a n = A225490 n

end A225490

/-!
# A225491: Maximal frequency depth for multisets over an alphabet of n letters.

The programs for A225491, there is no canonical definition to state claims against.
-/

/-! ## A225491.P10490805190887583860

`8-floor(17/∑[ratio[n+1]])`
-/

namespace A225491.P10490805190887583860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - ⌊17 / (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A225491.P10490805190887583860

/-! ## A225491.P10760812516553123475

`floor(∑[(4/(a(n-2)+n+1))²])` with `a(0)=0, a(1)=4`
-/

namespace A225491.P10760812516553123475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  (4 / (f1 (n - 2) + (n + 1 : ℚ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A225491.P10760812516553123475

/-! ## A225491.P4453295885858143848

`ceil(log2(log2(A094792(n))²))`
-/

namespace A225491.P4453295885858143848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.logb 2 (A094792 n : ℝ) ^ 2)⌉

end

end A225491.P4453295885858143848

/-! ## A225491.P4365114732400058176

`ceil(log(A290276(Δ[n²])))`
-/

namespace A225491.P4365114732400058176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A290276 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌉

end

end A225491.P4365114732400058176

/-! ## A225491.P451593811939255288

`floor(4*sqrt(log(A310797(n))))`
-/

namespace A225491.P451593811939255288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * Real.sqrt (Real.log (A310797 n : ℝ))⌋

end

end A225491.P451593811939255288

/-!
# A225493: Numbers having only strong prime factors, cf. A051634.

The programs for A225493, there is no canonical definition to state claims against.
-/

/-! ## A225493.P8626047978868810591

`∏{e}[3^n, A051634(#)]`
-/

namespace A225493.P8626047978868810591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A051634 (Nat.factorization (f1 n) p)

end

end A225493.P8626047978868810591

/-! ## A225493.P3574050538177928970

`A109613(lt[A230775((1-n)²+1), A051698(n+1)])`
-/

namespace A225493.P3574050538177928970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 ((1 - (n : ℤ)) ^ 2 + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225493.P3574050538177928970

/-! ## A225493.P3294429110553684447

`record[A014963(A264719(n+1)²)]`
-/

namespace A225493.P3294429110553684447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A264719 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225493.P3294429110553684447

/-! ## A225493.P991759941490738682

`record[A099635(A264719(n+1)²)]`
-/

namespace A225493.P991759941490738682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099635 (A264719 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225493.P991759941490738682

/-! ## A225493.P9591704106496099738

`eq[A010060(A174726(n+1)), A347744(n)]`
-/

namespace A225493.P9591704106496099738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A174726 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225493.P9591704106496099738

/-!
# A225494: Numbers having only balanced prime factors, cf. A006562.

The programs for A225494, there is no canonical definition to state claims against.
-/

/-! ## A225494.P3882777322349080937

`A005408(eq[A236000(n+1), A278169(n+1)])`
-/

namespace A225494.P3882777322349080937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225494.P3882777322349080937

/-!
# A225495: Numbers having only weak prime factors, cf. A051635.

The programs for A225495, there is no canonical definition to state claims against.
-/

/-! ## A225495.P2775017825488241079

`or(A035623(2*(n+2)), A178832(A108685(n)))`
-/

namespace A225495.P2775017825488241079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035623 (2 * (n + 2))) (A178832 (A108685 n).toNat)

end

end A225495.P2775017825488241079

/-! ## A225495.P11190423397467191677

`eq[A000005(2*n+5), A000005(A344698(3*n+1))]`
-/

namespace A225495.P11190423397467191677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A344698 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225495.P11190423397467191677

/-! ## A225495.P324025229250557403

`lt[A176341(A191410(2*n+5)), A306537(2*n+5)]`
-/

namespace A225495.P324025229250557403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176341 (A191410 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306537 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225495.P324025229250557403

/-! ## A225495.P8718694865515242797

`eq[A000035(n), A050873(A000837(n))]`
-/

namespace A225495.P8718694865515242797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A000837 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225495.P8718694865515242797

/-! ## A225495.P10859612986575550525

`eq[A010170(n), A050873(A000837(n))]`
-/

namespace A225495.P10859612986575550525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A000837 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225495.P10859612986575550525

/-!
# A225496: Numbers having no balanced prime factors, cf. A006562.

The programs for A225496, there is no canonical definition to state claims against.
-/

/-! ## A225496.P13454642065712719276

`lt[A098120(n+1), A097927(2*n)]`
-/

namespace A225496.P13454642065712719276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097927 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225496.P13454642065712719276

/-! ## A225496.P530307995177632388

`lt[A040533(n), A072137(A179248(3*n+1))]`
-/

namespace A225496.P530307995177632388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 (A179248 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225496.P530307995177632388

/-! ## A225496.P6639277142938887975

`eq[(n^4)%5, A057898(A065056(n+4))]`
-/

namespace A225496.P6639277142938887975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (A065056 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225496.P6639277142938887975

/-! ## A225496.P14019154107432366722

`eq[A055641(2*n)*A111625(n+2), A055641(2*n+1)]`
-/

namespace A225496.P14019154107432366722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (2 * n) * A111625 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225496.P14019154107432366722

/-! ## A225496.P7570472942430937419

`eq[A055641(2*n+1)*A167911(n+2), A055641(2*n)]`
-/

namespace A225496.P7570472942430937419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (2 * n + 1) * A167911 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225496.P7570472942430937419

/-! ## A225496.P12485506530809335221

`record[A060791(n+1)%A273756(n)]`
-/

namespace A225496.P12485506530809335221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060791 (n + 1)) (A273756 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225496.P12485506530809335221

/-! ## A225496.P4467550824247752476

`eq[A000189(A048058(n)), A010152(n)]`
-/

namespace A225496.P4467550824247752476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A048058 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010152 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225496.P4467550824247752476

/-! ## A225496.P6458217400344652424

`eq[A000189(A048058(n)), A011558(n)]`
-/

namespace A225496.P6458217400344652424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A048058 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225496.P6458217400344652424

/-! ## A225496.P17211592105675461216

`eq[A000189(A048058(n)), A109009(n)]`
-/

namespace A225496.P17211592105675461216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A048058 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225496.P17211592105675461216

/-!
# A225497: Total number of rooted labeled trees over all forests on {1,2,...,n} in which one tree has been specially designated.

The programs for A225497, there is no canonical definition to state claims against.
-/

/-! ## A225497.P4707308024342255923

`A049388(n)-A004247(A049388(n))`
-/

namespace A225497.P4707308024342255923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049388 n - A004247 (A049388 n).toNat

end

end A225497.P4707308024342255923

/-!
# A225498: Weak Carmichael numbers.

The programs for A225498, there is no canonical definition to state claims against.
-/

/-! ## A225498.P12623729614024125915

`A080062(eq[1, A080062(n+1)%2]+1)`
-/

namespace A225498.P12623729614024125915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080062 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A225498.P12623729614024125915

/-! ## A225498.P5321042662157815386

`∩[2*n+1, A080062(n+1)]`
-/

namespace A225498.P5321042662157815386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225498.P5321042662157815386

/-! ## A225498.P14758027589948115439

`record[A000265(A080062(n+3))]`
-/

namespace A225498.P14758027589948115439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A080062 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225498.P14758027589948115439

/-! ## A225498.P8788401159029118818

`filter[A080062(n+1), A360113(#)]`
-/

namespace A225498.P8788401159029118818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A225498.P8788401159029118818

/-! ## A225498.P13377081241511201412

`filter[A080062(n+1), A361023(#)]`
-/

namespace A225498.P13377081241511201412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A225498.P13377081241511201412

/-! ## A225498.P8721520110034723686

`filter[A080062(n+1), A374134(#)]`
-/

namespace A225498.P8721520110034723686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A225498.P8721520110034723686

/-! ## A225498.P8048187128364445118

`filter[A080062(n+1), A039982(#)]`
-/

namespace A225498.P8048187128364445118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A225498.P8048187128364445118

/-! ## A225498.P15916852747284720144

`filter[A080062(n+1), A093719(#)]`
-/

namespace A225498.P15916852747284720144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A225498.P15916852747284720144

/-! ## A225498.P4853814660632805493

`filter[A080062(n+1), A098725(#)]`
-/

namespace A225498.P4853814660632805493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A225498.P4853814660632805493

/-! ## A225498.P688521809911345774

`filter[A080062(n+1), A166486(#)]`
-/

namespace A225498.P688521809911345774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A225498.P688521809911345774

/-! ## A225498.P2510362957552392592

`filter[A080062(n+1), A202238(#)]`
-/

namespace A225498.P2510362957552392592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A225498.P2510362957552392592

/-! ## A225498.P12375454149271163603

`filter[A087441(n+1), A202238(#)]`
-/

namespace A225498.P12375454149271163603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A225498.P12375454149271163603

/-! ## A225498.P4215090953494542454

`filter[A080062(n+1), A254651(#)]`
-/

namespace A225498.P4215090953494542454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A225498.P4215090953494542454

/-! ## A225498.P17643528485097100986

`filter[A080062(n+1), A347523(#)]`
-/

namespace A225498.P17643528485097100986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A225498.P17643528485097100986

/-! ## A225498.P18301078059932769550

`filter[A345330(n+1), A324290(#)]`
-/

namespace A225498.P18301078059932769550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A225498.P18301078059932769550

/-! ## A225498.P1105290733093474583

`∩[A080062(n+1), A345330(n+1)]`
-/

namespace A225498.P1105290733093474583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225498.P1105290733093474583

/-! ## A225498.P11409487309097536184

`∩[A087441(n+1), A345330(n+1)]`
-/

namespace A225498.P11409487309097536184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225498.P11409487309097536184

/-! ## A225498.P11570600886689353956

`filter[A067800(n+2), A324290(#)]`
-/

namespace A225498.P11570600886689353956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A225498.P11570600886689353956

/-! ## A225498.P3570866240100345881

`filter[A067887(n+1), A324290(#)]`
-/

namespace A225498.P3570866240100345881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A225498.P3570866240100345881

/-! ## A225498.P15742941497221360573

`filter[A071904(n+1), A324290(#)]`
-/

namespace A225498.P15742941497221360573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A225498.P15742941497221360573

/-!
# A225499: Expansion of 1/(1 - x + x^2 - x^3 - x^6 - x^9 + x^10 - x^11 + x^12).

The programs for A225499, the canonical program `A225499.P14623135707968324702` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225499 has offset 0).

The definition of A225499 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+x^2-x^3-x^6-x^9+x^10-x^11+x^12))` (program `A225499.P14623135707968324702`, by `A225499.P14623135707968324702.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225499.P14623135707968324702

`ogf(1/(1-x+x^2-x^3-x^6-x^9+x^10-x^11+x^12))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225499

/-- `ogf(1/(1-x+x^2-x^3-x^6-x^9+x^10-x^11+x^12))` -/
def P14623135707968324702.Spec : Prop :=
  ∀ n, P14623135707968324702.a n = A225499 n

theorem P14623135707968324702.correct : P14623135707968324702.Spec := by
  intro n
  simp only [A225499]

end A225499

