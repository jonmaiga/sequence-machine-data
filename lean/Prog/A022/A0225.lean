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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A022500: Describe the previous term! (method B - initial term is 4).

The programs for A022500, there is no canonical definition to state claims against.
-/

/-! ## A022500.P13625841859986980571

`2*A022499(n+1)-A022470(n+1)`
-/

namespace A022500.P13625841859986980571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022499 (n + 1) - A022470 (n + 1)

end

end A022500.P13625841859986980571

/-! ## A022500.P2582288712510203829

`(A022502(n+1)+A022470(n+1))/2`
-/

namespace A022500.P2582288712510203829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022502 (n + 1) + A022470 (n + 1) : ℚ) / 2

end

end A022500.P2582288712510203829

/-! ## A022500.P9163260263706382687

`2*A022501(n+1)-A022502(n+1)`
-/

namespace A022500.P9163260263706382687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022501 (n + 1) - A022502 (n + 1)

end

end A022500.P9163260263706382687

/-! ## A022500.P10597899460633260711

`2*A022502(n+1)-A022504(n+1)`
-/

namespace A022500.P10597899460633260711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022502 (n + 1) - A022504 (n + 1)

end

end A022500.P10597899460633260711

/-! ## A022500.P8493826148864622665

`(5*A022504(n+1))%A022505(n+1)`
-/

namespace A022500.P8493826148864622665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A022504 (n + 1)) (A022505 (n + 1))

end

end A022500.P8493826148864622665

/-!
# A022501: Describe the previous term! (method B - initial term is 5).

The programs for A022501, there is no canonical definition to state claims against.
-/

/-! ## A022501.P11300114223382444747

`(A022504(n+1)+A022470(n+1))/2`
-/

namespace A022501.P11300114223382444747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022504 (n + 1) + A022470 (n + 1) : ℚ) / 2

end

end A022501.P11300114223382444747

/-! ## A022501.P10865505550134038467

`2*A022500(n+1)-A022499(n+1)`
-/

namespace A022501.P10865505550134038467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022500 (n + 1) - A022499 (n + 1)

end

end A022501.P10865505550134038467

/-! ## A022501.P2546187214739914285

`2*A022502(n+1)-A022503(n+1)`
-/

namespace A022501.P2546187214739914285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022502 (n + 1) - A022503 (n + 1)

end

end A022501.P2546187214739914285

/-! ## A022501.P11629982348930556585

`2*A022503(n+1)-A022505(n+1)`
-/

namespace A022501.P11629982348930556585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022503 (n + 1) - A022505 (n + 1)

end

end A022501.P11629982348930556585

/-! ## A022501.P17391763344740571453

`(A022502(n+1)+A022500(n+1))/2`
-/

namespace A022501.P17391763344740571453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022502 (n + 1) + A022500 (n + 1) : ℚ) / 2

end

end A022501.P17391763344740571453

/-!
# A022502: Describe the previous term! (method B - initial term is 6).

The programs for A022502, there is no canonical definition to state claims against.
-/

/-! ## A022502.P13962330856280391349

`2*A022500(n+1)-A022470(n+1)`
-/

namespace A022502.P13962330856280391349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022500 (n + 1) - A022470 (n + 1)

end

end A022502.P13962330856280391349

/-! ## A022502.P17276002679935854639

`2*A022501(n+1)-A022500(n+1)`
-/

namespace A022502.P17276002679935854639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022501 (n + 1) - A022500 (n + 1)

end

end A022502.P17276002679935854639

/-! ## A022502.P12748070377796670334

`2*A022503(n+1)-A022504(n+1)`
-/

namespace A022502.P12748070377796670334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022503 (n + 1) - A022504 (n + 1)

end

end A022502.P12748070377796670334

/-! ## A022502.P2610197710774462751

`(A022503(n+1)+A022501(n+1))/2`
-/

namespace A022502.P2610197710774462751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022503 (n + 1) + A022501 (n + 1) : ℚ) / 2

end

end A022502.P2610197710774462751

/-! ## A022502.P4265895244281252003

`(A022504(n+1)+A022500(n+1))/2`
-/

namespace A022502.P4265895244281252003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022504 (n + 1) + A022500 (n + 1) : ℚ) / 2

end

end A022502.P4265895244281252003

/-!
# A022503: Describe the previous term! (method B - initial term is 7).

The programs for A022503, there is no canonical definition to state claims against.
-/

/-! ## A022503.P4804098758407273996

`2*A022502(n+1)-A022501(n+1)`
-/

namespace A022503.P4804098758407273996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022502 (n + 1) - A022501 (n + 1)

end

end A022503.P4804098758407273996

/-! ## A022503.P10656789456753758239

`2*A022504(n+1)-A022505(n+1)`
-/

namespace A022503.P10656789456753758239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022504 (n + 1) - A022505 (n + 1)

end

end A022503.P10656789456753758239

/-! ## A022503.P3776947643837224387

`(A022504(n+1)+A022502(n+1))/2`
-/

namespace A022503.P3776947643837224387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022504 (n + 1) + A022502 (n + 1) : ℚ) / 2

end

end A022503.P3776947643837224387

/-! ## A022503.P16568401478998586335

`A022470(n+1)+A022504(n+1)-A022499(n+1)`
-/

namespace A022503.P16568401478998586335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022470 (n + 1) + (A022504 (n + 1) - A022499 (n + 1))

end

end A022503.P16568401478998586335

/-! ## A022503.P16788742576649741873

`A022470(n+1)+A022505(n+1)-A022500(n+1)`
-/

namespace A022503.P16788742576649741873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022470 (n + 1) + (A022505 (n + 1) - A022500 (n + 1))

end

end A022503.P16788742576649741873

/-!
# A022504: Describe the previous term! (method B - initial term is 8).

The programs for A022504, there is no canonical definition to state claims against.
-/

/-! ## A022504.P167165025032506691

`2*A022501(n+1)-A022470(n+1)`
-/

namespace A022504.P167165025032506691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022501 (n + 1) - A022470 (n + 1)

end

end A022504.P167165025032506691

/-! ## A022504.P16978185328188461007

`2*A022502(n+1)-A022500(n+1)`
-/

namespace A022504.P16978185328188461007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022502 (n + 1) - A022500 (n + 1)

end

end A022504.P16978185328188461007

/-! ## A022504.P60328193588978951

`2*A022503(n+1)-A022502(n+1)`
-/

namespace A022504.P60328193588978951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022503 (n + 1) - A022502 (n + 1)

end

end A022504.P60328193588978951

/-! ## A022504.P14725649212143811340

`(A022505(n+1)+A022503(n+1))/2`
-/

namespace A022504.P14725649212143811340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022505 (n + 1) + A022503 (n + 1) : ℚ) / 2

end

end A022504.P14725649212143811340

/-! ## A022504.P6931024180487110838

`A022470(n+1)+A022505(n+1)-A022499(n+1)`
-/

namespace A022504.P6931024180487110838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022470 (n + 1) + (A022505 (n + 1) - A022499 (n + 1))

end

end A022504.P6931024180487110838

/-!
# A022505: Describe the previous term! (method B - initial term is 9).

The programs for A022505, there is no canonical definition to state claims against.
-/

/-! ## A022505.P5612020973208360400

`2*A022502(n+1)-A022499(n+1)`
-/

namespace A022505.P5612020973208360400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022502 (n + 1) - A022499 (n + 1)

end

end A022505.P5612020973208360400

/-! ## A022505.P81549715824485436

`2*A022503(n+1)-A022501(n+1)`
-/

namespace A022505.P81549715824485436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022503 (n + 1) - A022501 (n + 1)

end

end A022505.P81549715824485436

/-! ## A022505.P11765545942791913902

`2*A022504(n+1)-A022503(n+1)`
-/

namespace A022505.P11765545942791913902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022504 (n + 1) - A022503 (n + 1)

end

end A022505.P11765545942791913902

/-! ## A022505.P4070386635619999707

`A022499(n+1)+A022504(n+1)-A022470(n+1)`
-/

namespace A022505.P4070386635619999707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022499 (n + 1) + (A022504 (n + 1) - A022470 (n + 1))

end

end A022505.P4070386635619999707

/-! ## A022505.P8486435571253141914

`A022500(n+1)+A022503(n+1)-A022470(n+1)`
-/

namespace A022505.P8486435571253141914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022500 (n + 1) + (A022503 (n + 1) - A022470 (n + 1))

end

end A022505.P8486435571253141914

/-!
# A022506: Describe previous term from the right (method A - initial term is 0).

The programs for A022506, there is no canonical definition to state claims against.
-/

/-! ## A022506.P7338607194499344251

`2*A022507(n)-A022510(n)`
-/

namespace A022506.P7338607194499344251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022507 n - A022510 n

end

end A022506.P7338607194499344251

/-!
# A022507: Describe previous term from the right (method A - initial term is 3).

The programs for A022507, there is no canonical definition to state claims against.
-/

/-! ## A022507.P5707721660082455185

`2*A022508(n)-A022509(n)`
-/

namespace A022507.P5707721660082455185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022508 n - A022509 n

end

end A022507.P5707721660082455185

/-! ## A022507.P3446802353803556184

`2*A022509(n)-A022511(n)`
-/

namespace A022507.P3446802353803556184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022509 n - A022511 n

end

end A022507.P3446802353803556184

/-! ## A022507.P14825080044486660476

`ceil((A022510(n)+A022506(n))/2)`
-/

namespace A022507.P14825080044486660476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022510 n + A022506 n : ℚ) / 2⌉

end

end A022507.P14825080044486660476

/-! ## A022507.P13276186933799411935

`A022506(n)+A022511(n)-A022508(n)`
-/

namespace A022507.P13276186933799411935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022506 n + (A022511 n - A022508 n)

end

end A022507.P13276186933799411935

/-!
# A022508: Describe previous term from the right (method A - initial term is 4).

The programs for A022508, there is no canonical definition to state claims against.
-/

/-! ## A022508.P2201082736147811770

`2*A022509(n)-A022510(n)`
-/

namespace A022508.P2201082736147811770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022509 n - A022510 n

end

end A022508.P2201082736147811770

/-! ## A022508.P2822758144908357913

`(A022509(n)+A022507(n))/2`
-/

namespace A022508.P2822758144908357913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022509 n + A022507 n : ℚ) / 2

end

end A022508.P2822758144908357913

/-! ## A022508.P7581424181642703666

`ceil((A022512(n)+A022506(n))/2)`
-/

namespace A022508.P7581424181642703666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022512 n + A022506 n : ℚ) / 2⌉

end

end A022508.P7581424181642703666

/-! ## A022508.P11226591035021193695

`A022506(n)+A022511(n)-A022507(n)`
-/

namespace A022508.P11226591035021193695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022506 n + (A022511 n - A022507 n)

end

end A022508.P11226591035021193695

/-!
# A022509: Describe previous term from the right (method A - initial term is 5).

The programs for A022509, there is no canonical definition to state claims against.
-/

/-! ## A022509.P18011209784485346501

`(A022510(n)+A022508(n))/2`
-/

namespace A022509.P18011209784485346501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022510 n + A022508 n : ℚ) / 2

end

end A022509.P18011209784485346501

/-! ## A022509.P3995145661000791676

`A022511(n)+A022511(n)-A022513(n)`
-/

namespace A022509.P3995145661000791676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022511 n + (A022511 n - A022513 n)

end

end A022509.P3995145661000791676

/-!
# A022510: Describe previous term from the right (method A - initial term is 6).

The programs for A022510, there is no canonical definition to state claims against.
-/

/-! ## A022510.P15879595338850245875

`2*A022509(n)-A022508(n)`
-/

namespace A022510.P15879595338850245875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022509 n - A022508 n

end

end A022510.P15879595338850245875

/-! ## A022510.P7625793533146819612

`(A022511(n)+A022509(n))/2`
-/

namespace A022510.P7625793533146819612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022511 n + A022509 n : ℚ) / 2

end

end A022510.P7625793533146819612

/-! ## A022510.P16646601299308282346

`ceil((A022512(n)+A022508(n))/2)`
-/

namespace A022510.P16646601299308282346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022512 n + A022508 n : ℚ) / 2⌉

end

end A022510.P16646601299308282346

/-! ## A022510.P5975168255018450421

`A022507(n)+A022507(n)-A022506(n)`
-/

namespace A022510.P5975168255018450421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022507 n + (A022507 n - A022506 n)

end

end A022510.P5975168255018450421

/-!
# A022511: Describe previous term from the right (method A - initial term is 7).

The programs for A022511, there is no canonical definition to state claims against.
-/

/-! ## A022511.P15284875505161017109

`2*A022509(n)-A022507(n)`
-/

namespace A022511.P15284875505161017109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022509 n - A022507 n

end

end A022511.P15284875505161017109

/-! ## A022511.P5083664027169341796

`2*A022510(n)-A022509(n)`
-/

namespace A022511.P5083664027169341796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022510 n - A022509 n

end

end A022511.P5083664027169341796

/-! ## A022511.P3161858084004121664

`(A022513(n)+A022509(n))/2`
-/

namespace A022511.P3161858084004121664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022513 n + A022509 n : ℚ) / 2

end

end A022511.P3161858084004121664

/-! ## A022511.P7661731436828928335

`ceil((A022512(n)+A022510(n))/2)`
-/

namespace A022511.P7661731436828928335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022512 n + A022510 n : ℚ) / 2⌉

end

end A022511.P7661731436828928335

/-! ## A022511.P3872503663293083343

`A022507(n)+A022508(n)-A022506(n)`
-/

namespace A022511.P3872503663293083343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022507 n + (A022508 n - A022506 n)

end

end A022511.P3872503663293083343

/-!
# A022512: Describe previous term from the right (method A - initial term is 8).

The programs for A022512, there is no canonical definition to state claims against.
-/

/-! ## A022512.P4267856582397943763

`2*A022508(n)-A022506(n)`
-/

namespace A022512.P4267856582397943763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022508 n - A022506 n

end

end A022512.P4267856582397943763

/-! ## A022512.P421662986064091105

`2*A022510(n)-A022508(n)`
-/

namespace A022512.P421662986064091105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022510 n - A022508 n

end

end A022512.P421662986064091105

/-! ## A022512.P3031313294002320108

`(A022513(n)+A022511(n))/2`
-/

namespace A022512.P3031313294002320108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022513 n + A022511 n : ℚ) / 2

end

end A022512.P3031313294002320108

/-! ## A022512.P4004620743945160720

`A022507(n)+A022509(n)-A022506(n)`
-/

namespace A022512.P4004620743945160720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022507 n + (A022509 n - A022506 n)

end

end A022512.P4004620743945160720

/-!
# A022513: Describe previous term from the right (method A - initial term is 9).

The programs for A022513, there is no canonical definition to state claims against.
-/

/-! ## A022513.P6357728119544117693

`2*A022510(n)-A022507(n)`
-/

namespace A022513.P6357728119544117693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022510 n - A022507 n

end

end A022513.P6357728119544117693

/-! ## A022513.P10441501264012160557

`2*A022511(n)-A022509(n)`
-/

namespace A022513.P10441501264012160557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022511 n - A022509 n

end

end A022513.P10441501264012160557

/-! ## A022513.P400698813029145763

`A022507(n)+A022510(n)-A022506(n)`
-/

namespace A022513.P400698813029145763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022507 n + (A022510 n - A022506 n)

end

end A022513.P400698813029145763

/-!
# A022514: Describe previous term from the right (method B - initial term is 3).

The programs for A022514, there is no canonical definition to state claims against.
-/

/-! ## A022514.P455369156455358947

`2*A022515(n)-A022516(n)`
-/

namespace A022514.P455369156455358947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022515 n - A022516 n

end

end A022514.P455369156455358947

/-!
# A022515: Describe previous term from the right (method B - initial term is 4).

The programs for A022515, there is no canonical definition to state claims against.
-/

/-! ## A022515.P3457697337361092415

`2*A022516(n)-A022517(n)`
-/

namespace A022515.P3457697337361092415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022516 n - A022517 n

end

end A022515.P3457697337361092415

/-! ## A022515.P12571805930228055567

`(A022516(n)+A022514(n))/2`
-/

namespace A022515.P12571805930228055567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022516 n + A022514 n : ℚ) / 2

end

end A022515.P12571805930228055567

/-! ## A022515.P11609949287585608352

`A022514(n)+A022517(n)-A022516(n)`
-/

namespace A022515.P11609949287585608352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022514 n + (A022517 n - A022516 n)

end

end A022515.P11609949287585608352

/-!
# A022516: Describe previous term from the right (method B - initial term is 5).

The programs for A022516, there is no canonical definition to state claims against.
-/

/-! ## A022516.P8157864750101002146

`2*A022515(n)-A022514(n)`
-/

namespace A022516.P8157864750101002146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022515 n - A022514 n

end

end A022516.P8157864750101002146

/-! ## A022516.P5274773027083464987

`(A022517(n)+A022515(n))/2`
-/

namespace A022516.P5274773027083464987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022517 n + A022515 n : ℚ) / 2

end

end A022516.P5274773027083464987

/-! ## A022516.P14915860527871089212

`A022517(n)+A022517(n)-A022518(n)`
-/

namespace A022516.P14915860527871089212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022517 n + (A022517 n - A022518 n)

end

end A022516.P14915860527871089212

/-!
# A022517: Describe previous term from the right (method B - initial term is 6).

The programs for A022517, there is no canonical definition to state claims against.
-/

/-! ## A022517.P16871607636769542317

`2*A022516(n)-A022515(n)`
-/

namespace A022517.P16871607636769542317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022516 n - A022515 n

end

end A022517.P16871607636769542317

/-! ## A022517.P3043254475470212953

`(A022519(n)+A022515(n))/2`
-/

namespace A022517.P3043254475470212953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022519 n + A022515 n : ℚ) / 2

end

end A022517.P3043254475470212953

/-! ## A022517.P3911206597875845396

`ceil((A022520(n)+A022514(n))/2)`
-/

namespace A022517.P3911206597875845396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022520 n + A022514 n : ℚ) / 2⌉

end

end A022517.P3911206597875845396

/-! ## A022517.P17698110721688261866

`A022515(n)+A022516(n)-A022514(n)`
-/

namespace A022517.P17698110721688261866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022515 n + (A022516 n - A022514 n)

end

end A022517.P17698110721688261866

/-!
# A022518: Describe previous term from the right (method B - initial term is 7).

The programs for A022518, there is no canonical definition to state claims against.
-/

/-! ## A022518.P18126402628920738039

`2*A022516(n)-A022514(n)`
-/

namespace A022518.P18126402628920738039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022516 n - A022514 n

end

end A022518.P18126402628920738039

/-! ## A022518.P8392036592731788565

`2*A022517(n)-A022516(n)`
-/

namespace A022518.P8392036592731788565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022517 n - A022516 n

end

end A022518.P8392036592731788565

/-! ## A022518.P11291403760635542946

`(A022519(n)+A022517(n))/2`
-/

namespace A022518.P11291403760635542946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022519 n + A022517 n : ℚ) / 2

end

end A022518.P11291403760635542946

/-! ## A022518.P17417839764499048471

`A022515(n)+A022517(n)-A022514(n)`
-/

namespace A022518.P17417839764499048471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022515 n + (A022517 n - A022514 n)

end

end A022518.P17417839764499048471

/-!
# A022519: Describe previous term from the right (method B - initial term is 8).

The programs for A022519, there is no canonical definition to state claims against.
-/

/-! ## A022519.P18220104411811950436

`2*A022517(n)-A022515(n)`
-/

namespace A022519.P18220104411811950436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022517 n - A022515 n

end

end A022519.P18220104411811950436

/-! ## A022519.P16392634145739567599

`A022518(n)+A022518(n)-A022517(n)`
-/

namespace A022519.P16392634145739567599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022518 n + (A022518 n - A022517 n)

end

end A022519.P16392634145739567599

/-!
# A022520: Describe previous term from the right (method B - initial term is 9).

The programs for A022520, there is no canonical definition to state claims against.
-/

/-! ## A022520.P16831825297088227762

`2*A022517(n)-A022514(n)`
-/

namespace A022520.P16831825297088227762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022517 n - A022514 n

end

end A022520.P16831825297088227762

/-! ## A022520.P15931091118104859763

`A022515(n)+A022519(n)-A022514(n)`
-/

namespace A022520.P15931091118104859763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022515 n + (A022519 n - A022514 n)

end

end A022520.P15931091118104859763

/-!
# A022521: a(n) = (n+1)^5 - n^5.

The programs for A022521, the canonical program `A022521.P13355079520677844041` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022521 has offset 0).

The definition of A022521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^5-n^5` (program `A022521.P13355079520677844041`, by `A022521.P13355079520677844041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022521.P13355079520677844041

`(n+1)^5-n^5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022521

/-- `(n+1)^5-n^5` -/
def P13355079520677844041.Spec : Prop :=
  ∀ n, P13355079520677844041.a n = A022521 n

theorem P13355079520677844041.correct : P13355079520677844041.Spec := by
  intro n
  simp only [A022521]

end A022521

/-! ## A022521.P11205717515992773839

`or(1, Δ[n*n²²])`
-/

namespace A022521.P11205717515992773839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022521.P11205717515992773839

namespace A022521

/-- `or(1, Δ[n*n²²])` -/
def P11205717515992773839.Spec : Prop :=
  ∀ n, P11205717515992773839.a n = A022521 n

end A022521

/-! ## A022521.P5053584891335312910

`∑[A101098(n+1)]`
-/

namespace A022521.P5053584891335312910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022521.P5053584891335312910

namespace A022521

/-- `∑[A101098(n+1)]` -/
def P5053584891335312910.Spec : Prop :=
  ∀ n, P5053584891335312910.a n = A022521 n

end A022521

/-! ## A022521.P11729477369943930294

`∑[∑[A101096(n+1)]]`
-/

namespace A022521.P11729477369943930294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022521.P11729477369943930294

namespace A022521

/-- `∑[∑[A101096(n+1)]]` -/
def P11729477369943930294.Spec : Prop :=
  ∀ n, P11729477369943930294.a n = A022521 n

end A022521

/-! ## A022521.P5655792291756171202

`∑[∑[∑[A101095(n+1)]]]`
-/

namespace A022521.P5655792291756171202
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022521.P5655792291756171202

namespace A022521

/-- `∑[∑[∑[A101095(n+1)]]]` -/
def P5655792291756171202.Spec : Prop :=
  ∀ n, P5655792291756171202.a n = A022521 n

end A022521

/-! ## A022521.P1190115215722929906

`A022526(n)/A008515(n)`
-/

namespace A022521.P1190115215722929906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022526 n : ℚ) / (A008515 n : ℚ)

end

end A022521.P1190115215722929906

namespace A022521

/-- `A022526(n)/A008515(n)` -/
def P1190115215722929906.Spec : Prop :=
  ∀ n, P1190115215722929906.a n = (A022521 n : ℚ)

theorem P1190115215722929906.correct : P1190115215722929906.Spec := by
  intro n
  simp only [A022521, Nat.add_sub_cancel, A022521.P1190115215722929906.a, A022521.P13355079520677844041.a, A008515, A008515.P11691504425021295822.a, A022526, A022526.P1518772193900878853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022521

/-! ## A022521.P4026437130266233817

`Δ[n²*Δ[C(n, 2)²]]`
-/

namespace A022521.P4026437130266233817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022521.P4026437130266233817

namespace A022521

/-- `Δ[n²*Δ[C(n, 2)²]]` -/
def P4026437130266233817.Spec : Prop :=
  ∀ n, P4026437130266233817.a n = A022521 n

theorem P4026437130266233817.correct : P4026437130266233817.Spec := by
  intro n
  simp only [A022521, Nat.add_sub_cancel, A022521.P4026437130266233817.f2, A022521.P4026437130266233817.f1, A022521.P4026437130266233817.a, A022521.P13355079520677844041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A022521

/-! ## A022521.P8576207094162154422

`Δ[A000584(n)]`
-/

namespace A022521.P8576207094162154422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022521.P8576207094162154422

namespace A022521

/-- `Δ[A000584(n)]` -/
def P8576207094162154422.Spec : Prop :=
  ∀ n, P8576207094162154422.a n = A022521 n

theorem P8576207094162154422.correct : P8576207094162154422.Spec := by
  intro n
  simp only [A022521, Nat.add_sub_cancel, A022521.P8576207094162154422.f1, A022521.P8576207094162154422.a, A022521.P13355079520677844041.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022521

/-! ## A022521.P9412355549763503510

`abs(Δ[A024003(n)])`
-/

namespace A022521.P9412355549763503510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022521.P9412355549763503510

namespace A022521

/-- `abs(Δ[A024003(n)])` -/
def P9412355549763503510.Spec : Prop :=
  ∀ n, P9412355549763503510.a n = A022521 n

end A022521

/-! ## A022521.P9049871570896143518

`Δ[sqrt(A008454(n))]`
-/

namespace A022521.P9049871570896143518
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008454 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022521.P9049871570896143518

namespace A022521

/-- `Δ[sqrt(A008454(n))]` -/
def P9049871570896143518.Spec : Prop :=
  ∀ n, P9049871570896143518.a n = (A022521 n : ℝ)

end A022521

/-! ## A022521.P12435885937013992149

`Δ[Δ[A263689(n)]]`
-/

namespace A022521.P12435885937013992149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022521.P12435885937013992149

namespace A022521

/-- `Δ[Δ[A263689(n)]]` -/
def P12435885937013992149.Spec : Prop :=
  ∀ n, P12435885937013992149.a n = A022521 n

end A022521

/-! ## A022521.P1259989141997553105

`Δ[val(2^(2*n), 4)^5]`
-/

namespace A022521.P1259989141997553105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ (2 * n)) 4 ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A022521.P1259989141997553105

namespace A022521

/-- `Δ[val(2^(2*n), 4)^5]` -/
def P1259989141997553105.Spec : Prop :=
  ∀ n, P1259989141997553105.a n = A022521 n

end A022521

/-! ## A022521.P13122589790532028376

`Δ[A163285(∑[n])]`
-/

namespace A022521.P13122589790532028376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163285 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022521.P13122589790532028376

namespace A022521

/-- `Δ[A163285(∑[n])]` -/
def P13122589790532028376.Spec : Prop :=
  ∀ n, P13122589790532028376.a n = A022521 n

end A022521

/-! ## A022521.P6935695890404189648

`A062786(n²+n+1)`
-/

namespace A022521.P6935695890404189648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n ^ 2 + (n + 1))

end

end A022521.P6935695890404189648

namespace A022521

/-- `A062786(n²+n+1)` -/
def P6935695890404189648.Spec : Prop :=
  ∀ n, P6935695890404189648.a n = A022521 n

end A022521

/-! ## A022521.P4829086352821444657

`A273366(n²+n)/2`
-/

namespace A022521.P4829086352821444657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273366 (n ^ 2 + n) : ℚ) / 2

end

end A022521.P4829086352821444657

namespace A022521

/-- `A273366(n²+n)/2` -/
def P4829086352821444657.Spec : Prop :=
  ∀ n, P4829086352821444657.a n = (A022521 n : ℚ)

theorem P4829086352821444657.correct : P4829086352821444657.Spec := by
  intro n
  simp only [A022521, Nat.add_sub_cancel, A022521.P4829086352821444657.a, A022521.P13355079520677844041.a, A273366, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022521

/-! ## A022521.P11297474763222863625

`∩[A062786(n+1), A247099(n+1)]`
-/

namespace A022521.P11297474763222863625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022521.P11297474763222863625

namespace A022521

/-- `∩[A062786(n+1), A247099(n+1)]` -/
def P11297474763222863625.Spec : Prop :=
  ∀ n, (P11297474763222863625.a n : ℤ) = A022521 n

end A022521

/-!
# A022522: Nexus numbers (n+1)^6 - n^6.

The programs for A022522, the canonical program `A022522.P16854360949907572851` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022522 has offset 0).

The definition of A022522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^6-n^6` (program `A022522.P16854360949907572851`, by `A022522.P16854360949907572851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022522.P16854360949907572851

`(n+1)^6-n^6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022522

/-- `(n+1)^6-n^6` -/
def P16854360949907572851.Spec : Prop :=
  ∀ n, P16854360949907572851.a n = A022522 n

theorem P16854360949907572851.correct : P16854360949907572851.Spec := by
  intro n
  simp only [A022522]

end A022522

/-! ## A022522.P3186327397319774690

`A005408(n)*A243201(n)`
-/

namespace A022522.P3186327397319774690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A243201 n

end

end A022522.P3186327397319774690

namespace A022522

/-- `A005408(n)*A243201(n)` -/
def P3186327397319774690.Spec : Prop :=
  ∀ n, P3186327397319774690.a n = A022522 n

theorem P3186327397319774690.correct : P3186327397319774690.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P3186327397319774690.a, A022522.P16854360949907572851.a, A005408, A005408.P17437947328870227736.a, A243201, A243201.P1770549597896343998.a, A002061, A002061.P13016590216674735232.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P11833802955067386895

`or(1, Δ[(n*n²)²])`
-/

namespace A022522.P11833802955067386895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022522.P11833802955067386895

namespace A022522

/-- `or(1, Δ[(n*n²)²])` -/
def P11833802955067386895.Spec : Prop :=
  ∀ n, P11833802955067386895.a n = A022522 n

end A022522

/-! ## A022522.P2824167889875576876

`lcm(2*n+1, Δ[(n*n²)²])`
-/

namespace A022522.P2824167889875576876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022522.P2824167889875576876

namespace A022522

/-- `lcm(2*n+1, Δ[(n*n²)²])` -/
def P2824167889875576876.Spec : Prop :=
  ∀ n, (P2824167889875576876.a n : ℤ) = A022522 n

end A022522

/-! ## A022522.P15435293595213275620

`Δ[A000578(n)²]`
-/

namespace A022522.P15435293595213275620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022522.P15435293595213275620

namespace A022522

/-- `Δ[A000578(n)²]` -/
def P15435293595213275620.Spec : Prop :=
  ∀ n, P15435293595213275620.a n = A022522 n

theorem P15435293595213275620.correct : P15435293595213275620.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P15435293595213275620.f1, A022522.P15435293595213275620.a, A022522.P16854360949907572851.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P12352557865501053850

`A003215(n)*A005898(n)`
-/

namespace A022522.P12352557865501053850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n * A005898 n

end

end A022522.P12352557865501053850

namespace A022522

/-- `A003215(n)*A005898(n)` -/
def P12352557865501053850.Spec : Prop :=
  ∀ n, P12352557865501053850.a n = A022522 n

theorem P12352557865501053850.correct : P12352557865501053850.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P12352557865501053850.a, A022522.P16854360949907572851.a, A003215, A003215.P5851317289441473820.a, A005898, A005898.P8127451400230703254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P17099764820627629414

`Δ[A000578(n)]*A005898(n)`
-/

namespace A022522.P17099764820627629414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005898 n

end

end A022522.P17099764820627629414

namespace A022522

/-- `Δ[A000578(n)]*A005898(n)` -/
def P17099764820627629414.Spec : Prop :=
  ∀ n, P17099764820627629414.a n = A022522 n

theorem P17099764820627629414.correct : P17099764820627629414.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P17099764820627629414.f1, A022522.P17099764820627629414.a, A022522.P16854360949907572851.a, A000578, A000578.P12162961755414704816.a, A005898, A005898.P8127451400230703254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P2887811945416018492

`(A033951(n)-n²)*A005898(n)`
-/

namespace A022522.P2887811945416018492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033951 n - (n ^ 2 : ℤ)) * A005898 n

