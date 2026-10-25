import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A309600: Digits of the 10-adic integer (17/9)^(1/3).

The programs for A309600, there is no canonical definition to state claims against.
-/

/-! ## A309600.P10757908329485242074

`A225401(n)+A225410(n)-A309648(n)`
-/

namespace A309600.P10757908329485242074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309648 n)

end

end A309600.P10757908329485242074

/-! ## A309600.P17264045465753277958

`A225402(n)+A225411(n)-A309648(n)`
-/

namespace A309600.P17264045465753277958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309648 n)

end

end A309600.P17264045465753277958

/-! ## A309600.P4413113167690113037

`A225405(n)+A225408(n)-A309648(n)`
-/

namespace A309600.P4413113167690113037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309648 n)

end

end A309600.P4413113167690113037

/-! ## A309600.P6908603407792195159

`A225406(n)+A225409(n)-A309648(n)`
-/

namespace A309600.P6908603407792195159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309648 n)

end

end A309600.P6908603407792195159

/-! ## A309600.P18392054465073035356

`A153042(n+1)+A225412(n)-A309648(n)`
-/

namespace A309600.P18392054465073035356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309648 n)

end

end A309600.P18392054465073035356

/-! ## A309600.P12069033593247213072

`A225404(n+1)+A225407(n)-A309648(n)`
-/

namespace A309600.P12069033593247213072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309648 n)

end

end A309600.P12069033593247213072

/-!
# A309601: Digits of the 10-adic integer (53/9)^(1/3).

The programs for A309601, there is no canonical definition to state claims against.
-/

/-! ## A309601.P17560033516494308342

`A225401(n)+A225410(n)-A309647(n)`
-/

namespace A309601.P17560033516494308342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309647 n)

end

end A309601.P17560033516494308342

/-! ## A309601.P15595922832009605042

`A225402(n)+A225411(n)-A309647(n)`
-/

namespace A309601.P15595922832009605042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309647 n)

end

end A309601.P15595922832009605042

/-! ## A309601.P2852626782670990991

`A225405(n)+A225408(n)-A309647(n)`
-/

namespace A309601.P2852626782670990991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309647 n)

end

end A309601.P2852626782670990991

/-! ## A309601.P16832500957828524214

`A225406(n)+A225409(n)-A309647(n)`
-/

namespace A309601.P16832500957828524214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309647 n)

end

end A309601.P16832500957828524214

/-! ## A309601.P866122695529744822

`A309602(n)+A309646(n)-A309647(n)`
-/

namespace A309601.P866122695529744822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A309647 n)

end

end A309601.P866122695529744822

/-! ## A309601.P2387809319856601561

`A309603(n)+A309645(n)-A309647(n)`
-/

namespace A309601.P2387809319856601561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309603 n + (A309645 n - A309647 n)

end

end A309601.P2387809319856601561

/-! ## A309601.P11295145363545014889

`A309604(n)+A309644(n)-A309647(n)`
-/

namespace A309601.P11295145363545014889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A309647 n)

end

end A309601.P11295145363545014889

/-! ## A309601.P5400241292592759933

`A309605(n)+A309643(n)-A309647(n)`
-/

namespace A309601.P5400241292592759933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309605 n + (A309643 n - A309647 n)

end

end A309601.P5400241292592759933

/-! ## A309601.P9070876477950805616

`A309606(n)+A309642(n)-A309647(n)`
-/

namespace A309601.P9070876477950805616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A309647 n)

end

end A309601.P9070876477950805616

/-! ## A309601.P1167207790115552916

`A225404(n+1)+A225407(n)-A309647(n)`
-/

namespace A309601.P1167207790115552916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309647 n)

end

end A309601.P1167207790115552916

/-!
# A309602: Digits of the 10-adic integer (71/9)^(1/3).

The programs for A309602, there is no canonical definition to state claims against.
-/

/-! ## A309602.P2411893477203389692

`A225401(n)+A225410(n)-A309646(n)`
-/

namespace A309602.P2411893477203389692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309646 n)

end

end A309602.P2411893477203389692

/-! ## A309602.P18133385398288598848

`A225402(n)+A225411(n)-A309646(n)`
-/

namespace A309602.P18133385398288598848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309646 n)

end

end A309602.P18133385398288598848

/-! ## A309602.P582961957743133613

`A225405(n)+A225408(n)-A309646(n)`
-/

namespace A309602.P582961957743133613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309646 n)

end

end A309602.P582961957743133613

/-! ## A309602.P17322304304434761109

`A225406(n)+A225409(n)-A309646(n)`
-/

namespace A309602.P17322304304434761109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309646 n)

end

end A309602.P17322304304434761109

/-! ## A309602.P14661637357596082506

`A309569(n)+A309641(n)-A309646(n)`
-/

namespace A309602.P14661637357596082506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309569 n + (A309641 n - A309646 n)

end

end A309602.P14661637357596082506

/-! ## A309602.P15521151823110557315

`A309570(n)+A309640(n)-A309646(n)`
-/

namespace A309602.P15521151823110557315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A309646 n)

end

end A309602.P15521151823110557315

/-! ## A309602.P1198561341491481306

`A309595(n)+A309614(n)-A309646(n)`
-/

namespace A309602.P1198561341491481306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A309646 n)

end

end A309602.P1198561341491481306

/-! ## A309602.P4286574080458248167

`A309610(n)+A309611(n)-A309646(n)`
-/

namespace A309602.P4286574080458248167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309610 n + (A309611 n - A309646 n)

end

end A309602.P4286574080458248167

/-! ## A309602.P5633598828432669694

`A309601(n)+A309647(n)-A309646(n)`
-/

namespace A309602.P5633598828432669694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A309646 n)

end

end A309602.P5633598828432669694

/-! ## A309602.P14714264349857728089

`A309603(n)+A309645(n)-A309646(n)`
-/

namespace A309602.P14714264349857728089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309603 n + (A309645 n - A309646 n)

end

end A309602.P14714264349857728089

/-! ## A309602.P1046462771943957844

`A309604(n)+A309644(n)-A309646(n)`
-/

namespace A309602.P1046462771943957844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A309646 n)

end

end A309602.P1046462771943957844

/-! ## A309602.P985763768416100386

`A309605(n)+A309643(n)-A309646(n)`
-/

namespace A309602.P985763768416100386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309605 n + (A309643 n - A309646 n)

end

end A309602.P985763768416100386

/-! ## A309602.P7764214456515728762

`A309606(n)+A309642(n)-A309646(n)`
-/

namespace A309602.P7764214456515728762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A309646 n)

end

end A309602.P7764214456515728762

/-! ## A309602.P2557740929749405519

`A153042(n+1)+A225412(n)-A309646(n)`
-/

namespace A309602.P2557740929749405519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309646 n)

end

end A309602.P2557740929749405519

/-! ## A309602.P11238381680273882709

`A225404(n+1)+A225407(n)-A309646(n)`
-/

namespace A309602.P11238381680273882709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309646 n)

end

end A309602.P11238381680273882709

/-!
# A309603: Digits of the 10-adic integer (-11/9)^(1/3).

The programs for A309603, there is no canonical definition to state claims against.
-/

/-! ## A309603.P12755162037076568520

`A225401(n)+A225410(n)-A309645(n)`
-/

namespace A309603.P12755162037076568520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309645 n)

end

end A309603.P12755162037076568520

/-! ## A309603.P10522173755804774736

`A225402(n)+A225411(n)-A309645(n)`
-/

namespace A309603.P10522173755804774736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309645 n)

end

end A309603.P10522173755804774736

/-! ## A309603.P15820386514276088522

`A225405(n)+A225408(n)-A309645(n)`
-/

namespace A309603.P15820386514276088522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309645 n)

end

end A309603.P15820386514276088522

/-! ## A309603.P18165347628505740488

`A225406(n)+A225409(n)-A309645(n)`
-/

namespace A309603.P18165347628505740488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309645 n)

end

end A309603.P18165347628505740488

/-! ## A309603.P1880294711639206656

`A153042(n+1)+A225412(n)-A309645(n)`
-/

namespace A309603.P1880294711639206656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309645 n)

end

end A309603.P1880294711639206656

/-! ## A309603.P15722319658578561719

`A225404(n+1)+A225407(n)-A309645(n)`
-/

namespace A309603.P15722319658578561719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309645 n)

end

end A309603.P15722319658578561719

/-!
# A309604: Digits of the 10-adic integer (43/9)^(1/3).

The programs for A309604, there is no canonical definition to state claims against.
-/

/-! ## A309604.P3104333092572812423

`A225401(n)+A225410(n)-A309644(n)`
-/

namespace A309604.P3104333092572812423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309644 n)

end

end A309604.P3104333092572812423

/-! ## A309604.P4422015925746881083

`A225402(n)+A225411(n)-A309644(n)`
-/

namespace A309604.P4422015925746881083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309644 n)

end

end A309604.P4422015925746881083

/-! ## A309604.P15603073567013788292

`A225405(n)+A225408(n)-A309644(n)`
-/

namespace A309604.P15603073567013788292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309644 n)

end

end A309604.P15603073567013788292

/-! ## A309604.P7172105079477011379

`A225406(n)+A225409(n)-A309644(n)`
-/

namespace A309604.P7172105079477011379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309644 n)

end

end A309604.P7172105079477011379

/-! ## A309604.P3928141948737990453

`A309570(n)+A309640(n)-A309644(n)`
-/

namespace A309604.P3928141948737990453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A309644 n)

end

end A309604.P3928141948737990453

/-! ## A309604.P4472658974881480186

`A309595(n)+A309614(n)-A309644(n)`
-/

namespace A309604.P4472658974881480186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A309644 n)

end

end A309604.P4472658974881480186

/-! ## A309604.P12874305290405553273

`A309602(n)+A309646(n)-A309644(n)`
-/

namespace A309604.P12874305290405553273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A309644 n)

end

end A309604.P12874305290405553273

/-! ## A309604.P6158289964070308768

`A153042(n+1)+A225412(n)-A309644(n)`
-/

namespace A309604.P6158289964070308768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309644 n)

end

end A309604.P6158289964070308768

/-!
# A309605: Digits of the 10-adic integer (61/9)^(1/3).

The programs for A309605, there is no canonical definition to state claims against.
-/

/-! ## A309605.P12629876126394109157

`A225401(n)+A225410(n)-A309643(n)`
-/

namespace A309605.P12629876126394109157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309643 n)

end

end A309605.P12629876126394109157

/-! ## A309605.P11894278119758868810

`A225402(n)+A225411(n)-A309643(n)`
-/

namespace A309605.P11894278119758868810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309643 n)

end

end A309605.P11894278119758868810

/-! ## A309605.P2490390974844075657

`A225405(n)+A225408(n)-A309643(n)`
-/

namespace A309605.P2490390974844075657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309643 n)

end

end A309605.P2490390974844075657

/-! ## A309605.P16057492608873434258

`A225406(n)+A225409(n)-A309643(n)`
-/

namespace A309605.P16057492608873434258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309643 n)

end

end A309605.P16057492608873434258

/-! ## A309605.P10574642520925865260

`A309569(n)+A309641(n)-A309643(n)`
-/

namespace A309605.P10574642520925865260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309569 n + (A309641 n - A309643 n)

end

end A309605.P10574642520925865260

/-! ## A309605.P18394437024944519506

`A309570(n)+A309640(n)-A309643(n)`
-/

namespace A309605.P18394437024944519506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A309643 n)

end

end A309605.P18394437024944519506

/-! ## A309605.P1032825712221770842

`A309595(n)+A309614(n)-A309643(n)`
-/

namespace A309605.P1032825712221770842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A309643 n)

end

end A309605.P1032825712221770842

/-! ## A309605.P6058824112146437875

`A309610(n)+A309611(n)-A309643(n)`
-/

namespace A309605.P6058824112146437875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309610 n + (A309611 n - A309643 n)

end

end A309605.P6058824112146437875

/-! ## A309605.P17940145191192327002

`A225404(n+1)+A225407(n)-A309643(n)`
-/

namespace A309605.P17940145191192327002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309643 n)

end

end A309605.P17940145191192327002

/-!
# A309606: Digits of the 10-adic integer (-7/3)^(1/3).

The programs for A309606, there is no canonical definition to state claims against.
-/

/-! ## A309606.P14626761708845603667

`A225401(n)+A225410(n)-A309642(n)`
-/

namespace A309606.P14626761708845603667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309642 n)

end

end A309606.P14626761708845603667

/-! ## A309606.P4334018240852189714

`A225402(n)+A225411(n)-A309642(n)`
-/

namespace A309606.P4334018240852189714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309642 n)

end

end A309606.P4334018240852189714

/-! ## A309606.P5175479329430447176

`A225405(n)+A225408(n)-A309642(n)`
-/

namespace A309606.P5175479329430447176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309642 n)

end

end A309606.P5175479329430447176

/-! ## A309606.P2879342424775872200

`A225406(n)+A225409(n)-A309642(n)`
-/

namespace A309606.P2879342424775872200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309642 n)

end

end A309606.P2879342424775872200

/-! ## A309606.P9366027846046626519

`A309569(n)+A309641(n)-A309642(n)`
-/

namespace A309606.P9366027846046626519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309569 n + (A309641 n - A309642 n)

end

end A309606.P9366027846046626519

/-! ## A309606.P16592094214915462305

`A309570(n)+A309640(n)-A309642(n)`
-/

namespace A309606.P16592094214915462305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A309642 n)

end

end A309606.P16592094214915462305

/-! ## A309606.P9235104223357330850

`A309595(n)+A309614(n)-A309642(n)`
-/

namespace A309606.P9235104223357330850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A309642 n)

end

end A309606.P9235104223357330850

/-! ## A309606.P7449075404078094605

`A309602(n)+A309646(n)-A309642(n)`
-/

namespace A309606.P7449075404078094605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A309642 n)

end

end A309606.P7449075404078094605

/-! ## A309606.P12163832246320673247

`A153042(n+1)+A225412(n)-A309642(n)`
-/

namespace A309606.P12163832246320673247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309642 n)

end

end A309606.P12163832246320673247

/-! ## A309606.P3945385507777538973

`A225404(n+1)+A225407(n)-A309642(n)`
-/

namespace A309606.P3945385507777538973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309642 n)

end

end A309606.P3945385507777538973

/-!
# A309607: Exponents k for which reversal(2^k-1) is prime.

The programs for A309607, there is no canonical definition to state claims against.
-/

/-! ## A309607.P14994604457612788378

`record[A072180(2*n%2*a(floor(n/2))+1)]` with `a(0)=2, a(1)=3`
-/

namespace A309607.P14994604457612788378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  A072180 (2 * (((n % 2 : ℕ) : ℤ) * f1 ⌊(n : ℚ) / 2⌋.toNat) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309607.P14994604457612788378

/-!
# A309608: Digits of the 10-adic integer (-13/9)^(1/3).

The programs for A309608, there is no canonical definition to state claims against.
-/

/-! ## A309608.P15043088155150313936

`A225401(n)+A225410(n)-A309613(n)`
-/

namespace A309608.P15043088155150313936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309613 n)

end

end A309608.P15043088155150313936

/-! ## A309608.P11663754417510186282

`A225402(n)+A225411(n)-A309613(n)`
-/

namespace A309608.P11663754417510186282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309613 n)

end

end A309608.P11663754417510186282

/-! ## A309608.P6665382872802968964

`A225405(n)+A225408(n)-A309613(n)`
-/

namespace A309608.P6665382872802968964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309613 n)

end

end A309608.P6665382872802968964

/-! ## A309608.P882649175707230140

`A225406(n)+A225409(n)-A309613(n)`
-/

namespace A309608.P882649175707230140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309613 n)

end

end A309608.P882649175707230140

/-! ## A309608.P7231509336533058718

`A225404(n+1)+A225407(n)-A309613(n)`
-/

namespace A309608.P7231509336533058718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309613 n)

end

end A309608.P7231509336533058718

/-!
# A309609: Digits of the 10-adic integer (23/9)^(1/3).

The programs for A309609, there is no canonical definition to state claims against.
-/

/-! ## A309609.P10263598863303279667

`A225402(n)+A225411(n)-A309612(n)`
-/

namespace A309609.P10263598863303279667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309612 n)

end

end A309609.P10263598863303279667

/-! ## A309609.P11618089134636615830

`A225405(n)+A225408(n)-A309612(n)`
-/

namespace A309609.P11618089134636615830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309612 n)

end

end A309609.P11618089134636615830

/-! ## A309609.P16482850708102519033

`A225406(n)+A225409(n)-A309612(n)`
-/

namespace A309609.P16482850708102519033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309612 n)

end

end A309609.P16482850708102519033

/-! ## A309609.P6029874196060445445

`A309600(n)+A309648(n)-A309612(n)`
-/

namespace A309609.P6029874196060445445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A309612 n)

end

end A309609.P6029874196060445445

/-! ## A309609.P8937107302774559692

`A309601(n)+A309647(n)-A309612(n)`
-/

namespace A309609.P8937107302774559692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A309612 n)

end

end A309609.P8937107302774559692

/-! ## A309609.P11377878280031336959

`A153042(n+1)+A225412(n)-A309612(n)`
-/

namespace A309609.P11377878280031336959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309612 n)

end

end A309609.P11377878280031336959

/-! ## A309609.P3638438711987798511

`A225404(n+1)+A225407(n)-A309612(n)`
-/

namespace A309609.P3638438711987798511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309612 n)

end

end A309609.P3638438711987798511

/-!
# A309610: Digits of the 10-adic integer (41/9)^(1/3).

The programs for A309610, there is no canonical definition to state claims against.
-/

/-! ## A309610.P3011269872192351214

`A225401(n)+A225410(n)-A309611(n)`
-/

namespace A309610.P3011269872192351214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309611 n)

end

end A309610.P3011269872192351214

/-! ## A309610.P4480700514322870318

`A225402(n)+A225411(n)-A309611(n)`
-/

namespace A309610.P4480700514322870318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309611 n)

end

end A309610.P4480700514322870318

/-! ## A309610.P13960427623745172645

`A225405(n)+A225408(n)-A309611(n)`
-/

namespace A309610.P13960427623745172645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309611 n)

end

end A309610.P13960427623745172645

/-! ## A309610.P15317564852246942808

`A225406(n)+A225409(n)-A309611(n)`
-/

namespace A309610.P15317564852246942808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309611 n)

end

end A309610.P15317564852246942808

/-! ## A309610.P9805478399316956270

`A153042(n+1)+A225412(n)-A309611(n)`
-/

namespace A309610.P9805478399316956270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309611 n)

end

end A309610.P9805478399316956270

/-!
# A309611: Digits of the 10-adic integer (-41/9)^(1/3).

The programs for A309611, there is no canonical definition to state claims against.
-/

/-! ## A309611.P2801245107387535925

`A225401(n)+A225410(n)-A309610(n)`
-/

namespace A309611.P2801245107387535925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309610 n)

end

end A309611.P2801245107387535925

