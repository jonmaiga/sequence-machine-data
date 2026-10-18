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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A117700: Palindromic primes in base 5 (written in base 5).

The programs for A117700, there is no canonical definition to state claims against.
-/

/-! ## A117700.P11581106329695668385

`∩[A002113(n+1), A004679(n+1)]`
-/

namespace A117700.P11581106329695668385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117700.P11581106329695668385

/-! ## A117700.P13277308531598787664

`∩[A004679(n+1), A056525(n+1)]`
-/

namespace A117700.P13277308531598787664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117700.P13277308531598787664

/-! ## A117700.P17358966329740557078

`∩[A004679(n+1), A066492(n+1)]`
-/

namespace A117700.P17358966329740557078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117700.P17358966329740557078

/-! ## A117700.P12197435766446512685

`∩[A004679(n+1), A071272(n+1)]`
-/

namespace A117700.P12197435766446512685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117700.P12197435766446512685

/-! ## A117700.P14190359462848735326

`∩[A004679(n+1), A083158(n+1)]`
-/

namespace A117700.P14190359462848735326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117700.P14190359462848735326

/-! ## A117700.P5456182411645727577

`∩[A004679(n+1), A083160(n+1)]`
-/

namespace A117700.P5456182411645727577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117700.P5456182411645727577

/-! ## A117700.P8358214801287927626

`∩[A004679(n+1), A118596(n+1)]`
-/

namespace A117700.P8358214801287927626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117700.P8358214801287927626

/-! ## A117700.P176584943971418338

`∩[A004679(n+1), A118597(n+1)]`
-/

namespace A117700.P176584943971418338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117700.P176584943971418338

/-! ## A117700.P3707017954525654138

`∩[A004679(n+1), A118598(n+1)]`
-/

namespace A117700.P3707017954525654138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117700.P3707017954525654138

/-! ## A117700.P11706630752030414034

`∩[A004679(n+1), A118599(n+1)]`
-/

namespace A117700.P11706630752030414034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117700.P11706630752030414034

/-!
# A117701: Palindromic primes in base 6 (written in base 6).

The programs for A117701, there is no canonical definition to state claims against.
-/

/-! ## A117701.P15382144073774576183

`∩[A002113(n+1), A004680(n+1)]`
-/

namespace A117701.P15382144073774576183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117701.P15382144073774576183

/-! ## A117701.P16677949173791912125

`∩[A004680(n+1), A061917(n+1)]`
-/

namespace A117701.P16677949173791912125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117701.P16677949173791912125

/-! ## A117701.P3196726282329832778

`∩[A004680(n+1), A098897(n+1)]`
-/

namespace A117701.P3196726282329832778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117701.P3196726282329832778

/-! ## A117701.P1003415155186372854

`∩[A004680(n+1), A118597(n+1)]`
-/

namespace A117701.P1003415155186372854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117701.P1003415155186372854

/-! ## A117701.P16969523012752695370

`∩[A004680(n+1), A118598(n+1)]`
-/

namespace A117701.P16969523012752695370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117701.P16969523012752695370

/-! ## A117701.P10503157130055502905

`∩[A004680(n+1), A118599(n+1)]`
-/

namespace A117701.P10503157130055502905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117701.P10503157130055502905

/-! ## A117701.P9695733662211874510

`∩[A004680(n+1), A118600(n+1)]`
-/

namespace A117701.P9695733662211874510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117701.P9695733662211874510

/-! ## A117701.P14993559057782521229

`∩[A004680(n+1), A169824(n+1)]`
-/

namespace A117701.P14993559057782521229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117701.P14993559057782521229

/-! ## A117701.P2871055765348225743

`∩[A004680(n+1), A226732(n+1)]`
-/

namespace A117701.P2871055765348225743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117701.P2871055765348225743

/-! ## A117701.P2140502726146529253

`∩[A004680(n+1), A306273(n+1)]`
-/

namespace A117701.P2140502726146529253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117701.P2140502726146529253

/-!
# A117702: Palindromic primes in base 7 (written in base 7).

The programs for A117702, there is no canonical definition to state claims against.
-/

/-! ## A117702.P13555797110615708051

`∩[A002113(n+1), A004681(n+1)]`
-/

namespace A117702.P13555797110615708051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117702.P13555797110615708051

/-! ## A117702.P7785990011783946093

`∩[A004681(n+1), A056525(n+1)]`
-/

namespace A117702.P7785990011783946093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117702.P7785990011783946093

/-! ## A117702.P3152486301158787863

`∩[A004681(n+1), A083158(n+1)]`
-/

namespace A117702.P3152486301158787863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117702.P3152486301158787863

/-! ## A117702.P977162486399635087

`∩[A004681(n+1), A118598(n+1)]`
-/

namespace A117702.P977162486399635087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117702.P977162486399635087

/-! ## A117702.P14165328247592034448

`∩[A004681(n+1), A118599(n+1)]`
-/

namespace A117702.P14165328247592034448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117702.P14165328247592034448

/-! ## A117702.P11200708121386878658

`∩[A004681(n+1), A118600(n+1)]`
-/

namespace A117702.P11200708121386878658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117702.P11200708121386878658

/-! ## A117702.P1604626317657611777

`∩[A004681(n+1), A306273(n+1)]`
-/

namespace A117702.P1604626317657611777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117702.P1604626317657611777

/-!
# A117703: Palindromic primes in base 9 (written in base 9).

The programs for A117703, there is no canonical definition to state claims against.
-/

/-! ## A117703.P3505395173427870280

`∩[A002113(n+1), A004683(n+1)]`
-/

namespace A117703.P3505395173427870280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117703.P3505395173427870280

/-! ## A117703.P3323751534547681243

`∩[A004683(n+1), A056525(n+1)]`
-/

namespace A117703.P3323751534547681243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117703.P3323751534547681243

/-! ## A117703.P3377617278064953263

`∩[A004683(n+1), A061917(n+1)]`
-/

namespace A117703.P3377617278064953263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117703.P3377617278064953263

/-! ## A117703.P16170343527087208237

`∩[A004683(n+1), A083158(n+1)]`
-/

namespace A117703.P16170343527087208237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117703.P16170343527087208237

/-! ## A117703.P13031845113040639067

`∩[A004683(n+1), A118600(n+1)]`
-/

namespace A117703.P13031845113040639067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117703.P13031845113040639067

/-! ## A117703.P1544037554573070819

`∩[A004683(n+1), A169824(n+1)]`
-/

namespace A117703.P1544037554573070819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117703.P1544037554573070819

/-! ## A117703.P2026751068425229482

`∩[A004683(n+1), A226732(n+1)]`
-/

namespace A117703.P2026751068425229482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117703.P2026751068425229482

/-!
# A117704: Least refined sequence that can be grouped to sum to either natural numbers or odd numbers.

The programs for A117704, the canonical program `A117704.P4538298160928895038` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117704 has offset 1).

The definition of A117704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117704.P4538298160928895038