end

end A022522.P2887811945416018492

namespace A022522

/-- `(A033951(n)-n²)*A005898(n)` -/
def P2887811945416018492.Spec : Prop :=
  ∀ n, P2887811945416018492.a n = A022522 n

theorem P2887811945416018492.correct : P2887811945416018492.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P2887811945416018492.a, A022522.P16854360949907572851.a, A005898, A005898.P8127451400230703254.a, A033951, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P3355344133651284582

`(A000578(n+1)+A000578(n))*A003215(n)`
-/

namespace A022522.P3355344133651284582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) + A000578 n) * A003215 n

end

end A022522.P3355344133651284582

namespace A022522

/-- `(A000578(n+1)+A000578(n))*A003215(n)` -/
def P3355344133651284582.Spec : Prop :=
  ∀ n, P3355344133651284582.a n = A022522 n

theorem P3355344133651284582.correct : P3355344133651284582.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P3355344133651284582.a, A022522.P16854360949907572851.a, A000578, A000578.P12162961755414704816.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P10302898456398466670

`(A000578(n+1)-A000578(n))*A005898(n)`
-/

namespace A022522.P10302898456398466670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) - A000578 n) * A005898 n

end

end A022522.P10302898456398466670

namespace A022522

/-- `(A000578(n+1)-A000578(n))*A005898(n)` -/
def P10302898456398466670.Spec : Prop :=
  ∀ n, P10302898456398466670.a n = A022522 n

theorem P10302898456398466670.correct : P10302898456398466670.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P10302898456398466670.a, A022522.P16854360949907572851.a, A000578, A000578.P12162961755414704816.a, A005898, A005898.P8127451400230703254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P18434455981729710322

`A239426(n+1)/A239449(n+1)*A005898(n)`
-/

namespace A022522.P18434455981729710322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239426 (n + 1) : ℚ) / (A239449 (n + 1) : ℚ) * (A005898 n : ℚ)

end

end A022522.P18434455981729710322

namespace A022522

/-- `A239426(n+1)/A239449(n+1)*A005898(n)` -/
def P18434455981729710322.Spec : Prop :=
  ∀ n, P18434455981729710322.a n = (A022522 n : ℚ)

end A022522

/-! ## A022522.P13363603612888598381

`Δ[Δ[C(n, 2)²]²]`
-/

namespace A022522.P13363603612888598381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022522.P13363603612888598381

namespace A022522

/-- `Δ[Δ[C(n, 2)²]²]` -/
def P13363603612888598381.Spec : Prop :=
  ∀ n, P13363603612888598381.a n = A022522 n

theorem P13363603612888598381.correct : P13363603612888598381.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P13363603612888598381.f2, A022522.P13363603612888598381.f1, A022522.P13363603612888598381.a, A022522.P16854360949907572851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P11031795165952251139

`Δ[A001014(n)]`
-/

namespace A022522.P11031795165952251139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022522.P11031795165952251139

namespace A022522

/-- `Δ[A001014(n)]` -/
def P11031795165952251139.Spec : Prop :=
  ∀ n, P11031795165952251139.a n = A022522 n

theorem P11031795165952251139.correct : P11031795165952251139.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P11031795165952251139.f1, A022522.P11031795165952251139.a, A022522.P16854360949907572851.a, A001014, A001014.P10270364271630987481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P10546598132146261267

`Δ[A002604(n)]`
-/

namespace A022522.P10546598132146261267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022522.P10546598132146261267

namespace A022522

/-- `Δ[A002604(n)]` -/
def P10546598132146261267.Spec : Prop :=
  ∀ n, P10546598132146261267.a n = A022522 n

theorem P10546598132146261267.correct : P10546598132146261267.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P10546598132146261267.f1, A022522.P10546598132146261267.a, A022522.P16854360949907572851.a, A002604, A002604.P7413616626921950618.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P16872728547097474372

`abs(Δ[A024004(n)])`
-/

namespace A022522.P16872728547097474372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022522.P16872728547097474372

namespace A022522

/-- `abs(Δ[A024004(n)])` -/
def P16872728547097474372.Spec : Prop :=
  ∀ n, P16872728547097474372.a n = A022522 n

end A022522

/-! ## A022522.P7110430854778980890

`Δ[sqrt(A008456(n))]`
-/

namespace A022522.P7110430854778980890
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008456 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022522.P7110430854778980890

namespace A022522

/-- `Δ[sqrt(A008456(n))]` -/
def P7110430854778980890.Spec : Prop :=
  ∀ n, P7110430854778980890.a n = (A022522 n : ℝ)

end A022522

/-! ## A022522.P9972729020926293040

`(A153976(n)-A003215(n+1))*A003215(n)`
-/

namespace A022522.P9972729020926293040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153976 n - A003215 (n + 1)) * A003215 n

end

end A022522.P9972729020926293040

namespace A022522

/-- `(A153976(n)-A003215(n+1))*A003215(n)` -/
def P9972729020926293040.Spec : Prop :=
  ∀ n, P9972729020926293040.a n = A022522 n

theorem P9972729020926293040.correct : P9972729020926293040.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P9972729020926293040.a, A022522.P16854360949907572851.a, A003215, A003215.P5851317289441473820.a, A153976, A153976.P9754858102248380497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P9817336452615635621

`(A005898(n+1)-A153976(n))*A005898(n)`
-/

namespace A022522.P9817336452615635621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005898 (n + 1) - A153976 n) * A005898 n

end

end A022522.P9817336452615635621

namespace A022522

/-- `(A005898(n+1)-A153976(n))*A005898(n)` -/
def P9817336452615635621.Spec : Prop :=
  ∀ n, P9817336452615635621.a n = A022522 n

theorem P9817336452615635621.correct : P9817336452615635621.Spec := by
  intro n
  simp only [A022522, Nat.add_sub_cancel, A022522.P9817336452615635621.a, A022522.P16854360949907572851.a, A005898, A005898.P8127451400230703254.a, A153976, A153976.P9754858102248380497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022522

/-! ## A022522.P8764695652946716846

`A005898(n)*A077043(2*n+1)`
-/

namespace A022522.P8764695652946716846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n * A077043 (2 * n + 1)

end

end A022522.P8764695652946716846

namespace A022522

/-- `A005898(n)*A077043(2*n+1)` -/
def P8764695652946716846.Spec : Prop :=
  ∀ n, P8764695652946716846.a n = A022522 n

end A022522

/-!
# A022523: Nexus numbers (n + 1)^7 - n^7.

The programs for A022523, the canonical program `A022523.P11966938056709641489` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022523 has offset 0).

The definition of A022523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^7-n^7` (program `A022523.P11966938056709641489`, by `A022523.P11966938056709641489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022523.P11966938056709641489