/-! ## A309611.P16961282187189692417

`A225402(n)+A225411(n)-A309610(n)`
-/

namespace A309611.P16961282187189692417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309610 n)

end

end A309611.P16961282187189692417

/-! ## A309611.P12611049294402721197

`A225405(n)+A225408(n)-A309610(n)`
-/

namespace A309611.P12611049294402721197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309610 n)

end

end A309611.P12611049294402721197

/-! ## A309611.P16632368784828985253

`A225406(n)+A225409(n)-A309610(n)`
-/

namespace A309611.P16632368784828985253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309610 n)

end

end A309611.P16632368784828985253

/-! ## A309611.P12595613053861486708

`A309600(n)+A309648(n)-A309610(n)`
-/

namespace A309611.P12595613053861486708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A309610 n)

end

end A309611.P12595613053861486708

/-! ## A309611.P7114131026191357509

`A153042(n+1)+A225412(n)-A309610(n)`
-/

namespace A309611.P7114131026191357509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309610 n)

end

end A309611.P7114131026191357509

/-!
# A309612: Digits of the 10-adic integer (-23/9)^(1/3).

The programs for A309612, there is no canonical definition to state claims against.
-/

/-! ## A309612.P5508885260394009521

`A225402(n)+A225411(n)-A309609(n)`
-/

namespace A309612.P5508885260394009521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309609 n)

end

end A309612.P5508885260394009521

/-! ## A309612.P16181806574338284526

`A225405(n)+A225408(n)-A309609(n)`
-/

namespace A309612.P16181806574338284526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309609 n)

end

end A309612.P16181806574338284526

/-! ## A309612.P15891016973205588744

`A225406(n)+A225409(n)-A309609(n)`
-/

namespace A309612.P15891016973205588744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309609 n)

end

end A309612.P15891016973205588744

/-! ## A309612.P14768892778054217099

`A153042(n+1)+A225412(n)-A309609(n)`
-/

namespace A309612.P14768892778054217099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309609 n)

end

end A309612.P14768892778054217099

/-! ## A309612.P17057115074948388501

`A225404(n+1)+A225407(n)-A309609(n)`
-/

namespace A309612.P17057115074948388501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309609 n)

end

end A309612.P17057115074948388501

/-!
# A309613: Digits of the 10-adic integer (13/9)^(1/3).

The programs for A309613, there is no canonical definition to state claims against.
-/

/-! ## A309613.P3117929605447348302

`A225401(n)+A225410(n)-A309608(n)`
-/

namespace A309613.P3117929605447348302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309608 n)

end

end A309613.P3117929605447348302

/-! ## A309613.P4557183737613231070

`A225402(n)+A225411(n)-A309608(n)`
-/

namespace A309613.P4557183737613231070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309608 n)

end

end A309613.P4557183737613231070

/-! ## A309613.P5303513170913697646

`A225405(n)+A225408(n)-A309608(n)`
-/

namespace A309613.P5303513170913697646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309608 n)

end

end A309613.P5303513170913697646

/-! ## A309613.P10621109822064012090

`A225406(n)+A225409(n)-A309608(n)`
-/

namespace A309613.P10621109822064012090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309608 n)

end

end A309613.P10621109822064012090

/-! ## A309613.P7094217847919924546

`A309601(n)+A309647(n)-A309608(n)`
-/

namespace A309613.P7094217847919924546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A309608 n)

end

end A309613.P7094217847919924546

/-! ## A309613.P17085231014867721338

`A309602(n)+A309646(n)-A309608(n)`
-/

namespace A309613.P17085231014867721338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A309608 n)

end

end A309613.P17085231014867721338

/-! ## A309613.P14143476757723248578

`A225404(n+1)+A225407(n)-A309608(n)`
-/

namespace A309613.P14143476757723248578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309608 n)

end

end A309613.P14143476757723248578

/-!
# A309614: Digits of the 10-adic integer (31/9)^(1/3).

The programs for A309614, there is no canonical definition to state claims against.
-/

/-! ## A309614.P8357292199554955849

`A225401(n)+A225410(n)-A309595(n)`
-/

namespace A309614.P8357292199554955849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309595 n)

end

end A309614.P8357292199554955849

/-! ## A309614.P8825548312129238751

`A225402(n)+A225411(n)-A309595(n)`
-/

namespace A309614.P8825548312129238751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309595 n)

end

end A309614.P8825548312129238751

/-! ## A309614.P11607010321295953330

`A225405(n)+A225408(n)-A309595(n)`
-/

namespace A309614.P11607010321295953330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309595 n)

end

end A309614.P11607010321295953330

/-! ## A309614.P8072226520298436232

`A225406(n)+A225409(n)-A309595(n)`
-/

namespace A309614.P8072226520298436232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309595 n)

end

end A309614.P8072226520298436232

/-! ## A309614.P16880107975640631131

`A153042(n+1)+A225412(n)-A309595(n)`
-/

namespace A309614.P16880107975640631131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309595 n)

end

end A309614.P16880107975640631131

/-! ## A309614.P3770535068857840327

`A225404(n+1)+A225407(n)-A309595(n)`
-/

namespace A309614.P3770535068857840327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309595 n)

end

end A309614.P3770535068857840327

/-!
# A309615: Number of T_0 set-systems covering n vertices that are closed under intersection.

The programs for A309615, there is no canonical definition to state claims against.
-/

/-! ## A309615.P3721046859623385301

`A326943(n)-A326944(n)`
-/

namespace A309615.P3721046859623385301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326943 n - A326944 n

end

end A309615.P3721046859623385301

/-! ## A309615.P6961541725711662948

`A028310(n)*A326944(abs(1-n))`
-/

namespace A309615.P6961541725711662948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A326944 |1 - (n : ℤ)|.toNat

end

end A309615.P6961541725711662948

/-! ## A309615.P6301156099085800960

`round(sqrt(n²+1))*A326944(A102670(n))`
-/

namespace A309615.P6301156099085800960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A326944 (A102670 n).toNat

end

end A309615.P6301156099085800960

/-! ## A309615.P3211642665955733406

`2*A334253(n)-A326944(n)`
-/

namespace A309615.P3211642665955733406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334253 n - A326944 n

end

end A309615.P3211642665955733406

/-!
# A309616: a(n) is the number of ways to represent 2*n in the decibinary system.

The programs for A309616, there is no canonical definition to state claims against.
-/

/-! ## A309616.P4518561508515529094

`∑[A007728(n)]`
-/

namespace A309616.P4518561508515529094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309616.P4518561508515529094

/-! ## A309616.P10761430831195316153

`A007728(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A309616.P10761430831195316153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007728 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A309616.P10761430831195316153

/-! ## A309616.P9472425106365216949

`∑[A072170(∑[n+3]+6)]`
-/

namespace A309616.P9472425106365216949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (∑ j ∈ Finset.range (n + 1), f2 j + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309616.P9472425106365216949

/-! ## A309616.P8145177564478803458

`A072170(A167614(n+2))+a(n-1)` with `a(0)=1`
-/

namespace A309616.P8145177564478803458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072170 (A167614 (n + 2)).toNat + a (n - 1)

end

end A309616.P8145177564478803458

/-! ## A309616.P12604341738024807032

`A072170(A152950(n+4))+a(n-1)` with `a(0)=1`
-/

namespace A309616.P12604341738024807032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072170 (A152950 (n + 4)).toNat + a (n - 1)

end

end A309616.P12604341738024807032

/-! ## A309616.P9941817439313033198

`A028310(a(n-1))+A007728(n)` with `a(0)=1`
-/

namespace A309616.P9941817439313033198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A007728 n

end

end A309616.P9941817439313033198

/-!
# A309618: a(n) = Sum_{k=0..floor(n/2)} k! * 2^k * (n - 2*k)!.

The programs for A309618, there is no canonical definition to state claims against.
-/

/-! ## A309618.P2455437600638774179

`A271708(∑[char[1]+n]+1)+A000142(n)`
-/

namespace A309618.P2455437600638774179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271708 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A000142 n

end

end A309618.P2455437600638774179

/-! ## A309618.P6533020532159971277

`A139555((n+1)!-n+1)`
-/

namespace A309618.P6533020532159971277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 ((Nat.factorial (n + 1) : ℤ) - (n : ℤ) + 1).toNat

end

end A309618.P6533020532159971277

/-!
# A309619: a(n) = Sum_{k=0..floor(n/2)} k! * (n - 2*k)!.

The programs for A309619, there is no canonical definition to state claims against.
-/

/-! ## A309619.P11172984900408858284

`A235358(A000522(n))+A136580(n)`
-/

namespace A309619.P11172984900408858284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235358 (A000522 n).toNat + A136580 n

end

end A309619.P11172984900408858284

/-! ## A309619.P15750049375271986489

`A219923(A270786(n))+A000142(n)`
-/

namespace A309619.P15750049375271986489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219923 (A270786 n).toNat + A000142 n

end

end A309619.P15750049375271986489

/-! ## A309619.P16189520326182380197

`A237657(A255906(n))+A000142(n)`
-/

namespace A309619.P16189520326182380197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237657 (A255906 n).toNat + A000142 n

end

end A309619.P16189520326182380197

/-!
# A309621: Numbers k such that the number of divisors of k is equal to the number of power-of-two-divisors of the sum of divisors of k.

The programs for A309621, there is no canonical definition to state claims against.
-/

/-! ## A309621.P9726038175162060713

`eq[Δ[A006218(n)], A286357(n+1)]+1`
-/

namespace A309621.P9726038175162060713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A309621.P9726038175162060713

/-! ## A309621.P7208405457997812574

`eq[A000005(n+1), A286357(n+1)]+1`
-/

namespace A309621.P7208405457997812574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309621.P7208405457997812574

/-! ## A309621.P7970325718522785232

`eq[A336937(n+1)+1, A000005(n+1)]+1`
-/

namespace A309621.P7970325718522785232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309621.P7970325718522785232

/-! ## A309621.P10774545368945318939

`eq[val(A008457(n+1), 2), A032741(n+1)]+1`
-/

namespace A309621.P10774545368945318939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008457 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309621.P10774545368945318939

/-! ## A309621.P17726024902136261849

`eq[A000005(n+1), A001511(A000203(n+1))]+1`
-/

namespace A309621.P17726024902136261849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309621.P17726024902136261849

/-! ## A309621.P5077018264254351

`eq[A000005(n+1), A001511(A000593(n+1))]+1`
-/

namespace A309621.P5077018264254351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000593 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309621.P5077018264254351

/-!
# A309624: Sum of the odd parts in the partitions of n into 7 parts.

The programs for A309624, there is no canonical definition to state claims against.
-/

/-! ## A309624.P5614553339875795943

`A308926(n)-A309626(n)`
-/

namespace A309624.P5614553339875795943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 n - A309626 n

end

end A309624.P5614553339875795943

/-! ## A309624.P3830978626192552409

`n*A026813(n)-A309626(n)`
-/

namespace A309624.P3830978626192552409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026813 n - A309626 n

end

end A309624.P3830978626192552409

/-! ## A309624.P2663898449406531295

`n*(A008636(n)-A001402(n))-A309626(n)`
-/

namespace A309624.P2663898449406531295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008636 n - A001402 n) - A309626 n

end

end A309624.P2663898449406531295

/-! ## A309624.P14993569453769109096

`n*(A001996(n)-A060026(n))-A309626(n)`
-/

namespace A309624.P14993569453769109096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001996 n - A060026 n) - A309626 n

end

end A309624.P14993569453769109096

/-! ## A309624.P3319042833172013092

`n*(∑[A001996(n)]-A001402(n))-A309626(n)`
-/

namespace A309624.P3319042833172013092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A001402 n) - A309626 n

end

end A309624.P3319042833172013092

/-!
# A309625: Number of even parts in the partitions of n into 7 parts.

The programs for A309625, there is no canonical definition to state claims against.
-/

/-! ## A309625.P10937338543606475437

`A073719(A132916(n+1))`
-/

namespace A309625.P10937338543606475437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073719 (A132916 (n + 1)).toNat

end

end A309625.P10937338543606475437

/-! ## A309625.P4477715385015837529

`A309630(A043320(n+1))`
-/

namespace A309625.P4477715385015837529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309630 (A043320 (n + 1)).toNat

end

end A309625.P4477715385015837529

/-! ## A309625.P6043815303430609249

`A309630(A044917(n+1))`
-/

namespace A309625.P6043815303430609249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309630 (A044917 (n + 1)).toNat

end

end A309625.P6043815303430609249

/-! ## A309625.P8086130413377451523

`A309630(A161953(n+1))`
-/

namespace A309625.P8086130413377451523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309630 (A161953 (n + 1)).toNat

end

end A309625.P8086130413377451523

/-! ## A309625.P5924366638102509201

`A309630(A187829(n+1))`
-/

namespace A309625.P5924366638102509201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309630 (A187829 (n + 1)).toNat

end

end A309625.P5924366638102509201

/-!
# A309626: Sum of the even parts in the partitions of n into 7 parts.

The programs for A309626, there is no canonical definition to state claims against.
-/

/-! ## A309626.P14357474124947377901

`A308926(n)-A309624(n)`
-/

namespace A309626.P14357474124947377901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 n - A309624 n

end

end A309626.P14357474124947377901

/-! ## A309626.P5660022275127409761

`n*A026813(n)-A309624(n)`
-/

namespace A309626.P5660022275127409761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026813 n - A309624 n

end

end A309626.P5660022275127409761

/-! ## A309626.P15792651950568562448

`n*(A008636(n)-A001402(n))-A309624(n)`
-/

namespace A309626.P15792651950568562448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008636 n - A001402 n) - A309624 n

end

end A309626.P15792651950568562448

/-! ## A309626.P7043275355002828751

`n*(A001996(n)-A060026(n))-A309624(n)`
-/

namespace A309626.P7043275355002828751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001996 n - A060026 n) - A309624 n

end

end A309626.P7043275355002828751

/-! ## A309626.P15247169436000823918

`n*(∑[A001996(n)]-A001402(n))-A309624(n)`
-/

namespace A309626.P15247169436000823918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A001402 n) - A309624 n

end

end A309626.P15247169436000823918

/-!
# A309627: Starting numbers k such that the trajectory of k under the map x -> A133058(x) joins A133058.

The programs for A309627, there is no canonical definition to state claims against.
-/

/-! ## A309627.P16216194246719905936

`A274138(A121707(n+1))+∑[char[1]+n]+1`
-/

namespace A309627.P16216194246719905936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274138 (A121707 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A309627.P16216194246719905936

/-!
# A309629: Sum of the odd parts in the partitions of n into 8 parts.

The programs for A309629, there is no canonical definition to state claims against.
-/

/-! ## A309629.P8325827438812365723

`A308989(n)-A309632(n)`
-/

namespace A309629.P8325827438812365723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n - A309632 n

end

end A309629.P8325827438812365723

/-! ## A309629.P16106996421392228955

`n*A026814(n)-A309632(n)`
-/

namespace A309629.P16106996421392228955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026814 n - A309632 n

end

end A309629.P16106996421392228955

/-! ## A309629.P14175720051341359348

`n*(A008637(n)-A008636(n))-A309632(n)`
-/

namespace A309629.P14175720051341359348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008637 n - A008636 n) - A309632 n

end

end A309629.P14175720051341359348

/-! ## A309629.P7234014783898601276

`n*(A266776(n)-A060027(n))-A309632(n)`
-/

namespace A309629.P7234014783898601276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266776 n - A060027 n) - A309632 n

end

end A309629.P7234014783898601276

/-! ## A309629.P13788592888549983903

`n*(A008637(n)-∑[A001996(n)])-A309632(n)`
-/

namespace A309629.P13788592888549983903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008637 n - ∑ j ∈ Finset.range (n + 1), f1 j) - A309632 n

end

end A309629.P13788592888549983903

/-!
# A309630: Number of even parts in the partitions of n into 8 parts.

The programs for A309630, there is no canonical definition to state claims against.
-/

/-! ## A309630.P5389059072900358113

`A097448(A309658(n+1))`
-/

namespace A309630.P5389059072900358113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A309658 (n + 1)).toNat

end

end A309630.P5389059072900358113

/-! ## A309630.P3865698366582507106

`A309662(A151764(n+2))`
-/

namespace A309630.P3865698366582507106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309662 (A151764 (n + 2)).toNat

end

end A309630.P3865698366582507106

/-! ## A309630.P13530834640319587822

`A309658(A000005(2^n))`
-/

namespace A309630.P13530834640319587822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309658 (A000005 (2 ^ n)).toNat

end

end A309630.P13530834640319587822

/-! ## A309630.P6306266467606109580

`A309662(A242474(n+3)-1)`
-/

namespace A309630.P6306266467606109580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309662 (A242474 (n + 3) - 1).toNat

end

end A309630.P6306266467606109580

/-! ## A309630.P4280403738584069823

`A309658(A242474(n+3)-2)`
-/

namespace A309630.P4280403738584069823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309658 (A242474 (n + 3) - 2).toNat

end

end A309630.P4280403738584069823

/-!
# A309632: Sum of the even parts of the partitions of n into 8 parts.

The programs for A309632, there is no canonical definition to state claims against.
-/

/-! ## A309632.P18137568801754183416

`A308989(n)-A309629(n)`
-/

namespace A309632.P18137568801754183416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n - A309629 n

end

end A309632.P18137568801754183416

/-! ## A309632.P4525335294331201988

`n*A026814(n)-A309629(n)`
-/

namespace A309632.P4525335294331201988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026814 n - A309629 n

end

end A309632.P4525335294331201988

/-! ## A309632.P6082647005310355030

`n*(A008637(n)-A008636(n))-A309629(n)`
-/

namespace A309632.P6082647005310355030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008637 n - A008636 n) - A309629 n

end

end A309632.P6082647005310355030

/-! ## A309632.P3303099964372688722

`n*(A266776(n)-A060027(n))-A309629(n)`
-/

namespace A309632.P3303099964372688722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266776 n - A060027 n) - A309629 n

end

end A309632.P3303099964372688722

/-! ## A309632.P13523356517309439270

`n*(A008637(n)-∑[A001996(n)])-A309629(n)`
-/

namespace A309632.P13523356517309439270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008637 n - ∑ j ∈ Finset.range (n + 1), f1 j) - A309629 n

end

end A309632.P13523356517309439270

/-!
# A309633: G.f.: x * Sum_{k>=1} x^k / (1 - a(k)*x^k).

The programs for A309633, there is no canonical definition to state claims against.
-/

/-! ## A309633.P8776504914061843445

`A309634(n+1)+A055641(A000204(n+1))`
-/

namespace A309633.P8776504914061843445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309634 (n + 1) + A055641 (A000204 (n + 1)).toNat

end

end A309633.P8776504914061843445

/-! ## A309633.P439503041531236364

`A309634(n+1)+A206499(A037124(n+1))`
-/

namespace A309633.P439503041531236364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309634 (n + 1) + A206499 (A037124 (n + 1)).toNat

end

end A309633.P439503041531236364

/-! ## A309633.P8881759417153395758

`A055641(A000204(n+1))+A333248((n+1)^3)+A331991(n+1)`
-/

namespace A309633.P8881759417153395758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000204 (n + 1)).toNat + (A333248 ((n + 1) ^ 3) + A331991 (n + 1))

end

end A309633.P8881759417153395758

/-! ## A309633.P10983286804698540574

`A206499(A037124(n+1))+A333248((n+1)^3)+A331991(n+1)`
-/

namespace A309633.P10983286804698540574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (A037124 (n + 1)).toNat + (A333248 ((n + 1) ^ 3) + A331991 (n + 1))

end

end A309633.P10983286804698540574

/-! ## A309633.P12804083821534303933

`A309634(A187829(n+1))`
-/

namespace A309633.P12804083821534303933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309634 (A187829 (n + 1)).toNat

end

end A309633.P12804083821534303933

/-!
# A309634: G.f.: x * Sum_{k>=1} x^k / (1 - x^k)^a(k).

The programs for A309634, there is no canonical definition to state claims against.
-/

/-! ## A309634.P5680505862481494950

`A333248((n+1)^3)+A331991(n+1)`
-/

namespace A309634.P5680505862481494950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333248 ((n + 1) ^ 3) + A331991 (n + 1)

end

end A309634.P5680505862481494950

/-! ## A309634.P6876668069449608973

`A309633(n+1)-A055641(A000204(n+1))`
-/

namespace A309634.P6876668069449608973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309633 (n + 1) - A055641 (A000204 (n + 1)).toNat

end

end A309634.P6876668069449608973

/-! ## A309634.P391374375357792062

`A309633(n+1)-A206499(A037124(n+1))`
-/

namespace A309634.P391374375357792062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309633 (n + 1) - A206499 (A037124 (n + 1)).toNat

end

end A309634.P391374375357792062

/-! ## A309634.P3007556888003032687

`A351465(A233583(n+1))%A300665(n)`
-/

namespace A309634.P3007556888003032687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351465 (A233583 (n + 1)).toNat) (A300665 n)

end

end A309634.P3007556888003032687

/-! ## A309634.P3239463209759308271

`A309633(n+1)-A025465(4*n^3)`
-/

namespace A309634.P3239463209759308271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309633 (n + 1) - A025465 (4 * n ^ 3)

end

end A309634.P3239463209759308271

/-!
# A309635: The number of non-equivalent distinguishing coloring partitions of the path on n vertices (n>=1) with at most k parts (k>=1). Square array read by descending antidiagonals: the rows are indexed by n, the number of vertices of the path, and the columns are indexed by k, the number of parts.

The programs for A309635, there is no canonical definition to state claims against.
-/

/-! ## A309635.P10325214268046936619

`A102382(A294212(n))*A286653(n)`
-/

namespace A309635.P10325214268046936619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 (A294212 n).toNat * A286653 n

end

end A309635.P10325214268046936619

/-! ## A309635.P9036733325450428676

`A000120(A292745(n))*A102382(A294212(n))`
-/

namespace A309635.P9036733325450428676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292745 n).toNat * A102382 (A294212 n).toNat

end

end A309635.P9036733325450428676

/-! ## A309635.P8149313910288524697

`A000120(A293108(n))*A102382(A294212(n))`
-/

namespace A309635.P8149313910288524697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A293108 n).toNat * A102382 (A294212 n).toNat

end

end A309635.P8149313910288524697

/-! ## A309635.P2434926604897237619

`A029836(A293202(n))*A102382(A294212(n))`
-/

namespace A309635.P2434926604897237619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029836 (A293202 n).toNat * A102382 (A294212 n).toNat

end

end A309635.P2434926604897237619

/-! ## A309635.P8709804088446871394

`A325678(lcm(A262163(n)², A306209(n)))`
-/

namespace A309635.P8709804088446871394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Int.lcm (A262163 n ^ 2) (A306209 n))

end

end A309635.P8709804088446871394

/-!
# A309636: a(1) = 3, a(2) = 1, a(3) = 4, a(4) = 2, a(5) = 5; a(6) = 3; a(n) = a(n-a(n-1)) + a(n-a(n-4)) for n > 6.

The programs for A309636, the canonical program `A309636.P260262480146181032` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309636 has offset 1).

The definition of A309636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-4))` (program `A309636.P260262480146181032`, by `A309636.P260262480146181032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309636.P260262480146181032

`a(n-a(n-1))+a(n-a(n-4))` with `a(0)=3, a(1)=1, a(2)=4, a(3)=2, a(4)=5, a(5)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A309636

/-- `a(n-a(n-1))+a(n-a(n-4))` -/
def P260262480146181032.Spec : Prop :=
  ∀ n, (P260262480146181032.a n : ℤ) = A309636 (n + 1)

theorem P260262480146181032.correct : P260262480146181032.Spec := by
  intro n
  simp only [A309636, Nat.add_sub_cancel]

end A309636

/-! ## A309636.P7950508247773839099

`A084964(n)+A327449(n+1)!`
-/

namespace A309636.P7950508247773839099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n + (Nat.factorial (A327449 (n + 1)).toNat : ℤ)

end

end A309636.P7950508247773839099

namespace A309636

/-- `A084964(n)+A327449(n+1)!` -/
def P7950508247773839099.Spec : Prop :=
  ∀ n, P7950508247773839099.a n = A309636 (n + 1)

end A309636

/-! ## A309636.P15997225875452986763

`A052938(A187829(n+1))-Δ[A106747(n)]`
-/

namespace A309636.P15997225875452986763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A309636.P15997225875452986763

namespace A309636

/-- `A052938(A187829(n+1))-Δ[A106747(n)]` -/
def P15997225875452986763.Spec : Prop :=
  ∀ n, P15997225875452986763.a n = A309636 (n + 1)

end A309636

/-! ## A309636.P5272036596251288631

`(A097065(n)+2)*A288120(∑[A288141(n)])`
-/

namespace A309636.P5272036596251288631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097065 n + 2) * A288120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309636.P5272036596251288631