`Δ[∪[n², ∑[n]]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A117704

/-- `Δ[∪[n², ∑[n]]]` -/
def P4538298160928895038.Spec : Prop :=
  ∀ n, P4538298160928895038.a n = A117704 (n + 1)

theorem P4538298160928895038.correct : P4538298160928895038.Spec := by
  intro n
  simp only [A117704, Nat.add_sub_cancel]

end A117704

/-! ## A117704.P18117104594536736946

`A005214(n+1)-∪[A005214(n+1), n²]`
-/

namespace A117704.P18117104594536736946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n : ℤ)

end

end A117704.P18117104594536736946

namespace A117704

/-- `A005214(n+1)-∪[A005214(n+1), n²]` -/
def P18117104594536736946.Spec : Prop :=
  ∀ n, P18117104594536736946.a n = A117704 (n + 1)

end A117704

/-! ## A117704.P12987039050090377474

`Δ[A052293(n+1)/2]`
-/

namespace A117704.P12987039050090377474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052293 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117704.P12987039050090377474

namespace A117704

/-- `Δ[A052293(n+1)/2]` -/
def P12987039050090377474.Spec : Prop :=
  ∀ n, P12987039050090377474.a n = (A117704 (n + 1) : ℚ)

end A117704

/-! ## A117704.P4773377301430664453

`Δ[A054056(n+1)/2]`
-/

namespace A117704.P4773377301430664453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054056 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117704.P4773377301430664453

namespace A117704

/-- `Δ[A054056(n+1)/2]` -/
def P4773377301430664453.Spec : Prop :=
  ∀ n, P4773377301430664453.a n = (A117704 (n + 1) : ℚ)

end A117704

/-! ## A117704.P1533165571920008453

`Δ[A054057(n+1)/2]`
-/

namespace A117704.P1533165571920008453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054057 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117704.P1533165571920008453

namespace A117704

/-- `Δ[A054057(n+1)/2]` -/
def P1533165571920008453.Spec : Prop :=
  ∀ n, P1533165571920008453.a n = (A117704 (n + 1) : ℚ)

end A117704

/-! ## A117704.P10928017383415588015

`Δ[A054794(n+1)/2]`
-/

namespace A117704.P10928017383415588015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054794 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117704.P10928017383415588015

namespace A117704

/-- `Δ[A054794(n+1)/2]` -/
def P10928017383415588015.Spec : Prop :=
  ∀ n, P10928017383415588015.a n = (A117704 (n + 1) : ℚ)

end A117704

/-! ## A117704.P15524609752816918942

`Δ[A054795(n+1)/2]`
-/

namespace A117704.P15524609752816918942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054795 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117704.P15524609752816918942

namespace A117704

/-- `Δ[A054795(n+1)/2]` -/
def P15524609752816918942.Spec : Prop :=
  ∀ n, P15524609752816918942.a n = (A117704 (n + 1) : ℚ)

end A117704

/-! ## A117704.P6935837226223822550

`Δ[A054796(n+1)/2]`
-/

namespace A117704.P6935837226223822550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054796 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117704.P6935837226223822550

namespace A117704

/-- `Δ[A054796(n+1)/2]` -/
def P6935837226223822550.Spec : Prop :=
  ∀ n, P6935837226223822550.a n = (A117704 (n + 1) : ℚ)

end A117704

/-! ## A117704.P812160614514457684

`(A054794(n+2)-A054794(n+1))/2`
-/

namespace A117704.P812160614514457684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054794 (n + 2) - A054794 (n + 1) : ℚ) / 2

end

end A117704.P812160614514457684

namespace A117704

/-- `(A054794(n+2)-A054794(n+1))/2` -/
def P812160614514457684.Spec : Prop :=
  ∀ n, P812160614514457684.a n = (A117704 (n + 1) : ℚ)

end A117704

/-! ## A117704.P4465639322629222082

`A054796(n+2)%A054796(n+1)/2`
-/

namespace A117704.P4465639322629222082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A054796 (n + 2)) (A054796 (n + 1)) : ℚ) / 2

end

end A117704.P4465639322629222082

namespace A117704

/-- `A054796(n+2)%A054796(n+1)/2` -/
def P4465639322629222082.Spec : Prop :=
  ∀ n, P4465639322629222082.a n = (A117704 (n + 1) : ℚ)

end A117704

/-! ## A117704.P6285357867323775768

`A140106(Δ[A054794(n+1)])+1`
-/

namespace A117704.P6285357867323775768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (f1 (n + 1) - f1 n).toNat + 1

end

end A117704.P6285357867323775768

namespace A117704

/-- `A140106(Δ[A054794(n+1)])+1` -/
def P6285357867323775768.Spec : Prop :=
  ∀ n, P6285357867323775768.a n = A117704 (n + 1)

end A117704

/-! ## A117704.P2005140439779951127

`A004526(Δ[A054796(n+1)])`
-/

namespace A117704.P2005140439779951127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A117704.P2005140439779951127

namespace A117704

/-- `A004526(Δ[A054796(n+1)])` -/
def P2005140439779951127.Spec : Prop :=
  ∀ n, P2005140439779951127.a n = A117704 (n + 1)

end A117704

/-! ## A117704.P11990097275744635999

`A006370(A054796(n+2)-A054796(n+1))`
-/

namespace A117704.P11990097275744635999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A054796 (n + 2) - A054796 (n + 1)).toNat

end

end A117704.P11990097275744635999

namespace A117704

/-- `A006370(A054796(n+2)-A054796(n+1))` -/
def P11990097275744635999.Spec : Prop :=
  ∀ n, P11990097275744635999.a n = A117704 (n + 1)

end A117704

/-! ## A117704.P16852700619164441036

`A103221(Δ[3*A054796(n+1)]+1)`
-/

namespace A117704.P16852700619164441036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (n + 1) - f1 n + 1).toNat

end

end A117704.P16852700619164441036

namespace A117704

/-- `A103221(Δ[3*A054796(n+1)]+1)` -/
def P16852700619164441036.Spec : Prop :=
  ∀ n, P16852700619164441036.a n = A117704 (n + 1)

end A117704

/-! ## A117704.P11657364498169521474

`Δ[A140106(A054794(n+1))]`
-/

namespace A117704.P11657364498169521474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A054794 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117704.P11657364498169521474

namespace A117704

/-- `Δ[A140106(A054794(n+1))]` -/
def P11657364498169521474.Spec : Prop :=
  ∀ n, P11657364498169521474.a n = A117704 (n + 1)

end A117704

/-! ## A117704.P2159246257202676969

`Δ[record[A054686(A002260(n+1)+1)]]`
-/

namespace A117704.P2159246257202676969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A002260 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117704.P2159246257202676969

namespace A117704

/-- `Δ[record[A054686(A002260(n+1)+1)]]` -/
def P2159246257202676969.Spec : Prop :=
  ∀ n, P2159246257202676969.a n = A117704 (n + 1)

end A117704

/-! ## A117704.P8501726857435749579

`Δ[record[A054686(A002260(n+1))]]`
-/

namespace A117704.P8501726857435749579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A002260 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117704.P8501726857435749579

namespace A117704

/-- `Δ[record[A054686(A002260(n+1))]]` -/
def P8501726857435749579.Spec : Prop :=
  ∀ n, P8501726857435749579.a n = A117704 (n + 1)

end A117704

/-!
# A117706: Numbers k such that 6^k - k^6 is prime.

The programs for A117706, there is no canonical definition to state claims against.
-/

/-! ## A117706.P13248115734891926571

`record[Δ[A329958(A277936(n))]]`
-/

namespace A117706.P13248115734891926571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329958 (A277936 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117706.P13248115734891926571

/-! ## A117706.P15781890102239875375

`A324760(A331913(∑[lcm(2, n+2)/2]))`
-/

namespace A117706.P15781890102239875375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324760 (A331913 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A117706.P15781890102239875375

/-!
# A117707: Largest number of previous terms having at least one common digit in decimal representation.

The programs for A117707, there is no canonical definition to state claims against.
-/

/-! ## A117707.P7323249457274734117

`A079054(C(n, 64)+2)+∑[A010054(n)]`
-/

namespace A117707.P7323249457274734117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (Nat.choose n 64 + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117707.P7323249457274734117

/-! ## A117707.P5215873992196886006

`∑[A185284(A004526(n))^A268652(n)]`
-/

namespace A117707.P5215873992196886006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185284 (A004526 n).toNat : ℚ) ^ (A268652 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117707.P5215873992196886006

/-! ## A117707.P10167701800255649751

`A334028(C(n, 64))+A003056(n)`
-/

namespace A117707.P10167701800255649751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (Nat.choose n 64) + A003056 n

end

end A117707.P10167701800255649751

/-! ## A117707.P7238763071768004749

`∑[A238979(A048766(n))^A120060(n)]`
-/

namespace A117707.P7238763071768004749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238979 (A048766 n).toNat : ℚ) ^ (A120060 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117707.P7238763071768004749

/-! ## A117707.P5418624774667349330

`∑[A294234(A309952(n))^A294219(n)]`
-/

namespace A117707.P5418624774667349330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294234 (A309952 n).toNat : ℚ) ^ (A294219 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117707.P5418624774667349330

/-!
# A117708: Numbers that are both lucky numbers and Chen primes.

The programs for A117708, there is no canonical definition to state claims against.
-/

/-! ## A117708.P6703511278063491426

`∩[A000959(n+1), A109611(n+1)]`
-/

namespace A117708.P6703511278063491426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117708.P6703511278063491426

/-! ## A117708.P1789069339955033099

`∩[A031157(n+1), A109611(n+1)]`
-/

namespace A117708.P1789069339955033099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117708.P1789069339955033099

/-! ## A117708.P18337293896846890914

`∩[A043772(n+1), A109611(n+1)]`
-/

namespace A117708.P18337293896846890914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117708.P18337293896846890914

/-! ## A117708.P16230874280565810114

`∩[A109611(n+1), A118643(n+1)]`
-/

namespace A117708.P16230874280565810114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117708.P16230874280565810114

/-! ## A117708.P13945879695341617015

`∩[A000959(n+1), Δ[A118482(n)]]`
-/

namespace A117708.P13945879695341617015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117708.P13945879695341617015

/-! ## A117708.P7476088492685498803

`filter[A109611(n+1), A145649(#)]`
-/

namespace A117708.P7476088492685498803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A117708.P7476088492685498803

/-!
# A117709: Pentagonal numbers for which the sum of the digits is also a pentagonal number.

The programs for A117709, there is no canonical definition to state claims against.
-/

/-! ## A117709.P4545923350152859765

`A000326(eq[A334732(2*n+1), A334947(2*n+3)])`
-/

namespace A117709.P4545923350152859765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334732 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117709.P4545923350152859765

/-!
# A117710: Pentagonal numbers for which the product of the digits is also a pentagonal number.

The programs for A117710, there is no canonical definition to state claims against.
-/

/-! ## A117710.P16125008416097217138

`A000326(lt[A097805((n+3)*C(n, 2)), 2])`
-/

namespace A117710.P16125008416097217138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 ((n + 3) * Nat.choose n 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A117710.P16125008416097217138

/-! ## A117710.P3763007754010118029

`A000326(eq[A315005(n), A315084(n)])`
-/

namespace A117710.P3763007754010118029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117710.P3763007754010118029

/-!
# A117711: Pentagonal numbers for which both the sum of the digits and the product of the digits are pentagonal numbers.

The programs for A117711, there is no canonical definition to state claims against.
-/

/-! ## A117711.P15877680189321749065

`∩[A117709(n), A117710(n)]`
-/

namespace A117711.P15877680189321749065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117710 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117711.P15877680189321749065

/-!
# A117712: Number of pentagonal numbers with n digits.

The programs for A117712, the canonical program `A117712.P3082328782814083852` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117712 has offset 1).

The definition of A117712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117712.P3082328782814083852

`Δ[A368088(n+1)+A057427(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117712

/-- `Δ[A368088(n+1)+A057427(n)]` -/
def P3082328782814083852.Spec : Prop :=
  ∀ n, P3082328782814083852.a n = A117712 (n + 1)

theorem P3082328782814083852.correct : P3082328782814083852.Spec := by
  intro n
  simp only [A117712, Nat.add_sub_cancel]

end A117712

/-! ## A117712.P1903850857400291645

`Δ[A368088(n+1)+A364693(3*(n+1))]`
-/

namespace A117712.P1903850857400291645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368088 (n + 1) + A364693 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117712.P1903850857400291645

namespace A117712

/-- `Δ[A368088(n+1)+A364693(3*(n+1))]` -/
def P1903850857400291645.Spec : Prop :=
  ∀ n, P1903850857400291645.a n = A117712 (n + 1)

end A117712

/-! ## A117712.P18057351004434014736

`Δ[A368088(n+1)%A155641(n)]`
-/

namespace A117712.P18057351004434014736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368088 (n + 1)) (A155641 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117712.P18057351004434014736

namespace A117712

/-- `Δ[A368088(n+1)%A155641(n)]` -/
def P18057351004434014736.Spec : Prop :=
  ∀ n, P18057351004434014736.a n = A117712 (n + 1)

end A117712

/-!
# A117713: a(1)=1, a(2)=3, a(3)=8; for n>=4, a(n) = 10*a(n-3) + 8 (if a(n-3) is odd) or + 9 (if a(n-3) is even).

The programs for A117713, there is no canonical definition to state claims against.
-/

/-! ## A117713.P16937637626295178003

`A316345(A123285(n))+A117727(n)`
-/

namespace A117713.P16937637626295178003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 (A123285 (n + 21)).toNat + A117727 n

end

end A117713.P16937637626295178003

/-! ## A117713.P5308409949892162986

`or(A000035(A117722(n)), A117727(n))`
-/

namespace A117713.P5308409949892162986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A117722 n).toNat) (A117727 n)

end

end A117713.P5308409949892162986

/-! ## A117713.P4967214167697869543

`A215480(A037536(n+1))+A117727(n)`
-/

namespace A117713.P4967214167697869543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 (A037536 (n + 1)).toNat + A117727 n

end

end A117713.P4967214167697869543

/-!
# A117714: a(n) = (A034962(n) - A152470(n))/2.

The programs for A117714, there is no canonical definition to state claims against.
-/

/-! ## A117714.P1417696554739631683

`(A034962(n+1)-A152470(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117714.P1417696554739631683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034962 (n + 1) - A152470 (n + 1) : ℚ) / 2

end

end A117714.P1417696554739631683

/-! ## A117714.P4647395004224849841

`A162735(A072225(n+1))`
-/

namespace A117714.P4647395004224849841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (A072225 (n + 1)).toNat

end

end A117714.P4647395004224849841

/-! ## A117714.P4906665523576632397

`A063932(A073681(n+1)+1)`
-/

namespace A117714.P4906665523576632397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (A073681 (n + 1) + 1).toNat

end

end A117714.P4906665523576632397

/-! ## A117714.P14626438348202134746

`A024675(A072225(n+1)-1)`
-/

namespace A117714.P14626438348202134746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (A072225 (n + 1) - 1).toNat

end

end A117714.P14626438348202134746

/-! ## A117714.P1593631006925651390

`A063932(A152469(n+1)-1)`
-/

namespace A117714.P1593631006925651390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (A152469 (n + 1) - 1).toNat

end

end A117714.P1593631006925651390

/-!
# A117715: Triangle, read by rows, T(n, k) = Fibonacci(n, k), where Fibonacci(n, x) is the Fibonacci polynomial.

The programs for A117715, there is no canonical definition to state claims against.
-/

/-! ## A117715.P11044299862887231121

`A352361(A245300(n)+A025581(n))`
-/

namespace A117715.P11044299862887231121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 (A245300 n + A025581 n).toNat

end

end A117715.P11044299862887231121

/-! ## A117715.P1593265382525977016

`A059481(n)-A359374(A197207(3*n+5))`
-/

namespace A117715.P1593265382525977016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n - A359374 (A197207 (3 * n + 5)).toNat

end

end A117715.P1593265382525977016

/-!
# A117717: Maximal number of regions obtained by a straight line drawing of the complete bipartite graph K_{n,n}.

The programs for A117717, the canonical program `A117717.P13161146074691072214` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117717 has offset 1).

The definition of A117717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117717.P8502673003877809308

`n²*((n+1)²+4)/4`
-/

namespace A117717.P8502673003877809308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * (((n + 1) ^ 2 + 4 : ℚ) / 4)

end

end A117717.P8502673003877809308

namespace A117717

/-- `n²*((n+1)²+4)/4` -/
def P8502673003877809308.Spec : Prop :=
  ∀ n, P8502673003877809308.a n = (A117717 (n + 1) : ℚ)

theorem P8502673003877809308.correct : P8502673003877809308.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A117717, Nat.add_sub_cancel, A117717.P8502673003877809308.a, A117717.P13161146074691072214.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A117717, Nat.add_sub_cancel, A117717.P8502673003877809308.a, A117717.P13161146074691072214.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A117717

/-! ## A117717.P13161146074691072214

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=13, a(3)=45, a(4)=116`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A117717

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13161146074691072214.Spec : Prop :=
  ∀ n, P13161146074691072214.a n = A117717 (n + 1)

theorem P13161146074691072214.correct : P13161146074691072214.Spec := by
  intro n
  simp only [A117717, Nat.add_sub_cancel]

end A117717

/-! ## A117717.P10140746204535267194

`(n/cos(atan((n+1)/2)))²`
-/

namespace A117717.P10140746204535267194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.cos (Real.arctan ((n + 1 : ℚ) / 2 : ℝ))) ^ 2

end

end A117717.P10140746204535267194

namespace A117717

/-- `(n/cos(atan((n+1)/2)))²` -/
def P10140746204535267194.Spec : Prop :=
  ∀ n, P10140746204535267194.a n = (A117717 (n + 1) : ℝ)

end A117717

/-! ## A117717.P16087522815285661480

`(n/sin(atan(2/(n+1))))²`
-/

namespace A117717.P16087522815285661480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.sin (Real.arctan (2 / (n + 1 : ℚ) : ℝ))) ^ 2

end

end A117717.P16087522815285661480

namespace A117717

/-- `(n/sin(atan(2/(n+1))))²` -/
def P16087522815285661480.Spec : Prop :=
  ∀ n, P16087522815285661480.a n = (A117717 (n + 1) : ℝ)

end A117717

/-! ## A117717.P7783473499189275215

`(n/cos(acot(2/(n+1))))²`
-/

namespace A117717.P7783473499189275215
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.cos (SequenceMachineLib.acot (2 / (n + 1 : ℚ) : ℝ))) ^ 2

end

end A117717.P7783473499189275215

namespace A117717

/-- `(n/cos(acot(2/(n+1))))²` -/
def P7783473499189275215.Spec : Prop :=
  ∀ n, P7783473499189275215.a n = (A117717 (n + 1) : ℝ)

end A117717

/-! ## A117717.P6444150411909822386

`(n/sin(acot((n+1)/2)))²`
-/

namespace A117717.P6444150411909822386
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.sin (SequenceMachineLib.acot ((n + 1 : ℚ) / 2 : ℝ))) ^ 2

end

end A117717.P6444150411909822386

namespace A117717

/-- `(n/sin(acot((n+1)/2)))²` -/
def P6444150411909822386.Spec : Prop :=
  ∀ n, P6444150411909822386.a n = (A117717 (n + 1) : ℝ)

end A117717

/-! ## A117717.P9921011963660194245

`floor((C(n+1, 2)+n/(n+1))²)`
-/

namespace A117717.P9921011963660194245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (n + 1) 2 : ℚ) + (n : ℚ) / (n + 1 : ℚ)) ^ 2⌋

end

end A117717.P9921011963660194245

namespace A117717

/-- `floor((C(n+1, 2)+n/(n+1))²)` -/
def P9921011963660194245.Spec : Prop :=
  ∀ n, P9921011963660194245.a n = A117717 (n + 1)

end A117717

/-! ## A117717.P15891553887918873574

`abs(n-A061316(n))`
-/

namespace A117717.P15891553887918873574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A061316 n|

end

end A117717.P15891553887918873574

namespace A117717

/-- `abs(n-A061316(n))` -/
def P15891553887918873574.Spec : Prop :=
  ∀ n, P15891553887918873574.a n = A117717 (n + 1)

end A117717

/-! ## A117717.P13962393255154067246

`abs(1-A086601(n)+n)`
-/

namespace A117717.P13962393255154067246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A086601 n + (n : ℤ)|

end

end A117717.P13962393255154067246

namespace A117717

/-- `abs(1-A086601(n)+n)` -/
def P13962393255154067246.Spec : Prop :=
  ∀ n, P13962393255154067246.a n = A117717 (n + 1)

end A117717

/-! ## A117717.P100071602746541124

`∑[A079908(n)-(n+1)]`
-/

namespace A117717.P100071602746541124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117717.P100071602746541124

namespace A117717

/-- `∑[A079908(n)-(n+1)]` -/
def P100071602746541124.Spec : Prop :=
  ∀ n, P100071602746541124.a n = A117717 (n + 1)

end A117717

/-! ## A117717.P15341602291885967128

`∑[A004273(n)+n^3]`
-/

namespace A117717.P15341602291885967128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117717.P15341602291885967128

namespace A117717

/-- `∑[A004273(n)+n^3]` -/
def P15341602291885967128.Spec : Prop :=
  ∀ n, P15341602291885967128.a n = A117717 (n + 1)

end A117717

/-! ## A117717.P7582583462568633991

`∑[A004277(n)+n^3-1]`
-/

namespace A117717.P7582583462568633991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n ^ 3 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117717.P7582583462568633991

namespace A117717

/-- `∑[A004277(n)+n^3-1]` -/
def P7582583462568633991.Spec : Prop :=
  ∀ n, P7582583462568633991.a n = A117717 (n + 1)

end A117717

/-! ## A117717.P13487255474191765991

`abs((A000217(n)+1)²-1-n)`
-/

namespace A117717.P13487255474191765991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000217 n + 1) ^ 2 - 1 - (n : ℤ)|

end

end A117717.P13487255474191765991

namespace A117717

/-- `abs((A000217(n)+1)²-1-n)` -/
def P13487255474191765991.Spec : Prop :=
  ∀ n, P13487255474191765991.a n = A117717 (n + 1)

end A117717

/-! ## A117717.P5590746818386812114

`(A163102(n)+A001105(n))/2`
-/

namespace A117717.P5590746818386812114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163102 n + A001105 n : ℚ) / 2

end

end A117717.P5590746818386812114

namespace A117717

/-- `(A163102(n)+A001105(n))/2` -/
def P5590746818386812114.Spec : Prop :=
  ∀ n, P5590746818386812114.a n = (A117717 (n + 1) : ℚ)

end A117717

/-! ## A117717.P11556759186699422756

`A383834(n)%A125641(n+1)`
-/

namespace A117717.P11556759186699422756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383834 n) (A125641 (n + 1))

end

end A117717.P11556759186699422756

namespace A117717

/-- `A383834(n)%A125641(n+1)` -/
def P11556759186699422756.Spec : Prop :=
  ∀ n, P11556759186699422756.a n = A117717 (n + 1)

end A117717

/-! ## A117717.P7087370376542613783

`abs(1-A001489(n)-A086601(n))`
-/

namespace A117717.P7087370376542613783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001489 n - A086601 n|

end

end A117717.P7087370376542613783

namespace A117717

/-- `abs(1-A001489(n)-A086601(n))` -/
def P7087370376542613783.Spec : Prop :=
  ∀ n, P7087370376542613783.a n = A117717 (n + 1)

end A117717

/-! ## A117717.P11404045325157568067

`∑[A135859(n+1)+A000007(n)-2]`
-/

namespace A117717.P11404045325157568067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135859 (n + 1) + (A000007 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117717.P11404045325157568067

namespace A117717

/-- `∑[A135859(n+1)+A000007(n)-2]` -/
def P11404045325157568067.Spec : Prop :=
  ∀ n, P11404045325157568067.a n = A117717 (n + 1)

end A117717

/-! ## A117717.P14137712633405114390

`abs((∑[n+1]-(A004277(n)-(n+1)))*A000217(n)-n)`
-/

namespace A117717.P14137712633405114390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A004277 n - (n + 1 : ℤ))) * A000217 n - (n : ℤ)|

end

end A117717.P14137712633405114390

namespace A117717

/-- `abs((∑[n+1]-(A004277(n)-(n+1)))*A000217(n)-n)` -/
def P14137712633405114390.Spec : Prop :=
  ∀ n, P14137712633405114390.a n = A117717 (n + 1)

end A117717

/-!
# A117718: Number of heptagonal numbers with n digits.

The programs for A117718, there is no canonical definition to state claims against.
-/

/-! ## A117718.P16389780963870303278

`A194640(A062940(n+1))`
-/

namespace A117718.P16389780963870303278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A062940 (n + 1)).toNat

end

end A117718.P16389780963870303278

/-! ## A117718.P7230614789229245588

`A233583(A026071(n+4)+n)+1`
-/

namespace A117718.P7230614789229245588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A026071 (n + 4) + (n : ℤ)).toNat + 1

end

end A117718.P7230614789229245588

/-!
# A117719: a(2n) = A001653(n) (Numbers n such that 2*n^2 - 1 is a square), a(2n+1) = A038725(n+1).

The programs for A117719, the canonical program `A117719.P2688201268573301251` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117719 has offset 0).

The definition of A117719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117719.P6799730603278599861

`floor((sqrt(8)+3)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A117719.P6799730603278599861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(Real.sqrt (8 : ℝ) + 3) * (a (n - 2) : ℝ)⌋

end

end A117719.P6799730603278599861

namespace A117719

/-- `floor((sqrt(8)+3)*a(n-2))` -/
def P6799730603278599861.Spec : Prop :=
  ∀ n, P6799730603278599861.a n = A117719 n

end A117719

/-! ## A117719.P5471004146511587957

`floor(a(n-2)/(3-sqrt(8)))` with `a(0)=1, a(1)=2`
-/

namespace A117719.P5471004146511587957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 2) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A117719.P5471004146511587957

namespace A117719

/-- `floor(a(n-2)/(3-sqrt(8)))` -/
def P5471004146511587957.Spec : Prop :=
  ∀ n, P5471004146511587957.a n = A117719 n

end A117719

/-! ## A117719.P2688201268573301251

`A089928(n)+A135153(n)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117719

/-- `A089928(n)+A135153(n)²` -/
def P2688201268573301251.Spec : Prop :=
  ∀ n, P2688201268573301251.a n = A117719 n

theorem P2688201268573301251.correct : P2688201268573301251.Spec := by
  intro n
  simp only [A117719]

end A117719

/-! ## A117719.P15177397270673937866

`A143609(n+1)-A041011(n)`
-/

namespace A117719.P15177397270673937866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143609 (n + 1) - A041011 n

end

end A117719.P15177397270673937866

namespace A117719

/-- `A143609(n+1)-A041011(n)` -/
def P15177397270673937866.Spec : Prop :=
  ∀ n, P15177397270673937866.a n = A117719 n

end A117719

/-! ## A117719.P5280611641956835372

`∑[∑[A126354(A114112(n+1))]]`
-/

namespace A117719.P5280611641956835372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (A114112 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117719.P5280611641956835372

namespace A117719

/-- `∑[∑[A126354(A114112(n+1))]]` -/
def P5280611641956835372.Spec : Prop :=
  ∀ n, P5280611641956835372.a n = A117719 n

end A117719

/-! ## A117719.P1574218697317130566

`A006452(n)+∑[A006452(n)]-1`
-/

namespace A117719.P1574218697317130566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A117719.P1574218697317130566

namespace A117719

/-- `A006452(n)+∑[A006452(n)]-1` -/
def P1574218697317130566.Spec : Prop :=
  ∀ n, P1574218697317130566.a n = A117719 n

end A117719

/-! ## A117719.P17448424828962305063

`A001333(n+1)+A041011(n)-A084068(n+1)`
-/

namespace A117719.P17448424828962305063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A041011 n - A084068 (n + 1))

end

end A117719.P17448424828962305063

namespace A117719

/-- `A001333(n+1)+A041011(n)-A084068(n+1)` -/
def P17448424828962305063.Spec : Prop :=
  ∀ n, P17448424828962305063.a n = A117719 n

end A117719

/-! ## A117719.P14370044431582063535

`A001333(n+1)-A002965(n+1)*A119016(n+1)`
-/

namespace A117719.P14370044431582063535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A002965 (n + 1) * A119016 (n + 1)

end

end A117719.P14370044431582063535

namespace A117719

/-- `A001333(n+1)-A002965(n+1)*A119016(n+1)` -/
def P14370044431582063535.Spec : Prop :=
  ∀ n, P14370044431582063535.a n = A117719 n

end A117719

/-! ## A117719.P13226560363581068104

`A082766(2*(n+1))-A002965(n+1)*A119016(n+1)`
-/

namespace A117719.P13226560363581068104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (2 * (n + 1)) - A002965 (n + 1) * A119016 (n + 1)

end

end A117719.P13226560363581068104

namespace A117719

/-- `A082766(2*(n+1))-A002965(n+1)*A119016(n+1)` -/
def P13226560363581068104.Spec : Prop :=
  ∀ n, P13226560363581068104.a n = A117719 n

end A117719

/-! ## A117719.P3825232956614847316

`Δ[A006451(n)]-A041011(n)`
-/

namespace A117719.P3825232956614847316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A041011 n

end

end A117719.P3825232956614847316

namespace A117719

/-- `Δ[A006451(n)]-A041011(n)` -/
def P3825232956614847316.Spec : Prop :=
  ∀ n, P3825232956614847316.a n = A117719 n

end A117719

/-! ## A117719.P2345363645603151692

`record[A249577(n)]-A041011(n)`
-/

namespace A117719.P2345363645603151692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A041011 n

end

end A117719.P2345363645603151692

namespace A117719

/-- `record[A249577(n)]-A041011(n)` -/
def P2345363645603151692.Spec : Prop :=
  ∀ n, P2345363645603151692.a n = A117719 n

end A117719

/-! ## A117719.P16125417794845402077

`(A079496(n)+A078057(n))/2`
-/

namespace A117719.P16125417794845402077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079496 n + A078057 n : ℚ) / 2

end

end A117719.P16125417794845402077

namespace A117719

/-- `(A079496(n)+A078057(n))/2` -/
def P16125417794845402077.Spec : Prop :=
  ∀ n, P16125417794845402077.a n = (A117719 n : ℚ)

end A117719

/-! ## A117719.P1952828966127961576

`∑[A156066(n+1)]-A077442(n)`
-/

namespace A117719.P1952828966127961576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077442 n

end

end A117719.P1952828966127961576

namespace A117719

/-- `∑[A156066(n+1)]-A077442(n)` -/
def P1952828966127961576.Spec : Prop :=
  ∀ n, P1952828966127961576.a n = A117719 n

end A117719

/-! ## A117719.P2942752418357935991

`(A124124(n+1)+A024537(n))/2`
-/

namespace A117719.P2942752418357935991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124124 (n + 1) + A024537 n : ℚ) / 2

end

end A117719.P2942752418357935991

namespace A117719

/-- `(A124124(n+1)+A024537(n))/2` -/
def P2942752418357935991.Spec : Prop :=
  ∀ n, P2942752418357935991.a n = (A117719 n : ℚ)

end A117719

/-!
# A117722: a(n) = A000045(A003622(n)).

The programs for A117722, the canonical program `A117722.P14536613535452170244` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117722 has offset 0).

The definition of A117722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117722.P14536613535452170244

`A000045(A003622(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117722

/-- `A000045(A003622(n+1))` -/
def P14536613535452170244.Spec : Prop :=
  ∀ n, P14536613535452170244.a n = A117722 n

theorem P14536613535452170244.correct : P14536613535452170244.Spec := by
  intro n
  simp only [A117722]

end A117722

/-! ## A117722.P5348252579792976099

`A000045(comp[floor(ϕ*n)-1])`
-/

namespace A117722.P5348252579792976099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A117722.P5348252579792976099

namespace A117722

/-- `A000045(comp[floor(ϕ*n)-1])` -/
def P5348252579792976099.Spec : Prop :=
  ∀ n, P5348252579792976099.a n = A117722 n

end A117722

/-! ## A117722.P14338537117665237482

`and(A000045(floor(ϕ*(n+1))+n), -1)`
-/

namespace A117722.P14338537117665237482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)).toNat) (-1)

end

end A117722.P14338537117665237482

namespace A117722

/-- `and(A000045(floor(ϕ*(n+1))+n), -1)` -/
def P14338537117665237482.Spec : Prop :=
  ∀ n, P14338537117665237482.a n = A117722 n

end A117722

/-! ## A117722.P15805036823173436805

`A103609(A075318(n+1))`
-/

namespace A117722.P15805036823173436805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A075318 (n + 1)).toNat

end

end A117722.P15805036823173436805

namespace A117722

/-- `A103609(A075318(n+1))` -/
def P15805036823173436805.Spec : Prop :=
  ∀ n, P15805036823173436805.a n = A117722 n

end A117722

/-! ## A117722.P14740883739084878696

`A185381(A000201(n+1))`
-/

namespace A117722.P14740883739084878696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185381 (A000201 (n + 1)).toNat

end

end A117722.P14740883739084878696

namespace A117722

/-- `A185381(A000201(n+1))` -/
def P14740883739084878696.Spec : Prop :=
  ∀ n, P14740883739084878696.a n = A117722 n

end A117722

/-! ## A117722.P4410304510594641270

`A212804(A001950(n+1))`
-/

namespace A117722.P4410304510594641270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A001950 (n + 1)).toNat

end

end A117722.P4410304510594641270

namespace A117722

/-- `A212804(A001950(n+1))` -/
def P4410304510594641270.Spec : Prop :=
  ∀ n, P4410304510594641270.a n = A117722 n

end A117722

/-! ## A117722.P15359299224983290455

`A103609(A140979(n+1))`
-/

namespace A117722.P15359299224983290455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A140979 (n + 1)).toNat

end

end A117722.P15359299224983290455

namespace A117722

/-- `A103609(A140979(n+1))` -/
def P15359299224983290455.Spec : Prop :=
  ∀ n, P15359299224983290455.a n = A117722 n

end A117722

/-! ## A117722.P16917061161132143209

`A185381(A066096(n+1))`
-/

namespace A117722.P16917061161132143209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185381 (A066096 (n + 1)).toNat

end

end A117722.P16917061161132143209

namespace A117722

/-- `A185381(A066096(n+1))` -/
def P16917061161132143209.Spec : Prop :=
  ∀ n, P16917061161132143209.a n = A117722 n

end A117722

/-! ## A117722.P13233962746709770302

`record[A000045(A348853(n+1))]`
-/

namespace A117722.P13233962746709770302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A348853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117722.P13233962746709770302

namespace A117722

/-- `record[A000045(A348853(n+1))]` -/
def P13233962746709770302.Spec : Prop :=
  ∀ n, P13233962746709770302.a n = A117722 n

end A117722

/-! ## A117722.P13027187873973389577

`A212804(A026352(n+1)-1)`
-/

namespace A117722.P13027187873973389577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A026352 (n + 1) - 1).toNat

end

end A117722.P13027187873973389577

namespace A117722

/-- `A212804(A026352(n+1)-1)` -/
def P13027187873973389577.Spec : Prop :=
  ∀ n, P13027187873973389577.a n = A117722 n

end A117722

/-! ## A117722.P7505812233207614897

`A185381(A054084(2*(n+1)))`
-/

namespace A117722.P7505812233207614897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185381 (A054084 (2 * (n + 1))).toNat

end

end A117722.P7505812233207614897

namespace A117722

/-- `A185381(A054084(2*(n+1)))` -/
def P7505812233207614897.Spec : Prop :=
  ∀ n, P7505812233207614897.a n = A117722 n

end A117722

/-! ## A117722.P6293863893353585888

`A212804(A026351(n+1)+n)`
-/

namespace A117722.P6293863893353585888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A026351 (n + 1) + (n : ℤ)).toNat

end

end A117722.P6293863893353585888

namespace A117722

/-- `A212804(A026351(n+1)+n)` -/
def P6293863893353585888.Spec : Prop :=
  ∀ n, P6293863893353585888.a n = A117722 n

end A117722

/-! ## A117722.P3170329297240106101

`A185381(A003622(n+1)-n)`
-/

namespace A117722.P3170329297240106101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185381 (A003622 (n + 1) - (n : ℤ)).toNat

end

end A117722.P3170329297240106101

namespace A117722

/-- `A185381(A003622(n+1)-n)` -/
def P3170329297240106101.Spec : Prop :=
  ∀ n, P3170329297240106101.a n = A117722 n

end A117722

/-! ## A117722.P1184242077183452364

`A185381(A001950(n+1)-(n+1))`
-/

namespace A117722.P1184242077183452364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185381 (A001950 (n + 1) - (n + 1 : ℤ)).toNat

end

end A117722.P1184242077183452364

namespace A117722

/-- `A185381(A001950(n+1)-(n+1))` -/
def P1184242077183452364.Spec : Prop :=
  ∀ n, P1184242077183452364.a n = A117722 n

end A117722

/-! ## A117722.P8030195391236579130

`record[A000045(n+1)*A003849(n+1)]`
-/

namespace A117722.P8030195391236579130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A003849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117722.P8030195391236579130

namespace A117722

/-- `record[A000045(n+1)*A003849(n+1)]` -/
def P8030195391236579130.Spec : Prop :=
  ∀ n, P8030195391236579130.a n = A117722 n

end A117722