`(n+1)^7-n^7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022523

/-- `(n+1)^7-n^7` -/
def P11966938056709641489.Spec : Prop :=
  ∀ n, P11966938056709641489.a n = A022523 n

theorem P11966938056709641489.correct : P11966938056709641489.Spec := by
  intro n
  simp only [A022523]

end A022523

/-! ## A022523.P7717801344357310696

`∑[A255177(n)]`
-/

namespace A022523.P7717801344357310696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022523.P7717801344357310696

namespace A022523

/-- `∑[A255177(n)]` -/
def P7717801344357310696.Spec : Prop :=
  ∀ n, P7717801344357310696.a n = A022523 n

end A022523

/-! ## A022523.P9731618840874516606

`∑[∑[A255181(n)]]`
-/

namespace A022523.P9731618840874516606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255181 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022523.P9731618840874516606

namespace A022523

/-- `∑[∑[A255181(n)]]` -/
def P9731618840874516606.Spec : Prop :=
  ∀ n, P9731618840874516606.a n = A022523 n

end A022523

/-! ## A022523.P3664065834962407595

`Δ[n*Δ[C(n, 2)²]²]`
-/

namespace A022523.P3664065834962407595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022523.P3664065834962407595

namespace A022523

/-- `Δ[n*Δ[C(n, 2)²]²]` -/
def P3664065834962407595.Spec : Prop :=
  ∀ n, P3664065834962407595.a n = A022523 n

theorem P3664065834962407595.correct : P3664065834962407595.Spec := by
  intro n
  simp only [A022523, Nat.add_sub_cancel, A022523.P3664065834962407595.f2, A022523.P3664065834962407595.f1, A022523.P3664065834962407595.a, A022523.P11966938056709641489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A022523

/-! ## A022523.P13563218132762016018

`Δ[A001015(n)]`
-/

namespace A022523.P13563218132762016018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022523.P13563218132762016018

namespace A022523

/-- `Δ[A001015(n)]` -/
def P13563218132762016018.Spec : Prop :=
  ∀ n, P13563218132762016018.a n = A022523 n

theorem P13563218132762016018.correct : P13563218132762016018.Spec := by
  intro n
  simp only [A022523, Nat.add_sub_cancel, A022523.P13563218132762016018.f1, A022523.P13563218132762016018.a, A022523.P11966938056709641489.a, A001015, A001015.P16876498052081657174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022523

/-! ## A022523.P17437856676147204261

`Δ[A258806(n)]`
-/

namespace A022523.P17437856676147204261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022523.P17437856676147204261

namespace A022523

/-- `Δ[A258806(n)]` -/
def P17437856676147204261.Spec : Prop :=
  ∀ n, P17437856676147204261.a n = A022523 n

theorem P17437856676147204261.correct : P17437856676147204261.Spec := by
  intro n
  simp only [A022523, Nat.add_sub_cancel, A022523.P17437856676147204261.f1, A022523.P17437856676147204261.a, A022523.P11966938056709641489.a, A258806, A258806.P6095875049815832673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022523

/-! ## A022523.P7787320613043954940

`abs(Δ[A024005(n)])`
-/

namespace A022523.P7787320613043954940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022523.P7787320613043954940

namespace A022523

/-- `abs(Δ[A024005(n)])` -/
def P7787320613043954940.Spec : Prop :=
  ∀ n, P7787320613043954940.a n = A022523 n

end A022523

/-! ## A022523.P18321272757327649270

`Δ[sqrt(A010802(n))]`
-/

namespace A022523.P18321272757327649270
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010802 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022523.P18321272757327649270

namespace A022523

/-- `Δ[sqrt(A010802(n))]` -/
def P18321272757327649270.Spec : Prop :=
  ∀ n, P18321272757327649270.a n = (A022523 n : ℝ)

end A022523

/-! ## A022523.P9895920539812199807

`A022530(n)/(A001015(n+1)+A001015(n))`
-/

namespace A022523.P9895920539812199807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022530 n : ℚ) / (A001015 (n + 1) + A001015 n : ℚ)

end

end A022523.P9895920539812199807

namespace A022523

/-- `A022530(n)/(A001015(n+1)+A001015(n))` -/
def P9895920539812199807.Spec : Prop :=
  ∀ n, P9895920539812199807.a n = (A022523 n : ℚ)

theorem P9895920539812199807.correct : P9895920539812199807.Spec := by
  intro n
  simp only [A022523, Nat.add_sub_cancel, A022523.P9895920539812199807.a, A022523.P11966938056709641489.a, A001015, A001015.P16876498052081657174.a, A022530, A022530.P13217486023430926947.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022523

/-! ## A022523.P7400828551858131933

`Δ[n^(7%(n+2)!)]`
-/

namespace A022523.P7400828551858131933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (7 % Nat.factorial (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A022523.P7400828551858131933

namespace A022523

/-- `Δ[n^(7%(n+2)!)]` -/
def P7400828551858131933.Spec : Prop :=
  ∀ n, P7400828551858131933.a n = A022523 n

end A022523

/-!
# A022524: Nexus numbers (n+1)^8 - n^8.

The programs for A022524, the canonical program `A022524.P15595221110547193685` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022524 has offset 0).

The definition of A022524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^8-n^8` (program `A022524.P15595221110547193685`, by `A022524.P15595221110547193685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022524.P15595221110547193685

`(n+1)^8-n^8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022524

/-- `(n+1)^8-n^8` -/
def P15595221110547193685.Spec : Prop :=
  ∀ n, P15595221110547193685.a n = A022524 n

theorem P15595221110547193685.correct : P15595221110547193685.Spec := by
  intro n
  simp only [A022524]

end A022524

/-! ## A022524.P4789658965750800322

`or(1, Δ[n²²²])`
-/

namespace A022524.P4789658965750800322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022524.P4789658965750800322

namespace A022524

/-- `or(1, Δ[n²²²])` -/
def P4789658965750800322.Spec : Prop :=
  ∀ n, P4789658965750800322.a n = A022524 n

end A022524

/-! ## A022524.P14717028027037610204

`lcm(2, Δ[n²²²])/2`
-/

namespace A022524.P14717028027037610204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A022524.P14717028027037610204

namespace A022524

/-- `lcm(2, Δ[n²²²])/2` -/
def P14717028027037610204.Spec : Prop :=
  ∀ n, P14717028027037610204.a n = (A022524 n : ℚ)

end A022524

/-! ## A022524.P11544255379534608359

`gcd(C(2, n+2), Δ[n²²²])`
-/

namespace A022524.P11544255379534608359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022524.P11544255379534608359

namespace A022524

/-- `gcd(C(2, n+2), Δ[n²²²])` -/
def P11544255379534608359.Spec : Prop :=
  ∀ n, (P11544255379534608359.a n : ℤ) = A022524 n

end A022524

/-! ## A022524.P18232851040566374231

`gcd(n, n+1)*Δ[n²²²]`
-/

namespace A022524.P18232851040566374231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022524.P18232851040566374231

namespace A022524

/-- `gcd(n, n+1)*Δ[n²²²]` -/
def P18232851040566374231.Spec : Prop :=
  ∀ n, P18232851040566374231.a n = A022524 n

theorem P18232851040566374231.correct : P18232851040566374231.Spec := by
  intro n
  simp only [A022524, Nat.add_sub_cancel, A022524.P18232851040566374231.f1, A022524.P18232851040566374231.a, A022524.P15595221110547193685.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A022524

/-! ## A022524.P16679106485195950367

`Δ[n²²²]/gcd(n+2, n+3)`
-/

namespace A022524.P16679106485195950367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Nat.gcd (n + 2) (n + 3) : ℚ)

end

end A022524.P16679106485195950367

namespace A022524

/-- `Δ[n²²²]/gcd(n+2, n+3)` -/
def P16679106485195950367.Spec : Prop :=
  ∀ n, P16679106485195950367.a n = (A022524 n : ℚ)

end A022524

/-! ## A022524.P6065704656364085414

`lcm(2*n+1, Δ[lcm(n, n²²²)])`
-/

namespace A022524.P6065704656364085414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (((n ^ 2) ^ 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022524.P6065704656364085414

namespace A022524

/-- `lcm(2*n+1, Δ[lcm(n, n²²²)])` -/
def P6065704656364085414.Spec : Prop :=
  ∀ n, (P6065704656364085414.a n : ℤ) = A022524 n

end A022524

/-! ## A022524.P8069759874661600296

`∑[A255178(n)]`
-/

namespace A022524.P8069759874661600296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022524.P8069759874661600296

namespace A022524

/-- `∑[A255178(n)]` -/
def P8069759874661600296.Spec : Prop :=
  ∀ n, P8069759874661600296.a n = A022524 n

end A022524

/-! ## A022524.P1679282829878655504

`∑[∑[A255182(n)]]`
-/

namespace A022524.P1679282829878655504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255182 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022524.P1679282829878655504

namespace A022524

/-- `∑[∑[A255182(n)]]` -/
def P1679282829878655504.Spec : Prop :=
  ∀ n, P1679282829878655504.a n = A022524 n

end A022524

/-! ## A022524.P3983805769817673651

`Δ[A000290(n)²²]`
-/

namespace A022524.P3983805769817673651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000290 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022524.P3983805769817673651

namespace A022524

/-- `Δ[A000290(n)²²]` -/
def P3983805769817673651.Spec : Prop :=
  ∀ n, P3983805769817673651.a n = A022524 n

theorem P3983805769817673651.correct : P3983805769817673651.Spec := by
  intro n
  simp only [A022524, Nat.add_sub_cancel, A022524.P3983805769817673651.f1, A022524.P3983805769817673651.a, A022524.P15595221110547193685.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022524

/-! ## A022524.P10462932205513853896

`A005917(n+1)*A008514(n)`
-/

namespace A022524.P10462932205513853896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) * A008514 n

end

end A022524.P10462932205513853896

namespace A022524

/-- `A005917(n+1)*A008514(n)` -/
def P10462932205513853896.Spec : Prop :=
  ∀ n, P10462932205513853896.a n = A022524 n

theorem P10462932205513853896.correct : P10462932205513853896.Spec := by
  intro n
  simp only [A022524, Nat.add_sub_cancel, A022524.P10462932205513853896.a, A022524.P15595221110547193685.a, A005917, A005917.P593194106963301078.a, A008514, A008514.P8515702522567387291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022524

/-! ## A022524.P12147063899998107935

`(∑[A008511(n)]+1)*A005917(n+1)`
-/

namespace A022524.P12147063899998107935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A005917 (n + 1)

end

end A022524.P12147063899998107935

namespace A022524

/-- `(∑[A008511(n)]+1)*A005917(n+1)` -/
def P12147063899998107935.Spec : Prop :=
  ∀ n, P12147063899998107935.a n = A022524 n

end A022524

/-! ## A022524.P8149311126343897565

`(A008514(n)-A244730(n))*A008514(n)`
-/

namespace A022524.P8149311126343897565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 n - A244730 n) * A008514 n

end

end A022524.P8149311126343897565

namespace A022524

/-- `(A008514(n)-A244730(n))*A008514(n)` -/
def P8149311126343897565.Spec : Prop :=
  ∀ n, P8149311126343897565.a n = A022524 n

theorem P8149311126343897565.correct : P8149311126343897565.Spec := by
  intro n
  simp only [A022524, Nat.add_sub_cancel, A022524.P8149311126343897565.a, A022524.P15595221110547193685.a, A008514, A008514.P8515702522567387291.a, A244730, A244730.P3543314597448209460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022524

/-! ## A022524.P10907078582093163262

`Δ[A001016(n)]`
-/

namespace A022524.P10907078582093163262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022524.P10907078582093163262

namespace A022524

/-- `Δ[A001016(n)]` -/
def P10907078582093163262.Spec : Prop :=
  ∀ n, P10907078582093163262.a n = A022524 n

theorem P10907078582093163262.correct : P10907078582093163262.Spec := by
  intro n
  simp only [A022524, Nat.add_sub_cancel, A022524.P10907078582093163262.f1, A022524.P10907078582093163262.a, A022524.P15595221110547193685.a, A001016, A001016.P10257285112668202493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022524

/-! ## A022524.P7230924210027442326

`Δ[A060890(n)]`
-/

namespace A022524.P7230924210027442326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022524.P7230924210027442326

namespace A022524

/-- `Δ[A060890(n)]` -/
def P7230924210027442326.Spec : Prop :=
  ∀ n, P7230924210027442326.a n = A022524 n

theorem P7230924210027442326.correct : P7230924210027442326.Spec := by
  intro n
  simp only [A022524, Nat.add_sub_cancel, A022524.P7230924210027442326.f1, A022524.P7230924210027442326.a, A022524.P15595221110547193685.a, A060890, A060890.P12762543378779748885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022524

/-! ## A022524.P10870123028287924056

`abs(Δ[A024006(n)])`
-/

namespace A022524.P10870123028287924056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022524.P10870123028287924056

namespace A022524

/-- `abs(Δ[A024006(n)])` -/
def P10870123028287924056.Spec : Prop :=
  ∀ n, P10870123028287924056.a n = A022524 n

end A022524

/-! ## A022524.P7991802347415559901

`(A000583(n+1)-A000583(n))*A008514(n)`
-/

namespace A022524.P7991802347415559901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 (n + 1) - A000583 n) * A008514 n

end

end A022524.P7991802347415559901

namespace A022524

/-- `(A000583(n+1)-A000583(n))*A008514(n)` -/
def P7991802347415559901.Spec : Prop :=
  ∀ n, P7991802347415559901.a n = A022524 n

theorem P7991802347415559901.correct : P7991802347415559901.Spec := by
  intro n
  simp only [A022524, Nat.add_sub_cancel, A022524.P7991802347415559901.a, A022524.P15595221110547193685.a, A000583, A000583.P14547500281748394449.a, A008514, A008514.P8515702522567387291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022524

/-! ## A022524.P8373404989485447267

`(A000583(n+1)+A000583(n))*A005917(n+1)`
-/

namespace A022524.P8373404989485447267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 (n + 1) + A000583 n) * A005917 (n + 1)

end

end A022524.P8373404989485447267

namespace A022524

/-- `(A000583(n+1)+A000583(n))*A005917(n+1)` -/
def P8373404989485447267.Spec : Prop :=
  ∀ n, P8373404989485447267.a n = A022524 n

theorem P8373404989485447267.correct : P8373404989485447267.Spec := by
  intro n
  simp only [A022524, Nat.add_sub_cancel, A022524.P8373404989485447267.a, A022524.P15595221110547193685.a, A000583, A000583.P14547500281748394449.a, A005917, A005917.P593194106963301078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022524

/-!
# A022525: Nexus numbers (n+1)^9-n^9.

The programs for A022525, the canonical program `A022525.P5997612634053303952` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022525 has offset 0).

The definition of A022525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^9-n^9` (program `A022525.P5997612634053303952`, by `A022525.P5997612634053303952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022525.P5997612634053303952

`(n+1)^9-n^9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022525

/-- `(n+1)^9-n^9` -/
def P5997612634053303952.Spec : Prop :=
  ∀ n, P5997612634053303952.a n = A022525 n

theorem P5997612634053303952.correct : P5997612634053303952.Spec := by
  intro n
  simp only [A022525]

end A022525

/-! ## A022525.P13007457953009010011

`∑[A255179(n)]`
-/

namespace A022525.P13007457953009010011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022525.P13007457953009010011

namespace A022525

/-- `∑[A255179(n)]` -/
def P13007457953009010011.Spec : Prop :=
  ∀ n, P13007457953009010011.a n = A022525 n

end A022525

/-! ## A022525.P10275283602541361999

`Δ[A001017(n)]`
-/

namespace A022525.P10275283602541361999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022525.P10275283602541361999

namespace A022525

/-- `Δ[A001017(n)]` -/
def P10275283602541361999.Spec : Prop :=
  ∀ n, P10275283602541361999.a n = A022525 n

theorem P10275283602541361999.correct : P10275283602541361999.Spec := by
  intro n
  simp only [A022525, Nat.add_sub_cancel, A022525.P10275283602541361999.f1, A022525.P10275283602541361999.a, A022525.P5997612634053303952.a, A001017, A001017.P9152421289291957289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022525

/-! ## A022525.P1959573663388819879

`∑[∑[A255183(n)]]`
-/

namespace A022525.P1959573663388819879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022525.P1959573663388819879

namespace A022525

/-- `∑[∑[A255183(n)]]` -/
def P1959573663388819879.Spec : Prop :=
  ∀ n, P1959573663388819879.a n = A022525 n

end A022525

/-! ## A022525.P17622145869083789449

`Δ[n*A000290(n)²*A000290(n)²]`
-/

namespace A022525.P17622145869083789449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000290 n ^ 2 * A000290 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022525.P17622145869083789449

namespace A022525

/-- `Δ[n*A000290(n)²*A000290(n)²]` -/
def P17622145869083789449.Spec : Prop :=
  ∀ n, P17622145869083789449.a n = A022525 n

theorem P17622145869083789449.correct : P17622145869083789449.Spec := by
  intro n
  simp only [A022525, Nat.add_sub_cancel, A022525.P17622145869083789449.f1, A022525.P17622145869083789449.a, A022525.P5997612634053303952.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022525

/-! ## A022525.P7258361304333367713

`abs(Δ[A024007(n)])`
-/

namespace A022525.P7258361304333367713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022525.P7258361304333367713

namespace A022525

/-- `abs(Δ[A024007(n)])` -/
def P7258361304333367713.Spec : Prop :=
  ∀ n, P7258361304333367713.a n = A022525 n

end A022525

/-! ## A022525.P12891549299399187558

`Δ[sqrt(A010806(n))]`
-/

namespace A022525.P12891549299399187558
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010806 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022525.P12891549299399187558

namespace A022525

/-- `Δ[sqrt(A010806(n))]` -/
def P12891549299399187558.Spec : Prop :=
  ∀ n, P12891549299399187558.a n = (A022525 n : ℝ)

end A022525

/-! ## A022525.P5261745692508697485

`(A010806(n+1)-A010806(n))/A036087(n)`
-/

namespace A022525.P5261745692508697485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010806 (n + 1) - A010806 n : ℚ) / (A036087 n : ℚ)

end

end A022525.P5261745692508697485

namespace A022525

/-- `(A010806(n+1)-A010806(n))/A036087(n)` -/
def P5261745692508697485.Spec : Prop :=
  ∀ n, P5261745692508697485.a n = (A022525 n : ℚ)

theorem P5261745692508697485.correct : P5261745692508697485.Spec := by
  intro n
  simp only [A022525, Nat.add_sub_cancel, A022525.P5261745692508697485.a, A022525.P5997612634053303952.a, A010806, A010806.P14867464415691871590.a, A036087, A036087.P11006721384539131196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022525

/-! ## A022525.P1845996247240037164

`Δ[n^dr(3^n)]`
-/

namespace A022525.P1845996247240037164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A022525.P1845996247240037164

namespace A022525

/-- `Δ[n^dr(3^n)]` -/
def P1845996247240037164.Spec : Prop :=
  ∀ n, P1845996247240037164.a n = A022525 n

end A022525

/-! ## A022525.P14343298390797919218

`Δ[n^gcd(3, (n+1)!)²]`
-/

namespace A022525.P14343298390797919218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 3 (Nat.factorial (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A022525.P14343298390797919218

namespace A022525

/-- `Δ[n^gcd(3, (n+1)!)²]` -/
def P14343298390797919218.Spec : Prop :=
  ∀ n, P14343298390797919218.a n = A022525 n

end A022525

/-!
# A022526: Nexus numbers (n+1)^10-n^10.

The programs for A022526, the canonical program `A022526.P1518772193900878853` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022526 has offset 0).

The definition of A022526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^10-n^10` (program `A022526.P1518772193900878853`, by `A022526.P1518772193900878853.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022526.P1518772193900878853

`(n+1)^10-n^10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022526

/-- `(n+1)^10-n^10` -/
def P1518772193900878853.Spec : Prop :=
  ∀ n, P1518772193900878853.a n = A022526 n

theorem P1518772193900878853.correct : P1518772193900878853.Spec := by
  intro n
  simp only [A022526]

end A022526

/-! ## A022526.P4302623299571530619

`lcm(2*n+1, Δ[(n*n²²)²])`
-/

namespace A022526.P4302623299571530619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022526.P4302623299571530619

namespace A022526

/-- `lcm(2*n+1, Δ[(n*n²²)²])` -/
def P4302623299571530619.Spec : Prop :=
  ∀ n, (P4302623299571530619.a n : ℤ) = A022526 n

end A022526

/-! ## A022526.P7767422889730653910

`A008515(n)*A022521(n)`
-/

namespace A022526.P7767422889730653910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008515 n * A022521 n

end

end A022526.P7767422889730653910

namespace A022526

/-- `A008515(n)*A022521(n)` -/
def P7767422889730653910.Spec : Prop :=
  ∀ n, P7767422889730653910.a n = A022526 n

theorem P7767422889730653910.correct : P7767422889730653910.Spec := by
  intro n
  simp only [A022526, Nat.add_sub_cancel, A022526.P7767422889730653910.a, A022526.P1518772193900878853.a, A008515, A008515.P11691504425021295822.a, A022521, A022521.P13355079520677844041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022526

/-! ## A022526.P13715181303495565778

`Δ[n²*A000290(n)²*A000290(n)²]`
-/

namespace A022526.P13715181303495565778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000290 n ^ 2 * A000290 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022526.P13715181303495565778

namespace A022526

/-- `Δ[n²*A000290(n)²*A000290(n)²]` -/
def P13715181303495565778.Spec : Prop :=
  ∀ n, P13715181303495565778.a n = A022526 n

theorem P13715181303495565778.correct : P13715181303495565778.Spec := by
  intro n
  simp only [A022526, Nat.add_sub_cancel, A022526.P13715181303495565778.f1, A022526.P13715181303495565778.a, A022526.P1518772193900878853.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022526

/-! ## A022526.P279019895387238788

`Δ[A008454(n)]`
-/

namespace A022526.P279019895387238788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022526.P279019895387238788

namespace A022526

/-- `Δ[A008454(n)]` -/
def P279019895387238788.Spec : Prop :=
  ∀ n, P279019895387238788.a n = A022526 n

theorem P279019895387238788.correct : P279019895387238788.Spec := by
  intro n
  simp only [A022526, Nat.add_sub_cancel, A022526.P279019895387238788.f1, A022526.P279019895387238788.a, A022526.P1518772193900878853.a, A008454, A008454.P6486498320967950731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022526

/-! ## A022526.P5872009602078132216

`abs(Δ[A024008(n)])`
-/

namespace A022526.P5872009602078132216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022526.P5872009602078132216

namespace A022526

/-- `abs(Δ[A024008(n)])` -/
def P5872009602078132216.Spec : Prop :=
  ∀ n, P5872009602078132216.a n = A022526 n

end A022526

/-! ## A022526.P5451278579473078993

`Δ[A000584(n)²]`
-/

namespace A022526.P5451278579473078993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022526.P5451278579473078993

namespace A022526

/-- `Δ[A000584(n)²]` -/
def P5451278579473078993.Spec : Prop :=
  ∀ n, P5451278579473078993.a n = A022526 n

theorem P5451278579473078993.correct : P5451278579473078993.Spec := by
  intro n
  simp only [A022526, Nat.add_sub_cancel, A022526.P5451278579473078993.f1, A022526.P5451278579473078993.a, A022526.P1518772193900878853.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022526

/-! ## A022526.P9158989742785917985

`Δ[sqrt(A010808(n))]`
-/

namespace A022526.P9158989742785917985
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010808 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022526.P9158989742785917985

namespace A022526

/-- `Δ[sqrt(A010808(n))]` -/
def P9158989742785917985.Spec : Prop :=
  ∀ n, P9158989742785917985.a n = (A022526 n : ℝ)

end A022526

/-! ## A022526.P11368746389374938929

`(A000584(n+1)+A000584(n))*A022521(n)`
-/

namespace A022526.P11368746389374938929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 (n + 1) + A000584 n) * A022521 n

end

end A022526.P11368746389374938929

namespace A022526

/-- `(A000584(n+1)+A000584(n))*A022521(n)` -/
def P11368746389374938929.Spec : Prop :=
  ∀ n, P11368746389374938929.a n = A022526 n

theorem P11368746389374938929.correct : P11368746389374938929.Spec := by
  intro n
  simp only [A022526, Nat.add_sub_cancel, A022526.P11368746389374938929.a, A022526.P1518772193900878853.a, A000584, A000584.P5477385692209315495.a, A022521, A022521.P13355079520677844041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022526

/-! ## A022526.P129816416716216927

`(A000584(n+1)-A000584(n))*A008515(n)`
-/

namespace A022526.P129816416716216927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 (n + 1) - A000584 n) * A008515 n

end

end A022526.P129816416716216927

namespace A022526

/-- `(A000584(n+1)-A000584(n))*A008515(n)` -/
def P129816416716216927.Spec : Prop :=
  ∀ n, P129816416716216927.a n = A022526 n

theorem P129816416716216927.correct : P129816416716216927.Spec := by
  intro n
  simp only [A022526, Nat.add_sub_cancel, A022526.P129816416716216927.a, A022526.P1518772193900878853.a, A000584, A000584.P5477385692209315495.a, A008515, A008515.P11691504425021295822.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022526

/-!
# A022527: Nexus numbers: a(n) = (n+1)^11 - n^11.

The programs for A022527, the canonical program `A022527.P9583627414785900158` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022527 has offset 0).

The definition of A022527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^11-n^11` (program `A022527.P9583627414785900158`, by `A022527.P9583627414785900158.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022527.P9583627414785900158

`(n+1)^11-n^11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022527

/-- `(n+1)^11-n^11` -/
def P9583627414785900158.Spec : Prop :=
  ∀ n, P9583627414785900158.a n = A022527 n

theorem P9583627414785900158.correct : P9583627414785900158.Spec := by
  intro n
  simp only [A022527]

end A022527

/-! ## A022527.P13369553084922780999

`Δ[n²*A001017(n)]`
-/

namespace A022527.P13369553084922780999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A001017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022527.P13369553084922780999

namespace A022527

/-- `Δ[n²*A001017(n)]` -/
def P13369553084922780999.Spec : Prop :=
  ∀ n, P13369553084922780999.a n = A022527 n

theorem P13369553084922780999.correct : P13369553084922780999.Spec := by
  intro n
  simp only [A022527, Nat.add_sub_cancel, A022527.P13369553084922780999.f1, A022527.P13369553084922780999.a, A022527.P9583627414785900158.a, A001017, A001017.P9152421289291957289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022527

/-! ## A022527.P10027644176808106319

`Δ[A008455(n)]`
-/

namespace A022527.P10027644176808106319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022527.P10027644176808106319

namespace A022527

/-- `Δ[A008455(n)]` -/
def P10027644176808106319.Spec : Prop :=
  ∀ n, P10027644176808106319.a n = A022527 n

theorem P10027644176808106319.correct : P10027644176808106319.Spec := by
  intro n
  simp only [A022527, Nat.add_sub_cancel, A022527.P10027644176808106319.f1, A022527.P10027644176808106319.a, A022527.P9583627414785900158.a, A008455, A008455.P9534885858269672633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022527

/-! ## A022527.P12384546839131469474

`abs(Δ[A024009(n)])`
-/

namespace A022527.P12384546839131469474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022527.P12384546839131469474

namespace A022527

/-- `abs(Δ[A024009(n)])` -/
def P12384546839131469474.Spec : Prop :=
  ∀ n, P12384546839131469474.a n = A022527 n

end A022527

/-! ## A022527.P7569678021459362779

`Δ[sqrt(A010810(n))]`
-/

namespace A022527.P7569678021459362779
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010810 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022527.P7569678021459362779

namespace A022527

/-- `Δ[sqrt(A010810(n))]` -/
def P7569678021459362779.Spec : Prop :=
  ∀ n, P7569678021459362779.a n = (A022527 n : ℝ)

end A022527

/-! ## A022527.P6859200318306963407

`Δ[n*A000584(n)²]`
-/

namespace A022527.P6859200318306963407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000584 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022527.P6859200318306963407

namespace A022527

/-- `Δ[n*A000584(n)²]` -/
def P6859200318306963407.Spec : Prop :=
  ∀ n, P6859200318306963407.a n = A022527 n

theorem P6859200318306963407.correct : P6859200318306963407.Spec := by
  intro n
  simp only [A022527, Nat.add_sub_cancel, A022527.P6859200318306963407.f1, A022527.P6859200318306963407.a, A022527.P9583627414785900158.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022527

/-! ## A022527.P3866376096792433013

`A022538(n)/(A008455(n+1)+A008455(n))`
-/

namespace A022527.P3866376096792433013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022538 n : ℚ) / (A008455 (n + 1) + A008455 n : ℚ)

end

end A022527.P3866376096792433013

namespace A022527

/-- `A022538(n)/(A008455(n+1)+A008455(n))` -/
def P3866376096792433013.Spec : Prop :=
  ∀ n, P3866376096792433013.a n = (A022527 n : ℚ)

theorem P3866376096792433013.correct : P3866376096792433013.Spec := by
  intro n
  simp only [A022527, Nat.add_sub_cancel, A022527.P3866376096792433013.a, A022527.P9583627414785900158.a, A008455, A008455.P9534885858269672633.a, A022538, A022538.P18178718390867436209.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022527

/-!
# A022528: Nexus numbers (n+1)^12-n^12.

The programs for A022528, the canonical program `A022528.P4461529081945797583` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022528 has offset 0).

The definition of A022528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^12-n^12` (program `A022528.P4461529081945797583`, by `A022528.P4461529081945797583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022528.P4461529081945797583

`(n+1)^12-n^12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022528

/-- `(n+1)^12-n^12` -/
def P4461529081945797583.Spec : Prop :=
  ∀ n, P4461529081945797583.a n = A022528 n

theorem P4461529081945797583.correct : P4461529081945797583.Spec := by
  intro n
  simp only [A022528]

end A022528

/-! ## A022528.P895601506442415318

`lcm(2*n+1, Δ[(n*n²)²²])`
-/

namespace A022528.P895601506442415318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n * n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022528.P895601506442415318

namespace A022528

/-- `lcm(2*n+1, Δ[(n*n²)²²])` -/
def P895601506442415318.Spec : Prop :=
  ∀ n, (P895601506442415318.a n : ℤ) = A022528 n

end A022528

/-! ## A022528.P5039490369947516478

`Δ[A000578(n)²²]`
-/

namespace A022528.P5039490369947516478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022528.P5039490369947516478

namespace A022528

/-- `Δ[A000578(n)²²]` -/
def P5039490369947516478.Spec : Prop :=
  ∀ n, P5039490369947516478.a n = A022528 n

theorem P5039490369947516478.correct : P5039490369947516478.Spec := by
  intro n
  simp only [A022528, Nat.add_sub_cancel, A022528.P5039490369947516478.f1, A022528.P5039490369947516478.a, A022528.P4461529081945797583.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022528

/-! ## A022528.P8916456633880715183

`or(Δ[(n*n²)²²], A007814(n+1))`
-/

namespace A022528.P8916456633880715183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n * n ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A007814 (n + 1))

end

end A022528.P8916456633880715183

namespace A022528

/-- `or(Δ[(n*n²)²²], A007814(n+1))` -/
def P8916456633880715183.Spec : Prop :=
  ∀ n, P8916456633880715183.a n = A022528 n

end A022528

/-! ## A022528.P18269502466768866647

`A008516(n)*A022522(n)`
-/

namespace A022528.P18269502466768866647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008516 n * A022522 n

end

end A022528.P18269502466768866647

namespace A022528

/-- `A008516(n)*A022522(n)` -/
def P18269502466768866647.Spec : Prop :=
  ∀ n, P18269502466768866647.a n = A022528 n

theorem P18269502466768866647.correct : P18269502466768866647.Spec := by
  intro n
  simp only [A022528, Nat.add_sub_cancel, A022528.P18269502466768866647.a, A022528.P4461529081945797583.a, A008516, A008516.P6330670612051404828.a, A022522, A022522.P16854360949907572851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022528

/-! ## A022528.P14665753982984801772

`(A001014(n)+∑[A022522(n)])*A022522(n)`
-/

namespace A022528.P14665753982984801772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001014 n + ∑ j ∈ Finset.range (n + 1), f1 j) * A022522 n

end

end A022528.P14665753982984801772

namespace A022528

/-- `(A001014(n)+∑[A022522(n)])*A022522(n)` -/
def P14665753982984801772.Spec : Prop :=
  ∀ n, P14665753982984801772.a n = A022528 n

end A022528

/-! ## A022528.P9310483738733590276

`(A106318(n+1)-A008516(n))*A008516(n)`
-/

namespace A022528.P9310483738733590276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106318 (n + 1) - A008516 n) * A008516 n

end

end A022528.P9310483738733590276

namespace A022528

/-- `(A106318(n+1)-A008516(n))*A008516(n)` -/
def P9310483738733590276.Spec : Prop :=
  ∀ n, P9310483738733590276.a n = A022528 n

theorem P9310483738733590276.correct : P9310483738733590276.Spec := by
  intro n
  simp only [A022528, Nat.add_sub_cancel, A022528.P9310483738733590276.a, A022528.P4461529081945797583.a, A008516, A008516.P6330670612051404828.a, A106318, A106318.P4247534376116463278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022528

/-! ## A022528.P11722455938861480298

`Δ[A008456(n)]`
-/

namespace A022528.P11722455938861480298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022528.P11722455938861480298

namespace A022528

/-- `Δ[A008456(n)]` -/
def P11722455938861480298.Spec : Prop :=
  ∀ n, P11722455938861480298.a n = A022528 n

theorem P11722455938861480298.correct : P11722455938861480298.Spec := by
  intro n
  simp only [A022528, Nat.add_sub_cancel, A022528.P11722455938861480298.f1, A022528.P11722455938861480298.a, A022528.P4461529081945797583.a, A008456, A008456.P10461044978200611102.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022528

/-! ## A022528.P11418560365623337191

`abs(Δ[A024010(n)])`
-/

namespace A022528.P11418560365623337191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022528.P11418560365623337191

namespace A022528

/-- `abs(Δ[A024010(n)])` -/
def P11418560365623337191.Spec : Prop :=
  ∀ n, P11418560365623337191.a n = A022528 n

end A022528

/-! ## A022528.P13842527140959137799

`Δ[A001014(n)²]`
-/

namespace A022528.P13842527140959137799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022528.P13842527140959137799

namespace A022528

/-- `Δ[A001014(n)²]` -/
def P13842527140959137799.Spec : Prop :=
  ∀ n, P13842527140959137799.a n = A022528 n

theorem P13842527140959137799.correct : P13842527140959137799.Spec := by
  intro n
  simp only [A022528, Nat.add_sub_cancel, A022528.P13842527140959137799.f1, A022528.P13842527140959137799.a, A022528.P4461529081945797583.a, A001014, A001014.P10270364271630987481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022528

/-! ## A022528.P17153258492861936604

`(A001014(n+1)+A001014(n))*A022522(n)`
-/

namespace A022528.P17153258492861936604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001014 (n + 1) + A001014 n) * A022522 n

end

end A022528.P17153258492861936604

namespace A022528

/-- `(A001014(n+1)+A001014(n))*A022522(n)` -/
def P17153258492861936604.Spec : Prop :=
  ∀ n, P17153258492861936604.a n = A022528 n

theorem P17153258492861936604.correct : P17153258492861936604.Spec := by
  intro n
  simp only [A022528, Nat.add_sub_cancel, A022528.P17153258492861936604.a, A022528.P4461529081945797583.a, A001014, A001014.P10270364271630987481.a, A022522, A022522.P16854360949907572851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022528

/-! ## A022528.P10811540945854827768

`(A001014(n+1)-A001014(n))*A008516(n)`
-/

namespace A022528.P10811540945854827768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001014 (n + 1) - A001014 n) * A008516 n

end

end A022528.P10811540945854827768

namespace A022528

/-- `(A001014(n+1)-A001014(n))*A008516(n)` -/
def P10811540945854827768.Spec : Prop :=
  ∀ n, P10811540945854827768.a n = A022528 n

theorem P10811540945854827768.correct : P10811540945854827768.Spec := by
  intro n
  simp only [A022528, Nat.add_sub_cancel, A022528.P10811540945854827768.a, A022528.P4461529081945797583.a, A001014, A001014.P10270364271630987481.a, A008516, A008516.P6330670612051404828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022528

/-!
# A022529: Nexus numbers (n+1)^13-n^13.

The programs for A022529, the canonical program `A022529.P10549321149274081095` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022529 has offset 0).

The definition of A022529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^13-n^13` (program `A022529.P10549321149274081095`, by `A022529.P10549321149274081095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022529.P10549321149274081095

`(n+1)^13-n^13`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022529

/-- `(n+1)^13-n^13` -/
def P10549321149274081095.Spec : Prop :=
  ∀ n, P10549321149274081095.a n = A022529 n

theorem P10549321149274081095.correct : P10549321149274081095.Spec := by
  intro n
  simp only [A022529]

end A022529

/-! ## A022529.P10005225809581010232

`Δ[A010801(n)]`
-/

namespace A022529.P10005225809581010232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022529.P10005225809581010232

namespace A022529

/-- `Δ[A010801(n)]` -/
def P10005225809581010232.Spec : Prop :=
  ∀ n, P10005225809581010232.a n = A022529 n

theorem P10005225809581010232.correct : P10005225809581010232.Spec := by
  intro n
  simp only [A022529, Nat.add_sub_cancel, A022529.P10005225809581010232.f1, A022529.P10005225809581010232.a, A022529.P10549321149274081095.a, A010801, A010801.P15153866690216922804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022529

/-! ## A022529.P11694553151990883888

`Δ[n*A008456(n)]`
-/

namespace A022529.P11694553151990883888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022529.P11694553151990883888

namespace A022529

/-- `Δ[n*A008456(n)]` -/
def P11694553151990883888.Spec : Prop :=
  ∀ n, P11694553151990883888.a n = A022529 n

theorem P11694553151990883888.correct : P11694553151990883888.Spec := by
  intro n
  simp only [A022529, Nat.add_sub_cancel, A022529.P11694553151990883888.f1, A022529.P11694553151990883888.a, A022529.P10549321149274081095.a, A008456, A008456.P10461044978200611102.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022529

/-! ## A022529.P18096963938176602804

`Δ[n^6*A001015(n)]`
-/

namespace A022529.P18096963938176602804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 6 : ℤ) * A001015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022529.P18096963938176602804

namespace A022529

/-- `Δ[n^6*A001015(n)]` -/
def P18096963938176602804.Spec : Prop :=
  ∀ n, P18096963938176602804.a n = A022529 n

theorem P18096963938176602804.correct : P18096963938176602804.Spec := by
  intro n
  simp only [A022529, Nat.add_sub_cancel, A022529.P18096963938176602804.f1, A022529.P18096963938176602804.a, A022529.P10549321149274081095.a, A001015, A001015.P16876498052081657174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022529

/-! ## A022529.P4633269220284436673

`Δ[sqrt(A089081(n))]`
-/

namespace A022529.P4633269220284436673
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089081 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022529.P4633269220284436673

namespace A022529

/-- `Δ[sqrt(A089081(n))]` -/
def P4633269220284436673.Spec : Prop :=
  ∀ n, P4633269220284436673.a n = (A022529 n : ℝ)

end A022529

/-! ## A022529.P802842292893086331

`Δ[A155016(n²)]`
-/

namespace A022529.P802842292893086331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155016 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022529.P802842292893086331

namespace A022529

/-- `Δ[A155016(n²)]` -/
def P802842292893086331.Spec : Prop :=
  ∀ n, P802842292893086331.a n = A022529 n

end A022529

/-!
# A022530: Nexus numbers (n+1)^14 - n^14.

The programs for A022530, the canonical program `A022530.P13217486023430926947` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022530 has offset 0).

The definition of A022530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^14-n^14` (program `A022530.P13217486023430926947`, by `A022530.P13217486023430926947.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022530.P13217486023430926947

`(n+1)^14-n^14`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022530

/-- `(n+1)^14-n^14` -/
def P13217486023430926947.Spec : Prop :=
  ∀ n, P13217486023430926947.a n = A022530 n

theorem P13217486023430926947.correct : P13217486023430926947.Spec := by
  intro n
  simp only [A022530]

end A022530

/-! ## A022530.P5881882293144959450

`A022523(n)*A036085(n)`
-/

namespace A022530.P5881882293144959450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 n * A036085 n

end

end A022530.P5881882293144959450

namespace A022530

/-- `A022523(n)*A036085(n)` -/
def P5881882293144959450.Spec : Prop :=
  ∀ n, P5881882293144959450.a n = A022530 n

theorem P5881882293144959450.correct : P5881882293144959450.Spec := by
  intro n
  simp only [A022530, Nat.add_sub_cancel, A022530.P5881882293144959450.a, A022530.P13217486023430926947.a, A022523, A022523.P11966938056709641489.a, A036085, A036085.P6699611710931681177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022530

/-! ## A022530.P8823687804427204253

`(A258808(n+1)+A258806(n))*A022523(n)`
-/

namespace A022530.P8823687804427204253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A258808 (n + 1) + A258806 n) * A022523 n

end

end A022530.P8823687804427204253

namespace A022530

/-- `(A258808(n+1)+A258806(n))*A022523(n)` -/
def P8823687804427204253.Spec : Prop :=
  ∀ n, P8823687804427204253.a n = A022530 n

theorem P8823687804427204253.correct : P8823687804427204253.Spec := by
  intro n
  simp only [A022530, Nat.add_sub_cancel, A022530.P8823687804427204253.a, A022530.P13217486023430926947.a, A022523, A022523.P11966938056709641489.a, A258806, A258806.P6095875049815832673.a, A258808, A258808.P6415706604125814936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022530

/-! ## A022530.P2652764811527913320

`Δ[A010802(n)]`
-/

namespace A022530.P2652764811527913320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022530.P2652764811527913320

namespace A022530

/-- `Δ[A010802(n)]` -/
def P2652764811527913320.Spec : Prop :=
  ∀ n, P2652764811527913320.a n = A022530 n

theorem P2652764811527913320.correct : P2652764811527913320.Spec := by
  intro n
  simp only [A022530, Nat.add_sub_cancel, A022530.P2652764811527913320.f1, A022530.P2652764811527913320.a, A022530.P13217486023430926947.a, A010802, A010802.P3830132087023680263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022530

/-! ## A022530.P3791775857691667134

`Δ[A001015(n)²]`
-/

namespace A022530.P3791775857691667134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022530.P3791775857691667134

namespace A022530

/-- `Δ[A001015(n)²]` -/
def P3791775857691667134.Spec : Prop :=
  ∀ n, P3791775857691667134.a n = A022530 n

theorem P3791775857691667134.correct : P3791775857691667134.Spec := by
  intro n
  simp only [A022530, Nat.add_sub_cancel, A022530.P3791775857691667134.f1, A022530.P3791775857691667134.a, A022530.P13217486023430926947.a, A001015, A001015.P16876498052081657174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022530

/-! ## A022530.P17485237862585025711

`Δ[A001015(n)]*A036085(n)`
-/

namespace A022530.P17485237862585025711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A036085 n

end

end A022530.P17485237862585025711

namespace A022530

/-- `Δ[A001015(n)]*A036085(n)` -/
def P17485237862585025711.Spec : Prop :=
  ∀ n, P17485237862585025711.a n = A022530 n

theorem P17485237862585025711.correct : P17485237862585025711.Spec := by
  intro n
  simp only [A022530, Nat.add_sub_cancel, A022530.P17485237862585025711.f1, A022530.P17485237862585025711.a, A022530.P13217486023430926947.a, A001015, A001015.P16876498052081657174.a, A036085, A036085.P6699611710931681177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022530

/-! ## A022530.P10884015742887544996

`(A001015(n+1)+A001015(n))*A022523(n)`
-/

namespace A022530.P10884015742887544996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001015 (n + 1) + A001015 n) * A022523 n

end

end A022530.P10884015742887544996

namespace A022530

/-- `(A001015(n+1)+A001015(n))*A022523(n)` -/
def P10884015742887544996.Spec : Prop :=
  ∀ n, P10884015742887544996.a n = A022530 n

theorem P10884015742887544996.correct : P10884015742887544996.Spec := by
  intro n
  simp only [A022530, Nat.add_sub_cancel, A022530.P10884015742887544996.a, A022530.P13217486023430926947.a, A001015, A001015.P16876498052081657174.a, A022523, A022523.P11966938056709641489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022530

/-! ## A022530.P3086273324489237667

`(A001015(n+1)-A001015(n))*A036085(n)`
-/

namespace A022530.P3086273324489237667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001015 (n + 1) - A001015 n) * A036085 n

end

end A022530.P3086273324489237667

namespace A022530

/-- `(A001015(n+1)-A001015(n))*A036085(n)` -/
def P3086273324489237667.Spec : Prop :=
  ∀ n, P3086273324489237667.a n = A022530 n

theorem P3086273324489237667.correct : P3086273324489237667.Spec := by
  intro n
  simp only [A022530, Nat.add_sub_cancel, A022530.P3086273324489237667.a, A022530.P13217486023430926947.a, A001015, A001015.P16876498052081657174.a, A036085, A036085.P6699611710931681177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022530

/-! ## A022530.P9826760171742551504

`(A258806(n+1)-A024005(n))*A022523(n)`
-/

namespace A022530.P9826760171742551504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A258806 (n + 1) - A024005 n) * A022523 n

end

end A022530.P9826760171742551504

namespace A022530

/-- `(A258806(n+1)-A024005(n))*A022523(n)` -/
def P9826760171742551504.Spec : Prop :=
  ∀ n, P9826760171742551504.a n = A022530 n

theorem P9826760171742551504.correct : P9826760171742551504.Spec := by
  intro n
  simp only [A022530, Nat.add_sub_cancel, A022530.P9826760171742551504.a, A022530.P13217486023430926947.a, A022523, A022523.P11966938056709641489.a, A024005, A024005.P8923362675459539356.a, A258806, A258806.P6095875049815832673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022530

/-!
# A022531: Nexus numbers (n+1)^15 - n^15.

The programs for A022531, the canonical program `A022531.P825161268953040184` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022531 has offset 0).

The definition of A022531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^15-n^15` (program `A022531.P825161268953040184`, by `A022531.P825161268953040184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022531.P825161268953040184

`(n+1)^15-n^15`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022531

/-- `(n+1)^15-n^15` -/
def P825161268953040184.Spec : Prop :=
  ∀ n, P825161268953040184.a n = A022531 n

theorem P825161268953040184.correct : P825161268953040184.Spec := by
  intro n
  simp only [A022531]

end A022531

/-! ## A022531.P10432331232853842565

`Δ[A000578(n)^5]`
-/

namespace A022531.P10432331232853842565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022531.P10432331232853842565

namespace A022531

/-- `Δ[A000578(n)^5]` -/
def P10432331232853842565.Spec : Prop :=
  ∀ n, P10432331232853842565.a n = A022531 n

theorem P10432331232853842565.correct : P10432331232853842565.Spec := by
  intro n
  simp only [A022531, Nat.add_sub_cancel, A022531.P10432331232853842565.f1, A022531.P10432331232853842565.a, A022531.P825161268953040184.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022531

/-! ## A022531.P3201114780442744933

`Δ[A010803(n)]`
-/

namespace A022531.P3201114780442744933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022531.P3201114780442744933

namespace A022531

/-- `Δ[A010803(n)]` -/
def P3201114780442744933.Spec : Prop :=
  ∀ n, P3201114780442744933.a n = A022531 n

theorem P3201114780442744933.correct : P3201114780442744933.Spec := by
  intro n
  simp only [A022531, Nat.add_sub_cancel, A022531.P3201114780442744933.f1, A022531.P3201114780442744933.a, A022531.P825161268953040184.a, A010803, A010803.P6276443509735505048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022531

/-! ## A022531.P8091790215462207455

`Δ[A000584(n)^3]`
-/

namespace A022531.P8091790215462207455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022531.P8091790215462207455

namespace A022531

/-- `Δ[A000584(n)^3]` -/
def P8091790215462207455.Spec : Prop :=
  ∀ n, P8091790215462207455.a n = A022531 n

theorem P8091790215462207455.correct : P8091790215462207455.Spec := by
  intro n
  simp only [A022531, Nat.add_sub_cancel, A022531.P8091790215462207455.f1, A022531.P8091790215462207455.a, A022531.P825161268953040184.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022531

/-! ## A022531.P7297509753769661326

`Δ[A155018(n²)]`
-/

namespace A022531.P7297509753769661326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155018 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022531.P7297509753769661326

namespace A022531

/-- `Δ[A155018(n²)]` -/
def P7297509753769661326.Spec : Prop :=
  ∀ n, P7297509753769661326.a n = A022531 n

end A022531

/-!
# A022532: Nexus numbers (n+1)^16-n^16.

The programs for A022532, the canonical program `A022532.P9517477861749076244` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022532 has offset 0).

The definition of A022532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^16-n^16` (program `A022532.P9517477861749076244`, by `A022532.P9517477861749076244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022532.P9517477861749076244

`(n+1)^16-n^16`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022532

/-- `(n+1)^16-n^16` -/
def P9517477861749076244.Spec : Prop :=
  ∀ n, P9517477861749076244.a n = A022532 n

theorem P9517477861749076244.correct : P9517477861749076244.Spec := by
  intro n
  simp only [A022532]

end A022532

/-! ## A022532.P16907975974000178560

`or(1, Δ[n²²²²])`
-/

namespace A022532.P16907975974000178560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022532.P16907975974000178560

namespace A022532

/-- `or(1, Δ[n²²²²])` -/
def P16907975974000178560.Spec : Prop :=
  ∀ n, P16907975974000178560.a n = A022532 n

end A022532

/-! ## A022532.P9952958311650357048

`lcm(2*n+1, Δ[n²²²²])`
-/

namespace A022532.P9952958311650357048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A022532.P9952958311650357048

namespace A022532

/-- `lcm(2*n+1, Δ[n²²²²])` -/
def P9952958311650357048.Spec : Prop :=
  ∀ n, (P9952958311650357048.a n : ℤ) = A022532 n

end A022532

/-! ## A022532.P10151340176592015432

`A022524(n)*A036086(n)`
-/

namespace A022532.P10151340176592015432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022524 n * A036086 n

end

end A022532.P10151340176592015432

namespace A022532

/-- `A022524(n)*A036086(n)` -/
def P10151340176592015432.Spec : Prop :=
  ∀ n, P10151340176592015432.a n = A022532 n

theorem P10151340176592015432.correct : P10151340176592015432.Spec := by
  intro n
  simp only [A022532, Nat.add_sub_cancel, A022532.P10151340176592015432.a, A022532.P9517477861749076244.a, A022524, A022524.P15595221110547193685.a, A036086, A036086.P15809469272928113457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022532

/-! ## A022532.P15656653892909037804

`Δ[A060895(n)]`
-/

namespace A022532.P15656653892909037804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022532.P15656653892909037804

namespace A022532

/-- `Δ[A060895(n)]` -/
def P15656653892909037804.Spec : Prop :=
  ∀ n, P15656653892909037804.a n = A022532 n

theorem P15656653892909037804.correct : P15656653892909037804.Spec := by
  intro n
  simp only [A022532, Nat.add_sub_cancel, A022532.P15656653892909037804.f1, A022532.P15656653892909037804.a, A022532.P9517477861749076244.a, A060895, A060895.P10166565864394758436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022532

/-! ## A022532.P16441584729220436491

`Δ[A001016(n)²]`
-/

namespace A022532.P16441584729220436491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022532.P16441584729220436491

namespace A022532

/-- `Δ[A001016(n)²]` -/
def P16441584729220436491.Spec : Prop :=
  ∀ n, P16441584729220436491.a n = A022532 n

theorem P16441584729220436491.correct : P16441584729220436491.Spec := by
  intro n
  simp only [A022532, Nat.add_sub_cancel, A022532.P16441584729220436491.f1, A022532.P16441584729220436491.a, A022532.P9517477861749076244.a, A001016, A001016.P10257285112668202493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022532

/-! ## A022532.P591449586832198216

`Δ[n*A010803(n)]`
-/

namespace A022532.P591449586832198216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022532.P591449586832198216

namespace A022532

/-- `Δ[n*A010803(n)]` -/
def P591449586832198216.Spec : Prop :=
  ∀ n, P591449586832198216.a n = A022532 n

theorem P591449586832198216.correct : P591449586832198216.Spec := by
  intro n
  simp only [A022532, Nat.add_sub_cancel, A022532.P591449586832198216.f1, A022532.P591449586832198216.a, A022532.P9517477861749076244.a, A010803, A010803.P6276443509735505048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022532

/-! ## A022532.P12794003455969708284

`Δ[A000583(n)²²]`
-/

namespace A022532.P12794003455969708284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022532.P12794003455969708284

namespace A022532

/-- `Δ[A000583(n)²²]` -/
def P12794003455969708284.Spec : Prop :=
  ∀ n, P12794003455969708284.a n = A022532 n

theorem P12794003455969708284.correct : P12794003455969708284.Spec := by
  intro n
  simp only [A022532, Nat.add_sub_cancel, A022532.P12794003455969708284.f1, A022532.P12794003455969708284.a, A022532.P9517477861749076244.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022532

/-! ## A022532.P5412446911847156571

`(A001016(n+1)+A001016(n))*A022524(n)`
-/

namespace A022532.P5412446911847156571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001016 (n + 1) + A001016 n) * A022524 n

end

end A022532.P5412446911847156571

namespace A022532

/-- `(A001016(n+1)+A001016(n))*A022524(n)` -/
def P5412446911847156571.Spec : Prop :=
  ∀ n, P5412446911847156571.a n = A022532 n

theorem P5412446911847156571.correct : P5412446911847156571.Spec := by
  intro n
  simp only [A022532, Nat.add_sub_cancel, A022532.P5412446911847156571.a, A022532.P9517477861749076244.a, A001016, A001016.P10257285112668202493.a, A022524, A022524.P15595221110547193685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022532

/-! ## A022532.P3621014933192199851

`record[Δ[A048761(n)²²²]]`
-/

namespace A022532.P3621014933192199851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A048761 n ^ 2) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022532.P3621014933192199851

namespace A022532

/-- `record[Δ[A048761(n)²²²]]` -/
def P3621014933192199851.Spec : Prop :=
  ∀ n, P3621014933192199851.a n = A022532 n

end A022532

/-!
# A022533: Nexus numbers (n+1)^17 - n^17.

The programs for A022533, the canonical program `A022533.P8027129521990764214` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022533 has offset 0).

The definition of A022533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^17-n^17` (program `A022533.P8027129521990764214`, by `A022533.P8027129521990764214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022533.P8027129521990764214

`(n+1)^17-n^17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022533

/-- `(n+1)^17-n^17` -/
def P8027129521990764214.Spec : Prop :=
  ∀ n, P8027129521990764214.a n = A022533 n

theorem P8027129521990764214.correct : P8027129521990764214.Spec := by
  intro n
  simp only [A022533]

end A022533

/-! ## A022533.P17313886737894513471

`Δ[n*A000290(n)^8]`
-/

namespace A022533.P17313886737894513471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000290 n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022533.P17313886737894513471

namespace A022533

/-- `Δ[n*A000290(n)^8]` -/
def P17313886737894513471.Spec : Prop :=
  ∀ n, P17313886737894513471.a n = A022533 n

theorem P17313886737894513471.correct : P17313886737894513471.Spec := by
  intro n
  simp only [A022533, Nat.add_sub_cancel, A022533.P17313886737894513471.f1, A022533.P17313886737894513471.a, A022533.P8027129521990764214.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022533

/-! ## A022533.P9504972776787238268

`Δ[A010805(n)]`
-/

namespace A022533.P9504972776787238268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022533.P9504972776787238268

namespace A022533

/-- `Δ[A010805(n)]` -/
def P9504972776787238268.Spec : Prop :=
  ∀ n, P9504972776787238268.a n = A022533 n

theorem P9504972776787238268.correct : P9504972776787238268.Spec := by
  intro n
  simp only [A022533, Nat.add_sub_cancel, A022533.P9504972776787238268.f1, A022533.P9504972776787238268.a, A022533.P8027129521990764214.a, A010805, A010805.P7645891408696802339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022533

/-! ## A022533.P1428162941752779670

`Δ[A165254(n)]`
-/

namespace A022533.P1428162941752779670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022533.P1428162941752779670

namespace A022533

/-- `Δ[A165254(n)]` -/
def P1428162941752779670.Spec : Prop :=
  ∀ n, P1428162941752779670.a n = A022533 n

theorem P1428162941752779670.correct : P1428162941752779670.Spec := by
  intro n
  simp only [A022533, Nat.add_sub_cancel, A022533.P1428162941752779670.f1, A022533.P1428162941752779670.a, A022533.P8027129521990764214.a, A165254, A165254.P4451725601689140107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022533

/-! ## A022533.P2567695599838668933

`Δ[A000583(n)*A010801(n)]`
-/

namespace A022533.P2567695599838668933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n * A010801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022533.P2567695599838668933

namespace A022533

/-- `Δ[A000583(n)*A010801(n)]` -/
def P2567695599838668933.Spec : Prop :=
  ∀ n, P2567695599838668933.a n = A022533 n

theorem P2567695599838668933.correct : P2567695599838668933.Spec := by
  intro n
  simp only [A022533, Nat.add_sub_cancel, A022533.P2567695599838668933.f1, A022533.P2567695599838668933.a, A022533.P8027129521990764214.a, A000583, A000583.P14547500281748394449.a, A010801, A010801.P15153866690216922804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022533

/-! ## A022533.P13030116480097127662

`Δ[A193231(A193231(n))^17]`
-/

namespace A022533.P13030116480097127662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A193231 n).toNat ^ 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022533.P13030116480097127662

namespace A022533

/-- `Δ[A193231(A193231(n))^17]` -/
def P13030116480097127662.Spec : Prop :=
  ∀ n, P13030116480097127662.a n = A022533 n

end A022533

/-! ## A022533.P15161959041348268993

`Δ[n^(A046698(2*n)+15)]`
-/

namespace A022533.P15161959041348268993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A046698 (2 * n) + 15 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022533.P15161959041348268993

namespace A022533

/-- `Δ[n^(A046698(2*n)+15)]` -/
def P15161959041348268993.Spec : Prop :=
  ∀ n, P15161959041348268993.a n = (A022533 n : ℚ)

end A022533

/-!
# A022534: Nexus numbers (n+1)^18 - n^18.

The programs for A022534, the canonical program `A022534.P5405851921227039614` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022534 has offset 0).

The definition of A022534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^18-n^18` (program `A022534.P5405851921227039614`, by `A022534.P5405851921227039614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022534.P5405851921227039614

`(n+1)^18-n^18`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022534

/-- `(n+1)^18-n^18` -/
def P5405851921227039614.Spec : Prop :=
  ∀ n, P5405851921227039614.a n = A022534 n

theorem P5405851921227039614.correct : P5405851921227039614.Spec := by
  intro n
  simp only [A022534]

end A022534

/-! ## A022534.P906948390923824316

`Δ[A001017(n)²]`
-/

namespace A022534.P906948390923824316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022534.P906948390923824316

namespace A022534

/-- `Δ[A001017(n)²]` -/
def P906948390923824316.Spec : Prop :=
  ∀ n, P906948390923824316.a n = A022534 n

theorem P906948390923824316.correct : P906948390923824316.Spec := by
  intro n
  simp only [A022534, Nat.add_sub_cancel, A022534.P906948390923824316.f1, A022534.P906948390923824316.a, A022534.P5405851921227039614.a, A001017, A001017.P9152421289291957289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022534

/-! ## A022534.P12480468834314920641

`A022525(n)*A036087(n)`
-/

namespace A022534.P12480468834314920641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022525 n * A036087 n

end

end A022534.P12480468834314920641

namespace A022534

/-- `A022525(n)*A036087(n)` -/
def P12480468834314920641.Spec : Prop :=
  ∀ n, P12480468834314920641.a n = A022534 n

theorem P12480468834314920641.correct : P12480468834314920641.Spec := by
  intro n
  simp only [A022534, Nat.add_sub_cancel, A022534.P12480468834314920641.a, A022534.P5405851921227039614.a, A022525, A022525.P5997612634053303952.a, A036087, A036087.P11006721384539131196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022534

/-! ## A022534.P7012645451256388079

`(A001017(n+1)+A001017(n))*A022525(n)`
-/

namespace A022534.P7012645451256388079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001017 (n + 1) + A001017 n) * A022525 n

end

end A022534.P7012645451256388079

namespace A022534

/-- `(A001017(n+1)+A001017(n))*A022525(n)` -/
def P7012645451256388079.Spec : Prop :=
  ∀ n, P7012645451256388079.a n = A022534 n

theorem P7012645451256388079.correct : P7012645451256388079.Spec := by
  intro n
  simp only [A022534, Nat.add_sub_cancel, A022534.P7012645451256388079.a, A022534.P5405851921227039614.a, A001017, A001017.P9152421289291957289.a, A022525, A022525.P5997612634053303952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022534

/-! ## A022534.P7721983695537905144

`(A001017(n+1)-A001017(n))*A036087(n)`
-/

namespace A022534.P7721983695537905144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001017 (n + 1) - A001017 n) * A036087 n

end

end A022534.P7721983695537905144

namespace A022534

/-- `(A001017(n+1)-A001017(n))*A036087(n)` -/
def P7721983695537905144.Spec : Prop :=
  ∀ n, P7721983695537905144.a n = A022534 n

theorem P7721983695537905144.correct : P7721983695537905144.Spec := by
  intro n
  simp only [A022534, Nat.add_sub_cancel, A022534.P7721983695537905144.a, A022534.P5405851921227039614.a, A001017, A001017.P9152421289291957289.a, A036087, A036087.P11006721384539131196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022534

/-! ## A022534.P687661693517550213

`Δ[A010806(n)]`
-/

namespace A022534.P687661693517550213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022534.P687661693517550213

namespace A022534

/-- `Δ[A010806(n)]` -/
def P687661693517550213.Spec : Prop :=
  ∀ n, P687661693517550213.a n = A022534 n

theorem P687661693517550213.correct : P687661693517550213.Spec := by
  intro n
  simp only [A022534, Nat.add_sub_cancel, A022534.P687661693517550213.f1, A022534.P687661693517550213.a, A022534.P5405851921227039614.a, A010806, A010806.P14867464415691871590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022534

/-! ## A022534.P10538846787397232846

`Δ[(1-A024007(n))²]`
-/

namespace A022534.P10538846787397232846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A024007 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022534.P10538846787397232846

namespace A022534

/-- `Δ[(1-A024007(n))²]` -/
def P10538846787397232846.Spec : Prop :=
  ∀ n, P10538846787397232846.a n = A022534 n

theorem P10538846787397232846.correct : P10538846787397232846.Spec := by
  intro n
  simp only [A022534, Nat.add_sub_cancel, A022534.P10538846787397232846.f1, A022534.P10538846787397232846.a, A022534.P5405851921227039614.a, A024007, A024007.P2019830728715847895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022534

/-! ## A022534.P12368426864161974605

`Δ[A001017(A000290(n))]`
-/

namespace A022534.P12368426864161974605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A000290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022534.P12368426864161974605

namespace A022534

/-- `Δ[A001017(A000290(n))]` -/
def P12368426864161974605.Spec : Prop :=
  ∀ n, P12368426864161974605.a n = A022534 n

end A022534

/-! ## A022534.P2386218250897408731

`abs(Δ[A024007(n²)])`
-/

namespace A022534.P2386218250897408731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024007 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022534.P2386218250897408731

namespace A022534

/-- `abs(Δ[A024007(n²)])` -/
def P2386218250897408731.Spec : Prop :=
  ∀ n, P2386218250897408731.a n = A022534 n

end A022534

/-!
# A022535: Nexus numbers (n+1)^19 - n^19.

The programs for A022535, the canonical program `A022535.P4173703526108306890` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022535 has offset 0).

The definition of A022535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^19-n^19` (program `A022535.P4173703526108306890`, by `A022535.P4173703526108306890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022535.P4173703526108306890

`(n+1)^19-n^19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022535

/-- `(n+1)^19-n^19` -/
def P4173703526108306890.Spec : Prop :=
  ∀ n, P4173703526108306890.a n = A022535 n

theorem P4173703526108306890.correct : P4173703526108306890.Spec := by
  intro n
  simp only [A022535]

end A022535

/-!
# A022536: Nexus numbers (n+1)^20 - n^20.

The programs for A022536, the canonical program `A022536.P8227938143739572640` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022536 has offset 0).

The definition of A022536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^20-n^20` (program `A022536.P8227938143739572640`, by `A022536.P8227938143739572640.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022536.P8227938143739572640

`(n+1)^20-n^20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022536

/-- `(n+1)^20-n^20` -/
def P8227938143739572640.Spec : Prop :=
  ∀ n, P8227938143739572640.a n = A022536 n

theorem P8227938143739572640.correct : P8227938143739572640.Spec := by
  intro n
  simp only [A022536]

end A022536

/-! ## A022536.P7259221694567023553

`A022526(n)*A036088(n)`
-/

namespace A022536.P7259221694567023553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022526 n * A036088 n

end

end A022536.P7259221694567023553

namespace A022536

/-- `A022526(n)*A036088(n)` -/
def P7259221694567023553.Spec : Prop :=
  ∀ n, P7259221694567023553.a n = A022536 n

theorem P7259221694567023553.correct : P7259221694567023553.Spec := by
  intro n
  simp only [A022536, Nat.add_sub_cancel, A022536.P7259221694567023553.a, A022536.P8227938143739572640.a, A022526, A022526.P1518772193900878853.a, A036088, A036088.P7773162319479978541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022536

/-! ## A022536.P9947936186682016969

`abs(Δ[A008454(n)²])`
-/

namespace A022536.P9947936186682016969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022536.P9947936186682016969

namespace A022536

/-- `abs(Δ[A008454(n)²])` -/
def P9947936186682016969.Spec : Prop :=
  ∀ n, P9947936186682016969.a n = A022536 n

end A022536

/-! ## A022536.P10591984489834370937

`(A008454(n+1)+A008454(n))*A022526(n)`
-/

namespace A022536.P10591984489834370937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008454 (n + 1) + A008454 n) * A022526 n

end

end A022536.P10591984489834370937

namespace A022536

/-- `(A008454(n+1)+A008454(n))*A022526(n)` -/
def P10591984489834370937.Spec : Prop :=
  ∀ n, P10591984489834370937.a n = A022536 n

theorem P10591984489834370937.correct : P10591984489834370937.Spec := by
  intro n
  simp only [A022536, Nat.add_sub_cancel, A022536.P10591984489834370937.a, A022536.P8227938143739572640.a, A008454, A008454.P6486498320967950731.a, A022526, A022526.P1518772193900878853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022536

/-!
# A022537: Nexus numbers (n+1)^21 - n^21.

The programs for A022537, the canonical program `A022537.P8412497485381094574` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022537 has offset 0).

The definition of A022537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^21-n^21` (program `A022537.P8412497485381094574`, by `A022537.P8412497485381094574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022537.P8412497485381094574

`(n+1)^21-n^21`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022537

/-- `(n+1)^21-n^21` -/
def P8412497485381094574.Spec : Prop :=
  ∀ n, P8412497485381094574.a n = A022537 n

theorem P8412497485381094574.correct : P8412497485381094574.Spec := by
  intro n
  simp only [A022537]

end A022537

/-! ## A022537.P8803620626187838785

`abs(Δ[A010809(n)])`
-/

namespace A022537.P8803620626187838785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022537.P8803620626187838785

namespace A022537

/-- `abs(Δ[A010809(n)])` -/
def P8803620626187838785.Spec : Prop :=
  ∀ n, P8803620626187838785.a n = A022537 n

end A022537

/-! ## A022537.P16953380313267690748

`Δ[A010809(n)]%A010809(n+2)`
-/

namespace A022537.P16953380313267690748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A010809 (n + 2))

end

end A022537.P16953380313267690748

namespace A022537

/-- `Δ[A010809(n)]%A010809(n+2)` -/
def P16953380313267690748.Spec : Prop :=
  ∀ n, P16953380313267690748.a n = A022537 n

end A022537

/-!
# A022538: Nexus numbers (n+1)^22 - n^22.

The programs for A022538, the canonical program `A022538.P18178718390867436209` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022538 has offset 0).

The definition of A022538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^22-n^22` (program `A022538.P18178718390867436209`, by `A022538.P18178718390867436209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022538.P18178718390867436209

`(n+1)^22-n^22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022538

/-- `(n+1)^22-n^22` -/
def P18178718390867436209.Spec : Prop :=
  ∀ n, P18178718390867436209.a n = A022538 n

theorem P18178718390867436209.correct : P18178718390867436209.Spec := by
  intro n
  simp only [A022538]

end A022538

/-! ## A022538.P11349198570536605914

`A022527(n)*A036089(n)`
-/

namespace A022538.P11349198570536605914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022527 n * A036089 n

end

end A022538.P11349198570536605914

namespace A022538

/-- `A022527(n)*A036089(n)` -/
def P11349198570536605914.Spec : Prop :=
  ∀ n, P11349198570536605914.a n = A022538 n

theorem P11349198570536605914.correct : P11349198570536605914.Spec := by
  intro n
  simp only [A022538, Nat.add_sub_cancel, A022538.P11349198570536605914.a, A022538.P18178718390867436209.a, A022527, A022527.P9583627414785900158.a, A036089, A036089.P5137669638222601657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022538

/-! ## A022538.P6147100359466423693

`(A008455(n+1)+A008455(n))*A022527(n)`
-/

namespace A022538.P6147100359466423693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008455 (n + 1) + A008455 n) * A022527 n

end

end A022538.P6147100359466423693

namespace A022538

/-- `(A008455(n+1)+A008455(n))*A022527(n)` -/
def P6147100359466423693.Spec : Prop :=
  ∀ n, P6147100359466423693.a n = A022538 n

theorem P6147100359466423693.correct : P6147100359466423693.Spec := by
  intro n
  simp only [A022538, Nat.add_sub_cancel, A022538.P6147100359466423693.a, A022538.P18178718390867436209.a, A008455, A008455.P9534885858269672633.a, A022527, A022527.P9583627414785900158.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022538

/-! ## A022538.P10189585584631831411

`(A008455(n+1)-A008455(n))*A036089(n)`
-/

namespace A022538.P10189585584631831411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008455 (n + 1) - A008455 n) * A036089 n

end

end A022538.P10189585584631831411

namespace A022538

/-- `(A008455(n+1)-A008455(n))*A036089(n)` -/
def P10189585584631831411.Spec : Prop :=
  ∀ n, P10189585584631831411.a n = A022538 n

theorem P10189585584631831411.correct : P10189585584631831411.Spec := by
  intro n
  simp only [A022538, Nat.add_sub_cancel, A022538.P10189585584631831411.a, A022538.P18178718390867436209.a, A008455, A008455.P9534885858269672633.a, A036089, A036089.P5137669638222601657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022538

/-!
# A022539: 

The programs for A022539, there is no canonical definition to state claims against.
-/

/-! ## A022539.P13383141337026116298

`Δ[n^23]`
-/

namespace A022539.P13383141337026116298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A022539.P13383141337026116298

/-! ## A022539.P7658118443115044664

`abs(Δ[A010811(n)])`
-/

namespace A022539.P7658118443115044664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022539.P7658118443115044664

/-! ## A022539.P6344185828337777191

`A010811(n+1)-n^23`
-/

namespace A022539.P6344185828337777191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010811 (n + 1) - (n ^ 23 : ℤ)

end

end A022539.P6344185828337777191

/-! ## A022539.P9531696944103268492

`root(Δ[A010811(n)], A054977(n))`
-/

namespace A022539.P9531696944103268492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010811 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) ^ (1 / (A054977 n : ℝ))

end

end A022539.P9531696944103268492

/-! ## A022539.P7829584684971389770

`or(Δ[A010811(n)], A161996(n+1))`
-/

namespace A022539.P7829584684971389770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A161996 (n + 1))

end

end A022539.P7829584684971389770

/-!
# A022540: 

The programs for A022540, there is no canonical definition to state claims against.
-/

/-! ## A022540.P2357208953702080993

`Δ[n^24]`
-/

namespace A022540.P2357208953702080993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A022540.P2357208953702080993

/-! ## A022540.P8030366030674208892

`abs(Δ[A008456(n)²])`
-/

namespace A022540.P8030366030674208892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022540.P8030366030674208892

/-! ## A022540.P15487012503807358608

`abs(Δ[n*A010811(n)])`
-/

namespace A022540.P15487012503807358608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022540.P15487012503807358608

/-! ## A022540.P5092696439267172226

`gcd(Δ[A008456(n)²], A000038(n))`
-/

namespace A022540.P5092696439267172226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A022540.P5092696439267172226

/-! ## A022540.P9134146848396733434

`(A008456(n+1)+A008456(n))*A022528(n)`
-/

namespace A022540.P9134146848396733434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008456 (n + 1) + A008456 n) * A022528 n

end

end A022540.P9134146848396733434

/-! ## A022540.P11484895791309303176

`(A008456(n+1)-A008456(n))*A036090(n)`
-/

namespace A022540.P11484895791309303176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008456 (n + 1) - A008456 n) * A036090 n

end

end A022540.P11484895791309303176

/-!
# A022543: Number of distinct 'failure tables' for a string of length n.

The programs for A022543, there is no canonical definition to state claims against.
-/

/-! ## A022543.P5443311126239808433

`record[round(A005248(n)/A135382(2*n+5))]`
-/

namespace A022543.P5443311126239808433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005248 n : ℚ) / (A135382 (2 * n + 5) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022543.P5443311126239808433

/-! ## A022543.P3971750352637270306

`A024417(abs(A078054(n)))`
-/

namespace A022543.P3971750352637270306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 |A078054 n|.toNat

end

end A022543.P3971750352637270306

/-! ## A022543.P8347565471956191186

`A023193(∑[A037028(n)])`
-/

namespace A022543.P8347565471956191186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022543.P8347565471956191186

/-! ## A022543.P12467674064528356091

`A095773(A082679(n+1))`
-/

namespace A022543.P12467674064528356091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A082679 (n + 1)).toNat

end

end A022543.P12467674064528356091

/-!
# A022544: Numbers that are not the sum of 2 squares.

The programs for A022544, the canonical program `A022544.P10438858882280228119` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022544 has offset 1).

The definition of A022544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022544.P2353916854378939195

`comp[A163547(n)]`
-/

namespace A022544.P2353916854378939195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022544.P2353916854378939195

namespace A022544

/-- `comp[A163547(n)]` -/
def P2353916854378939195.Spec : Prop :=
  ∀ n, (P2353916854378939195.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P3493059862969382495

`comp[A373710(n)]`
-/

namespace A022544.P3493059862969382495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373710 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022544.P3493059862969382495

namespace A022544

/-- `comp[A373710(n)]` -/
def P3493059862969382495.Spec : Prop :=
  ∀ n, (P3493059862969382495.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P10438858882280228119

`eq[0, A229062(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022544

/-- `eq[0, A229062(n)]` -/
def P10438858882280228119.Spec : Prop :=
  ∀ n, (P10438858882280228119.a n : ℤ) = A022544 (n + 1)

theorem P10438858882280228119.correct : P10438858882280228119.Spec := by
  intro n
  simp only [A022544, Nat.add_sub_cancel]

end A022544

/-! ## A022544.P6664301397572771359

`lt[2, A002828(n)]`
-/

namespace A022544.P6664301397572771359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022544.P6664301397572771359

namespace A022544

/-- `lt[2, A002828(n)]` -/
def P6664301397572771359.Spec : Prop :=
  ∀ n, (P6664301397572771359.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P5043947706053895284

`comp[A001481(n+1)]`
-/

namespace A022544.P5043947706053895284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022544.P5043947706053895284

namespace A022544

/-- `comp[A001481(n+1)]` -/
def P5043947706053895284.Spec : Prop :=
  ∀ n, (P5043947706053895284.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P18259469787777422570

`root(A125111(n+1), 3)`
-/

namespace A022544.P18259469787777422570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A125111 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A022544.P18259469787777422570

namespace A022544

/-- `root(A125111(n+1), 3)` -/
def P18259469787777422570.Spec : Prop :=
  ∀ n, P18259469787777422570.a n = (A022544 (n + 1) : ℝ)

end A022544

/-! ## A022544.P11272516637157279616

`comp[A166687(n+1)-1]`
-/

namespace A022544.P11272516637157279616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022544.P11272516637157279616

namespace A022544

/-- `comp[A166687(n+1)-1]` -/
def P11272516637157279616.Spec : Prop :=
  ∀ n, (P11272516637157279616.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P16501966828054117584

`lt[A133388(n+1), 1]+1`
-/

namespace A022544.P16501966828054117584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A022544.P16501966828054117584

namespace A022544

/-- `lt[A133388(n+1), 1]+1` -/
def P16501966828054117584.Spec : Prop :=
  ∀ n, (P16501966828054117584.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P11267687066531455383

`∪[A000419(n+1), A004215(n+1)]`
-/

namespace A022544.P11267687066531455383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A022544.P11267687066531455383

namespace A022544

/-- `∪[A000419(n+1), A004215(n+1)]` -/
def P11267687066531455383.Spec : Prop :=
  ∀ n, (P11267687066531455383.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P14198204702329137092

`filter[A018825(n+1), A049240(#)]`
-/

namespace A022544.P14198204702329137092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A022544.P14198204702329137092

namespace A022544

/-- `filter[A018825(n+1), A049240(#)]` -/
def P14198204702329137092.Spec : Prop :=
  ∀ n, P14198204702329137092.a n = A022544 (n + 1)

end A022544

/-! ## A022544.P18420951781618914311

`∩[A004435(n+1), A018825(n+1)]`
-/

namespace A022544.P18420951781618914311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022544.P18420951781618914311

namespace A022544

/-- `∩[A004435(n+1), A018825(n+1)]` -/
def P18420951781618914311.Spec : Prop :=
  ∀ n, (P18420951781618914311.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P12792138722557545823

`comp[A163531(n)]`
-/

namespace A022544.P12792138722557545823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022544.P12792138722557545823

namespace A022544

/-- `comp[A163531(n)]` -/
def P12792138722557545823.Spec : Prop :=
  ∀ n, (P12792138722557545823.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P13364432417737568965

`∩[A004435(n+1), A248150(n+1)]`
-/

namespace A022544.P13364432417737568965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022544.P13364432417737568965

namespace A022544

/-- `∩[A004435(n+1), A248150(n+1)]` -/
def P13364432417737568965.Spec : Prop :=
  ∀ n, (P13364432417737568965.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P6384864310233949486

`∩[A004439(n+1), A248150(n+1)]`
-/

namespace A022544.P6384864310233949486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022544.P6384864310233949486

namespace A022544

/-- `∩[A004439(n+1), A248150(n+1)]` -/
def P6384864310233949486.Spec : Prop :=
  ∀ n, (P6384864310233949486.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P1486656715494227805

`∩[A018825(n+1), A248150(n+1)]`
-/

namespace A022544.P1486656715494227805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022544.P1486656715494227805

namespace A022544

/-- `∩[A018825(n+1), A248150(n+1)]` -/
def P1486656715494227805.Spec : Prop :=
  ∀ n, (P1486656715494227805.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P2252848705888128515

`∩[A004435(n+1), A103826(n+1)]`
-/

namespace A022544.P2252848705888128515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022544.P2252848705888128515

namespace A022544

/-- `∩[A004435(n+1), A103826(n+1)]` -/
def P2252848705888128515.Spec : Prop :=
  ∀ n, (P2252848705888128515.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P15167055142334285443

`∩[A018825(n+1), A158276(n+1)]`
-/

namespace A022544.P15167055142334285443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022544.P15167055142334285443

namespace A022544

/-- `∩[A018825(n+1), A158276(n+1)]` -/
def P15167055142334285443.Spec : Prop :=
  ∀ n, (P15167055142334285443.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P18367772793011900540

`∩[A004435(n+1), A028983(n+1)]`
-/

namespace A022544.P18367772793011900540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022544.P18367772793011900540

namespace A022544

/-- `∩[A004435(n+1), A028983(n+1)]` -/
def P18367772793011900540.Spec : Prop :=
  ∀ n, (P18367772793011900540.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P9250508728955337087

`∩[A004439(n+1), A028983(n+1)]`
-/

namespace A022544.P9250508728955337087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022544.P9250508728955337087

namespace A022544

/-- `∩[A004439(n+1), A028983(n+1)]` -/
def P9250508728955337087.Spec : Prop :=
  ∀ n, (P9250508728955337087.a n : ℤ) = A022544 (n + 1)

end A022544

/-! ## A022544.P4129157520704594380

`∩[A018825(n+1), A028983(n+1)]`
-/

namespace A022544.P4129157520704594380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022544.P4129157520704594380

namespace A022544

/-- `∩[A018825(n+1), A028983(n+1)]` -/
def P4129157520704594380.Spec : Prop :=
  ∀ n, (P4129157520704594380.a n : ℤ) = A022544 (n + 1)

end A022544

/-!
# A022545: Initial members of prime nonuplets (p, p+2, p+6, p+8, p+12, p+18, p+20, p+26, p+30).

The programs for A022545, there is no canonical definition to state claims against.
-/

/-! ## A022545.P17613662428093118988

`∩[A022009(n+1), A257125(n+1)]`
-/

namespace A022545.P17613662428093118988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022545.P17613662428093118988

/-! ## A022545.P1233699960938968424

`∩[A022011(n+1), A257125(n+1)]`
-/

namespace A022545.P1233699960938968424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022545.P1233699960938968424

/-! ## A022545.P5309501470542840806

`∩[A257124(n+1), A257125(n+1)]`
-/

namespace A022545.P5309501470542840806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022545.P5309501470542840806

/-!
# A022546: Initial members of prime nonuplets (p, p+2, p+6, p+12, p+14, p+20, p+24, p+26, p+30).

The programs for A022546, there is no canonical definition to state claims against.
-/

/-! ## A022546.P11416174783998430407

`∩[A022012(n+1), A257125(n+1)]`
-/

namespace A022546.P11416174783998430407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022546.P11416174783998430407

/-! ## A022546.P11186317110994485446

`∩[30*A145315(n+1)-13, A257125(n+1)]`
-/

namespace A022546.P11186317110994485446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A145315 (n + 1) - 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022546.P11186317110994485446

/-!
# A022547: Initial members of prime nonuplets (p, p+4, p+6, p+10, p+16, p+18, p+24, p+28, p+30).

The programs for A022547, there is no canonical definition to state claims against.
-/

/-! ## A022547.P10185801792408478791

`∩[A022012(n+1)-4, A257125(n+1)]`
-/

namespace A022547.P10185801792408478791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022012 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022547.P10185801792408478791

/-!
# A022548: Initial members of prime nonuplets (p, p+4, p+10, p+12, p+18, p+22, p+24, p+28, p+30).

The programs for A022548, there is no canonical definition to state claims against.
-/

/-! ## A022548.P3486038539470279074

`∩[A022013(n+1)-4, A257125(n+1)]`
-/

namespace A022548.P3486038539470279074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022013 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022548.P3486038539470279074

/-! ## A022548.P1974414593185221946

`∩[A022010(n+1)-10, A257125(n+1)]`
-/

namespace A022548.P1974414593185221946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022548.P1974414593185221946

/-! ## A022548.P4878672360653506240

`∩[A257124(n+1)-10, A257125(n+1)]`
-/

namespace A022548.P4878672360653506240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022548.P4878672360653506240

/-!
# A022549: Sum of a square and a nonnegative cube.

The programs for A022549, there is no canonical definition to state claims against.
-/

/-! ## A022549.P15363752611976178285

`∪[A002760(n+1), A055394(n+1)]`
-/

namespace A022549.P15363752611976178285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A022549.P15363752611976178285

/-! ## A022549.P543322782368644068

`∪[A055393(n+1), A179509(n+1)]`
-/

namespace A022549.P543322782368644068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A022549.P543322782368644068

/-! ## A022549.P749394965431758790

`comp[A022550(n+1)]`
-/

namespace A022549.P749394965431758790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022549.P749394965431758790

/-! ## A022549.P3890659458574015959

`lt[0, A045634(n)]`
-/

namespace A022549.P3890659458574015959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022549.P3890659458574015959

/-! ## A022549.P9175025885995727141

`eq[A000038(n)^A045634(n), A000038(n)]`
-/

namespace A022549.P9175025885995727141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A045634 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A022549.P9175025885995727141

/-! ## A022549.P16018050504525304589

`record[n%(A000040(n+1)^A045634(n))]`
-/

namespace A022549.P16018050504525304589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A045634 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022549.P16018050504525304589

/-! ## A022549.P11571281655131205799

`eq[A000007(n*A045634(n)), A000007(n)]`
-/

namespace A022549.P11571281655131205799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A045634 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022549.P11571281655131205799

/-! ## A022549.P9803947365255667846

`eq[A000038(n*A045634(n)), A000038(n)]`
-/

namespace A022549.P9803947365255667846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A045634 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022549.P9803947365255667846

/-! ## A022549.P13610627302935390270

`eq[0, A000122(A000040(n+1)*A045634(n))]`
-/

namespace A022549.P13610627302935390270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000040 (n + 1) * A045634 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022549.P13610627302935390270

/-!
# A022550: Numbers that are not the sum of a square and a nonnegative cube.

The programs for A022550, there is no canonical definition to state claims against.
-/

/-! ## A022550.P16376479379568060080

`comp[A022549(n+1)]`
-/

namespace A022550.P16376479379568060080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022550.P16376479379568060080

/-! ## A022550.P5673418996111278192

`∩[A066650(n+1), A094784(n+1)]`
-/

namespace A022550.P5673418996111278192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022550.P5673418996111278192

/-! ## A022550.P3365373855963666055

`eq[0, A045634(n)]`
-/

namespace A022550.P3365373855963666055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022550.P3365373855963666055

/-! ## A022550.P10063014032868298300

`eq[0, char[A022549(A052938(n))]]`
-/

namespace A022550.P10063014032868298300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (A052938 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022550.P10063014032868298300

/-! ## A022550.P4037521632843646979

`eq[0, char[A022549(A133310(n))]]`
-/

namespace A022550.P4037521632843646979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (A133310 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022550.P4037521632843646979

/-! ## A022550.P3740624458820044042

`eq[char[A022549(n+1)], A000038(n)]`
-/

namespace A022550.P3740624458820044042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022550.P3740624458820044042

/-! ## A022550.P12506717745362034298

`eq[0, char[A022549(A141256(n))]]`
-/

namespace A022550.P12506717745362034298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (A141256 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022550.P12506717745362034298

/-! ## A022550.P15537107265611972068

`comp[A123291(n+1)]`
-/

namespace A022550.P15537107265611972068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022550.P15537107265611972068

/-!
# A022551: Numbers that are the sum of 2 squares and a nonnegative cube.

The programs for A022551, there is no canonical definition to state claims against.
-/

/-! ## A022551.P17135170967196000126

`comp[A022552(n+1)]`
-/

namespace A022551.P17135170967196000126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022551.P17135170967196000126

/-! ## A022551.P4205660622186263029

`lt[0, A274274(n)]`
-/

namespace A022551.P4205660622186263029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274274 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022551.P4205660622186263029

/-! ## A022551.P690942582268150106

`eq[0, A000038(A274274(n)²)]`
-/

namespace A022551.P690942582268150106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A274274 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022551.P690942582268150106

/-! ## A022551.P453861880766790529

`eq[n*A000038(n), A000038(A274274(n))]`
-/

namespace A022551.P453861880766790529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A274274 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022551.P453861880766790529

/-! ## A022551.P10531063785381963520

`eq[A000038(n+1), A000038(A274274(n))]`
-/

namespace A022551.P10531063785381963520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A274274 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022551.P10531063785381963520

/-!
# A022552: Numbers that are not the sum of 2 squares and a nonnegative cube.

The programs for A022552, there is no canonical definition to state claims against.
-/

/-! ## A022552.P768457617502986166

`comp[A022551(n+1)]`
-/

namespace A022552.P768457617502986166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022552.P768457617502986166

/-! ## A022552.P16394311887837022474

`eq[0, A274274(n)]`
-/

namespace A022552.P16394311887837022474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274274 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022552.P16394311887837022474

/-! ## A022552.P14691145790329108196

`lt[A274274(A028310(n)), 1]`
-/

namespace A022552.P14691145790329108196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274274 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A022552.P14691145790329108196

/-! ## A022552.P13616532797417555046

`lt[A274274(n), A001222(A162753(n))]`
-/

namespace A022552.P13616532797417555046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A162753 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022552.P13616532797417555046

/-! ## A022552.P7521756176058372468

`lt[A010052(n), A353254(A274274(n))]`
-/

namespace A022552.P7521756176058372468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353254 (A274274 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022552.P7521756176058372468

/-! ## A022552.P14462266245372519843

`lt[A274274(n), A001222(A008578(n+1))]`
-/

namespace A022552.P14462266245372519843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022552.P14462266245372519843

/-! ## A022552.P2188904321097561259

`lt[A274274(A110654(2*n)), 1]`
-/

namespace A022552.P2188904321097561259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274274 (A110654 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A022552.P2188904321097561259

/-!
# A022553: Number of binary Lyndon words containing n letters of each type; periodic binary sequences of period 2n with n zeros and n ones in each period.

The programs for A022553, there is no canonical definition to state claims against.
-/

/-! ## A022553.P4100986686343089020

`A383904(n)+A045632(n)`
-/

namespace A022553.P4100986686343089020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383904 n + A045632 n

end

end A022553.P4100986686343089020

/-! ## A022553.P16977710163706712193

`A003239(n)-A386946(n)`
-/

namespace A022553.P16977710163706712193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - A386946 n

end

end A022553.P16977710163706712193

/-! ## A022553.P11951105480269669225

`2*A045632(n)-A000048(n)`
-/

namespace A022553.P11951105480269669225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045632 n - A000048 n

end

end A022553.P11951105480269669225

/-! ## A022553.P2081346953614951881

`(A054358(n)+A000108(n))/2`
-/

namespace A022553.P2081346953614951881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054358 n + A000108 n : ℚ) / 2

end

end A022553.P2081346953614951881

/-! ## A022553.P3486419183027369041

`2*A045628(n)-A045680(n)`
-/

namespace A022553.P3486419183027369041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045628 n - A045680 n

end

end A022553.P3486419183027369041

/-! ## A022553.P17053922536143209979

`A383904(n)+A383904(n)+A000048(n)`
-/

namespace A022553.P17053922536143209979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383904 n + (A383904 n + A000048 n)

end

end A022553.P17053922536143209979

/-! ## A022553.P10021798699292012294

`A007727(n)/A004277(n)`
-/

namespace A022553.P10021798699292012294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A004277 n : ℚ)

end

end A022553.P10021798699292012294

/-! ## A022553.P15443445679496104768

`A045630(n)/A028310(n)`
-/

namespace A022553.P15443445679496104768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045630 n : ℚ) / (A028310 n : ℚ)

end

end A022553.P15443445679496104768

/-! ## A022553.P5300399412571600246

`A000048(n)/A045663(n)*A007727(n)`
-/

namespace A022553.P5300399412571600246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000048 n : ℚ) / (A045663 n : ℚ) * (A007727 n : ℚ)

end

end A022553.P5300399412571600246

/-! ## A022553.P13456522742122632803

`A007727(n)/A045662(n)*A045680(n)`
-/

namespace A022553.P13456522742122632803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A045662 n : ℚ) * (A045680 n : ℚ)

end

end A022553.P13456522742122632803

/-! ## A022553.P2428386167702161968

`A007727(n)/A045665(n)*A045683(n)`
-/

namespace A022553.P2428386167702161968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A045665 n : ℚ) * (A045683 n : ℚ)

end

end A022553.P2428386167702161968

/-! ## A022553.P5994998583273870142

`A007727(n)/A008574(n)*A020639(A008574(n))`
-/

namespace A022553.P5994998583273870142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A008574 n : ℚ) * (A020639 (A008574 n).toNat : ℚ)

end

end A022553.P5994998583273870142

/-! ## A022553.P4496474755077590408

`A289978((∑[n]+1)%∑[n+1])`
-/

namespace A022553.P4496474755077590408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) % (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A022553.P4496474755077590408

/-! ## A022553.P11076306619640346275

`A289978(A133263(n)-1)`
-/

namespace A022553.P11076306619640346275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 (A133263 n - 1).toNat

end

end A022553.P11076306619640346275

/-! ## A022553.P6912609975696713878

`A289978(A057427(n)+∑[n])`
-/

namespace A022553.P6912609975696713878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 (A057427 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A022553.P6912609975696713878

/-! ## A022553.P6234579794900917421

`A289978(A007318(∑[n+1]+2)+1)`
-/

namespace A022553.P6234579794900917421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 1).toNat

end

end A022553.P6234579794900917421

/-! ## A022553.P6328451295211239167

`A289978(A000124(A000007(n)+n))`
-/

namespace A022553.P6328451295211239167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 (A000124 (A000007 n + (n : ℤ)).toNat).toNat

end

end A022553.P6328451295211239167

/-! ## A022553.P17757324057241575982

`A289978(A000124(n)-A000007(n))`
-/

namespace A022553.P17757324057241575982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 (A000124 n - A000007 n).toNat

end

end A022553.P17757324057241575982

/-! ## A022553.P6066565635572489697

`A289978(A000124(n)*A057427(n))`
-/

namespace A022553.P6066565635572489697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 (A000124 n * A057427 n).toNat

end

end A022553.P6066565635572489697

/-! ## A022553.P3033837033163785906

`A289978(A000124(n)+1-A057427(n))`
-/

namespace A022553.P3033837033163785906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 (A000124 n + (1 - A057427 n)).toNat

end

end A022553.P3033837033163785906

/-!
# A022554: a(n) = Sum_{k=0..n} floor(sqrt(k)).

The programs for A022554, the canonical program `A022554.P13549060750151666021` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022554 has offset 0).

The definition of A022554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022554.P13549060750151666021

`floor(sqrt(n))*(n-1/6*(2*floor(sqrt(n))+5)*(floor(sqrt(n))-1))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022554

/-- `floor(sqrt(n))*(n-1/6*(2*floor(sqrt(n))+5)*(floor(sqrt(n))-1))` -/
def P13549060750151666021.Spec : Prop :=
  ∀ n, P13549060750151666021.a n = (A022554 n : ℚ)

end A022554

/-! ## A022554.P12403772783828218795

`floor(a(n-1)+sqrt(n))` with `a(0)=0`
-/

namespace A022554.P12403772783828218795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A022554.P12403772783828218795

namespace A022554

/-- `floor(a(n-1)+sqrt(n))` -/
def P12403772783828218795.Spec : Prop :=
  ∀ n, P12403772783828218795.a n = A022554 n

end A022554

/-! ## A022554.P15224407905987008769

`∑[∑[char[n²]]]+xor(n, -1)`
-/

namespace A022554.P15224407905987008769
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.xor (n : ℤ) (-1)

end

end A022554.P15224407905987008769

namespace A022554

/-- `∑[∑[char[n²]]]+xor(n, -1)` -/
def P15224407905987008769.Spec : Prop :=
  ∀ n, P15224407905987008769.a n = A022554 n

end A022554

/-! ## A022554.P2829352756038257038

`or(∑[∑[char[(n+1)²]]], char[1])`
-/

namespace A022554.P2829352756038257038
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f4 j = n then 1 else 0)

end

end A022554.P2829352756038257038

namespace A022554

/-- `or(∑[∑[char[(n+1)²]]], char[1])` -/
def P2829352756038257038.Spec : Prop :=
  ∀ n, (P2829352756038257038.a n : ℤ) = A022554 n

end A022554

/-! ## A022554.P12351141625636251697

`floor(∑[char[n²]+a(n-1)])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A022554.P12351141625636251697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022554.P12351141625636251697

namespace A022554

/-- `floor(∑[char[n²]+a(n-1)])` -/
def P12351141625636251697.Spec : Prop :=
  ∀ n, (P12351141625636251697.a n : ℤ) = A022554 n

end A022554

/-! ## A022554.P17398967429237976191

`ceil(∑[char[n²]+a(n-1)])` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A022554.P17398967429237976191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022554.P17398967429237976191

namespace A022554

/-- `ceil(∑[char[n²]+a(n-1)])` -/
def P17398967429237976191.Spec : Prop :=
  ∀ n, (P17398967429237976191.a n : ℤ) = A022554 n

end A022554

/-! ## A022554.P16447234471505443260

`∑[comp[∑[2*n]]]%∑[n+1]`
-/

namespace A022554.P16447234471505443260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A022554.P16447234471505443260

namespace A022554

/-- `∑[comp[∑[2*n]]]%∑[n+1]` -/
def P16447234471505443260.Spec : Prop :=
  ∀ n, (P16447234471505443260.a n : ℤ) = A022554 n

end A022554

/-! ## A022554.P8592209619847683422

`∑[char[(n+1)²]]+a(n-1)` with `a(0)=0`
-/

namespace A022554.P8592209619847683422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A022554.P8592209619847683422

namespace A022554

/-- `∑[char[(n+1)²]]+a(n-1)` -/
def P8592209619847683422.Spec : Prop :=
  ∀ n, (P8592209619847683422.a n : ℤ) = A022554 n

end A022554

/-! ## A022554.P7298843351844540847

`∑[comp[lcm(n, n+1)]]-∑[n+1]`
-/

namespace A022554.P7298843351844540847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A022554.P7298843351844540847

namespace A022554

/-- `∑[comp[lcm(n, n+1)]]-∑[n+1]` -/
def P7298843351844540847.Spec : Prop :=
  ∀ n, P7298843351844540847.a n = A022554 n

end A022554

/-! ## A022554.P13701617647519482109

`∑[A000196(n)]`
-/

namespace A022554.P13701617647519482109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022554.P13701617647519482109

namespace A022554

/-- `∑[A000196(n)]` -/
def P13701617647519482109.Spec : Prop :=
  ∀ n, P13701617647519482109.a n = A022554 n

end A022554

/-! ## A022554.P2094458469003103502

`∑[n-A028391(n)]`
-/

namespace A022554.P2094458469003103502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022554.P2094458469003103502

namespace A022554

/-- `∑[n-A028391(n)]` -/
def P2094458469003103502.Spec : Prop :=
  ∀ n, P2094458469003103502.a n = A022554 n

end A022554

/-! ## A022554.P13435811663282695375

`∑[A028392(n)-n]`
-/

namespace A022554.P13435811663282695375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022554.P13435811663282695375

namespace A022554

/-- `∑[A028392(n)-n]` -/
def P13435811663282695375.Spec : Prop :=
  ∀ n, P13435811663282695375.a n = A022554 n

end A022554

/-! ## A022554.P15882421261229072936

`ceil(∑[sqrt(A048760(n))])`
-/

namespace A022554.P15882421261229072936
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048760 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A022554.P15882421261229072936

namespace A022554

/-- `ceil(∑[sqrt(A048760(n))])` -/
def P15882421261229072936.Spec : Prop :=
  ∀ n, P15882421261229072936.a n = A022554 n

end A022554

/-! ## A022554.P7755510634440757103

`∑[A003059(n+1)-1]`
-/

namespace A022554.P7755510634440757103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022554.P7755510634440757103

namespace A022554

/-- `∑[A003059(n+1)-1]` -/
def P7755510634440757103.Spec : Prop :=
  ∀ n, P7755510634440757103.a n = A022554 n

end A022554

/-! ## A022554.P11720989887802967491

`A327672(n+1)-(n+1)`
-/

namespace A022554.P11720989887802967491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 (n + 1) - (n + 1 : ℤ)

end

end A022554.P11720989887802967491

namespace A022554

/-- `A327672(n+1)-(n+1)` -/
def P11720989887802967491.Spec : Prop :=
  ∀ n, P11720989887802967491.a n = A022554 n

end A022554

/-! ## A022554.P15340374987229995710

`∑[A078358(n+1)-(n+1)]`
-/

namespace A022554.P15340374987229995710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022554.P15340374987229995710

namespace A022554

/-- `∑[A078358(n+1)-(n+1)]` -/
def P15340374987229995710.Spec : Prop :=
  ∀ n, P15340374987229995710.a n = A022554 n

end A022554

/-! ## A022554.P9158305804109848920

`∑[∑[char[A000290(n)]]]-(n+1)`
-/

namespace A022554.P9158305804109848920
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A022554.P9158305804109848920

namespace A022554

/-- `∑[∑[char[A000290(n)]]]-(n+1)` -/
def P9158305804109848920.Spec : Prop :=
  ∀ n, P9158305804109848920.a n = A022554 n

end A022554

/-! ## A022554.P13716941211643019598

`∑[∑[char[(A004736(n+1)+1)²]]]+n`
-/

namespace A022554.P13716941211643019598
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A022554.P13716941211643019598

namespace A022554

/-- `∑[∑[char[(A004736(n+1)+1)²]]]+n` -/
def P13716941211643019598.Spec : Prop :=
  ∀ n, (P13716941211643019598.a n : ℤ) = A022554 n

end A022554

/-! ## A022554.P14355011575972159627

`A165453(n)-A080344(n)`
-/

namespace A022554.P14355011575972159627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 n - A080344 n

end

end A022554.P14355011575972159627

namespace A022554

/-- `A165453(n)-A080344(n)` -/
def P14355011575972159627.Spec : Prop :=
  ∀ n, P14355011575972159627.a n = A022554 n

end A022554

/-! ## A022554.P1298872143795029487

`A000196(n)+A327672(n)-n`
-/

namespace A022554.P1298872143795029487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (A327672 n - (n : ℤ))

end

end A022554.P1298872143795029487

namespace A022554

/-- `A000196(n)+A327672(n)-n` -/
def P1298872143795029487.Spec : Prop :=
  ∀ n, P1298872143795029487.a n = A022554 n

end A022554

/-!
# A022555: Positive integers that are not the sum of two nonnegative cubes.

The programs for A022555, the canonical program `A022555.P8597993334409940497` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022555 has offset 1).

The definition of A022555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022555.P8597993334409940497

`comp[A105125(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022555

/-- `comp[A105125(n)]` -/
def P8597993334409940497.Spec : Prop :=
  ∀ n, (P8597993334409940497.a n : ℤ) = A022555 (n + 1)

theorem P8597993334409940497.correct : P8597993334409940497.Spec := by
  intro n
  simp only [A022555, Nat.add_sub_cancel]

end A022555

/-! ## A022555.P17725977147765492719

`eq[0, A025446(n)]`
-/

namespace A022555.P17725977147765492719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022555.P17725977147765492719

namespace A022555

/-- `eq[0, A025446(n)]` -/
def P17725977147765492719.Spec : Prop :=
  ∀ n, (P17725977147765492719.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P1480269851796283672

`comp[A004999(n+1)]`
-/

namespace A022555.P1480269851796283672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022555.P1480269851796283672

namespace A022555

/-- `comp[A004999(n+1)]` -/
def P1480269851796283672.Spec : Prop :=
  ∀ n, (P1480269851796283672.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P6508651220400203262

`comp[A073254(n)*A134478(n)]`
-/

namespace A022555.P6508651220400203262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n * A134478 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022555.P6508651220400203262

namespace A022555

/-- `comp[A073254(n)*A134478(n)]` -/
def P6508651220400203262.Spec : Prop :=
  ∀ n, (P6508651220400203262.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P7287155710639081353

`comp[∪[A114090(n+1), A033431(n)]]`
-/

namespace A022555.P7287155710639081353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A022555.P7287155710639081353

namespace A022555

/-- `comp[∪[A114090(n+1), A033431(n)]]` -/
def P7287155710639081353.Spec : Prop :=
  ∀ n, (P7287155710639081353.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P11220757320353179732

`comp[∪[A114090(n+1), A213389(n)]]`
-/

namespace A022555.P11220757320353179732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A022555.P11220757320353179732

namespace A022555

/-- `comp[∪[A114090(n+1), A213389(n)]]` -/
def P11220757320353179732.Spec : Prop :=
  ∀ n, (P11220757320353179732.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P13561920903979383879

`∪[A022561(n+1), A047702(n+1)]`
-/

namespace A022555.P13561920903979383879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A022555.P13561920903979383879

namespace A022555

/-- `∪[A022561(n+1), A047702(n+1)]` -/
def P13561920903979383879.Spec : Prop :=
  ∀ n, (P13561920903979383879.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P12712198844042659957

`∩[A007412(n+1), A057903(n+1)]`
-/

namespace A022555.P12712198844042659957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022555.P12712198844042659957

namespace A022555

/-- `∩[A007412(n+1), A057903(n+1)]` -/
def P12712198844042659957.Spec : Prop :=
  ∀ n, (P12712198844042659957.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P15493086904753429361

`eq[0, A173677(n)]`
-/

namespace A022555.P15493086904753429361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022555.P15493086904753429361

namespace A022555

/-- `eq[0, A173677(n)]` -/
def P15493086904753429361.Spec : Prop :=
  ∀ n, (P15493086904753429361.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P10983531770487680045

`eq[0, A175362(n)]`
-/

namespace A022555.P10983531770487680045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022555.P10983531770487680045

namespace A022555

/-- `eq[0, A175362(n)]` -/
def P10983531770487680045.Spec : Prop :=
  ∀ n, (P10983531770487680045.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P12873538557876358824

`lt[0, A351338(n)]`
-/

namespace A022555.P12873538557876358824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022555.P12873538557876358824

namespace A022555

/-- `lt[0, A351338(n)]` -/
def P12873538557876358824.Spec : Prop :=
  ∀ n, (P12873538557876358824.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P15981390988176343376

`lt[0, A351376(n)]`
-/

namespace A022555.P15981390988176343376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022555.P15981390988176343376

namespace A022555

/-- `lt[0, A351376(n)]` -/
def P15981390988176343376.Spec : Prop :=
  ∀ n, (P15981390988176343376.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P6611396071369275099

`lt[2, A002376(n+1)]+1`
-/

namespace A022555.P6611396071369275099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A022555.P6611396071369275099

namespace A022555

/-- `lt[2, A002376(n+1)]+1` -/
def P6611396071369275099.Spec : Prop :=
  ∀ n, (P6611396071369275099.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P17187537269233120821

`lt[2, A002376(A028310(n))]`
-/

namespace A022555.P17187537269233120821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022555.P17187537269233120821

namespace A022555

/-- `lt[2, A002376(A028310(n))]` -/
def P17187537269233120821.Spec : Prop :=
  ∀ n, (P17187537269233120821.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P9639741559234756894

`eq[A010057(n), A025455(n)]`
-/

namespace A022555.P9639741559234756894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022555.P9639741559234756894

namespace A022555

/-- `eq[A010057(n), A025455(n)]` -/
def P9639741559234756894.Spec : Prop :=
  ∀ n, (P9639741559234756894.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P12366568217008899378

`eq[A025447(n), A025456(n)]`
-/

namespace A022555.P12366568217008899378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022555.P12366568217008899378

namespace A022555

/-- `eq[A025447(n), A025456(n)]` -/
def P12366568217008899378.Spec : Prop :=
  ∀ n, (P12366568217008899378.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P6307150646391117092

`eq[A051343(n), A051344(n)]`
-/

namespace A022555.P6307150646391117092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022555.P6307150646391117092

namespace A022555

/-- `eq[A051343(n), A051344(n)]` -/
def P6307150646391117092.Spec : Prop :=
  ∀ n, (P6307150646391117092.a n : ℤ) = A022555 (n + 1)

end A022555

/-! ## A022555.P793251210635489413

`eq[A010057(n), A280618(n)]`
-/

namespace A022555.P793251210635489413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022555.P793251210635489413

namespace A022555

/-- `eq[A010057(n), A280618(n)]` -/
def P793251210635489413.Spec : Prop :=
  ∀ n, (P793251210635489413.a n : ℤ) = A022555 (n + 1)

end A022555

/-!
# A022556: Numbers that are a sum of a square and 2 nonnegative cubes.

The programs for A022556, there is no canonical definition to state claims against.
-/

/-! ## A022556.P13103857724788134187

`comp[A022557(n+1)]`
-/

namespace A022556.P13103857724788134187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022556.P13103857724788134187

/-! ## A022556.P17989251019864285293

`comp[record[A022557(A126759(n))]]`
-/

namespace A022556.P17989251019864285293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022557 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022556.P17989251019864285293

/-! ## A022556.P18088172826520394236

`comp[record[A022557(A133310(n))]]`
-/

namespace A022556.P18088172826520394236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022557 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022556.P18088172826520394236

/-! ## A022556.P11185725260362813408

`comp[record[A022557(A246694(n))]]`
-/

namespace A022556.P11185725260362813408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022557 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022556.P11185725260362813408

/-! ## A022556.P957062832466752440

`comp[record[A022557(A286378(n))]]`
-/

namespace A022556.P957062832466752440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022557 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022556.P957062832466752440

/-! ## A022556.P526844103796736721

`comp[record[A022557(A328399(n))]]`
-/

namespace A022556.P526844103796736721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022557 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022556.P526844103796736721

/-!
# A022557: Numbers that are not the sum of a square and 2 nonnegative cubes.

The programs for A022557, there is no canonical definition to state claims against.
-/

/-! ## A022557.P9336519122019022512

`comp[A022556(n+1)]`
-/

namespace A022557.P9336519122019022512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022557.P9336519122019022512

/-! ## A022557.P7384721891321562778

`lt[char[A022556(C(n+1, n))], 1]`
-/

namespace A022557.P7384721891321562778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022556 (Nat.choose (n + 1) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A022557.P7384721891321562778

/-! ## A022557.P17653104521378443915

`lt[char[A022556(A028310(n))], 1]`
-/

namespace A022557.P17653104521378443915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022556 (A028310 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A022557.P17653104521378443915

/-! ## A022557.P8079713068861554476

`lt[char[A022556(A023443(n)+2)], 1]`
-/

namespace A022557.P8079713068861554476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022556 (A023443 n + 2).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A022557.P8079713068861554476

/-! ## A022557.P16388434940152403822

`lt[char[A022556(n+1)]*A144619(n+1), 1]`
-/

namespace A022557.P16388434940152403822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022556 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144619 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A022557.P16388434940152403822

/-!
# A022558: Number of permutations of length n avoiding the pattern 1342.

The programs for A022558, there is no canonical definition to state claims against.
-/

/-! ## A022558.P16666533533757337274

`A004040(n-ceil(sin(n)²))`
-/

namespace A022558.P16666533533757337274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004040 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A022558.P16666533533757337274

/-! ## A022558.P9163020438484223171

`A004040((n-1)%(n+1))`
-/

namespace A022558.P9163020438484223171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004040 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A022558.P9163020438484223171

/-! ## A022558.P7525747612049432305

`A004040(floor(acot(n))-1+n)`
-/

namespace A022558.P7525747612049432305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004040 (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 + (n : ℤ)).toNat

end

end A022558.P7525747612049432305

/-! ## A022558.P2659007442156477867

`A004040(round(sqrt(n²+1))-1)`
-/

namespace A022558.P2659007442156477867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004040 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

end

end A022558.P2659007442156477867

/-! ## A022558.P4843598849224489671

`A004040(abs(1-n))-floor(acot(n))`
-/

namespace A022558.P4843598849224489671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004040 |1 - (n : ℤ)|.toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A022558.P4843598849224489671

/-!
# A022559: Sum of exponents in prime-power factorization of n!.

The programs for A022559, the canonical program `A022559.P10554250414511796107` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022559 has offset 0).

The definition of A022559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022559.P10554250414511796107

`a(n-1)+A001222(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022559

/-- `a(n-1)+A001222(n)` -/
def P10554250414511796107.Spec : Prop :=
  ∀ n, P10554250414511796107.a n = A022559 n

theorem P10554250414511796107.correct : P10554250414511796107.Spec := by
  intro n
  simp only [A022559]

end A022559

/-! ## A022559.P8064173329318146842

`∑[∑{e}[n, #]]`
-/

namespace A022559.P8064173329318146842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022559.P8064173329318146842

namespace A022559

/-- `∑[∑{e}[n, #]]` -/
def P8064173329318146842.Spec : Prop :=
  ∀ n, (P8064173329318146842.a n : ℤ) = A022559 n

end A022559

/-! ## A022559.P13535004053415546348

`∑[∑{p}[n, val(n, #)]]`
-/

namespace A022559.P13535004053415546348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation n p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022559.P13535004053415546348

namespace A022559

/-- `∑[∑{p}[n, val(n, #)]]` -/
def P13535004053415546348.Spec : Prop :=
  ∀ n, (P13535004053415546348.a n : ℤ) = A022559 n

end A022559

/-! ## A022559.P8658576594353168940

`∑[log(∏{e}[n, exp(#)])]`
-/

namespace A022559.P8658576594353168940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f2 n), Real.exp (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022559.P8658576594353168940

namespace A022559

/-- `∑[log(∏{e}[n, exp(#)])]` -/
def P8658576594353168940.Spec : Prop :=
  ∀ n, P8658576594353168940.a n = (A022559 n : ℝ)

end A022559

/-! ## A022559.P562269672068294673

`∑[log2(∏{e}[n, 2^#])]`
-/

namespace A022559.P562269672068294673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022559.P562269672068294673

namespace A022559

/-- `∑[log2(∏{e}[n, 2^#])]` -/
def P562269672068294673.Spec : Prop :=
  ∀ n, P562269672068294673.a n = (A022559 n : ℝ)

end A022559

/-! ## A022559.P8942914914885983347

`∑[val(∏{e}[n, 2^#], 2)]`
-/

namespace A022559.P8942914914885983347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022559.P8942914914885983347

namespace A022559

/-- `∑[val(∏{e}[n, 2^#], 2)]` -/
def P8942914914885983347.Spec : Prop :=
  ∀ n, (P8942914914885983347.a n : ℤ) = A022559 n

end A022559

/-! ## A022559.P7947201443763818244

`∑{e}[n, #]+a(n-1)` with `a(0)=0`
-/

namespace A022559.P7947201443763818244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + a (n - 1)

end

end A022559.P7947201443763818244

namespace A022559

/-- `∑{e}[n, #]+a(n-1)` -/
def P7947201443763818244.Spec : Prop :=
  ∀ n, (P7947201443763818244.a n : ℤ) = A022559 n

end A022559

/-! ## A022559.P2885809859242621303

`∑{e}[2*n, #]-(1-a(n-1))` with `a(0)=0`
-/

namespace A022559.P2885809859242621303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - (1 - a (n - 1))

end

end A022559.P2885809859242621303

namespace A022559

/-- `∑{e}[2*n, #]-(1-a(n-1))` -/
def P2885809859242621303.Spec : Prop :=
  ∀ n, P2885809859242621303.a n = A022559 n

end A022559

/-! ## A022559.P2391370288122467911

`∑[A001222(∏{e}[n, 2^#])]`
-/

namespace A022559.P2391370288122467911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022559.P2391370288122467911

namespace A022559

/-- `∑[A001222(∏{e}[n, 2^#])]` -/
def P2391370288122467911.Spec : Prop :=
  ∀ n, P2391370288122467911.a n = A022559 n

end A022559

/-! ## A022559.P659598657117243247

`∑[A001222(ceil(abs(γ-n)))]`
-/

namespace A022559.P659598657117243247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022559.P659598657117243247

namespace A022559

/-- `∑[A001222(ceil(abs(γ-n)))]` -/
def P659598657117243247.Spec : Prop :=
  ∀ n, P659598657117243247.a n = A022559 n

end A022559

/-! ## A022559.P3074873910932183116

`A001222(2*n)-(1-a(n-1))` with `a(0)=0`
-/

namespace A022559.P3074873910932183116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 (2 * n) - (1 - a (n - 1))

end

end A022559.P3074873910932183116

namespace A022559

/-- `A001222(2*n)-(1-a(n-1))` -/
def P3074873910932183116.Spec : Prop :=
  ∀ n, P3074873910932183116.a n = A022559 n

end A022559

/-! ## A022559.P1560431567116930842

`A113903(n)-A230980(n)`
-/

namespace A022559.P1560431567116930842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113903 n - A230980 n

end

end A022559.P1560431567116930842

namespace A022559

/-- `A113903(n)-A230980(n)` -/
def P1560431567116930842.Spec : Prop :=
  ∀ n, P1560431567116930842.a n = A022559 n

end A022559

/-! ## A022559.P10181238699100228620

`∑[∑{d}[n, A001222(A014963(#))]]`
-/

namespace A022559.P10181238699100228620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A001222 (A014963 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022559.P10181238699100228620

namespace A022559

/-- `∑[∑{d}[n, A001222(A014963(#))]]` -/
def P10181238699100228620.Spec : Prop :=
  ∀ n, P10181238699100228620.a n = A022559 n

end A022559

/-! ## A022559.P2722186058367802059

`A210241(n+1)-A064800(n+1)`
-/

namespace A022559.P2722186058367802059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210241 (n + 1) - A064800 (n + 1)

end

end A022559.P2722186058367802059

namespace A022559

/-- `A210241(n+1)-A064800(n+1)` -/
def P2722186058367802059.Spec : Prop :=
  ∀ n, P2722186058367802059.a n = A022559 n

end A022559

/-! ## A022559.P2547868019265773742

`∑[A001222(n+1)]-A001222(n+1)`
-/

namespace A022559.P2547868019265773742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (n + 1)

end

end A022559.P2547868019265773742

namespace A022559

/-- `∑[A001222(n+1)]-A001222(n+1)` -/
def P2547868019265773742.Spec : Prop :=
  ∀ n, P2547868019265773742.a n = A022559 n

end A022559

/-! ## A022559.P1799447064038573639

`∑[A073093(n+1)]-(A073093(n+1)+n)`
-/

namespace A022559.P1799447064038573639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A073093 (n + 1) + (n : ℤ))

end

end A022559.P1799447064038573639

namespace A022559

/-- `∑[A073093(n+1)]-(A073093(n+1)+n)` -/
def P1799447064038573639.Spec : Prop :=
  ∀ n, P1799447064038573639.a n = A022559 n

end A022559

/-! ## A022559.P15089051399253467785

`A011371(n)+A011371(n)-A175417(n)`
-/

namespace A022559.P15089051399253467785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (A011371 n - A175417 n)

end

end A022559.P15089051399253467785

namespace A022559

/-- `A011371(n)+A011371(n)-A175417(n)` -/
def P15089051399253467785.Spec : Prop :=
  ∀ n, P15089051399253467785.a n = A022559 n

theorem P15089051399253467785.correct : P15089051399253467785.Spec := by
  intro n
  simp only [A022559, Nat.add_sub_cancel, A022559.P15089051399253467785.a, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A011371, A011371.P12398255777927387864.a, A175417, A175417.P5052014933814601224.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022559

/-! ## A022559.P15897716622572943683

`A113903(n+1)-(A001222(n+1)+A000720(n+1))`
-/

namespace A022559.P15897716622572943683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113903 (n + 1) - (A001222 (n + 1) + A000720 (n + 1))

end

end A022559.P15897716622572943683

namespace A022559

/-- `A113903(n+1)-(A001222(n+1)+A000720(n+1))` -/
def P15897716622572943683.Spec : Prop :=
  ∀ n, P15897716622572943683.a n = A022559 n

end A022559

/-! ## A022559.P5245033781042254083

`A252736(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A022559.P5245033781042254083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252736 (2 * n) + a (n - 1)

end

end A022559.P5245033781042254083

namespace A022559

/-- `A252736(2*n)+a(n-1)` -/
def P5245033781042254083.Spec : Prop :=
  ∀ n, P5245033781042254083.a n = A022559 n

end A022559

/-! ## A022559.P7571143014732394944

`∑[A252736(2*(n+1))]-A252736(2*(n+1))`
-/

namespace A022559.P7571143014732394944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A252736 (2 * (n + 1))

end

end A022559.P7571143014732394944

namespace A022559

/-- `∑[A252736(2*(n+1))]-A252736(2*(n+1))` -/
def P7571143014732394944.Spec : Prop :=
  ∀ n, P7571143014732394944.a n = A022559 n

end A022559

/-!
# A022560: a(0)=0, a(2*n) = 2*a(n) + 2*a(n-1) + n^2 + n, a(2*n+1) = 4*a(n) + (n+1)^2.

The programs for A022560, the canonical program `A022560.P17120836430993285604` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022560 has offset 0).

The definition of A022560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022560.P17120836430993285604

`∑[∑[and(n, -n)]]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022560

/-- `∑[∑[and(n, -n)]]` -/
def P17120836430993285604.Spec : Prop :=
  ∀ n, P17120836430993285604.a n = A022560 n

theorem P17120836430993285604.correct : P17120836430993285604.Spec := by
  intro n
  simp only [A022560]

end A022560

/-! ## A022560.P10287235208447474919

`∑[∑[abs(or(n, -n))]]`
-/

namespace A022560.P10287235208447474919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-(n : ℤ))|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P10287235208447474919

namespace A022560

/-- `∑[∑[abs(or(n, -n))]]` -/
def P10287235208447474919.Spec : Prop :=
  ∀ n, P10287235208447474919.a n = A022560 n

end A022560

/-! ## A022560.P6461251905015215209

`∑[∑[-or(n, -n)]]`
-/

namespace A022560.P6461251905015215209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P6461251905015215209

namespace A022560

/-- `∑[∑[-or(n, -n)]]` -/
def P6461251905015215209.Spec : Prop :=
  ∀ n, P6461251905015215209.a n = A022560 n

end A022560

/-! ## A022560.P6592038344507188695

`∑[∑[n-and(n, n-1)]]`
-/

namespace A022560.P6592038344507188695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P6592038344507188695

namespace A022560

/-- `∑[∑[n-and(n, n-1)]]` -/
def P6592038344507188695.Spec : Prop :=
  ∀ n, P6592038344507188695.a n = A022560 n

end A022560

/-! ## A022560.P16441466857559613430

`∑[∑[or(n, n-1)-(n-1)]]`
-/

namespace A022560.P16441466857559613430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) - ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P16441466857559613430

namespace A022560

/-- `∑[∑[or(n, n-1)-(n-1)]]` -/
def P16441466857559613430.Spec : Prop :=
  ∀ n, P16441466857559613430.a n = A022560 n

end A022560

/-! ## A022560.P11126252122758088303

`∑[A136013(n)+n]`
-/

namespace A022560.P11126252122758088303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P11126252122758088303

namespace A022560

/-- `∑[A136013(n)+n]` -/
def P11126252122758088303.Spec : Prop :=
  ∀ n, P11126252122758088303.a n = A022560 n

end A022560

/-! ## A022560.P776599343907515480

`∑[A159699(n)-n]`
-/

namespace A022560.P776599343907515480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159699 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P776599343907515480

namespace A022560

/-- `∑[A159699(n)-n]` -/
def P776599343907515480.Spec : Prop :=
  ∀ n, P776599343907515480.a n = A022560 n

end A022560

/-! ## A022560.P16635360254299785968

`∑[∑[A285326(n)-n]]`
-/

namespace A022560.P16635360254299785968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285326 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P16635360254299785968

namespace A022560

/-- `∑[∑[A285326(n)-n]]` -/
def P16635360254299785968.Spec : Prop :=
  ∀ n, P16635360254299785968.a n = A022560 n

end A022560

/-! ## A022560.P1247152012683519242

`∑[A006520(n+1)]-A006520(n+1)`
-/

namespace A022560.P1247152012683519242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006520 (n + 1)

end

end A022560.P1247152012683519242

namespace A022560

/-- `∑[A006520(n+1)]-A006520(n+1)` -/
def P1247152012683519242.Spec : Prop :=
  ∀ n, P1247152012683519242.a n = A022560 n

end A022560

/-! ## A022560.P449250219749850226

`∑[∑[A006519(n+1)]-A006519(n+1)]`
-/

namespace A022560.P449250219749850226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P449250219749850226

namespace A022560

/-- `∑[∑[A006519(n+1)]-A006519(n+1)]` -/
def P449250219749850226.Spec : Prop :=
  ∀ n, P449250219749850226.a n = A022560 n

end A022560

/-! ## A022560.P47230053686911314

`∑[∑[A118824(2*(n+1))]-A118824(2*(n+1))]`
-/

namespace A022560.P47230053686911314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A118824 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P47230053686911314

namespace A022560

/-- `∑[∑[A118824(2*(n+1))]-A118824(2*(n+1))]` -/
def P47230053686911314.Spec : Prop :=
  ∀ n, P47230053686911314.a n = A022560 n

end A022560

/-! ## A022560.P3272492244041722504

`∑[∑[A065176(2*n+1)/2]]`
-/

namespace A022560.P3272492244041722504
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065176 (2 * n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P3272492244041722504

namespace A022560

/-- `∑[∑[A065176(2*n+1)/2]]` -/
def P3272492244041722504.Spec : Prop :=
  ∀ n, P3272492244041722504.a n = (A022560 n : ℚ)

end A022560

/-! ## A022560.P17903054740299492916

`∑[∑[A342410(A341691(n))]]`
-/

namespace A022560.P17903054740299492916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342410 (A341691 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P17903054740299492916

namespace A022560

/-- `∑[∑[A342410(A341691(n))]]` -/
def P17903054740299492916.Spec : Prop :=
  ∀ n, P17903054740299492916.a n = A022560 n

end A022560

/-! ## A022560.P1531726643820585053

`∑[∑[A160467(2*(n+1))]-A160467(2*(n+1))]`
-/

namespace A022560.P1531726643820585053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A160467 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P1531726643820585053

namespace A022560

/-- `∑[∑[A160467(2*(n+1))]-A160467(2*(n+1))]` -/
def P1531726643820585053.Spec : Prop :=
  ∀ n, P1531726643820585053.a n = A022560 n

end A022560

/-! ## A022560.P8327775500992368163

`∑[∑[gcd(n, A177241(n))]]`
-/

namespace A022560.P8327775500992368163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A177241 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P8327775500992368163

namespace A022560

/-- `∑[∑[gcd(n, A177241(n))]]` -/
def P8327775500992368163.Spec : Prop :=
  ∀ n, (P8327775500992368163.a n : ℤ) = A022560 n

end A022560

/-! ## A022560.P12156746751014303595

`∑[∑[1-A214546(2*n)]]`
-/

namespace A022560.P12156746751014303595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A214546 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P12156746751014303595

namespace A022560

/-- `∑[∑[1-A214546(2*n)]]` -/
def P12156746751014303595.Spec : Prop :=
  ∀ n, P12156746751014303595.a n = A022560 n

end A022560

/-! ## A022560.P11518675947317188606

`∑[∑[A140472(2*n)-n]]`
-/

namespace A022560.P11518675947317188606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (2 * n) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P11518675947317188606

namespace A022560

/-- `∑[∑[A140472(2*n)-n]]` -/
def P11518675947317188606.Spec : Prop :=
  ∀ n, P11518675947317188606.a n = A022560 n

end A022560

/-! ## A022560.P18433233269949220759

`∑[∑[A171942(A004277(n))]]`
-/

namespace A022560.P18433233269949220759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P18433233269949220759

namespace A022560

/-- `∑[∑[A171942(A004277(n))]]` -/
def P18433233269949220759.Spec : Prop :=
  ∀ n, P18433233269949220759.a n = A022560 n

end A022560

/-! ## A022560.P5565778830695839576

`∑[∑[A171942(2*(n+1))]-A171942(2*(n+1))]`
-/

namespace A022560.P5565778830695839576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A171942 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P5565778830695839576

namespace A022560

/-- `∑[∑[A171942(2*(n+1))]-A171942(2*(n+1))]` -/
def P5565778830695839576.Spec : Prop :=
  ∀ n, P5565778830695839576.a n = A022560 n

end A022560

/-!
# A022561: Numbers that are not the sum of 3 nonnegative cubes.

The programs for A022561, there is no canonical definition to state claims against.
-/

/-! ## A022561.P4535519223200265733

`comp[A004825(n+1)]`
-/

namespace A022561.P4535519223200265733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022561.P4535519223200265733

/-! ## A022561.P11493931809837281104

`∪[A022566(n+1), A047703(n+1)]`
-/

namespace A022561.P11493931809837281104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A022561.P11493931809837281104

/-! ## A022561.P4221365231202368952

`∩[A022555(n+1), A057904(n+1)]`
-/

namespace A022561.P4221365231202368952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022561.P4221365231202368952

/-! ## A022561.P10349106006833845136

`eq[0, A025447(n)]`
-/

namespace A022561.P10349106006833845136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022561.P10349106006833845136

/-! ## A022561.P274299856711371949

`eq[0, A051343(n)]`
-/

namespace A022561.P274299856711371949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022561.P274299856711371949

/-! ## A022561.P971414825741257563

`eq[0, A175365(n)]`
-/

namespace A022561.P971414825741257563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022561.P971414825741257563

/-! ## A022561.P13041571742016360514

`lt[1, A351199(n)]`
-/

namespace A022561.P13041571742016360514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351199 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022561.P13041571742016360514

/-! ## A022561.P4038417403474529553

`eq[A025448(n), A025457(n)]`
-/

namespace A022561.P4038417403474529553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022561.P4038417403474529553

/-! ## A022561.P8543964709556323742

`eq[A025446(n), A051344(n)]`
-/

namespace A022561.P8543964709556323742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022561.P8543964709556323742

/-! ## A022561.P10204440461425052280

`eq[A025456(n), A175362(n)]`
-/

namespace A022561.P10204440461425052280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022561.P10204440461425052280

/-! ## A022561.P17759237008234975219

`eq[A051344(n), A173677(n)]`
-/

namespace A022561.P17759237008234975219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022561.P17759237008234975219

/-! ## A022561.P15005631413162385579

`eq[A025456(n)², A173677(n)]`
-/

namespace A022561.P15005631413162385579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022561.P15005631413162385579

/-! ## A022561.P15007431672708509505

`lt[gcd(A051343(n), A173677(n)), 1]`
-/

namespace A022561.P15007431672708509505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051343 n) (A173677 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022561.P15007431672708509505

/-! ## A022561.P6604972863447858045

`lt[A051343(n), A001221(A303809(n+1))]`
-/

namespace A022561.P6604972863447858045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A303809 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022561.P6604972863447858045

/-!
# A022562: Number of connected claw-free unlabeled graphs on n nodes.

The programs for A022562, there is no canonical definition to state claims against.
-/

/-! ## A022562.P12835239301837063312

`A097992(A225826(n)+A184310(n+1))`
-/

namespace A022562.P12835239301837063312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A225826 n + A184310 (n + 1)).toNat

end

end A022562.P12835239301837063312

/-! ## A022562.P11436182894045151886

`A062108(A097992(2*(n+1))+A081358(n))`
-/

namespace A022562.P11436182894045151886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A097992 (2 * (n + 1)) + A081358 n).toNat

end

end A022562.P11436182894045151886

/-! ## A022562.P11638232364744916074

`A062108(A244051(2*(n+1))+A081358(n))`
-/

namespace A022562.P11638232364744916074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A244051 (2 * (n + 1)) + A081358 n).toNat

end

end A022562.P11638232364744916074

/-!
# A022563: Number of 2-connected claw-free graphs on n nodes.

The programs for A022563, there is no canonical definition to state claims against.
-/

/-! ## A022563.P12940833362924195076

`A085860(A038833(n))`
-/

namespace A022563.P12940833362924195076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A038833 n).toNat

end

end A022563.P12940833362924195076

/-! ## A022563.P15868551960592036161

`A004788(A047755(n)+1)`
-/

namespace A022563.P15868551960592036161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A047755 n + 1).toNat

end

end A022563.P15868551960592036161

/-! ## A022563.P16110188910971692782

`A166274(A056952(n+1))`
-/

namespace A022563.P16110188910971692782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166274 (A056952 (n + 1)).toNat

end

end A022563.P16110188910971692782

/-!
# A022564: Number of 2-connected non-Hamiltonian claw-free graphs on n nodes.

The programs for A022564, there is no canonical definition to state claims against.
-/

/-! ## A022564.P18309685333468590319

`floor(A001542(n)/A052155(3*n+2))`
-/

namespace A022564.P18309685333468590319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001542 n : ℚ) / (A052155 (3 * n + 2) : ℚ)⌋

end

end A022564.P18309685333468590319

/-! ## A022564.P13708685665999658026

`and(A352795(n), A352806(A352785(n+2)))`
-/

namespace A022564.P13708685665999658026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A352795 n) (A352806 (A352785 (n + 2)).toNat)

end

end A022564.P13708685665999658026

/-! ## A022564.P10457355187209281131

`and(A008594(3*n+1), A344608(A344608(n)))`
-/

namespace A022564.P10457355187209281131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008594 (3 * n + 1)) (A344608 (A344608 n).toNat)

end

end A022564.P10457355187209281131

/-! ## A022564.P4567657724864018269

`A343229(C(comp[xor(n, 2*n+1)]+1, 17))`
-/

namespace A022564.P4567657724864018269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 17)

end

end A022564.P4567657724864018269

/-! ## A022564.P11634297403092637834

`A049472(A035538(n)!)`
-/

namespace A022564.P11634297403092637834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (Nat.factorial (A035538 n).toNat)

end

end A022564.P11634297403092637834

/-!
# A022565: Expansion of 1/((1-x)*(1-5*x)*(1-8*x)*(1-10*x)).

The programs for A022565, there is no canonical definition to state claims against.
-/

/-! ## A022565.P7494389167984861084

`∑[A020346(n)]`
-/

namespace A022565.P7494389167984861084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022565.P7494389167984861084

/-! ## A022565.P11195183256150972950

`A016233(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A022565.P11195183256150972950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016233 n + 10 * a (n - 1)

end

end A022565.P11195183256150972950

/-! ## A022565.P15046991541239506261

`2*A021268(n)-A021144(n)`
-/

namespace A022565.P15046991541239506261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021268 n - A021144 n

end

end A022565.P15046991541239506261

/-! ## A022565.P4657714737763676645

`A021264(n)+A021284(n)-A021144(n)`
-/

namespace A022565.P4657714737763676645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021264 n + (A021284 n - A021144 n)

end

end A022565.P4657714737763676645

/-! ## A022565.P13926555504139147072

`A021464(n)+A021644(n)-A021434(n)`
-/

namespace A022565.P13926555504139147072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021464 n + (A021644 n - A021434 n)

end

end A022565.P13926555504139147072

/-!
# A022566: Numbers that are not the sum of 4 nonnegative cubes.

The programs for A022566, there is no canonical definition to state claims against.
-/

/-! ## A022566.P10887579108956455852

`∪[A047704(n+1), A069136(n+1)]`
-/

namespace A022566.P10887579108956455852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A022566.P10887579108956455852

/-! ## A022566.P1545256351652705875

`comp[A004826(n+1)]`
-/

namespace A022566.P1545256351652705875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022566.P1545256351652705875

/-! ## A022566.P13655458366712647762

`∩[A022561(n+1), A057905(n+1)]`
-/

namespace A022566.P13655458366712647762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022566.P13655458366712647762

/-! ## A022566.P219129483265489215

`eq[0, A025448(n)]`
-/

namespace A022566.P219129483265489215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022566.P219129483265489215

/-! ## A022566.P8385993122754194754

`eq[0, A173678(n)]`
-/

namespace A022566.P8385993122754194754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022566.P8385993122754194754

/-! ## A022566.P1460398619958328488

`eq[0, A175368(n)]`
-/

namespace A022566.P1460398619958328488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022566.P1460398619958328488

/-! ## A022566.P14998396068698064643

`lt[A173678(n+1), 1]+1`
-/

namespace A022566.P14998396068698064643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A022566.P14998396068698064643

/-! ## A022566.P1359460481448672431

`eq[4, 4%A002376(n+1)]+1`
-/

namespace A022566.P1359460481448672431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A002376 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022566.P1359460481448672431

/-! ## A022566.P9138180442818012773

`eq[A025449(n), A025458(n)]`
-/

namespace A022566.P9138180442818012773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022566.P9138180442818012773

/-! ## A022566.P1609415911297629256

`eq[A025457(n), A175365(n)]`
-/

namespace A022566.P1609415911297629256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022566.P1609415911297629256

/-! ## A022566.P7215863620180223229

`eq[sin(A025447(n)), A025457(n)]`
-/

namespace A022566.P7215863620180223229
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A025447 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A022566.P7215863620180223229

/-! ## A022566.P8259061024381896634

`eq[sin(A025457(n)), A051343(n)]`
-/

namespace A022566.P8259061024381896634
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A025457 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A022566.P8259061024381896634

/-! ## A022566.P14613438799168049426

`comp[∑{digits}[n, #^3]]`
-/

namespace A022566.P14613438799168049426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 3).sum

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A022566.P14613438799168049426

/-! ## A022566.P15943381238260196655

`comp[A055012(n)]`
-/

namespace A022566.P15943381238260196655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022566.P15943381238260196655

/-!
# A022567: Expansion of Product_{m>=1} (1+x^m)^2.

The programs for A022567, there is no canonical definition to state claims against.
-/

/-! ## A022567.P10658297604551225012

`round(A290133(n)+n/(n+1))`
-/

namespace A022567.P10658297604551225012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A290133 n : ℚ) + (n : ℚ) / (n + 1 : ℚ))

end

end A022567.P10658297604551225012

/-! ## A022567.P9188227562683045390

`A290133(n)+A057427(n)`
-/

namespace A022567.P9188227562683045390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290133 n + A057427 n

end

end A022567.P9188227562683045390

/-! ## A022567.P11121862536177046839

`A290133(n)-A057428(n)`
-/

namespace A022567.P11121862536177046839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290133 n - A057428 n

end

end A022567.P11121862536177046839

/-! ## A022567.P6211452726245846023

`A290133(n)+A002262(1-A002262(n)+n)`
-/

namespace A022567.P6211452726245846023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290133 n + A002262 (1 - A002262 n + (n : ℤ)).toNat

end

end A022567.P6211452726245846023

/-! ## A022567.P3660827186251049740

`A290133(n)%A290133(n+1)+1`
-/

namespace A022567.P3660827186251049740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290133 n) (A290133 (n + 1)) + 1

end

end A022567.P3660827186251049740

/-! ## A022567.P8730999874952060682

`A192096(n)/2`
-/

namespace A022567.P8730999874952060682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192096 n : ℚ) / 2

end

end A022567.P8730999874952060682

/-! ## A022567.P14424812291290851413

`A290133(n)+char[A290082(n+1)]`
-/

namespace A022567.P14424812291290851413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290082 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290133 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A022567.P14424812291290851413

/-! ## A022567.P14441280735112294438

`record[A112166(n+1)/2]`
-/

namespace A022567.P14441280735112294438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112166 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022567.P14441280735112294438

/-! ## A022567.P5668226388340743352

`record[abs(A112167(n+1)/2)]`
-/

namespace A022567.P5668226388340743352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A112167 (n + 1) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022567.P5668226388340743352

/-! ## A022567.P2657752700532465241

`A112166(A016921(n))/2`
-/

namespace A022567.P2657752700532465241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112166 (A016921 n).toNat : ℚ) / 2

end

end A022567.P2657752700532465241

/-! ## A022567.P9512025326207199660

`A112166(A008588(n)+1)/2`
-/

namespace A022567.P9512025326207199660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112166 (A008588 n + 1).toNat : ℚ) / 2

end

end A022567.P9512025326207199660

/-! ## A022567.P5339390879523503969

`A290133(n)+A290101(A290077(n+1))`
-/

namespace A022567.P5339390879523503969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290133 n + A290101 (A290077 (n + 1)).toNat

end

end A022567.P5339390879523503969

/-! ## A022567.P12631354137700836697

`A293377(∑[n+2]-1)`
-/

namespace A022567.P12631354137700836697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293377 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A022567.P12631354137700836697

/-! ## A022567.P340701967517068370

`A286335(∑[n+3])`
-/

namespace A022567.P340701967517068370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022567.P340701967517068370

/-!
# A022568: Expansion of Product_{m>=1} (1+x^m)^3.

The programs for A022568, there is no canonical definition to state claims against.
-/

/-! ## A022568.P6488630425339207509

`A286335(∑[n+4]+2)`
-/

namespace A022568.P6488630425339207509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A022568.P6488630425339207509

/-! ## A022568.P14574067521342123168

`record[A286335(abs(A046691(n)))]`
-/

namespace A022568.P14574067521342123168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022568.P14574067521342123168

/-! ## A022568.P2246598996305505011

`record[A286335(A153152(n)+A008805(n))]`
-/

namespace A022568.P2246598996305505011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A153152 n + A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022568.P2246598996305505011

/-! ## A022568.P9094851401071939588

`lcm(A008836(n+1), A286335(A155212(n)+4))`
-/

namespace A022568.P9094851401071939588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A286335 (A155212 n + 4).toNat)

end

end A022568.P9094851401071939588

/-!
# A022569: Expansion of Product_{m>=1} (1+x^m)^4.

The programs for A022569, there is no canonical definition to state claims against.
-/

/-! ## A022569.P929795076878222104

`A227175(2*n+1)/8`
-/

namespace A022569.P929795076878222104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227175 (2 * n + 1) : ℚ) / 8

end

end A022569.P929795076878222104

/-! ## A022569.P2541101025001067425

`record[A058493(n+1)/2]/2`
-/

namespace A022569.P2541101025001067425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058493 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2

end

end A022569.P2541101025001067425

/-! ## A022569.P14157017519206467917

`A058493(A016777(n))/4`
-/

namespace A022569.P14157017519206467917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058493 (A016777 n).toNat : ℚ) / 4

end

end A022569.P14157017519206467917

/-! ## A022569.P16335611305953476814

`record[A227033(n+1)/A227033(A006519(n+1))]`
-/

namespace A022569.P16335611305953476814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227033 (n + 1) : ℚ) / (A227033 (A006519 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022569.P16335611305953476814

/-! ## A022569.P14671125914492389549

`A286335(A052905(n+2))`
-/

namespace A022569.P14671125914492389549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A052905 (n + 2)).toNat

end

end A022569.P14671125914492389549

/-! ## A022569.P2177505537338013018

`A286335(eq[4, A025581(n)])`
-/

namespace A022569.P2177505537338013018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022569.P2177505537338013018

/-! ## A022569.P6710951681611219382

`record[A286335(A055999(n)+1)]`
-/

namespace A022569.P6710951681611219382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022569.P6710951681611219382

/-! ## A022569.P17043925754201528318

`record[A286335(abs(A046691(n))-1)]`
-/

namespace A022569.P17043925754201528318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022569.P17043925754201528318

/-! ## A022569.P13726941472084905646

`record[A286335(A046691(n+1)-1)]`
-/

namespace A022569.P13726941472084905646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022569.P13726941472084905646

/-! ## A022569.P16291175594471259420

`A286335(A000096(n+3)+n+1)`
-/

namespace A022569.P16291175594471259420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A022569.P16291175594471259420

/-! ## A022569.P17245884573236258025

`A286335(A167614(n+2)+A004273(n+1))`
-/

namespace A022569.P17245884573236258025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A167614 (n + 2) + A004273 (n + 1)).toNat

end

end A022569.P17245884573236258025

/-!
# A022570: Expansion of Product_{m>=1} (1+x^m)^5.

The programs for A022570, there is no canonical definition to state claims against.
-/

/-! ## A022570.P9751890681878211362

`record[A286335(∑[n+4])]`
-/

namespace A022570.P9751890681878211362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022570.P9751890681878211362

/-! ## A022570.P2275970352430080340

`A286335(∑[n+6]+9)`
-/

namespace A022570.P2275970352430080340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A022570.P2275970352430080340

/-! ## A022570.P225388336623215062

`abs(A286335(Δ[A023551(n+1)])-1)+1`
-/

namespace A022570.P225388336623215062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286335 (f1 (n + 1) - f1 n).toNat - 1| + 1

end

end A022570.P225388336623215062

/-! ## A022570.P12174375181519043163

`A286335(Δ[A023551(n+1)])%A016907(n)`
-/

namespace A022570.P12174375181519043163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286335 (f1 (n + 1) - f1 n).toNat) (A016907 n)

end

end A022570.P12174375181519043163

/-! ## A022570.P7151599241193607113

`or(A000007(n), A286335(A000217(n+6)-6))`
-/

namespace A022570.P7151599241193607113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A286335 (A000217 (n + 6) - 6).toNat)

end

end A022570.P7151599241193607113

/-! ## A022570.P16139650196047651586

`A000034(2*n²)*A286335(A000217(n+6)-6)`
-/

namespace A022570.P16139650196047651586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n ^ 2) * A286335 (A000217 (n + 6) - 6).toNat

end

end A022570.P16139650196047651586

/-! ## A022570.P16064403534928499720

`gcd(A028609(2*n²), A286335(A000217(n+6)-6))`
-/

namespace A022570.P16064403534928499720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028609 (2 * n ^ 2)) (A286335 (A000217 (n + 6) - 6).toNat)

end

end A022570.P16064403534928499720

/-!
# A022571: Expansion of Product_{m>=1} (1+x^m)^6.

The programs for A022571, there is no canonical definition to state claims against.
-/

/-! ## A022571.P17496275616362130185

`A143894(2*n+1)/8`
-/

namespace A022571.P17496275616362130185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143894 (2 * n + 1) : ℚ) / 8

end

end A022571.P17496275616362130185

/-! ## A022571.P7898088565586554489

`A058088(2*n+1)/8`
-/

namespace A022571.P7898088565586554489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058088 (2 * n + 1) : ℚ) / 8

end

end A022571.P7898088565586554489

/-! ## A022571.P11597682616691715427

`A112145(2*n+1)/A112145(A009531(2*n+1)²)`
-/

namespace A022571.P11597682616691715427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112145 (2 * n + 1) : ℚ) / (A112145 (A009531 (2 * n + 1) ^ 2).toNat : ℚ)

end

end A022571.P11597682616691715427

/-! ## A022571.P16658760236323498020

`record[A286335(abs(A046691(n)+n))]`
-/

namespace A022571.P16658760236323498020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 |A046691 n + (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022571.P16658760236323498020

/-! ## A022571.P2557539449577595106

`A286335(Δ[A023551(n+2)]-1)`
-/

namespace A022571.P2557539449577595106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (f1 (n + 1) - f1 n - 1).toNat

end

end A022571.P2557539449577595106

/-! ## A022571.P3193877850985261291

`record[A286335(A055999(n+1)-1)]`
-/

namespace A022571.P3193877850985261291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A055999 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022571.P3193877850985261291

/-! ## A022571.P9038637303807208536

`record[A286335(A134227(n+1)-1)]`
-/

namespace A022571.P9038637303807208536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A134227 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022571.P9038637303807208536

/-! ## A022571.P5370759536251020356

`A359670(∑[n+1]+1)`
-/

namespace A022571.P5370759536251020356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A022571.P5370759536251020356

/-!
# A022572: Expansion of Product_{m>=1} (1+x^m)^7.

The programs for A022572, there is no canonical definition to state claims against.
-/

/-! ## A022572.P13073712900617684189

`A286335(A052905(n+5)-3)`
-/

namespace A022572.P13073712900617684189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A052905 (n + 5) - 3).toNat

end

end A022572.P13073712900617684189

/-! ## A022572.P5373409180487472031

`A286335(A000096(n+7)-7)`
-/

namespace A022572.P5373409180487472031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000096 (n + 7) - 7).toNat

end

end A022572.P5373409180487472031

/-! ## A022572.P1730667536828547114

`A286335(A000217(n+8)-8)`
-/

namespace A022572.P1730667536828547114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000217 (n + 8) - 8).toNat

end

end A022572.P1730667536828547114

/-! ## A022572.P10653578062936516358

`A286335(A000124(n+8)-9)`
-/

namespace A022572.P10653578062936516358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000124 (n + 8) - 9).toNat