namespace A309636

/-- `(A097065(n)+2)*A288120(∑[A288141(n)])` -/
def P5272036596251288631.Spec : Prop :=
  ∀ n, P5272036596251288631.a n = A309636 (n + 1)

end A309636

/-! ## A309636.P3212440444948811595

`A084964(n+2)*A331852(A327449(n+1))`
-/

namespace A309636.P3212440444948811595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (n + 2) * A331852 (A327449 (n + 1)).toNat

end

end A309636.P3212440444948811595

namespace A309636

/-- `A084964(n+2)*A331852(A327449(n+1))` -/
def P3212440444948811595.Spec : Prop :=
  ∀ n, P3212440444948811595.a n = A309636 (n + 1)

end A309636

/-!
# A309637: G.f. satisfies A((A(x) - x)/x^2) = x, this sequence gives the coefficients at odd powers only.

The programs for A309637, there is no canonical definition to state claims against.
-/

/-! ## A309637.P13324832107534134245

`A269947(2*(n+1))-A085862(A269907(n))`
-/

namespace A309637.P13324832107534134245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (2 * (n + 1)) - A085862 (A269907 n).toNat

end

end A309637.P13324832107534134245

/-! ## A309637.P6343321950551452793

`xor(A009317(n), A137252(A352922(3*n+1)))`
-/

namespace A309637.P6343321950551452793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009317 n) (A137252 (A352922 (3 * n + 1)).toNat)

end

end A309637.P6343321950551452793

/-!
# A309638: Nearest integer to 1/F(1/x), where F(x) is the Dickman function.

The programs for A309638, there is no canonical definition to state claims against.
-/

/-! ## A309638.P13708260745019778967

`Δ[A057361(A002864(2*n+3))]`
-/

namespace A309638.P13708260745019778967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A002864 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309638.P13708260745019778967

/-!
# A309639: Index of the least harmonic number H_i whose denominator (A002805) is divisible by n.

The programs for A309639, there is no canonical definition to state claims against.
-/

/-! ## A309639.P18198937299422831303

`1-A330734(n+1)+n`
-/

namespace A309639.P18198937299422831303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A330734 (n + 1) + (n : ℤ)

end

end A309639.P18198937299422831303

/-! ## A309639.P5430316415225115319

`n-A023443(A330734(n+1))`
-/

namespace A309639.P5430316415225115319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A330734 (n + 1)).toNat

end

end A309639.P5430316415225115319

/-! ## A309639.P17908966741931421009

`-(A330734(n+1)+A001478(n+1))`
-/

namespace A309639.P17908966741931421009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A330734 (n + 1) + A001478 (n + 1))

end

end A309639.P17908966741931421009

/-! ## A309639.P496026872999580581

`-A330734(n+1)%A000015(n+1)+n+1`
-/

namespace A309639.P496026872999580581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A330734 (n + 1)) (A000015 (n + 1)) + (n + 1 : ℤ)

end

end A309639.P496026872999580581

/-! ## A309639.P7525642699782100022

`A001489(A330734(n+1))+A000027(n+1)`
-/

namespace A309639.P7525642699782100022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A330734 (n + 1)).toNat + A000027 (n + 1)

end

end A309639.P7525642699782100022

/-! ## A309639.P10320146599381556745

`A008619(2*n)-A330734(A008619(2*n))`
-/

namespace A309639.P10320146599381556745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A330734 (A008619 (2 * n)).toNat

end

end A309639.P10320146599381556745

/-! ## A309639.P9144965830156935680

`A110545(A066043(n+1))`
-/

namespace A309639.P9144965830156935680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A066043 (n + 1)).toNat

end

end A309639.P9144965830156935680

/-! ## A309639.P16842311025582833393

`A004736(A330734(n+1)+∑[n]+1)`
-/

namespace A309639.P16842311025582833393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A330734 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A309639.P16842311025582833393

/-! ## A309639.P14717774063380535965

`A004736(A330734(n+1)+A000124(n))`
-/

namespace A309639.P14717774063380535965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A330734 (n + 1) + A000124 n).toNat

end

end A309639.P14717774063380535965

/-! ## A309639.P9582586121303252341

`A110545(A066678(n+1))`
-/

namespace A309639.P9582586121303252341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A066678 (n + 1)).toNat

end

end A309639.P9582586121303252341

/-!
# A309640: Digits of the 10-adic integer (-17/3)^(1/3).

The programs for A309640, there is no canonical definition to state claims against.
-/

/-! ## A309640.P112514616529365815

`A225402(n)+A225411(n)-A309570(n)`
-/

namespace A309640.P112514616529365815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309570 n)

end

end A309640.P112514616529365815

/-! ## A309640.P2981609093782889655

`A225405(n)+A225408(n)-A309570(n)`
-/

namespace A309640.P2981609093782889655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309570 n)

end

end A309640.P2981609093782889655

/-! ## A309640.P1569143269047420443

`A225406(n)+A225409(n)-A309570(n)`
-/

namespace A309640.P1569143269047420443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309570 n)

end

end A309640.P1569143269047420443

/-! ## A309640.P5477285018766419699

`A153042(n+1)+A225412(n)-A309570(n)`
-/

namespace A309640.P5477285018766419699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309570 n)

end

end A309640.P5477285018766419699

/-! ## A309640.P4884999696101536815

`A225404(n+1)+A225407(n)-A309570(n)`
-/

namespace A309640.P4884999696101536815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309570 n)

end

end A309640.P4884999696101536815

/-!
# A309641: Digits of the 10-adic integer (-11/3)^(1/3).

The programs for A309641, there is no canonical definition to state claims against.
-/

/-! ## A309641.P1177652812447868913

`A225402(n)+A225411(n)-A309569(n)`
-/

namespace A309641.P1177652812447868913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309569 n)

end

end A309641.P1177652812447868913

/-! ## A309641.P3104816222475034741

`A225405(n)+A225408(n)-A309569(n)`
-/

namespace A309641.P3104816222475034741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309569 n)

end

end A309641.P3104816222475034741

/-! ## A309641.P12059379611599141693

`A225406(n)+A225409(n)-A309569(n)`
-/

namespace A309641.P12059379611599141693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309569 n)

end

end A309641.P12059379611599141693

/-! ## A309641.P15408623932116235936

`A153042(n+1)+A225412(n)-A309569(n)`
-/

namespace A309641.P15408623932116235936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309569 n)

end

end A309641.P15408623932116235936

/-! ## A309641.P13403874763369139476

`A225404(n+1)+A225407(n)-A309569(n)`
-/

namespace A309641.P13403874763369139476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309569 n)

end

end A309641.P13403874763369139476

/-!
# A309642: Digits of the 10-adic integer (7/3)^(1/3).

The programs for A309642, there is no canonical definition to state claims against.
-/

/-! ## A309642.P16935281465826134709

`A225401(n)+A225410(n)-A309606(n)`
-/

namespace A309642.P16935281465826134709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309606 n)

end

end A309642.P16935281465826134709

/-! ## A309642.P812045285005875324

`A225402(n)+A225411(n)-A309606(n)`
-/

namespace A309642.P812045285005875324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309606 n)

end

end A309642.P812045285005875324

/-! ## A309642.P4087732999029469233

`A225405(n)+A225408(n)-A309606(n)`
-/

namespace A309642.P4087732999029469233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309606 n)

end

end A309642.P4087732999029469233

/-! ## A309642.P11247343824273788659

`A225406(n)+A225409(n)-A309606(n)`
-/

namespace A309642.P11247343824273788659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309606 n)

end

end A309642.P11247343824273788659

/-! ## A309642.P16701467915537713659

`A153042(n+1)+A225412(n)-A309606(n)`
-/

namespace A309642.P16701467915537713659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309606 n)

end

end A309642.P16701467915537713659

/-! ## A309642.P17584169766355886101

`A225404(n+1)+A225407(n)-A309606(n)`
-/

namespace A309642.P17584169766355886101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309606 n)

end

end A309642.P17584169766355886101

/-!
# A309643: Digits of the 10-adic integer (-61/9)^(1/3).

The programs for A309643, there is no canonical definition to state claims against.
-/

/-! ## A309643.P17647886412082917734

`A225401(n)+A225410(n)-A309605(n)`
-/

namespace A309643.P17647886412082917734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309605 n)

end

end A309643.P17647886412082917734

/-! ## A309643.P18186499517192292262

`A225402(n)+A225411(n)-A309605(n)`
-/

namespace A309643.P18186499517192292262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309605 n)

end

end A309643.P18186499517192292262

/-! ## A309643.P10333594820148505318

`A225405(n)+A225408(n)-A309605(n)`
-/

namespace A309643.P10333594820148505318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309605 n)

end

end A309643.P10333594820148505318

/-! ## A309643.P15081425348155569934

`A225406(n)+A225409(n)-A309605(n)`
-/

namespace A309643.P15081425348155569934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309605 n)

end

end A309643.P15081425348155569934

/-! ## A309643.P7433520830068601406

`A309600(n)+A309648(n)-A309605(n)`
-/

namespace A309643.P7433520830068601406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A309605 n)

end

end A309643.P7433520830068601406

/-! ## A309643.P6636159633879206992

`A309601(n)+A309647(n)-A309605(n)`
-/

namespace A309643.P6636159633879206992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A309605 n)

end

end A309643.P6636159633879206992

/-! ## A309643.P4240574736550735892

`A225404(n+1)+A225407(n)-A309605(n)`
-/

namespace A309643.P4240574736550735892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309605 n)

end

end A309643.P4240574736550735892

/-!
# A309644: Digits of the 10-adic integer (-43/9)^(1/3).

The programs for A309644, there is no canonical definition to state claims against.
-/

/-! ## A309644.P1965527308737391676

`A225401(n)+A225410(n)-A309604(n)`
-/

namespace A309644.P1965527308737391676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309604 n)

end

end A309644.P1965527308737391676

/-! ## A309644.P878092607087797349

`A225402(n)+A225411(n)-A309604(n)`
-/

namespace A309644.P878092607087797349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309604 n)

end

end A309644.P878092607087797349

/-! ## A309644.P7777712238771688172

`A225405(n)+A225408(n)-A309604(n)`
-/

namespace A309644.P7777712238771688172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309604 n)

end

end A309644.P7777712238771688172

/-! ## A309644.P14048109893985890711

`A225406(n)+A225409(n)-A309604(n)`
-/

namespace A309644.P14048109893985890711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309604 n)

end

end A309644.P14048109893985890711

/-! ## A309644.P2918848105661024974

`A153042(n+1)+A225412(n)-A309604(n)`
-/

namespace A309644.P2918848105661024974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309604 n)

end

end A309644.P2918848105661024974

/-!
# A309645: Digits of the 10-adic integer (11/9)^(1/3).

The programs for A309645, there is no canonical definition to state claims against.
-/

/-! ## A309645.P4635112741736479833

`A225401(n)+A225410(n)-A309603(n)`
-/

namespace A309645.P4635112741736479833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309603 n)

end

end A309645.P4635112741736479833

/-! ## A309645.P8948069103825730351

`A225402(n)+A225411(n)-A309603(n)`
-/

namespace A309645.P8948069103825730351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309603 n)

end

end A309645.P8948069103825730351

/-! ## A309645.P16457028815616451652

`A225405(n)+A225408(n)-A309603(n)`
-/

namespace A309645.P16457028815616451652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309603 n)

end

end A309645.P16457028815616451652

/-! ## A309645.P15475039126942591583

`A225406(n)+A225409(n)-A309603(n)`
-/

namespace A309645.P15475039126942591583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309603 n)

end

end A309645.P15475039126942591583

/-! ## A309645.P13760945620430927408

`A153042(n+1)+A225412(n)-A309603(n)`
-/

namespace A309645.P13760945620430927408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309603 n)

end

end A309645.P13760945620430927408

/-! ## A309645.P2644044615500403575

`A225404(n+1)+A225407(n)-A309603(n)`
-/

namespace A309645.P2644044615500403575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309603 n)

end

end A309645.P2644044615500403575

/-!
# A309646: Digits of the 10-adic integer (-71/9)^(1/3).

The programs for A309646, there is no canonical definition to state claims against.
-/

/-! ## A309646.P4144135520644388990

`A225401(n)+A225410(n)-A309602(n)`
-/

namespace A309646.P4144135520644388990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309602 n)

end

end A309646.P4144135520644388990

/-! ## A309646.P9563137637393759628

`A225402(n)+A225411(n)-A309602(n)`
-/

namespace A309646.P9563137637393759628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309602 n)

end

end A309646.P9563137637393759628

/-! ## A309646.P4976899543904393382

`A225405(n)+A225408(n)-A309602(n)`
-/

namespace A309646.P4976899543904393382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309602 n)

end

end A309646.P4976899543904393382

/-! ## A309646.P7089247526537327046

`A225406(n)+A225409(n)-A309602(n)`
-/

namespace A309646.P7089247526537327046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309602 n)

end

end A309646.P7089247526537327046

/-! ## A309646.P4248231865251143829

`A309600(n)+A309648(n)-A309602(n)`
-/