/-! ## A117722.P12987084039140326738

`round(A000045(comp[floor(ϕ*n)])/ϕ)`
-/

namespace A117722.P12987084039140326738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℝ) / Real.goldenRatio)

end

end A117722.P12987084039140326738

namespace A117722

/-- `round(A000045(comp[floor(ϕ*n)])/ϕ)` -/
def P12987084039140326738.Spec : Prop :=
  ∀ n, P12987084039140326738.a n = A117722 n

end A117722

/-! ## A117722.P5789871710893182757

`A272912(A283234(n+1))`
-/

namespace A117722.P5789871710893182757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (A283234 (n + 1)).toNat

end

end A117722.P5789871710893182757

namespace A117722

/-- `A272912(A283234(n+1))` -/
def P5789871710893182757.Spec : Prop :=
  ∀ n, P5789871710893182757.a n = A117722 n

end A117722

/-! ## A117722.P17592162925693258377

`A247051(A284395(n+2))`
-/

namespace A117722.P17592162925693258377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247051 (A284395 (n + 2)).toNat

end

end A117722.P17592162925693258377

namespace A117722

/-- `A247051(A284395(n+2))` -/
def P17592162925693258377.Spec : Prop :=
  ∀ n, P17592162925693258377.a n = A117722 n

end A117722

/-!
# A117723: Numbers for which the product of the digits is the square root of the sum of the digits.

The programs for A117723, there is no canonical definition to state claims against.
-/

/-! ## A117723.P630919776314663927

`eq[A007954(n)², dr(n)]`
-/

namespace A117723.P630919776314663927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A117723.P630919776314663927

/-!
# A117725: Zeroless numbers for which the sum of the digits and the product of the digits are both Fibonacci numbers.

The programs for A117725, the canonical program `A117725.P10630623760424057360` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117725 has offset 1).

The definition of A117725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117725.P10630623760424057360

`∩[A028840(n+1), A028890(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A117725

/-- `∩[A028840(n+1), A028890(n+1)]` -/
def P10630623760424057360.Spec : Prop :=
  ∀ n, (P10630623760424057360.a n : ℤ) = A117725 (n + 1)

theorem P10630623760424057360.correct : P10630623760424057360.Spec := by
  intro n
  simp only [A117725, Nat.add_sub_cancel]

end A117725

/-! ## A117725.P14931465500307335361

`filter[A126969(n+1), A189141(#)]`
-/

namespace A117725.P14931465500307335361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189141 (f1 j).toNat = 1) n)

end

end A117725.P14931465500307335361

namespace A117725

/-- `filter[A126969(n+1), A189141(#)]` -/
def P14931465500307335361.Spec : Prop :=
  ∀ n, P14931465500307335361.a n = A117725 (n + 1)

end A117725

/-! ## A117725.P884832562932903567

`eq[A077814(A008619(n)), A191607(n+1)]`
-/

namespace A117725.P884832562932903567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (A008619 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191607 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117725.P884832562932903567

namespace A117725

/-- `eq[A077814(A008619(n)), A191607(n+1)]` -/
def P884832562932903567.Spec : Prop :=
  ∀ n, (P884832562932903567.a n : ℤ) = A117725 (n + 1)

end A117725

/-!
# A117726: Moreno and Wagstaff's arithmetical function T(n).

The programs for A117726, there is no canonical definition to state claims against.
-/

/-! ## A117726.P11338064895948888790

`2*A117728(n+1)`
-/

namespace A117726.P11338064895948888790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117728 (n + 1)

end

end A117726.P11338064895948888790

/-! ## A117726.P17005513616024785534

`A004277(A117728(n+1))`
-/

namespace A117726.P17005513616024785534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A117728 (n + 1)).toNat

end

end A117726.P17005513616024785534

/-! ## A117726.P5159927614301858877

`A000267(A117728(n+1)²)`
-/

namespace A117726.P5159927614301858877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A117728 (n + 1) ^ 2).toNat

end

end A117726.P5159927614301858877

/-! ## A117726.P12580355748243623669

`A027434(A117728(n+1)²)`
-/

namespace A117726.P12580355748243623669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A117728 (n + 1) ^ 2).toNat

end

end A117726.P12580355748243623669

/-! ## A117726.P3153972373019865213

`A034867(A117728(n+1)²)`
-/

namespace A117726.P3153972373019865213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (A117728 (n + 1) ^ 2).toNat

end

end A117726.P3153972373019865213

/-! ## A117726.P11192795433641596249

`A004275(A117728(n+1)+1)`
-/

namespace A117726.P11192795433641596249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A117728 (n + 1) + 1).toNat

end

end A117726.P11192795433641596249

/-! ## A117726.P4970247162283596027

`A004273(A117728(n+1)+1)-1`
-/

namespace A117726.P4970247162283596027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A117728 (n + 1) + 1).toNat - 1

end

end A117726.P4970247162283596027

/-! ## A117726.P1100807512898828529

`A189917(A117728(n+1)+1)/2`
-/

namespace A117726.P1100807512898828529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189917 (A117728 (n + 1) + 1).toNat : ℚ) / 2

end

end A117726.P1100807512898828529

/-! ## A117726.P11758557997911727274

`A259825(n+1)+A153182(n+1)`
-/

namespace A117726.P11758557997911727274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (n + 1) + A153182 (n + 1)

end

end A117726.P11758557997911727274

/-! ## A117726.P9353162790459560108

`A005843(A117728(n+1)%(n+2))`
-/

namespace A117726.P9353162790459560108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A117728 (n + 1)) (n + 2 : ℤ)).toNat

end

end A117726.P9353162790459560108

/-!
# A117727: Partial sums of A051109.

The programs for A117727, the canonical program `A117727.P15651424840382473038` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117727 has offset 0).

The definition of A117727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117727.P15651424840382473038

`a(n-1)+10*a(n-3)-10*a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=18`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A117727

/-- `a(n-1)+10*a(n-3)-10*a(n-4)` -/
def P15651424840382473038.Spec : Prop :=
  ∀ n, P15651424840382473038.a n = A117727 n

theorem P15651424840382473038.correct : P15651424840382473038.Spec := by
  intro n
  simp only [A117727]

end A117727

/-! ## A117727.P11939735315795803624

`∑[10*a(n-3)]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A117727.P11939735315795803624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  10 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117727.P11939735315795803624

namespace A117727

/-- `∑[10*a(n-3)]` -/
def P11939735315795803624.Spec : Prop :=
  ∀ n, (P11939735315795803624.a n : ℤ) = A117727 n

end A117727

/-! ## A117727.P16209247529445454437

`10*a(n-3)+8` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A117727.P16209247529445454437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  10 * a (n - 3) + 8

end

end A117727.P16209247529445454437

namespace A117727

/-- `10*a(n-3)+8` -/
def P16209247529445454437.Spec : Prop :=
  ∀ n, (P16209247529445454437.a n : ℤ) = A117727 n

end A117727

/-! ## A117727.P15094654954844449838

`∑[A051109(n)]`
-/

namespace A117727.P15094654954844449838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117727.P15094654954844449838

namespace A117727

/-- `∑[A051109(n)]` -/
def P15094654954844449838.Spec : Prop :=
  ∀ n, P15094654954844449838.a n = A117727 n

end A117727

/-! ## A117727.P6051754972275637722

`∑[A004647(n+1)/2]`
-/

namespace A117727.P6051754972275637722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004647 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117727.P6051754972275637722

namespace A117727

/-- `∑[A004647(n+1)/2]` -/
def P6051754972275637722.Spec : Prop :=
  ∀ n, P6051754972275637722.a n = (A117727 n : ℚ)

end A117727

/-! ## A117727.P4047348207125481979

`∑[record[Δ[A004655(n+1)/2]]]`
-/

namespace A117727.P4047348207125481979
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004655 (n + 1) : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117727.P4047348207125481979

namespace A117727

/-- `∑[record[Δ[A004655(n+1)/2]]]` -/
def P4047348207125481979.Spec : Prop :=
  ∀ n, P4047348207125481979.a n = (A117727 n : ℚ)

end A117727

/-! ## A117727.P18440451544117008616

`∑[∏[A022309(n)%2/2+2]]/2`
-/

namespace A117727.P18440451544117008616
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A022309 n) 2 : ℚ) / 2 + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A117727.P18440451544117008616

namespace A117727

/-- `∑[∏[A022309(n)%2/2+2]]/2` -/
def P18440451544117008616.Spec : Prop :=
  ∀ n, P18440451544117008616.a n = (A117727 n : ℚ)

end A117727

/-! ## A117727.P4025861933882409758

`∑[A232646(A251599(n+1))]`
-/

namespace A117727.P4025861933882409758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232646 (A251599 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117727.P4025861933882409758

namespace A117727

/-- `∑[A232646(A251599(n+1))]` -/
def P4025861933882409758.Spec : Prop :=
  ∀ n, P4025861933882409758.a n = A117727 n

end A117727

/-!
# A117728: A117726(n)/2.

The programs for A117728, there is no canonical definition to state claims against.
-/

/-! ## A117728.P2943393969652168084

`A117726(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117728.P2943393969652168084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117726 (n + 1) : ℚ) / 2

end

end A117728.P2943393969652168084

/-! ## A117728.P5871404272078851014

`(A259825(n+1)+A153182(n+1))/2`
-/

namespace A117728.P5871404272078851014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 (n + 1) + A153182 (n + 1) : ℚ) / 2

end

end A117728.P5871404272078851014

/-! ## A117728.P4354363497952637306

`A005794(4*(n+1))-A005794(n+1)`
-/

namespace A117728.P4354363497952637306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (4 * (n + 1)) - A005794 (n + 1)

end

end A117728.P4354363497952637306

/-! ## A117728.P16142083935735784385

`A006374(4*(n+1))-A006374(n+1)`
-/

namespace A117728.P16142083935735784385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (4 * (n + 1)) - A006374 (n + 1)

end

end A117728.P16142083935735784385

/-! ## A117728.P1351797596221921738

`(A005875(n+1)-A153182(n+1))/4`
-/

namespace A117728.P1351797596221921738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (n + 1) - A153182 (n + 1) : ℚ) / 4

end

end A117728.P1351797596221921738

/-! ## A117728.P15726608425141083218

`(A153182(n+1)-A256624(n+1))/4`
-/

namespace A117728.P15726608425141083218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153182 (n + 1) - A256624 (n + 1) : ℚ) / 4

end

end A117728.P15726608425141083218

/-! ## A117728.P10215975521646156931

`A001281(A117726(n+1))`
-/

namespace A117728.P10215975521646156931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A117726 (n + 1)).toNat

end

end A117728.P10215975521646156931

/-! ## A117728.P9419802772965264458

`A004526(A117726(n+1)+1)`
-/

namespace A117728.P9419802772965264458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A117726 (n + 1) + 1).toNat

end

end A117728.P9419802772965264458

/-! ## A117728.P16244074070169841884

`A003602(A117726(n+1)-1)`
-/

namespace A117728.P16244074070169841884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A117726 (n + 1) - 1).toNat

end

end A117728.P16244074070169841884

/-! ## A117728.P15510589657080825780

`A065033(A117726(n+1)-1)`
-/

namespace A117728.P15510589657080825780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A117726 (n + 1) - 1).toNat

end

end A117728.P15510589657080825780

/-!
# A117729: Orders k of cyclic groups C_k such that the map "G -> Automorphism group of G" eventually reaches the trivial group when started at C_k.

The programs for A117729, there is no canonical definition to state claims against.
-/

/-! ## A117729.P3960698612296802974

`record[A179401(n+1)%A342948(3*n+4)]`
-/

namespace A117729.P3960698612296802974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179401 (n + 1)) (A342948 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117729.P3960698612296802974

/-! ## A117729.P1775299246777906732

`A179401(n+1)%A059802(n+1)`
-/

namespace A117729.P1775299246777906732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179401 (n + 1)) (A059802 (n + 1))

end

end A117729.P1775299246777906732

/-! ## A117729.P1571291141825592065

`∩[A122079(n+1), A179401(n+1)]`
-/

namespace A117729.P1571291141825592065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117729.P1571291141825592065

/-! ## A117729.P14304987880082628683

`A179401(n+1)%A004927(A102462(n))`
-/

namespace A117729.P14304987880082628683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179401 (n + 1)) (A004927 (A102462 n).toNat)

end

end A117729.P14304987880082628683

/-! ## A117729.P7859719229860419445

`A179401(n+1)+A000007(A020495(n+1))`
-/

namespace A117729.P7859719229860419445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1) + A000007 (A020495 (n + 1)).toNat

end

end A117729.P7859719229860419445

/-!
# A117730: Numbers for which the largest proper divisor is a Fibonacci number.

The programs for A117730, there is no canonical definition to state claims against.
-/

/-! ## A117730.P14990028227769235756

`record[A020639(n+2)*A280686(n+2)]`
-/

namespace A117730.P14990028227769235756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A280686 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117730.P14990028227769235756

/-! ## A117730.P10469713041568092895

`eq[1, A000119(A089196(n+1))]+2`
-/

namespace A117730.P10469713041568092895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A089196 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A117730.P10469713041568092895

/-! ## A117730.P14257804451560782822

`eq[A032742(n+2), A280686(n+2)]+2`
-/

namespace A117730.P14257804451560782822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280686 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A117730.P14257804451560782822

/-! ## A117730.P9930979401304434679

`eq[A000045(A280686(n+2)), A105800(n+2)]+2`
-/

namespace A117730.P9930979401304434679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A280686 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A117730.P9930979401304434679

/-! ## A117730.P13493731185260360068

`A078448(n+1)+A000035(A030034(n))`
-/

namespace A117730.P13493731185260360068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078448 (n + 1) + A000035 (A030034 n).toNat

end

end A117730.P13493731185260360068

/-!
# A117731: Numerator of the fraction n*Sum_{k=1..n} 1/(n+k).

The programs for A117731, there is no canonical definition to state claims against.
-/

/-! ## A117731.P668620985308579353

`A082687(n+1)*A119788(2*(n+1))`
-/

namespace A117731.P668620985308579353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082687 (n + 1) * A119788 (2 * (n + 1))

end

end A117731.P668620985308579353

/-! ## A117731.P3501236615316107552

`A058313(2*(n+1))*A119788(2*(n+1))`
-/

namespace A117731.P3501236615316107552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (2 * (n + 1)) * A119788 (2 * (n + 1))

end

end A117731.P3501236615316107552

/-! ## A117731.P13850969343354864027

`A119030(n+1)+A117664(n+1)`
-/

namespace A117731.P13850969343354864027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119030 (n + 1) + A117664 (n + 1)

end

end A117731.P13850969343354864027

/-! ## A117731.P8187979348906789188

`lcm(A082687(n+1), A119788((n+1)²))`
-/

namespace A117731.P8187979348906789188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082687 (n + 1)) (A119788 ((n + 1) ^ 2))

end

end A117731.P8187979348906789188

/-! ## A117731.P6647230131444752112

`A119030(n+1)+A296519(n+1)/2`
-/

namespace A117731.P6647230131444752112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119030 (n + 1) : ℚ) + (A296519 (n + 1) : ℚ) / 2

end

end A117731.P6647230131444752112

/-!
# A117732: Numbers k that divide s(k)^w(k), where s(k) is the sum of the digits of k and w(k) is the digital root of k.

The programs for A117732, there is no canonical definition to state claims against.
-/

/-! ## A117732.P5606420117646516873

`record[gcd(n, A067040(A007953(n)))]`
-/

namespace A117732.P5606420117646516873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A067040 (A007953 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117732.P5606420117646516873

/-! ## A117732.P6303637117998646027

`A334601(∑[A068045(n)])`
-/

namespace A117732.P6303637117998646027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117732.P6303637117998646027

/-! ## A117732.P2773032555278711011

`A334601(A068045(n)+n)`
-/

namespace A117732.P2773032555278711011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334601 (A068045 n + (n : ℤ)).toNat

end

end A117732.P2773032555278711011

/-! ## A117732.P13295127863278518239

`A334601(∑[A208879(n)!])`
-/

namespace A117732.P13295127863278518239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A208879 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334601 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117732.P13295127863278518239

/-! ## A117732.P17059571813658351966

`A334601(∑[A269954(n)!])`
-/

namespace A117732.P17059571813658351966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A269954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334601 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117732.P17059571813658351966

/-!
# A117733: Sum of the n-th primorial and the n-th compositorial number.

The programs for A117733, the canonical program `A117733.P723624204475833034` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117733 has offset 1).

The definition of A117733 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, A049614, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117733.P723624204475833034

`A034386(n+1)+A049614(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117733

/-- `A034386(n+1)+A049614(n+1)` -/
def P723624204475833034.Spec : Prop :=
  ∀ n, P723624204475833034.a n = A117733 (n + 1)

theorem P723624204475833034.correct : P723624204475833034.Spec := by
  intro n
  simp only [A117733, Nat.add_sub_cancel]

end A117733

/-! ## A117733.P14139727472931001918

`A049614(n+1)+A372000(n+1)*A372007(n+1)`
-/

namespace A117733.P14139727472931001918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (n + 1) + A372000 (n + 1) * A372007 (n + 1)

end

end A117733.P14139727472931001918

namespace A117733

/-- `A049614(n+1)+A372000(n+1)*A372007(n+1)` -/
def P14139727472931001918.Spec : Prop :=
  ∀ n, P14139727472931001918.a n = A117733 (n + 1)

end A117733

/-! ## A117733.P16558617988253130103

`A034386(n+1)+A300902(n+1)/A089026(n+1)`
-/

namespace A117733.P16558617988253130103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) + (A300902 (n + 1) : ℚ) / (A089026 (n + 1) : ℚ)

end

end A117733.P16558617988253130103

namespace A117733

/-- `A034386(n+1)+A300902(n+1)/A089026(n+1)` -/
def P16558617988253130103.Spec : Prop :=
  ∀ n, P16558617988253130103.a n = (A117733 (n + 1) : ℚ)

end A117733

/-! ## A117733.P17190834584389028720

`A034386(n+1)+A000142(n+1)/A034386(n+1)`
-/

namespace A117733.P17190834584389028720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) + (A000142 (n + 1) : ℚ) / (A034386 (n + 1) : ℚ)

end

end A117733.P17190834584389028720

namespace A117733

/-- `A034386(n+1)+A000142(n+1)/A034386(n+1)` -/
def P17190834584389028720.Spec : Prop :=
  ∀ n, P17190834584389028720.a n = (A117733 (n + 1) : ℚ)

end A117733

/-! ## A117733.P2889431656985555424

`A049614(n+1)+A000142(n+1)/A049614(n+1)`
-/

namespace A117733.P2889431656985555424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049614 (n + 1) : ℚ) + (A000142 (n + 1) : ℚ) / (A049614 (n + 1) : ℚ)

end

end A117733.P2889431656985555424

namespace A117733

/-- `A049614(n+1)+A000142(n+1)/A049614(n+1)` -/
def P2889431656985555424.Spec : Prop :=
  ∀ n, P2889431656985555424.a n = (A117733 (n + 1) : ℚ)

end A117733

/-!
# A117734: Absolute difference between the n-th primorial and the n-th compositorial number.

The programs for A117734, there is no canonical definition to state claims against.
-/

/-! ## A117734.P10709532042703269793

`abs(A034386(n+1)-A049614(n+1))`
-/

namespace A117734.P10709532042703269793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034386 (n + 1) - A049614 (n + 1)|

end

end A117734.P10709532042703269793

/-! ## A117734.P1437766629713554413

`A034386(n+1)-A136102(A034386(n))`
-/

namespace A117734.P1437766629713554413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1) - A136102 (A034386 n).toNat

end

end A117734.P1437766629713554413

/-!
# A117735: a(n) = n! - primorial(n).

The programs for A117735, the canonical program `A117735.P13796720657671421151` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117735 has offset 0).

The definition of A117735 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117735.P13796720657671421151

`A000142(n)-A034386(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117735

/-- `A000142(n)-A034386(n)` -/
def P13796720657671421151.Spec : Prop :=
  ∀ n, P13796720657671421151.a n = A117735 n

theorem P13796720657671421151.correct : P13796720657671421151.Spec := by
  intro n
  simp only [A117735]

end A117735

/-! ## A117735.P4069979681094963172

`n!-A300951(2*n)`
-/

namespace A117735.P4069979681094963172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A300951 (2 * n)

end

end A117735.P4069979681094963172

namespace A117735

/-- `n!-A300951(2*n)` -/
def P4069979681094963172.Spec : Prop :=
  ∀ n, P4069979681094963172.a n = A117735 n

end A117735

/-! ## A117735.P15444099869189510439

`n!-n!/A049614(n)`
-/

namespace A117735.P15444099869189510439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) - (Nat.factorial n : ℚ) / (A049614 n : ℚ)

end

end A117735.P15444099869189510439

namespace A117735

/-- `n!-n!/A049614(n)` -/
def P15444099869189510439.Spec : Prop :=
  ∀ n, P15444099869189510439.a n = (A117735 n : ℚ)

end A117735

/-! ## A117735.P678082117788790018

`n!-∏[gcd(n, A185387(n))]`
-/

namespace A117735.P678082117788790018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A185387 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117735.P678082117788790018

namespace A117735

/-- `n!-∏[gcd(n, A185387(n))]` -/
def P678082117788790018.Spec : Prop :=
  ∀ n, P678082117788790018.a n = A117735 n

end A117735

/-! ## A117735.P4352440974668890536

`(A049614(n)-1)*A034386(n)`
-/

namespace A117735.P4352440974668890536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049614 n - 1) * A034386 n

end

end A117735.P4352440974668890536

namespace A117735

/-- `(A049614(n)-1)*A034386(n)` -/
def P4352440974668890536.Spec : Prop :=
  ∀ n, P4352440974668890536.a n = A117735 n

end A117735

/-! ## A117735.P12863709079854938290

`A081123(2*n)-A034386(n)`
-/

namespace A117735.P12863709079854938290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * n) - A034386 n

end

end A117735.P12863709079854938290

namespace A117735

/-- `A081123(2*n)-A034386(n)` -/
def P12863709079854938290.Spec : Prop :=
  ∀ n, P12863709079854938290.a n = A117735 n

end A117735

/-! ## A117735.P13782945434090255336