end

end A022572.P10653578062936516358

/-! ## A022572.P17609830397290234604

`A286335(A133263(n+8)-10)`
-/

namespace A022572.P17609830397290234604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A133263 (n + 8) - 10).toNat

end

end A022572.P17609830397290234604

/-! ## A022572.P16072573346385054622

`A286335(A005843(n+4)+A000096(n+5))`
-/

namespace A022572.P16072573346385054622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A005843 (n + 4) + A000096 (n + 5)).toNat

end

end A022572.P16072573346385054622

/-! ## A022572.P12485239732593741314

`A286335(A002522(n+6)-A167614(n+2))`
-/

namespace A022572.P12485239732593741314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A002522 (n + 6) - A167614 (n + 2)).toNat

end

end A022572.P12485239732593741314

/-!
# A022573: Expansion of Product_{m>=1} (1+x^m)^8.

The programs for A022573, there is no canonical definition to state claims against.
-/

/-! ## A022573.P5049065186582534727

`A101127(2*n+1)/8`
-/

namespace A022573.P5049065186582534727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101127 (2 * n + 1) : ℚ) / 8

end

end A022573.P5049065186582534727

/-! ## A022573.P167255550467673029

`abs(A007259(2*n+1)/8)`
-/

namespace A022573.P167255550467673029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A007259 (2 * n + 1) : ℚ) / 8|