namespace A309646.P4248231865251143829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 n + (A309648 n - A309602 n)

end

end A309646.P4248231865251143829

/-! ## A309646.P1311741163420644723

`A309601(n)+A309647(n)-A309602(n)`
-/

namespace A309646.P1311741163420644723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A309602 n)

end

end A309646.P1311741163420644723

/-! ## A309646.P13850104255373591498

`A153042(n+1)+A225412(n)-A309602(n)`
-/

namespace A309646.P13850104255373591498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309602 n)

end

end A309646.P13850104255373591498

/-! ## A309646.P5085673272106209623

`A225404(n+1)+A225407(n)-A309602(n)`
-/

namespace A309646.P5085673272106209623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309602 n)

end

end A309646.P5085673272106209623

/-!
# A309647: Digits of the 10-adic integer (-53/9)^(1/3).

The programs for A309647, there is no canonical definition to state claims against.
-/

/-! ## A309647.P2217221646669408722

`A225401(n)+A225410(n)-A309601(n)`
-/

namespace A309647.P2217221646669408722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309601 n)

end

end A309647.P2217221646669408722

/-! ## A309647.P11409023765791215360

`A225402(n)+A225411(n)-A309601(n)`
-/

namespace A309647.P11409023765791215360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309601 n)

end

end A309647.P11409023765791215360

/-! ## A309647.P7704497358797907250

`A225405(n)+A225408(n)-A309601(n)`
-/

namespace A309647.P7704497358797907250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309601 n)

end

end A309647.P7704497358797907250

/-! ## A309647.P8681510027887828575

`A225406(n)+A225409(n)-A309601(n)`
-/

namespace A309647.P8681510027887828575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309601 n)

end

end A309647.P8681510027887828575

/-! ## A309647.P18365525973388028927

`A225404(n+1)+A225407(n)-A309601(n)`
-/

namespace A309647.P18365525973388028927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309601 n)

end

end A309647.P18365525973388028927

/-!
# A309648: Digits of the 10-adic integer (-17/9)^(1/3).

The programs for A309648, there is no canonical definition to state claims against.
-/

/-! ## A309648.P7158607224037051517

`A018247(n)+A091663(n)-A309600(n)`
-/

namespace A309648.P7158607224037051517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A309600 n)

end

end A309648.P7158607224037051517

/-! ## A309648.P13103277647555959313

`A225401(n)+A225410(n)-A309600(n)`
-/

namespace A309648.P13103277647555959313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309600 n)

end

end A309648.P13103277647555959313

/-! ## A309648.P8485757008266865645

`A225402(n)+A225411(n)-A309600(n)`
-/

namespace A309648.P8485757008266865645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309600 n)

end

end A309648.P8485757008266865645

/-! ## A309648.P1644739902646171979

`A225405(n)+A225408(n)-A309600(n)`
-/

namespace A309648.P1644739902646171979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309600 n)

end

end A309648.P1644739902646171979

/-! ## A309648.P2372129570669943914

`A225406(n)+A225409(n)-A309600(n)`
-/

namespace A309648.P2372129570669943914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309600 n)

end

end A309648.P2372129570669943914

/-! ## A309648.P2364457020256558288

`A225457(n)+A225460(n)-A309600(n)`
-/

namespace A309648.P2364457020256558288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A309600 n)

end

end A309648.P2364457020256558288

/-! ## A309648.P1749212161159646312

`A309569(n)+A309641(n)-A309600(n)`
-/

namespace A309648.P1749212161159646312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309569 n + (A309641 n - A309600 n)

end

end A309648.P1749212161159646312

/-! ## A309648.P8598948030679462158

`A309570(n)+A309640(n)-A309600(n)`
-/

namespace A309648.P8598948030679462158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A309600 n)

end

end A309648.P8598948030679462158

/-! ## A309648.P3723501483822364557

`A309595(n)+A309614(n)-A309600(n)`
-/

namespace A309648.P3723501483822364557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A309600 n)

end

end A309648.P3723501483822364557

/-! ## A309648.P2568890552239415110

`A309608(n)+A309613(n)-A309600(n)`
-/

namespace A309648.P2568890552239415110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309608 n + (A309613 n - A309600 n)

end

end A309648.P2568890552239415110

/-! ## A309648.P10015717829034621337

`A309609(n)+A309612(n)-A309600(n)`
-/

namespace A309648.P10015717829034621337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309609 n + (A309612 n - A309600 n)

end

end A309648.P10015717829034621337

/-! ## A309648.P13923698748269567211

`A309610(n)+A309611(n)-A309600(n)`
-/

namespace A309648.P13923698748269567211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309610 n + (A309611 n - A309600 n)

end

end A309648.P13923698748269567211

/-! ## A309648.P580188580420913489

`A309601(n)+A309647(n)-A309600(n)`
-/

namespace A309648.P580188580420913489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A309600 n)

end

end A309648.P580188580420913489

/-! ## A309648.P7231276390265175456

`A309602(n)+A309646(n)-A309600(n)`
-/

namespace A309648.P7231276390265175456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A309600 n)

end

end A309648.P7231276390265175456

/-! ## A309648.P17929871927677044410

`A309603(n)+A309645(n)-A309600(n)`
-/

namespace A309648.P17929871927677044410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309603 n + (A309645 n - A309600 n)

end

end A309648.P17929871927677044410

/-! ## A309648.P12113323328768891998

`A309604(n)+A309644(n)-A309600(n)`
-/

namespace A309648.P12113323328768891998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A309600 n)

end

end A309648.P12113323328768891998

/-! ## A309648.P13375259771637768098

`A309605(n)+A309643(n)-A309600(n)`
-/

namespace A309648.P13375259771637768098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309605 n + (A309643 n - A309600 n)

end

end A309648.P13375259771637768098

/-! ## A309648.P600672779820566970

`A309606(n)+A309642(n)-A309600(n)`
-/

namespace A309648.P600672779820566970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309606 n + (A309642 n - A309600 n)

end

end A309648.P600672779820566970

/-! ## A309648.P10911622678108135129

`A153042(n+1)+A225412(n)-A309600(n)`
-/

namespace A309648.P10911622678108135129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309600 n)

end

end A309648.P10911622678108135129

/-! ## A309648.P2437405072394829826

`A225404(n+1)+A225407(n)-A309600(n)`
-/

namespace A309648.P2437405072394829826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309600 n)

end

end A309648.P2437405072394829826

/-!
# A309649: Sieved recursive primeth recurrence (see Comments for precise definition).

The programs for A309649, the canonical program `A309649.P15868022147987081521` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309649 has offset 1).

The definition of A309649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309649.P13689928385593447530

`lcm(2, A007821(n+1))/2`
-/

namespace A309649.P13689928385593447530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A007821 (n + 1)) : ℚ) / 2

end

end A309649.P13689928385593447530

namespace A309649

/-- `lcm(2, A007821(n+1))/2` -/
def P13689928385593447530.Spec : Prop :=
  ∀ n, P13689928385593447530.a n = (A309649 (n + 1) : ℚ)

end A309649

/-! ## A309649.P6933393610089957310

`A007821(a(ceil(sin(n)²)-1)+n)` with `a(0)=1`
-/

namespace A309649.P6933393610089957310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007821 (a (⌈Real.sin (n : ℝ) ^ 2⌉ - 1).toNat + (n : ℤ)).toNat

end

end A309649.P6933393610089957310

namespace A309649

/-- `A007821(a(ceil(sin(n)²)-1)+n)` -/
def P6933393610089957310.Spec : Prop :=
  ∀ n, P6933393610089957310.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P15868022147987081521

`A007821(n+1)-A000007(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A309649

/-- `A007821(n+1)-A000007(n)` -/
def P15868022147987081521.Spec : Prop :=
  ∀ n, P15868022147987081521.a n = A309649 (n + 1)

theorem P15868022147987081521.correct : P15868022147987081521.Spec := by
  intro n
  simp only [A309649, Nat.add_sub_cancel]

end A309649

/-! ## A309649.P15841816275902170612

`A007821(n+1)/A054977(n)`
-/

namespace A309649.P15841816275902170612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007821 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A309649.P15841816275902170612

namespace A309649

/-- `A007821(n+1)/A054977(n)` -/
def P15841816275902170612.Spec : Prop :=
  ∀ n, P15841816275902170612.a n = (A309649 (n + 1) : ℚ)

end A309649

/-! ## A309649.P2000389754502389992

`A007821(n+1)+A057427(n)-1`
-/

namespace A309649.P2000389754502389992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) + (A057427 n - 1)

end

end A309649.P2000389754502389992

namespace A309649

/-- `A007821(n+1)+A057427(n)-1` -/
def P2000389754502389992.Spec : Prop :=
  ∀ n, P2000389754502389992.a n = A309649 (n + 1)

theorem P2000389754502389992.correct : P2000389754502389992.Spec := by
  intro n
  simp only [A309649, Nat.add_sub_cancel, A309649.P2000389754502389992.a, A309649.P15868022147987081521.a, A000007, A000007.P6599383543502402472.a, A007821, A007821.P9323765795172173596.a, A057427, A057427.P3058147525557661423.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A309649

/-! ## A309649.P301123215569824095

`A007821(n+1)-A010051(2*(n+1))`
-/

namespace A309649.P301123215569824095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A010051 (2 * (n + 1))

end

end A309649.P301123215569824095

namespace A309649

/-- `A007821(n+1)-A010051(2*(n+1))` -/
def P301123215569824095.Spec : Prop :=
  ∀ n, P301123215569824095.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P7938727414762159269

`A007821(n+1)-A109578(2*n+1)`
-/

namespace A309649.P7938727414762159269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A109578 (2 * n + 1)

end

end A309649.P7938727414762159269

namespace A309649

/-- `A007821(n+1)-A109578(2*n+1)` -/
def P7938727414762159269.Spec : Prop :=
  ∀ n, P7938727414762159269.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P2724934289645704808

`A140475(A060462(n+1))`
-/

namespace A309649.P2724934289645704808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (A060462 (n + 1)).toNat

end

end A309649.P2724934289645704808

namespace A309649

/-- `A140475(A060462(n+1))` -/
def P2724934289645704808.Spec : Prop :=
  ∀ n, P2724934289645704808.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P13055256065863243602

`A006005(A018252(n+1))`
-/

namespace A309649.P13055256065863243602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A018252 (n + 1)).toNat

end

end A309649.P13055256065863243602

namespace A309649

/-- `A006005(A018252(n+1))` -/
def P13055256065863243602.Spec : Prop :=
  ∀ n, P13055256065863243602.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P7236172107036890977

`A006005(A141468(n+2))`
-/

namespace A309649.P7236172107036890977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A141468 (n + 2)).toNat

end

end A309649.P7236172107036890977

namespace A309649

/-- `A006005(A141468(n+2))` -/
def P7236172107036890977.Spec : Prop :=
  ∀ n, P7236172107036890977.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P9760602191170698442

`A171577(A065090(n+2))`
-/

namespace A309649.P9760602191170698442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (A065090 (n + 2)).toNat

end

end A309649.P9760602191170698442

namespace A309649

/-- `A171577(A065090(n+2))` -/
def P9760602191170698442.Spec : Prop :=
  ∀ n, P9760602191170698442.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P12394287101252996028

`A006005(sqrt(A062312(n+1)))`
-/

namespace A309649.P12394287101252996028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat

end

end A309649.P12394287101252996028

namespace A309649

/-- `A006005(sqrt(A062312(n+1)))` -/
def P12394287101252996028.Spec : Prop :=
  ∀ n, P12394287101252996028.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P7164683544273682146

`A006005(A073425(n)+n+1)`
-/

namespace A309649.P7164683544273682146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A073425 n + (n + 1 : ℤ)).toNat

end

end A309649.P7164683544273682146

namespace A309649

/-- `A006005(A073425(n)+n+1)` -/
def P7164683544273682146.Spec : Prop :=
  ∀ n, P7164683544273682146.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P8546444881671673331

`A008578(comp[A006530(n+1)]+1)`
-/

namespace A309649.P8546444881671673331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A309649.P8546444881671673331

namespace A309649

/-- `A008578(comp[A006530(n+1)]+1)` -/
def P8546444881671673331.Spec : Prop :=
  ∀ n, P8546444881671673331.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P6443866425584649906

`A008578(comp[A008578(n+1)]+1)`
-/

namespace A309649.P6443866425584649906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A309649.P6443866425584649906

namespace A309649

/-- `A008578(comp[A008578(n+1)]+1)` -/
def P6443866425584649906.Spec : Prop :=
  ∀ n, P6443866425584649906.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P16857572435600587694

`A158611(comp[A006530(n+1)]+2)`
-/

namespace A309649.P16857572435600587694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A309649.P16857572435600587694

namespace A309649

/-- `A158611(comp[A006530(n+1)]+2)` -/
def P16857572435600587694.Spec : Prop :=
  ∀ n, P16857572435600587694.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P7168135957473987572

`A000265(A007821(n+1))`
-/

namespace A309649.P7168135957473987572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007821 (n + 1)).toNat

end

end A309649.P7168135957473987572

namespace A309649

/-- `A000265(A007821(n+1))` -/
def P7168135957473987572.Spec : Prop :=
  ∀ n, P7168135957473987572.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P12387149389567394653

`filter[A320629(n+1), A323152(#)]`
-/

namespace A309649.P12387149389567394653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A309649.P12387149389567394653

namespace A309649

/-- `filter[A320629(n+1), A323152(#)]` -/
def P12387149389567394653.Spec : Prop :=
  ∀ n, P12387149389567394653.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P9589983227458259133

`filter[A320629(n+1), A340371(#)]`
-/

namespace A309649.P9589983227458259133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A309649.P9589983227458259133

namespace A309649

/-- `filter[A320629(n+1), A340371(#)]` -/
def P9589983227458259133.Spec : Prop :=
  ∀ n, P9589983227458259133.a n = A309649 (n + 1)

end A309649

/-! ## A309649.P15058085550066278128

`filter[A320629(n+1), A351957(#)]`
-/

namespace A309649.P15058085550066278128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A309649.P15058085550066278128

namespace A309649

/-- `filter[A320629(n+1), A351957(#)]` -/
def P15058085550066278128.Spec : Prop :=
  ∀ n, P15058085550066278128.a n = A309649 (n + 1)

end A309649

/-!
# A309650: a(1) = 3, a(2) = 1, a(3) = 4, a(4) = 2; a(n) = a(n-a(n-2)) + a(n-a(n-3)) for n > 4.

The programs for A309650, the canonical program `A309650.P4693347386009786304` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309650 has offset 1).

The definition of A309650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-3))` (program `A309650.P4693347386009786304`, by `A309650.P4693347386009786304.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309650.P4693347386009786304