`A000142(n)-A300951(2*n)`
-/

namespace A117735.P13782945434090255336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A300951 (2 * n)

end

end A117735.P13782945434090255336

namespace A117735

/-- `A000142(n)-A300951(2*n)` -/
def P13782945434090255336.Spec : Prop :=
  ∀ n, P13782945434090255336.a n = A117735 n

end A117735

/-! ## A117735.P9936819365947325283

`A049614(n)+A117736(n)-A034386(n)`
-/

namespace A117735.P9936819365947325283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 n + (A117736 n - A034386 n)

end

end A117735.P9936819365947325283

namespace A117735

/-- `A049614(n)+A117736(n)-A034386(n)` -/
def P9936819365947325283.Spec : Prop :=
  ∀ n, P9936819365947325283.a n = A117735 n

end A117735

/-! ## A117735.P15482105584299374846

`A056040(n)*A180064(n)-A034386(n)`
-/

namespace A117735.P15482105584299374846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A180064 n - A034386 n

end

end A117735.P15482105584299374846

namespace A117735

/-- `A056040(n)*A180064(n)-A034386(n)` -/
def P15482105584299374846.Spec : Prop :=
  ∀ n, P15482105584299374846.a n = A117735 n

end A117735

/-! ## A117735.P13017840234697385956

`A055773(n)*A182922(n)-A034386(n)`
-/

namespace A117735.P13017840234697385956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 n * A182922 n - A034386 n

end

end A117735.P13017840234697385956

namespace A117735

/-- `A055773(n)*A182922(n)-A034386(n)` -/
def P13017840234697385956.Spec : Prop :=
  ∀ n, P13017840234697385956.a n = A117735 n

end A117735

/-!
# A117736: factorial(n) - A049614(n).

The programs for A117736, the canonical program `A117736.P2900786321532737672` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117736 has offset 0).

The definition of A117736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117736.P2900786321532737672

`n!-A049614(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117736

/-- `n!-A049614(n)` -/
def P2900786321532737672.Spec : Prop :=
  ∀ n, P2900786321532737672.a n = A117736 n

theorem P2900786321532737672.correct : P2900786321532737672.Spec := by
  intro n
  simp only [A117736]

end A117736

/-! ## A117736.P13241458081305420119

`A000142(n)-A049614(n)`
-/

namespace A117736.P13241458081305420119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A049614 n

end

end A117736.P13241458081305420119

namespace A117736

/-- `A000142(n)-A049614(n)` -/
def P13241458081305420119.Spec : Prop :=
  ∀ n, P13241458081305420119.a n = A117736 n

end A117736

/-! ## A117736.P482656254948668424

`n!-∏[gcd(n, A048855(n))]`
-/

namespace A117736.P482656254948668424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A048855 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117736.P482656254948668424

namespace A117736

/-- `n!-∏[gcd(n, A048855(n))]` -/
def P482656254948668424.Spec : Prop :=
  ∀ n, P482656254948668424.a n = A117736 n

end A117736

/-! ## A117736.P13914936161134218171

`n!-A300902(n+1)/(n+1)`
-/

namespace A117736.P13914936161134218171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) - (A300902 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A117736.P13914936161134218171

namespace A117736

/-- `n!-A300902(n+1)/(n+1)` -/
def P13914936161134218171.Spec : Prop :=
  ∀ n, P13914936161134218171.a n = (A117736 n : ℚ)

end A117736

/-! ## A117736.P8764016993079751337

`∏[A028310(n)]-A049614(n)`
-/

namespace A117736.P8764016993079751337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A049614 n

end

end A117736.P8764016993079751337

namespace A117736

/-- `∏[A028310(n)]-A049614(n)` -/
def P8764016993079751337.Spec : Prop :=
  ∀ n, P8764016993079751337.a n = A117736 n

end A117736

/-! ## A117736.P10277163582620470855

`(A034386(n)-1)*A049614(n)`
-/

namespace A117736.P10277163582620470855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034386 n - 1) * A049614 n

end

end A117736.P10277163582620470855

namespace A117736

/-- `(A034386(n)-1)*A049614(n)` -/
def P10277163582620470855.Spec : Prop :=
  ∀ n, P10277163582620470855.a n = A117736 n

end A117736

/-! ## A117736.P11291252355270260861

`A000142(n)-A000142(n)/A034386(n)`
-/

namespace A117736.P11291252355270260861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) - (A000142 n : ℚ) / (A034386 n : ℚ)

end

end A117736.P11291252355270260861

namespace A117736

/-- `A000142(n)-A000142(n)/A034386(n)` -/
def P11291252355270260861.Spec : Prop :=
  ∀ n, P11291252355270260861.a n = (A117736 n : ℚ)

end A117736

/-! ## A117736.P8356677742273053378

`A000142(n)-A000142(n+1)/A066332(n+2)`
-/

namespace A117736.P8356677742273053378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) - (A000142 (n + 1) : ℚ) / (A066332 (n + 2) : ℚ)

end

end A117736.P8356677742273053378

namespace A117736

/-- `A000142(n)-A000142(n+1)/A066332(n+2)` -/
def P8356677742273053378.Spec : Prop :=
  ∀ n, P8356677742273053378.a n = (A117736 n : ℚ)

end A117736

/-!
# A117737: Numbers such that the (positive) difference between the sum of the digits and the product of the digits is a prime number.

The programs for A117737, there is no canonical definition to state claims against.
-/

/-! ## A117737.P9891276452931964928

`∪[A066024(n+1), A066027(n+1)]`
-/

namespace A117737.P9891276452931964928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117737.P9891276452931964928

/-! ## A117737.P2500230974577751575

`eq[0, A007920(abs(A062329(n)))]`
-/

namespace A117737.P2500230974577751575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 |A062329 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117737.P2500230974577751575

/-! ## A117737.P855833114672881906

`eq[0, A325142(abs(A062329(n)))]`
-/

namespace A117737.P855833114672881906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 |A062329 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117737.P855833114672881906

/-! ## A117737.P10838499025971198640

`eq[1, A003415(abs(A062329(n)))]`
-/

namespace A117737.P10838499025971198640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 |A062329 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117737.P10838499025971198640

/-! ## A117737.P2442813006678981258

`eq[1, A032741(abs(A062329(n)))]`
-/

namespace A117737.P2442813006678981258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 |A062329 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117737.P2442813006678981258

/-! ## A117737.P2310410127300290030

`eq[1, A105700(abs(A062329(n)))]`
-/

namespace A117737.P2310410127300290030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 |A062329 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117737.P2310410127300290030

/-! ## A117737.P18410590784575190155

`eq[2, A073855(abs(A062329(n)))]`
-/

namespace A117737.P18410590784575190155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 |A062329 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117737.P18410590784575190155

/-! ## A117737.P2056783094796892286

`eq[2, A074206(A062329(n)²)]`
-/

namespace A117737.P2056783094796892286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A062329 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117737.P2056783094796892286

/-! ## A117737.P11479619628002678393

`eq[2, A032741(A062329(n)²)]`
-/

namespace A117737.P11479619628002678393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A062329 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117737.P11479619628002678393

/-! ## A117737.P5708903423693088670

`eq[2, A105700(A062329(n)²)]`
-/

namespace A117737.P5708903423693088670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A062329 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117737.P5708903423693088670

/-!
# A117738: Least number d such that 10^n - /+ 3d form a prime pair.

The programs for A117738, there is no canonical definition to state claims against.
-/

/-! ## A117738.P17768720339997598898

`A115564(n+1)/3`
-/

namespace A117738.P17768720339997598898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115564 (n + 1) : ℚ) / 3

end

end A117738.P17768720339997598898

/-! ## A117738.P9967330756937823692

`A006083(A115564(n+1))`
-/

namespace A117738.P9967330756937823692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A115564 (n + 1)).toNat

end

end A117738.P9967330756937823692

/-! ## A117738.P8284712194920221193

`A099254(A115564(n+1)-1)`
-/

namespace A117738.P8284712194920221193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (A115564 (n + 1) - 1).toNat

end

end A117738.P8284712194920221193

/-! ## A117738.P7180248390832471714

`A090701(A115564(n+1)-2)`
-/

namespace A117738.P7180248390832471714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090701 (A115564 (n + 1) - 2).toNat

end

end A117738.P7180248390832471714

/-! ## A117738.P16161253476907677530

`A126760(A115564(n+1)-2)`
-/

namespace A117738.P16161253476907677530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A115564 (n + 1) - 2).toNat

end

end A117738.P16161253476907677530

/-!
# A117740: Prime Fibonacci numbers that are Chen primes.

The programs for A117740, there is no canonical definition to state claims against.
-/

/-! ## A117740.P16515441959956833599

`p?[A177372(n+1)]`
-/

namespace A117740.P16515441959956833599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117740.P16515441959956833599

/-! ## A117740.P1097747788312904030

`p?[A000045(round(n²/20))]`
-/

namespace A117740.P1097747788312904030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 20)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117740.P1097747788312904030

/-! ## A117740.P13467352606799493706

`A005478(comp[Δ[∑{d}[n+1, #]²]])`
-/

namespace A117740.P13467352606799493706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f3 n), d) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A117740.P13467352606799493706

/-!
# A117741: Generated by a sieve: delete all numbers which are divisible by n*(n+2).

The programs for A117741, there is no canonical definition to state claims against.
-/

/-! ## A117741.P7421716534617695837

`lt[A100038(n+3), A100042(A100020(n+1))]`
-/

namespace A117741.P7421716534617695837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100038 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100042 (A100020 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117741.P7421716534617695837

/-! ## A117741.P12323438978062733574

`lt[A100039(n+3), A100042(A100020(n+1))]`
-/

namespace A117741.P12323438978062733574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100039 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100042 (A100020 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117741.P12323438978062733574

/-! ## A117741.P7730954199527548175

`lt[A100037(n+4), A100042(A100020(n+1))]`
-/

namespace A117741.P7730954199527548175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100037 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100042 (A100020 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117741.P7730954199527548175

/-! ## A117741.P4895320566291226147

`lt[A100008(A100032(2*(n+2))), A100020(n+1)]`
-/

namespace A117741.P4895320566291226147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100008 (A100032 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117741.P4895320566291226147

/-! ## A117741.P7870675479061962406

`∩[A274384(n+1), A325367(n+1)]`
-/

namespace A117741.P7870675479061962406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117741.P7870675479061962406

/-!
# A117742: Triangle read by rows: coefficient of x^n in the Taylor expansion of x/(1 - m*x - x^4) in row n, column m=1..n+2.

The programs for A117742, there is no canonical definition to state claims against.
-/

/-! ## A117742.P4644793482729754589

`A117716(n)-A275949(A185274(n+1))`
-/

namespace A117742.P4644793482729754589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117716 n - A275949 (A185274 (n + 1)).toNat

end

end A117742.P4644793482729754589

/-! ## A117742.P11648409737172301094

`gcd(A117716(n), A329039(A057721(n)))`
-/

namespace A117742.P11648409737172301094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117716 n) (A329039 (A057721 n).toNat)

end

end A117742.P11648409737172301094

/-! ## A117742.P8050016492092259547

`A117716(n)-A185284(A003277(n+1))`
-/

namespace A117742.P8050016492092259547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117716 n - A185284 (A003277 (n + 1)).toNat

end

end A117742.P8050016492092259547

/-! ## A117742.P4885009663445997874

`A117716(n)-A336355(A024948(n+1))`
-/

namespace A117742.P4885009663445997874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117716 n - A336355 (A024948 (n + 1)).toNat

end

end A117742.P4885009663445997874

/-!
# A117743: Chen primes that are not Fibonacci numbers.

The programs for A117743, there is no canonical definition to state claims against.
-/

/-! ## A117743.P4726429583991741164

`∩[A001690(n+1), A109611(n+1)]`
-/

namespace A117743.P4726429583991741164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117743.P4726429583991741164

/-! ## A117743.P16825412242372357604

`∩[A065105(n+1), A109611(n+1)]`
-/

namespace A117743.P16825412242372357604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117743.P16825412242372357604

/-! ## A117743.P2547364131796206097

`∩[A109611(n+1), A147956(n+1)]`
-/

namespace A117743.P2547364131796206097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117743.P2547364131796206097

/-! ## A117743.P7980983789920201068

`∩[A139690(n+1)-2, A147956(n+1)]`
-/

namespace A117743.P7980983789920201068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117743.P7980983789920201068

/-! ## A117743.P10448706784240139368

`∩[A147956(n+1), A118776(n)+a(n-1)]` with `a(0)=2`
-/

namespace A117743.P10448706784240139368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A118776 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117743.P10448706784240139368

/-! ## A117743.P17494852880820119089

`∩[A004086(A118495(n+1)), A147956(n+1)]`
-/

namespace A117743.P17494852880820119089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A118495 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117743.P17494852880820119089

/-!
# A117746: Numbers of the form k^2 - k - 1 whose digit sum is also a number of the form k^2 - k - 1.

The programs for A117746, there is no canonical definition to state claims against.
-/

/-! ## A117746.P6103075355531625289

`eq[A248112(n+1), A307833(n+1)]`
-/

namespace A117746.P6103075355531625289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117746.P6103075355531625289

/-!
# A117747: Number of different configurations of cycles (loops) in graphs containing directed and undirected links.

The programs for A117747, there is no canonical definition to state claims against.
-/

/-! ## A117747.P2966804552670653935

`A027671(n+3)-A038754(n+2)`
-/

namespace A117747.P2966804552670653935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027671 (n + 3) - A038754 (n + 2)

end

end A117747.P2966804552670653935

/-! ## A117747.P11672568330392593746

`A027671(n+3)-A182751(n+2)`
-/

namespace A117747.P11672568330392593746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027671 (n + 3) - A182751 (n + 2)

end

end A117747.P11672568330392593746

/-! ## A117747.P16705415766239096573

`A027671(n+3)-A182522(n+3)`
-/

namespace A117747.P16705415766239096573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027671 (n + 3) - A182522 (n + 3)

end

end A117747.P16705415766239096573

/-! ## A117747.P17666232607018622427

`A027671(n+3)-A008486(A038754(n))`
-/

namespace A117747.P17666232607018622427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027671 (n + 3) - A008486 (A038754 n).toNat

end

end A117747.P17666232607018622427

/-!
# A117748: Triangular numbers divisible by 3.

The programs for A117748, the canonical program `A117748.P6377356464748108115` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117748 has offset 1).

The definition of A117748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117748.P6377356464748108115

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=15, a(4)=21`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A117748

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6377356464748108115.Spec : Prop :=
  ∀ n, P6377356464748108115.a n = A117748 (n + 1)

theorem P6377356464748108115.correct : P6377356464748108115.Spec := by
  intro n
  simp only [A117748, Nat.add_sub_cancel]

end A117748

/-! ## A117748.P3636464001121080287

`3*A001318(n)`
-/

namespace A117748.P3636464001121080287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001318 n

end

end A117748.P3636464001121080287

namespace A117748

/-- `3*A001318(n)` -/
def P3636464001121080287.Spec : Prop :=
  ∀ n, P3636464001121080287.a n = A117748 (n + 1)

end A117748

/-! ## A117748.P7015485713757238166

`∑[3*gcd(n, ∑[n])]`
-/

namespace A117748.P7015485713757238166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117748.P7015485713757238166

namespace A117748

/-- `∑[3*gcd(n, ∑[n])]` -/
def P7015485713757238166.Spec : Prop :=
  ∀ n, (P7015485713757238166.a n : ℤ) = A117748 (n + 1)

end A117748

/-! ## A117748.P6971621003002224936

`∑[lcm(2, 3*n)/2]`
-/

namespace A117748.P6971621003002224936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117748.P6971621003002224936

namespace A117748

/-- `∑[lcm(2, 3*n)/2]` -/
def P6971621003002224936.Spec : Prop :=
  ∀ n, P6971621003002224936.a n = (A117748 (n + 1) : ℚ)

end A117748

/-! ## A117748.P2599991512021381537

`C(∑[n%2+1], 2)`
-/

namespace A117748.P2599991512021381537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117748.P2599991512021381537

namespace A117748

/-- `C(∑[n%2+1], 2)` -/
def P2599991512021381537.Spec : Prop :=
  ∀ n, (P2599991512021381537.a n : ℤ) = A117748 (n + 1)

end A117748

/-! ## A117748.P18424394616755847562

`C(∑[gcd(2, n+1)], 2)`
-/

namespace A117748.P18424394616755847562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117748.P18424394616755847562

namespace A117748

/-- `C(∑[gcd(2, n+1)], 2)` -/
def P18424394616755847562.Spec : Prop :=
  ∀ n, (P18424394616755847562.a n : ℤ) = A117748 (n + 1)

end A117748

/-! ## A117748.P1552246736096901227

`C(∑[and(1, n)+1], 2)`
-/

namespace A117748.P1552246736096901227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117748.P1552246736096901227

namespace A117748

/-- `C(∑[and(1, n)+1], 2)` -/
def P1552246736096901227.Spec : Prop :=
  ∀ n, (P1552246736096901227.a n : ℤ) = A117748 (n + 1)

end A117748

/-! ## A117748.P10987928257116638256

`C(∑[2^and(1, n)], 2)`
-/

namespace A117748.P10987928257116638256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117748.P10987928257116638256

namespace A117748

/-- `C(∑[2^and(1, n)], 2)` -/
def P10987928257116638256.Spec : Prop :=
  ∀ n, (P10987928257116638256.a n : ℤ) = A117748 (n + 1)

end A117748

/-! ## A117748.P77600837713877233

`C(∑[C(2, and(1, n))], 2)`
-/

namespace A117748.P77600837713877233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117748.P77600837713877233

namespace A117748

/-- `C(∑[C(2, and(1, n))], 2)` -/
def P77600837713877233.Spec : Prop :=
  ∀ n, (P77600837713877233.a n : ℤ) = A117748 (n + 1)

end A117748

/-! ## A117748.P9475841651116099194

`C(∑[((2*n)%4)!], 2)`
-/

namespace A117748.P9475841651116099194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117748.P9475841651116099194

namespace A117748

/-- `C(∑[((2*n)%4)!], 2)` -/
def P9475841651116099194.Spec : Prop :=
  ∀ n, (P9475841651116099194.a n : ℤ) = A117748 (n + 1)

end A117748

/-! ## A117748.P10358371813516196537

`C(floor(3*(n+1)/2), 2)`
-/

namespace A117748.P10358371813516196537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊3 * ((n + 1 : ℚ) / 2)⌋.toNat 2

end

end A117748.P10358371813516196537

namespace A117748

/-- `C(floor(3*(n+1)/2), 2)` -/
def P10358371813516196537.Spec : Prop :=
  ∀ n, (P10358371813516196537.a n : ℤ) = A117748 (n + 1)

end A117748

/-! ## A117748.P5014008509561730601

`∑[n/2^(-1)^n+n]`
-/

namespace A117748.P5014008509561730601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ ((-1) ^ n : ℤ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117748.P5014008509561730601

namespace A117748

/-- `∑[n/2^(-1)^n+n]` -/
def P5014008509561730601.Spec : Prop :=
  ∀ n, P5014008509561730601.a n = (A117748 (n + 1) : ℚ)

end A117748

/-! ## A117748.P5283424367031552105

`floor(A298027(n)/2)`
-/

namespace A117748.P5283424367031552105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298027 n : ℚ) / 2⌋

end

end A117748.P5283424367031552105

namespace A117748

/-- `floor(A298027(n)/2)` -/
def P5283424367031552105.Spec : Prop :=
  ∀ n, P5283424367031552105.a n = A117748 (n + 1)

end A117748

/-! ## A117748.P1704778674429076295

`3*(A319390(n)-1)`
-/

namespace A117748.P1704778674429076295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A319390 n - 1)

end

end A117748.P1704778674429076295

namespace A117748

/-- `3*(A319390(n)-1)` -/
def P1704778674429076295.Spec : Prop :=
  ∀ n, P1704778674429076295.a n = A117748 (n + 1)

end A117748

/-! ## A117748.P16211715287774226745

`(A298037(n)-1)/4`
-/

namespace A117748.P16211715287774226745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298037 n - 1 : ℚ) / 4

end

end A117748.P16211715287774226745

namespace A117748

/-- `(A298037(n)-1)/4` -/
def P16211715287774226745.Spec : Prop :=
  ∀ n, P16211715287774226745.a n = (A117748 (n + 1) : ℚ)

end A117748

/-! ## A117748.P15169029608938615743

`3/2*A152749(n)`
-/

namespace A117748.P15169029608938615743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A152749 n : ℚ)

end

end A117748.P15169029608938615743

namespace A117748

/-- `3/2*A152749(n)` -/
def P15169029608938615743.Spec : Prop :=
  ∀ n, P15169029608938615743.a n = (A117748 (n + 1) : ℚ)

end A117748

/-! ## A117748.P9417013595034339447

`(∑[A298026(n)]-1)/2`
-/

namespace A117748.P9417013595034339447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A117748.P9417013595034339447

namespace A117748

/-- `(∑[A298026(n)]-1)/2` -/
def P9417013595034339447.Spec : Prop :=
  ∀ n, P9417013595034339447.a n = (A117748 (n + 1) : ℚ)

end A117748

/-! ## A117748.P103993242215529141

`A057569(n+1)+∑[n]`
-/

namespace A117748.P103993242215529141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057569 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117748.P103993242215529141

namespace A117748

/-- `A057569(n+1)+∑[n]` -/
def P103993242215529141.Spec : Prop :=
  ∀ n, P103993242215529141.a n = A117748 (n + 1)

end A117748

/-! ## A117748.P4353302499748343820

`(A132354(n)+∑[n])/2`
-/

namespace A117748.P4353302499748343820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132354 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A117748.P4353302499748343820

namespace A117748

/-- `(A132354(n)+∑[n])/2` -/
def P4353302499748343820.Spec : Prop :=
  ∀ n, P4353302499748343820.a n = (A117748 (n + 1) : ℚ)

end A117748

/-! ## A117748.P16224385733538650079

`3/4*A062717(n+1)`
-/

namespace A117748.P16224385733538650079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A062717 (n + 1) : ℚ)

end

end A117748.P16224385733538650079

namespace A117748

/-- `3/4*A062717(n+1)` -/
def P16224385733538650079.Spec : Prop :=
  ∀ n, P16224385733538650079.a n = (A117748 (n + 1) : ℚ)

end A117748

/-!
# A117756: Squares for which the reversed sum of the digits is also a square.

The programs for A117756, there is no canonical definition to state claims against.
-/

/-! ## A117756.P17486592333272719613

`lt[A004159(∑{digits}[n², #]), 10]²`
-/

namespace A117756.P17486592333272719613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n ^ 2

end

end A117756.P17486592333272719613

/-! ## A117756.P1277898577613625379

`lt[A220523(A004159(n)), 5]²`
-/

namespace A117756.P1277898577613625379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 (A004159 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A117756.P1277898577613625379

/-! ## A117756.P15696363733150442921

`lt[A004159(A268227(5*n)), 10]²`
-/

namespace A117756.P15696363733150442921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A268227 (5 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A117756.P15696363733150442921

/-! ## A117756.P8196252734286490828

`lt[A004159(n²-A224977(n)), 10]²`
-/

namespace A117756.P8196252734286490828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 ((n ^ 2 : ℤ) - A224977 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A117756.P8196252734286490828

/-! ## A117756.P17226125447049206354

`lt[A004159(A118881(n)-A067552(n)), 10]²`
-/

namespace A117756.P17226125447049206354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A118881 n - A067552 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A117756.P17226125447049206354

/-!
# A117757: Number of primes between 4^n and 4^(n+1).

The programs for A117757, there is no canonical definition to state claims against.
-/

/-! ## A117757.P10832801292124808508

`Δ[A086680(n)]`
-/

namespace A117757.P10832801292124808508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117757.P10832801292124808508

/-! ## A117757.P2793538626026152024

`Δ[A007053(2*n)]`
-/

namespace A117757.P2793538626026152024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117757.P2793538626026152024

/-! ## A117757.P17049752846501202250

`record[Δ[A007053(n%2+n)]]`
-/

namespace A117757.P17049752846501202250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n % 2 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117757.P17049752846501202250

/-! ## A117757.P11850569648918039334

`record[Δ[A007053(and(1, n)+n)]]`
-/

namespace A117757.P11850569648918039334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (Nat.land 1 n + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117757.P11850569648918039334

/-! ## A117757.P3979573598509082338

`A086680(n+1)-A086680(n)`
-/

namespace A117757.P3979573598509082338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086680 (n + 1) - A086680 n

end

end A117757.P3979573598509082338

/-!
# A117758: Number of primes between the successive central binomial coefficients; i.e., the number of primes in the interval (C(2n,n), C(2n+2,n+1)], with inclusion on the right.

The programs for A117758, there is no canonical definition to state claims against.
-/

/-! ## A117758.P10047547800455278868

`Δ[A081417(∑[4*n])]`
-/

namespace A117758.P10047547800455278868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081417 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117758.P10047547800455278868

/-! ## A117758.P147153376625796227

`abs(Δ[A081417(A046092(n))])`
-/

namespace A117758.P147153376625796227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081417 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A117758.P147153376625796227

/-! ## A117758.P7278367475287683651

`Δ[record[A081417(n*A003602(n+1))]]`
-/

namespace A117758.P7278367475287683651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081417 ((n : ℤ) * A003602 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117758.P7278367475287683651

/-! ## A117758.P16916997111191808210

`Δ[A081417(A046092(n))]%A000032(3*n)`
-/

namespace A117758.P16916997111191808210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081417 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000032 (3 * n))

end

end A117758.P16916997111191808210

/-! ## A117758.P4843312580050057735

`Δ[A081417(A046092(n))]+A008683(4*(n+5))`
-/

namespace A117758.P4843312580050057735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081417 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (4 * (n + 5))

end

end A117758.P4843312580050057735

/-!
# A117760: Expansion of 1/(1 - x - x^3 - x^5 - x^7).

The programs for A117760, the canonical program `A117760.P13577934783419841318` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117760 has offset 0).

The definition of A117760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^3-x^5-x^7))` (program `A117760.P13577934783419841318`, by `A117760.P13577934783419841318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117760.P13577934783419841318

`ogf(1/(1-x-x^3-x^5-x^7))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A117760

/-- `ogf(1/(1-x-x^3-x^5-x^7))` -/
def P13577934783419841318.Spec : Prop :=
  ∀ n, P13577934783419841318.a n = A117760 n

theorem P13577934783419841318.correct : P13577934783419841318.Spec := by
  intro n
  simp only [A117760]

end A117760

/-! ## A117760.P10268674236651575419

`a(n-1)+a(n-3)+a(n-5)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8`
-/

namespace A117760.P10268674236651575419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 5) + a (n - 7)

end

end A117760.P10268674236651575419

namespace A117760

/-- `a(n-1)+a(n-3)+a(n-5)+a(n-7)` -/
def P10268674236651575419.Spec : Prop :=
  ∀ n, (P10268674236651575419.a n : ℤ) = A117760 n

end A117760

/-! ## A117760.P11721514554284433382

`A117761(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A117760.P11721514554284433382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A117761 (n - 2) + a (n - 1)

end

end A117760.P11721514554284433382

namespace A117760

/-- `A117761(n-2)+a(n-1)` -/
def P11721514554284433382.Spec : Prop :=
  ∀ n, P11721514554284433382.a n = A117760 n

end A117760

/-! ## A117760.P3974979618150093664

`A013985(abs(1-n))+A013985(n)`
-/

namespace A117760.P3974979618150093664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013985 |1 - (n : ℤ)|.toNat + A013985 n

end

end A117760.P3974979618150093664

namespace A117760

/-- `A013985(abs(1-n))+A013985(n)` -/
def P3974979618150093664.Spec : Prop :=
  ∀ n, P3974979618150093664.a n = A117760 n

end A117760

/-! ## A117760.P10382715708900013237

`1-∑[A013985(abs(2-n))-A013985(n)]`
-/

namespace A117760.P10382715708900013237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013985 |2 - (n : ℤ)|.toNat - A013985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117760.P10382715708900013237

namespace A117760

/-- `1-∑[A013985(abs(2-n))-A013985(n)]` -/
def P10382715708900013237.Spec : Prop :=
  ∀ n, P10382715708900013237.a n = A117760 n

end A117760

/-! ## A117760.P17262065839542702299

`a(n-1)-(A013985(n-2)-A013985(n))` with `a(0)=1, a(1)=1`
-/

namespace A117760.P17262065839542702299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (A013985 (n - 2) - A013985 n)

end

end A117760.P17262065839542702299

namespace A117760

/-- `a(n-1)-(A013985(n-2)-A013985(n))` -/
def P17262065839542702299.Spec : Prop :=
  ∀ n, P17262065839542702299.a n = A117760 n

end A117760

/-!
# A117761: Expansion of x*(1 + x^2 + x^4)/(1 - x - x^3 - x^5 - x^7).

The programs for A117761, the canonical program `A117761.P10301158915257060352` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117761 has offset 0).

The definition of A117761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^3+x^5)/(1-x-x^3-x^5-x^7))` (program `A117761.P10301158915257060352`, by `A117761.P10301158915257060352.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117761.P10301158915257060352

`ogf((x+x^3+x^5)/(1-x-x^3-x^5-x^7))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A117761

/-- `ogf((x+x^3+x^5)/(1-x-x^3-x^5-x^7))` -/
def P10301158915257060352.Spec : Prop :=
  ∀ n, P10301158915257060352.a n = A117761 n

theorem P10301158915257060352.correct : P10301158915257060352.Spec := by
  intro n
  simp only [A117761]

end A117761

/-! ## A117761.P9029245728878940608

`a(n-1)+a(n-3)+a(n-5)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8`
-/

namespace A117761.P9029245728878940608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 5) + a (n - 7)

end

end A117761.P9029245728878940608

namespace A117761

/-- `a(n-1)+a(n-3)+a(n-5)+a(n-7)` -/
def P9029245728878940608.Spec : Prop :=
  ∀ n, (P9029245728878940608.a n : ℤ) = A117761 n

end A117761

/-! ## A117761.P4192637093128863585

`A013985(n+2)-A013985(n)`
-/

namespace A117761.P4192637093128863585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013985 (n + 2) - A013985 n

end

end A117761.P4192637093128863585

namespace A117761

/-- `A013985(n+2)-A013985(n)` -/
def P4192637093128863585.Spec : Prop :=
  ∀ n, P4192637093128863585.a n = A117761 n

end A117761

/-! ## A117761.P17682485121215922877

`Δ[A117760(n+1)]`
-/

namespace A117761.P17682485121215922877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117761.P17682485121215922877

namespace A117761

/-- `Δ[A117760(n+1)]` -/
def P17682485121215922877.Spec : Prop :=
  ∀ n, P17682485121215922877.a n = A117761 n

end A117761

/-! ## A117761.P11153136840746519106

`abs(Δ[A117760(-xor(n, -1))])`
-/

namespace A117761.P11153136840746519106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117760 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A117761.P11153136840746519106

namespace A117761

/-- `abs(Δ[A117760(-xor(n, -1))])` -/
def P11153136840746519106.Spec : Prop :=
  ∀ n, P11153136840746519106.a n = A117761 n

end A117761

/-! ## A117761.P8324894097073801528

`Δ[A013985(n+1)+A013985(n)]`
-/

namespace A117761.P8324894097073801528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013985 (n + 1) + A013985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117761.P8324894097073801528

namespace A117761

/-- `Δ[A013985(n+1)+A013985(n)]` -/
def P8324894097073801528.Spec : Prop :=
  ∀ n, P8324894097073801528.a n = A117761 n

end A117761

/-! ## A117761.P5146898193493207459

`A117760(n+2)-A117760(n+1)`
-/

namespace A117761.P5146898193493207459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117760 (n + 2) - A117760 (n + 1)

end

end A117761.P5146898193493207459

namespace A117761

/-- `A117760(n+2)-A117760(n+1)` -/
def P5146898193493207459.Spec : Prop :=
  ∀ n, P5146898193493207459.a n = A117761 n

end A117761

/-! ## A117761.P2284450533540956545

`Δ[A023439(n+2)-A023439(n)]`
-/

namespace A117761.P2284450533540956545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023439 (n + 2) - A023439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117761.P2284450533540956545

namespace A117761

/-- `Δ[A023439(n+2)-A023439(n)]` -/
def P2284450533540956545.Spec : Prop :=
  ∀ n, P2284450533540956545.a n = A117761 n

end A117761

/-!
# A117762: a(1) = 6; for n>1, a(n) = prime(n)*(prime(n)^2 - 1)/2.

The programs for A117762, the canonical program `A117762.P18433976159916290446` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117762 has offset 1).

The definition of A117762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A084921, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117762.P18433976159916290446

`A000040(n+1)*A084921(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A117762

/-- `A000040(n+1)*A084921(n+1)` -/
def P18433976159916290446.Spec : Prop :=
  ∀ n, P18433976159916290446.a n = A117762 (n + 1)

theorem P18433976159916290446.correct : P18433976159916290446.Spec := by
  intro n
  simp only [A117762, Nat.add_sub_cancel]

end A117762

/-! ## A117762.P2042456786865002689

`lcm(2, A127918(n+1))`
-/

namespace A117762.P2042456786865002689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A127918 (n + 1))

end

end A117762.P2042456786865002689

namespace A117762

/-- `lcm(2, A127918(n+1))` -/
def P2042456786865002689.Spec : Prop :=
  ∀ n, (P2042456786865002689.a n : ℤ) = A117762 (n + 1)

end A117762

/-! ## A117762.P6143199498640514051

`A054977(n)*A127918(n+1)`
-/

namespace A117762.P6143199498640514051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A127918 (n + 1)

end

end A117762.P6143199498640514051

namespace A117762

/-- `A054977(n)*A127918(n+1)` -/
def P6143199498640514051.Spec : Prop :=
  ∀ n, P6143199498640514051.a n = A117762 (n + 1)

end A117762

/-! ## A117762.P5432339682820641955

`A262354(n+1)/A123932(n)`
-/

namespace A117762.P5432339682820641955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262354 (n + 1) : ℚ) / (A123932 n : ℚ)

end

end A117762.P5432339682820641955

namespace A117762

/-- `A262354(n+1)/A123932(n)` -/
def P5432339682820641955.Spec : Prop :=
  ∀ n, P5432339682820641955.a n = (A117762 (n + 1) : ℚ)

end A117762

/-! ## A117762.P755574276629731298

`A110496(n+1)-A111333(n+1)`
-/

namespace A117762.P755574276629731298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110496 (n + 1) - A111333 (n + 1)

end

end A117762.P755574276629731298

namespace A117762

/-- `A110496(n+1)-A111333(n+1)` -/
def P755574276629731298.Spec : Prop :=
  ∀ n, P755574276629731298.a n = A117762 (n + 1)

end A117762

/-! ## A117762.P7832635704709461476

`(A000007(n)+1)*A127918(n+1)`
-/

namespace A117762.P7832635704709461476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A127918 (n + 1)

end

end A117762.P7832635704709461476

namespace A117762

/-- `(A000007(n)+1)*A127918(n+1)` -/
def P7832635704709461476.Spec : Prop :=
  ∀ n, P7832635704709461476.a n = A117762 (n + 1)

end A117762

/-! ## A117762.P8267242004592418247

`A036690(n+1)*A130290(n+1)`
-/

namespace A117762.P8267242004592418247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) * A130290 (n + 1)

end

end A117762.P8267242004592418247

namespace A117762

/-- `A036690(n+1)*A130290(n+1)` -/
def P8267242004592418247.Spec : Prop :=
  ∀ n, P8267242004592418247.a n = A117762 (n + 1)

end A117762

/-! ## A117762.P5517533564333026473

`A055670(n+1)*A112456(n+1)`
-/

namespace A117762.P5517533564333026473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) * A112456 (n + 1)

end

end A117762.P5517533564333026473

namespace A117762

/-- `A055670(n+1)*A112456(n+1)` -/
def P5517533564333026473.Spec : Prop :=
  ∀ n, P5517533564333026473.a n = A117762 (n + 1)

end A117762

/-! ## A117762.P7467458843037400094

`A138418(n+1)/A006005(n+1)`
-/

namespace A117762.P7467458843037400094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138418 (n + 1) : ℚ) / (A006005 (n + 1) : ℚ)

end

end A117762.P7467458843037400094

namespace A117762

/-- `A138418(n+1)/A006005(n+1)` -/
def P7467458843037400094.Spec : Prop :=
  ∀ n, P7467458843037400094.a n = (A117762 (n + 1) : ℚ)

end A117762

/-! ## A117762.P4527374895130208324

`A262354(n+1)/(A040006(n)-2)`
-/

namespace A117762.P4527374895130208324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262354 (n + 1) : ℚ) / (A040006 n - 2 : ℚ)

end

end A117762.P4527374895130208324

namespace A117762

/-- `A262354(n+1)/(A040006(n)-2)` -/
def P4527374895130208324.Spec : Prop :=
  ∀ n, P4527374895130208324.a n = (A117762 (n + 1) : ℚ)

end A117762

/-! ## A117762.P14900481443710672899

`gcd(A127917(n+1), A138418(n+1))`
-/

namespace A117762.P14900481443710672899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127917 (n + 1)) (A138418 (n + 1))