end

end A022573.P167255550467673029

/-! ## A022573.P13415237876456588094

`A007259(2*n+1)/A007259(A001511(2*n+1))`
-/

namespace A022573.P13415237876456588094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007259 (2 * n + 1) : ℚ) / (A007259 (A001511 (2 * n + 1)).toNat : ℚ)

end

end A022573.P13415237876456588094

/-! ## A022573.P10880336523659170749

`record[A007259(n+1)/A007259(xor(n, n+1))]`
-/

namespace A022573.P10880336523659170749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007259 (n + 1) : ℚ) / (A007259 (Nat.xor n (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022573.P10880336523659170749

/-! ## A022573.P14972653298063962978

`A286335(A000096(n+7)+n+1)`
-/

namespace A022573.P14972653298063962978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A022573.P14972653298063962978

/-! ## A022573.P1106439514949609651

`A286335(A133263(n+8)+n-2)`
-/

namespace A022573.P1106439514949609651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A133263 (n + 8) + ((n : ℤ) - 2)).toNat

end

end A022573.P1106439514949609651

/-!
# A022574: Expansion of Product_{m>=1} (1+x^m)^9.

The programs for A022574, there is no canonical definition to state claims against.
-/

/-! ## A022574.P17219034678334289120

`A286335(A000096(n+9)-9)`
-/

namespace A022574.P17219034678334289120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000096 (n + 9) - 9).toNat

end

end A022574.P17219034678334289120

/-! ## A022574.P15207068660568396465

`A286335(A000217(n+10)-10)`
-/

namespace A022574.P15207068660568396465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000217 (n + 10) - 10).toNat