`a(n-a(n-2))+a(n-a(n-3))` with `a(0)=3, a(1)=1, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A309650

/-- `a(n-a(n-2))+a(n-a(n-3))` -/
def P4693347386009786304.Spec : Prop :=
  ∀ n, (P4693347386009786304.a n : ℤ) = A309650 (n + 1)

theorem P4693347386009786304.correct : P4693347386009786304.Spec := by
  intro n
  simp only [A309650, Nat.add_sub_cancel]

end A309650

/-! ## A309650.P343541549975226881

`A084964(A309636(2*(n+1))+1)`
-/

namespace A309650.P343541549975226881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A309636 (2 * (n + 1)) + 1).toNat

end

end A309650.P343541549975226881

namespace A309650

/-- `A084964(A309636(2*(n+1))+1)` -/
def P343541549975226881.Spec : Prop :=
  ∀ n, P343541549975226881.a n = A309650 (n + 1)

end A309650

/-! ## A309650.P7804101101973029584

`A097065(A309636(2*(n+1))+3)`
-/

namespace A309650.P7804101101973029584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A309636 (2 * (n + 1)) + 3).toNat

end

end A309650.P7804101101973029584

namespace A309650

/-- `A097065(A309636(2*(n+1))+3)` -/
def P7804101101973029584.Spec : Prop :=
  ∀ n, P7804101101973029584.a n = A309650 (n + 1)

end A309650

/-!
# A309651: T(n,k) is the number of non-equivalent distinguishing colorings of the cycle on n vertices with exactly k colors (k>=1). Regular triangle read by rows, n >= 1, 1 <= k <= n.

The programs for A309651, there is no canonical definition to state claims against.
-/

/-! ## A309651.P12234369805931912272

`A305541(n+1)-A331282(A171272(n))`
-/

namespace A309651.P12234369805931912272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (n + 1) - A331282 (A171272 n).toNat

end

end A309651.P12234369805931912272

/-! ## A309651.P6878078475514156919

`A305541(n+1)-A193243(A340591(n))`
-/

namespace A309651.P6878078475514156919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (n + 1) - A193243 (A340591 n).toNat

end

end A309651.P6878078475514156919

/-! ## A309651.P8669031696503480607

`A305541(n+1)-A121373(A214581(2*n+3))`
-/

namespace A309651.P8669031696503480607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (n + 1) - A121373 (A214581 (2 * n + 3)).toNat

end

end A309651.P8669031696503480607

/-! ## A309651.P1957788872240912093

`A305541(n+1)-A085974(A306438(3*n+1))`
-/

namespace A309651.P1957788872240912093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (n + 1) - A085974 (A306438 (3 * n + 1)).toNat

end

end A309651.P1957788872240912093

/-! ## A309651.P12491277348674074526

`A305541(n+1)-A010054(A299071(n+1))`
-/

namespace A309651.P12491277348674074526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (n + 1) - A010054 (A299071 (n + 1)).toNat

end

end A309651.P12491277348674074526

/-!
# A309652: a(n) = [x^n] B(x)^n, where B(x) is g.f. of A000312.

The programs for A309652, there is no canonical definition to state claims against.
-/

/-! ## A309652.P5478347799183112131

`A039140(8*a(n-1)-a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=9`
-/

namespace A309652.P5478347799183112131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 9] fun n a =>
  A039140 (8 * a (n - 1) - a (n - 2) + 1).toNat

end

end A309652.P5478347799183112131

/-!
# A309656: Number of odd parts in the partitions of n into 9 parts.

The programs for A309656, there is no canonical definition to state claims against.
-/

/-! ## A309656.P297894979315245941

`A093003(A309660(n+1)+1)`
-/

namespace A309656.P297894979315245941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093003 (A309660 (n + 1) + 1).toNat

end

end A309656.P297894979315245941

/-!
# A309657: Sum of the odd parts in the partitions of n into 9 parts.

The programs for A309657, there is no canonical definition to state claims against.
-/

/-! ## A309657.P17906950004485748798

`A326464(n)-A309659(n)`
-/

namespace A309657.P17906950004485748798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A309659 n

end

end A309657.P17906950004485748798

/-! ## A309657.P17148007548140125190

`n*A026815(n)-A309659(n)`
-/

namespace A309657.P17148007548140125190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026815 n - A309659 n

end

end A309657.P17148007548140125190

/-! ## A309657.P15347119286251196824

`n*(A008638(n)-A008637(n))-A309659(n)`
-/

namespace A309657.P15347119286251196824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008638 n - A008637 n) - A309659 n

end

end A309657.P15347119286251196824

/-! ## A309657.P5201652466881714018

`n*(A266777(n)-A060028(n))-A309659(n)`
-/

namespace A309657.P5201652466881714018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266777 n - A060028 n) - A309659 n

end

end A309657.P5201652466881714018

/-! ## A309657.P13134846997482119716

`A026815(n)/tan(acot(A028310(n)))-A309659(n)`
-/

namespace A309657.P13134846997482119716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A026815 n : ℝ) / Real.tan (SequenceMachineLib.acot (A028310 n : ℝ)) - (A309659 n : ℝ)

end

end A309657.P13134846997482119716

/-!
# A309658: Number of even parts in the partitions of n into 9 parts.

The programs for A309658, there is no canonical definition to state claims against.
-/

/-! ## A309658.P11203101665996661175

`A309662(A077342(n+1))`
-/

namespace A309658.P11203101665996661175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309662 (A077342 (n + 1)).toNat

end

end A309658.P11203101665996661175

/-! ## A309658.P14783633563924304482

`A118759(A309662(n+1))`
-/

namespace A309658.P14783633563924304482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A309662 (n + 1)).toNat

end

end A309658.P14783633563924304482

/-! ## A309658.P4177088341310574495

`A309662(A242474(n+1))`
-/

namespace A309658.P4177088341310574495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309662 (A242474 (n + 1)).toNat

end

end A309658.P4177088341310574495

/-! ## A309658.P3335099622572654493

`A309662(A351374(n+1))`
-/

namespace A309658.P3335099622572654493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309662 (A351374 (n + 1)).toNat

end

end A309658.P3335099622572654493

/-! ## A309658.P10472025324072582328

`A309662(A151764(n+1))`
-/

namespace A309658.P10472025324072582328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309662 (A151764 (n + 1)).toNat

end

end A309658.P10472025324072582328

/-!
# A309659: Sum of the even parts in the partitions of n into 9 parts.

The programs for A309659, there is no canonical definition to state claims against.
-/

/-! ## A309659.P10418192847797220737

`A326464(n)-A309657(n)`
-/

namespace A309659.P10418192847797220737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A309657 n

end

end A309659.P10418192847797220737

/-! ## A309659.P15305253449636127674

`n*A026815(n)-A309657(n)`
-/

namespace A309659.P15305253449636127674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026815 n - A309657 n

end

end A309659.P15305253449636127674

/-! ## A309659.P12346175099191644020

`n*(A008638(n)-A008637(n))-A309657(n)`
-/

namespace A309659.P12346175099191644020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008638 n - A008637 n) - A309657 n

end

end A309659.P12346175099191644020

/-! ## A309659.P8788335130268886550

`n*(A266777(n)-A060028(n))-A309657(n)`
-/

namespace A309659.P8788335130268886550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266777 n - A060028 n) - A309657 n

end

end A309659.P8788335130268886550

/-! ## A309659.P1760071136594215734

`A026815(n)/tan(acot(A028310(n)))-A309657(n)`
-/

namespace A309659.P1760071136594215734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A026815 n : ℝ) / Real.tan (SequenceMachineLib.acot (A028310 n : ℝ)) - (A309657 n : ℝ)

end

end A309659.P1760071136594215734

/-!
# A309660: Number of odd parts in the partitions of n into 10 parts.

The programs for A309660, there is no canonical definition to state claims against.
-/

/-! ## A309660.P6136619401986291870

`A092213(floor(A351292(n)/A002313(2*n+1)))`
-/

namespace A309660.P6136619401986291870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092213 ⌊(A351292 n : ℚ) / (A002313 (2 * n + 1) : ℚ)⌋.toNat

end

end A309660.P6136619401986291870

/-!
# A309661: Sum of the odd parts in the partitions of n into 10 parts.

The programs for A309661, there is no canonical definition to state claims against.
-/

/-! ## A309661.P1433372064222322100

`A326588(n)-A309664(n)`
-/

namespace A309661.P1433372064222322100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A309664 n

end

end A309661.P1433372064222322100

/-! ## A309661.P15690091224827993117

`n*A026816(n)-A309664(n)`
-/

namespace A309661.P15690091224827993117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026816 n - A309664 n

end

end A309661.P15690091224827993117

/-! ## A309661.P12706141499157448775

`n*(A008639(n)-A008638(n))-A309664(n)`
-/

namespace A309661.P12706141499157448775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008639 n - A008638 n) - A309664 n

end

end A309661.P12706141499157448775

/-! ## A309661.P10870308919704094347

`n*(A266778(n)-A060029(n))-A309664(n)`
-/

namespace A309661.P10870308919704094347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266778 n - A060029 n) - A309664 n

end

end A309661.P10870308919704094347

/-! ## A309661.P13951246841570398903

`n*(A008639(n)-∑[A266777(n)])-A309664(n)`
-/

namespace A309661.P13951246841570398903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008639 n - ∑ j ∈ Finset.range (n + 1), f1 j) - A309664 n

end

end A309661.P13951246841570398903

/-!
# A309662: Number of even parts in the partitions of n into 10 parts.

The programs for A309662, there is no canonical definition to state claims against.
-/

/-! ## A309662.P5494614594993111342

`A309658((n-1)^A059995(n))`
-/

namespace A309662.P5494614594993111342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309658 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A059995 n : ℤ))).toNat

end

end A309662.P5494614594993111342

/-! ## A309662.P3664723356859893498

`A063772(A309658(abs(1-n))²)`
-/

namespace A309662.P3664723356859893498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A309658 |1 - (n : ℤ)|.toNat ^ 2).toNat

end

end A309662.P3664723356859893498

/-! ## A309662.P5968005113988611362

`A309658(abs(1-n))%A000037(A000032(n))`
-/

namespace A309662.P5968005113988611362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309658 |1 - (n : ℤ)|.toNat) (A000037 (A000032 n).toNat)

end

end A309662.P5968005113988611362

/-!
# A309663: Primes that begin a run of consecutive primes whose first differences are nondecreasing.

The programs for A309663, there is no canonical definition to state claims against.
-/

/-! ## A309663.P8328855637143315310

`p?[A179953(n+2)+n-A014707(n*n)]`
-/

namespace A309663.P8328855637143315310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179953 (n + 2) + ((n : ℤ) - A014707 (n * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309663.P8328855637143315310

/-!
# A309664: Sum of the even parts in the partitions of n into 10 parts.

The programs for A309664, there is no canonical definition to state claims against.
-/

/-! ## A309664.P17374387521618204228

`A326588(n)-A309661(n)`
-/

namespace A309664.P17374387521618204228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A309661 n

end

end A309664.P17374387521618204228

/-! ## A309664.P7377585024897653713

`n*A026816(n)-A309661(n)`
-/

namespace A309664.P7377585024897653713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026816 n - A309661 n

end

end A309664.P7377585024897653713

/-! ## A309664.P8325578530580239047

`n*(A008639(n)-A008638(n))-A309661(n)`
-/

namespace A309664.P8325578530580239047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008639 n - A008638 n) - A309661 n

end

end A309664.P8325578530580239047

/-! ## A309664.P10221295951974120428

`n*(A266778(n)-A060029(n))-A309661(n)`
-/

namespace A309664.P10221295951974120428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266778 n - A060029 n) - A309661 n

end

end A309664.P10221295951974120428

/-! ## A309664.P14141668711044010534

`n*(A008639(n)-∑[A266777(n)])-A309661(n)`
-/

namespace A309664.P14141668711044010534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008639 n - ∑ j ∈ Finset.range (n + 1), f1 j) - A309661 n

end

end A309664.P14141668711044010534

/-!
# A309665: a(1)=1; for n > 1, a(n) = a(n-1)/gcd(a(n-1),n) + n + 1.

The programs for A309665, the canonical program `A309665.P14670860803103481405` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309665 has offset 1).

The definition of A309665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309665.P14670860803103481405

`1+a(n-1)/gcd(a(n-1), n+1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A309665

/-- `1+a(n-1)/gcd(a(n-1), n+1)+n+1` -/
def P14670860803103481405.Spec : Prop :=
  ∀ n, P14670860803103481405.a n = (A309665 (n + 1) : ℚ)

end A309665

/-! ## A309665.P10010452368278275197

`a(n-1)/gcd(a(n-1), n+1)+n+1+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309665.P10010452368278275197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1))) (n + 1 : ℤ) : ℚ) + (n + 1 : ℚ) + 1

end

end A309665.P10010452368278275197

namespace A309665

/-- `a(n-1)/gcd(a(n-1), n+1)+n+1+1` -/
def P10010452368278275197.Spec : Prop :=
  ∀ n, P10010452368278275197.a n = (A309665 (n + 1) : ℚ)

end A309665

/-! ## A309665.P5175440824520660010

`lcm(n+1, a(n-1))/(n+1)+n+2` with `a(0)=1`
-/

namespace A309665.P5175440824520660010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n + 1 : ℚ) + (n + 2 : ℚ)

end

end A309665.P5175440824520660010

namespace A309665

/-- `lcm(n+1, a(n-1))/(n+1)+n+2` -/
def P5175440824520660010.Spec : Prop :=
  ∀ n, P5175440824520660010.a n = (A309665 (n + 1) : ℚ)

end A309665

/-! ## A309665.P15647138260862841443

`a(n-1)/gcd(n+1, a(n-1))+2+n` with `a(0)=1`
-/

namespace A309665.P15647138260862841443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + 2 + (n : ℚ)

end

end A309665.P15647138260862841443

namespace A309665

/-- `a(n-1)/gcd(n+1, a(n-1))+2+n` -/
def P15647138260862841443.Spec : Prop :=
  ∀ n, P15647138260862841443.a n = (A309665 (n + 1) : ℚ)

end A309665

/-!
# A309666: a(n) is the least k such that the denominators of continued fraction convergents for sqrt(k) match the first n Fibonacci numbers.

The programs for A309666, there is no canonical definition to state claims against.
-/

/-! ## A309666.P356824936377534733

`A060215(∑[n%3])`
-/

namespace A309666.P356824936377534733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060215 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309666.P356824936377534733

/-! ## A309666.P17759604505254367499

`A060215(A130481(n))`
-/

namespace A309666.P17759604505254367499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060215 (A130481 n).toNat

end

end A309666.P17759604505254367499

/-! ## A309666.P12826550896339743186

`A060215(∑[A010872(n)])`
-/

namespace A309666.P12826550896339743186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060215 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309666.P12826550896339743186

/-! ## A309666.P2921374863572576015

`A060215(Δ[A002264(n)]+n)`
-/

namespace A309666.P2921374863572576015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060215 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A309666.P2921374863572576015

/-! ## A309666.P764281740625576933

`A060215(Δ[A008620(n)]+n)`
-/

namespace A309666.P764281740625576933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060215 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A309666.P764281740625576933

/-!
# A309667: Number of non-isomorphic connected set-systems on up to n vertices.

The programs for A309667, there is no canonical definition to state claims against.
-/

/-! ## A309667.P132607180166129043

`∑[A323819(n)]`
-/

namespace A309667.P132607180166129043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309667.P132607180166129043

/-!
# A309670: Number of colored compositions of n using all colors of an initial interval of the color palette such that all parts have different color patterns and the patterns for parts i are sorted and have i colors in (weakly) increasing order.

The programs for A309670, there is no canonical definition to state claims against.
-/

/-! ## A309670.P8726496053507782650

`A109613(A032109(n)*A057944(n))`
-/

namespace A309670.P8726496053507782650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A032109 n * A057944 n).toNat

end

end A309670.P8726496053507782650

/-! ## A309670.P16523812490883705520

`A215495(A032109(n)*A102625(n))`
-/

namespace A309670.P16523812490883705520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215495 (A032109 n * A102625 n).toNat

end

end A309670.P16523812490883705520

/-!
# A309671: Primes prime(m) such that G = prime(m-1)# - prime(m) is prime.

The programs for A309671, there is no canonical definition to state claims against.
-/

/-! ## A309671.P17120606129319714428

`A250469(A093078(n+1))`
-/

namespace A309671.P17120606129319714428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A093078 (n + 1)).toNat

end

end A309671.P17120606129319714428

/-! ## A309671.P3977405604080201815

`A215848(eq[1, A090189(n+1)])`
-/

namespace A309671.P3977405604080201815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309671.P3977405604080201815

/-! ## A309671.P16094619038004130716

`A215848(lt[A090189(n+1), 2])`
-/

namespace A309671.P16094619038004130716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090189 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A309671.P16094619038004130716

/-! ## A309671.P4997401922427659213

`p?[A045319(n+1)*A090189(n+1)]`
-/

namespace A309671.P4997401922427659213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1) * A090189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309671.P4997401922427659213

/-! ## A309671.P9202036151862790372

`p?[A065091(n+1)*A090189(n+1)]`
-/

namespace A309671.P9202036151862790372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A090189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309671.P9202036151862790372

/-!
# A309672: Composite terms of A007755.

The programs for A309672, there is no canonical definition to state claims against.
-/

/-! ## A309672.P5629069925322418556

`∩[A007755(n+1), A098196(n+2)]`
-/

namespace A309672.P5629069925322418556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098196 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309672.P5629069925322418556

/-!
# A309673: Number of n-bead necklace structures using a maximum of four different colored beads and no adjacent beads having the same color.

The programs for A309673, there is no canonical definition to state claims against.
-/

/-! ## A309673.P3868820278445254023

`A328130(n+1)+A306888(n+1)`
-/

namespace A309673.P3868820278445254023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328130 (n + 1) + A306888 (n + 1)

end

end A309673.P3868820278445254023

/-! ## A309673.P11963431801801643948

`A328130(n+1)+∑{d}[n+1, A011957(#)]`
-/

namespace A309673.P11963431801801643948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328130 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A011957 d

end

end A309673.P11963431801801643948

/-! ## A309673.P8566234416466293675

`A328130(n+1)+A327397(n+1)+n%2`
-/

namespace A309673.P8566234416466293675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328130 (n + 1) + (A327397 (n + 1) + ((n % 2 : ℕ) : ℤ))

end

end A309673.P8566234416466293675

/-! ## A309673.P11307716771340124174

`A327397(n+1)+A328130(n+1)+A000035(n)`
-/

namespace A309673.P11307716771340124174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327397 (n + 1) + (A328130 (n + 1) + A000035 n)

end

end A309673.P11307716771340124174

/-! ## A309673.P10784225990874073600

`A327397(n+1)+A328130(n+1)+Δ[A004526(n)]`
-/

namespace A309673.P10784225990874073600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327397 (n + 1) + (A328130 (n + 1) + (f1 (n + 1) - f1 n))

end

end A309673.P10784225990874073600

/-! ## A309673.P2240434666459122032

`A327396(A145018(n+1))+A306888(n+1)`
-/

namespace A309673.P2240434666459122032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327396 (A145018 (n + 1)).toNat + A306888 (n + 1)

end

end A309673.P2240434666459122032

/-!
# A309674: a(1) = 1, a(n) = hamming_weight(Sum_{k=1..n-1} a(k) ) for n>=2.

The programs for A309674, the canonical program `A309674.P15182603414113973909` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309674 has offset 1).

The definition of A309674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309674.P15182603414113973909

`∑{digits}[A157845(n), #]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A309674

/-- `∑{digits}[A157845(n), #]` -/
def P15182603414113973909.Spec : Prop :=
  ∀ n, (P15182603414113973909.a n : ℤ) = A309674 (n + 1)

theorem P15182603414113973909.correct : P15182603414113973909.Spec := by
  intro n
  simp only [A309674, Nat.add_sub_cancel]

end A309674

/-! ## A309674.P12573217086908308148

`log2(∏{digits}[A157845(n), A000124(#)])`
-/

namespace A309674.P12573217086908308148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157845 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000124 x).prod : ℤ) : ℝ)

end

end A309674.P12573217086908308148

namespace A309674

/-- `log2(∏{digits}[A157845(n), A000124(#)])` -/
def P12573217086908308148.Spec : Prop :=
  ∀ n, P12573217086908308148.a n = (A309674 (n + 1) : ℝ)

end A309674

/-! ## A309674.P1458349513626615591

`A000005(∏{digits}[A157845(n), A000124(#)])-1`
-/

namespace A309674.P1458349513626615591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000124 x).prod.toNat - 1

end

end A309674.P1458349513626615591

namespace A309674

/-- `A000005(∏{digits}[A157845(n), A000124(#)])-1` -/
def P1458349513626615591.Spec : Prop :=
  ∀ n, P1458349513626615591.a n = A309674 (n + 1)

end A309674

/-! ## A309674.P7930391170623303083

`A029837(∏{digits}[A157845(n), #+1])`
-/

namespace A309674.P7930391170623303083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A309674.P7930391170623303083

namespace A309674

/-- `A029837(∏{digits}[A157845(n), #+1])` -/
def P7930391170623303083.Spec : Prop :=
  ∀ n, P7930391170623303083.a n = A309674 (n + 1)

end A309674

/-! ## A309674.P2444853359013777289