end

end A117762.P14900481443710672899

namespace A117762

/-- `gcd(A127917(n+1), A138418(n+1))` -/
def P14900481443710672899.Spec : Prop :=
  ∀ n, (P14900481443710672899.a n : ℤ) = A117762 (n + 1)

end A117762

/-! ## A117762.P1159917912628753122

`gcd(A138404(n+1), A138432(n+1))`
-/

namespace A117762.P1159917912628753122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138404 (n + 1)) (A138432 (n + 1))

end

end A117762.P1159917912628753122

namespace A117762

/-- `gcd(A138404(n+1), A138432(n+1))` -/
def P1159917912628753122.Spec : Prop :=
  ∀ n, (P1159917912628753122.a n : ℤ) = A117762 (n + 1)

end A117762

/-! ## A117762.P3379329649395048091

`gcd(A138453(n+1), A244509(n+1))`
-/

namespace A117762.P3379329649395048091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138453 (n + 1)) (A244509 (n + 1))

end

end A117762.P3379329649395048091

namespace A117762

/-- `gcd(A138453(n+1), A244509(n+1))` -/
def P3379329649395048091.Spec : Prop :=
  ∀ n, (P3379329649395048091.a n : ℤ) = A117762 (n + 1)

end A117762

/-! ## A117762.P1450417806627202407

`lcm(A006093(n+1), A036690(n+1))`
-/

namespace A117762.P1450417806627202407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006093 (n + 1)) (A036690 (n + 1))

end

end A117762.P1450417806627202407

namespace A117762

/-- `lcm(A006093(n+1), A036690(n+1))` -/
def P1450417806627202407.Spec : Prop :=
  ∀ n, (P1450417806627202407.a n : ℤ) = A117762 (n + 1)

end A117762

/-! ## A117762.P8429260246890518137

`lcm(A008864(n+1), A036689(n+1))`
-/

namespace A117762.P8429260246890518137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008864 (n + 1)) (A036689 (n + 1))

end

end A117762.P8429260246890518137

namespace A117762

/-- `lcm(A008864(n+1), A036689(n+1))` -/
def P8429260246890518137.Spec : Prop :=
  ∀ n, (P8429260246890518137.a n : ℤ) = A117762 (n + 1)

end A117762

/-! ## A117762.P2873589722148014054

`p?[A084937(n+1)]*A084921(n+1)`
-/

namespace A117762.P2873589722148014054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A084921 (n + 1)

end

end A117762.P2873589722148014054

namespace A117762

/-- `p?[A084937(n+1)]*A084921(n+1)` -/
def P2873589722148014054.Spec : Prop :=
  ∀ n, P2873589722148014054.a n = A117762 (n + 1)

end A117762

/-! ## A117762.P15705447887901342315

`(A006093(n+1)+1)*A084921(n+1)`
-/

namespace A117762.P15705447887901342315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A084921 (n + 1)

end

end A117762.P15705447887901342315

namespace A117762

/-- `(A006093(n+1)+1)*A084921(n+1)` -/
def P15705447887901342315.Spec : Prop :=
  ∀ n, P15705447887901342315.a n = A117762 (n + 1)

end A117762

/-! ## A117762.P14957916845024848077

`(A008864(n+1)-1)*A084921(n+1)`
-/

namespace A117762.P14957916845024848077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A084921 (n + 1)

end

end A117762.P14957916845024848077

namespace A117762

/-- `(A008864(n+1)-1)*A084921(n+1)` -/
def P14957916845024848077.Spec : Prop :=
  ∀ n, P14957916845024848077.a n = A117762 (n + 1)

end A117762

/-!
# A117763: Primes p such that the nearest integer to p * phi is a prime, where phi is the golden ratio.

The programs for A117763, the canonical program `A117763.P13017892793999242602` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117763 has offset 1).

The definition of A117763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117763.P13017892793999242602