end

end A022574.P15207068660568396465

/-! ## A022574.P4081764708066707391

`A286335(A027688(n+6)-A055998(n))`
-/

namespace A022574.P4081764708066707391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A027688 (n + 6) - A055998 n).toNat

end

end A022574.P4081764708066707391

/-! ## A022574.P14426886206086896641

`A286335(A167499(n+7)+A005843(n+2))`
-/

namespace A022574.P14426886206086896641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A167499 (n + 7) + A005843 (n + 2)).toNat

end

end A022574.P14426886206086896641

/-! ## A022574.P15599410532422322318

`A286335(A005843(n+5)+A000096(n+7))`
-/

namespace A022574.P15599410532422322318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A005843 (n + 5) + A000096 (n + 7)).toNat

end

end A022574.P15599410532422322318

/-!
# A022575: Expansion of Product_{m>=1} (1+x^m)^10.

The programs for A022575, there is no canonical definition to state claims against.
-/

/-! ## A022575.P3699607629264241951

`A286335(A000096(n+10)-10)`
-/

namespace A022575.P3699607629264241951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000096 (n + 10) - 10).toNat

end

end A022575.P3699607629264241951

/-! ## A022575.P12728308297624159147

`A286335(A000217(n+11)-11)`
-/

namespace A022575.P12728308297624159147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000217 (n + 11) - 11).toNat