`Δ[A092391(a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A309674.P2444853359013777289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A092391 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309674.P2444853359013777289

namespace A309674

/-- `Δ[A092391(a(n-1))]` -/
def P2444853359013777289.Spec : Prop :=
  ∀ n, P2444853359013777289.a n = A309674 (n + 1)

end A309674

/-! ## A309674.P826834959810733446

`A000120(A010062(abs(1-n)))`
-/

namespace A309674.P826834959810733446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A010062 |1 - (n : ℤ)|.toNat).toNat

end

end A309674.P826834959810733446

namespace A309674

/-- `A000120(A010062(abs(1-n)))` -/
def P826834959810733446.Spec : Prop :=
  ∀ n, P826834959810733446.a n = A309674 (n + 1)

end A309674

/-! ## A309674.P8399253287317315845

`A000120(A228083(∑[n-1]+2))`
-/

namespace A309674.P8399253287317315845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A228083 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat).toNat

end

end A309674.P8399253287317315845

namespace A309674

/-- `A000120(A228083(∑[n-1]+2))` -/
def P8399253287317315845.Spec : Prop :=
  ∀ n, P8399253287317315845.a n = A309674 (n + 1)

end A309674

/-!
# A309675: a(n) = 4^n^2 + n!.

The programs for A309675, the canonical program `A309675.P287076268631507988` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309675 has offset 0).

The definition of A309675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n²+n!` (program `A309675.P287076268631507988`, by `A309675.P287076268631507988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309675.P287076268631507988

`4^n²+n!`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A309675

/-- `4^n²+n!` -/
def P287076268631507988.Spec : Prop :=
  ∀ n, (P287076268631507988.a n : ℤ) = A309675 n

theorem P287076268631507988.correct : P287076268631507988.Spec := by
  intro n
  simp only [A309675]

end A309675

/-! ## A309675.P9603313361784781130

`n!+(4^n)^n`
-/

namespace A309675.P9603313361784781130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + (4 ^ n) ^ n

end

end A309675.P9603313361784781130

namespace A309675

/-- `n!+(4^n)^n` -/
def P9603313361784781130.Spec : Prop :=
  ∀ n, (P9603313361784781130.a n : ℤ) = A309675 n

theorem P9603313361784781130.correct : P9603313361784781130.Spec := by
  intro n
  simp only [A309675, Nat.add_sub_cancel, A309675.P9603313361784781130.a, A309675.P287076268631507988.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A309675

/-! ## A309675.P15190581073558901126

`∏[ceil(abs(γ-n))]+(4^n)^n`
-/

namespace A309675.P15190581073558901126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((4 ^ n) ^ n : ℤ)

end

end A309675.P15190581073558901126

namespace A309675

/-- `∏[ceil(abs(γ-n))]+(4^n)^n` -/
def P15190581073558901126.Spec : Prop :=
  ∀ n, P15190581073558901126.a n = A309675 n

end A309675

/-!
# A309676: Number of compositions (ordered partitions) of n into odd primes (including 1).

The programs for A309676, there is no canonical definition to state claims against.
-/

/-! ## A309676.P11525583516376450283

`A280198(n)-A185284(A002125(n))`
-/

namespace A309676.P11525583516376450283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280198 n - A185284 (A002125 n).toNat

end

end A309676.P11525583516376450283

/-!
# A309677: G.f. A(x) satisfies: A(x) = A(x^3) / (1 - x)^2.

The programs for A309677, there is no canonical definition to state claims against.
-/

/-! ## A309677.P12296796879930184746

`∑[A161809(floor(n/3))]`
-/

namespace A309677.P12296796879930184746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161809 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309677.P12296796879930184746

/-! ## A309677.P2331940257894038754

`∑[A111333(A075324(ceil((n+1)/3)^(2%(n+1))))]`
-/

namespace A309677.P2331940257894038754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A075324 (⌈(n + 1 : ℚ) / 3⌉ ^ (2 % (n + 1))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309677.P2331940257894038754

/-! ## A309677.P12746646887521345048

`∑[A227789(∑[char[3*n]]!)]`
-/

namespace A309677.P12746646887521345048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227789 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309677.P12746646887521345048

/-! ## A309677.P1084058631643447052

`A132016(A144677(n))`
-/

namespace A309677.P1084058631643447052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A144677 n).toNat

end

end A309677.P1084058631643447052

/-! ## A309677.P9622306702257545117

`∑[A111393(A060828(n)²)]`
-/

namespace A309677.P9622306702257545117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111393 (A060828 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309677.P9622306702257545117

/-!
# A309678: G.f. A(x) satisfies: A(x) = A(x^4) / (1 - x)^2.

The programs for A309678, there is no canonical definition to state claims against.
-/

/-! ## A309678.P13306381010027500408

`∑[A038575(4^A008621(n))]`
-/

namespace A309678.P13306381010027500408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A008621 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309678.P13306381010027500408

/-! ## A309678.P17583493091992235358

`∑[A348366(A149877(floor(n/4)))]`
-/

namespace A309678.P17583493091992235358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348366 (A149877 ⌊(n : ℚ) / 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309678.P17583493091992235358

/-! ## A309678.P6066978283586351375

`A144678(n)+A024362(A179130(n+1))`
-/

namespace A309678.P6066978283586351375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 n + A024362 (A179130 (n + 1)).toNat

end

end A309678.P6066978283586351375

/-! ## A309678.P5565553854542595009

`A144678(n)+A144625(A144557(n+1))`
-/

namespace A309678.P5565553854542595009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 n + A144625 (A144557 (n + 1)).toNat

end

end A309678.P5565553854542595009

/-!
# A309679: G.f. A(x) satisfies: A(x) = A(x^5) / (1 - x)^2.

The programs for A309679, there is no canonical definition to state claims against.
-/

/-! ## A309679.P3326976426453503972

`∑[A238884(A141214(A002266(n)))]`
-/

namespace A309679.P3326976426453503972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238884 (A141214 (A002266 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309679.P3326976426453503972

/-! ## A309679.P14986627339776334871

`∑[A187574(A187829(A169718(n)))]`
-/

namespace A309679.P14986627339776334871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187574 (A187829 (A169718 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309679.P14986627339776334871

/-!
# A309680: The smallest nonsquare nonzero integer that is a quadratic residue modulo n, or 0 if no such integer exists.

The programs for A309680, there is no canonical definition to state claims against.
-/

/-! ## A309680.P6405016213035745730

`A330404(n+1)%∑[(n+2)%3]`
-/

namespace A309680.P6405016213035745730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330404 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A309680.P6405016213035745730

/-! ## A309680.P12582205680214145060

`A330404(n+1)%∑[A308009(n+1)]`
-/

namespace A309680.P12582205680214145060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330404 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309680.P12582205680214145060

/-! ## A309680.P5092233331305996420

`A330404(n+1)%A064429(A117571(n))`
-/

namespace A309680.P5092233331305996420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330404 (n + 1)) (A064429 (A117571 n).toNat)

end

end A309680.P5092233331305996420

/-!
# A309682: G.f.: C(x)*C(2*x^2)*C(3*x^3)*..., where C(x) is the g.f. for A000108.

The programs for A309682, there is no canonical definition to state claims against.
-/

/-! ## A309682.P18034866725777365102

`A230823(n)+A201908(A367754(n))`
-/

namespace A309682.P18034866725777365102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230823 n + A201908 (A367754 n).toNat

end

end A309682.P18034866725777365102

/-! ## A309682.P12811560529978501305

`A284384(A018182(n))+A079099(A016116(3*n))`
-/

namespace A309682.P12811560529978501305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284384 (A018182 n).toNat + A079099 (A016116 (3 * n)).toNat

end

end A309682.P12811560529978501305

/-!
# A309683: Number of odd parts appearing among the smallest parts of the partitions of n into 3 parts.

The programs for A309683, the canonical program `A309683.P9423373365979150840` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309683 has offset 0).

The definition of A309683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309683.P9423373365979150840

`floor(or(1, n+1)²/24)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A309683

/-- `floor(or(1, n+1)²/24)` -/
def P9423373365979150840.Spec : Prop :=
  ∀ n, P9423373365979150840.a n = A309683 n

theorem P9423373365979150840.correct : P9423373365979150840.Spec := by
  intro n
  simp only [A309683]

end A309683

/-! ## A309683.P6352020930277172243

`round(or(1, n+1)²/24)`
-/

namespace A309683.P6352020930277172243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 1) ^ 2 : ℚ) / 24)

end

end A309683.P6352020930277172243

namespace A309683

/-- `round(or(1, n+1)²/24)` -/
def P6352020930277172243.Spec : Prop :=
  ∀ n, P6352020930277172243.a n = A309683 n

end A309683

/-! ## A309683.P7880816837158177165

`floor(∑[n^(n%2)]/6)`
-/

namespace A309683.P7880816837158177165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6⌋

end

end A309683.P7880816837158177165

namespace A309683

/-- `floor(∑[n^(n%2)]/6)` -/
def P7880816837158177165.Spec : Prop :=
  ∀ n, P7880816837158177165.a n = A309683 n

end A309683

/-! ## A309683.P8710507830152128489

`∑[round(n*and(1, n)/6)]`
-/

namespace A309683.P8710507830152128489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n * Nat.land 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309683.P8710507830152128489

namespace A309683

/-- `∑[round(n*and(1, n)/6)]` -/
def P8710507830152128489.Spec : Prop :=
  ∀ n, P8710507830152128489.a n = A309683 n

end A309683

/-! ## A309683.P4142897300678818805

`floor(∑[n^and(1, n)]/6)`
-/

namespace A309683.P4142897300678818805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6⌋

end

end A309683.P4142897300678818805

namespace A309683

/-- `floor(∑[n^and(1, n)]/6)` -/
def P4142897300678818805.Spec : Prop :=
  ∀ n, P4142897300678818805.a n = A309683 n

end A309683

/-! ## A309683.P13767286599250410663

`floor(or(1, n+1)^2/24)`
-/

namespace A309683.P13767286599250410663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 1) ^ 2 : ℚ) / 24⌋

end

end A309683.P13767286599250410663

namespace A309683

/-- `floor(or(1, n+1)^2/24)` -/
def P13767286599250410663.Spec : Prop :=
  ∀ n, P13767286599250410663.a n = A309683 n

theorem P13767286599250410663.correct : P13767286599250410663.Spec := by
  intro n
  simp only [A309683, Nat.add_sub_cancel, A309683.P13767286599250410663.a, A309683.P9423373365979150840.a, SequenceMachineLib.memo_apply]

end A309683

/-! ## A309683.P11049287613542009221

`round(or(1, n+1)^2/24)`
-/

namespace A309683.P11049287613542009221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 1) ^ 2 : ℚ) / 24)

end

end A309683.P11049287613542009221

namespace A309683

/-- `round(or(1, n+1)^2/24)` -/
def P11049287613542009221.Spec : Prop :=
  ∀ n, P11049287613542009221.a n = A309683 n

end A309683

/-! ## A309683.P3087080873798320016

`floor(∑[∑[n]%(n+1)/3])`
-/

namespace A309683.P3087080873798320016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A309683.P3087080873798320016

namespace A309683

/-- `floor(∑[∑[n]%(n+1)/3])` -/
def P3087080873798320016.Spec : Prop :=
  ∀ n, P3087080873798320016.a n = A309683 n

end A309683

/-! ## A309683.P12417511845963038634

`∑[round(∑[n+1]%(n+1)/3)]`
-/

namespace A309683.P12417511845963038634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309683.P12417511845963038634

namespace A309683

/-- `∑[round(∑[n+1]%(n+1)/3)]` -/
def P12417511845963038634.Spec : Prop :=
  ∀ n, P12417511845963038634.a n = A309683 n

end A309683

/-! ## A309683.P1619306373107028877

`floor(((n+1)/2)²/3-a(n-1))` with `a(0)=0`
-/

namespace A309683.P1619306373107028877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((n + 1 : ℚ) / 2) ^ 2 / 3 - (a (n - 1) : ℚ)⌋

end

end A309683.P1619306373107028877

namespace A309683

/-- `floor(((n+1)/2)²/3-a(n-1))` -/
def P1619306373107028877.Spec : Prop :=
  ∀ n, P1619306373107028877.a n = A309683 n

end A309683

/-! ## A309683.P5026215892554918659

`∑[floor((n+3)/(lcm(2, n+3)-(n-3)))]`
-/

namespace A309683.P5026215892554918659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / ((Nat.lcm 2 (n + 3) : ℤ) - ((n : ℤ) - 3) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309683.P5026215892554918659

namespace A309683

/-- `∑[floor((n+3)/(lcm(2, n+3)-(n-3)))]` -/
def P5026215892554918659.Spec : Prop :=
  ∀ n, P5026215892554918659.a n = A309683 n

end A309683

/-! ## A309683.P7463749017327251288

`floor(∑[n/3-a(n-1)])-a(n-1)` with `a(0)=0`
-/

namespace A309683.P7463749017327251288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℚ) / 3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - a (n - 1)

end

end A309683.P7463749017327251288

namespace A309683

/-- `floor(∑[n/3-a(n-1)])-a(n-1)` -/
def P7463749017327251288.Spec : Prop :=
  ∀ n, P7463749017327251288.a n = A309683 n

end A309683

/-! ## A309683.P14904639294982190308

`floor(A081351(n)/24)`
-/

namespace A309683.P14904639294982190308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081351 n : ℚ) / 24⌋

end

end A309683.P14904639294982190308

namespace A309683

/-- `floor(A081351(n)/24)` -/
def P14904639294982190308.Spec : Prop :=
  ∀ n, P14904639294982190308.a n = A309683 n

end A309683

/-! ## A309683.P9238070790370092580

`∑[and(1, n)*A103221(n)]`
-/

namespace A309683.P9238070790370092580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309683.P9238070790370092580

namespace A309683

/-- `∑[and(1, n)*A103221(n)]` -/
def P9238070790370092580.Spec : Prop :=
  ∀ n, P9238070790370092580.a n = A309683 n

end A309683

/-! ## A309683.P1031959150540961369

`A069905(n)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A309683.P1031959150540961369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A069905 n - a (n - 3)

end

end A309683.P1031959150540961369

namespace A309683

/-- `A069905(n)-a(n-3)` -/
def P1031959150540961369.Spec : Prop :=
  ∀ n, P1031959150540961369.a n = A309683 n

end A309683

/-! ## A309683.P18315784939568196450

`A008724(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A309683.P18315784939568196450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008724 (n + 1) - a (n - 1)

end

end A309683.P18315784939568196450

namespace A309683

/-- `A008724(n+1)-a(n-1)` -/
def P18315784939568196450.Spec : Prop :=
  ∀ n, P18315784939568196450.a n = A309683 n

end A309683

/-! ## A309683.P9253815060475835653

`ceil((A000217(ceil(n/2))-1)/3)`
-/

namespace A309683.P9253815060475835653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000217 ⌈(n : ℚ) / 2⌉.toNat - 1 : ℚ) / 3⌉

end

end A309683.P9253815060475835653

namespace A309683

/-- `ceil((A000217(ceil(n/2))-1)/3)` -/
def P9253815060475835653.Spec : Prop :=
  ∀ n, P9253815060475835653.a n = A309683 n

end A309683

/-! ## A309683.P8420957333809064489

`∑[A142150(A008611(n))]`
-/

namespace A309683.P8420957333809064489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309683.P8420957333809064489

namespace A309683

/-- `∑[A142150(A008611(n))]` -/
def P8420957333809064489.Spec : Prop :=
  ∀ n, P8420957333809064489.a n = A309683 n

end A309683

/-!
# A309684: Sum of the odd parts appearing among the smallest parts of the partitions of n into 3 parts.

The programs for A309684, the canonical program `A309684.P2878563232738530151` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309684 has offset 0).

The definition of A309684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309684.P2878563232738530151

`∑[n%2*floor(((n+1)/2-ceil(n/3))²)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A309684

/-- `∑[n%2*floor(((n+1)/2-ceil(n/3))²)]` -/
def P2878563232738530151.Spec : Prop :=
  ∀ n, P2878563232738530151.a n = A309684 n

theorem P2878563232738530151.correct : P2878563232738530151.Spec := by
  intro n
  simp only [A309684]

end A309684

/-! ## A309684.P3029155233716750271

`∑[and(1, n)*A307018(n)]`
-/

namespace A309684.P3029155233716750271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A307018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P3029155233716750271

namespace A309684

/-- `∑[and(1, n)*A307018(n)]` -/
def P3029155233716750271.Spec : Prop :=
  ∀ n, P3029155233716750271.a n = A309684 n

end A309684

/-! ## A309684.P17864455647403039082

`∑[(and(1, n)*A103221(n))²]`
-/

namespace A309684.P17864455647403039082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) * A103221 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P17864455647403039082

namespace A309684

/-- `∑[(and(1, n)*A103221(n))²]` -/
def P17864455647403039082.Spec : Prop :=
  ∀ n, P17864455647403039082.a n = A309684 n

end A309684

/-! ## A309684.P3405331213318050868

`∑[A103221(n^and(1, n))²]`
-/

namespace A309684.P3405331213318050868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n ^ Nat.land 1 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P3405331213318050868

namespace A309684

/-- `∑[A103221(n^and(1, n))²]` -/
def P3405331213318050868.Spec : Prop :=
  ∀ n, P3405331213318050868.a n = A309684 n

end A309684

/-! ## A309684.P16162879517212941550

`∑[A008615((n-1)^(n%2))²]`
-/

namespace A309684.P16162879517212941550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (((n : ℤ) - 1) ^ (n % 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P16162879517212941550

namespace A309684

/-- `∑[A008615((n-1)^(n%2))²]` -/
def P16162879517212941550.Spec : Prop :=
  ∀ n, P16162879517212941550.a n = A309684 n

end A309684

/-! ## A309684.P14351358026940359857

`∑[A002264(C(n, 2)%(n+1))²]`
-/

namespace A309684.P14351358026940359857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Nat.choose n 2 % (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P14351358026940359857

namespace A309684

/-- `∑[A002264(C(n, 2)%(n+1))²]` -/
def P14351358026940359857.Spec : Prop :=
  ∀ n, P14351358026940359857.a n = A309684 n

end A309684

/-! ## A309684.P5961509763472934855

`∑[A211547((∑[n]+1)%(n+1))]`
-/

namespace A309684.P5961509763472934855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211547 ((∑ j ∈ Finset.range (n + 1), f2 j + 1) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P5961509763472934855

namespace A309684

/-- `∑[A211547((∑[n]+1)%(n+1))]` -/
def P5961509763472934855.Spec : Prop :=
  ∀ n, P5961509763472934855.a n = A309684 n

end A309684

/-! ## A309684.P6311157778123117671

`∑[A142150(A008611(n))²]`
-/

namespace A309684.P6311157778123117671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A008611 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P6311157778123117671

namespace A309684

/-- `∑[A142150(A008611(n))²]` -/
def P6311157778123117671.Spec : Prop :=
  ∀ n, P6311157778123117671.a n = A309684 n

end A309684

/-! ## A309684.P8578724395239076312

`∑[A307018(n-A237420(n))]`
-/

namespace A309684.P8578724395239076312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 ((n : ℤ) - A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P8578724395239076312

namespace A309684

/-- `∑[A307018(n-A237420(n))]` -/
def P8578724395239076312.Spec : Prop :=
  ∀ n, P8578724395239076312.a n = A309684 n

end A309684

/-! ## A309684.P17804881678815805807

`∑[A002264(A152271(n)+1)²]`
-/

namespace A309684.P17804881678815805807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A152271 n + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P17804881678815805807

namespace A309684

/-- `∑[A002264(A152271(n)+1)²]` -/
def P17804881678815805807.Spec : Prop :=
  ∀ n, P17804881678815805807.a n = A309684 n

end A309684

/-! ## A309684.P17717515070926602616

`∑[A008615(A133265(n)-2)²]`
-/

namespace A309684.P17717515070926602616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A133265 n - 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P17717515070926602616

namespace A309684

/-- `∑[A008615(A133265(n)-2)²]` -/
def P17717515070926602616.Spec : Prop :=
  ∀ n, P17717515070926602616.a n = A309684 n

end A309684

/-! ## A309684.P17178282024958958973

`∑[(A000035(n)*A103221(n))²]`
-/

namespace A309684.P17178282024958958973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n * A103221 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P17178282024958958973

namespace A309684

/-- `∑[(A000035(n)*A103221(n))²]` -/
def P17178282024958958973.Spec : Prop :=
  ∀ n, P17178282024958958973.a n = A309684 n

end A309684

/-! ## A309684.P11114430057848194646

`∑[A260160(n+2)²]`
-/

namespace A309684.P11114430057848194646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260160 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P11114430057848194646

namespace A309684

/-- `∑[A260160(n+2)²]` -/
def P11114430057848194646.Spec : Prop :=
  ∀ n, P11114430057848194646.a n = A309684 n

end A309684

/-! ## A309684.P1885714532909366641

`A309686(n+3)-A309683(n)`
-/

namespace A309684.P1885714532909366641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309686 (n + 3) - A309683 n

end

end A309684.P1885714532909366641

namespace A309684

/-- `A309686(n+3)-A309683(n)` -/
def P1885714532909366641.Spec : Prop :=
  ∀ n, P1885714532909366641.a n = A309684 n

end A309684

/-! ## A309684.P14414915196293605609

`A309686(n+3)-A309685(n+3)`
-/

namespace A309684.P14414915196293605609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309686 (n + 3) - A309685 (n + 3)

end

end A309684.P14414915196293605609

namespace A309684

/-- `A309686(n+3)-A309685(n+3)` -/
def P14414915196293605609.Spec : Prop :=
  ∀ n, P14414915196293605609.a n = A309684 n

end A309684

/-! ## A309684.P15004760308181242991

`∑[(A008647(2*n)*A059841(n+1))²]`
-/

namespace A309684.P15004760308181242991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008647 (2 * n) * A059841 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P15004760308181242991

namespace A309684

/-- `∑[(A008647(2*n)*A059841(n+1))²]` -/
def P15004760308181242991.Spec : Prop :=
  ∀ n, P15004760308181242991.a n = A309684 n

end A309684

/-! ## A309684.P13707121021985095348

`∑[(A008679(2*n)*A059841(n+1))²]`
-/

namespace A309684.P13707121021985095348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008679 (2 * n) * A059841 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P13707121021985095348

namespace A309684

/-- `∑[(A008679(2*n)*A059841(n+1))²]` -/
def P13707121021985095348.Spec : Prop :=
  ∀ n, P13707121021985095348.a n = A309684 n

end A309684

/-! ## A309684.P2984848098472476905

`∑[A307018(n*A096271(n²))]`
-/

namespace A309684.P2984848098472476905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 ((n : ℤ) * A096271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309684.P2984848098472476905

namespace A309684

/-- `∑[A307018(n*A096271(n²))]` -/
def P2984848098472476905.Spec : Prop :=
  ∀ n, P2984848098472476905.a n = A309684 n

end A309684

/-!
# A309685: Number of even parts appearing among the smallest parts of the partitions of n into 3 parts.

The programs for A309685, the canonical program `A309685.P11895693123064070610` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309685 has offset 0).

The definition of A309685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309685.P11895693123064070610

`floor(a(n-2)+n/6)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A309685