`p?[A184860(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A117763

/-- `p?[A184860(n+1)]` -/
def P13017892793999242602.Spec : Prop :=
  ∀ n, P13017892793999242602.a n = A117763 (n + 1)

theorem P13017892793999242602.correct : P13017892793999242602.Spec := by
  intro n
  simp only [A117763, Nat.add_sub_cancel]

end A117763

/-! ## A117763.P5545439129392696735

`∩[A108541(n+1), A184860(n+1)]`
-/

namespace A117763.P5545439129392696735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P5545439129392696735

namespace A117763

/-- `∩[A108541(n+1), A184860(n+1)]` -/
def P5545439129392696735.Spec : Prop :=
  ∀ n, (P5545439129392696735.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P6760081497484359139

`∩[A108543(n+1), A184860(n+1)]`
-/

namespace A117763.P6760081497484359139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P6760081497484359139

namespace A117763

/-- `∩[A108543(n+1), A184860(n+1)]` -/
def P6760081497484359139.Spec : Prop :=
  ∀ n, (P6760081497484359139.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P11625616939334421865

`round(p?[round(ϕ*A000040(n+1))]/ϕ)`
-/

namespace A117763.P11625616939334421865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A000040 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / Real.goldenRatio)

end

end A117763.P11625616939334421865

namespace A117763

/-- `round(p?[round(ϕ*A000040(n+1))]/ϕ)` -/
def P11625616939334421865.Spec : Prop :=
  ∀ n, P11625616939334421865.a n = A117763 (n + 1)

end A117763

/-! ## A117763.P14241717128833197265

`∩[A000040(n+1), A184860(n+1)]`
-/

namespace A117763.P14241717128833197265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P14241717128833197265

namespace A117763

/-- `∩[A000040(n+1), A184860(n+1)]` -/
def P14241717128833197265.Spec : Prop :=
  ∀ n, (P14241717128833197265.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P6944880808840976440

`∩[A045319(n+1), A184860(n+1)]`
-/

namespace A117763.P6944880808840976440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P6944880808840976440

namespace A117763

/-- `∩[A045319(n+1), A184860(n+1)]` -/
def P6944880808840976440.Spec : Prop :=
  ∀ n, (P6944880808840976440.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P8632268321702789274

`∩[A051948(n+1), A184860(n+1)]`
-/

namespace A117763.P8632268321702789274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P8632268321702789274

namespace A117763

/-- `∩[A051948(n+1), A184860(n+1)]` -/
def P8632268321702789274.Spec : Prop :=
  ∀ n, (P8632268321702789274.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P13644377504690675960

`∩[A116974(n+1), A184860(n+1)]`
-/

namespace A117763.P13644377504690675960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P13644377504690675960

namespace A117763

/-- `∩[A116974(n+1), A184860(n+1)]` -/
def P13644377504690675960.Spec : Prop :=
  ∀ n, (P13644377504690675960.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P17373272832216979867

`∩[A175787(n+1), A184860(n+1)]`
-/

namespace A117763.P17373272832216979867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P17373272832216979867

namespace A117763

/-- `∩[A175787(n+1), A184860(n+1)]` -/
def P17373272832216979867.Spec : Prop :=
  ∀ n, (P17373272832216979867.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P9042293442274486131

`∩[A182986(n+1), A184860(n+1)]`
-/

namespace A117763.P9042293442274486131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P9042293442274486131

namespace A117763

/-- `∩[A182986(n+1), A184860(n+1)]` -/
def P9042293442274486131.Spec : Prop :=
  ∀ n, (P9042293442274486131.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P11781415179109940723

`∩[A184860(n+1), A189710(n+1)]`
-/

namespace A117763.P11781415179109940723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P11781415179109940723

namespace A117763

/-- `∩[A184860(n+1), A189710(n+1)]` -/
def P11781415179109940723.Spec : Prop :=
  ∀ n, (P11781415179109940723.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P12495167345473077402

`∩[A184860(n+1), A348283(n+1)]`
-/

namespace A117763.P12495167345473077402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P12495167345473077402

namespace A117763

/-- `∩[A184860(n+1), A348283(n+1)]` -/
def P12495167345473077402.Spec : Prop :=
  ∀ n, (P12495167345473077402.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P17541297752842767799

`∩[A117730(n+1), A184860(n+1)]`
-/

namespace A117763.P17541297752842767799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P17541297752842767799

namespace A117763

/-- `∩[A117730(n+1), A184860(n+1)]` -/
def P17541297752842767799.Spec : Prop :=
  ∀ n, (P17541297752842767799.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P16153913444742318782

`filter[A184860(n+1), A010051(#)]`
-/

namespace A117763.P16153913444742318782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A117763.P16153913444742318782

namespace A117763

/-- `filter[A184860(n+1), A010051(#)]` -/
def P16153913444742318782.Spec : Prop :=
  ∀ n, P16153913444742318782.a n = A117763 (n + 1)

end A117763

/-! ## A117763.P1527004671878829152

`p?[A005206(p?[round(ϕ*n)])]`
-/

namespace A117763.P1527004671878829152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117763.P1527004671878829152

namespace A117763

/-- `p?[A005206(p?[round(ϕ*n)])]` -/
def P1527004671878829152.Spec : Prop :=
  ∀ n, P1527004671878829152.a n = A117763 (n + 1)

end A117763

/-! ## A117763.P9106100584934504193

`filter[A184860(n+2), A080339(#)]`
-/

namespace A117763.P9106100584934504193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A117763.P9106100584934504193

namespace A117763

/-- `filter[A184860(n+2), A080339(#)]` -/
def P9106100584934504193.Spec : Prop :=
  ∀ n, P9106100584934504193.a n = A117763 (n + 1)

end A117763

/-! ## A117763.P17022545501829322558

`A005206(p?[A007067(A000040(n+1))])`
-/

namespace A117763.P17022545501829322558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117763.P17022545501829322558

namespace A117763

/-- `A005206(p?[A007067(A000040(n+1))])` -/
def P17022545501829322558.Spec : Prop :=
  ∀ n, P17022545501829322558.a n = A117763 (n + 1)

end A117763

/-! ## A117763.P7578866264093102364

`∩[A184860(n+1), A240960(n+1)]`
-/

namespace A117763.P7578866264093102364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117763.P7578866264093102364

namespace A117763

/-- `∩[A184860(n+1), A240960(n+1)]` -/
def P7578866264093102364.Spec : Prop :=
  ∀ n, (P7578866264093102364.a n : ℤ) = A117763 (n + 1)

end A117763

/-! ## A117763.P11020824655141353015

`p?[A005379(p?[A007067(n)])]`
-/

namespace A117763.P11020824655141353015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117763.P11020824655141353015

namespace A117763

/-- `p?[A005379(p?[A007067(n)])]` -/
def P11020824655141353015.Spec : Prop :=
  ∀ n, P11020824655141353015.a n = A117763 (n + 1)

end A117763

/-! ## A117763.P14560950289523403573

`p?[A060143(p?[A007067(n)]+1)]`
-/

namespace A117763.P14560950289523403573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117763.P14560950289523403573

namespace A117763

/-- `p?[A060143(p?[A007067(n)]+1)]` -/
def P14560950289523403573.Spec : Prop :=
  ∀ n, P14560950289523403573.a n = A117763 (n + 1)

end A117763

/-!
# A117764: Lucas numbers for which the sum of the digits is also a Lucas number.

The programs for A117764, there is no canonical definition to state claims against.
-/

/-! ## A117764.P17240957665772866474

`record[A000032(A305629(3*n+4))]`
-/

namespace A117764.P17240957665772866474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A305629 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117764.P17240957665772866474

/-! ## A117764.P14207987480343187119

`record[A000032(A348674(n*(15*n-9)))]`
-/

namespace A117764.P14207987480343187119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A348674 ((n : ℤ) * ((15 * n : ℤ) - 9)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117764.P14207987480343187119

/-! ## A117764.P16034494954724581865

`A000032(eq[A169623(n), A324965(n)])`
-/

namespace A117764.P16034494954724581865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117764.P16034494954724581865

/-! ## A117764.P1876673004998709668

`A000032(eq[A200522(n), A321445(n)])`
-/

namespace A117764.P1876673004998709668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117764.P1876673004998709668

/-!
# A117765: Lucas numbers for which the sum of the digits is a Fibonacci number.

The programs for A117765, there is no canonical definition to state claims against.
-/

/-! ## A117765.P8029046347516122390

`A000032(round(ratio[A330475(n)]))`
-/

namespace A117765.P8029046347516122390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A117765.P8029046347516122390

/-! ## A117765.P13735911221285007027

`A000204(round(ratio[A330475(n)]))`
-/

namespace A117765.P13735911221285007027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A117765.P13735911221285007027

/-!
# A117766: Fibonacci numbers for which the sum of the digits is a Lucas number.

The programs for A117766, there is no canonical definition to state claims against.
-/

/-! ## A117766.P1991558834599736116

`A139563(n+2-C(2, n+2))`
-/

namespace A117766.P1991558834599736116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139563 (n + 2 - Nat.choose 2 (n + 2))

end

end A117766.P1991558834599736116

/-! ## A117766.P1308076976015294203

`A139563(comp[A139592(n²)])`
-/

namespace A117766.P1308076976015294203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139592 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139563 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A117766.P1308076976015294203

/-! ## A117766.P517186447158465293

`record[A139563(A097367(n+3))]`
-/

namespace A117766.P517186447158465293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139563 (A097367 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117766.P517186447158465293

/-! ## A117766.P3106259943193734516

`A139563(comp[n*A139592(n)])`
-/

namespace A117766.P3106259943193734516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139592 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139563 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A117766.P3106259943193734516

/-!
# A117767: a(n) is the difference between the smallest square greater than prime(n) and the largest square less than prime(n), where prime(n) = A000040(n) is the n-th prime number.

The programs for A117767, the canonical program `A117767.P658102371895706340` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117767 has offset 1).

The definition of A117767 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000006, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117767.P658102371895706340

`2*A000006(n+1)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117767

/-- `2*A000006(n+1)+1` -/
def P658102371895706340.Spec : Prop :=
  ∀ n, P658102371895706340.a n = A117767 (n + 1)

theorem P658102371895706340.correct : P658102371895706340.Spec := by
  intro n
  simp only [A117767, Nat.add_sub_cancel]

end A117767

/-! ## A117767.P5923388299904798403

`A096494(n+1)+1`
-/

namespace A117767.P5923388299904798403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096494 (n + 1) + 1

end

end A117767.P5923388299904798403

namespace A117767

/-- `A096494(n+1)+1` -/
def P5923388299904798403.Spec : Prop :=
  ∀ n, P5923388299904798403.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P12225258124091446704

`2*A104103(n+1)-1`
-/

namespace A117767.P12225258124091446704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104103 (n + 1) - 1

end

end A117767.P12225258124091446704

namespace A117767

/-- `2*A104103(n+1)-1` -/
def P12225258124091446704.Spec : Prop :=
  ∀ n, P12225258124091446704.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P11154936478092197277

`or(1, A247485(n+1)-1)`
-/

namespace A117767.P11154936478092197277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247485 (n + 1) - 1)

end

end A117767.P11154936478092197277

namespace A117767

/-- `or(1, A247485(n+1)-1)` -/
def P11154936478092197277.Spec : Prop :=
  ∀ n, P11154936478092197277.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P7845814545602270681

`∑[2*char[A038107(n)]]+1`
-/

namespace A117767.P7845814545602270681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A117767.P7845814545602270681

namespace A117767

/-- `∑[2*char[A038107(n)]]+1` -/
def P7845814545602270681.Spec : Prop :=
  ∀ n, (P7845814545602270681.a n : ℤ) = A117767 (n + 1)

end A117767

/-! ## A117767.P5706194779655374034

`2*floor(sqrt(A000040(n+1)))+1`
-/

namespace A117767.P5706194779655374034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A000040 (n + 1)) + 1

end

end A117767.P5706194779655374034

namespace A117767

/-- `2*floor(sqrt(A000040(n+1)))+1` -/
def P5706194779655374034.Spec : Prop :=
  ∀ n, P5706194779655374034.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P15166259578128775809

`A005408(A000006(n+1))`
-/

namespace A117767.P15166259578128775809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000006 (n + 1)).toNat

end

end A117767.P15166259578128775809

namespace A117767

/-- `A005408(A000006(n+1))` -/
def P15166259578128775809.Spec : Prop :=
  ∀ n, P15166259578128775809.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P9043626057174804808

`A004442(A096494(n+1))`
-/

namespace A117767.P9043626057174804808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A096494 (n + 1)).toNat

end

end A117767.P9043626057174804808

namespace A117767

/-- `A004442(A096494(n+1))` -/
def P9043626057174804808.Spec : Prop :=
  ∀ n, P9043626057174804808.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P18354065535350084837

`A004273(A104103(n+1))`
-/

namespace A117767.P18354065535350084837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A104103 (n + 1)).toNat

end

end A117767.P18354065535350084837

namespace A117767

/-- `A004273(A104103(n+1))` -/
def P18354065535350084837.Spec : Prop :=
  ∀ n, P18354065535350084837.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P13483509581627390864

`A004274(A104103(n+1)+1)`
-/

namespace A117767.P13483509581627390864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A104103 (n + 1) + 1).toNat

end

end A117767.P13483509581627390864

namespace A117767

/-- `A004274(A104103(n+1)+1)` -/
def P13483509581627390864.Spec : Prop :=
  ∀ n, P13483509581627390864.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P9756933265800943683

`A161188(n+1)-A103416(n)`
-/

namespace A117767.P9756933265800943683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161188 (n + 1) - A103416 n

end

end A117767.P9756933265800943683

namespace A117767

/-- `A161188(n+1)-A103416(n)` -/
def P9756933265800943683.Spec : Prop :=
  ∀ n, P9756933265800943683.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P16804657358337961683

`A005408(floor(sqrt(A000040(n+1))))`
-/

namespace A117767.P16804657358337961683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.sqrt (A000040 (n + 1))).toNat

end

end A117767.P16804657358337961683

namespace A117767

/-- `A005408(floor(sqrt(A000040(n+1))))` -/
def P16804657358337961683.Spec : Prop :=
  ∀ n, P16804657358337961683.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P16727388679737800981

`A005408(floor(sqrt(A006093(n+1))))`
-/

namespace A117767.P16727388679737800981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.sqrt (A006093 (n + 1))).toNat

end

end A117767.P16727388679737800981

namespace A117767

/-- `A005408(floor(sqrt(A006093(n+1))))` -/
def P16727388679737800981.Spec : Prop :=
  ∀ n, P16727388679737800981.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P12839077961348756733

`A005843(A000006(n+1)+1)-1`
-/

namespace A117767.P12839077961348756733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000006 (n + 1) + 1).toNat - 1

end

end A117767.P12839077961348756733

namespace A117767

/-- `A005843(A000006(n+1)+1)-1` -/
def P12839077961348756733.Spec : Prop :=
  ∀ n, P12839077961348756733.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P13644351214071702922

`A104103(n+1)+A000006(n+1)`
-/

namespace A117767.P13644351214071702922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) + A000006 (n + 1)

end

end A117767.P13644351214071702922

namespace A117767

/-- `A104103(n+1)+A000006(n+1)` -/
def P13644351214071702922.Spec : Prop :=
  ∀ n, P13644351214071702922.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P3318577573168021749

`A145445(n+1)-A065730(n+1)`
-/

namespace A117767.P3318577573168021749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145445 (n + 1) - A065730 (n + 1)

end

end A117767.P3318577573168021749

namespace A117767

/-- `A145445(n+1)-A065730(n+1)` -/
def P3318577573168021749.Spec : Prop :=
  ∀ n, P3318577573168021749.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P12775708280524235051

`A005408(floor(sqrt(A040976(n+1)+1)))`
-/

namespace A117767.P12775708280524235051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.sqrt (A040976 (n + 1) + 1)).toNat

end

end A117767.P12775708280524235051

namespace A117767

/-- `A005408(floor(sqrt(A040976(n+1)+1)))` -/
def P12775708280524235051.Spec : Prop :=
  ∀ n, P12775708280524235051.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P9750518090209080729

`A000027(A000006(n+1)+1)+A000006(n+1)`
-/

namespace A117767.P9750518090209080729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000006 (n + 1) + 1).toNat + A000006 (n + 1)

end

end A117767.P9750518090209080729

namespace A117767

/-- `A000027(A000006(n+1)+1)+A000006(n+1)` -/
def P9750518090209080729.Spec : Prop :=
  ∀ n, P9750518090209080729.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P3501413077323619477

`A000006(n+1)+A325470(A325470(n+1))+A000006(n+1)`
-/

namespace A117767.P3501413077323619477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) + (A325470 (A325470 (n + 1)).toNat + A000006 (n + 1))

end

end A117767.P3501413077323619477

namespace A117767

/-- `A000006(n+1)+A325470(A325470(n+1))+A000006(n+1)` -/
def P3501413077323619477.Spec : Prop :=
  ∀ n, P3501413077323619477.a n = A117767 (n + 1)

end A117767

/-! ## A117767.P3902246208709531516

`2*floor(sqrt(record[A020639(n+2)]))+1`
-/

namespace A117767.P3902246208709531516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1

end

end A117767.P3902246208709531516

namespace A117767

/-- `2*floor(sqrt(record[A020639(n+2)]))+1` -/
def P3902246208709531516.Spec : Prop :=
  ∀ n, P3902246208709531516.a n = A117767 (n + 1)

end A117767

/-!
# A117768: Number of Lucas numbers with n digits.

The programs for A117768, the canonical program `A117768.P14671149105729955350` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117768 has offset 0).

The definition of A117768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117768.P5157319596002705402

`A050815(n+4)`
-/

namespace A117768.P5157319596002705402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050815 (n + 4)

end

end A117768.P5157319596002705402

namespace A117768

/-- `A050815(n+4)` -/
def P5157319596002705402.Spec : Prop :=
  ∀ n, P5157319596002705402.a n = A117768 n

end A117768

/-! ## A117768.P14836892480866777767

`A098842(n+4)`
-/

namespace A117768.P14836892480866777767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098842 (n + 4)

end

end A117768.P14836892480866777767

namespace A117768

/-- `A098842(n+4)` -/
def P14836892480866777767.Spec : Prop :=
  ∀ n, P14836892480866777767.a n = A117768 n

end A117768

/-! ## A117768.P10631412627570333228

`Δ[A072353(n+3)]`
-/

namespace A117768.P10631412627570333228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117768.P10631412627570333228

namespace A117768

/-- `Δ[A072353(n+3)]` -/
def P10631412627570333228.Spec : Prop :=
  ∀ n, P10631412627570333228.a n = A117768 n

end A117768

/-! ## A117768.P1703428409760011957

`Δ[A072354(n+4)]`
-/

namespace A117768.P1703428409760011957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117768.P1703428409760011957

namespace A117768

/-- `Δ[A072354(n+4)]` -/
def P1703428409760011957.Spec : Prop :=
  ∀ n, P1703428409760011957.a n = A117768 n

end A117768

/-! ## A117768.P6303462006281184017

`A105565(n+4)+4`
-/

namespace A117768.P6303462006281184017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105565 (n + 4) + 4

end

end A117768.P6303462006281184017

namespace A117768

/-- `A105565(n+4)+4` -/
def P6303462006281184017.Spec : Prop :=
  ∀ n, P6303462006281184017.a n = A117768 n

end A117768

/-! ## A117768.P3030303350185247809

`Δ[A164018(2*(n+3))]`
-/

namespace A117768.P3030303350185247809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164018 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117768.P3030303350185247809

namespace A117768

/-- `Δ[A164018(2*(n+3))]` -/
def P3030303350185247809.Spec : Prop :=
  ∀ n, P3030303350185247809.a n = A117768 n

end A117768

/-! ## A117768.P14671149105729955350

`Δ[A184741(2*(n+3))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117768

/-- `Δ[A184741(2*(n+3))]` -/
def P14671149105729955350.Spec : Prop :=
  ∀ n, P14671149105729955350.a n = A117768 n

theorem P14671149105729955350.correct : P14671149105729955350.Spec := by
  intro n
  simp only [A117768]

end A117768

/-! ## A117768.P7683084630499206744

`∑[A261812(n+3)]+5`
-/

namespace A117768.P7683084630499206744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261812 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A117768.P7683084630499206744

namespace A117768

/-- `∑[A261812(n+3)]+5` -/
def P7683084630499206744.Spec : Prop :=
  ∀ n, P7683084630499206744.a n = A117768 n

end A117768

/-! ## A117768.P7374027539068623819

`A072353(n+4)-A072353(n+3)`
-/

namespace A117768.P7374027539068623819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 4) - A072353 (n + 3)

end

end A117768.P7374027539068623819

namespace A117768

/-- `A072353(n+4)-A072353(n+3)` -/
def P7374027539068623819.Spec : Prop :=
  ∀ n, P7374027539068623819.a n = A117768 n

end A117768

/-!
# A117769: Lucas numbers for which the product of the digits is a Fibonacci number.

The programs for A117769, there is no canonical definition to state claims against.
-/

/-! ## A117769.P9272006873761466658

`A000032(∑[A202970(n+1)^A215861(n)])`
-/

namespace A117769.P9272006873761466658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202970 (n + 1) : ℚ) ^ (A215861 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A117769.P9272006873761466658

/-! ## A117769.P10006186585456789480

`A090244(lcm(A060921(n+1), A154699(n)))`
-/

namespace A117769.P10006186585456789480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (Int.lcm (A060921 (n + 1)) (A154699 n))

end

end A117769.P10006186585456789480

/-!
# A117770: Fibonacci numbers for which the product of the digits is also a Fibonacci number.

The programs for A117770, there is no canonical definition to state claims against.
-/

/-! ## A117770.P12147759582542160224

`A000045(lt[A246558(n), A112678(2*(n+1))])`
-/

namespace A117770.P12147759582542160224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112678 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117770.P12147759582542160224

/-! ## A117770.P2939276349203044394

`A000045(lt[A195828(3*n+1), 5])`
-/

namespace A117770.P2939276349203044394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195828 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A117770.P2939276349203044394

/-! ## A117770.P1562416842271555749

`A000045(lt[A000720(n+1), A318135(n)])`
-/

namespace A117770.P1562416842271555749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117770.P1562416842271555749

/-! ## A117770.P10515919065156627942

`A000045(lt[A053260(2*n), A318135(n)])`
-/

namespace A117770.P10515919065156627942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117770.P10515919065156627942

/-! ## A117770.P8314520770229696374

`record[A000045(A345705(n+1)%A038502(n+1))]`
-/

namespace A117770.P8314520770229696374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A345705 (n + 1)) (A038502 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117770.P8314520770229696374

/-!
# A117772: Total number of palindromic primes in base 2 below 2^n.

The programs for A117772, there is no canonical definition to state claims against.
-/

/-! ## A117772.P17458644194873612461

`∑[A117773(n+1)]`
-/

namespace A117772.P17458644194873612461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117772.P17458644194873612461

/-!
# A117773: Number of palindromic primes in base 2 with exactly n binary digits.

The programs for A117773, there is no canonical definition to state claims against.
-/

/-! ## A117773.P13100040731602409456

`Δ[A117772(round(sqrt(n²+1)))]`
-/

namespace A117773.P13100040731602409456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117772 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117773.P13100040731602409456

/-! ## A117773.P16601433214874922755

`abs(Δ[A117772(A028310(n))])`
-/

namespace A117773.P16601433214874922755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117772 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A117773.P16601433214874922755

/-! ## A117773.P14938273035419361918

`Δ[A117772(abs(1-n)+1)%A022318(n)]`
-/

namespace A117773.P14938273035419361918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117772 (|1 - (n : ℤ)| + 1).toNat) (A022318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117773.P14938273035419361918

/-! ## A117773.P9848753596847098299

`A117772(n+1)-A117772(round(sqrt(n²+1)))`
-/

namespace A117773.P9848753596847098299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117772 (n + 1) - A117772 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A117773.P9848753596847098299

/-! ## A117773.P12150705804369496505

`Δ[A117772(abs(1-n)+1)]%A003593(n+1)²`
-/

namespace A117773.P12150705804369496505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117772 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A003593 (n + 1) ^ 2)

end

end A117773.P12150705804369496505

/-! ## A117773.P442187274355577968

`Δ[A117772(abs(1-n)+1)+A000040(n+1)%2]`
-/

namespace A117773.P442187274355577968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117772 (|1 - (n : ℤ)| + 1).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117773.P442187274355577968

/-!
# A117774: Fibonacci numbers which are divisible by the sum of their digits.

The programs for A117774, there is no canonical definition to state claims against.
-/

/-! ## A117774.P4313047081431010366

`A000045(A337448(n+2))`
-/

namespace A117774.P4313047081431010366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A337448 (n + 2)).toNat

end

end A117774.P4313047081431010366

/-! ## A117774.P9031950651025310332

`A212804(A337448(n+2)+1)`
-/

namespace A117774.P9031950651025310332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A337448 (n + 2) + 1).toNat

end

end A117774.P9031950651025310332

/-! ## A117774.P1337526260285096021

`A274163(A335303(n+2))`
-/

namespace A117774.P1337526260285096021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274163 (A335303 (n + 2)).toNat

end

end A117774.P1337526260285096021

/-! ## A117774.P15668703793686104718

`filter[A005349(n+1), A010056(#)]`
-/

namespace A117774.P15668703793686104718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A117774.P15668703793686104718

/-!
# A117775: Total number of palindromic primes in base 3 below 3^n.