end

end A022575.P12728308297624159147

/-! ## A022575.P12564863221137175243

`A286335(A167614(n+8)+A004273(n+4))`
-/

namespace A022575.P12564863221137175243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A167614 (n + 8) + A004273 (n + 4)).toNat

end

end A022575.P12564863221137175243

/-! ## A022575.P15711268257272512034

`A286335(A005408(n+4)+A000124(n+9))`
-/

namespace A022575.P15711268257272512034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A005408 (n + 4) + A000124 (n + 9)).toNat

end

end A022575.P15711268257272512034

/-! ## A022575.P8437117901424249030

`A286335(A055999(n+6)+A005843(n+8))`
-/

namespace A022575.P8437117901424249030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A055999 (n + 6) + A005843 (n + 8)).toNat

end

end A022575.P8437117901424249030

/-!
# A022576: Expansion of Product_{m>=1} (1+x^m)^11.

The programs for A022576, there is no canonical definition to state claims against.
-/

/-! ## A022576.P6385250417452590028

`A286335(eq[11, A025581(n)])`
-/

namespace A022576.P6385250417452590028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022576.P6385250417452590028

/-! ## A022576.P6770136255386000511

`A286335(A000096(n+11)-11)`
-/

namespace A022576.P6770136255386000511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000096 (n + 11) - 11).toNat