/-- `floor(a(n-2)+n/6)` -/
def P11895693123064070610.Spec : Prop :=
  ∀ n, P11895693123064070610.a n = A309685 n

theorem P11895693123064070610.correct : P11895693123064070610.Spec := by
  intro n
  simp only [A309685]

end A309685

/-! ## A309685.P17168309767258397554

`∑[floor(n/6-a(n-1))]` with `a(0)=0`
-/

namespace A309685.P17168309767258397554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(n : ℚ) / 6 - (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309685.P17168309767258397554

namespace A309685

/-- `∑[floor(n/6-a(n-1))]` -/
def P17168309767258397554.Spec : Prop :=
  ∀ n, P17168309767258397554.a n = A309685 n

end A309685

/-! ## A309685.P11615943777009271735

`∑[C(floor(n/6), n^(n%2))]`
-/

namespace A309685.P11615943777009271735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 6⌋.toNat (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309685.P11615943777009271735

namespace A309685

/-- `∑[C(floor(n/6), n^(n%2))]` -/
def P11615943777009271735.Spec : Prop :=
  ∀ n, (P11615943777009271735.a n : ℤ) = A309685 n

end A309685

/-! ## A309685.P10269240870905873516

`floor((2-n)²/12)-a(n-1)` with `a(0)=0`
-/

namespace A309685.P10269240870905873516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((2 - (n : ℤ)) ^ 2 : ℚ) / 12⌋ - a (n - 1)

end

end A309685.P10269240870905873516

namespace A309685

/-- `floor((2-n)²/12)-a(n-1)` -/
def P10269240870905873516.Spec : Prop :=
  ∀ n, P10269240870905873516.a n = A309685 n

end A309685

/-! ## A309685.P5941321475359370339

`A008799(or(1, n))`
-/

namespace A309685.P5941321475359370339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (Nat.lor 1 n)

end

end A309685.P5941321475359370339

namespace A309685

/-- `A008799(or(1, n))` -/
def P5941321475359370339.Spec : Prop :=
  ∀ n, P5941321475359370339.a n = A309685 n

end A309685

/-! ## A309685.P11393032005670291897

`A091848(or(1, n))`
-/

namespace A309685.P11393032005670291897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091848 (Nat.lor 1 n)

end

end A309685.P11393032005670291897

namespace A309685

/-- `A091848(or(1, n))` -/
def P11393032005670291897.Spec : Prop :=
  ∀ n, P11393032005670291897.a n = A309685 n

end A309685

/-! ## A309685.P3656536462804998093

`A319974(or(1, n))`
-/

namespace A309685.P3656536462804998093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319974 (Nat.lor 1 n)

end

end A309685.P3656536462804998093

namespace A309685

/-- `A319974(or(1, n))` -/
def P3656536462804998093.Spec : Prop :=
  ∀ n, P3656536462804998093.a n = A309685 n

end A309685

/-! ## A309685.P349821340579509880

`A008799(A109613(n))`
-/

namespace A309685.P349821340579509880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A109613 n).toNat

end

end A309685.P349821340579509880

namespace A309685

/-- `A008799(A109613(n))` -/
def P349821340579509880.Spec : Prop :=
  ∀ n, P349821340579509880.a n = A309685 n

end A309685

/-! ## A309685.P3063307764980589931

`A114209(A267458(n))`
-/

namespace A309685.P3063307764980589931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (A267458 n).toNat

end

end A309685.P3063307764980589931

namespace A309685

/-- `A114209(A267458(n))` -/
def P3063307764980589931.Spec : Prop :=
  ∀ n, P3063307764980589931.a n = A309685 n

end A309685

/-! ## A309685.P3707715657993376587

`∑[A002264(A142150(n))]`
-/

namespace A309685.P3707715657993376587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309685.P3707715657993376587

namespace A309685

/-- `∑[A002264(A142150(n))]` -/
def P3707715657993376587.Spec : Prop :=
  ∀ n, P3707715657993376587.a n = A309685 n

end A309685

/-! ## A309685.P14497630094771584797

`A008799(n)-A027656(n)`
-/

namespace A309685.P14497630094771584797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 n - A027656 n

end

end A309685.P14497630094771584797

namespace A309685

/-- `A008799(n)-A027656(n)` -/
def P14497630094771584797.Spec : Prop :=
  ∀ n, P14497630094771584797.a n = A309685 n

end A309685

/-! ## A309685.P10397027653002857279

`A069905(n)-A309683(n)`
-/

namespace A309685.P10397027653002857279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n - A309683 n

end

end A309685.P10397027653002857279

namespace A309685

/-- `A069905(n)-A309683(n)` -/
def P10397027653002857279.Spec : Prop :=
  ∀ n, P10397027653002857279.a n = A309685 n

end A309685

/-! ## A309685.P2605842719184580455

`∑[A097992(A141310(n))-1]`
-/

namespace A309685.P2605842719184580455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A141310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309685.P2605842719184580455

namespace A309685

/-- `∑[A097992(A141310(n))-1]` -/
def P2605842719184580455.Spec : Prop :=
  ∀ n, P2605842719184580455.a n = A309685 n

end A309685

/-! ## A309685.P5682896576579404213

`A001840(A008619(n))-A008619(n)`
-/

namespace A309685.P5682896576579404213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A008619 n).toNat - A008619 n

end

end A309685.P5682896576579404213

namespace A309685

/-- `A001840(A008619(n))-A008619(n)` -/
def P5682896576579404213.Spec : Prop :=
  ∀ n, P5682896576579404213.a n = A309685 n

end A309685

/-! ## A309685.P3266225713069781715

`A309687(n)+A309689(n)-A309683(n)`
-/

namespace A309685.P3266225713069781715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309687 n + (A309689 n - A309683 n)

end

end A309685.P3266225713069781715

namespace A309685

/-- `A309687(n)+A309689(n)-A309683(n)` -/
def P3266225713069781715.Spec : Prop :=
  ∀ n, P3266225713069781715.a n = A309685 n

end A309685

/-! ## A309685.P14723939074806426126

`A001840(A110654(n+1))-A110654(n+1)`
-/

namespace A309685.P14723939074806426126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A110654 (n + 1)).toNat - A110654 (n + 1)

end

end A309685.P14723939074806426126

namespace A309685

/-- `A001840(A110654(n+1))-A110654(n+1)` -/
def P14723939074806426126.Spec : Prop :=
  ∀ n, P14723939074806426126.a n = A309685 n

end A309685

/-! ## A309685.P7272802659607626705

`A058937(A267530(n+1))`
-/

namespace A309685.P7272802659607626705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058937 (A267530 (n + 1)).toNat

end

end A309685.P7272802659607626705

namespace A309685

/-- `A058937(A267530(n+1))` -/
def P7272802659607626705.Spec : Prop :=
  ∀ n, P7272802659607626705.a n = A309685 n

end A309685

/-! ## A309685.P6141811697561962311

`A026923(n+1)+A309687(n)-A309683(n+1)`
-/

namespace A309685.P6141811697561962311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (n + 1) + (A309687 n - A309683 (n + 1))

end

end A309685.P6141811697561962311

namespace A309685

/-- `A026923(n+1)+A309687(n)-A309683(n+1)` -/
def P6141811697561962311.Spec : Prop :=
  ∀ n, P6141811697561962311.a n = A309685 n

end A309685

/-! ## A309685.P6789635990209831242

`A308068(A067016(n))`
-/

namespace A309685.P6789635990209831242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308068 (A067016 n).toNat

end

end A309685.P6789635990209831242

namespace A309685

/-- `A308068(A067016(n))` -/
def P6789635990209831242.Spec : Prop :=
  ∀ n, P6789635990209831242.a n = A309685 n

end A309685

/-!
# A309686: Sum of the even parts appearing among the smallest parts of the partitions of n into 3 parts.

The programs for A309686, the canonical program `A309686.P5973081140512244808` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309686 has offset 0).

The definition of A309686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309686.P4561407953428435553

`∑[char[2*n]*A307018(n)]`
-/

namespace A309686.P4561407953428435553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A307018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309686.P4561407953428435553

namespace A309686

/-- `∑[char[2*n]*A307018(n)]` -/
def P4561407953428435553.Spec : Prop :=
  ∀ n, P4561407953428435553.a n = A309686 n

end A309686

/-! ## A309686.P11294501645815520410

`∑[A008737((n+1)*char[2*n])]`
-/

namespace A309686.P11294501645815520410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008737 ((n + 1) * (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309686.P11294501645815520410

namespace A309686

/-- `∑[A008737((n+1)*char[2*n])]` -/
def P11294501645815520410.Spec : Prop :=
  ∀ n, P11294501645815520410.a n = A309686 n

end A309686

/-! ## A309686.P5973081140512244808

`∑[A307018(A237420(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A309686

/-- `∑[A307018(A237420(n))]` -/
def P5973081140512244808.Spec : Prop :=
  ∀ n, P5973081140512244808.a n = A309686 n

theorem P5973081140512244808.correct : P5973081140512244808.Spec := by
  intro n
  simp only [A309686]

end A309686

/-! ## A309686.P13956482285400618521

`∑[A307018(abs(A009531(n)))]`
-/

namespace A309686.P13956482285400618521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 |A009531 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309686.P13956482285400618521

namespace A309686

/-- `∑[A307018(abs(A009531(n)))]` -/
def P13956482285400618521.Spec : Prop :=
  ∀ n, P13956482285400618521.a n = A309686 n

end A309686

/-! ## A309686.P2980662173738389307

`∑[A002378(A002264(A142150(n)))]`
-/

namespace A309686.P2980662173738389307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A002264 (A142150 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309686.P2980662173738389307

namespace A309686

/-- `∑[A002378(A002264(A142150(n)))]` -/
def P2980662173738389307.Spec : Prop :=
  ∀ n, P2980662173738389307.a n = A309686 n

end A309686

/-! ## A309686.P4458335634335636642

`A309684(n+3)-A309683(n+3)`
-/

namespace A309686.P4458335634335636642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309684 (n + 3) - A309683 (n + 3)

end

end A309686.P4458335634335636642

namespace A309686

/-- `A309684(n+3)-A309683(n+3)` -/
def P4458335634335636642.Spec : Prop :=
  ∀ n, P4458335634335636642.a n = A309686 n

end A309686

/-! ## A309686.P3878958855450064162

`∑[A257844(A008611(n)²)]`
-/

namespace A309686.P3878958855450064162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257844 (A008611 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309686.P3878958855450064162

namespace A309686

/-- `∑[A257844(A008611(n)²)]` -/
def P3878958855450064162.Spec : Prop :=
  ∀ n, P3878958855450064162.a n = A309686 n

end A309686

/-!
# A309687: Number of odd parts appearing among the second largest parts of the partitions of n into 3 parts.

The programs for A309687, the canonical program `A309687.P4914964762507197141` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309687 has offset 0).

The definition of A309687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309687.P4914964762507197141

`round(xor(4, n²)/24)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A309687

/-- `round(xor(4, n²)/24)` -/
def P4914964762507197141.Spec : Prop :=
  ∀ n, P4914964762507197141.a n = A309687 n

theorem P4914964762507197141.correct : P4914964762507197141.Spec := by
  intro n
  simp only [A309687]

end A309687

/-! ## A309687.P5690999744068433612

`round(n²/6)-round(n²/8)`
-/

namespace A309687.P5690999744068433612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 6) - SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)

end

end A309687.P5690999744068433612

namespace A309687

/-- `round(n²/6)-round(n²/8)` -/
def P5690999744068433612.Spec : Prop :=
  ∀ n, P5690999744068433612.a n = A309687 n

end A309687

/-! ## A309687.P6189412247746195217

`ceil(A214297(n)/6)`
-/

namespace A309687.P6189412247746195217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A214297 n : ℚ) / 6⌉

end

end A309687.P6189412247746195217

namespace A309687

/-- `ceil(A214297(n)/6)` -/
def P6189412247746195217.Spec : Prop :=
  ∀ n, P6189412247746195217.a n = A309687 n

end A309687

/-! ## A309687.P17961469731448605176

`∑[∑[A115360((n+1)%(A176889(n+4)+3)+2)]]`
-/

namespace A309687.P17961469731448605176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 (Int.tmod (n + 1 : ℤ) (A176889 (n + 4) + 3) + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309687.P17961469731448605176

namespace A309687

/-- `∑[∑[A115360((n+1)%(A176889(n+4)+3)+2)]]` -/
def P17961469731448605176.Spec : Prop :=
  ∀ n, P17961469731448605176.a n = A309687 n

end A309687

/-! ## A309687.P10329469031189868327

`∑[A002265(n+1)-A002265(A008620(2*n+1))]`
-/

namespace A309687.P10329469031189868327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) - A002265 (A008620 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309687.P10329469031189868327

namespace A309687

/-- `∑[A002265(n+1)-A002265(A008620(2*n+1))]` -/
def P10329469031189868327.Spec : Prop :=
  ∀ n, P10329469031189868327.a n = A309687 n

end A309687

/-! ## A309687.P7918712567293974274

`A004526(∑[ceil(n/6)]-A004526(n))`
-/

namespace A309687.P7918712567293974274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j - A004526 n).toNat

end

end A309687.P7918712567293974274

namespace A309687

/-- `A004526(∑[ceil(n/6)]-A004526(n))` -/
def P7918712567293974274.Spec : Prop :=
  ∀ n, P7918712567293974274.a n = A309687 n

end A309687

/-! ## A309687.P1320554097199118464

`A004526(A000982(n)-A033438(n))`
-/

namespace A309687.P1320554097199118464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000982 n - A033438 n).toNat

end

end A309687.P1320554097199118464

namespace A309687

/-- `A004526(A000982(n)-A033438(n))` -/
def P1320554097199118464.Spec : Prop :=
  ∀ n, P1320554097199118464.a n = A309687 n

end A309687

/-! ## A309687.P8256513004342886279

`A004526(A174709(n)+A123919(n+1))`
-/

namespace A309687.P8256513004342886279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A174709 n + A123919 (n + 1)).toNat

end

end A309687.P8256513004342886279

namespace A309687

/-- `A004526(A174709(n)+A123919(n+1))` -/
def P8256513004342886279.Spec : Prop :=
  ∀ n, P8256513004342886279.a n = A309687 n

end A309687

/-! ## A309687.P17517573186222466693

`A110654(A056827(n)-2*A309689(n))`
-/

namespace A309687.P17517573186222466693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A056827 n - 2 * A309689 n).toNat

end

end A309687.P17517573186222466693

namespace A309687

/-- `A110654(A056827(n)-2*A309689(n))` -/
def P17517573186222466693.Spec : Prop :=
  ∀ n, P17517573186222466693.a n = A309687 n

end A309687

/-! ## A309687.P12558596154358786620

`A004526(A275673(n+1)-(A004526(n)+1))`
-/

namespace A309687.P12558596154358786620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A275673 (n + 1) - (A004526 n + 1)).toNat

end

end A309687.P12558596154358786620

namespace A309687

/-- `A004526(A275673(n+1)-(A004526(n)+1))` -/
def P12558596154358786620.Spec : Prop :=
  ∀ n, P12558596154358786620.a n = A309687 n

end A309687

/-! ## A309687.P18001984740504943254

`A110654(A056827(n)-A309689(n)-A309689(n))`
-/

namespace A309687.P18001984740504943254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A056827 n - A309689 n - A309689 n).toNat

end

end A309687.P18001984740504943254

namespace A309687

/-- `A110654(A056827(n)-A309689(n)-A309689(n))` -/
def P18001984740504943254.Spec : Prop :=
  ∀ n, P18001984740504943254.a n = A309687 n

end A309687

/-! ## A309687.P11875224385816271291

`A002264(A000034(n)+floor(n²/8))`
-/

namespace A309687.P11875224385816271291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000034 n + ⌊(n ^ 2 : ℚ) / 8⌋).toNat

end

end A309687.P11875224385816271291

namespace A309687

/-- `A002264(A000034(n)+floor(n²/8))` -/
def P11875224385816271291.Spec : Prop :=
  ∀ n, P11875224385816271291.a n = A309687 n

end A309687

/-! ## A309687.P1322754402023004834

`A008615(floor((n/2)²))`
-/

namespace A309687.P1322754402023004834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

end

end A309687.P1322754402023004834

namespace A309687

/-- `A008615(floor((n/2)²))` -/
def P1322754402023004834.Spec : Prop :=
  ∀ n, P1322754402023004834.a n = A309687 n