The programs for A117775, there is no canonical definition to state claims against.
-/

/-! ## A117775.P7997116564517165083

`∑[A117776(n+1)]`
-/

namespace A117775.P7997116564517165083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117775.P7997116564517165083

/-! ## A117775.P3750194805816053736

`A117776(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A117775.P3750194805816053736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117776 (n + 1) + a (A028310 n - 1).toNat

end

end A117775.P3750194805816053736

/-! ## A117775.P2704974439231422268

`a(n-1)+A117776(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A117775.P2704974439231422268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A117776 (n + 1) + A000038 n)

end

end A117775.P2704974439231422268

/-! ## A117775.P11585267779055306356

`a(n-1)+A117776(n+1)*A328580(n)` with `a(0)=1`
-/

namespace A117775.P11585267779055306356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A117776 (n + 1) * A328580 n

end

end A117775.P11585267779055306356

/-! ## A117775.P3895873662206867910

`a(n-1)+A117776(n+1)%A001792(n)` with `a(0)=1`
-/

namespace A117775.P3895873662206867910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A117776 (n + 1)) (A001792 n)

end

end A117775.P3895873662206867910

/-!
# A117776: Total number of palindromic primes in base 3 with n digits.

The programs for A117776, there is no canonical definition to state claims against.
-/

/-! ## A117776.P5113201817897677182

`char[47*n]+Δ[A117775(A233583(n+1))]`
-/

namespace A117776.P5113201817897677182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117775 (A233583 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A117776.P5113201817897677182

/-! ## A117776.P13481384025989542483

`Δ[A117775(A233583(n+1))+A057427(n)]`
-/

namespace A117776.P13481384025989542483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117775 (A233583 (n + 1)).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117776.P13481384025989542483

/-! ## A117776.P15948765038061743961

`A117775(n+1)-A057427(n)*A117775(A233583(n+1))`
-/

namespace A117776.P15948765038061743961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117775 (n + 1) - A057427 n * A117775 (A233583 (n + 1)).toNat

end

end A117776.P15948765038061743961

/-!
# A117777: Total number of palindromic primes in base 4 below 4^n.

The programs for A117777, there is no canonical definition to state claims against.
-/

/-! ## A117777.P15039082078345341717

`∑[A117778(n+1)]`
-/

namespace A117777.P15039082078345341717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117777.P15039082078345341717

/-!
# A117779: Total number of palindromic primes in base 5 below 5^n.

The programs for A117779, there is no canonical definition to state claims against.
-/

/-! ## A117779.P1394127472782345877

`∑[A117780(n+1)]`
-/

namespace A117779.P1394127472782345877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117779.P1394127472782345877

/-! ## A117779.P6946871654982018475

`A117780(n+1)+A117780(n)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A117779.P6946871654982018475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A117780 (n + 1) + (A117780 n + a (n - 2))

end

end A117779.P6946871654982018475

/-!
# A117781: Total number of palindromic primes in base 6 below 6^n.

The programs for A117781, there is no canonical definition to state claims against.
-/

/-! ## A117781.P16803770442941973392

`∑[A117782(n+1)]`
-/

namespace A117781.P16803770442941973392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117781.P16803770442941973392

/-! ## A117781.P5449957402938684799

`a(n-1)+A117782(n+1)+A000007(n)` with `a(0)=3`
-/

namespace A117781.P5449957402938684799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A117782 (n + 1) + A000007 n)

end

end A117781.P5449957402938684799

/-!
# A117783: Total number of palindromic primes in base 7 below 7^n.

The programs for A117783, there is no canonical definition to state claims against.
-/

/-! ## A117783.P8680477477101302971

`∑[A117784(n+1)]`
-/

namespace A117783.P8680477477101302971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117783.P8680477477101302971

/-! ## A117783.P2504401400967119471

`a(n-1)+A117784(n+1)%A117787(n+1)` with `a(0)=3`
-/

namespace A117783.P2504401400967119471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + Int.tmod (A117784 (n + 1)) (A117787 (n + 1))

end

end A117783.P2504401400967119471

/-! ## A117783.P1616696468175948239

`A125716(A117855(n+1))`
-/

namespace A117783.P1616696468175948239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125716 (A117855 (n + 1)).toNat

end

end A117783.P1616696468175948239

/-! ## A117783.P3048430990506923625

`A125716(lcm(2, A038754(n)))`
-/

namespace A117783.P3048430990506923625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125716 (Int.lcm 2 (A038754 n))

end

end A117783.P3048430990506923625

/-!
# A117785: Total number of palindromic primes in base 8 below 8^n.

The programs for A117785, there is no canonical definition to state claims against.
-/

/-! ## A117785.P6346749860818648173

`∑[A117786(n+1)]`
-/

namespace A117785.P6346749860818648173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117785.P6346749860818648173

/-!
# A117786: Total number of palindromic primes in base 8 with n digits.

The programs for A117786, there is no canonical definition to state claims against.
-/

/-! ## A117786.P7292163772036214261

`Δ[A117785(A233583(n+1))%A256162(n+1)]`
-/

namespace A117786.P7292163772036214261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117785 (A233583 (n + 1)).toNat) (A256162 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117786.P7292163772036214261

/-! ## A117786.P16924388127174661296

`A051731(2*n+3)*A340833(A367874(n))`
-/

namespace A117786.P16924388127174661296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (2 * n + 3) * A340833 (A367874 n).toNat

end

end A117786.P16924388127174661296

/-!
# A117787: Total number of palindromic primes in base 9 below 9^n.

The programs for A117787, there is no canonical definition to state claims against.
-/

/-! ## A117787.P4651810245883525708

`∑[A117788(n+1)]`
-/

namespace A117787.P4651810245883525708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117787.P4651810245883525708

/-!
# A117789: Lucas numbers which are divisible by the sum of their digits.

The programs for A117789, there is no canonical definition to state claims against.
-/

/-! ## A117789.P15894090886609620422

`A000204(A337449(n+2))`
-/

namespace A117789.P15894090886609620422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A337449 (n + 2)).toNat

end

end A117789.P15894090886609620422

/-! ## A117789.P14244999528071330405

`A127207(A338927(n+1))`
-/

namespace A117789.P14244999528071330405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127207 (A338927 (n + 1)).toNat

end

end A117789.P14244999528071330405

/-!
# A117790: Lucas numbers for which the sum of the digits is a prime.

The programs for A117790, there is no canonical definition to state claims against.
-/

/-! ## A117790.P11188719565669869981

`A000032(lt[A317239(n), A097263(n+1)])`
-/

namespace A117790.P11188719565669869981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117790.P11188719565669869981

/-! ## A117790.P13186758517835403236

`A000204(lt[A317239(n), A097263(n+1)])`
-/

namespace A117790.P13186758517835403236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117790.P13186758517835403236

/-! ## A117790.P18257802155022983046

`A000032(lt[A302751(n), A095830(n+2)])`
-/

namespace A117790.P18257802155022983046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095830 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117790.P18257802155022983046

/-! ## A117790.P15339367940142166144

`A000032(record[n^A327622(n)])`
-/

namespace A117790.P15339367940142166144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A327622 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A117790.P15339367940142166144

/-! ## A117790.P17762953702799087256

`A000204(lt[1, A195022(n+3)])`
-/

namespace A117790.P17762953702799087256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195022 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A117790.P17762953702799087256

/-!
# A117791: Expansion of 1/(1 - x - x^2 + x^4 - x^6).

The programs for A117791, the canonical program `A117791.P16787057154671404714` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117791 has offset 0).

The definition of A117791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^4-x^6))` (program `A117791.P16787057154671404714`, by `A117791.P16787057154671404714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117791.P16787057154671404714

`ogf(1/(1-x-x^2+x^4-x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A117791

/-- `ogf(1/(1-x-x^2+x^4-x^6))` -/
def P16787057154671404714.Spec : Prop :=
  ∀ n, P16787057154671404714.a n = A117791 n

theorem P16787057154671404714.correct : P16787057154671404714.Spec := by
  intro n
  simp only [A117791]

end A117791

/-! ## A117791.P17930828479396885519

`a(n-1)+a(n-2)-a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6`
-/

namespace A117791.P17930828479396885519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 6] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) + a (n - 6)

end

end A117791.P17930828479396885519

namespace A117791

/-- `a(n-1)+a(n-2)-a(n-4)+a(n-6)` -/
def P17930828479396885519.Spec : Prop :=
  ∀ n, P17930828479396885519.a n = A117791 n

end A117791

/-! ## A117791.P12822447311100697392

`A117792(n+2)-A117792(n)`
-/

namespace A117791.P12822447311100697392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117792 (n + 2) - A117792 n

end

end A117791.P12822447311100697392

namespace A117791

/-- `A117792(n+2)-A117792(n)` -/
def P12822447311100697392.Spec : Prop :=
  ∀ n, P12822447311100697392.a n = A117791 n

end A117791

/-! ## A117791.P9034602461642126164

`record[A117792(A008611(n))]-A117792(n)`
-/

namespace A117791.P9034602461642126164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117792 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A117792 n

end

end A117791.P9034602461642126164

namespace A117791

/-- `record[A117792(A008611(n))]-A117792(n)` -/
def P9034602461642126164.Spec : Prop :=
  ∀ n, P9034602461642126164.a n = A117791 n

end A117791

/-! ## A117791.P3978883718185606098

`record[A117792(A008612(n))]-A117792(n)`
-/

namespace A117791.P3978883718185606098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117792 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A117792 n

end

end A117791.P3978883718185606098

namespace A117791

/-- `record[A117792(A008612(n))]-A117792(n)` -/
def P3978883718185606098.Spec : Prop :=
  ∀ n, P3978883718185606098.a n = A117791 n

end A117791

/-! ## A117791.P5469012121841285709

`Δ[A109537(n+5)]`
-/

namespace A117791.P5469012121841285709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109537 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117791.P5469012121841285709

namespace A117791

/-- `Δ[A109537(n+5)]` -/
def P5469012121841285709.Spec : Prop :=
  ∀ n, P5469012121841285709.a n = A117791 n

end A117791

/-! ## A117791.P5677005974115900898

`Δ[A117792(n+1)+A117792(n)]`
-/

namespace A117791.P5677005974115900898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117792 (n + 1) + A117792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117791.P5677005974115900898

namespace A117791

/-- `Δ[A117792(n+1)+A117792(n)]` -/
def P5677005974115900898.Spec : Prop :=
  ∀ n, P5677005974115900898.a n = A117791 n

end A117791

/-!
# A117792: First entry of the vector (M^n)w, where M is the 6x6 matrix [[0, 1, 0, 0, 0, 0, ], [0, 0, 1, 0, 0, 0], [0, 0, 0, 1, 0, 0], [0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 1], [1, 0, -1, 0, 1, 1]] and w is the column vector [0, 1, 1, 2, 3, 5].

The programs for A117792, the canonical program `A117792.P17211875692657687818` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117792 has offset 0).

The definition of A117792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117792.P17211875692657687818

`A117791(n-2)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117792

/-- `A117791(n-2)+a(n-2)` -/
def P17211875692657687818.Spec : Prop :=
  ∀ n, P17211875692657687818.a n = A117792 n

theorem P17211875692657687818.correct : P17211875692657687818.Spec := by
  intro n
  simp only [A117792]

end A117792

/-! ## A117792.P10726326790619861997

`A109537(n+4)-a(n-1)` with `a(0)=0`
-/

namespace A117792.P10726326790619861997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A109537 (n + 4) - a (n - 1)

end

end A117792.P10726326790619861997

namespace A117792

/-- `A109537(n+4)-a(n-1)` -/
def P10726326790619861997.Spec : Prop :=
  ∀ n, P10726326790619861997.a n = A117792 n

end A117792

/-! ## A117792.P734419879549253955

`Δ[A109537(n+4)+A109537(n)]`
-/

namespace A117792.P734419879549253955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109537 (n + 4) + A109537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117792.P734419879549253955

namespace A117792

/-- `Δ[A109537(n+4)+A109537(n)]` -/
def P734419879549253955.Spec : Prop :=
  ∀ n, P734419879549253955.a n = A117792 n

end A117792

/-! ## A117792.P12217962234142567562

`A054846(A020992(char[1]+n))`
-/

namespace A117792.P12217962234142567562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A020992 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A117792.P12217962234142567562

namespace A117792

/-- `A054846(A020992(char[1]+n))` -/
def P12217962234142567562.Spec : Prop :=
  ∀ n, P12217962234142567562.a n = A117792 n

end A117792

/-! ## A117792.P7229620626540583612

`A054846(A020992(n)-char[1])`
-/

namespace A117792.P7229620626540583612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A020992 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A117792.P7229620626540583612

namespace A117792

/-- `A054846(A020992(n)-char[1])` -/
def P7229620626540583612.Spec : Prop :=
  ∀ n, P7229620626540583612.a n = A117792 n

end A117792

/-!
# A117793: Pentagonal numbers divisible by 5.

The programs for A117793, the canonical program `A117793.P2060671107007092421` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117793 has offset 1).

The definition of A117793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117793.P2060671107007092421

`A000326(floor(5*n/2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117793

/-- `A000326(floor(5*n/2))` -/
def P2060671107007092421.Spec : Prop :=
  ∀ n, P2060671107007092421.a n = A117793 (n + 1)

theorem P2060671107007092421.correct : P2060671107007092421.Spec := by
  intro n
  simp only [A117793, Nat.add_sub_cancel]

end A117793

/-! ## A117793.P10921975692916312794

`A000326(A047215(n))%A022006(n+1)`
-/

namespace A117793.P10921975692916312794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000326 (A047215 n).toNat) (A022006 (n + 1))

end

end A117793.P10921975692916312794

namespace A117793

/-- `A000326(A047215(n))%A022006(n+1)` -/
def P10921975692916312794.Spec : Prop :=
  ∀ n, P10921975692916312794.a n = A117793 (n + 1)

end A117793

/-! ## A117793.P14541449301914797004

`A005449(floor(5*n/2))-floor(5*n/2)`
-/

namespace A117793.P14541449301914797004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 ⌊5 * ((n : ℚ) / 2)⌋.toNat - ⌊5 * ((n : ℚ) / 2)⌋

end

end A117793.P14541449301914797004

namespace A117793

/-- `A005449(floor(5*n/2))-floor(5*n/2)` -/
def P14541449301914797004.Spec : Prop :=
  ∀ n, P14541449301914797004.a n = A117793 (n + 1)

end A117793

/-! ## A117793.P17119589698341567888

`A001318(A184418(2*n)-A040001(n+1))`
-/

namespace A117793.P17119589698341567888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A184418 (2 * n) - A040001 (n + 1)).toNat

end

end A117793.P17119589698341567888

namespace A117793

/-- `A001318(A184418(2*n)-A040001(n+1))` -/
def P17119589698341567888.Spec : Prop :=
  ∀ n, P17119589698341567888.a n = A117793 (n + 1)

end A117793

/-! ## A117793.P4394941889512607753

`A245288(A146763(n))`
-/

namespace A117793.P4394941889512607753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (A146763 n).toNat

end

end A117793.P4394941889512607753

namespace A117793

/-- `A245288(A146763(n))` -/
def P4394941889512607753.Spec : Prop :=
  ∀ n, P4394941889512607753.a n = A117793 (n + 1)

end A117793

/-! ## A117793.P8750626415709305018

`A211538(A187715(n+1)+1)`
-/

namespace A117793.P8750626415709305018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (A187715 (n + 1) + 1).toNat

end

end A117793.P8750626415709305018

namespace A117793

/-- `A211538(A187715(n+1)+1)` -/
def P8750626415709305018.Spec : Prop :=
  ∀ n, P8750626415709305018.a n = A117793 (n + 1)

end A117793

/-! ## A117793.P1813362520226390120

`A211538(2*A265430(2*n+1))`
-/

namespace A117793.P1813362520226390120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (2 * A265430 (2 * n + 1)).toNat

end

end A117793.P1813362520226390120

namespace A117793

/-- `A211538(2*A265430(2*n+1))` -/
def P1813362520226390120.Spec : Prop :=
  ∀ n, P1813362520226390120.a n = A117793 (n + 1)

end A117793

/-! ## A117793.P7248294413809665706

`filter[A008587(n), A255849(#)]`
-/

namespace A117793.P7248294413809665706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255849 (f1 j).toNat = 1) n)

end

end A117793.P7248294413809665706

namespace A117793

/-- `filter[A008587(n), A255849(#)]` -/
def P7248294413809665706.Spec : Prop :=
  ∀ n, P7248294413809665706.a n = A117793 (n + 1)

end A117793

/-! ## A117793.P4949309729183297392

`∩[A000326(n), A008587(n)]`
-/

namespace A117793.P4949309729183297392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117793.P4949309729183297392

namespace A117793

/-- `∩[A000326(n), A008587(n)]` -/
def P4949309729183297392.Spec : Prop :=
  ∀ n, (P4949309729183297392.a n : ℤ) = A117793 (n + 1)

end A117793

/-!
# A117794: Hexagonal numbers divisible by 6.

The programs for A117794, the canonical program `A117794.P5184939745767127300` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117794 has offset 1).

The definition of A117794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117794.P5184939745767127300

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=6, a(2)=66, a(3)=120, a(4)=276`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A117794

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5184939745767127300.Spec : Prop :=
  ∀ n, P5184939745767127300.a n = A117794 (n + 1)

theorem P5184939745767127300.correct : P5184939745767127300.Spec := by
  intro n
  simp only [A117794, Nat.add_sub_cancel]

end A117794

/-! ## A117794.P9691346377575246482

`C(and(6*n, -3), 2)`
-/

namespace A117794.P9691346377575246482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (6 * n : ℤ) (-3)).toNat 2

end

end A117794.P9691346377575246482

namespace A117794

/-- `C(and(6*n, -3), 2)` -/
def P9691346377575246482.Spec : Prop :=
  ∀ n, (P9691346377575246482.a n : ℤ) = A117794 (n + 1)

end A117794

/-! ## A117794.P17721893069761659306

`C(4*comp[3*n-1], 2)`
-/

namespace A117794.P17721893069761659306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A117794.P17721893069761659306

namespace A117794

/-- `C(4*comp[3*n-1], 2)` -/
def P17721893069761659306.Spec : Prop :=
  ∀ n, (P17721893069761659306.a n : ℤ) = A117794 (n + 1)

end A117794

/-! ## A117794.P3155719355219821260

`2*(A047238(n+1)²-A032766(n))`
-/

namespace A117794.P3155719355219821260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047238 (n + 1) ^ 2 - A032766 n)

end

end A117794.P3155719355219821260

namespace A117794

/-- `2*(A047238(n+1)²-A032766(n))` -/
def P3155719355219821260.Spec : Prop :=
  ∀ n, P3155719355219821260.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P9267610765278972162

`2*(A032766(n)+A002939(A032766(n)))`
-/

namespace A117794.P9267610765278972162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032766 n + A002939 (A032766 n).toNat)

end

end A117794.P9267610765278972162

namespace A117794

/-- `2*(A032766(n)+A002939(A032766(n)))` -/
def P9267610765278972162.Spec : Prop :=
  ∀ n, P9267610765278972162.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P13104976030895669460

`A014635(floor(3*n/2))`
-/

namespace A117794.P13104976030895669460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 ⌊3 * ((n : ℚ) / 2)⌋.toNat

end

end A117794.P13104976030895669460

namespace A117794

/-- `A014635(floor(3*n/2))` -/
def P13104976030895669460.Spec : Prop :=
  ∀ n, P13104976030895669460.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P12719638614671732069

`record[C(2*A342369(n), 2)]`
-/

namespace A117794.P12719638614671732069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A342369 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117794.P12719638614671732069

namespace A117794

/-- `record[C(2*A342369(n), 2)]` -/
def P12719638614671732069.Spec : Prop :=
  ∀ n, (P12719638614671732069.a n : ℤ) = A117794 (n + 1)

end A117794

/-! ## A117794.P3803444886903071614

`record[C(A093544(n+1)-1, 2)]`
-/

namespace A117794.P3803444886903071614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A093544 (n + 1) - 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117794.P3803444886903071614

namespace A117794

/-- `record[C(A093544(n+1)-1, 2)]` -/
def P3803444886903071614.Spec : Prop :=
  ∀ n, (P3803444886903071614.a n : ℤ) = A117794 (n + 1)

end A117794

/-! ## A117794.P11776599298515117882

`2*A033991(A032766(n))`
-/

namespace A117794.P11776599298515117882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033991 (A032766 n).toNat

end

end A117794.P11776599298515117882

namespace A117794

/-- `2*A033991(A032766(n))` -/
def P11776599298515117882.Spec : Prop :=
  ∀ n, P11776599298515117882.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P469555776144960477

`A185438(A001651(n+1)-1)-1`
-/

namespace A117794.P469555776144960477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185438 (A001651 (n + 1) - 1).toNat - 1

end

end A117794.P469555776144960477

namespace A117794

/-- `A185438(A001651(n+1)-1)-1` -/
def P469555776144960477.Spec : Prop :=
  ∀ n, P469555776144960477.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P8808125077884040715

`A069497(A004277(n))`
-/

namespace A117794.P8808125077884040715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (A004277 n).toNat

end

end A117794.P8808125077884040715

namespace A117794

/-- `A069497(A004277(n))` -/
def P8808125077884040715.Spec : Prop :=
  ∀ n, P8808125077884040715.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P11370947307448610396

`A069497(A004275(n+1))`
-/

namespace A117794.P11370947307448610396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (A004275 (n + 1)).toNat

end

end A117794.P11370947307448610396

namespace A117794

/-- `A069497(A004275(n+1))` -/
def P11370947307448610396.Spec : Prop :=
  ∀ n, P11370947307448610396.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P10745874760748484021

`2*A033991(A057353(2*n))`
-/

namespace A117794.P10745874760748484021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033991 (A057353 (2 * n)).toNat

end

end A117794.P10745874760748484021

namespace A117794

/-- `2*A033991(A057353(2*n))` -/
def P10745874760748484021.Spec : Prop :=
  ∀ n, P10745874760748484021.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P15851644085791251829

`∩[A069497(n+1), A014635(n)]`
-/

namespace A117794.P15851644085791251829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117794.P15851644085791251829

namespace A117794

/-- `∩[A069497(n+1), A014635(n)]` -/
def P15851644085791251829.Spec : Prop :=
  ∀ n, (P15851644085791251829.a n : ℤ) = A117794 (n + 1)

end A117794

/-! ## A117794.P16043136509912273391

`A000217(A004273(n)+2*A042948(n))`
-/

namespace A117794.P16043136509912273391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004273 n + 2 * A042948 n).toNat

end

end A117794.P16043136509912273391

namespace A117794

/-- `A000217(A004273(n)+2*A042948(n))` -/
def P16043136509912273391.Spec : Prop :=
  ∀ n, P16043136509912273391.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P152302684143742485

`A000217(A042948(n)+A042948(n)+A004273(n))`
-/

namespace A117794.P152302684143742485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A042948 n + (A042948 n + A004273 n)).toNat

end

end A117794.P152302684143742485

namespace A117794

/-- `A000217(A042948(n)+A042948(n)+A004273(n))` -/
def P152302684143742485.Spec : Prop :=
  ∀ n, P152302684143742485.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P14109316937969480312

`A000384(2*comp[3*n]-2)`
-/

namespace A117794.P14109316937969480312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - 2)

end

end A117794.P14109316937969480312

namespace A117794

/-- `A000384(2*comp[3*n]-2)` -/
def P14109316937969480312.Spec : Prop :=
  ∀ n, P14109316937969480312.a n = A117794 (n + 1)

end A117794

/-! ## A117794.P15978476840553910849

`A002939(2*A032766(n))/2`
-/

namespace A117794.P15978476840553910849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002939 (2 * A032766 n).toNat : ℚ) / 2

end

end A117794.P15978476840553910849

namespace A117794

/-- `A002939(2*A032766(n))/2` -/
def P15978476840553910849.Spec : Prop :=
  ∀ n, P15978476840553910849.a n = (A117794 (n + 1) : ℚ)

end A117794

/-! ## A117794.P10942932340352443939

`∩[A069497(n+1), A000384(n)]`
-/

namespace A117794.P10942932340352443939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117794.P10942932340352443939

namespace A117794

/-- `∩[A069497(n+1), A000384(n)]` -/
def P10942932340352443939.Spec : Prop :=
  ∀ n, (P10942932340352443939.a n : ℤ) = A117794 (n + 1)

end A117794

/-! ## A117794.P17540928057238882161

`∩[A069497(n+1), A139596(n)]`
-/

namespace A117794.P17540928057238882161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117794.P17540928057238882161

namespace A117794

/-- `∩[A069497(n+1), A139596(n)]` -/
def P17540928057238882161.Spec : Prop :=
  ∀ n, (P17540928057238882161.a n : ℤ) = A117794 (n + 1)

end A117794

/-!
# A117795: Heptagonal numbers divisible by 7.

The programs for A117795, the canonical program `A117795.P17562383556456651923` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117795 has offset 1).

The definition of A117795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2858 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117795.P17562383556456651923

`A000566(A047352(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117795

/-- `A000566(A047352(n+1))` -/
def P17562383556456651923.Spec : Prop :=
  ∀ n, P17562383556456651923.a n = A117795 (n + 1)

theorem P17562383556456651923.correct : P17562383556456651923.Spec := by
  intro n
  simp only [A117795, Nat.add_sub_cancel]

end A117795

/-! ## A117795.P6791874280048558157

`A000566(A047279(2*n+1))`
-/

namespace A117795.P6791874280048558157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A047279 (2 * n + 1)).toNat

end

end A117795.P6791874280048558157

namespace A117795

/-- `A000566(A047279(2*n+1))` -/
def P6791874280048558157.Spec : Prop :=
  ∀ n, P6791874280048558157.a n = A117795 (n + 1)

end A117795

/-! ## A117795.P8397002969644129910

`A000566(A047351(2*n+1))`
-/

namespace A117795.P8397002969644129910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A047351 (2 * n + 1)).toNat