end

end A022576.P6770136255386000511

/-! ## A022576.P13324884039254913245

`A286335(A000217(n+12)-12)`
-/

namespace A022576.P13324884039254913245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000217 (n + 12) - 12).toNat

end

end A022576.P13324884039254913245

/-! ## A022576.P9075012640090275214

`A286335(A167499(n+9)+A005843(n+3))`
-/

namespace A022576.P9075012640090275214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A167499 (n + 9) + A005843 (n + 3)).toNat

end

end A022576.P9075012640090275214

/-! ## A022576.P3001771537129545282

`A286335(A005843(n+6)+A000096(n+9))`
-/

namespace A022576.P3001771537129545282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A005843 (n + 6) + A000096 (n + 9)).toNat

end

end A022576.P3001771537129545282

/-!
# A022577: Expansion of Product_{m>=1} (1+x^m)^12.

The programs for A022577, there is no canonical definition to state claims against.
-/

/-! ## A022577.P1973211275751846946

`A107035(Δ[n²])`
-/

namespace A022577.P1973211275751846946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A022577.P1973211275751846946

/-! ## A022577.P3080955406103999126

`A107035(2*n+1)+A000007(n+1)`
-/

namespace A022577.P3080955406103999126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107035 (2 * n + 1) + A000007 (n + 1)

end

end A022577.P3080955406103999126

/-! ## A022577.P14972957848068136448

`A107035(2*n+1)+A000086(3*n+5)`
-/

namespace A022577.P14972957848068136448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107035 (2 * n + 1) + A000086 (3 * n + 5)

end

end A022577.P14972957848068136448

/-! ## A022577.P1916677711033227376

`A107035(2*n+1)/A187154(2*n)*A210063(2*n)`
-/

namespace A022577.P1916677711033227376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107035 (2 * n + 1) : ℚ) / (A187154 (2 * n) : ℚ) * (A210063 (2 * n) : ℚ)

end

end A022577.P1916677711033227376

/-! ## A022577.P8665992124095616556

`A123655(4*n+2)/2`
-/

namespace A022577.P8665992124095616556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123655 (4 * n + 2) : ℚ) / 2

end

end A022577.P8665992124095616556

/-! ## A022577.P15648934227320868784

`2*A107035(2*n+1)/A020639(2*(n+1))`
-/

namespace A022577.P15648934227320868784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A107035 (2 * n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A022577.P15648934227320868784

/-! ## A022577.P14408290575588101047

`A131126(2*n+1)/4`
-/

namespace A022577.P14408290575588101047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131126 (2 * n + 1) : ℚ) / 4

end

end A022577.P14408290575588101047

/-! ## A022577.P13288260132415643611

`A014969(2*n+1)/8`
-/

namespace A022577.P13288260132415643611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 (2 * n + 1) : ℚ) / 8

end

end A022577.P13288260132415643611

/-! ## A022577.P5265014675111476976

`abs(A124863(n))`
-/

namespace A022577.P5265014675111476976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124863 n|

end

end A022577.P5265014675111476976

/-! ## A022577.P12970856977443645770

`A033999(n)*A124863(n)`
-/

namespace A022577.P12970856977443645770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A124863 n

end

end A022577.P12970856977443645770

/-! ## A022577.P12863408648490924213

`gcd(A000038(n), A124863(n))`
-/

namespace A022577.P12863408648490924213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124863 n)

end

end A022577.P12863408648490924213

/-! ## A022577.P18137959225137572154

`lcm(A000034(n), A124863(n))`
-/

namespace A022577.P18137959225137572154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A124863 n)

end

end A022577.P18137959225137572154

/-! ## A022577.P2419328330075860191

`A007249(n)/A112142(n)*A124863(n)`
-/

namespace A022577.P2419328330075860191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007249 n : ℚ) / (A112142 n : ℚ) * (A124863 n : ℚ)

end

end A022577.P2419328330075860191

/-! ## A022577.P10432153518487237571

`(A000035(n+1)-A000035(n))*A124863(n)`
-/

namespace A022577.P10432153518487237571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A124863 n

end

end A022577.P10432153518487237571

/-! ## A022577.P15010902961555891746

`A260145(Δ[n²])`
-/

namespace A022577.P15010902961555891746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260145 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A022577.P15010902961555891746

/-! ## A022577.P10459239310818834401

`record[A260145(n+1)]`
-/

namespace A022577.P10459239310818834401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022577.P10459239310818834401

/-! ## A022577.P12131426467666641041

`abs(A260145(2*n+1))`
-/

namespace A022577.P12131426467666641041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260145 (2 * n + 1)|

end

end A022577.P12131426467666641041

/-! ## A022577.P2385619706234203434

`2*A107035(2*n+1)-A260145(2*n+1)`
-/

namespace A022577.P2385619706234203434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107035 (2 * n + 1) - A260145 (2 * n + 1)

end

end A022577.P2385619706234203434

/-!
# A022578: Expansion of Product_{m>=1} (1+x^m)^13.

The programs for A022578, there is no canonical definition to state claims against.
-/

/-! ## A022578.P10734392082600598793

`A286335(eq[13, A025581(n)])`
-/

namespace A022578.P10734392082600598793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022578.P10734392082600598793

/-! ## A022578.P10518768323048327623

`A286335(eq[14, A004736(n+1)])`
-/

namespace A022578.P10518768323048327623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022578.P10518768323048327623

/-! ## A022578.P12663917216069057894

`A286335(A000217(n+13)+n)`
-/

namespace A022578.P12663917216069057894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000217 (n + 13) + (n : ℤ)).toNat

end

end A022578.P12663917216069057894

/-! ## A022578.P12420940069420190226

`A286335(A000096(n+12)+n+1)`
-/

namespace A022578.P12420940069420190226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000096 (n + 12) + (n + 1 : ℤ)).toNat

end

end A022578.P12420940069420190226

/-! ## A022578.P6651403304493673465

`A286335(A133263(n+3)+A017461(n+7))`
-/

namespace A022578.P6651403304493673465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A133263 (n + 3) + A017461 (n + 7)).toNat

end

end A022578.P6651403304493673465

/-!
# A022579: Expansion of Product_{m>=1} (1+x^m)^14.

The programs for A022579, there is no canonical definition to state claims against.
-/

/-! ## A022579.P3090020198060476476

`A286335(eq[14, A025581(n)])`
-/

namespace A022579.P3090020198060476476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022579.P3090020198060476476

/-! ## A022579.P4555816021122888311

`A286335(eq[15, A193739(n)])`
-/

namespace A022579.P4555816021122888311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022579.P4555816021122888311

/-! ## A022579.P12987486302018573698

`A286335(eq[29, A099375(n)])`
-/

namespace A022579.P12987486302018573698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022579.P12987486302018573698

/-! ## A022579.P16045024590864296325

`A286335(eq[15, A004736(n+1)])`
-/

namespace A022579.P16045024590864296325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022579.P16045024590864296325

/-! ## A022579.P11313406988415975669

`A286335(A000217(n+14)+n)`
-/

namespace A022579.P11313406988415975669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A022579.P11313406988415975669

/-! ## A022579.P14668979446652090079

`A286335(A055999(n+10)+A005843(n+10))`
-/

namespace A022579.P14668979446652090079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A055999 (n + 10) + A005843 (n + 10)).toNat

end

end A022579.P14668979446652090079

/-!
# A022580: Expansion of Product_{m>=1} (1+x^m)^15.

The programs for A022580, there is no canonical definition to state claims against.
-/

/-! ## A022580.P13747543678921004813

`A286335(eq[15, A025581(n)])`
-/

namespace A022580.P13747543678921004813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022580.P13747543678921004813

/-! ## A022580.P12384773672281824984

`A286335(eq[16, A004736(n+1)])`
-/

namespace A022580.P12384773672281824984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022580.P12384773672281824984

/-! ## A022580.P16190356974644389483

`A286335(eq[16, A134231(n+1)])`
-/

namespace A022580.P16190356974644389483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022580.P16190356974644389483

/-! ## A022580.P10477748994317149462

`A286335(A000217(n+15)+n)`
-/

namespace A022580.P10477748994317149462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A022580.P10477748994317149462

/-! ## A022580.P17512314571742546091

`A286335(A005843(n+8)+A000096(n+13))`
-/

namespace A022580.P17512314571742546091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A005843 (n + 8) + A000096 (n + 13)).toNat

end

end A022580.P17512314571742546091

/-!
# A022581: Expansion of Product_{m>=1} (1+x^m)^16.

The programs for A022581, there is no canonical definition to state claims against.
-/

/-! ## A022581.P17839232323461690838

`A022573(2*n+1)/8`
-/

namespace A022581.P17839232323461690838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022573 (2 * n + 1) : ℚ) / 8

end

end A022581.P17839232323461690838

/-! ## A022581.P17697684513254973205

`A286335(eq[16, A025581(n)])`
-/

namespace A022581.P17697684513254973205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022581.P17697684513254973205

/-! ## A022581.P9131888145936646595

`A286335(A000096(n+16)-16)`
-/

namespace A022581.P9131888145936646595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000096 (n + 16) - 16).toNat

end

end A022581.P9131888145936646595

/-! ## A022581.P2585891128554500817

`A286335(eq[17, A004736(n+1)])`
-/

namespace A022581.P2585891128554500817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022581.P2585891128554500817

/-! ## A022581.P971017310811155822

`A286335(A055999(n+12)+A005843(n+11))`
-/

namespace A022581.P971017310811155822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A055999 (n + 12) + A005843 (n + 11)).toNat

end

end A022581.P971017310811155822

/-!
# A022582: Expansion of Product_{m>=1} (1+x^m)^17.

The programs for A022582, there is no canonical definition to state claims against.
-/

/-! ## A022582.P6013864856872264358

`A286335(eq[17, A025581(n)])`
-/

namespace A022582.P6013864856872264358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022582.P6013864856872264358

/-! ## A022582.P13642829970308087630

`A286335(eq[35, A099375(n)])`
-/

namespace A022582.P13642829970308087630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022582.P13642829970308087630

/-! ## A022582.P11303734017829280773

`A286335(eq[18, A004736(n+1)])`
-/

namespace A022582.P11303734017829280773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022582.P11303734017829280773

/-! ## A022582.P14392315004126831354

`A286335(eq[18, A134231(n+1)])`
-/

namespace A022582.P14392315004126831354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022582.P14392315004126831354

/-! ## A022582.P14511773780547986858

`A286335(A000096(n+16)+n+1)`
-/

namespace A022582.P14511773780547986858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000096 (n + 16) + (n + 1 : ℤ)).toNat

end

end A022582.P14511773780547986858

/-!
# A022583: Expansion of Product_{m>=1} (1+x^m)^18.

The programs for A022583, there is no canonical definition to state claims against.
-/

/-! ## A022583.P11129441375249423217

`A286335(eq[18, A025581(n)])`
-/

namespace A022583.P11129441375249423217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022583.P11129441375249423217

/-!
# A022584: Expansion of Product_{m>=1} (1+x^m)^19.

The programs for A022584, there is no canonical definition to state claims against.
-/

/-! ## A022584.P2531749026028893202

`A286335(eq[20, A193739(n)])`
-/

namespace A022584.P2531749026028893202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022584.P2531749026028893202

/-! ## A022584.P17934682209072367678

`A286335(eq[20, A004736(n+1)])`
-/

namespace A022584.P17934682209072367678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022584.P17934682209072367678

/-! ## A022584.P7648702929604579666

`A286335(C(C(A157780(2*n+1)+5, 2)+n+5, 2)+n)`
-/

namespace A022584.P7648702929604579666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (Nat.choose (Nat.choose (A157780 (2 * n + 1) + 5).toNat 2 + n + 5) 2 + n)

end

end A022584.P7648702929604579666

/-!
# A022585: Expansion of Product_{m>=1} (1+x^m)^20.

The programs for A022585, there is no canonical definition to state claims against.
-/

/-! ## A022585.P3415376163056844701

`A286335(eq[20, A025581(n)])`
-/

namespace A022585.P3415376163056844701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022585.P3415376163056844701

/-!
# A022586: Expansion of Product_{m>=1} (1+x^m)^21.

The programs for A022586, there is no canonical definition to state claims against.
-/

/-! ## A022586.P14248327079564089859

`A175068(A321952(n+7))`
-/

namespace A022586.P14248327079564089859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (A321952 (n + 7)).toNat

end

end A022586.P14248327079564089859

/-!
# A022588: Expansion of Product_{m>=1} (1 + x^m)^23.

The programs for A022588, there is no canonical definition to state claims against.
-/

/-! ## A022588.P16572469449253269216

`A286335(eq[23, A025581(n)])`
-/

namespace A022588.P16572469449253269216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022588.P16572469449253269216

/-!
# A022589: Expansion of Product_{m>=1} (1 + q^m)^25.

The programs for A022589, there is no canonical definition to state claims against.
-/

/-! ## A022589.P7461173076263562619

`A286335(eq[25, A025581(n)])`
-/

namespace A022589.P7461173076263562619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022589.P7461173076263562619

/-!
# A022591: Expansion of Product_{m>=1} (1+q^m)^27.

The programs for A022591, there is no canonical definition to state claims against.
-/

/-! ## A022591.P2193777470674127729

`A330740(A321954(n+9))`
-/

namespace A022591.P2193777470674127729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (A321954 (n + 9)).toNat

end

end A022591.P2193777470674127729

/-!
# A022595: Expansion of Product_{m >=1} (1+q^m)^31.

The programs for A022595, there is no canonical definition to state claims against.
-/

/-! ## A022595.P16219972379279403111

`record[A286335(A132336(n+1)-n)]`
-/

namespace A022595.P16219972379279403111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A132336 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022595.P16219972379279403111

/-!
# A022596: Expansion of Product_{m>=1} (1+q^m)^32.

The programs for A022596, there is no canonical definition to state claims against.
-/

/-! ## A022596.P12001216430980145303

`record[A286335(A132336(n+1))]`
-/

namespace A022596.P12001216430980145303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A132336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022596.P12001216430980145303

/-!
# A022597: Expansion of Product_{m >= 1} (1 + q^m)^(-2).

The programs for A022597, there is no canonical definition to state claims against.
-/

/-! ## A022597.P15384360388580571615

`(-1)^n*A073252(n)`
-/

namespace A022597.P15384360388580571615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A073252 n

end

end A022597.P15384360388580571615

/-! ## A022597.P13601344338912080831

`A073252(n)/A033999(n)`
-/

namespace A022597.P13601344338912080831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073252 n : ℚ) / (A033999 n : ℚ)

end

end A022597.P13601344338912080831

/-! ## A022597.P12807910316708799500

`A073252(n)/(A000034(n+1)-A000034(n))`
-/

namespace A022597.P12807910316708799500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073252 n : ℚ) / (A000034 (n + 1) - A000034 n : ℚ)

end

end A022597.P12807910316708799500

/-! ## A022597.P5500656553002032435

`A089814(5*n)`
-/

namespace A022597.P5500656553002032435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089814 (5 * n)

end

end A022597.P5500656553002032435

/-! ## A022597.P16892970962333451628

`A112166(6*n)`
-/

namespace A022597.P16892970962333451628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 (6 * n)

end

end A022597.P16892970962333451628

/-! ## A022597.P17747035717073086463

`A112167(6*n)`
-/

namespace A022597.P17747035717073086463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 (6 * n)

end

end A022597.P17747035717073086463

/-! ## A022597.P7296148992546619928

`A293386(∑[n+2]-1)`
-/

namespace A022597.P7296148992546619928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293386 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A022597.P7296148992546619928

/-! ## A022597.P10034183054045518234

`A286352(∑[n+3])`
-/

namespace A022597.P10034183054045518234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022597.P10034183054045518234

/-!
# A022598: Expansion of Product_{m>=1} (1+q^m)^(-3).

The programs for A022598, there is no canonical definition to state claims against.
-/

/-! ## A022598.P14624227997420275198

`A033999(n)*A107635(n)`
-/

namespace A022598.P14624227997420275198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A107635 n

end

end A022598.P14624227997420275198

/-! ## A022598.P16447995792411601294

`A107635(n)*A242073(2*n)`
-/

namespace A022598.P16447995792411601294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107635 n * A242073 (2 * n)

end

end A022598.P16447995792411601294

/-! ## A022598.P16583558645448470085

`A107635(n)/A242073(A005843(n))`
-/

namespace A022598.P16583558645448470085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107635 n : ℚ) / (A242073 (A005843 n).toNat : ℚ)

end

end A022598.P16583558645448470085

/-! ## A022598.P15255757811808548375

`A022601(n)/A112150(n)*A107635(n)`
-/

namespace A022598.P15255757811808548375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022601 n : ℚ) / (A112150 n : ℚ) * (A107635 n : ℚ)

end

end A022598.P15255757811808548375

/-! ## A022598.P11071990196850240556

`A107635(n)*A164677(2*n+1)`
-/

namespace A022598.P11071990196850240556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107635 n * A164677 (2 * n + 1)

end

end A022598.P11071990196850240556

/-! ## A022598.P14384759752040826206

`A286352(∑[n+4]+2)`
-/

namespace A022598.P14384759752040826206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A022598.P14384759752040826206

/-!
# A022599: Expansion of Product_{m>=1} (1+q^m)^(-4).

The programs for A022599, there is no canonical definition to state claims against.
-/

/-! ## A022599.P11343679070521448928

`A033999(n)*A112160(n)`
-/

namespace A022599.P11343679070521448928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112160 n

end

end A022599.P11343679070521448928

/-! ## A022599.P1360961180691763767

`(A004442(n)-n)*A112160(n)`
-/

namespace A022599.P1360961180691763767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A112160 n

end

end A022599.P1360961180691763767

/-! ## A022599.P13805533778829257033

`A007259(n)/A101127(n)*A112160(n)`
-/

namespace A022599.P13805533778829257033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007259 n : ℚ) / (A101127 n : ℚ) * (A112160 n : ℚ)

end

end A022599.P13805533778829257033

/-! ## A022599.P7817871715000294796

`A058493(3*n)`
-/

namespace A022599.P7817871715000294796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058493 (3 * n)

end

end A022599.P7817871715000294796

/-! ## A022599.P12881115810801403646

`A112149(3*n)`
-/

namespace A022599.P12881115810801403646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112149 (3 * n)

end

end A022599.P12881115810801403646

/-! ## A022599.P940091480172087566

`A286352(A052905(n+2))`
-/

namespace A022599.P940091480172087566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A052905 (n + 2)).toNat

end

end A022599.P940091480172087566

/-! ## A022599.P2828142865176117622

`A286352(eq[4, A025581(n)])`
-/

namespace A022599.P2828142865176117622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022599.P2828142865176117622

/-! ## A022599.P7250293004331842150

`A286352(A000217(n+5)-5)`
-/

namespace A022599.P7250293004331842150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000217 (n + 5) - 5).toNat

end

end A022599.P7250293004331842150