end A309687

/-! ## A309687.P2959568903180963904

`A008615(A002620(n))%A000041(n)`
-/

namespace A309687.P2959568903180963904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008615 (A002620 n).toNat) (A000041 n)

end

end A309687.P2959568903180963904

namespace A309687

/-- `A008615(A002620(n))%A000041(n)` -/
def P2959568903180963904.Spec : Prop :=
  ∀ n, P2959568903180963904.a n = A309687 n

end A309687

/-! ## A309687.P14059537290197307861

`A091972(A033638(n))`
-/

namespace A309687.P14059537290197307861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (A033638 n).toNat

end

end A309687.P14059537290197307861

namespace A309687

/-- `A091972(A033638(n))` -/
def P14059537290197307861.Spec : Prop :=
  ∀ n, P14059537290197307861.a n = A309687 n

end A309687

/-! ## A309687.P6126239579818772728

`A008647(A061925(n))`
-/

namespace A309687.P6126239579818772728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A061925 n).toNat

end

end A309687.P6126239579818772728

namespace A309687

/-- `A008647(A061925(n))` -/
def P6126239579818772728.Spec : Prop :=
  ∀ n, P6126239579818772728.a n = A309687 n

end A309687

/-! ## A309687.P3005672013106788357

`A008647(A261243(n+2))`
-/

namespace A309687.P3005672013106788357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A261243 (n + 2)).toNat

end

end A309687.P3005672013106788357

namespace A309687

/-- `A008647(A261243(n+2))` -/
def P3005672013106788357.Spec : Prop :=
  ∀ n, P3005672013106788357.a n = A309687 n

end A309687

/-!
# A309688: Sum of the odd parts appearing among the second largest parts of the partitions of n into 3 parts.

The programs for A309688, there is no canonical definition to state claims against.
-/

/-! ## A309688.P16996679602637648351

`A308266(abs(1-n)+1)-A309690(n)`
-/

namespace A309688.P16996679602637648351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (|1 - (n : ℤ)| + 1).toNat - A309690 n

end

end A309688.P16996679602637648351

/-! ## A309688.P13244073681631970860

`A309512(n)-(A309692(n)+A309684(n))`
-/

namespace A309688.P13244073681631970860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309512 n - (A309692 n + A309684 n)

end

end A309688.P13244073681631970860

/-!
# A309689: Number of even parts appearing among the second largest parts of the partitions of n into 3 parts.

The programs for A309689, the canonical program `A309689.P11803701769750085385` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309689 has offset 0).

The definition of A309689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309689.P11803701769750085385

`∑[floor((n+1)/6-a(n-2))]` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A309689

/-- `∑[floor((n+1)/6-a(n-2))]` -/
def P11803701769750085385.Spec : Prop :=
  ∀ n, P11803701769750085385.a n = A309689 n

theorem P11803701769750085385.correct : P11803701769750085385.Spec := by
  intro n
  simp only [A309689]

end A309689

/-! ## A309689.P14313958678688136743

`round(n²/8)-ceil(floor((n/2)²)/3)`
-/

namespace A309689.P14313958678688136743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8) - ⌈(⌊((n : ℚ) / 2) ^ 2⌋ : ℚ) / 3⌉

end

end A309689.P14313958678688136743

namespace A309689

/-- `round(n²/8)-ceil(floor((n/2)²)/3)` -/
def P14313958678688136743.Spec : Prop :=
  ∀ n, P14313958678688136743.a n = A309689 n

end A309689

/-! ## A309689.P9193356700986111113

`∑[floor((A001903(n)+n)/12)]`
-/

namespace A309689.P9193356700986111113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001903 n + (n : ℤ) : ℚ) / 12⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309689.P9193356700986111113

namespace A309689

/-- `∑[floor((A001903(n)+n)/12)]` -/
def P9193356700986111113.Spec : Prop :=
  ∀ n, P9193356700986111113.a n = A309689 n

end A309689

/-! ## A309689.P15695452603136257968

`∑[A008615(A140106(n+1))]`
-/

namespace A309689.P15695452603136257968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A140106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309689.P15695452603136257968

namespace A309689

/-- `∑[A008615(A140106(n+1))]` -/
def P15695452603136257968.Spec : Prop :=
  ∀ n, P15695452603136257968.a n = A309689 n

end A309689

/-! ## A309689.P4060035199410475650

`∑[A008615(A065033(n)-1)]`
-/

namespace A309689.P4060035199410475650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A065033 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309689.P4060035199410475650

namespace A309689

/-- `∑[A008615(A065033(n)-1)]` -/
def P4060035199410475650.Spec : Prop :=
  ∀ n, P4060035199410475650.a n = A309689 n

end A309689

/-! ## A309689.P7972492546706090238

`∑[A110655(n)-A110655(A004396(n))]`
-/

namespace A309689.P7972492546706090238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n - A110655 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309689.P7972492546706090238

namespace A309689

/-- `∑[A110655(n)-A110655(A004396(n))]` -/
def P7972492546706090238.Spec : Prop :=
  ∀ n, P7972492546706090238.a n = A309689 n

end A309689

/-! ## A309689.P11114578437975706319

`∑[A008615(A004526(n+1)+5)-1]`
-/

namespace A309689.P11114578437975706319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A004526 (n + 1) + 5).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309689.P11114578437975706319

namespace A309689

/-- `∑[A008615(A004526(n+1)+5)-1]` -/
def P11114578437975706319.Spec : Prop :=
  ∀ n, P11114578437975706319.a n = A309689 n

end A309689

/-! ## A309689.P16066413297992229202

`∑[A004523(A004526(n+1))-A002265(n+1)]`
-/

namespace A309689.P16066413297992229202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A004526 (n + 1)).toNat - A002265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309689.P16066413297992229202

namespace A309689

/-- `∑[A004523(A004526(n+1))-A002265(n+1)]` -/
def P16066413297992229202.Spec : Prop :=
  ∀ n, P16066413297992229202.a n = A309689 n

end A309689

/-! ## A309689.P7771802271084169475

`∑[A008615(A004526(n+11))-1]`
-/

namespace A309689.P7771802271084169475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A004526 (n + 11)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309689.P7771802271084169475

namespace A309689

/-- `∑[A008615(A004526(n+11))-1]` -/
def P7771802271084169475.Spec : Prop :=
  ∀ n, P7771802271084169475.a n = A309689 n

end A309689

/-! ## A309689.P802183342600849787

`A002264(A166486(n)+A001971(n))`
-/

namespace A309689.P802183342600849787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A166486 n + A001971 n).toNat

end

end A309689.P802183342600849787

namespace A309689

/-- `A002264(A166486(n)+A001971(n))` -/
def P802183342600849787.Spec : Prop :=
  ∀ n, P802183342600849787.a n = A309689 n

end A309689

/-! ## A309689.P9848956333655623711

`A134119(A000212(n)-A130519(n+1))`
-/

namespace A309689.P9848956333655623711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A000212 n - A130519 (n + 1)).toNat

end

end A309689.P9848956333655623711

namespace A309689

/-- `A134119(A000212(n)-A130519(n+1))` -/
def P9848956333655623711.Spec : Prop :=
  ∀ n, P9848956333655623711.a n = A309689 n

end A309689

/-! ## A309689.P12826058907160912237

`floor(A008611(A002620(n))/2)`
-/

namespace A309689.P12826058907160912237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008611 (A002620 n).toNat : ℚ) / 2⌋

end

end A309689.P12826058907160912237

namespace A309689

/-- `floor(A008611(A002620(n))/2)` -/
def P12826058907160912237.Spec : Prop :=
  ∀ n, P12826058907160912237.a n = A309689 n

end A309689

/-! ## A309689.P13665245981586794167

`A004524(A008620(A002620(n)))`
-/

namespace A309689.P13665245981586794167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A008620 (A002620 n).toNat).toNat

end

end A309689.P13665245981586794167

namespace A309689

/-- `A004524(A008620(A002620(n)))` -/
def P13665245981586794167.Spec : Prop :=
  ∀ n, P13665245981586794167.a n = A309689 n

end A309689

/-! ## A309689.P15966363102735024935

`A004526(A008611(A002264(A005044(A008588(n)))))`
-/

namespace A309689.P15966363102735024935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008611 (A002264 (A005044 (A008588 n).toNat).toNat).toNat).toNat

end

end A309689.P15966363102735024935

namespace A309689

/-- `A004526(A008611(A002264(A005044(A008588(n)))))` -/
def P15966363102735024935.Spec : Prop :=
  ∀ n, P15966363102735024935.a n = A309689 n

end A309689

/-! ## A309689.P13353430151156461740

`A004526(A008611(A004526(A004526(n²))))`
-/

namespace A309689.P13353430151156461740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008611 (A004526 (A004526 (n ^ 2)).toNat).toNat).toNat

end

end A309689.P13353430151156461740

namespace A309689

/-- `A004526(A008611(A004526(A004526(n²))))` -/
def P13353430151156461740.Spec : Prop :=
  ∀ n, P13353430151156461740.a n = A309689 n

end A309689

/-!
# A309690: Sum of the even parts appearing among the second largest parts of the partitions of n into 3 parts.

The programs for A309690, there is no canonical definition to state claims against.
-/

/-! ## A309690.P8377579395393296190

`A308266(abs(1-n)+1)-A309688(n)`
-/

namespace A309690.P8377579395393296190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (|1 - (n : ℤ)| + 1).toNat - A309688 n

end

end A309690.P8377579395393296190

/-! ## A309690.P602393650746614476

`A350042(n)-A309512(n)-(A309694(n)+A309686(n))`
-/

namespace A309690.P602393650746614476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350042 n - A309512 n - (A309694 n + A309686 n)

end

end A309690.P602393650746614476

/-! ## A309690.P2448463459436262590

`A309515(n)-(A309694(n)+A309686(n))`
-/

namespace A309690.P2448463459436262590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309515 n - (A309694 n + A309686 n)

end

end A309690.P2448463459436262590

/-!
# A309691: Total number of divisors d of m (counted with multiplicity), such that the prime signature of d is a partition of two and m runs through the set of least numbers whose prime signature is a partition of n.

The programs for A309691, there is no canonical definition to state claims against.
-/

/-! ## A309691.P1448727382400205692

`A258472(n+2)+A096541(n+2)`
-/

namespace A309691.P1448727382400205692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258472 (n + 2) + A096541 (n + 2)

end

end A309691.P1448727382400205692

/-! ## A309691.P2220185504522381680

`A096541(n+2)+A094533(n+2)/2`
-/

namespace A309691.P2220185504522381680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096541 (n + 2) : ℚ) + (A094533 (n + 2) : ℚ) / 2

end

end A309691.P2220185504522381680

/-! ## A309691.P16635983955220124598

`A209633(n+2)-A093694(n+2)`
-/

namespace A309691.P16635983955220124598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209633 (n + 2) - A093694 (n + 2)

end

end A309691.P16635983955220124598

/-! ## A309691.P102348797521063786

`A079025(∑[n+3])`
-/

namespace A309691.P102348797521063786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309691.P102348797521063786

/-! ## A309691.P2625141297551952766

`record[A079025(A027379(abs(1-n)))]`
-/

namespace A309691.P2625141297551952766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A027379 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309691.P2625141297551952766

/-! ## A309691.P12207232261448919394

`record[A079025(A055998(A007599(n)))]`
-/

namespace A309691.P12207232261448919394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A055998 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309691.P12207232261448919394

/-! ## A309691.P17883727184777876192

`record[A079025(A133263(A117910(n)))]`
-/

namespace A309691.P17883727184777876192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A133263 (A117910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309691.P17883727184777876192

/-! ## A309691.P1485875702478694691

`record[A079025(A133263(A118777(n)))]`
-/

namespace A309691.P1485875702478694691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A133263 (A118777 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309691.P1485875702478694691

/-! ## A309691.P6350630688523208555

`record[A079025(A133263(A262519(n)))]`
-/

namespace A309691.P6350630688523208555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A133263 (A262519 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309691.P6350630688523208555

/-! ## A309691.P10075544095690321140

`char[A175126(n)]*A079025(A027379(n+1))`
-/

namespace A309691.P10075544095690321140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A079025 (A027379 (n + 1)).toNat

end

end A309691.P10075544095690321140

/-!
# A309692: Sum of the odd parts appearing among the largest parts of the partitions of n into 3 parts.

The programs for A309692, there is no canonical definition to state claims against.
-/

/-! ## A309692.P4727290224444701006

`A309512(n)-(A309688(n)+A309684(n))`
-/

namespace A309692.P4727290224444701006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309512 n - (A309688 n + A309684 n)

end

end A309692.P4727290224444701006

/-! ## A309692.P91442377380812215

`A308265(abs(1-n)+1)-A309694(n)`
-/

namespace A309692.P91442377380812215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308265 (|1 - (n : ℤ)| + 1).toNat - A309694 n

end

end A309692.P91442377380812215

/-! ## A309692.P11424243835619095689

`abs(A308265(A028310(n))-A309694(n))`
-/

namespace A309692.P11424243835619095689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308265 (A028310 n).toNat - A309694 n|

end

end A309692.P11424243835619095689

/-! ## A309692.P2287927496034044540

`A000035(2*(n+1))+A308265(A028310(n))-A309694(n)`
-/

namespace A309692.P2287927496034044540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1)) + (A308265 (A028310 n).toNat - A309694 n)

end

end A309692.P2287927496034044540

/-! ## A309692.P2864289964901352545

`(A308265(A028310(n))-A309694(n))*A102283(3*n+4)`
-/

namespace A309692.P2864289964901352545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308265 (A028310 n).toNat - A309694 n) * A102283 (3 * n + 4)

end

end A309692.P2864289964901352545

/-! ## A309692.P4759632666987223573

`(A308265(A028310(n))-A309694(n))%A000285(n)`
-/

namespace A309692.P4759632666987223573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308265 (A028310 n).toNat - A309694 n) (A000285 n)

end

end A309692.P4759632666987223573

/-!
# A309693: Total number of divisors d of m (counted with multiplicity), such that the prime signature of d is a partition of three and m runs through the set of least numbers whose prime signature is a partition of n.

The programs for A309693, there is no canonical definition to state claims against.
-/

/-! ## A309693.P15243819147952339254

`A079025(∑[n+4]+2)`
-/

namespace A309693.P15243819147952339254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A309693.P15243819147952339254

/-! ## A309693.P2621008775770020474

`abs(1-A079025(A052905(n)+8))+1`
-/

namespace A309693.P2621008775770020474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A079025 (A052905 n + 8).toNat| + 1

end

end A309693.P2621008775770020474

/-! ## A309693.P8393234623376185178

`lcm(A079025(A052905(n)+8), A165326(n))`
-/

namespace A309693.P8393234623376185178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079025 (A052905 n + 8).toNat) (A165326 n)

end

end A309693.P8393234623376185178

/-! ## A309693.P11604804769511143776

`or(A000038(n), A079025(A052905(n)+8))`
-/

namespace A309693.P11604804769511143776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A079025 (A052905 n + 8).toNat)

end

end A309693.P11604804769511143776

/-! ## A309693.P10854837463792008630

`A158388(n)²*A079025(A052905(n)+8)`
-/

namespace A309693.P10854837463792008630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n ^ 2 * A079025 (A052905 n + 8).toNat

end

end A309693.P10854837463792008630

/-! ## A309693.P16004258338131928938

`A079025(A052905(n)+8)*A158388(n+1)`
-/

namespace A309693.P16004258338131928938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A052905 n + 8).toNat * A158388 (n + 1)

end

end A309693.P16004258338131928938

/-! ## A309693.P12426841929686724379

`A079025(A000096(n+2)+4)+A000035(2*n)`
-/

namespace A309693.P12426841929686724379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A000096 (n + 2) + 4).toNat + A000035 (2 * n)

end

end A309693.P12426841929686724379

/-! ## A309693.P3264135737821519678

`A010684(2*n)*A079025(A000096(n+2)+4)`
-/

namespace A309693.P3264135737821519678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) * A079025 (A000096 (n + 2) + 4).toNat

end

end A309693.P3264135737821519678

/-! ## A309693.P17079502381416168790

`A009999(round(n/(n+1)))*A079025(A000096(n+2)+4)`
-/

namespace A309693.P17079502381416168790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat * A079025 (A000096 (n + 2) + 4).toNat

end

end A309693.P17079502381416168790

/-! ## A309693.P14628867280110515088

`A079025(A000096(n+2)+4)%A001019(n+1)`
-/

namespace A309693.P14628867280110515088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079025 (A000096 (n + 2) + 4).toNat) (A001019 (n + 1))

end

end A309693.P14628867280110515088

/-!
# A309694: Sum of the even parts appearing among the largest parts of the partitions of n into 3 parts.

The programs for A309694, there is no canonical definition to state claims against.
-/

/-! ## A309694.P11493282459976087359

`A350042(n)-A309512(n)-(A309690(n)+A309686(n))`
-/

namespace A309694.P11493282459976087359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350042 n - A309512 n - (A309690 n + A309686 n)

end

end A309694.P11493282459976087359

/-! ## A309694.P16945298374699693755

`A309515(n)-(A309690(n)+A309686(n))`
-/

namespace A309694.P16945298374699693755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309515 n - (A309690 n + A309686 n)

end

end A309694.P16945298374699693755

/-! ## A309694.P8241587983868056285

`A308265(abs(1-n)+1)-A309692(n)`
-/

namespace A309694.P8241587983868056285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308265 (|1 - (n : ℤ)| + 1).toNat - A309692 n

end

end A309694.P8241587983868056285

/-!
# A309695: Smallest members of prime 5-tuples whose sum is a prime.

The programs for A309695, there is no canonical definition to state claims against.
-/

/-! ## A309695.P13421847687571287172

`record[A006530(Δ[A099036(2*n+1)])]`
-/

namespace A309695.P13421847687571287172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309695.P13421847687571287172

/-!
# A309698: Digits of the 4-adic integer 3^(1/3).

The programs for A309698, there is no canonical definition to state claims against.
-/

/-! ## A309698.P11894281957996978405

`A323000(2*n)+2*A323000(2*n+1)`
-/

namespace A309698.P11894281957996978405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323000 (2 * n) + 2 * A323000 (2 * n + 1)

end

end A309698.P11894281957996978405

/-! ## A309698.P4920574356831648209

`Δ[A322701(2*n)]/A000079(n)²`
-/

namespace A309698.P4920574356831648209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322701 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A309698.P4920574356831648209

/-! ## A309698.P13319526790261344848

`Δ[A322701(2*n)]/A000079(2*n)`
-/

namespace A309698.P13319526790261344848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322701 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 (2 * n) : ℚ)

end

end A309698.P13319526790261344848

/-! ## A309698.P15542646168398103785

`A290749(A290749(2*n+3))%A131654(n)`
-/

namespace A309698.P15542646168398103785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290749 (A290749 (2 * n + 3)).toNat) (A131654 n)

end

end A309698.P15542646168398103785