end

end A117795.P8397002969644129910

namespace A117795

/-- `A000566(A047351(2*n+1))` -/
def P8397002969644129910.Spec : Prop :=
  ∀ n, P8397002969644129910.a n = A117795 (n + 1)

end A117795

/-! ## A117795.P7106184214321849668

`A000566(A047361(2*n+1))`
-/

namespace A117795.P7106184214321849668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A047361 (2 * n + 1)).toNat

end

end A117795.P7106184214321849668

namespace A117795

/-- `A000566(A047361(2*n+1))` -/
def P7106184214321849668.Spec : Prop :=
  ∀ n, P7106184214321849668.a n = A117795 (n + 1)

end A117795

/-! ## A117795.P15720458222652456137

`A000566(A047388(2*n+1))`
-/

namespace A117795.P15720458222652456137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A047388 (2 * n + 1)).toNat

end

end A117795.P15720458222652456137

namespace A117795

/-- `A000566(A047388(2*n+1))` -/
def P15720458222652456137.Spec : Prop :=
  ∀ n, P15720458222652456137.a n = A117795 (n + 1)

end A117795

/-! ## A117795.P1230227108065579379

`A000566(A008851(n+1)+n)`
-/

namespace A117795.P1230227108065579379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A008851 (n + 1) + (n : ℤ)).toNat

end

end A117795.P1230227108065579379

namespace A117795

/-- `A000566(A008851(n+1)+n)` -/
def P1230227108065579379.Spec : Prop :=
  ∀ n, P1230227108065579379.a n = A117795 (n + 1)

end A117795

/-! ## A117795.P6312079100614618863

`A000566(A168237(n)+2*n)`
-/

namespace A117795.P6312079100614618863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A168237 n + (2 * n : ℤ)).toNat

end

end A117795.P6312079100614618863

namespace A117795

/-- `A000566(A168237(n)+2*n)` -/
def P6312079100614618863.Spec : Prop :=
  ∀ n, P6312079100614618863.a n = A117795 (n + 1)

end A117795

/-! ## A117795.P1878758144266126962

`A000566(A168237(n)+n+n)`
-/

namespace A117795.P1878758144266126962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A168237 n + (n : ℤ) + (n : ℤ)).toNat

end

end A117795.P1878758144266126962

namespace A117795

/-- `A000566(A168237(n)+n+n)` -/
def P1878758144266126962.Spec : Prop :=
  ∀ n, P1878758144266126962.a n = A117795 (n + 1)

end A117795

/-! ## A117795.P8293462529146102457

`A000566(A047216(n+1)-1+n)`
-/

namespace A117795.P8293462529146102457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A047216 (n + 1) - 1 + (n : ℤ)).toNat

end

end A117795.P8293462529146102457

namespace A117795

/-- `A000566(A047216(n+1)-1+n)` -/
def P8293462529146102457.Spec : Prop :=
  ∀ n, P8293462529146102457.a n = A117795 (n + 1)

end A117795

/-! ## A117795.P15619208046147227189

`A000566(A195015(n)+n-A000566(n))`
-/

namespace A117795.P15619208046147227189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A195015 n + ((n : ℤ) - A000566 n)).toNat

end

end A117795.P15619208046147227189

namespace A117795

/-- `A000566(A195015(n)+n-A000566(n))` -/
def P15619208046147227189.Spec : Prop :=
  ∀ n, P15619208046147227189.a n = A117795 (n + 1)

end A117795

/-! ## A117795.P4178289299389961058

`A000566(n-(A000566(n)-A195015(n)))`
-/

namespace A117795.P4178289299389961058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 ((n : ℤ) - (A000566 n - A195015 n)).toNat

end

end A117795.P4178289299389961058

namespace A117795

/-- `A000566(n-(A000566(n)-A195015(n)))` -/
def P4178289299389961058.Spec : Prop :=
  ∀ n, P4178289299389961058.a n = A117795 (n + 1)

end A117795

/-!
# A117796: Enneagonal numbers divisible by 9.

The programs for A117796, the canonical program `A117796.P7154377782179391691` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117796 has offset 1).

The definition of A117796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117796.P7154377782179391691

`A001106(A047274(n+1)+n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117796

/-- `A001106(A047274(n+1)+n)` -/
def P7154377782179391691.Spec : Prop :=
  ∀ n, P7154377782179391691.a n = A117796 (n + 1)

theorem P7154377782179391691.correct : P7154377782179391691.Spec := by
  intro n
  simp only [A117796, Nat.add_sub_cancel]

end A117796

/-! ## A117796.P9942736042699238097

`A001106((A146509(n+1)-1)/2)`
-/

namespace A117796.P9942736042699238097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (SequenceMachineLib.roundAway ((A146509 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A117796.P9942736042699238097

namespace A117796

/-- `A001106((A146509(n+1)-1)/2)` -/
def P9942736042699238097.Spec : Prop :=
  ∀ n, P9942736042699238097.a n = A117796 (n + 1)

end A117796

/-! ## A117796.P3079175268828852092

`A001106(A147832(n+1)/2+n)`
-/

namespace A117796.P3079175268828852092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (SequenceMachineLib.roundAway ((A147832 (n + 1) : ℚ) / 2 + (n : ℚ))).toNat

end

end A117796.P3079175268828852092

namespace A117796

/-- `A001106(A147832(n+1)/2+n)` -/
def P3079175268828852092.Spec : Prop :=
  ∀ n, P3079175268828852092.a n = A117796 (n + 1)

end A117796

/-! ## A117796.P16310461770677064499

`A001106(9*n+1-A056020(n+1))`
-/

namespace A117796.P16310461770677064499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 ((9 * n + 1 : ℤ) - A056020 (n + 1)).toNat

end

end A117796.P16310461770677064499

namespace A117796

/-- `A001106(9*n+1-A056020(n+1))` -/
def P16310461770677064499.Spec : Prop :=
  ∀ n, P16310461770677064499.a n = A117796 (n + 1)

end A117796

/-! ## A117796.P7711347882408586849

`A001106((9*n+1)%A056020(n+1))`
-/

namespace A117796.P7711347882408586849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (Int.tmod (9 * n + 1 : ℤ) (A056020 (n + 1))).toNat

end

end A117796.P7711347882408586849

namespace A117796

/-- `A001106((9*n+1)%A056020(n+1))` -/
def P7711347882408586849.Spec : Prop :=
  ∀ n, P7711347882408586849.a n = A117796 (n + 1)

end A117796

/-! ## A117796.P1350338145885467141

`A001106(A042948(n)+A008851(n+1))`
-/

namespace A117796.P1350338145885467141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A042948 n + A008851 (n + 1)).toNat

end

end A117796.P1350338145885467141

namespace A117796

/-- `A001106(A042948(n)+A008851(n+1))` -/
def P1350338145885467141.Spec : Prop :=
  ∀ n, P1350338145885467141.a n = A117796 (n + 1)

end A117796

/-! ## A117796.P4456942457898139883

`A001106(A087446(n+1)-A016777(n))`
-/

namespace A117796.P4456942457898139883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A087446 (n + 1) - A016777 n).toNat

end

end A117796.P4456942457898139883

namespace A117796

/-- `A001106(A087446(n+1)-A016777(n))` -/
def P4456942457898139883.Spec : Prop :=
  ∀ n, P4456942457898139883.a n = A117796 (n + 1)

end A117796

/-! ## A117796.P17328198506590846656

`A001106(A016993(n)-A168282(n+1))`
-/

namespace A117796.P17328198506590846656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A016993 n - A168282 (n + 1)).toNat

end

end A117796.P17328198506590846656

namespace A117796

/-- `A001106(A016993(n)-A168282(n+1))` -/
def P17328198506590846656.Spec : Prop :=
  ∀ n, P17328198506590846656.a n = A117796 (n + 1)

end A117796

/-! ## A117796.P151715252481636654

`A001106(A187715(n+1)-A052938(n))`
-/

namespace A117796.P151715252481636654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A187715 (n + 1) - A052938 n).toNat

end

end A117796.P151715252481636654

namespace A117796

/-- `A001106(A187715(n+1)-A052938(n))` -/
def P151715252481636654.Spec : Prop :=
  ∀ n, P151715252481636654.a n = A117796 (n + 1)

end A117796

/-! ## A117796.P12494964952289798928

`A001106(A004524(A146509(n+1)))`
-/

namespace A117796.P12494964952289798928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A004524 (A146509 (n + 1)).toNat).toNat

end

end A117796.P12494964952289798928

namespace A117796

/-- `A001106(A004524(A146509(n+1)))` -/
def P12494964952289798928.Spec : Prop :=
  ∀ n, P12494964952289798928.a n = A117796 (n + 1)

end A117796

/-!
# A117797: Decagonal numbers divisible by 10.

The programs for A117797, the canonical program `A117797.P11222363613984097648` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117797 has offset 1).

The definition of A117797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117797.P11222363613984097648

`A028994(∑[gcd(2, n)²]-4)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117797

/-- `A028994(∑[gcd(2, n)²]-4)` -/
def P11222363613984097648.Spec : Prop :=
  ∀ n, P11222363613984097648.a n = A117797 (n + 1)

theorem P11222363613984097648.correct : P11222363613984097648.Spec := by
  intro n
  simp only [A117797, Nat.add_sub_cancel]

end A117797

/-! ## A117797.P1618443514964902182

`A028994(A008851(n+1))`
-/

namespace A117797.P1618443514964902182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 (A008851 (n + 1)).toNat

end

end A117797.P1618443514964902182

namespace A117797

/-- `A028994(A008851(n+1))` -/
def P1618443514964902182.Spec : Prop :=
  ∀ n, P1618443514964902182.a n = A117797 (n + 1)

end A117797

/-! ## A117797.P5478532010486338798

`A028994(3*A004526(n)+n)`
-/

namespace A117797.P5478532010486338798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 (3 * A004526 n + (n : ℤ)).toNat

end

end A117797.P5478532010486338798

namespace A117797

/-- `A028994(3*A004526(n)+n)` -/
def P5478532010486338798.Spec : Prop :=
  ∀ n, P5478532010486338798.a n = A117797 (n + 1)

end A117797

/-! ## A117797.P2157994545118910499

`A028994(A042948(n)+A004526(n))`
-/

namespace A117797.P2157994545118910499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 (A042948 n + A004526 n).toNat

end

end A117797.P2157994545118910499

namespace A117797

/-- `A028994(A042948(n)+A004526(n))` -/
def P2157994545118910499.Spec : Prop :=
  ∀ n, P2157994545118910499.a n = A117797 (n + 1)

end A117797

/-! ## A117797.P2463234127605432207

`A001107(A047393(n+1)+n)`
-/

namespace A117797.P2463234127605432207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (A047393 (n + 1) + (n : ℤ)).toNat

end

end A117797.P2463234127605432207

namespace A117797

/-- `A001107(A047393(n+1)+n)` -/
def P2463234127605432207.Spec : Prop :=
  ∀ n, P2463234127605432207.a n = A117797 (n + 1)

end A117797

/-! ## A117797.P7686037060544758088

`A001107(10*n+1-A090771(n+1))`
-/

namespace A117797.P7686037060544758088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 ((10 * n + 1 : ℤ) - A090771 (n + 1)).toNat

end

end A117797.P7686037060544758088

namespace A117797

/-- `A001107(10*n+1-A090771(n+1))` -/
def P7686037060544758088.Spec : Prop :=
  ∀ n, P7686037060544758088.a n = A117797 (n + 1)

end A117797

/-! ## A117797.P2724501900462442558

`A001107(eq[A008616(n+1)+1, A008616(n)])`
-/

namespace A117797.P2724501900462442558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117797.P2724501900462442558

namespace A117797

/-- `A001107(eq[A008616(n+1)+1, A008616(n)])` -/
def P2724501900462442558.Spec : Prop :=
  ∀ n, P2724501900462442558.a n = A117797 (n + 1)

end A117797

/-! ## A117797.P18164567500350290920

`A001107(eq[A008616(n+11), A008616(n)])`
-/

namespace A117797.P18164567500350290920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117797.P18164567500350290920

namespace A117797

/-- `A001107(eq[A008616(n+11), A008616(n)])` -/
def P18164567500350290920.Spec : Prop :=
  ∀ n, P18164567500350290920.a n = A117797 (n + 1)

end A117797

/-! ## A117797.P16545506110566244776

`A228141(n+1)²-A047346(A228141(n+1))`
-/

namespace A117797.P16545506110566244776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228141 (n + 1) ^ 2 - A047346 (A228141 (n + 1)).toNat

end

end A117797.P16545506110566244776

namespace A117797

/-- `A228141(n+1)²-A047346(A228141(n+1))` -/
def P16545506110566244776.Spec : Prop :=
  ∀ n, P16545506110566244776.a n = A117797 (n + 1)

end A117797

/-!
# A117798: Icosagonal numbers divisible by 20.

The programs for A117798, the canonical program `A117798.P16552918837814940565` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117798 has offset 1).

The definition of A117798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117798.P2530876267091516639

`A051872(record[lcm(n, A014029(n))])`
-/

namespace A117798.P2530876267091516639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A014029 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A117798.P2530876267091516639

namespace A117798

/-- `A051872(record[lcm(n, A014029(n))])` -/
def P2530876267091516639.Spec : Prop :=
  ∀ n, P2530876267091516639.a n = A117798 (n + 1)

end A117798

/-! ## A117798.P16552918837814940565

`A051872(2*A008851(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117798

/-- `A051872(2*A008851(n+1))` -/
def P16552918837814940565.Spec : Prop :=
  ∀ n, P16552918837814940565.a n = A117798 (n + 1)

theorem P16552918837814940565.correct : P16552918837814940565.Spec := by
  intro n
  simp only [A117798, Nat.add_sub_cancel]

end A117798

/-! ## A117798.P10905533663362736161

`A051872(A047393(n+1)+n)`
-/

namespace A117798.P10905533663362736161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 (A047393 (n + 1) + (n : ℤ)).toNat

end

end A117798.P10905533663362736161

namespace A117798

/-- `A051872(A047393(n+1)+n)` -/
def P10905533663362736161.Spec : Prop :=
  ∀ n, P10905533663362736161.a n = A117798 (n + 1)

end A117798

/-! ## A117798.P5783549738209941852

`A051872(record[n*A014029(n)²])`
-/

namespace A117798.P5783549738209941852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014029 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117798.P5783549738209941852

namespace A117798

/-- `A051872(record[n*A014029(n)²])` -/
def P5783549738209941852.Spec : Prop :=
  ∀ n, P5783549738209941852.a n = A117798 (n + 1)

end A117798

/-! ## A117798.P454490660063911439

`A051872((A228141(n+1)-1)/2)`
-/

namespace A117798.P454490660063911439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 (SequenceMachineLib.roundAway ((A228141 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A117798.P454490660063911439

namespace A117798

/-- `A051872((A228141(n+1)-1)/2)` -/
def P454490660063911439.Spec : Prop :=
  ∀ n, P454490660063911439.a n = A117798 (n + 1)

end A117798

/-! ## A117798.P17244609733612919637

`A051872(A097062(5*n+2)-3)`
-/

namespace A117798.P17244609733612919637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 (A097062 (5 * n + 2) - 3).toNat

end

end A117798.P17244609733612919637

namespace A117798

/-- `A051872(A097062(5*n+2)-3)` -/
def P17244609733612919637.Spec : Prop :=
  ∀ n, P17244609733612919637.a n = A117798 (n + 1)

end A117798

/-! ## A117798.P13642755076756988568

`A051872(A197652(n+1)+n%2)`
-/

namespace A117798.P13642755076756988568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 (A197652 (n + 1) + ((n % 2 : ℕ) : ℤ)).toNat

end

end A117798.P13642755076756988568

namespace A117798

/-- `A051872(A197652(n+1)+n%2)` -/
def P13642755076756988568.Spec : Prop :=
  ∀ n, P13642755076756988568.a n = A117798 (n + 1)

end A117798

/-! ## A117798.P2620206584643262630

`A051872(A042948(A042948(n))+n)`
-/

namespace A117798.P2620206584643262630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 (A042948 (A042948 n).toNat + (n : ℤ)).toNat

end

end A117798.P2620206584643262630

namespace A117798

/-- `A051872(A042948(A042948(n))+n)` -/
def P2620206584643262630.Spec : Prop :=
  ∀ n, P2620206584643262630.a n = A117798 (n + 1)

end A117798

/-! ## A117798.P13009497373801258839

`record[A014029(n)*A051872(n)*A014029(n)]`
-/

namespace A117798.P13009497373801258839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 n * A051872 n * A014029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117798.P13009497373801258839

namespace A117798

/-- `record[A014029(n)*A051872(n)*A014029(n)]` -/
def P13009497373801258839.Spec : Prop :=
  ∀ n, P13009497373801258839.a n = A117798 (n + 1)

end A117798

/-! ## A117798.P8250990611731608184

`A051872(A008851(n+1)+A008851(n+1))`
-/

namespace A117798.P8250990611731608184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 (A008851 (n + 1) + A008851 (n + 1)).toNat

end

end A117798.P8250990611731608184

namespace A117798

/-- `A051872(A008851(n+1)+A008851(n+1))` -/
def P8250990611731608184.Spec : Prop :=
  ∀ n, P8250990611731608184.a n = A117798 (n + 1)

theorem P8250990611731608184.correct : P8250990611731608184.Spec := by
  intro n
  simp only [A117798, Nat.add_sub_cancel, A117798.P8250990611731608184.a, A117798.P16552918837814940565.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A117798

/-! ## A117798.P1325370756879494088

`A218864(A008574(A008851(n+1)))`
-/

namespace A117798.P1325370756879494088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (A008574 (A008851 (n + 1)).toNat).toNat

end

end A117798.P1325370756879494088

namespace A117798

/-- `A218864(A008574(A008851(n+1)))` -/
def P1325370756879494088.Spec : Prop :=
  ∀ n, P1325370756879494088.a n = A117798 (n + 1)

end A117798

/-! ## A117798.P1954077127287796411

`A051872(A004526(A228141(n+1)))`
-/

namespace A117798.P1954077127287796411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 (A004526 (A228141 (n + 1)).toNat).toNat

end

end A117798.P1954077127287796411

namespace A117798

/-- `A051872(A004526(A228141(n+1)))` -/
def P1954077127287796411.Spec : Prop :=
  ∀ n, P1954077127287796411.a n = A117798 (n + 1)

end A117798

