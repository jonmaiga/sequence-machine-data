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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A004900: Numbers that are the sum of at most 5 nonzero 10th powers.

The programs for A004900, there is no canonical definition to state claims against.
-/

/-! ## A004900.P2139799745140285234

`∪[A004805(n+1), A004899(n+1)]`
-/

namespace A004900.P2139799745140285234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004900.P2139799745140285234

/-! ## A004900.P4257410162197812010

`A004901(eq[1, Δ[A004901(n+1)]]+1)`
-/

namespace A004900.P4257410162197812010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004900.P4257410162197812010

/-! ## A004900.P6116517229959595729

`∩[A004902(n+1)-2, A004902(n+1)]`
-/

namespace A004900.P6116517229959595729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004900.P6116517229959595729

/-! ## A004900.P8056169723883938260

`∩[A004901(n+1)-1, A004903(n+1)]`
-/

namespace A004900.P8056169723883938260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004900.P8056169723883938260

/-! ## A004900.P9466254396319161761

`∩[A004901(n+1)-1, A004904(n+1)]`
-/

namespace A004900.P9466254396319161761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004900.P9466254396319161761

/-! ## A004900.P13479547654815512901

`∩[A004904(n+1), A004904(n+5)-4]`
-/

namespace A004900.P13479547654815512901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 5) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004900.P13479547654815512901

/-! ## A004900.P15066839379459616321

`∩[A004845(n+1), A004901(n+1)]`
-/

namespace A004900.P15066839379459616321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004900.P15066839379459616321

/-! ## A004900.P5658395707233717241

`∩[A004845(n+1), A004902(n+1)]`
-/

namespace A004900.P5658395707233717241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004900.P5658395707233717241

/-! ## A004900.P15063999821558972984

`∩[A004845(n+1), A004903(n+1)]`
-/

namespace A004900.P15063999821558972984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004900.P15063999821558972984

/-! ## A004900.P13293629031388991488

`∩[A004846(n+1)-1, A004903(n+1)]`
-/

namespace A004900.P13293629031388991488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004846 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004900.P13293629031388991488

/-!
# A004901: Numbers that are the sum of at most 6 nonzero 10th powers.

The programs for A004901, there is no canonical definition to state claims against.
-/

/-! ## A004901.P17123123287162849243

`∪[A004806(n+1), A004900(n+1)]`
-/

namespace A004901.P17123123287162849243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004901.P17123123287162849243

/-! ## A004901.P8601396795193771140

`∩[A004902(n+1)-1, A004902(n+1)]`
-/

namespace A004901.P8601396795193771140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004901.P8601396795193771140

/-! ## A004901.P4288787197016098237

`∩[A004903(n+1)-2, A004903(n+1)]`
-/

namespace A004901.P4288787197016098237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004901.P4288787197016098237

/-! ## A004901.P15767532401262929367

`∩[A004904(n+1)-3, A004904(n+1)]`
-/

namespace A004901.P15767532401262929367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004901.P15767532401262929367

/-! ## A004901.P2956337956977811397

`∩[A004906(n+1), A004906(n+1)-5]`
-/

namespace A004901.P2956337956977811397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1) - 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004901.P2956337956977811397

/-! ## A004901.P14192880621415463353

`∩[A004846(n+1), A004902(n+1)]`
-/

namespace A004901.P14192880621415463353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004901.P14192880621415463353

/-! ## A004901.P17693114265101443826

`∩[A004846(n+1), A004903(n+1)]`
-/

namespace A004901.P17693114265101443826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004901.P17693114265101443826

/-! ## A004901.P9199224771620177246

`∩[A004846(n+1), A004904(n+1)]`
-/

namespace A004901.P9199224771620177246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004901.P9199224771620177246

/-!
# A004902: Numbers that are the sum of at most 7 nonzero 10th powers.

The programs for A004902, there is no canonical definition to state claims against.
-/

/-! ## A004902.P7278212193467866619

`∪[A004807(n+1), A004901(n+1)]`
-/

namespace A004902.P7278212193467866619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004902.P7278212193467866619

/-! ## A004902.P12179942857868088483

`∩[A004903(n+1)-1, A004903(n+1)]`
-/

namespace A004902.P12179942857868088483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004902.P12179942857868088483

/-! ## A004902.P7267182726637597690

`∩[A004904(n+1)-2, A004904(n+1)]`
-/

namespace A004902.P7267182726637597690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004902.P7267182726637597690

/-! ## A004902.P6349030102886644569

`∩[A004905(n+1)-3, A004905(n+1)]`
-/

namespace A004902.P6349030102886644569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004902.P6349030102886644569

/-! ## A004902.P9899018025455374092

`∩[A004906(n+1), A004906(n+1)-4]`
-/

namespace A004902.P9899018025455374092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004902.P9899018025455374092

/-! ## A004902.P9869911664859079036

`∩[A004907(n+1)-5, A004907(n+1)]`
-/

namespace A004902.P9869911664859079036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004902.P9869911664859079036

/-!
# A004903: Numbers that are the sum of at most 8 nonzero 10th powers.

The programs for A004903, there is no canonical definition to state claims against.
-/

/-! ## A004903.P7311035489922058897

`∪[A004808(n+1), A004902(n+1)]`
-/

namespace A004903.P7311035489922058897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004903.P7311035489922058897

/-! ## A004903.P10544869593629597761

`∩[A004904(n+1)-1, A004904(n+1)]`
-/

namespace A004903.P10544869593629597761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004903.P10544869593629597761

/-! ## A004903.P16392303468540941434

`∩[A004905(n+1)-2, A004905(n+1)]`
-/

namespace A004903.P16392303468540941434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004903.P16392303468540941434

/-! ## A004903.P7778660957264415496

`∩[A004906(n+1)-3, A004906(n+1)]`
-/

namespace A004903.P7778660957264415496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004903.P7778660957264415496

/-! ## A004903.P12805611332258548710

`∩[A004907(n+1)-4, A004907(n+1)]`
-/

namespace A004903.P12805611332258548710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004903.P12805611332258548710

/-!
# A004904: Numbers that are the sum of at most 9 nonzero 10th powers.

The programs for A004904, there is no canonical definition to state claims against.
-/

/-! ## A004904.P7785769019773049110

`∪[A004809(n+1), A004903(n+1)]`
-/

namespace A004904.P7785769019773049110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004904.P7785769019773049110

/-! ## A004904.P16575507974028167139

`A004905(eq[1, Δ[A004905(n+1)]]+1)`
-/

namespace A004904.P16575507974028167139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004904.P16575507974028167139

/-! ## A004904.P17384110283594812740

`A004905(lt[Δ[A004905(n+1)], 2]+1)`
-/

namespace A004904.P17384110283594812740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A004904.P17384110283594812740

/-! ## A004904.P16746160813568175533

`∩[A004906(n+1)-2, A004906(n+1)]`
-/

namespace A004904.P16746160813568175533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004904.P16746160813568175533

/-! ## A004904.P9791338167981964629

`∩[A004907(n+1)-3, A004907(n+1)]`
-/

namespace A004904.P9791338167981964629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004904.P9791338167981964629

/-! ## A004904.P6311915991397462198

`∩[A004849(n+1), A004905(n+1)]`
-/

namespace A004904.P6311915991397462198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004904.P6311915991397462198

/-! ## A004904.P3794904448419594417

`∩[A004849(n+1), A004906(n+1)]`
-/

namespace A004904.P3794904448419594417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004904.P3794904448419594417

/-! ## A004904.P5451164942940386044

`∩[A004849(n+1), A004907(n+1)]`
-/

namespace A004904.P5451164942940386044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004904.P5451164942940386044

/-!
# A004905: Numbers that are the sum of at most 10 nonzero 10th powers.

The programs for A004905, there is no canonical definition to state claims against.
-/

/-! ## A004905.P2673814683602795029

`∪[A004810(n+1), A004904(n+1)]`
-/

namespace A004905.P2673814683602795029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004905.P2673814683602795029

/-! ## A004905.P10236154024727289417

`∩[A004906(n+1)-1, A004906(n+1)]`
-/

namespace A004905.P10236154024727289417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004905.P10236154024727289417

/-! ## A004905.P14435156996910478064

`∩[A004907(n+1)-2, A004907(n+1)]`
-/

namespace A004905.P14435156996910478064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004905.P14435156996910478064

/-! ## A004905.P13841722067186414601

`∩[A057428(2*(n+2))+A004906(n+1), A004906(n+1)]`
-/

namespace A004905.P13841722067186414601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * (n + 2)) + A004906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004905.P13841722067186414601

/-! ## A004905.P2237438706116416473

`A336820(A055999(n+7)-3)`
-/

namespace A004905.P2237438706116416473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A055999 (n + 7) - 3).toNat

end

end A004905.P2237438706116416473

/-! ## A004905.P1157626206371246746

`A336820(A000124(n+10)-10)`
-/

namespace A004905.P1157626206371246746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000124 (n + 10) - 10).toNat

end

end A004905.P1157626206371246746

/-! ## A004905.P4290887564007978682

`A336820(A005408(n+5)+A000096(n+7))`
-/

namespace A004905.P4290887564007978682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A005408 (n + 5) + A000096 (n + 7)).toNat

end

end A004905.P4290887564007978682

/-! ## A004905.P8438234648396492606

`A336820(A004273(n+6)+A000096(n+7))`
-/

namespace A004905.P8438234648396492606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A004273 (n + 6) + A000096 (n + 7)).toNat

end

end A004905.P8438234648396492606

/-! ## A004905.P17531710556298473138

`∩[A004850(n+1), A004906(n+1)]`
-/

namespace A004905.P17531710556298473138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004905.P17531710556298473138

/-! ## A004905.P9102223692928111829

`∩[A004850(n+1), A004907(n+1)]`
-/

namespace A004905.P9102223692928111829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004905.P9102223692928111829

/-!
# A004906: Numbers that are the sum of at most 11 nonzero 10th powers.

The programs for A004906, there is no canonical definition to state claims against.
-/

/-! ## A004906.P4856850258913040227

`∪[A004811(n+1), A004905(n+1)]`
-/

namespace A004906.P4856850258913040227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004906.P4856850258913040227

/-! ## A004906.P1824820443689936106

`∩[A004907(n+1)-1, A004907(n+1)]`
-/

namespace A004906.P1824820443689936106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004906.P1824820443689936106

/-! ## A004906.P6995048625931884316

`∩[A004907(n+1), A023443(A004907(n+1))]`
-/

namespace A004906.P6995048625931884316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004907 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004906.P6995048625931884316

/-! ## A004906.P3180766831479553308

`A004907(A256474(n+1))%A115771(n+3)`
-/

namespace A004906.P3180766831479553308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004907 (A256474 (n + 1)).toNat) (A115771 (n + 3))

end

end A004906.P3180766831479553308

/-! ## A004906.P4210222281258913167

`A004907(A256474(n+1))%A219560(n)`
-/

namespace A004906.P4210222281258913167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004907 (A256474 (n + 1)).toNat) (A219560 n)

end

end A004906.P4210222281258913167

/-!
# A004907: Numbers that are the sum of at most 12 nonzero 10th powers.

The programs for A004907, there is no canonical definition to state claims against.
-/

/-! ## A004907.P142305077029390373

`∪[A004812(n+1), A004906(n+1)]`
-/

namespace A004907.P142305077029390373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004907.P142305077029390373

/-! ## A004907.P8203447371804847267

`A004896(∑[n^A047766(n+1)])`
-/

namespace A004907.P8203447371804847267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A047766 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A004907.P8203447371804847267

/-! ## A004907.P5258215024866522823

`A356114(A014382(n))+n`
-/

namespace A004907.P5258215024866522823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356114 (A014382 n).toNat + (n : ℤ)

end

end A004907.P5258215024866522823

/-!
# A004908: Numbers that are the sum of at most 2 positive 11th powers.

The programs for A004908, there is no canonical definition to state claims against.
-/

/-! ## A004908.P9507410825103383220

`∪[A004813(n+1), A008455(n)]`
-/

namespace A004908.P9507410825103383220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004908.P9507410825103383220

/-! ## A004908.P4818952216358589501

`∩[A004909(n+1)-1, A004909(n+1)]`
-/

namespace A004908.P4818952216358589501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004909 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004908.P4818952216358589501

/-! ## A004908.P1460553218295941973

`∩[A004910(n+1)-2, A004910(n+1)]`
-/

namespace A004908.P1460553218295941973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004910 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004908.P1460553218295941973

/-! ## A004908.P10599302582126871604

`∩[A004911(n+1)-3, A004911(n+1)]`
-/

namespace A004908.P10599302582126871604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004908.P10599302582126871604

/-! ## A004908.P9168903752455493641

`∩[A004912(n+1)-4, A004912(n+1)]`
-/

namespace A004908.P9168903752455493641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004908.P9168903752455493641

/-!
# A004909: Numbers that are the sum of at most 3 positive 11th powers.

The programs for A004909, there is no canonical definition to state claims against.
-/

/-! ## A004909.P16142612846532978781

`∪[A004814(n+1), A004908(n+1)]`
-/

namespace A004909.P16142612846532978781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004909.P16142612846532978781

/-! ## A004909.P9701144548269666887

`∩[A004910(n+1)-1, A004910(n+1)]`
-/

namespace A004909.P9701144548269666887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004910 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004909.P9701144548269666887

/-! ## A004909.P14413450330552550285

`∩[A004911(n+1)-2, A004911(n+1)]`
-/

namespace A004909.P14413450330552550285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004909.P14413450330552550285

/-! ## A004909.P13164232937411612378

`∩[A004912(n+1)-3, A004912(n+1)]`
-/

namespace A004909.P13164232937411612378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004909.P13164232937411612378

/-! ## A004909.P2044205398022505644

`∩[A004913(n+1)-4, A004913(n+1)]`
-/

namespace A004909.P2044205398022505644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004909.P2044205398022505644

/-! ## A004909.P7165258303477671108

`∩[A004915(n+1)-6, A004915(n+1)]`
-/

namespace A004909.P7165258303477671108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004915 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004909.P7165258303477671108

/-!
# A004910: Numbers that are the sum of at most 4 positive 11th powers.

The programs for A004910, there is no canonical definition to state claims against.
-/

/-! ## A004910.P12934755285193767472

`∪[A004815(n+1), A004909(n+1)]`
-/

namespace A004910.P12934755285193767472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004910.P12934755285193767472

/-! ## A004910.P3484318227071972355

`A004911(eq[1, Δ[A004911(n+1)]]+1)`
-/

namespace A004910.P3484318227071972355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004910.P3484318227071972355

/-! ## A004910.P9662610422540182273

`A004911(record[n/Δ[A004911(n+1)]]+1)`
-/

namespace A004910.P9662610422540182273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A004910.P9662610422540182273

/-! ## A004910.P3539918951799105720

`A004911(eq[1, A004911(n+2)-A004911(n+1)]+1)`
-/

namespace A004910.P3539918951799105720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 2) - A004911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004910.P3539918951799105720

/-! ## A004910.P4011229147736966225

`∩[A004912(n+1)-2, A004912(n+1)]`
-/

namespace A004910.P4011229147736966225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004910.P4011229147736966225

/-! ## A004910.P8378272289871711263

`∩[A004913(n+1)-3, A004913(n+1)]`
-/

namespace A004910.P8378272289871711263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004910.P8378272289871711263

/-! ## A004910.P2094649099105159642

`A004911(A123576(n)+1+n)`
-/

namespace A004910.P2094649099105159642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (A123576 n + 1 + (n : ℤ)).toNat

end

end A004910.P2094649099105159642

/-!
# A004911: Numbers that are the sum of at most 5 positive 11th powers.

The programs for A004911, there is no canonical definition to state claims against.
-/

/-! ## A004911.P11248558896545962461

`∪[A004816(n+1), A004910(n+1)]`
-/

namespace A004911.P11248558896545962461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004911.P11248558896545962461

/-! ## A004911.P12483523457936755252

`A004912(eq[1, Δ[A004912(n+1)]]+1)`
-/

namespace A004911.P12483523457936755252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004911.P12483523457936755252

/-! ## A004911.P2716409591428390769

`A004912(record[n/Δ[A004912(n+1)]]+1)`
-/

namespace A004911.P2716409591428390769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A004911.P2716409591428390769

/-! ## A004911.P11045457555692310226

`A004912(record[n+1-Δ[A004912(n+1)]]+1)`
-/

namespace A004911.P11045457555692310226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A004911.P11045457555692310226

/-! ## A004911.P14583363055609626354

`A004912(eq[1, A004912(n+2)-A004912(n+1)]+1)`
-/

namespace A004911.P14583363055609626354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 2) - A004912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004911.P14583363055609626354

/-! ## A004911.P4839366959306691671

`∩[A004913(n+1)-2, A004913(n+1)]`
-/

namespace A004911.P4839366959306691671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004911.P4839366959306691671

/-! ## A004911.P13213115120469533781

`A004912(A123577(n)+1+n)`
-/

namespace A004911.P13213115120469533781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (A123577 n + 1 + (n : ℤ)).toNat

end

end A004911.P13213115120469533781

/-!
# A004912: Numbers that are the sum of at most 6 positive 11th powers.

The programs for A004912, there is no canonical definition to state claims against.
-/

/-! ## A004912.P12258490943621718364

`∪[A004817(n+1), A004911(n+1)]`
-/

namespace A004912.P12258490943621718364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004912.P12258490943621718364

/-! ## A004912.P7680904827621667345

`A004913(eq[1, Δ[A004913(n+1)]]+1)`
-/

namespace A004912.P7680904827621667345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004912.P7680904827621667345

/-! ## A004912.P17066154390012732351

`A004913(lt[Δ[A004913(n+1)], 2]+1)`
-/

namespace A004912.P17066154390012732351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A004912.P17066154390012732351

/-! ## A004912.P7392062344040786833

`record[gcd(1-A004913(n+2), A004913(n+1))]`
-/

namespace A004912.P7392062344040786833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A004913 (n + 2)) (A004913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004912.P7392062344040786833

/-! ## A004912.P14758014248614606364

`A004913(record[n+1-Δ[A004913(n+1)]]+1)`
-/

namespace A004912.P14758014248614606364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A004912.P14758014248614606364

/-! ## A004912.P14911766634155340624

`A004913(eq[1, A004913(n+2)-A004913(n+1)]+1)`
-/

namespace A004912.P14911766634155340624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 2) - A004913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004912.P14911766634155340624

/-! ## A004912.P4194927346163504811

`∩[A004914(n+1)-2, A004914(n+1)]`
-/

namespace A004912.P4194927346163504811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004912.P4194927346163504811

/-!
# A004913: Numbers that are the sum of at most 7 positive 11th powers.

The programs for A004913, there is no canonical definition to state claims against.
-/

/-! ## A004913.P14056695949695832804

`∪[A004818(n+1), A004912(n+1)]`
-/

namespace A004913.P14056695949695832804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004913.P14056695949695832804

/-! ## A004913.P14618677832630937769

`A004914(eq[1, Δ[A004914(n+1)]]+1)`
-/

namespace A004913.P14618677832630937769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004913.P14618677832630937769

/-! ## A004913.P3294037275493923043

`A004914(lt[Δ[A004914(n+1)], 2]+1)`
-/

namespace A004913.P3294037275493923043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A004913.P3294037275493923043

/-! ## A004913.P13044443676144798112

`A004914(record[n/Δ[A004914(n+1)]]+1)`
-/

namespace A004913.P13044443676144798112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A004913.P13044443676144798112

/-! ## A004913.P2423610599338768201

`record[gcd(1-A004914(n+2), A004914(n+1))]`
-/

namespace A004913.P2423610599338768201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A004914 (n + 2)) (A004914 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004913.P2423610599338768201

/-! ## A004913.P10783100821454472811

`A004914(eq[1, A004914(n+2)-A004914(n+1)]+1)`
-/

namespace A004913.P10783100821454472811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (n + 2) - A004914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004913.P10783100821454472811

/-! ## A004913.P13658087126287785705

`∩[A004915(n+1)-2, A004915(n+1)]`
-/

namespace A004913.P13658087126287785705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004915 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004913.P13658087126287785705

/-!
# A004914: Numbers that are the sum of at most 8 positive 11th powers.

The programs for A004914, there is no canonical definition to state claims against.
-/

/-! ## A004914.P8841221554107923415

`∪[A004819(n+1), A004913(n+1)]`
-/

namespace A004914.P8841221554107923415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004914.P8841221554107923415

/-! ## A004914.P15565458654536831458

`∩[A004915(n+1)-1, A004915(n+1)]`
-/

namespace A004914.P15565458654536831458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004915 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004914.P15565458654536831458

/-! ## A004914.P243833465365743050

`∩[A004916(n+1)-2, A004916(n+1)]`
-/

namespace A004914.P243833465365743050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004916 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004914.P243833465365743050

/-! ## A004914.P7038111842805474365

`∩[A004917(n+1)-3, A004917(n+1)]`
-/

namespace A004914.P7038111842805474365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004914.P7038111842805474365

/-! ## A004914.P6122803852082232305

`∩[A004918(n+1)-4, A004918(n+1)]`
-/

namespace A004914.P6122803852082232305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004914.P6122803852082232305

/-!
# A004915: Numbers that are the sum of at most 9 positive 11th powers.

The programs for A004915, there is no canonical definition to state claims against.
-/

/-! ## A004915.P4728550324926625929

`∪[A004820(n+1), A004914(n+1)]`
-/

namespace A004915.P4728550324926625929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004915.P4728550324926625929

/-! ## A004915.P4460888018356273953

`∩[A004916(n+1)-1, A004916(n+1)]`
-/

namespace A004915.P4460888018356273953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004916 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004915.P4460888018356273953

/-! ## A004915.P5169454060988148641

`∩[A004917(n+1)-2, A004917(n+1)]`
-/

namespace A004915.P5169454060988148641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004915.P5169454060988148641

/-! ## A004915.P2396343361594890716

`∩[A004918(n+1), A004918(n+2)-3]`
-/

namespace A004915.P2396343361594890716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 2) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004915.P2396343361594890716

/-! ## A004915.P10068046119457552602

`∩[A004916(n+1), A023443(A004916(n+1))]`
-/

namespace A004915.P10068046119457552602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004916 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004915.P10068046119457552602

/-!
# A004916: Numbers that are the sum of at most 10 positive 11th powers.

The programs for A004916, there is no canonical definition to state claims against.
-/

/-! ## A004916.P8140270515408453011

`∪[A004821(n+1), A004915(n+1)]`
-/

namespace A004916.P8140270515408453011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004916.P8140270515408453011

/-! ## A004916.P520137440215570194

`∩[A004917(n+1)-1, A004917(n+1)]`
-/

namespace A004916.P520137440215570194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004916.P520137440215570194

/-! ## A004916.P14498013196443328586

`∩[A004918(n+1)-2, A004918(n+1)]`
-/

namespace A004916.P14498013196443328586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004916.P14498013196443328586

/-! ## A004916.P17624824003354397164

`∩[A004917(n+1), A023443(A004917(n+1))]`
-/

namespace A004916.P17624824003354397164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004917 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004916.P17624824003354397164

/-! ## A004916.P17469788404175340804

`∩[A004917(n+1), A023444(A004918(n+1))]`
-/

namespace A004916.P17469788404175340804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A004918 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004916.P17469788404175340804

/-!
# A004917: Numbers that are the sum of at most 11 positive 11th powers.

The programs for A004917, there is no canonical definition to state claims against.
-/

/-! ## A004917.P14645648284954383712

`∪[A004822(n+1), A004916(n+1)]`
-/

namespace A004917.P14645648284954383712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004917.P14645648284954383712

/-! ## A004917.P308483446532712025

`∩[A004918(n+1)-1, A004918(n+1)]`
-/

namespace A004917.P308483446532712025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004917.P308483446532712025

/-! ## A004917.P15543967159142275420

`A336820(A055999(n+8)-4)`
-/

namespace A004917.P15543967159142275420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A055999 (n + 8) - 4).toNat

end

end A004917.P15543967159142275420

/-! ## A004917.P18382440101270885435

`A336820(A000124(n+11)-11)`
-/

namespace A004917.P18382440101270885435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000124 (n + 11) - 11).toNat

end

end A004917.P18382440101270885435

/-! ## A004917.P13265516285917177689

`A336820(A167614(n+10)-13)`
-/

namespace A004917.P13265516285917177689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A167614 (n + 10) - 13).toNat

end

end A004917.P13265516285917177689

/-! ## A004917.P4995321320757413814

`A336820(A008574(n+7)+A000217(n+7))`
-/

namespace A004917.P4995321320757413814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A008574 (n + 7) + A000217 (n + 7)).toNat

end

end A004917.P4995321320757413814

/-! ## A004917.P9879363196682003721

`A336820(A144396(n+5)+A000217(n+9))`
-/

namespace A004917.P9879363196682003721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A144396 (n + 5) + A000217 (n + 9)).toNat

end

end A004917.P9879363196682003721

/-! ## A004917.P7326202539092865293

`∩[A023444(A004918(n+1)+1), A004918(n+1)]`
-/

namespace A004917.P7326202539092865293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A004918 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004917.P7326202539092865293

/-!
# A004918: Numbers that are the sum of at most 12 positive 11th powers.

The programs for A004918, there is no canonical definition to state claims against.
-/

/-! ## A004918.P14521862929508702708

`∪[A004823(n+1), A004917(n+1)]`
-/

namespace A004918.P14521862929508702708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004918.P14521862929508702708

/-! ## A004918.P8084266756948905083

`A004907(A077168(n))*A271950(n)`
-/

namespace A004918.P8084266756948905083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (A077168 n).toNat * A271950 n

end

end A004918.P8084266756948905083

/-! ## A004918.P12507765722832899235

`A004907(A077168(n))*A294775(n)`
-/

namespace A004918.P12507765722832899235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (A077168 n).toNat * A294775 n

end

end A004918.P12507765722832899235

/-! ## A004918.P16159239527541778759

`A004907(n+1)*A368845(A185213(n))`
-/

namespace A004918.P16159239527541778759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1) * A368845 (A185213 n).toNat

end

end A004918.P16159239527541778759

/-!
# A004919: a(n) = floor(n*phi^4), where phi is the golden ratio, A001622.

The programs for A004919, the canonical program `A004919.P14238938947881621226` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004919 has offset 0).

The definition of A004919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^4)` (program `A004919.P14238938947881621226`, by `A004919.P14238938947881621226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004919.P14238938947881621226

`floor(n*ϕ^4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004919

/-- `floor(n*ϕ^4)` -/
def P14238938947881621226.Spec : Prop :=
  ∀ n, P14238938947881621226.a n = A004919 n

theorem P14238938947881621226.correct : P14238938947881621226.Spec := by
  intro n
  simp only [A004919]

end A004919

/-! ## A004919.P4141877559863898586

`A057428(n)+A004959(n)`
-/

namespace A004919.P4141877559863898586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004959 n

end

end A004919.P4141877559863898586

namespace A004919

/-- `A057428(n)+A004959(n)` -/
def P4141877559863898586.Spec : Prop :=
  ∀ n, P4141877559863898586.a n = A004919 n

end A004919

/-! ## A004919.P4368966768372124211

`A004959(n)-A057427(n)`
-/

namespace A004919.P4368966768372124211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004959 n - A057427 n

end

end A004919.P4368966768372124211

namespace A004919

/-- `A004959(n)-A057427(n)` -/
def P4368966768372124211.Spec : Prop :=
  ∀ n, P4368966768372124211.a n = A004919 n

end A004919

/-! ## A004919.P5515965946384367555

`A008589(n)-A195174(n)`
-/

namespace A004919.P5515965946384367555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - A195174 n

end

end A004919.P5515965946384367555

namespace A004919

/-- `A008589(n)-A195174(n)` -/
def P5515965946384367555.Spec : Prop :=
  ∀ n, P5515965946384367555.a n = A004919 n

end A004919

/-! ## A004919.P14465964614486487685

`A016993(n)-(A195174(n)+1)`
-/

namespace A004919.P14465964614486487685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n - (A195174 n + 1)

end

end A004919.P14465964614486487685

namespace A004919

/-- `A016993(n)-(A195174(n)+1)` -/
def P14465964614486487685.Spec : Prop :=
  ∀ n, P14465964614486487685.a n = A004919 n

end A004919

/-! ## A004919.P10796756329921946979

`A017005(n)-(A195174(n)+2)`
-/

namespace A004919.P10796756329921946979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n - (A195174 n + 2)

end

end A004919.P10796756329921946979

namespace A004919

/-- `A017005(n)-(A195174(n)+2)` -/
def P10796756329921946979.Spec : Prop :=
  ∀ n, P10796756329921946979.a n = A004919 n

end A004919

/-! ## A004919.P10701748248499075642

`∑[A018246(n+1)]-A018246(n+1)+n`
-/

namespace A004919.P10701748248499075642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A018246 (n + 1) + (n : ℤ)

end

end A004919.P10701748248499075642

namespace A004919

/-- `∑[A018246(n+1)]-A018246(n+1)+n` -/
def P10701748248499075642.Spec : Prop :=
  ∀ n, P10701748248499075642.a n = A004919 n

end A004919

/-! ## A004919.P18317134775850611140

`A004959(n)-A004956(n)/A026351(n)`
-/

namespace A004919.P18317134775850611140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004959 n : ℚ) - (A004956 n : ℚ) / (A026351 n : ℚ)

end

end A004919.P18317134775850611140

namespace A004919

/-- `A004959(n)-A004956(n)/A026351(n)` -/
def P18317134775850611140.Spec : Prop :=
  ∀ n, P18317134775850611140.a n = (A004919 n : ℚ)

end A004919

/-! ## A004919.P11334325666124005965

`A004959(n)+A026352(n)-A007066(n+1)`
-/

namespace A004919.P11334325666124005965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004959 n + (A026352 n - A007066 (n + 1))

end

end A004919.P11334325666124005965

namespace A004919

/-- `A004959(n)+A026352(n)-A007066(n+1)` -/
def P11334325666124005965.Spec : Prop :=
  ∀ n, P11334325666124005965.a n = A004919 n

end A004919

/-! ## A004919.P5026270189124293920

`A004939(n)-A327174(A004939(n)+n)`
-/

namespace A004919.P5026270189124293920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004939 n - A327174 (A004939 n + (n : ℤ)).toNat

end

end A004919.P5026270189124293920

namespace A004919

/-- `A004939(n)-A327174(A004939(n)+n)` -/
def P5026270189124293920.Spec : Prop :=
  ∀ n, P5026270189124293920.a n = A004919 n

end A004919

/-! ## A004919.P5436957622740542501

`A026352(3*n)-(n+1)`
-/

namespace A004919.P5436957622740542501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (3 * n) - (n + 1 : ℤ)

end

end A004919.P5436957622740542501

namespace A004919

/-- `A026352(3*n)-(n+1)` -/
def P5436957622740542501.Spec : Prop :=
  ∀ n, P5436957622740542501.a n = A004919 n

end A004919

/-! ## A004919.P4340377612440400306

`A060143(3*n)+5*n`
-/

namespace A004919.P4340377612440400306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (3 * n) + (5 * n : ℤ)

end

end A004919.P4340377612440400306

namespace A004919

/-- `A060143(3*n)+5*n` -/
def P4340377612440400306.Spec : Prop :=
  ∀ n, P4340377612440400306.a n = A004919 n

end A004919

/-! ## A004919.P5346643022862905913

`A026356(3*n+1)-(n+2)`
-/

namespace A004919.P5346643022862905913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (3 * n + 1) - (n + 2 : ℤ)

end

end A004919.P5346643022862905913

namespace A004919

/-- `A026356(3*n+1)-(n+2)` -/
def P5346643022862905913.Spec : Prop :=
  ∀ n, P5346643022862905913.a n = A004919 n

end A004919

/-! ## A004919.P10125779791287920392

`A066096(3*n)+A005843(n)`
-/

namespace A004919.P10125779791287920392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (3 * n) + A005843 n

end

end A004919.P10125779791287920392

namespace A004919

/-- `A066096(3*n)+A005843(n)` -/
def P10125779791287920392.Spec : Prop :=
  ∀ n, P10125779791287920392.a n = A004919 n

end A004919

/-! ## A004919.P17351954645409001069

`A004976(3*n)-(A007067(3*n)+n)`
-/

namespace A004919.P17351954645409001069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (3 * n) - (A007067 (3 * n) + (n : ℤ))

end

end A004919.P17351954645409001069

namespace A004919

/-- `A004976(3*n)-(A007067(3*n)+n)` -/
def P17351954645409001069.Spec : Prop :=
  ∀ n, P17351954645409001069.a n = A004919 n

end A004919

/-! ## A004919.P16524427451490275839

`(A284621(3*n+1)-A004442(2*n))/2`
-/

namespace A004919.P16524427451490275839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284621 (3 * n + 1) - A004442 (2 * n) : ℚ) / 2

end

end A004919.P16524427451490275839

namespace A004919

/-- `(A284621(3*n+1)-A004442(2*n))/2` -/
def P16524427451490275839.Spec : Prop :=
  ∀ n, P16524427451490275839.a n = (A004919 n : ℚ)

end A004919

/-! ## A004919.P826100363102048754

`A004957(3*n)-A063196(2*n+1)+n`
-/

namespace A004919.P826100363102048754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (3 * n) - A063196 (2 * n + 1) + (n : ℤ)

end

end A004919.P826100363102048754

namespace A004919

/-- `A004957(3*n)-A063196(2*n+1)+n` -/
def P826100363102048754.Spec : Prop :=
  ∀ n, P826100363102048754.a n = A004919 n

end A004919

/-! ## A004919.P6566056866945633452

`A003622(3*n+1)-(A001468(3*n)+n)`
-/

namespace A004919.P6566056866945633452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (3 * n + 1) - (A001468 (3 * n) + (n : ℤ))

end

end A004919.P6566056866945633452

namespace A004919

/-- `A003622(3*n+1)-(A001468(3*n)+n)` -/
def P6566056866945633452.Spec : Prop :=
  ∀ n, P6566056866945633452.a n = A004919 n

end A004919

/-! ## A004919.P7010445364639692728

`A022342(A026351(3*n))-n`
-/

namespace A004919.P7010445364639692728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A026351 (3 * n)).toNat - (n : ℤ)

end

end A004919.P7010445364639692728

namespace A004919

/-- `A022342(A026351(3*n))-n` -/
def P7010445364639692728.Spec : Prop :=
  ∀ n, P7010445364639692728.a n = A004919 n

end A004919

/-! ## A004919.P377960742680248826

`A004939(n)-A327174(A004939(3*n))`
-/

namespace A004919.P377960742680248826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004939 n - A327174 (A004939 (3 * n)).toNat

end

end A004919.P377960742680248826

namespace A004919

/-- `A004939(n)-A327174(A004939(3*n))` -/
def P377960742680248826.Spec : Prop :=
  ∀ n, P377960742680248826.a n = A004919 n

end A004919

/-!
# A004920: a(n) = floor(n*phi^5), where phi is the golden ratio, A001622.

The programs for A004920, the canonical program `A004920.P15895176925752042080` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004920 has offset 0).

The definition of A004920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^5)` (program `A004920.P15895176925752042080`, by `A004920.P15895176925752042080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004920.P15895176925752042080

`floor(n*ϕ^5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004920

/-- `floor(n*ϕ^5)` -/
def P15895176925752042080.Spec : Prop :=
  ∀ n, P15895176925752042080.a n = A004920 n

theorem P15895176925752042080.correct : P15895176925752042080.Spec := by
  intro n
  simp only [A004920]

end A004920

/-! ## A004920.P10426264519623258588

`ceil(n*ϕ^5-A057427(n))`
-/

namespace A004920.P10426264519623258588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 5 - (A057427 n : ℝ)⌉

end

end A004920.P10426264519623258588

namespace A004920

/-- `ceil(n*ϕ^5-A057427(n))` -/
def P10426264519623258588.Spec : Prop :=
  ∀ n, P10426264519623258588.a n = A004920 n

end A004920

/-! ## A004920.P8160711607438973305

`A057428(n)+A004960(n)`
-/

namespace A004920.P8160711607438973305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004960 n

end

end A004920.P8160711607438973305

namespace A004920

/-- `A057428(n)+A004960(n)` -/
def P8160711607438973305.Spec : Prop :=
  ∀ n, P8160711607438973305.a n = A004920 n

end A004920

/-! ## A004920.P18102476215593767474

`A004960(n)-A057427(n)`
-/

namespace A004920.P18102476215593767474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004960 n - A057427 n

end

end A004920.P18102476215593767474

namespace A004920

/-- `A004960(n)-A057427(n)` -/
def P18102476215593767474.Spec : Prop :=
  ∀ n, P18102476215593767474.a n = A004920 n

end A004920

/-! ## A004920.P15745122019386657044

`A060143(5*n)+8*n`
-/

namespace A004920.P15745122019386657044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (5 * n) + (8 * n : ℤ)

end

end A004920.P15745122019386657044

namespace A004920

/-- `A060143(5*n)+8*n` -/
def P15745122019386657044.Spec : Prop :=
  ∀ n, P15745122019386657044.a n = A004920 n

end A004920

/-! ## A004920.P10009515062031457969

`A026356(5*n+1)-2*(n+1)`
-/

namespace A004920.P10009515062031457969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (5 * n + 1) - (2 * (n + 1) : ℤ)

end

end A004920.P10009515062031457969

namespace A004920

/-- `A026356(5*n+1)-2*(n+1)` -/
def P10009515062031457969.Spec : Prop :=
  ∀ n, P10009515062031457969.a n = A004920 n

end A004920

/-! ## A004920.P8366479546015074601

`A004960(n)-A141169(A000124(n))`
-/

namespace A004920.P8366479546015074601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004960 n - A141169 (A000124 n).toNat

end

end A004920.P8366479546015074601

namespace A004920

/-- `A004960(n)-A141169(A000124(n))` -/
def P8366479546015074601.Spec : Prop :=
  ∀ n, P8366479546015074601.a n = A004920 n

end A004920

/-!
# A004921: a(n) = floor(n*phi^6), phi = golden ratio, A001622.

The programs for A004921, the canonical program `A004921.P17133054586810558280` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004921 has offset 0).

The definition of A004921 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^6)` (program `A004921.P17133054586810558280`, by `A004921.P17133054586810558280.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004921.P17133054586810558280

`floor(n*ϕ^6)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004921

/-- `floor(n*ϕ^6)` -/
def P17133054586810558280.Spec : Prop :=
  ∀ n, P17133054586810558280.a n = A004921 n

theorem P17133054586810558280.correct : P17133054586810558280.Spec := by
  intro n
  simp only [A004921]

end A004921

/-! ## A004921.P33348047801385151

`A057428(n)+A004961(n)`
-/

namespace A004921.P33348047801385151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004961 n

end

end A004921.P33348047801385151

namespace A004921

/-- `A057428(n)+A004961(n)` -/
def P33348047801385151.Spec : Prop :=
  ∀ n, P33348047801385151.a n = A004921 n

end A004921

/-! ## A004921.P15765990182872053269

`A004961(n)-A057427(n)`
-/

namespace A004921.P15765990182872053269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004961 n - A057427 n

end

end A004921.P15765990182872053269

namespace A004921

/-- `A004961(n)-A057427(n)` -/
def P15765990182872053269.Spec : Prop :=
  ∀ n, P15765990182872053269.a n = A004921 n

end A004921

/-! ## A004921.P14151510439278927406

`A004938(2*n)+A004976(2*n)+n`
-/

namespace A004921.P14151510439278927406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 (2 * n) + (A004976 (2 * n) + (n : ℤ))

end

end A004921.P14151510439278927406

namespace A004921

/-- `A004938(2*n)+A004976(2*n)+n` -/
def P14151510439278927406.Spec : Prop :=
  ∀ n, P14151510439278927406.a n = A004921 n

end A004921

/-! ## A004921.P7241891657109311632

`A276854(4*n)+A008587(n)`
-/

namespace A004921.P7241891657109311632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (4 * n) + A008587 n

end

end A004921.P7241891657109311632

namespace A004921

/-- `A276854(4*n)+A008587(n)` -/
def P7241891657109311632.Spec : Prop :=
  ∀ n, P7241891657109311632.a n = A004921 n

end A004921

/-! ## A004921.P7288958780581443436

`A008586(n)+A276854(A008586(n))+n`
-/

namespace A004921.P7288958780581443436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (A276854 (A008586 n).toNat + (n : ℤ))

end

end A004921.P7288958780581443436

namespace A004921

/-- `A008586(n)+A276854(A008586(n))+n` -/
def P7288958780581443436.Spec : Prop :=
  ∀ n, P7288958780581443436.a n = A004921 n

end A004921

/-! ## A004921.P18083714479306979956

`A004976(4*n)+n`
-/

namespace A004921.P18083714479306979956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (4 * n) + (n : ℤ)

end

end A004921.P18083714479306979956

namespace A004921

/-- `A004976(4*n)+n` -/
def P18083714479306979956.Spec : Prop :=
  ∀ n, P18083714479306979956.a n = A004921 n

end A004921

/-! ## A004921.P1858900033499726190

`A058066(8*n)+n`
-/

namespace A004921.P1858900033499726190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (8 * n) + (n : ℤ)

end

end A004921.P1858900033499726190

namespace A004921

/-- `A058066(8*n)+n` -/
def P1858900033499726190.Spec : Prop :=
  ∀ n, P1858900033499726190.a n = A004921 n

end A004921

/-! ## A004921.P6471686140406757225

`A153151(A004961(n))`
-/

namespace A004921.P6471686140406757225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A004961 n).toNat

end

end A004921.P6471686140406757225

namespace A004921

/-- `A153151(A004961(n))` -/
def P6471686140406757225.Spec : Prop :=
  ∀ n, P6471686140406757225.a n = A004921 n

end A004921

/-!
# A004922: a(n) = floor(n*phi^7), where phi is the golden ratio, A001622.

The programs for A004922, the canonical program `A004922.P17163239209198766655` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004922 has offset 0).

The definition of A004922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^7)` (program `A004922.P17163239209198766655`, by `A004922.P17163239209198766655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004922.P17163239209198766655

`floor(n*ϕ^7)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004922

/-- `floor(n*ϕ^7)` -/
def P17163239209198766655.Spec : Prop :=
  ∀ n, P17163239209198766655.a n = A004922 n

theorem P17163239209198766655.correct : P17163239209198766655.Spec := by
  intro n
  simp only [A004922]

end A004922

/-! ## A004922.P14889113833431830681

`A057428(n)+A004962(n)`
-/

namespace A004922.P14889113833431830681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004962 n

end

end A004922.P14889113833431830681

namespace A004922

/-- `A057428(n)+A004962(n)` -/
def P14889113833431830681.Spec : Prop :=
  ∀ n, P14889113833431830681.a n = A004922 n

end A004922

/-! ## A004922.P11395861083660878951

`A004962(n)-A057427(n)`
-/

namespace A004922.P11395861083660878951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004962 n - A057427 n

end

end A004922.P11395861083660878951

namespace A004922

/-- `A004962(n)-A057427(n)` -/
def P11395861083660878951.Spec : Prop :=
  ∀ n, P11395861083660878951.a n = A004922 n

end A004922

/-! ## A004922.P16609232308114670736

`A004962(n)-A000040(n+1)%2`
-/

namespace A004922.P16609232308114670736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004962 n - Int.tmod (A000040 (n + 1)) 2

end

end A004922.P16609232308114670736

namespace A004922

/-- `A004962(n)-A000040(n+1)%2` -/
def P16609232308114670736.Spec : Prop :=
  ∀ n, P16609232308114670736.a n = A004922 n

end A004922

/-! ## A004922.P10913892172351237232

`A004962(n)-A036991(n+1)%2`
-/

namespace A004922.P10913892172351237232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004962 n - Int.tmod (A036991 (n + 1)) 2

end

end A004922.P10913892172351237232

namespace A004922

/-- `A004962(n)-A036991(n+1)%2` -/
def P10913892172351237232.Spec : Prop :=
  ∀ n, P10913892172351237232.a n = A004922 n

end A004922

/-! ## A004922.P13877915563284612146

`A004962(n)-A195028(n)%(n+1)`
-/

namespace A004922.P13877915563284612146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004962 n - Int.tmod (A195028 n) (n + 1 : ℤ)

end

end A004922.P13877915563284612146

namespace A004922

/-- `A004962(n)-A195028(n)%(n+1)` -/
def P13877915563284612146.Spec : Prop :=
  ∀ n, P13877915563284612146.a n = A004922 n

end A004922

/-! ## A004922.P1633239563618460873

`A004962(n)+-1%A020639(n+1)`
-/

namespace A004922.P1633239563618460873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004962 n + Int.tmod (-1) (A020639 (n + 1))

end

end A004922.P1633239563618460873

namespace A004922

/-- `A004962(n)+-1%A020639(n+1)` -/
def P1633239563618460873.Spec : Prop :=
  ∀ n, P1633239563618460873.a n = A004922 n

end A004922

/-! ## A004922.P7991132568004095149

`A004962(n)-A001222(or(1, A006093(n+1)))`
-/

namespace A004922.P7991132568004095149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004962 n - A001222 (Int.lor 1 (A006093 (n + 1))).toNat

end

end A004922.P7991132568004095149

namespace A004922

/-- `A004962(n)-A001222(or(1, A006093(n+1)))` -/
def P7991132568004095149.Spec : Prop :=
  ∀ n, P7991132568004095149.a n = A004922 n

end A004922

/-! ## A004922.P10357847514896952736

`A153151(A004962(n))`
-/

namespace A004922.P10357847514896952736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A004962 n).toNat

end

end A004922.P10357847514896952736

namespace A004922

/-- `A153151(A004962(n))` -/
def P10357847514896952736.Spec : Prop :=
  ∀ n, P10357847514896952736.a n = A004922 n

end A004922

/-! ## A004922.P16491013557295505489

`A004962(n)+1-A001227(A319596(n+1))`
-/

namespace A004922.P16491013557295505489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004962 n + (1 - A001227 (A319596 (n + 1)).toNat)

end

end A004922.P16491013557295505489

namespace A004922

/-- `A004962(n)+1-A001227(A319596(n+1))` -/
def P16491013557295505489.Spec : Prop :=
  ∀ n, P16491013557295505489.a n = A004922 n

end A004922

/-!
# A004923: a(n) = floor(n*phi^8), where phi is the golden ratio, A001622.

The programs for A004923, the canonical program `A004923.P7287666448415986053` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004923 has offset 0).

The definition of A004923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^8)` (program `A004923.P7287666448415986053`, by `A004923.P7287666448415986053.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004923.P7287666448415986053

`floor(n*ϕ^8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004923

/-- `floor(n*ϕ^8)` -/
def P7287666448415986053.Spec : Prop :=
  ∀ n, P7287666448415986053.a n = A004923 n

theorem P7287666448415986053.correct : P7287666448415986053.Spec := by
  intro n
  simp only [A004923]

end A004923

/-! ## A004923.P16656622115539765645

`A057428(n)+A004963(n)`
-/

namespace A004923.P16656622115539765645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004963 n

end

end A004923.P16656622115539765645

namespace A004923

/-- `A057428(n)+A004963(n)` -/
def P16656622115539765645.Spec : Prop :=
  ∀ n, P16656622115539765645.a n = A004923 n

end A004923

/-! ## A004923.P2507798955599666945

`A004963(n)-A057427(n)`
-/

namespace A004923.P2507798955599666945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - A057427 n

end

end A004923.P2507798955599666945

namespace A004923

/-- `A004963(n)-A057427(n)` -/
def P2507798955599666945.Spec : Prop :=
  ∀ n, P2507798955599666945.a n = A004923 n

end A004923

/-! ## A004923.P12979417374275426716

`A004963(n)-(n-A014681(n))²`
-/

namespace A004923.P12979417374275426716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - ((n : ℤ) - A014681 n) ^ 2

end

end A004923.P12979417374275426716

namespace A004923

/-- `A004963(n)-(n-A014681(n))²` -/
def P12979417374275426716.Spec : Prop :=
  ∀ n, P12979417374275426716.a n = A004923 n

end A004923

/-! ## A004923.P1902577473415459506

`A004963(n)-A000120(A053644(n))`
-/

namespace A004923.P1902577473415459506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - A000120 (A053644 n).toNat

end

end A004923.P1902577473415459506

namespace A004923

/-- `A004963(n)-A000120(A053644(n))` -/
def P1902577473415459506.Spec : Prop :=
  ∀ n, P1902577473415459506.a n = A004923 n

end A004923

/-! ## A004923.P17353132213274597301

`A004963(n)-A059841(A001316(n))`
-/

namespace A004923.P17353132213274597301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - A059841 (A001316 n).toNat

end

end A004923.P17353132213274597301

namespace A004923

/-- `A004963(n)-A059841(A001316(n))` -/
def P17353132213274597301.Spec : Prop :=
  ∀ n, P17353132213274597301.a n = A004923 n

end A004923

/-! ## A004923.P4232807206870570474

`A004963(n)-A000035(n)-A000035(A014681(n))`
-/

namespace A004923.P4232807206870570474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - A000035 n - A000035 (A014681 n).toNat

end

end A004923.P4232807206870570474

namespace A004923

/-- `A004963(n)-A000035(n)-A000035(A014681(n))` -/
def P4232807206870570474.Spec : Prop :=
  ∀ n, P4232807206870570474.a n = A004923 n

end A004923

/-! ## A004923.P9085272715196520887

`A004963(n)-A008683(A100484(n+1))`
-/

namespace A004923.P9085272715196520887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - A008683 (A100484 (n + 1)).toNat

end

end A004923.P9085272715196520887

namespace A004923

/-- `A004963(n)-A008683(A100484(n+1))` -/
def P9085272715196520887.Spec : Prop :=
  ∀ n, P9085272715196520887.a n = A004923 n

end A004923

/-! ## A004923.P887213840245500174

`A004963(n)-A000035(A014681(2*n))`
-/

namespace A004923.P887213840245500174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - A000035 (A014681 (2 * n)).toNat

end

end A004923.P887213840245500174

namespace A004923

/-- `A004963(n)-A000035(A014681(2*n))` -/
def P887213840245500174.Spec : Prop :=
  ∀ n, P887213840245500174.a n = A004923 n

end A004923

/-! ## A004923.P8970540224797254433

`A004963(n)-A000035(A014681(n)+n)`
-/

namespace A004923.P8970540224797254433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - A000035 (A014681 n + (n : ℤ)).toNat

end

end A004923.P8970540224797254433

namespace A004923

/-- `A004963(n)-A000035(A014681(n)+n)` -/
def P8970540224797254433.Spec : Prop :=
  ∀ n, P8970540224797254433.a n = A004923 n

end A004923

/-! ## A004923.P10842183574955472968

`A004919(A008589(n))-n`
-/

namespace A004923.P10842183574955472968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 (A008589 n).toNat - (n : ℤ)

end

end A004923.P10842183574955472968

namespace A004923

/-- `A004919(A008589(n))-n` -/
def P10842183574955472968.Spec : Prop :=
  ∀ n, P10842183574955472968.a n = A004923 n

end A004923

/-! ## A004923.P5585215548823201265

`A004963(n)-A000035(p?[A014681(n)])`
-/

namespace A004923.P5585215548823201265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - A000035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004923.P5585215548823201265

namespace A004923

/-- `A004963(n)-A000035(p?[A014681(n)])` -/
def P5585215548823201265.Spec : Prop :=
  ∀ n, P5585215548823201265.a n = A004923 n

end A004923

/-! ## A004923.P10351438284992197808

`A004963(n)-A039982(p?[A014681(n)])`
-/

namespace A004923.P10351438284992197808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - A039982 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004923.P10351438284992197808

namespace A004923

/-- `A004963(n)-A039982(p?[A014681(n)])` -/
def P10351438284992197808.Spec : Prop :=
  ∀ n, P10351438284992197808.a n = A004923 n

end A004923

/-! ## A004923.P2784436861723808685

`A004963(n)-A059841(A014686(n+1))`
-/

namespace A004923.P2784436861723808685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 n - A059841 (A014686 (n + 1)).toNat

end

end A004923.P2784436861723808685

namespace A004923

/-- `A004963(n)-A059841(A014686(n+1))` -/
def P2784436861723808685.Spec : Prop :=
  ∀ n, P2784436861723808685.a n = A004923 n

end A004923

/-! ## A004923.P14889550091429665234

`A143051(A004963(n))`
-/

namespace A004923.P14889550091429665234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A004963 n).toNat

end

end A004923.P14889550091429665234

namespace A004923

/-- `A143051(A004963(n))` -/
def P14889550091429665234.Spec : Prop :=
  ∀ n, P14889550091429665234.a n = A004923 n

end A004923

/-! ## A004923.P11947719868363549768

`A014681(2*A004963(n))-A004963(n)`
-/

namespace A004923.P11947719868363549768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A004963 n).toNat - A004963 n

end

end A004923.P11947719868363549768

namespace A004923

/-- `A014681(2*A004963(n))-A004963(n)` -/
def P11947719868363549768.Spec : Prop :=
  ∀ n, P11947719868363549768.a n = A004923 n

end A004923

/-!
# A004924: a(n) = floor(n*phi^9), where phi is the golden ratio, A001622.

The programs for A004924, the canonical program `A004924.P668777383057643986` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004924 has offset 0).

The definition of A004924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^9)` (program `A004924.P668777383057643986`, by `A004924.P668777383057643986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004924.P668777383057643986

`floor(n*ϕ^9)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004924

/-- `floor(n*ϕ^9)` -/
def P668777383057643986.Spec : Prop :=
  ∀ n, P668777383057643986.a n = A004924 n

theorem P668777383057643986.correct : P668777383057643986.Spec := by
  intro n
  simp only [A004924]

end A004924

/-! ## A004924.P3206210550410184834

`A057428(n)+A004964(n)`
-/

namespace A004924.P3206210550410184834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004964 n

end

end A004924.P3206210550410184834

namespace A004924

/-- `A057428(n)+A004964(n)` -/
def P3206210550410184834.Spec : Prop :=
  ∀ n, P3206210550410184834.a n = A004924 n

end A004924

/-! ## A004924.P11439666404234457148

`A004964(n)-A057427(n)`
-/

namespace A004924.P11439666404234457148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004964 n - A057427 n

end

end A004924.P11439666404234457148

namespace A004924

/-- `A004964(n)-A057427(n)` -/
def P11439666404234457148.Spec : Prop :=
  ∀ n, P11439666404234457148.a n = A004924 n

end A004924

/-! ## A004924.P9963312529522330797

`A004964(n)-A000120(A053644(n))`
-/

namespace A004924.P9963312529522330797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004964 n - A000120 (A053644 n).toNat

end

end A004924.P9963312529522330797

namespace A004924

/-- `A004964(n)-A000120(A053644(n))` -/
def P9963312529522330797.Spec : Prop :=
  ∀ n, P9963312529522330797.a n = A004924 n

end A004924

/-! ## A004924.P8178202852828792054

`A004964(n)-A059841(A001316(n))`
-/

namespace A004924.P8178202852828792054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004964 n - A059841 (A001316 n).toNat

end

end A004924.P8178202852828792054

namespace A004924

/-- `A004964(n)-A059841(A001316(n))` -/
def P8178202852828792054.Spec : Prop :=
  ∀ n, P8178202852828792054.a n = A004924 n

end A004924

/-! ## A004924.P10549621669131301535

`A004964(n)-A008683(A100484(n+1))`
-/

namespace A004924.P10549621669131301535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004964 n - A008683 (A100484 (n + 1)).toNat

end

end A004924.P10549621669131301535

namespace A004924

/-- `A004964(n)-A008683(A100484(n+1))` -/
def P10549621669131301535.Spec : Prop :=
  ∀ n, P10549621669131301535.a n = A004924 n

end A004924

/-! ## A004924.P6376475547694607531

`A004964(n)-A000035(p?[A014681(n)])`
-/

namespace A004924.P6376475547694607531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004964 n - A000035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004924.P6376475547694607531

namespace A004924

/-- `A004964(n)-A000035(p?[A014681(n)])` -/
def P6376475547694607531.Spec : Prop :=
  ∀ n, P6376475547694607531.a n = A004924 n

end A004924

/-! ## A004924.P7855935268410204279

`A004964(n)-A039982(p?[A014681(n)])`
-/

namespace A004924.P7855935268410204279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004964 n - A039982 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004924.P7855935268410204279

namespace A004924

/-- `A004964(n)-A039982(p?[A014681(n)])` -/
def P7855935268410204279.Spec : Prop :=
  ∀ n, P7855935268410204279.a n = A004924 n

end A004924

/-! ## A004924.P13393603570031435265

`A004964(n)-A059841(A014686(n+1))`
-/

namespace A004924.P13393603570031435265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004964 n - A059841 (A014686 (n + 1)).toNat

end

end A004924.P13393603570031435265

namespace A004924

/-- `A004964(n)-A059841(A014686(n+1))` -/
def P13393603570031435265.Spec : Prop :=
  ∀ n, P13393603570031435265.a n = A004924 n

end A004924

/-!
# A004925: a(n) = floor(n*phi^10), where phi is the golden ratio, A001622.

The programs for A004925, the canonical program `A004925.P12828181684720075153` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004925 has offset 0).

The definition of A004925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^10)` (program `A004925.P12828181684720075153`, by `A004925.P12828181684720075153.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004925.P12828181684720075153

`floor(n*ϕ^10)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004925

/-- `floor(n*ϕ^10)` -/
def P12828181684720075153.Spec : Prop :=
  ∀ n, P12828181684720075153.a n = A004925 n

theorem P12828181684720075153.correct : P12828181684720075153.Spec := by
  intro n
  simp only [A004925]

end A004925

/-! ## A004925.P11083099027829480176

`A057428(n)+A004965(n)`
-/

namespace A004925.P11083099027829480176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004965 n

end

end A004925.P11083099027829480176

namespace A004925

/-- `A057428(n)+A004965(n)` -/
def P11083099027829480176.Spec : Prop :=
  ∀ n, P11083099027829480176.a n = A004925 n

end A004925

/-! ## A004925.P16514479855612981163

`A004965(n)-A057427(n)`
-/

namespace A004925.P16514479855612981163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004965 n - A057427 n

end

end A004925.P16514479855612981163

namespace A004925

/-- `A004965(n)-A057427(n)` -/
def P16514479855612981163.Spec : Prop :=
  ∀ n, P16514479855612981163.a n = A004925 n

end A004925

/-! ## A004925.P15972257516561274512

`A004965(n)-A000120(A053644(n))`
-/

namespace A004925.P15972257516561274512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004965 n - A000120 (A053644 n).toNat

end

end A004925.P15972257516561274512

namespace A004925

/-- `A004965(n)-A000120(A053644(n))` -/
def P15972257516561274512.Spec : Prop :=
  ∀ n, P15972257516561274512.a n = A004925 n

end A004925

/-! ## A004925.P9908661636289386018

`A004965(n)-A059841(A001316(n))`
-/

namespace A004925.P9908661636289386018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004965 n - A059841 (A001316 n).toNat

end

end A004925.P9908661636289386018

namespace A004925

/-- `A004965(n)-A059841(A001316(n))` -/
def P9908661636289386018.Spec : Prop :=
  ∀ n, P9908661636289386018.a n = A004925 n

end A004925

/-! ## A004925.P6587077128164378588

`A004965(n)-A008683(A100484(n+1))`
-/

namespace A004925.P6587077128164378588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004965 n - A008683 (A100484 (n + 1)).toNat

end

end A004925.P6587077128164378588

namespace A004925

/-- `A004965(n)-A008683(A100484(n+1))` -/
def P6587077128164378588.Spec : Prop :=
  ∀ n, P6587077128164378588.a n = A004925 n

end A004925

/-! ## A004925.P10749067846980051542

`A004965(n)-A000035(p?[A014681(n)])`
-/

namespace A004925.P10749067846980051542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004965 n - A000035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004925.P10749067846980051542

namespace A004925

/-- `A004965(n)-A000035(p?[A014681(n)])` -/
def P10749067846980051542.Spec : Prop :=
  ∀ n, P10749067846980051542.a n = A004925 n

end A004925

/-! ## A004925.P11713033079749322956

`A004965(n)-A039982(p?[A014681(n)])`
-/

namespace A004925.P11713033079749322956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004965 n - A039982 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004925.P11713033079749322956

namespace A004925

/-- `A004965(n)-A039982(p?[A014681(n)])` -/
def P11713033079749322956.Spec : Prop :=
  ∀ n, P11713033079749322956.a n = A004925 n

end A004925

/-! ## A004925.P17960303884779480724

`A004965(n)-A059841(A014686(n+1))`
-/

namespace A004925.P17960303884779480724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004965 n - A059841 (A014686 (n + 1)).toNat

end

end A004925.P17960303884779480724

namespace A004925

/-- `A004965(n)-A059841(A014686(n+1))` -/
def P17960303884779480724.Spec : Prop :=
  ∀ n, P17960303884779480724.a n = A004925 n

end A004925

/-! ## A004925.P10788160240614123158

`A004920(11*n)+n`
-/

namespace A004925.P10788160240614123158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004920 (11 * n) + (n : ℤ)

end

end A004925.P10788160240614123158

namespace A004925

/-- `A004920(11*n)+n` -/
def P10788160240614123158.Spec : Prop :=
  ∀ n, P10788160240614123158.a n = A004925 n

end A004925

/-!
# A004926: a(n) = floor(n*phi^11), where phi is the golden ratio, A001622.

The programs for A004926, the canonical program `A004926.P753422159719567879` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004926 has offset 0).

The definition of A004926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^11)` (program `A004926.P753422159719567879`, by `A004926.P753422159719567879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004926.P753422159719567879

`floor(n*ϕ^11)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004926

/-- `floor(n*ϕ^11)` -/
def P753422159719567879.Spec : Prop :=
  ∀ n, P753422159719567879.a n = A004926 n

theorem P753422159719567879.correct : P753422159719567879.Spec := by
  intro n
  simp only [A004926]

end A004926

/-! ## A004926.P13240731817652848580

`A004966(n)-A057427(n)`
-/

namespace A004926.P13240731817652848580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004966 n - A057427 n

end

end A004926.P13240731817652848580

namespace A004926

/-- `A004966(n)-A057427(n)` -/
def P13240731817652848580.Spec : Prop :=
  ∀ n, P13240731817652848580.a n = A004926 n

end A004926

/-! ## A004926.P18154089285918954700

`A004966(n)-A000120(A053644(n))`
-/

namespace A004926.P18154089285918954700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004966 n - A000120 (A053644 n).toNat

end

end A004926.P18154089285918954700

namespace A004926

/-- `A004966(n)-A000120(A053644(n))` -/
def P18154089285918954700.Spec : Prop :=
  ∀ n, P18154089285918954700.a n = A004926 n

end A004926

/-! ## A004926.P3372104422803547553

`A004966(n)-A059841(A001316(n))`
-/

namespace A004926.P3372104422803547553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004966 n - A059841 (A001316 n).toNat

end

end A004926.P3372104422803547553

namespace A004926

/-- `A004966(n)-A059841(A001316(n))` -/
def P3372104422803547553.Spec : Prop :=
  ∀ n, P3372104422803547553.a n = A004926 n

end A004926

/-! ## A004926.P14087291801315808232

`A004966(n)-A008683(A100484(n+1))`
-/

namespace A004926.P14087291801315808232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004966 n - A008683 (A100484 (n + 1)).toNat

end

end A004926.P14087291801315808232

namespace A004926

/-- `A004966(n)-A008683(A100484(n+1))` -/
def P14087291801315808232.Spec : Prop :=
  ∀ n, P14087291801315808232.a n = A004926 n

end A004926

/-! ## A004926.P9102022462977702065

`A004966(n)+A014963(A016825(n))-2`
-/

namespace A004926.P9102022462977702065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004966 n + (A014963 (A016825 n).toNat - 2)

end

end A004926.P9102022462977702065

namespace A004926

/-- `A004966(n)+A014963(A016825(n))-2` -/
def P9102022462977702065.Spec : Prop :=
  ∀ n, P9102022462977702065.a n = A004926 n

end A004926

/-! ## A004926.P5622996647599886556

`A004966(n)-A000035(p?[A014681(n)])`
-/

namespace A004926.P5622996647599886556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004966 n - A000035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004926.P5622996647599886556

namespace A004926

/-- `A004966(n)-A000035(p?[A014681(n)])` -/
def P5622996647599886556.Spec : Prop :=
  ∀ n, P5622996647599886556.a n = A004926 n

end A004926

/-! ## A004926.P4305128379260000648

`A004966(n)-A039982(p?[A014681(n)])`
-/

namespace A004926.P4305128379260000648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004966 n - A039982 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004926.P4305128379260000648

namespace A004926

/-- `A004966(n)-A039982(p?[A014681(n)])` -/
def P4305128379260000648.Spec : Prop :=
  ∀ n, P4305128379260000648.a n = A004926 n

end A004926

/-! ## A004926.P8333567768190075418

`A004966(n)-A059841(A014686(n+1))`
-/

namespace A004926.P8333567768190075418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004966 n - A059841 (A014686 (n + 1)).toNat

end

end A004926.P8333567768190075418

namespace A004926

/-- `A004966(n)-A059841(A014686(n+1))` -/
def P8333567768190075418.Spec : Prop :=
  ∀ n, P8333567768190075418.a n = A004926 n

end A004926

/-! ## A004926.P8702236503620990004

`A004966(n)-A014963(A016825(n))%A274924(n)`
-/

namespace A004926.P8702236503620990004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004966 n - Int.tmod (A014963 (A016825 n).toNat) (A274924 n)

end

end A004926.P8702236503620990004

namespace A004926

/-- `A004966(n)-A014963(A016825(n))%A274924(n)` -/
def P8702236503620990004.Spec : Prop :=
  ∀ n, P8702236503620990004.a n = A004926 n

end A004926

/-! ## A004926.P14081441211007673235

`A016813(50*n)-(n+1)`
-/

namespace A004926.P14081441211007673235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (50 * n) - (n + 1 : ℤ)

end

end A004926.P14081441211007673235

namespace A004926

/-- `A016813(50*n)-(n+1)` -/
def P14081441211007673235.Spec : Prop :=
  ∀ n, P14081441211007673235.a n = A004926 n

end A004926

/-! ## A004926.P10718571146210815615

`A198266(6*10*n)`
-/

namespace A004926.P10718571146210815615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198266 (6 * (10 * n))

end

end A004926.P10718571146210815615

namespace A004926

/-- `A198266(6*10*n)` -/
def P10718571146210815615.Spec : Prop :=
  ∀ n, P10718571146210815615.a n = A004926 n

end A004926

/-! ## A004926.P4374394686812053732

`n*A087052(A107844(n+1))`
-/

namespace A004926.P4374394686812053732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087052 (A107844 (n + 1)).toNat

end

end A004926.P4374394686812053732

namespace A004926

/-- `n*A087052(A107844(n+1))` -/
def P4374394686812053732.Spec : Prop :=
  ∀ n, P4374394686812053732.a n = A004926 n

end A004926

/-! ## A004926.P13692555664581805387

`A005408(10*10*n)-(n+1)`
-/

namespace A004926.P13692555664581805387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (10 * (10 * n)) - (n + 1 : ℤ)

end

end A004926.P13692555664581805387

namespace A004926

/-- `A005408(10*10*n)-(n+1)` -/
def P13692555664581805387.Spec : Prop :=
  ∀ n, P13692555664581805387.a n = A004926 n

end A004926

/-!
# A004927: a(n) = floor(n*phi^12), where phi is the golden ratio, A001622.

The programs for A004927, the canonical program `A004927.P16462383571392783201` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004927 has offset 0).

The definition of A004927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^12)` (program `A004927.P16462383571392783201`, by `A004927.P16462383571392783201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004927.P16462383571392783201

`floor(n*ϕ^12)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004927

/-- `floor(n*ϕ^12)` -/
def P16462383571392783201.Spec : Prop :=
  ∀ n, P16462383571392783201.a n = A004927 n

theorem P16462383571392783201.correct : P16462383571392783201.Spec := by
  intro n
  simp only [A004927]

end A004927

/-! ## A004927.P11706364765428091739

`A066096(A004926(n))`
-/

namespace A004927.P11706364765428091739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A004926 n).toNat

end

end A004927.P11706364765428091739

namespace A004927

/-- `A066096(A004926(n))` -/
def P11706364765428091739.Spec : Prop :=
  ∀ n, P11706364765428091739.a n = A004927 n

end A004927

/-!
# A004928: a(n) = floor(n*phi^13), where phi is the golden ratio, A001622.

The programs for A004928, the canonical program `A004928.P11433019475152499620` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004928 has offset 0).

The definition of A004928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^13)` (program `A004928.P11433019475152499620`, by `A004928.P11433019475152499620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004928.P11433019475152499620

`floor(n*ϕ^13)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004928

/-- `floor(n*ϕ^13)` -/
def P11433019475152499620.Spec : Prop :=
  ∀ n, P11433019475152499620.a n = A004928 n

theorem P11433019475152499620.correct : P11433019475152499620.Spec := by
  intro n
  simp only [A004928]

end A004928

/-! ## A004928.P7803165139403135959

`A004968(n)-A057427(n)`
-/

namespace A004928.P7803165139403135959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004968 n - A057427 n

end

end A004928.P7803165139403135959

namespace A004928

/-- `A004968(n)-A057427(n)` -/
def P7803165139403135959.Spec : Prop :=
  ∀ n, P7803165139403135959.a n = A004928 n

end A004928

/-! ## A004928.P5493883870095934173

`A004968(n)-A002487(A053644(n))`
-/

namespace A004928.P5493883870095934173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004968 n - A002487 (A053644 n).toNat

end

end A004928.P5493883870095934173

namespace A004928

/-- `A004968(n)-A002487(A053644(n))` -/
def P5493883870095934173.Spec : Prop :=
  ∀ n, P5493883870095934173.a n = A004928 n

end A004928

/-! ## A004928.P9788819930157193202

`A004968(n)-A032741(A006530(n+1))`
-/

namespace A004928.P9788819930157193202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004968 n - A032741 (A006530 (n + 1)).toNat

end

end A004928.P9788819930157193202

namespace A004928

/-- `A004968(n)-A032741(A006530(n+1))` -/
def P9788819930157193202.Spec : Prop :=
  ∀ n, P9788819930157193202.a n = A004928 n

end A004928

/-! ## A004928.P6955197801181088359

`A004968(n)-A000035(A000040(n+1))`
-/

namespace A004928.P6955197801181088359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004968 n - A000035 (A000040 (n + 1)).toNat

end

end A004928.P6955197801181088359

namespace A004928

/-- `A004968(n)-A000035(A000040(n+1))` -/
def P6955197801181088359.Spec : Prop :=
  ∀ n, P6955197801181088359.a n = A004928 n

end A004928

/-! ## A004928.P8353108507250090346

`A008607(A008602(n))+A008603(n)`
-/

namespace A004928.P8353108507250090346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (A008602 n).toNat + A008603 n

end

end A004928.P8353108507250090346

namespace A004928

/-- `A008607(A008602(n))+A008603(n)` -/
def P8353108507250090346.Spec : Prop :=
  ∀ n, P8353108507250090346.a n = A004928 n

end A004928

/-! ## A004928.P4781670224500973184

`A008606(A008603(n))+A008599(n)`
-/

namespace A004928.P4781670224500973184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A008603 n).toNat + A008599 n

end

end A004928.P4781670224500973184

namespace A004928

/-- `A008606(A008603(n))+A008599(n)` -/
def P4781670224500973184.Spec : Prop :=
  ∀ n, P4781670224500973184.a n = A004928 n

end A004928

/-! ## A004928.P8475781001881614803

`A008605(A008604(n))+A008597(n)`
-/

namespace A004928.P8475781001881614803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 (A008604 n).toNat + A008597 n

end

end A004928.P8475781001881614803

namespace A004928

/-- `A008605(A008604(n))+A008597(n)` -/
def P8475781001881614803.Spec : Prop :=
  ∀ n, P8475781001881614803.a n = A004928 n

end A004928

/-! ## A004928.P9505621350376254892

`A008605(A008605(n))-8*n`
-/

namespace A004928.P9505621350376254892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 (A008605 n).toNat - (8 * n : ℤ)

end

end A004928.P9505621350376254892

namespace A004928

/-- `A008605(A008605(n))-8*n` -/
def P9505621350376254892.Spec : Prop :=
  ∀ n, P9505621350376254892.a n = A004928 n

end A004928

/-! ## A004928.P208240004119034784

`A008598(A008598(2*n))+A008591(n)`
-/

namespace A004928.P208240004119034784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A008598 (2 * n)).toNat + A008591 n

end

end A004928.P208240004119034784

namespace A004928

/-- `A008598(A008598(2*n))+A008591(n)` -/
def P208240004119034784.Spec : Prop :=
  ∀ n, P208240004119034784.a n = A004928 n

end A004928

/-! ## A004928.P8116345311561500567

`A317326(A008602(2*n))+n`
-/

namespace A004928.P8116345311561500567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 (A008602 (2 * n)).toNat + (n : ℤ)

end

end A004928.P8116345311561500567

namespace A004928

/-- `A317326(A008602(2*n))+n` -/
def P8116345311561500567.Spec : Prop :=
  ∀ n, P8116345311561500567.a n = A004928 n

end A004928

/-! ## A004928.P3232417804716856797

`n*A300395(A007318(∑[n]))`
-/

namespace A004928.P3232417804716856797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A300395 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A004928.P3232417804716856797

namespace A004928

/-- `n*A300395(A007318(∑[n]))` -/
def P3232417804716856797.Spec : Prop :=
  ∀ n, P3232417804716856797.a n = A004928 n

end A004928

/-! ## A004928.P14815059840446512017

`n*A083425(A088838(n²+1))`
-/

namespace A004928.P14815059840446512017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A083425 (A088838 (n ^ 2 + 1)).toNat

end

end A004928.P14815059840446512017

namespace A004928

/-- `n*A083425(A088838(n²+1))` -/
def P14815059840446512017.Spec : Prop :=
  ∀ n, P14815059840446512017.a n = A004928 n

end A004928

/-!
# A004929: a(n) = floor(n*phi^14), where phi is the golden ratio, A001622.

The programs for A004929, the canonical program `A004929.P10098416181441581849` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004929 has offset 0).

The definition of A004929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^14)` (program `A004929.P10098416181441581849`, by `A004929.P10098416181441581849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004929.P10098416181441581849

`floor(n*ϕ^14)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004929

/-- `floor(n*ϕ^14)` -/
def P10098416181441581849.Spec : Prop :=
  ∀ n, P10098416181441581849.a n = A004929 n

theorem P10098416181441581849.correct : P10098416181441581849.Spec := by
  intro n
  simp only [A004929]

end A004929

/-! ## A004929.P12927430392225202101

`A004922(29*n)+n`
-/

namespace A004929.P12927430392225202101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004922 (29 * n) + (n : ℤ)

end

end A004929.P12927430392225202101

namespace A004929

/-- `A004922(29*n)+n` -/
def P12927430392225202101.Spec : Prop :=
  ∀ n, P12927430392225202101.a n = A004929 n

end A004929

/-!
# A004930: a(n) = floor(n*phi^15), where phi is the golden ratio, A001622.

The programs for A004930, the canonical program `A004930.P11023269310618288235` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004930 has offset 0).

The definition of A004930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^15)` (program `A004930.P11023269310618288235`, by `A004930.P11023269310618288235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004930.P11023269310618288235

`floor(n*ϕ^15)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004930

/-- `floor(n*ϕ^15)` -/
def P11023269310618288235.Spec : Prop :=
  ∀ n, P11023269310618288235.a n = A004930 n

theorem P11023269310618288235.correct : P11023269310618288235.Spec := by
  intro n
  simp only [A004930]

end A004930

/-! ## A004930.P10259455372252225928

`A057428(n)+A004970(n)`
-/

namespace A004930.P10259455372252225928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004970 n

end

end A004930.P10259455372252225928

namespace A004930

/-- `A057428(n)+A004970(n)` -/
def P10259455372252225928.Spec : Prop :=
  ∀ n, P10259455372252225928.a n = A004930 n

end A004930

/-! ## A004930.P11081566619241223556

`A004970(n)-char[A038722(n+1)]`
-/

namespace A004930.P11081566619241223556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004970 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004930.P11081566619241223556

namespace A004930

/-- `A004970(n)-char[A038722(n+1)]` -/
def P11081566619241223556.Spec : Prop :=
  ∀ n, P11081566619241223556.a n = A004930 n

end A004930

/-! ## A004930.P18368913665108127327

`4*A135631(11*n)`
-/

namespace A004930.P18368913665108127327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A135631 (11 * n)

end

end A004930.P18368913665108127327

namespace A004930

/-- `4*A135631(11*n)` -/
def P18368913665108127327.Spec : Prop :=
  ∀ n, P18368913665108127327.a n = A004930 n

end A004930

/-! ## A004930.P6794181473890378124

`A004970(n)-A324113(A045426(n+1))`
-/

namespace A004930.P6794181473890378124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004970 n - A324113 (A045426 (n + 1)).toNat

end

end A004930.P6794181473890378124

namespace A004930

/-- `A004970(n)-A324113(A045426(n+1))` -/
def P6794181473890378124.Spec : Prop :=
  ∀ n, P6794181473890378124.a n = A004930 n

end A004930

/-! ## A004930.P5044379477547276399

`4*A008593(31*n)`
-/

namespace A004930.P5044379477547276399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008593 (31 * n)

end

end A004930.P5044379477547276399

namespace A004930

/-- `4*A008593(31*n)` -/
def P5044379477547276399.Spec : Prop :=
  ∀ n, P5044379477547276399.a n = A004930 n

end A004930

/-! ## A004930.P5616774138212346129

`62*A004396(33*n)`
-/

namespace A004930.P5616774138212346129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  62 * A004396 (33 * n)

end

end A004930.P5616774138212346129

namespace A004930

/-- `62*A004396(33*n)` -/
def P5616774138212346129.Spec : Prop :=
  ∀ n, P5616774138212346129.a n = A004930 n

end A004930

/-! ## A004930.P10096552616854971921

`A085959(A085959(n))-A008587(n)`
-/

namespace A004930.P10096552616854971921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 (A085959 n).toNat - A008587 n

end

end A004930.P10096552616854971921

namespace A004930

/-- `A085959(A085959(n))-A008587(n)` -/
def P10096552616854971921.Spec : Prop :=
  ∀ n, P10096552616854971921.a n = A004930 n

end A004930

/-! ## A004930.P8329420142628867507

`44*A004526(62*n)`
-/

namespace A004930.P8329420142628867507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  44 * A004526 (62 * n)

end

end A004930.P8329420142628867507

namespace A004930

/-- `44*A004526(62*n)` -/
def P8329420142628867507.Spec : Prop :=
  ∀ n, P8329420142628867507.a n = A004930 n

end A004930

/-! ## A004930.P7351966520998525792

`2*n*A336530(A179644(n+1))`
-/

namespace A004930.P7351966520998525792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A336530 (A179644 (n + 1)).toNat

end

end A004930.P7351966520998525792

namespace A004930

/-- `2*n*A336530(A179644(n+1))` -/
def P7351966520998525792.Spec : Prop :=
  ∀ n, P7351966520998525792.a n = A004930 n

end A004930

/-! ## A004930.P5823891788187668232

`4*n*A001567(A007318(∑[n]))`
-/

namespace A004930.P5823891788187668232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * A001567 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A004930.P5823891788187668232

namespace A004930

/-- `4*n*A001567(A007318(∑[n]))` -/
def P5823891788187668232.Spec : Prop :=
  ∀ n, P5823891788187668232.a n = A004930 n

end A004930

/-!
# A004931: a(n) = floor(n*phi^16), where phi is the golden ratio, A001622.

The programs for A004931, the canonical program `A004931.P15738099927513162180` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004931 has offset 0).

The definition of A004931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^16)` (program `A004931.P15738099927513162180`, by `A004931.P15738099927513162180.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004931.P15738099927513162180

`floor(n*ϕ^16)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004931

/-- `floor(n*ϕ^16)` -/
def P15738099927513162180.Spec : Prop :=
  ∀ n, P15738099927513162180.a n = A004931 n

theorem P15738099927513162180.correct : P15738099927513162180.Spec := by
  intro n
  simp only [A004931]

end A004931

/-!
# A004932: a(n) = floor(n*phi^17), where phi is the golden ratio, A001622.

The programs for A004932, the canonical program `A004932.P8636832901646453711` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004932 has offset 0).

The definition of A004932 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^17)` (program `A004932.P8636832901646453711`, by `A004932.P8636832901646453711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004932.P8636832901646453711

`floor(n*ϕ^17)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004932

/-- `floor(n*ϕ^17)` -/
def P8636832901646453711.Spec : Prop :=
  ∀ n, P8636832901646453711.a n = A004932 n

theorem P8636832901646453711.correct : P8636832901646453711.Spec := by
  intro n
  simp only [A004932]

end A004932

/-! ## A004932.P3789171800137659561

`A004972(n)-n²%(n+1)`
-/

namespace A004932.P3789171800137659561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004972 n - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A004932.P3789171800137659561

namespace A004932

/-- `A004972(n)-n²%(n+1)` -/
def P3789171800137659561.Spec : Prop :=
  ∀ n, P3789171800137659561.a n = A004932 n

end A004932

/-! ## A004932.P14836102385483934323

`A004972(n)-A057427(n)`
-/

namespace A004932.P14836102385483934323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004972 n - A057427 n

end

end A004932.P14836102385483934323

namespace A004932

/-- `A004972(n)-A057427(n)` -/
def P14836102385483934323.Spec : Prop :=
  ∀ n, P14836102385483934323.a n = A004932 n

end A004932

/-! ## A004932.P5105320065054879275

`A004972(n)+A000007(n)-1`
-/

namespace A004932.P5105320065054879275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004972 n + (A000007 n - 1)

end

end A004932.P5105320065054879275

namespace A004932

/-- `A004972(n)+A000007(n)-1` -/
def P5105320065054879275.Spec : Prop :=
  ∀ n, P5105320065054879275.a n = A004932 n

end A004932

/-! ## A004932.P3900175411836986971

`A004972(n)-A001221(A001316(n))`
-/

namespace A004932.P3900175411836986971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004972 n - A001221 (A001316 n).toNat

end

end A004932.P3900175411836986971

namespace A004932

/-- `A004972(n)-A001221(A001316(n))` -/
def P3900175411836986971.Spec : Prop :=
  ∀ n, P3900175411836986971.a n = A004932 n

end A004932

/-! ## A004932.P15158023012359642768

`A004972(n)-A002487(A053644(n))`
-/

namespace A004932.P15158023012359642768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004972 n - A002487 (A053644 n).toNat

end

end A004932.P15158023012359642768

namespace A004932

/-- `A004972(n)-A002487(A053644(n))` -/
def P15158023012359642768.Spec : Prop :=
  ∀ n, P15158023012359642768.a n = A004932 n

end A004932

/-! ## A004932.P10393387389595624604

`A004972(n)-A001221(A000961(n+1))`
-/

namespace A004932.P10393387389595624604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004972 n - A001221 (A000961 (n + 1)).toNat

end

end A004932.P10393387389595624604

namespace A004932

/-- `A004972(n)-A001221(A000961(n+1))` -/
def P10393387389595624604.Spec : Prop :=
  ∀ n, P10393387389595624604.a n = A004932 n

end A004932

/-!
# A004933: a(n) = floor(n*phi^18), where phi is the golden ratio, A001622.

The programs for A004933, the canonical program `A004933.P5595138748952017473` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004933 has offset 0).

The definition of A004933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^18)` (program `A004933.P5595138748952017473`, by `A004933.P5595138748952017473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004933.P5595138748952017473

`floor(n*ϕ^18)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004933

/-- `floor(n*ϕ^18)` -/
def P5595138748952017473.Spec : Prop :=
  ∀ n, P5595138748952017473.a n = A004933 n

theorem P5595138748952017473.correct : P5595138748952017473.Spec := by
  intro n
  simp only [A004933]

end A004933

/-! ## A004933.P16322954586218672945

`A004953(n)-(2-A014963(A016825(n)))`
-/

namespace A004933.P16322954586218672945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004953 n - (2 - A014963 (A016825 n).toNat)

end

end A004933.P16322954586218672945

namespace A004933

/-- `A004953(n)-(2-A014963(A016825(n)))` -/
def P16322954586218672945.Spec : Prop :=
  ∀ n, P16322954586218672945.a n = A004933 n

end A004933

/-! ## A004933.P10638284586284425256

`A004924(76*n)+n`
-/

namespace A004933.P10638284586284425256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004924 (76 * n) + (n : ℤ)

end

end A004933.P10638284586284425256

namespace A004933

/-- `A004924(76*n)+n` -/
def P10638284586284425256.Spec : Prop :=
  ∀ n, P10638284586284425256.a n = A004933 n

end A004933

/-!
# A004934: a(n) = floor(n*phi^19), where phi is the golden ratio, A001622.

The programs for A004934, the canonical program `A004934.P9755151269170630141` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004934 has offset 0).

The definition of A004934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^19)` (program `A004934.P9755151269170630141`, by `A004934.P9755151269170630141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004934.P9755151269170630141

`floor(n*ϕ^19)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004934

/-- `floor(n*ϕ^19)` -/
def P9755151269170630141.Spec : Prop :=
  ∀ n, P9755151269170630141.a n = A004934 n

theorem P9755151269170630141.correct : P9755151269170630141.Spec := by
  intro n
  simp only [A004934]

end A004934

/-! ## A004934.P6840851929728153908

`A004974(n)-A057427(n)`
-/

namespace A004934.P6840851929728153908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n - A057427 n

end

end A004934.P6840851929728153908

namespace A004934

/-- `A004974(n)-A057427(n)` -/
def P6840851929728153908.Spec : Prop :=
  ∀ n, P6840851929728153908.a n = A004934 n

end A004934

/-! ## A004934.P16121711645042716749

`A000007(n)+A004974(n)-1`
-/

namespace A004934.P16121711645042716749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A004974 n - 1)

end

end A004934.P16121711645042716749

namespace A004934

/-- `A000007(n)+A004974(n)-1` -/
def P16121711645042716749.Spec : Prop :=
  ∀ n, P16121711645042716749.a n = A004934 n

end A004934

/-! ## A004934.P7818173249183181744

`A004974(n)-A002487(A053644(n))`
-/

namespace A004934.P7818173249183181744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n - A002487 (A053644 n).toNat

end

end A004934.P7818173249183181744

namespace A004934

/-- `A004974(n)-A002487(A053644(n))` -/
def P7818173249183181744.Spec : Prop :=
  ∀ n, P7818173249183181744.a n = A004934 n

end A004934

/-! ## A004934.P11234826309970948138

`A004974(n)-A003415(A078833(n+1))`
-/

namespace A004934.P11234826309970948138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n - A003415 (A078833 (n + 1)).toNat

end

end A004934.P11234826309970948138

namespace A004934

/-- `A004974(n)-A003415(A078833(n+1))` -/
def P11234826309970948138.Spec : Prop :=
  ∀ n, P11234826309970948138.a n = A004934 n

end A004934

/-! ## A004934.P12215395101581014552

`A004974(n)-A000035(Δ[A000040(n+1)]+1)`
-/

namespace A004934.P12215395101581014552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n - A000035 (f1 (n + 1) - f1 n + 1).toNat

end

end A004934.P12215395101581014552

namespace A004934

/-- `A004974(n)-A000035(Δ[A000040(n+1)]+1)` -/
def P12215395101581014552.Spec : Prop :=
  ∀ n, P12215395101581014552.a n = A004934 n

end A004934

/-! ## A004934.P3663916982233220156

`A004974(n)-A008683(A197638(n+1))`
-/

namespace A004934.P3663916982233220156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n - A008683 (A197638 (n + 1)).toNat

end

end A004934.P3663916982233220156

namespace A004934

/-- `A004974(n)-A008683(A197638(n+1))` -/
def P3663916982233220156.Spec : Prop :=
  ∀ n, P3663916982233220156.a n = A004934 n

end A004934

/-! ## A004934.P8335804470544099979

`A004974(n)-A057979(A004275(n+1))`
-/

namespace A004934.P8335804470544099979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n - A057979 (A004275 (n + 1)).toNat

end

end A004934.P8335804470544099979

namespace A004934

/-- `A004974(n)-A057979(A004275(n+1))` -/
def P8335804470544099979.Spec : Prop :=
  ∀ n, P8335804470544099979.a n = A004934 n

end A004934

/-! ## A004934.P4679670526611050045

`A004974(n)-A349907(A197636(n+1))`
-/

namespace A004934.P4679670526611050045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n - A349907 (A197636 (n + 1)).toNat

end

end A004934.P4679670526611050045

namespace A004934

/-- `A004974(n)-A349907(A197636(n+1))` -/
def P4679670526611050045.Spec : Prop :=
  ∀ n, P4679670526611050045.a n = A004934 n

end A004934

/-! ## A004934.P11333480741168263347

`A004974(n)-A000035(A000040(n+1))`
-/

namespace A004934.P11333480741168263347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n - A000035 (A000040 (n + 1)).toNat

end

end A004934.P11333480741168263347

namespace A004934

/-- `A004974(n)-A000035(A000040(n+1))` -/
def P11333480741168263347.Spec : Prop :=
  ∀ n, P11333480741168263347.a n = A004934 n

end A004934

/-! ## A004934.P4462001729241036651

`A004974(n)-A135528(A008864(n+1))`
-/

namespace A004934.P4462001729241036651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n - A135528 (A008864 (n + 1)).toNat

end

end A004934.P4462001729241036651

namespace A004934

/-- `A004974(n)-A135528(A008864(n+1))` -/
def P4462001729241036651.Spec : Prop :=
  ∀ n, P4462001729241036651.a n = A004934 n

end A004934

/-! ## A004934.P5079813912045694539

`A004974(n)-A135528(A001043(n+1))`
-/

namespace A004934.P5079813912045694539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 n - A135528 (A001043 (n + 1)).toNat

end

end A004934.P5079813912045694539

namespace A004934

/-- `A004974(n)-A135528(A001043(n+1))` -/
def P5079813912045694539.Spec : Prop :=
  ∀ n, P5079813912045694539.a n = A004934 n

end A004934

/-!
# A004935: a(n) = floor(n*phi^20), where phi is the golden ratio, A001622.

The programs for A004935, the canonical program `A004935.P4408598311646770422` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004935 has offset 0).

The definition of A004935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^20)` (program `A004935.P4408598311646770422`, by `A004935.P4408598311646770422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004935.P4408598311646770422

`floor(n*ϕ^20)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004935

/-- `floor(n*ϕ^20)` -/
def P4408598311646770422.Spec : Prop :=
  ∀ n, P4408598311646770422.a n = A004935 n

theorem P4408598311646770422.correct : P4408598311646770422.Spec := by
  intro n
  simp only [A004935]

end A004935

/-!
# A004936: Numerator of (binomial(2*n-2,n-1)/n!)^2.

The programs for A004936, the canonical program `A004936.P716954522649507303` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004936 has offset 1).

The definition of A004936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004936.P12397566965255394022

`A144186(n)²`
-/

namespace A004936.P12397566965255394022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144186 n ^ 2

end

end A004936.P12397566965255394022

namespace A004936

/-- `A144186(n)²` -/
def P12397566965255394022.Spec : Prop :=
  ∀ n, P12397566965255394022.a n = A004936 (n + 1)

end A004936

/-! ## A004936.P716954522649507303

`(A000108(n)/A170829(n))²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004936

/-- `(A000108(n)/A170829(n))²` -/
def P716954522649507303.Spec : Prop :=
  ∀ n, P716954522649507303.a n = (A004936 (n + 1) : ℚ)

end A004936

/-! ## A004936.P14480707646995465790

`gcd(A000108(n), A068111(n))²`
-/

namespace A004936.P14480707646995465790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000108 n) (A068111 n) ^ 2

end

end A004936.P14480707646995465790

namespace A004936

/-- `gcd(A000108(n), A068111(n))²` -/
def P14480707646995465790.Spec : Prop :=
  ∀ n, (P14480707646995465790.a n : ℤ) = A004936 (n + 1)

end A004936

/-! ## A004936.P10694268552155946457

`gcd(A051960(n), A261130(n))²`
-/

namespace A004936.P10694268552155946457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051960 n) (A261130 n) ^ 2

end

end A004936.P10694268552155946457

namespace A004936

/-- `gcd(A051960(n), A261130(n))²` -/
def P10694268552155946457.Spec : Prop :=
  ∀ n, (P10694268552155946457.a n : ℤ) = A004936 (n + 1)

end A004936

/-! ## A004936.P18218887113944553633

`A144186(n)^ratio[A000079(n)]`
-/

namespace A004936.P18218887113944553633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A144186 n : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A004936.P18218887113944553633

namespace A004936

/-- `A144186(n)^ratio[A000079(n)]` -/
def P18218887113944553633.Spec : Prop :=
  ∀ n, P18218887113944553633.a n = (A004936 (n + 1) : ℝ)

end A004936

/-! ## A004936.P6711309785886185301

`A144186(n)^(A178334(n)+1)`
-/

namespace A004936.P6711309785886185301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144186 n : ℚ) ^ (A178334 n + 1 : ℤ)

end

end A004936.P6711309785886185301

namespace A004936

/-- `A144186(n)^(A178334(n)+1)` -/
def P6711309785886185301.Spec : Prop :=
  ∀ n, P6711309785886185301.a n = (A004936 (n + 1) : ℚ)

end A004936

/-! ## A004936.P15070711748660878578

`(A261130(n)/A089026(n+1))²`
-/

namespace A004936.P15070711748660878578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A261130 n : ℚ) / (A089026 (n + 1) : ℚ)) ^ 2

end

end A004936.P15070711748660878578

namespace A004936

/-- `(A261130(n)/A089026(n+1))²` -/
def P15070711748660878578.Spec : Prop :=
  ∀ n, P15070711748660878578.a n = (A004936 (n + 1) : ℚ)

end A004936

/-! ## A004936.P5896345245759951827

`gcd(A073838(n+1), A098597(n))²`
-/

namespace A004936.P5896345245759951827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073838 (n + 1)) (A098597 n) ^ 2

end

end A004936.P5896345245759951827

namespace A004936

/-- `gcd(A073838(n+1), A098597(n))²` -/
def P5896345245759951827.Spec : Prop :=
  ∀ n, (P5896345245759951827.a n : ℤ) = A004936 (n + 1)

end A004936

/-! ## A004936.P7074656672885697264

`gcd(A001790(n), A073838(n+2))²`
-/

namespace A004936.P7074656672885697264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001790 n) (A073838 (n + 2)) ^ 2

end

end A004936.P7074656672885697264

namespace A004936

/-- `gcd(A001790(n), A073838(n+2))²` -/
def P7074656672885697264.Spec : Prop :=
  ∀ n, (P7074656672885697264.a n : ℤ) = A004936 (n + 1)

end A004936

/-! ## A004936.P273244245052608674

`A144186(n)^A020639(2*(n+1))`
-/

namespace A004936.P273244245052608674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144186 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A004936.P273244245052608674

namespace A004936

/-- `A144186(n)^A020639(2*(n+1))` -/
def P273244245052608674.Spec : Prop :=
  ∀ n, P273244245052608674.a n = (A004936 (n + 1) : ℚ)

end A004936

/-! ## A004936.P4031311750475326123

`A144186(n)^(2%A000040(n+1))`
-/

namespace A004936.P4031311750475326123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144186 n : ℚ) ^ (Int.tmod 2 (A000040 (n + 1)) : ℤ)

end

end A004936.P4031311750475326123

namespace A004936

/-- `A144186(n)^(2%A000040(n+1))` -/
def P4031311750475326123.Spec : Prop :=
  ∀ n, P4031311750475326123.a n = (A004936 (n + 1) : ℚ)

end A004936

/-! ## A004936.P11069724701675257410

`gcd(A261130(n)², A002461(n+2))²`
-/

namespace A004936.P11069724701675257410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A261130 n ^ 2) (A002461 (n + 2)) ^ 2

end

end A004936.P11069724701675257410

namespace A004936

/-- `gcd(A261130(n)², A002461(n+2))²` -/
def P11069724701675257410.Spec : Prop :=
  ∀ n, (P11069724701675257410.a n : ℤ) = A004936 (n + 1)

end A004936

/-! ## A004936.P15512227152579406703

`ceil((A068111(n)/A089026(n+1))²)`
-/

namespace A004936.P15512227152579406703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A068111 n : ℚ) / (A089026 (n + 1) : ℚ)) ^ 2⌉

end

end A004936.P15512227152579406703

namespace A004936

/-- `ceil((A068111(n)/A089026(n+1))²)` -/
def P15512227152579406703.Spec : Prop :=
  ∀ n, P15512227152579406703.a n = A004936 (n + 1)

end A004936

/-! ## A004936.P13526157172505751346

`(A034386(2*n)/A034386(n+1))²`
-/

namespace A004936.P13526157172505751346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034386 (2 * n) : ℚ) / (A034386 (n + 1) : ℚ)) ^ 2

end

end A004936.P13526157172505751346

namespace A004936

/-- `(A034386(2*n)/A034386(n+1))²` -/
def P13526157172505751346.Spec : Prop :=
  ∀ n, P13526157172505751346.a n = (A004936 (n + 1) : ℚ)

end A004936

/-! ## A004936.P7229056231571810826

`gcd(Δ[A055773(2*n)], A055773(2*n))²`
-/

namespace A004936.P7229056231571810826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A055773 (2 * n)) ^ 2

end

end A004936.P7229056231571810826

namespace A004936

/-- `gcd(Δ[A055773(2*n)], A055773(2*n))²` -/
def P7229056231571810826.Spec : Prop :=
  ∀ n, (P7229056231571810826.a n : ℤ) = A004936 (n + 1)

end A004936

/-! ## A004936.P6069667223285784675

`(A068111(n+1)/A089026(2*n+1))²`
-/

namespace A004936.P6069667223285784675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A068111 (n + 1) : ℚ) / (A089026 (2 * n + 1) : ℚ)) ^ 2

end

end A004936.P6069667223285784675

namespace A004936

/-- `(A068111(n+1)/A089026(2*n+1))²` -/
def P6069667223285784675.Spec : Prop :=
  ∀ n, P6069667223285784675.a n = (A004936 (n + 1) : ℚ)

end A004936

/-! ## A004936.P2813182727139076694

`A144186(n)^A000005(A000355(n+1))`
-/

namespace A004936.P2813182727139076694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144186 n : ℚ) ^ (A000005 (A000355 (n + 1)).toNat : ℤ)

end

end A004936.P2813182727139076694

namespace A004936

/-- `A144186(n)^A000005(A000355(n+1))` -/
def P2813182727139076694.Spec : Prop :=
  ∀ n, P2813182727139076694.a n = (A004936 (n + 1) : ℚ)

end A004936

/-! ## A004936.P3152142693525115446

`A144186(n)^A000005(A005384(n+1))`
-/

namespace A004936.P3152142693525115446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144186 n : ℚ) ^ (A000005 (A005384 (n + 1)).toNat : ℤ)

end

end A004936.P3152142693525115446

namespace A004936

/-- `A144186(n)^A000005(A005384(n+1))` -/
def P3152142693525115446.Spec : Prop :=
  ∀ n, P3152142693525115446.a n = (A004936 (n + 1) : ℚ)

end A004936

/-! ## A004936.P10843114127369317259

`A144186(n)^A014963(A061142(n+1))`
-/

namespace A004936.P10843114127369317259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144186 n : ℚ) ^ (A014963 (A061142 (n + 1)).toNat : ℤ)

end

end A004936.P10843114127369317259

namespace A004936

/-- `A144186(n)^A014963(A061142(n+1))` -/
def P10843114127369317259.Spec : Prop :=
  ∀ n, P10843114127369317259.a n = (A004936 (n + 1) : ℚ)

end A004936

/-! ## A004936.P3490495561211505052

`A144186(n*A178334(n))*A144186(n)`
-/

namespace A004936.P3490495561211505052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144186 ((n : ℤ) * A178334 n).toNat * A144186 n

end

end A004936.P3490495561211505052

namespace A004936

/-- `A144186(n*A178334(n))*A144186(n)` -/
def P3490495561211505052.Spec : Prop :=
  ∀ n, P3490495561211505052.a n = A004936 (n + 1)

end A004936

/-!
# A004937: a(n) = round(n*phi^2), where phi is the golden ratio, A001622.

The programs for A004937, the canonical program `A004937.P3711988531600854167` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004937 has offset 0).

The definition of A004937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ²)` (program `A004937.P3711988531600854167`, by `A004937.P3711988531600854167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004937.P3711988531600854167

`round(n*ϕ²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004937

/-- `round(n*ϕ²)` -/
def P3711988531600854167.Spec : Prop :=
  ∀ n, P3711988531600854167.a n = A004937 n

theorem P3711988531600854167.correct : P3711988531600854167.Spec := by
  intro n
  simp only [A004937]

end A004937

/-! ## A004937.P644857449778766090

`round(n/ϕ)+lcm(2, 2*n)`
-/

namespace A004937.P644857449778766090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio) + (Nat.lcm 2 (2 * n) : ℤ)

end

end A004937.P644857449778766090

namespace A004937

/-- `round(n/ϕ)+lcm(2, 2*n)` -/
def P644857449778766090.Spec : Prop :=
  ∀ n, P644857449778766090.a n = A004937 n

end A004937

/-! ## A004937.P15496307672015682721

`round(ϕ*gcd(n, 2*n))+n`
-/

namespace A004937.P15496307672015682721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.gcd n (2 * n) : ℝ)) + (n : ℤ)

end

end A004937.P15496307672015682721

namespace A004937

/-- `round(ϕ*gcd(n, 2*n))+n` -/
def P15496307672015682721.Spec : Prop :=
  ∀ n, P15496307672015682721.a n = A004937 n

end A004937

/-! ## A004937.P7578031332907258432

`round(n/(2-ϕ))%∑[n+2]`
-/

namespace A004937.P7578031332907258432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℝ) / (2 - Real.goldenRatio))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004937.P7578031332907258432

namespace A004937

/-- `round(n/(2-ϕ))%∑[n+2]` -/
def P7578031332907258432.Spec : Prop :=
  ∀ n, P7578031332907258432.a n = A004937 n

end A004937

/-! ## A004937.P10099509886563901507

`round(n/ϕ)+xor(1, 2*n+1)`
-/

namespace A004937.P10099509886563901507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio) + (Nat.xor 1 (2 * n + 1) : ℤ)

end

end A004937.P10099509886563901507

namespace A004937

/-- `round(n/ϕ)+xor(1, 2*n+1)` -/
def P10099509886563901507.Spec : Prop :=
  ∀ n, P10099509886563901507.a n = A004937 n

end A004937

/-! ## A004937.P2970456883681083770

`round(n/ϕ)+and(2*n+1, 2*n)`
-/

namespace A004937.P2970456883681083770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio) + (Nat.land (2 * n + 1) (2 * n) : ℤ)

end

end A004937.P2970456883681083770

namespace A004937

/-- `round(n/ϕ)+and(2*n+1, 2*n)` -/
def P2970456883681083770.Spec : Prop :=
  ∀ n, P2970456883681083770.a n = A004937 n

end A004937

/-! ## A004937.P17994385346265284320

`A007067(n)+n`
-/

namespace A004937.P17994385346265284320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n + (n : ℤ)

end

end A004937.P17994385346265284320

namespace A004937

/-- `A007067(n)+n` -/
def P17994385346265284320.Spec : Prop :=
  ∀ n, P17994385346265284320.a n = A004937 n

end A004937

/-! ## A004937.P18028695313488259547

`A101803(n)+2*n`
-/

namespace A004937.P18028695313488259547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 n + (2 * n : ℤ)

end

end A004937.P18028695313488259547

namespace A004937

/-- `A101803(n)+2*n` -/
def P18028695313488259547.Spec : Prop :=
  ∀ n, P18028695313488259547.a n = A004937 n

end A004937

/-! ## A004937.P14511644635386093783

`3*n-A334415(n)`
-/

namespace A004937.P14511644635386093783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A334415 n

end

end A004937.P14511644635386093783

namespace A004937

/-- `3*n-A334415(n)` -/
def P14511644635386093783.Spec : Prop :=
  ∀ n, P14511644635386093783.a n = A004937 n

end A004937

/-! ## A004937.P10250388614704503135

`ceil(A276854(n)/2+n)`
-/

namespace A004937.P10250388614704503135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276854 n : ℚ) / 2 + (n : ℚ)⌉

end

end A004937.P10250388614704503135

namespace A004937

/-- `ceil(A276854(n)/2+n)` -/
def P10250388614704503135.Spec : Prop :=
  ∀ n, P10250388614704503135.a n = A004937 n

end A004937

/-! ## A004937.P7608379289650466798

`comp[A007064(n+1)]+n`
-/

namespace A004937.P7608379289650466798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A004937.P7608379289650466798

namespace A004937

/-- `comp[A007064(n+1)]+n` -/
def P7608379289650466798.Spec : Prop :=
  ∀ n, (P7608379289650466798.a n : ℤ) = A004937 n

end A004937

/-! ## A004937.P10822012571138615900

`comp[A214990(n+1)]+n`
-/

namespace A004937.P10822012571138615900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A004937.P10822012571138615900

namespace A004937

/-- `comp[A214990(n+1)]+n` -/
def P10822012571138615900.Spec : Prop :=
  ∀ n, (P10822012571138615900.a n : ℤ) = A004937 n

end A004937

/-! ## A004937.P1639569084290542356

`A198082(n)+A060144(n)`
-/

namespace A004937.P1639569084290542356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n + A060144 n

end

end A004937.P1639569084290542356

namespace A004937

/-- `A198082(n)+A060144(n)` -/
def P1639569084290542356.Spec : Prop :=
  ∀ n, P1639569084290542356.a n = A004937 n

end A004937

/-! ## A004937.P12746033268579930386

`A004958(n)-A004956(n)`
-/

namespace A004937.P12746033268579930386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - A004956 n

end

end A004937.P12746033268579930386

namespace A004937

/-- `A004958(n)-A004956(n)` -/
def P12746033268579930386.Spec : Prop :=
  ∀ n, P12746033268579930386.a n = A004937 n

end A004937

/-! ## A004937.P2045406544082180252

`A004976(n)-A066096(n)`
-/

namespace A004937.P2045406544082180252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n - A066096 n

end

end A004937.P2045406544082180252

namespace A004937

/-- `A004976(n)-A066096(n)` -/
def P2045406544082180252.Spec : Prop :=
  ∀ n, P2045406544082180252.a n = A004937 n

end A004937

/-! ## A004937.P15230424270390206801

`A276854(n)-A060143(n)`
-/

namespace A004937.P15230424270390206801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n - A060143 n

end

end A004937.P15230424270390206801

namespace A004937

/-- `A276854(n)-A060143(n)` -/
def P15230424270390206801.Spec : Prop :=
  ∀ n, P15230424270390206801.a n = A004937 n

end A004937

/-! ## A004937.P12105537356321449657

`A195171(n)-A195172(n)`
-/

namespace A004937.P12105537356321449657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195171 n - A195172 n

end

end A004937.P12105537356321449657

namespace A004937

/-- `A195171(n)-A195172(n)` -/
def P12105537356321449657.Spec : Prop :=
  ∀ n, P12105537356321449657.a n = A004937 n

end A004937

/-! ## A004937.P4527556884661968974

`A026352(n)+A078588(n)-1`
-/

namespace A004937.P4527556884661968974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n + (A078588 n - 1)

end

end A004937.P4527556884661968974

namespace A004937

/-- `A026352(n)+A078588(n)-1` -/
def P4527556884661968974.Spec : Prop :=
  ∀ n, P4527556884661968974.a n = A004937 n

end A004937

/-! ## A004937.P8663005197564381183

`A189379(n+1)-A006340(n)`
-/

namespace A004937.P8663005197564381183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1) - A006340 n

end

end A004937.P8663005197564381183

namespace A004937

/-- `A189379(n+1)-A006340(n)` -/
def P8663005197564381183.Spec : Prop :=
  ∀ n, P8663005197564381183.a n = A004937 n

end A004937

/-! ## A004937.P2039364397716287809

`A007067(A007067(n))`
-/

namespace A004937.P2039364397716287809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A007067 n).toNat

end

end A004937.P2039364397716287809

namespace A004937

/-- `A007067(A007067(n))` -/
def P2039364397716287809.Spec : Prop :=
  ∀ n, P2039364397716287809.a n = A004937 n

end A004937

/-!
# A004938: a(n) = round(n*phi^3), where phi is the golden ratio, A001622.

The programs for A004938, the canonical program `A004938.P13582245222698387320` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004938 has offset 0).

The definition of A004938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^3)` (program `A004938.P13582245222698387320`, by `A004938.P13582245222698387320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004938.P13582245222698387320

`round(n*ϕ^3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004938

/-- `round(n*ϕ^3)` -/
def P13582245222698387320.Spec : Prop :=
  ∀ n, P13582245222698387320.a n = A004938 n

theorem P13582245222698387320.correct : P13582245222698387320.Spec := by
  intro n
  simp only [A004938]

end A004938

/-! ## A004938.P16569381333185184295

`round(ϕ*lcm(2, 2*n))+n`
-/

namespace A004938.P16569381333185184295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.lcm 2 (2 * n) : ℝ)) + (n : ℤ)

end

end A004938.P16569381333185184295

namespace A004938

/-- `round(ϕ*lcm(2, 2*n))+n` -/
def P16569381333185184295.Spec : Prop :=
  ∀ n, P16569381333185184295.a n = A004938 n

end A004938

/-! ## A004938.P18386837836845792744

`round(ϕ*xor(1, 2*n+1))+n`
-/

namespace A004938.P18386837836845792744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.xor 1 (2 * n + 1) : ℝ)) + (n : ℤ)

end

end A004938.P18386837836845792744

namespace A004938

/-- `round(ϕ*xor(1, 2*n+1))+n` -/
def P18386837836845792744.Spec : Prop :=
  ∀ n, P18386837836845792744.a n = A004938 n

end A004938

/-! ## A004938.P6446775995344699432

`round(ϕ*2*n)+gcd(n, 2*n)`
-/

namespace A004938.P6446775995344699432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (2 * n : ℝ)) + (Nat.gcd n (2 * n) : ℤ)

end

end A004938.P6446775995344699432

namespace A004938

/-- `round(ϕ*2*n)+gcd(n, 2*n)` -/
def P6446775995344699432.Spec : Prop :=
  ∀ n, P6446775995344699432.a n = A004938 n

end A004938

/-! ## A004938.P5887411565848373215

`round(ϕ*and(2*n+1, 2*n))+n`
-/

namespace A004938.P5887411565848373215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.land (2 * n + 1) (2 * n) : ℝ)) + (n : ℤ)

end

end A004938.P5887411565848373215

namespace A004938

/-- `round(ϕ*and(2*n+1, 2*n))+n` -/
def P5887411565848373215.Spec : Prop :=
  ∀ n, P5887411565848373215.a n = A004938 n

end A004938

/-! ## A004938.P107178219379501159

`A022848(n)+2*n`
-/

namespace A004938.P107178219379501159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n + (2 * n : ℤ)

end

end A004938.P107178219379501159

namespace A004938

/-- `A022848(n)+2*n` -/
def P107178219379501159.Spec : Prop :=
  ∀ n, P107178219379501159.a n = A004938 n

end A004938

/-! ## A004938.P12025337255011209867

`2*n+comp[A184739(n+1)]+n`
-/

namespace A004938.P12025337255011209867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n)

end

end A004938.P12025337255011209867

namespace A004938

/-- `2*n+comp[A184739(n+1)]+n` -/
def P12025337255011209867.Spec : Prop :=
  ∀ n, (P12025337255011209867.a n : ℤ) = A004938 n

end A004938

/-! ## A004938.P12829731655372063925

`A007067(2*n)+n`
-/

namespace A004938.P12829731655372063925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (2 * n) + (n : ℤ)

end

end A004938.P12829731655372063925

namespace A004938

/-- `A007067(2*n)+n` -/
def P12829731655372063925.Spec : Prop :=
  ∀ n, P12829731655372063925.a n = A004938 n

end A004938

/-! ## A004938.P15927917775687415953

`A004937(2*n)-n`
-/

namespace A004938.P15927917775687415953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (2 * n) - (n : ℤ)

end

end A004938.P15927917775687415953

namespace A004938

/-- `A004937(2*n)-n` -/
def P15927917775687415953.Spec : Prop :=
  ∀ n, P15927917775687415953.a n = A004938 n

end A004938

/-! ## A004938.P13774362221247320829

`A276854(2*n)-(A060143(2*n)+n)`
-/

namespace A004938.P13774362221247320829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (2 * n) - (A060143 (2 * n) + (n : ℤ))

end

end A004938.P13774362221247320829

namespace A004938

/-- `A276854(2*n)-(A060143(2*n)+n)` -/
def P13774362221247320829.Spec : Prop :=
  ∀ n, P13774362221247320829.a n = A004938 n

end A004938

/-! ## A004938.P4406961282109013666

`A276854(2*n)-A066096(2*n)+n`
-/

namespace A004938.P4406961282109013666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (2 * n) - A066096 (2 * n) + (n : ℤ)

end

end A004938.P4406961282109013666

namespace A004938

/-- `A276854(2*n)-A066096(2*n)+n` -/
def P4406961282109013666.Spec : Prop :=
  ∀ n, P4406961282109013666.a n = A004938 n

end A004938

/-! ## A004938.P8526992569861265682

`A050508(2*n)/A028310(2*n)+n`
-/

namespace A004938.P8526992569861265682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050508 (2 * n) : ℚ) / (A028310 (2 * n) : ℚ) + (n : ℚ)

end

end A004938.P8526992569861265682

namespace A004938

/-- `A050508(2*n)/A028310(2*n)+n` -/
def P8526992569861265682.Spec : Prop :=
  ∀ n, P8526992569861265682.a n = (A004938 n : ℚ)

end A004938

/-! ## A004938.P1032182967583183927

`floor(A004958(2*n)/2)`
-/

namespace A004938.P1032182967583183927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004958 (2 * n) : ℚ) / 2⌋

end

end A004938.P1032182967583183927

namespace A004938

/-- `floor(A004958(2*n)/2)` -/
def P1032182967583183927.Spec : Prop :=
  ∀ n, P1032182967583183927.a n = A004938 n

end A004938

/-! ## A004938.P6652565027636976101

`5*n-A334415(2*n)`
-/

namespace A004938.P6652565027636976101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A334415 (2 * n)

end

end A004938.P6652565027636976101

namespace A004938

/-- `5*n-A334415(2*n)` -/
def P6652565027636976101.Spec : Prop :=
  ∀ n, P6652565027636976101.a n = A004938 n

end A004938

/-! ## A004938.P380350634233360275

`A004958(2*n)-A004958(n)`
-/

namespace A004938.P380350634233360275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (2 * n) - A004958 n

end

end A004938.P380350634233360275

namespace A004938

/-- `A004958(2*n)-A004958(n)` -/
def P380350634233360275.Spec : Prop :=
  ∀ n, P380350634233360275.a n = A004938 n

end A004938

/-! ## A004938.P5775600634119284269

`A004976(2*n)-A004976(n)`
-/

namespace A004938.P5775600634119284269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (2 * n) - A004976 n

end

end A004938.P5775600634119284269

namespace A004938

/-- `A004976(2*n)-A004976(n)` -/
def P5775600634119284269.Spec : Prop :=
  ∀ n, P5775600634119284269.a n = A004938 n

end A004938

/-! ## A004938.P14640150223309543199

`A060144(2*n)+A198082(2*n)-n`
-/

namespace A004938.P14640150223309543199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (2 * n) + (A198082 (2 * n) - (n : ℤ))

end

end A004938.P14640150223309543199

namespace A004938

/-- `A060144(2*n)+A198082(2*n)-n` -/
def P14640150223309543199.Spec : Prop :=
  ∀ n, P14640150223309543199.a n = A004938 n

end A004938

/-! ## A004938.P8810939382976840390

`A110654(A276854(2*n))+n`
-/

namespace A004938.P8810939382976840390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A276854 (2 * n)).toNat + (n : ℤ)

end

end A004938.P8810939382976840390

namespace A004938

/-- `A110654(A276854(2*n))+n` -/
def P8810939382976840390.Spec : Prop :=
  ∀ n, P8810939382976840390.a n = A004938 n

end A004938

/-! ## A004938.P10222102995856230202

`A110654(A004976(2*n))`
-/

namespace A004938.P10222102995856230202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004976 (2 * n)).toNat

end

end A004938.P10222102995856230202

namespace A004938

/-- `A110654(A004976(2*n))` -/
def P10222102995856230202.Spec : Prop :=
  ∀ n, P10222102995856230202.a n = A004938 n

end A004938

/-! ## A004938.P2453220828513823276

`A004526(A004976(2*n)+1)`
-/

namespace A004938.P2453220828513823276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004976 (2 * n) + 1).toNat

end

end A004938.P2453220828513823276

namespace A004938

/-- `A004526(A004976(2*n)+1)` -/
def P2453220828513823276.Spec : Prop :=
  ∀ n, P2453220828513823276.a n = A004938 n

end A004938

/-!
# A004939: a(n) = round(n*phi^4), where phi is the golden ratio, A001622.

The programs for A004939, the canonical program `A004939.P14182978316479900997` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004939 has offset 0).

The definition of A004939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^4)` (program `A004939.P14182978316479900997`, by `A004939.P14182978316479900997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004939.P14182978316479900997

`round(n*ϕ^4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004939

/-- `round(n*ϕ^4)` -/
def P14182978316479900997.Spec : Prop :=
  ∀ n, P14182978316479900997.a n = A004939 n

theorem P14182978316479900997.correct : P14182978316479900997.Spec := by
  intro n
  simp only [A004939]

end A004939

/-! ## A004939.P14004730977191953737

`round(n*ϕ²²)%(n+5)²`
-/

namespace A004939.P14004730977191953737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℝ) * (Real.goldenRatio ^ 2) ^ 2)) ((n + 5) ^ 2 : ℤ)

end

end A004939.P14004730977191953737

namespace A004939

/-- `round(n*ϕ²²)%(n+5)²` -/
def P14004730977191953737.Spec : Prop :=
  ∀ n, P14004730977191953737.a n = A004939 n

end A004939

/-! ## A004939.P10421011566855392354

`A004959(2*n)-A004959(n)`
-/

namespace A004939.P10421011566855392354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004959 (2 * n) - A004959 n

end

end A004939.P10421011566855392354

namespace A004939

/-- `A004959(2*n)-A004959(n)` -/
def P10421011566855392354.Spec : Prop :=
  ∀ n, P10421011566855392354.a n = A004939 n

end A004939

/-! ## A004939.P8430425441494920570

`A004919(2*n)-A004919(n)`
-/

namespace A004939.P8430425441494920570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 (2 * n) - A004919 n

end

end A004939.P8430425441494920570

namespace A004939

/-- `A004919(2*n)-A004919(n)` -/
def P8430425441494920570.Spec : Prop :=
  ∀ n, P8430425441494920570.a n = A004939 n

end A004939

/-! ## A004939.P54733988355238004

`A327174(A004919(n)+n)+A004919(n)`
-/

namespace A004939.P54733988355238004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (A004919 n + (n : ℤ)).toNat + A004919 n

end

end A004939.P54733988355238004

namespace A004939

/-- `A327174(A004919(n)+n)+A004919(n)` -/
def P54733988355238004.Spec : Prop :=
  ∀ n, P54733988355238004.a n = A004939 n

end A004939

/-! ## A004939.P5215754127629316706

`A004937(3*n)-n`
-/

namespace A004939.P5215754127629316706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (3 * n) - (n : ℤ)

end

end A004939.P5215754127629316706

namespace A004939

/-- `A004937(3*n)-n` -/
def P5215754127629316706.Spec : Prop :=
  ∀ n, P5215754127629316706.a n = A004939 n

end A004939

/-! ## A004939.P10592666450299493179

`A007067(3*n)+2*n`
-/

namespace A004939.P10592666450299493179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (3 * n) + (2 * n : ℤ)

end

end A004939.P10592666450299493179

namespace A004939

/-- `A007067(3*n)+2*n` -/
def P10592666450299493179.Spec : Prop :=
  ∀ n, P10592666450299493179.a n = A004939 n

end A004939

/-! ## A004939.P12853162644435950280

`A008587(n)+A007067(A008585(n))-A008585(n)`
-/

namespace A004939.P12853162644435950280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + (A007067 (A008585 n).toNat - A008585 n)

end

end A004939.P12853162644435950280

namespace A004939

/-- `A008587(n)+A007067(A008585(n))-A008585(n)` -/
def P12853162644435950280.Spec : Prop :=
  ∀ n, P12853162644435950280.a n = A004939 n

end A004939

/-! ## A004939.P18384127714801286723

`A004526(A004959(2*n))`
-/

namespace A004939.P18384127714801286723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004959 (2 * n)).toNat

end

end A004939.P18384127714801286723

namespace A004939

/-- `A004526(A004959(2*n))` -/
def P18384127714801286723.Spec : Prop :=
  ∀ n, P18384127714801286723.a n = A004939 n

end A004939

/-! ## A004939.P17524593925575178650

`abs(A001057(A004919(2*n)))`
-/

namespace A004939.P17524593925575178650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A004919 (2 * n)).toNat|

end

end A004939.P17524593925575178650

namespace A004939

/-- `abs(A001057(A004919(2*n)))` -/
def P17524593925575178650.Spec : Prop :=
  ∀ n, P17524593925575178650.a n = A004939 n

end A004939

/-! ## A004939.P13171629994593260858

`A002265(2*A004959(2*n))`
-/

namespace A004939.P13171629994593260858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A004959 (2 * n)).toNat

end

end A004939.P13171629994593260858

namespace A004939

/-- `A002265(2*A004959(2*n))` -/
def P13171629994593260858.Spec : Prop :=
  ∀ n, P13171629994593260858.a n = A004939 n

end A004939

/-!
# A004940: a(n) = round(n*phi^5), where phi is the golden ratio, A001622.

The programs for A004940, the canonical program `A004940.P1549069502737336641` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004940 has offset 0).

The definition of A004940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^5)` (program `A004940.P1549069502737336641`, by `A004940.P1549069502737336641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004940.P1549069502737336641

`round(n*ϕ^5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004940

/-- `round(n*ϕ^5)` -/
def P1549069502737336641.Spec : Prop :=
  ∀ n, P1549069502737336641.a n = A004940 n

theorem P1549069502737336641.correct : P1549069502737336641.Spec := by
  intro n
  simp only [A004940]

end A004940

/-! ## A004940.P18297926537041661664

`A004920(2*n)-A004920(n)`
-/

namespace A004940.P18297926537041661664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004920 (2 * n) - A004920 n

end

end A004940.P18297926537041661664

namespace A004940

/-- `A004920(2*n)-A004920(n)` -/
def P18297926537041661664.Spec : Prop :=
  ∀ n, P18297926537041661664.a n = A004940 n

end A004940

/-! ## A004940.P17915053722110866430

`A004960(2*n)-A004960(n)`
-/

namespace A004940.P17915053722110866430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004960 (2 * n) - A004960 n

end

end A004940.P17915053722110866430

namespace A004940

/-- `A004960(2*n)-A004960(n)` -/
def P17915053722110866430.Spec : Prop :=
  ∀ n, P17915053722110866430.a n = A004940 n

end A004940

/-! ## A004940.P3596773606310000487

`A007067(5*n)+3*n`
-/

namespace A004940.P3596773606310000487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (5 * n) + (3 * n : ℤ)

end

end A004940.P3596773606310000487

namespace A004940

/-- `A007067(5*n)+3*n` -/
def P3596773606310000487.Spec : Prop :=
  ∀ n, P3596773606310000487.a n = A004940 n

end A004940

/-! ## A004940.P3798013557989599832

`A008585(n)+A007067(A008587(n))`
-/

namespace A004940.P3798013557989599832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A007067 (A008587 n).toNat

end

end A004940.P3798013557989599832

namespace A004940

/-- `A008585(n)+A007067(A008587(n))` -/
def P3798013557989599832.Spec : Prop :=
  ∀ n, P3798013557989599832.a n = A004940 n

end A004940

/-!
# A004941: a(n) = round(n*phi^6), where phi is the golden ratio, A001622.

The programs for A004941, the canonical program `A004941.P954629910093429314` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004941 has offset 0).

The definition of A004941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^6)` (program `A004941.P954629910093429314`, by `A004941.P954629910093429314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004941.P954629910093429314

`round(n*ϕ^6)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004941

/-- `round(n*ϕ^6)` -/
def P954629910093429314.Spec : Prop :=
  ∀ n, P954629910093429314.a n = A004941 n

theorem P954629910093429314.correct : P954629910093429314.Spec := by
  intro n
  simp only [A004941]

end A004941

/-! ## A004941.P17258229879278651702

`A004921(2*n)-A004921(n)`
-/

namespace A004941.P17258229879278651702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 (2 * n) - A004921 n

end

end A004941.P17258229879278651702

namespace A004941

/-- `A004921(2*n)-A004921(n)` -/
def P17258229879278651702.Spec : Prop :=
  ∀ n, P17258229879278651702.a n = A004941 n

end A004941

/-! ## A004941.P3268326665712748928

`A004961(2*n)-A004961(n)`
-/

namespace A004941.P3268326665712748928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004961 (2 * n) - A004961 n

end

end A004941.P3268326665712748928

namespace A004941

/-- `A004961(2*n)-A004961(n)` -/
def P3268326665712748928.Spec : Prop :=
  ∀ n, P3268326665712748928.a n = A004941 n

end A004941

/-! ## A004941.P10109816322420219874

`A004938(4*n)+n`
-/

namespace A004941.P10109816322420219874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 (4 * n) + (n : ℤ)

end

end A004941.P10109816322420219874

namespace A004941

/-- `A004938(4*n)+n` -/
def P10109816322420219874.Spec : Prop :=
  ∀ n, P10109816322420219874.a n = A004941 n

end A004941

/-! ## A004941.P2423881988556607201

`A022848(A008586(n))+A008591(n)`
-/

namespace A004941.P2423881988556607201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 (A008586 n).toNat + A008591 n

end

end A004941.P2423881988556607201

namespace A004941

/-- `A022848(A008586(n))+A008591(n)` -/
def P2423881988556607201.Spec : Prop :=
  ∀ n, P2423881988556607201.a n = A004941 n

end A004941

/-! ## A004941.P3287302428078858816

`A008587(n)+A007067(8*n)`
-/

namespace A004941.P3287302428078858816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + A007067 (8 * n)

end

end A004941.P3287302428078858816

namespace A004941

/-- `A008587(n)+A007067(8*n)` -/
def P3287302428078858816.Spec : Prop :=
  ∀ n, P3287302428078858816.a n = A004941 n

end A004941

/-!
# A004942: a(n) = round(n*phi^7), where phi is the golden ratio, A001622.

The programs for A004942, the canonical program `A004942.P3922381063166389188` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004942 has offset 0).

The definition of A004942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^7)` (program `A004942.P3922381063166389188`, by `A004942.P3922381063166389188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004942.P3922381063166389188

`round(n*ϕ^7)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004942

/-- `round(n*ϕ^7)` -/
def P3922381063166389188.Spec : Prop :=
  ∀ n, P3922381063166389188.a n = A004942 n

theorem P3922381063166389188.correct : P3922381063166389188.Spec := by
  intro n
  simp only [A004942]

end A004942

/-! ## A004942.P11485804472286845080

`floor(A004962(2*n)/2)`
-/

namespace A004942.P11485804472286845080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004962 (2 * n) : ℚ) / 2⌋

end

end A004942.P11485804472286845080

namespace A004942

/-- `floor(A004962(2*n)/2)` -/
def P11485804472286845080.Spec : Prop :=
  ∀ n, P11485804472286845080.a n = A004942 n

end A004942

/-! ## A004942.P11782942361051265828

`ceil(A004922(2*n)/2)`
-/

namespace A004942.P11782942361051265828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004922 (2 * n) : ℚ) / 2⌉

end

end A004942.P11782942361051265828

namespace A004942

/-- `ceil(A004922(2*n)/2)` -/
def P11782942361051265828.Spec : Prop :=
  ∀ n, P11782942361051265828.a n = A004942 n

end A004942

/-! ## A004942.P9036236547905235018

`A004922(2*n)-A004922(n)`
-/

namespace A004942.P9036236547905235018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004922 (2 * n) - A004922 n

end

end A004942.P9036236547905235018

namespace A004942

/-- `A004922(2*n)-A004922(n)` -/
def P9036236547905235018.Spec : Prop :=
  ∀ n, P9036236547905235018.a n = A004942 n

end A004942

/-! ## A004942.P4893967812513400974

`A004962(2*n)-A004962(n)`
-/

namespace A004942.P4893967812513400974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004962 (2 * n) - A004962 n

end

end A004942.P4893967812513400974

namespace A004942

/-- `A004962(2*n)-A004962(n)` -/
def P4893967812513400974.Spec : Prop :=
  ∀ n, P4893967812513400974.a n = A004942 n

end A004942

/-! ## A004942.P14983615245468969015

`A007067(13*n)+8*n`
-/

namespace A004942.P14983615245468969015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (13 * n) + (8 * n : ℤ)

end

end A004942.P14983615245468969015

namespace A004942

/-- `A007067(13*n)+8*n` -/
def P14983615245468969015.Spec : Prop :=
  ∀ n, P14983615245468969015.a n = A004942 n

end A004942

/-! ## A004942.P9480339399548493863

`A008590(n)+A007067(A008590(n)+A008587(n))`
-/

namespace A004942.P9480339399548493863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n + A007067 (A008590 n + A008587 n).toNat

end

end A004942.P9480339399548493863

namespace A004942

/-- `A008590(n)+A007067(A008590(n)+A008587(n))` -/
def P9480339399548493863.Spec : Prop :=
  ∀ n, P9480339399548493863.a n = A004942 n

end A004942

/-!
# A004943: a(n) = round(n*phi^8), where phi is the golden ratio, A001622.

The programs for A004943, the canonical program `A004943.P11118472956197388715` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004943 has offset 0).

The definition of A004943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^8)` (program `A004943.P11118472956197388715`, by `A004943.P11118472956197388715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004943.P11118472956197388715

`round(n*ϕ^8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004943

/-- `round(n*ϕ^8)` -/
def P11118472956197388715.Spec : Prop :=
  ∀ n, P11118472956197388715.a n = A004943 n

theorem P11118472956197388715.correct : P11118472956197388715.Spec := by
  intro n
  simp only [A004943]

end A004943

/-! ## A004943.P10794802535848845962

`floor(A004963(2*n)/2)`
-/

namespace A004943.P10794802535848845962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004963 (2 * n) : ℚ) / 2⌋

end

end A004943.P10794802535848845962

namespace A004943

/-- `floor(A004963(2*n)/2)` -/
def P10794802535848845962.Spec : Prop :=
  ∀ n, P10794802535848845962.a n = A004943 n

end A004943

/-! ## A004943.P11797224951105907094

`A004923(2*n)-A004923(n)`
-/

namespace A004943.P11797224951105907094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004923 (2 * n) - A004923 n

end

end A004943.P11797224951105907094

namespace A004943

/-- `A004923(2*n)-A004923(n)` -/
def P11797224951105907094.Spec : Prop :=
  ∀ n, P11797224951105907094.a n = A004943 n

end A004943

/-! ## A004943.P2199956028327393377

`A004963(2*n)-A004963(n)`
-/

namespace A004943.P2199956028327393377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 (2 * n) - A004963 n

end

end A004943.P2199956028327393377

namespace A004943

/-- `A004963(2*n)-A004963(n)` -/
def P2199956028327393377.Spec : Prop :=
  ∀ n, P2199956028327393377.a n = A004943 n

end A004943

/-! ## A004943.P14181076982154321969

`record[A004923(A014681(n))]-A004923(n)`
-/

namespace A004943.P14181076982154321969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004923 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004923 n

end

end A004943.P14181076982154321969

namespace A004943

/-- `record[A004923(A014681(n))]-A004923(n)` -/
def P14181076982154321969.Spec : Prop :=
  ∀ n, P14181076982154321969.a n = A004943 n

end A004943

/-! ## A004943.P5651345813165856015

`record[A004963(A014681(n))]-A004963(n)`
-/

namespace A004943.P5651345813165856015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004963 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004963 n

end

end A004943.P5651345813165856015

namespace A004943

/-- `record[A004963(A014681(n))]-A004963(n)` -/
def P5651345813165856015.Spec : Prop :=
  ∀ n, P5651345813165856015.a n = A004943 n

end A004943

/-! ## A004943.P12676120036645103527

`A004939(7*n)-n`
-/

namespace A004943.P12676120036645103527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004939 (7 * n) - (n : ℤ)

end

end A004943.P12676120036645103527

namespace A004943

/-- `A004939(7*n)-n` -/
def P12676120036645103527.Spec : Prop :=
  ∀ n, P12676120036645103527.a n = A004943 n

end A004943

/-! ## A004943.P16316175791025799672

`A004526(A004963(2*n))`
-/

namespace A004943.P16316175791025799672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004963 (2 * n)).toNat

end

end A004943.P16316175791025799672

namespace A004943

/-- `A004526(A004963(2*n))` -/
def P16316175791025799672.Spec : Prop :=
  ∀ n, P16316175791025799672.a n = A004943 n

end A004943

/-! ## A004943.P12631644709709636505

`A002264(A004963(2*n)+A004963(n))`
-/

namespace A004943.P12631644709709636505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004963 (2 * n) + A004963 n).toNat

end

end A004943.P12631644709709636505

namespace A004943

/-- `A002264(A004963(2*n)+A004963(n))` -/
def P12631644709709636505.Spec : Prop :=
  ∀ n, P12631644709709636505.a n = A004943 n

end A004943

/-!
# A004944: a(n) = round(n*phi^9), where phi is the golden ratio, A001622.

The programs for A004944, the canonical program `A004944.P1372722111723827515` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004944 has offset 0).

The definition of A004944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^9)` (program `A004944.P1372722111723827515`, by `A004944.P1372722111723827515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004944.P1372722111723827515

`round(n*ϕ^9)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004944

/-- `round(n*ϕ^9)` -/
def P1372722111723827515.Spec : Prop :=
  ∀ n, P1372722111723827515.a n = A004944 n

theorem P1372722111723827515.correct : P1372722111723827515.Spec := by
  intro n
  simp only [A004944]

end A004944

/-! ## A004944.P9597095854107824744

`A004924(2*n)-A004924(n)`
-/

namespace A004944.P9597095854107824744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004924 (2 * n) - A004924 n

end

end A004944.P9597095854107824744

namespace A004944

/-- `A004924(2*n)-A004924(n)` -/
def P9597095854107824744.Spec : Prop :=
  ∀ n, P9597095854107824744.a n = A004944 n

end A004944

/-! ## A004944.P6251741587100598685

`A004924(2*n)+A004924(n)*A057428(n)`
-/

namespace A004944.P6251741587100598685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004924 (2 * n) + A004924 n * A057428 n

end

end A004944.P6251741587100598685

namespace A004944

/-- `A004924(2*n)+A004924(n)*A057428(n)` -/
def P6251741587100598685.Spec : Prop :=
  ∀ n, P6251741587100598685.a n = A004944 n

end A004944

/-! ## A004944.P13408155507968648896

`floor(A004964(2*n)/2)`
-/

namespace A004944.P13408155507968648896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004964 (2 * n) : ℚ) / 2⌋

end

end A004944.P13408155507968648896

namespace A004944

/-- `floor(A004964(2*n)/2)` -/
def P13408155507968648896.Spec : Prop :=
  ∀ n, P13408155507968648896.a n = A004944 n

end A004944

/-! ## A004944.P9684540363647110509

`A004964(2*n)-A004964(n)`
-/

namespace A004944.P9684540363647110509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004964 (2 * n) - A004964 n

end

end A004944.P9684540363647110509

namespace A004944

/-- `A004964(2*n)-A004964(n)` -/
def P9684540363647110509.Spec : Prop :=
  ∀ n, P9684540363647110509.a n = A004944 n

end A004944

/-! ## A004944.P12362645074128840840

`A004525(A004924(2*n))`
-/

namespace A004944.P12362645074128840840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004924 (2 * n)).toNat

end

end A004944.P12362645074128840840

namespace A004944

/-- `A004525(A004924(2*n))` -/
def P12362645074128840840.Spec : Prop :=
  ∀ n, P12362645074128840840.a n = A004944 n

end A004944

/-! ## A004944.P14063402548989194474

`A004526(A004964(2*n))`
-/

namespace A004944.P14063402548989194474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004964 (2 * n)).toNat

end

end A004944.P14063402548989194474

namespace A004944

/-- `A004526(A004964(2*n))` -/
def P14063402548989194474.Spec : Prop :=
  ∀ n, P14063402548989194474.a n = A004944 n

end A004944

/-!
# A004945: a(n) = round(n*phi^10), where phi is the golden ratio, A001622.

The programs for A004945, the canonical program `A004945.P7959657462670539353` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004945 has offset 0).

The definition of A004945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^10)` (program `A004945.P7959657462670539353`, by `A004945.P7959657462670539353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004945.P7959657462670539353

`round(n*ϕ^10)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004945

/-- `round(n*ϕ^10)` -/
def P7959657462670539353.Spec : Prop :=
  ∀ n, P7959657462670539353.a n = A004945 n

theorem P7959657462670539353.correct : P7959657462670539353.Spec := by
  intro n
  simp only [A004945]

end A004945

/-! ## A004945.P11562176561258090471

`floor(A004965(A005843(n))/2)`
-/

namespace A004945.P11562176561258090471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004965 (A005843 n).toNat : ℚ) / 2⌋

end

end A004945.P11562176561258090471

namespace A004945

/-- `floor(A004965(A005843(n))/2)` -/
def P11562176561258090471.Spec : Prop :=
  ∀ n, P11562176561258090471.a n = A004945 n

end A004945

/-! ## A004945.P3878959955468167401

`A004925(2*n)-A004925(n)`
-/

namespace A004945.P3878959955468167401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004925 (2 * n) - A004925 n

end

end A004945.P3878959955468167401

namespace A004945

/-- `A004925(2*n)-A004925(n)` -/
def P3878959955468167401.Spec : Prop :=
  ∀ n, P3878959955468167401.a n = A004945 n

end A004945

/-! ## A004945.P12860079829914079490

`A004965(2*n)-A004965(n)`
-/

namespace A004945.P12860079829914079490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004965 (2 * n) - A004965 n

end

end A004945.P12860079829914079490

namespace A004945

/-- `A004965(2*n)-A004965(n)` -/
def P12860079829914079490.Spec : Prop :=
  ∀ n, P12860079829914079490.a n = A004945 n

end A004945

/-! ## A004945.P3930078774866656002

`A014963(A115956(n+1))*A004965(n)`
-/

namespace A004945.P3930078774866656002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A115956 (n + 1)).toNat * A004965 n

end

end A004945.P3930078774866656002

namespace A004945

/-- `A014963(A115956(n+1))*A004965(n)` -/
def P3930078774866656002.Spec : Prop :=
  ∀ n, P3930078774866656002.a n = A004945 n

end A004945

/-! ## A004945.P9298231407999367785

`A060143(A004926(n)+1)`
-/

namespace A004945.P9298231407999367785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A004926 n + 1).toNat

end

end A004945.P9298231407999367785

namespace A004945

/-- `A060143(A004926(n)+1)` -/
def P9298231407999367785.Spec : Prop :=
  ∀ n, P9298231407999367785.a n = A004945 n

end A004945

/-!
# A004946: 

The programs for A004946, there is no canonical definition to state claims against.
-/

/-! ## A004946.P12218433736825886190

`round(n*ϕ^11)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004946.P12218433736825886190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 11)

end

end A004946.P12218433736825886190

/-! ## A004946.P5208733690249782412

`A004926(2*n)-A004926(n)`
-/

namespace A004946.P5208733690249782412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 (2 * n) - A004926 n

end

end A004946.P5208733690249782412

/-! ## A004946.P8327626997540033220

`abs(A004926(n)-A004926(A005843(n)))`
-/

namespace A004946.P8327626997540033220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004926 n - A004926 (A005843 n).toNat|

end

end A004946.P8327626997540033220

/-! ## A004946.P14954271040532961534

`record[A004926(A014681(n))]-A004926(n)`
-/

namespace A004946.P14954271040532961534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004926 n

end

end A004946.P14954271040532961534

/-! ## A004946.P5739549569951462761

`floor(A004966(A005843(n))/2)`
-/

namespace A004946.P5739549569951462761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004966 (A005843 n).toNat : ℚ) / 2⌋

end

end A004946.P5739549569951462761

/-! ## A004946.P6442668838584000739

`A004966(2*n)-A004966(n)`
-/

namespace A004946.P6442668838584000739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004966 (2 * n) - A004966 n

end

end A004946.P6442668838584000739

/-! ## A004946.P14430849525893133508

`record[A004926(A237420(n))]-A004926(n)`
-/

namespace A004946.P14430849525893133508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004926 n

end

end A004946.P14430849525893133508

/-! ## A004946.P8754869016044409263

`record[A004926(n)-A004926(A225126(n+1))]`
-/

namespace A004946.P8754869016044409263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n - A004926 (A225126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004946.P8754869016044409263

/-! ## A004946.P17805797350049455046

`A037832(A196222(n))+A004926(n)`
-/

namespace A004946.P17805797350049455046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A196222 n).toNat + A004926 n

end

end A004946.P17805797350049455046

/-!
# A004947: a(n) = round(n*phi^12), where phi is the golden ratio, A001622.

The programs for A004947, the canonical program `A004947.P6744232294509676311` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004947 has offset 0).

The definition of A004947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^12)` (program `A004947.P6744232294509676311`, by `A004947.P6744232294509676311.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004947.P6744232294509676311

`round(n*ϕ^12)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004947

/-- `round(n*ϕ^12)` -/
def P6744232294509676311.Spec : Prop :=
  ∀ n, P6744232294509676311.a n = A004947 n

theorem P6744232294509676311.correct : P6744232294509676311.Spec := by
  intro n
  simp only [A004947]

end A004947

/-! ## A004947.P10615473529054380894

`ceil(A004927(2*n)/2)`
-/

namespace A004947.P10615473529054380894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004927 (2 * n) : ℚ) / 2⌉

end

end A004947.P10615473529054380894

namespace A004947

/-- `ceil(A004927(2*n)/2)` -/
def P10615473529054380894.Spec : Prop :=
  ∀ n, P10615473529054380894.a n = A004947 n

end A004947

/-! ## A004947.P4043276363964096351

`A004927(2*n)-A004927(n)`
-/

namespace A004947.P4043276363964096351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004927 (2 * n) - A004927 n

end

end A004947.P4043276363964096351

namespace A004947

/-- `A004927(2*n)-A004927(n)` -/
def P4043276363964096351.Spec : Prop :=
  ∀ n, P4043276363964096351.a n = A004947 n

end A004947

/-! ## A004947.P11290559220963009497

`A004941(18*n)-n`
-/

namespace A004947.P11290559220963009497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004941 (18 * n) - (n : ℤ)

end

end A004947.P11290559220963009497

namespace A004947

/-- `A004941(18*n)-n` -/
def P11290559220963009497.Spec : Prop :=
  ∀ n, P11290559220963009497.a n = A004947 n

end A004947

/-! ## A004947.P14575648804210144267

`A008587(64*n)+2*n`
-/

namespace A004947.P14575648804210144267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (64 * n) + (2 * n : ℤ)

end

end A004947.P14575648804210144267

namespace A004947

/-- `A008587(64*n)+2*n` -/
def P14575648804210144267.Spec : Prop :=
  ∀ n, P14575648804210144267.a n = A004947 n

end A004947

/-! ## A004947.P10585011340800226995

`A057427(A000217(n))+A004927(n)`
-/

namespace A004947.P10585011340800226995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000217 n).toNat + A004927 n

end

end A004947.P10585011340800226995

namespace A004947

/-- `A057427(A000217(n))+A004927(n)` -/
def P10585011340800226995.Spec : Prop :=
  ∀ n, P10585011340800226995.a n = A004947 n

end A004947

/-!
# A004948: 

The programs for A004948, there is no canonical definition to state claims against.
-/

/-! ## A004948.P1755738246855244936

`A004928(2*n)-A004928(n)`
-/

namespace A004948.P1755738246855244936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004928 (2 * n) - A004928 n

end

end A004948.P1755738246855244936

/-! ## A004948.P16584336590754655030

`A004968(2*n)-A004968(n)`
-/

namespace A004948.P16584336590754655030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004968 (2 * n) - A004968 n

end

end A004948.P16584336590754655030

/-!
# A004949: a(n) = round(n*phi^14), where phi is the golden ratio, A001622.

The programs for A004949, the canonical program `A004949.P16750845023194512902` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004949 has offset 0).

The definition of A004949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^14)` (program `A004949.P16750845023194512902`, by `A004949.P16750845023194512902.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004949.P16750845023194512902

`round(n*ϕ^14)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004949

/-- `round(n*ϕ^14)` -/
def P16750845023194512902.Spec : Prop :=
  ∀ n, P16750845023194512902.a n = A004949 n

theorem P16750845023194512902.correct : P16750845023194512902.Spec := by
  intro n
  simp only [A004949]

end A004949

/-! ## A004949.P3772029584705579881

`A004929(2*n)-A004929(n)`
-/

namespace A004949.P3772029584705579881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004929 (2 * n) - A004929 n

end

end A004949.P3772029584705579881

namespace A004949

/-- `A004929(2*n)-A004929(n)` -/
def P3772029584705579881.Spec : Prop :=
  ∀ n, P3772029584705579881.a n = A004949 n

end A004949

/-! ## A004949.P244576974008306267

`A139609(A008606(n))-A008585(A017017(n))`
-/

namespace A004949.P244576974008306267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 (A008606 n).toNat - A008585 (A017017 n).toNat

end

end A004949.P244576974008306267

namespace A004949

/-- `A139609(A008606(n))-A008585(A017017(n))` -/
def P244576974008306267.Spec : Prop :=
  ∀ n, P244576974008306267.a n = A004949 n

end A004949

/-! ## A004949.P14778215188182737943

`A135631(A305548(n))+A008588(n)`
-/

namespace A004949.P14778215188182737943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 (A305548 n).toNat + A008588 n

end

end A004949.P14778215188182737943

namespace A004949

/-- `A135631(A305548(n))+A008588(n)` -/
def P14778215188182737943.Spec : Prop :=
  ∀ n, P14778215188182737943.a n = A004949 n

end A004949

/-! ## A004949.P2468146107262494776

`A004942(A195819(n))+n`
-/

namespace A004949.P2468146107262494776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004942 (A195819 n).toNat + (n : ℤ)

end

end A004949.P2468146107262494776

namespace A004949

/-- `A004942(A195819(n))+n` -/
def P2468146107262494776.Spec : Prop :=
  ∀ n, P2468146107262494776.a n = A004949 n

end A004949

/-! ## A004949.P2018958552000714003

`A195819(A195819(n))+A005843(n)`
-/

namespace A004949.P2018958552000714003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195819 (A195819 n).toNat + A005843 n

end

end A004949.P2018958552000714003

namespace A004949

/-- `A195819(A195819(n))+A005843(n)` -/
def P2018958552000714003.Spec : Prop :=
  ∀ n, P2018958552000714003.a n = A004949 n

end A004949

/-! ## A004949.P15015414935338059082

`n*A005248(A221367(A221073(2*n)))`
-/

namespace A004949.P15015414935338059082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005248 (A221367 (A221073 (2 * n)).toNat).toNat

end

end A004949.P15015414935338059082

namespace A004949

/-- `n*A005248(A221367(A221073(2*n)))` -/
def P15015414935338059082.Spec : Prop :=
  ∀ n, P15015414935338059082.a n = A004949 n

end A004949

/-! ## A004949.P97546589135513632

`n*A158403(A008284(∑[n+1]))`
-/

namespace A004949.P97546589135513632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A158403 (A008284 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A004949.P97546589135513632

namespace A004949

/-- `n*A158403(A008284(∑[n+1]))` -/
def P97546589135513632.Spec : Prop :=
  ∀ n, P97546589135513632.a n = A004949 n

end A004949

/-! ## A004949.P7511801186889206795

`n*A038013(A151909(n))`
-/

namespace A004949.P7511801186889206795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038013 (A151909 n).toNat

end

end A004949.P7511801186889206795

namespace A004949

/-- `n*A038013(A151909(n))` -/
def P7511801186889206795.Spec : Prop :=
  ∀ n, P7511801186889206795.a n = A004949 n

end A004949

/-! ## A004949.P5590524588269049718

`n*A038013(A151933(n))`
-/

namespace A004949.P5590524588269049718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038013 (A151933 n).toNat

end

end A004949.P5590524588269049718

namespace A004949

/-- `n*A038013(A151933(n))` -/
def P5590524588269049718.Spec : Prop :=
  ∀ n, P5590524588269049718.a n = A004949 n

end A004949

/-!
# A004950: 

The programs for A004950, there is no canonical definition to state claims against.
-/

/-! ## A004950.P1215226661856858302

`round(n*(ϕ^3)^5)`
-/

namespace A004950.P1215226661856858302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (Real.goldenRatio ^ 3) ^ 5)

end

end A004950.P1215226661856858302

/-! ## A004950.P16729081293893710621

`A004970(2*n)-A004970(n)`
-/

namespace A004950.P16729081293893710621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004970 (2 * n) - A004970 n

end

end A004950.P16729081293893710621

/-!
# A004951: a(n) = round(n*phi^16), where phi is the golden ratio, A001622.

The programs for A004951, the canonical program `A004951.P2379355808616498615` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004951 has offset 0).

The definition of A004951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^16)` (program `A004951.P2379355808616498615`, by `A004951.P2379355808616498615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004951.P2379355808616498615

`round(n*ϕ^16)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004951

/-- `round(n*ϕ^16)` -/
def P2379355808616498615.Spec : Prop :=
  ∀ n, P2379355808616498615.a n = A004951 n

theorem P2379355808616498615.correct : P2379355808616498615.Spec := by
  intro n
  simp only [A004951]

end A004951

/-! ## A004951.P13137943473122487510

`A004931(2*n)-A004931(n)`
-/

namespace A004951.P13137943473122487510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 (2 * n) - A004931 n

end

end A004951.P13137943473122487510

namespace A004951

/-- `A004931(2*n)-A004931(n)` -/
def P13137943473122487510.Spec : Prop :=
  ∀ n, P13137943473122487510.a n = A004951 n

end A004951

/-! ## A004951.P613205514362713207

`A004931(n)+A001221(A046644(n+1))`
-/

namespace A004951.P613205514362713207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + A001221 (A046644 (n + 1)).toNat

end

end A004951.P613205514362713207

namespace A004951

/-- `A004931(n)+A001221(A046644(n+1))` -/
def P613205514362713207.Spec : Prop :=
  ∀ n, P613205514362713207.a n = A004951 n

end A004951

/-! ## A004951.P6922220536054612505

`A059841(A063228(n+1))+A004931(n)`
-/

namespace A004951.P6922220536054612505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A063228 (n + 1)).toNat + A004931 n

end

end A004951.P6922220536054612505

namespace A004951

/-- `A059841(A063228(n+1))+A004931(n)` -/
def P6922220536054612505.Spec : Prop :=
  ∀ n, P6922220536054612505.a n = A004951 n

end A004951

/-! ## A004951.P6393454131234368696

`A057979(A151706(n))+A004931(n)`
-/

namespace A004951.P6393454131234368696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A151706 n).toNat + A004931 n

end

end A004951.P6393454131234368696

namespace A004951

/-- `A057979(A151706(n))+A004931(n)` -/
def P6393454131234368696.Spec : Prop :=
  ∀ n, P6393454131234368696.a n = A004951 n

end A004951

/-! ## A004951.P13936958058737211804

`A004931(n)+1-A010054(∑[n+4]+2)`
-/

namespace A004951.P13936958058737211804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + (1 - A010054 (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A004951.P13936958058737211804

namespace A004951

/-- `A004931(n)+1-A010054(∑[n+4]+2)` -/
def P13936958058737211804.Spec : Prop :=
  ∀ n, P13936958058737211804.a n = A004951 n

end A004951

/-! ## A004951.P14467503532021679456

`A008606(A008605(4*n))-n`
-/

namespace A004951.P14467503532021679456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A008605 (4 * n)).toNat - (n : ℤ)

end

end A004951.P14467503532021679456

namespace A004951

/-- `A008606(A008605(4*n))-n` -/
def P14467503532021679456.Spec : Prop :=
  ∀ n, P14467503532021679456.a n = A004951 n

end A004951

/-! ## A004951.P11311977555344279860

`A151878(A151878(n))+A004931(n)`
-/

namespace A004951.P11311977555344279860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A151878 n).toNat + A004931 n

end

end A004951.P11311977555344279860

namespace A004951

/-- `A151878(A151878(n))+A004931(n)` -/
def P11311977555344279860.Spec : Prop :=
  ∀ n, P11311977555344279860.a n = A004951 n

end A004951

/-!
# A004952: 

The programs for A004952, there is no canonical definition to state claims against.
-/

/-! ## A004952.P12183194792613352404

`round(n*ϕ^17)`
-/

namespace A004952.P12183194792613352404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 17)

end

end A004952.P12183194792613352404

/-! ## A004952.P4352669214557296009

`A004932(2*n)-A004932(n)`
-/

namespace A004952.P4352669214557296009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004932 (2 * n) - A004932 n

end

end A004952.P4352669214557296009

/-!
# A004953: a(n) = round(n*phi^18), where phi is the golden ratio, A001622.

The programs for A004953, the canonical program `A004953.P6972709276045899883` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004953 has offset 0).

The definition of A004953 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^18)` (program `A004953.P6972709276045899883`, by `A004953.P6972709276045899883.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004953.P6972709276045899883

`round(n*ϕ^18)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004953

/-- `round(n*ϕ^18)` -/
def P6972709276045899883.Spec : Prop :=
  ∀ n, P6972709276045899883.a n = A004953 n

theorem P6972709276045899883.correct : P6972709276045899883.Spec := by
  intro n
  simp only [A004953]

end A004953

/-! ## A004953.P10144177394931791211

`A004933(2*n)-A004933(n)`
-/

namespace A004953.P10144177394931791211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 (2 * n) - A004933 n

end

end A004953.P10144177394931791211

namespace A004953

/-- `A004933(2*n)-A004933(n)` -/
def P10144177394931791211.Spec : Prop :=
  ∀ n, P10144177394931791211.a n = A004953 n

end A004953

/-! ## A004953.P3822240899688028475

`A352893(A000040(n+1))+A004933(n)`
-/

namespace A004953.P3822240899688028475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352893 (A000040 (n + 1)).toNat + A004933 n

end

end A004953.P3822240899688028475

namespace A004953

/-- `A352893(A000040(n+1))+A004933(n)` -/
def P3822240899688028475.Spec : Prop :=
  ∀ n, P3822240899688028475.a n = A004953 n

end A004953

/-! ## A004953.P9806075778675773040

`6*A134297(A008591(n))`
-/

namespace A004953.P9806075778675773040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A134297 (A008591 n).toNat

end

end A004953.P9806075778675773040

namespace A004953

/-- `6*A134297(A008591(n))` -/
def P9806075778675773040.Spec : Prop :=
  ∀ n, P9806075778675773040.a n = A004953 n

end A004953

/-! ## A004953.P3919744977180177911

`2*A134297(A305548(n))`
-/

namespace A004953.P3919744977180177911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134297 (A305548 n).toNat

end

end A004953.P3919744977180177911

namespace A004953

/-- `2*A134297(A305548(n))` -/
def P3919744977180177911.Spec : Prop :=
  ∀ n, P3919744977180177911.a n = A004953 n

end A004953

/-!
# A004954: 

The programs for A004954, there is no canonical definition to state claims against.
-/

/-! ## A004954.P10191742698678049221

`round(n*ϕ^19)`
-/

namespace A004954.P10191742698678049221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 19)

end

end A004954.P10191742698678049221

/-! ## A004954.P2935155971187383364

`floor(A004974(2*n)/2)`
-/

namespace A004954.P2935155971187383364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004974 (2 * n) : ℚ) / 2⌋

end

end A004954.P2935155971187383364

/-! ## A004954.P13512918439029687175

`A004974(2*n)-A004974(n)`
-/

namespace A004954.P13512918439029687175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004974 (2 * n) - A004974 n

end

end A004954.P13512918439029687175

/-!
# A004955: a(n) = round(n*phi^20), where phi is the golden ratio, A001622.

The programs for A004955, the canonical program `A004955.P13793415106412307534` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004955 has offset 0).

The definition of A004955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*ϕ^20)` (program `A004955.P13793415106412307534`, by `A004955.P13793415106412307534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004955.P13793415106412307534

`round(n*ϕ^20)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004955

/-- `round(n*ϕ^20)` -/
def P13793415106412307534.Spec : Prop :=
  ∀ n, P13793415106412307534.a n = A004955 n

theorem P13793415106412307534.correct : P13793415106412307534.Spec := by
  intro n
  simp only [A004955]

end A004955

/-! ## A004955.P8057764452410547636

`A008683(A100484(n+1))+A004935(n)`
-/

namespace A004955.P8057764452410547636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A100484 (n + 1)).toNat + A004935 n

end

end A004955.P8057764452410547636

namespace A004955

/-- `A008683(A100484(n+1))+A004935(n)` -/
def P8057764452410547636.Spec : Prop :=
  ∀ n, P8057764452410547636.a n = A004955 n

end A004955

/-! ## A004955.P1318550734525158312

`A004935(n)+A000035(A000040(n+1))`
-/

namespace A004955.P1318550734525158312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004935 n + A000035 (A000040 (n + 1)).toNat

end

end A004955.P1318550734525158312

namespace A004955

/-- `A004935(n)+A000035(A000040(n+1))` -/
def P1318550734525158312.Spec : Prop :=
  ∀ n, P1318550734525158312.a n = A004955 n

end A004955

/-! ## A004955.P4644979912290994966

`A341675(A177349(n+1))+A004935(n)`
-/

namespace A004955.P4644979912290994966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A177349 (n + 1)).toNat + A004935 n

end

end A004955.P4644979912290994966

namespace A004955

/-- `A341675(A177349(n+1))+A004935(n)` -/
def P4644979912290994966.Spec : Prop :=
  ∀ n, P4644979912290994966.a n = A004955 n

end A004955

/-! ## A004955.P6113444172254612712

`A034178(A006883(n+1))+A004935(n)`
-/

namespace A004955.P6113444172254612712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A006883 (n + 1)).toNat + A004935 n

end

end A004955.P6113444172254612712

namespace A004955

/-- `A034178(A006883(n+1))+A004935(n)` -/
def P6113444172254612712.Spec : Prop :=
  ∀ n, P6113444172254612712.a n = A004955 n

end A004955

/-! ## A004955.P11768263546230601805

`A004965(A004965(n))-n`
-/

namespace A004955.P11768263546230601805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004965 (A004965 n).toNat - (n : ℤ)

end

end A004955.P11768263546230601805

namespace A004955

/-- `A004965(A004965(n))-n` -/
def P11768263546230601805.Spec : Prop :=
  ∀ n, P11768263546230601805.a n = A004955 n

end A004955

/-! ## A004955.P3320036342845345401

`A122810(A075019(n+1))+A004935(n)`
-/

namespace A004955.P3320036342845345401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (A075019 (n + 1)).toNat + A004935 n

end

end A004955.P3320036342845345401

namespace A004955

/-- `A122810(A075019(n+1))+A004935(n)` -/
def P3320036342845345401.Spec : Prop :=
  ∀ n, P3320036342845345401.a n = A004955 n

end A004955

/-!
# A004956: a(n) = ceiling(n*phi), where phi is the golden ratio, A001622.

The programs for A004956, the canonical program `A004956.P1094694600621767936` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004956 has offset 0).

The definition of A004956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ)` (program `A004956.P1094694600621767936`, by `A004956.P1094694600621767936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004956.P1094694600621767936

`ceil(n*ϕ)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004956

/-- `ceil(n*ϕ)` -/
def P1094694600621767936.Spec : Prop :=
  ∀ n, P1094694600621767936.a n = A004956 n

theorem P1094694600621767936.correct : P1094694600621767936.Spec := by
  intro n
  simp only [A004956]

end A004956

/-! ## A004956.P18162556856614862405

`floor(n*(acot(n)+ϕ))`
-/

namespace A004956.P18162556856614862405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (SequenceMachineLib.acot (n : ℝ) + Real.goldenRatio)⌋

end

end A004956.P18162556856614862405

namespace A004956

/-- `floor(n*(acot(n)+ϕ))` -/
def P18162556856614862405.Spec : Prop :=
  ∀ n, P18162556856614862405.a n = A004956 n

end A004956

/-! ## A004956.P17345713659323535900

`round(n*(acot(2*n)+ϕ))`
-/

namespace A004956.P17345713659323535900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (SequenceMachineLib.acot (2 * n : ℝ) + Real.goldenRatio))

end

end A004956.P17345713659323535900

namespace A004956

/-- `round(n*(acot(2*n)+ϕ))` -/
def P17345713659323535900.Spec : Prop :=
  ∀ n, P17345713659323535900.a n = A004956 n

end A004956

/-! ## A004956.P1487581811946846807

`comp[floor(ϕ*n)-xor(n, -1)]`
-/

namespace A004956.P1487581811946846807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - Int.xor (n : ℤ) (-1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004956.P1487581811946846807

namespace A004956

/-- `comp[floor(ϕ*n)-xor(n, -1)]` -/
def P1487581811946846807.Spec : Prop :=
  ∀ n, (P1487581811946846807.a n : ℤ) = A004956 n

end A004956

/-! ## A004956.P15444625024231326745

`-floor(ϕ*xor(n-1, -1))`
-/

namespace A004956.P15444625024231326745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.goldenRatio * (Int.xor ((n : ℤ) - 1) (-1) : ℝ)⌋

end

end A004956.P15444625024231326745

namespace A004956

/-- `-floor(ϕ*xor(n-1, -1))` -/
def P15444625024231326745.Spec : Prop :=
  ∀ n, P15444625024231326745.a n = A004956 n

end A004956

/-! ## A004956.P9242807528003357787

`ceil(n/ϕ)%(n+1)+n`
-/

namespace A004956.P9242807528003357787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) / Real.goldenRatio⌉ (n + 1 : ℤ) + (n : ℤ)

end

end A004956.P9242807528003357787

namespace A004956

/-- `ceil(n/ϕ)%(n+1)+n` -/
def P9242807528003357787.Spec : Prop :=
  ∀ n, P9242807528003357787.a n = A004956 n

end A004956

/-! ## A004956.P12587428776080707389

`lcm(2, 2*n)-floor(n/ϕ²)`
-/

namespace A004956.P12587428776080707389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) - ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

end

end A004956.P12587428776080707389

namespace A004956

/-- `lcm(2, 2*n)-floor(n/ϕ²)` -/
def P12587428776080707389.Spec : Prop :=
  ∀ n, P12587428776080707389.a n = A004956 n

end A004956

/-! ## A004956.P11167570863658755004

`floor((a(n-1)+n)/ϕ+ϕ)` with `a(0)=0`
-/

namespace A004956.P11167570863658755004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) + (n : ℤ) : ℝ) / Real.goldenRatio + Real.goldenRatio⌋

end

end A004956.P11167570863658755004

namespace A004956

/-- `floor((a(n-1)+n)/ϕ+ϕ)` -/
def P11167570863658755004.Spec : Prop :=
  ∀ n, P11167570863658755004.a n = A004956 n

end A004956

/-! ## A004956.P16768742298514064461

`2*n-floor(gcd(n, 2*n)/ϕ²)`
-/

namespace A004956.P16768742298514064461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊(Nat.gcd n (2 * n) : ℝ) / Real.goldenRatio ^ 2⌋

end

end A004956.P16768742298514064461

namespace A004956

/-- `2*n-floor(gcd(n, 2*n)/ϕ²)` -/
def P16768742298514064461.Spec : Prop :=
  ∀ n, P16768742298514064461.a n = A004956 n

end A004956

/-! ## A004956.P11352311365700773

`Δ[floor(ϕ*(n-1))]+a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A004956.P11352311365700773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A004956.P11352311365700773

namespace A004956

/-- `Δ[floor(ϕ*(n-1))]+a(n-1)` -/
def P11352311365700773.Spec : Prop :=
  ∀ n, P11352311365700773.a n = A004956 n

end A004956

/-! ## A004956.P16061884141167817526

`and(2*n+1, 2*n)-floor(n/ϕ²)`
-/

namespace A004956.P16061884141167817526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n + 1) (2 * n) : ℤ) - ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

end

end A004956.P16061884141167817526

namespace A004956

/-- `and(2*n+1, 2*n)-floor(n/ϕ²)` -/
def P16061884141167817526.Spec : Prop :=
  ∀ n, P16061884141167817526.a n = A004956 n

end A004956

/-! ## A004956.P17834706098321925669

`a(n-1)-floor(a(n-1)-ϕ*n)` with `a(0)=0`
-/

namespace A004956.P17834706098321925669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(a (n - 1) : ℝ) - Real.goldenRatio * (n : ℝ)⌋

end

end A004956.P17834706098321925669

namespace A004956

/-- `a(n-1)-floor(a(n-1)-ϕ*n)` -/
def P17834706098321925669.Spec : Prop :=
  ∀ n, P17834706098321925669.a n = A004956 n

end A004956

/-! ## A004956.P13682318126171164209

`comp[A026352(n)]`
-/

namespace A004956.P13682318126171164209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004956.P13682318126171164209

namespace A004956

/-- `comp[A026352(n)]` -/
def P13682318126171164209.Spec : Prop :=
  ∀ n, (P13682318126171164209.a n : ℤ) = A004956 n

end A004956

/-! ## A004956.P2977512140002332031

`A004957(n)-n`
-/

namespace A004956.P2977512140002332031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n - (n : ℤ)

end

end A004956.P2977512140002332031

namespace A004956

/-- `A004957(n)-n` -/
def P2977512140002332031.Spec : Prop :=
  ∀ n, P2977512140002332031.a n = A004956 n

end A004956

/-! ## A004956.P6378597451151682995

`comp[A026351(n)+n]`
-/

namespace A004956.P6378597451151682995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004956.P6378597451151682995

namespace A004956

/-- `comp[A026351(n)+n]` -/
def P6378597451151682995.Spec : Prop :=
  ∀ n, (P6378597451151682995.a n : ℤ) = A004956 n

end A004956

/-! ## A004956.P6398550120959380835

`A189662(n+1)-1`
-/

namespace A004956.P6398550120959380835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (n + 1) - 1

end

end A004956.P6398550120959380835

namespace A004956

/-- `A189662(n+1)-1` -/
def P6398550120959380835.Spec : Prop :=
  ∀ n, P6398550120959380835.a n = A004956 n

end A004956

/-! ## A004956.P12717544987916063743

`2*n-A060144(n)`
-/

namespace A004956.P12717544987916063743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A060144 n

end

end A004956.P12717544987916063743

namespace A004956

/-- `2*n-A060144(n)` -/
def P12717544987916063743.Spec : Prop :=
  ∀ n, P12717544987916063743.a n = A004956 n

end A004956

/-!
# A004957: a(n) = ceiling(n*phi^2), where phi is the golden ratio, A001622.

The programs for A004957, the canonical program `A004957.P7842198454412055605` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004957 has offset 0).

The definition of A004957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ²)` (program `A004957.P7842198454412055605`, by `A004957.P7842198454412055605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004957.P7842198454412055605

`ceil(n*ϕ²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004957

/-- `ceil(n*ϕ²)` -/
def P7842198454412055605.Spec : Prop :=
  ∀ n, P7842198454412055605.a n = A004957 n

theorem P7842198454412055605.correct : P7842198454412055605.Spec := by
  intro n
  simp only [A004957]

end A004957

/-! ## A004957.P14045941896694583915

`comp[floor(n/ϕ)-xor(n, -1)]`
-/

namespace A004957.P14045941896694583915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋ - Int.xor (n : ℤ) (-1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004957.P14045941896694583915

namespace A004957

/-- `comp[floor(n/ϕ)-xor(n, -1)]` -/
def P14045941896694583915.Spec : Prop :=
  ∀ n, (P14045941896694583915.a n : ℤ) = A004957 n

end A004957

/-! ## A004957.P16436277977207040853

`ceil(n/ϕ)+lcm(2, 2*n)`
-/

namespace A004957.P16436277977207040853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉ + (Nat.lcm 2 (2 * n) : ℤ)

end

end A004957.P16436277977207040853

namespace A004957

/-- `ceil(n/ϕ)+lcm(2, 2*n)` -/
def P16436277977207040853.Spec : Prop :=
  ∀ n, P16436277977207040853.a n = A004957 n

end A004957

/-! ## A004957.P11179221753636188027

`ceil(ϕ*gcd(n, 2*n))+n`
-/

namespace A004957.P11179221753636188027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.gcd n (2 * n) : ℝ)⌉ + (n : ℤ)

end

end A004957.P11179221753636188027

namespace A004957

/-- `ceil(ϕ*gcd(n, 2*n))+n` -/
def P11179221753636188027.Spec : Prop :=
  ∀ n, P11179221753636188027.a n = A004957 n

end A004957

/-! ## A004957.P15142770570065031996

`ceil(n/ϕ)+xor(1, 2*n+1)`
-/

namespace A004957.P15142770570065031996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉ + (Nat.xor 1 (2 * n + 1) : ℤ)

end

end A004957.P15142770570065031996

namespace A004957

/-- `ceil(n/ϕ)+xor(1, 2*n+1)` -/
def P15142770570065031996.Spec : Prop :=
  ∀ n, P15142770570065031996.a n = A004957 n

end A004957

/-! ## A004957.P11506227381756622167

`floor((a(n-1)+2)/ϕ+n+1)` with `a(0)=0`
-/

namespace A004957.P11506227381756622167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) + 2 : ℝ) / Real.goldenRatio + (n + 1 : ℝ)⌋

end

end A004957.P11506227381756622167

namespace A004957

/-- `floor((a(n-1)+2)/ϕ+n+1)` -/
def P11506227381756622167.Spec : Prop :=
  ∀ n, P11506227381756622167.a n = A004957 n

end A004957

/-! ## A004957.P16067612605799029877

`ceil(n/ϕ)+and(2*n+1, 2*n)`
-/

namespace A004957.P16067612605799029877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉ + (Nat.land (2 * n + 1) (2 * n) : ℤ)

end

end A004957.P16067612605799029877

namespace A004957

/-- `ceil(n/ϕ)+and(2*n+1, 2*n)` -/
def P16067612605799029877.Spec : Prop :=
  ∀ n, P16067612605799029877.a n = A004957 n

end A004957

/-! ## A004957.P482701998550205770

`comp[(floor(ϕ*n)+1)%floor(ϕ*n+n+2)]`
-/

namespace A004957.P482701998550205770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊Real.goldenRatio * (n : ℝ)⌋ + 1) ⌊Real.goldenRatio * (n : ℝ) + (n + 2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004957.P482701998550205770

namespace A004957

/-- `comp[(floor(ϕ*n)+1)%floor(ϕ*n+n+2)]` -/
def P482701998550205770.Spec : Prop :=
  ∀ n, (P482701998550205770.a n : ℤ) = A004957 n

end A004957

/-! ## A004957.P10752845177806426784

`A004956(n)+n`
-/

namespace A004957.P10752845177806426784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n + (n : ℤ)

end

end A004957.P10752845177806426784

namespace A004957

/-- `A004956(n)+n` -/
def P10752845177806426784.Spec : Prop :=
  ∀ n, P10752845177806426784.a n = A004957 n

end A004957

/-! ## A004957.P11210503019056258320

`comp[A026352(n)]+n`
-/

namespace A004957.P11210503019056258320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A004957.P11210503019056258320

namespace A004957

/-- `comp[A026352(n)]+n` -/
def P11210503019056258320.Spec : Prop :=
  ∀ n, (P11210503019056258320.a n : ℤ) = A004957 n

end A004957

/-! ## A004957.P9783224329370453603

`A007066(n+1)-1`
-/

namespace A004957.P9783224329370453603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) - 1

end

end A004957.P9783224329370453603

namespace A004957

/-- `A007066(n+1)-1` -/
def P9783224329370453603.Spec : Prop :=
  ∀ n, P9783224329370453603.a n = A004957 n

end A004957

/-! ## A004957.P17512660207342682124

`3*n-A060144(n)`
-/

namespace A004957.P17512660207342682124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A060144 n

end

end A004957.P17512660207342682124

namespace A004957

/-- `3*n-A060144(n)` -/
def P17512660207342682124.Spec : Prop :=
  ∀ n, P17512660207342682124.a n = A004957 n

end A004957

/-! ## A004957.P5597601460208420172

`floor(A288713(n+1)/2)`
-/

namespace A004957.P5597601460208420172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288713 (n + 1) : ℚ) / 2⌋

end

end A004957.P5597601460208420172

namespace A004957

/-- `floor(A288713(n+1)/2)` -/
def P5597601460208420172.Spec : Prop :=
  ∀ n, P5597601460208420172.a n = A004957 n

end A004957

/-! ## A004957.P396249572774991722

`A005843(n)+ceil(n/ϕ)`
-/

namespace A004957.P396249572774991722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + ⌈(n : ℝ) / Real.goldenRatio⌉

end

end A004957.P396249572774991722

namespace A004957

/-- `A005843(n)+ceil(n/ϕ)` -/
def P396249572774991722.Spec : Prop :=
  ∀ n, P396249572774991722.a n = A004957 n

end A004957

/-! ## A004957.P6091485517021334963

`comp[A026351(n)+n]+n`
-/

namespace A004957.P6091485517021334963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A004957.P6091485517021334963

namespace A004957

/-- `comp[A026351(n)+n]+n` -/
def P6091485517021334963.Spec : Prop :=
  ∀ n, (P6091485517021334963.a n : ℤ) = A004957 n

end A004957

/-! ## A004957.P12004179399923675642

`A189662(n+1)-1+n`
-/

namespace A004957.P12004179399923675642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (n + 1) - 1 + (n : ℤ)

end

end A004957.P12004179399923675642

namespace A004957

/-- `A189662(n+1)-1+n` -/
def P12004179399923675642.Spec : Prop :=
  ∀ n, P12004179399923675642.a n = A004957 n

end A004957

/-!
# A004958: a(n) = ceiling(n*phi^3), where phi is the golden ratio, A001622.

The programs for A004958, the canonical program `A004958.P13138658034996732801` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004958 has offset 0).

The definition of A004958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004958.P17927218111054967414

`ceil(n*ϕ^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004958.P17927218111054967414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 3⌉

end

end A004958.P17927218111054967414

namespace A004958

/-- `ceil(n*ϕ^3)` -/
def P17927218111054967414.Spec : Prop :=
  ∀ n, P17927218111054967414.a n = A004958 n

end A004958

/-! ## A004958.P13138658034996732801

`A004956(2*n)+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004958

/-- `A004956(2*n)+n` -/
def P13138658034996732801.Spec : Prop :=
  ∀ n, P13138658034996732801.a n = A004958 n

theorem P13138658034996732801.correct : P13138658034996732801.Spec := by
  intro n
  simp only [A004958]

end A004958

/-! ## A004958.P3119985549468680157

`ceil(ϕ*lcm(2, 2*n))+n`
-/

namespace A004958.P3119985549468680157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.lcm 2 (2 * n) : ℝ)⌉ + (n : ℤ)

end

end A004958.P3119985549468680157

namespace A004958

/-- `ceil(ϕ*lcm(2, 2*n))+n` -/
def P3119985549468680157.Spec : Prop :=
  ∀ n, P3119985549468680157.a n = A004958 n

end A004958

/-! ## A004958.P6535876402300127773

`ceil(ϕ*xor(1, 2*n+1))+n`
-/

namespace A004958.P6535876402300127773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.xor 1 (2 * n + 1) : ℝ)⌉ + (n : ℤ)

end

end A004958.P6535876402300127773

namespace A004958

/-- `ceil(ϕ*xor(1, 2*n+1))+n` -/
def P6535876402300127773.Spec : Prop :=
  ∀ n, P6535876402300127773.a n = A004958 n

end A004958

/-! ## A004958.P10229404545292046421

`ceil(ϕ*2*n)+gcd(n, 2*n)`
-/

namespace A004958.P10229404545292046421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (2 * n : ℝ)⌉ + (Nat.gcd n (2 * n) : ℤ)

end

end A004958.P10229404545292046421

namespace A004958

/-- `ceil(ϕ*2*n)+gcd(n, 2*n)` -/
def P10229404545292046421.Spec : Prop :=
  ∀ n, P10229404545292046421.a n = A004958 n

end A004958

/-! ## A004958.P11217756136952656837

`ceil(ϕ*and(2*n+1, 2*n))+n`
-/

namespace A004958.P11217756136952656837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.land (2 * n + 1) (2 * n) : ℝ)⌉ + (n : ℤ)

end

end A004958.P11217756136952656837

namespace A004958

/-- `ceil(ϕ*and(2*n+1, 2*n))+n` -/
def P11217756136952656837.Spec : Prop :=
  ∀ n, P11217756136952656837.a n = A004958 n

end A004958

/-! ## A004958.P5092560362032298678

`A198082(n)+2*n`
-/

namespace A004958.P5092560362032298678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n + (2 * n : ℤ)

end

end A004958.P5092560362032298678

namespace A004958

/-- `A198082(n)+2*n` -/
def P5092560362032298678.Spec : Prop :=
  ∀ n, P5092560362032298678.a n = A004958 n

end A004958

/-! ## A004958.P8253092461704054574

`A300763(n)+4*n`
-/

namespace A004958.P8253092461704054574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 n + (4 * n : ℤ)

end

end A004958.P8253092461704054574

namespace A004958

/-- `A300763(n)+4*n` -/
def P8253092461704054574.Spec : Prop :=
  ∀ n, P8253092461704054574.a n = A004958 n

end A004958

/-! ## A004958.P11456141254913122484

`5*n-A187329(n)`
-/

namespace A004958.P11456141254913122484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A187329 n

end

end A004958.P11456141254913122484

namespace A004958

/-- `5*n-A187329(n)` -/
def P11456141254913122484.Spec : Prop :=
  ∀ n, P11456141254913122484.a n = A004958 n

end A004958

/-! ## A004958.P7424845530140918748

`(comp[floor(2*(n+1)/ϕ)]-n+1)%A102083(n)`
-/

namespace A004958.P7424845530140918748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 1) : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1) (A102083 n)

end

end A004958.P7424845530140918748

namespace A004958

/-- `(comp[floor(2*(n+1)/ϕ)]-n+1)%A102083(n)` -/
def P7424845530140918748.Spec : Prop :=
  ∀ n, P7424845530140918748.a n = A004958 n

end A004958

/-! ## A004958.P5596995000656289498

`A007067(n)+A004957(n)`
-/

namespace A004958.P5596995000656289498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n + A004957 n

end

end A004958.P5596995000656289498

namespace A004958

/-- `A007067(n)+A004957(n)` -/
def P5596995000656289498.Spec : Prop :=
  ∀ n, P5596995000656289498.a n = A004958 n

end A004958

/-! ## A004958.P10870890253483300352

`A057427(n)+A004976(n)`
-/

namespace A004958.P10870890253483300352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004976 n

end

end A004958.P10870890253483300352

namespace A004958

/-- `A057427(n)+A004976(n)` -/
def P10870890253483300352.Spec : Prop :=
  ∀ n, P10870890253483300352.a n = A004958 n

end A004958

/-! ## A004958.P3099614850220969117

`A004976(n)-A057428(n)`
-/

namespace A004958.P3099614850220969117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n - A057428 n

end

end A004958.P3099614850220969117

namespace A004958

/-- `A004976(n)-A057428(n)` -/
def P3099614850220969117.Spec : Prop :=
  ∀ n, P3099614850220969117.a n = A004958 n

end A004958

/-! ## A004958.P11561606273278042413

`A008588(n)-A187330(n)`
-/

namespace A004958.P11561606273278042413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n - A187330 n

end

end A004958.P11561606273278042413

namespace A004958

/-- `A008588(n)-A187330(n)` -/
def P11561606273278042413.Spec : Prop :=
  ∀ n, P11561606273278042413.a n = A004958 n

end A004958

/-! ## A004958.P9177665536190729232

`A276854(n)+A087156(n+1)`
-/

namespace A004958.P9177665536190729232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n + A087156 (n + 1)

end

end A004958.P9177665536190729232

namespace A004958

/-- `A276854(n)+A087156(n+1)` -/
def P9177665536190729232.Spec : Prop :=
  ∀ n, P9177665536190729232.a n = A004958 n

end A004958

/-! ## A004958.P820913979001951399

`A016813(n)+A300763(n)-1`
-/

namespace A004958.P820913979001951399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + (A300763 n - 1)

end

end A004958.P820913979001951399

namespace A004958

/-- `A016813(n)+A300763(n)-1` -/
def P820913979001951399.Spec : Prop :=
  ∀ n, P820913979001951399.a n = A004958 n

end A004958

/-! ## A004958.P15652705542652059093

`A007066(n+1)+A007067(n)-1`
-/

namespace A004958.P15652705542652059093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) + (A007067 n - 1)

end

end A004958.P15652705542652059093

namespace A004958

/-- `A007066(n+1)+A007067(n)-1` -/
def P15652705542652059093.Spec : Prop :=
  ∀ n, P15652705542652059093.a n = A004958 n

end A004958

/-! ## A004958.P1358587069583672267

`A004957(2*n)-n`
-/

namespace A004958.P1358587069583672267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (2 * n) - (n : ℤ)

end

end A004958.P1358587069583672267

namespace A004958

/-- `A004957(2*n)-n` -/
def P1358587069583672267.Spec : Prop :=
  ∀ n, P1358587069583672267.a n = A004958 n

end A004958

/-! ## A004958.P13357735779838397878

`A188191(Δ[n²])-1`
-/

namespace A004958.P13357735779838397878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A004958.P13357735779838397878

namespace A004958

/-- `A188191(Δ[n²])-1` -/
def P13357735779838397878.Spec : Prop :=
  ∀ n, P13357735779838397878.a n = A004958 n

end A004958

/-! ## A004958.P1730424896846827067

`A007066(Δ[n²])-(n+1)`
-/

namespace A004958.P1730424896846827067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A004958.P1730424896846827067

namespace A004958

/-- `A007066(Δ[n²])-(n+1)` -/
def P1730424896846827067.Spec : Prop :=
  ∀ n, P1730424896846827067.a n = A004958 n

end A004958

/-!
# A004959: a(n) = ceiling(n*phi^4), where phi is the golden ratio, A001622.

The programs for A004959, the canonical program `A004959.P8440085141902266755` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004959 has offset 0).

The definition of A004959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004959.P11342180851519927091

`ceil(n*ϕ^4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004959.P11342180851519927091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 4⌉

end

end A004959.P11342180851519927091

namespace A004959

/-- `ceil(n*ϕ^4)` -/
def P11342180851519927091.Spec : Prop :=
  ∀ n, P11342180851519927091.a n = A004959 n

end A004959

/-! ## A004959.P8440085141902266755

`A004956(3*n)+2*n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004959

/-- `A004956(3*n)+2*n` -/
def P8440085141902266755.Spec : Prop :=
  ∀ n, P8440085141902266755.a n = A004959 n

theorem P8440085141902266755.correct : P8440085141902266755.Spec := by
  intro n
  simp only [A004959]

end A004959

/-! ## A004959.P2520141207361473264

`A057427(n)+A004919(n)`
-/

namespace A004959.P2520141207361473264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004919 n

end

end A004959.P2520141207361473264

namespace A004959

/-- `A057427(n)+A004919(n)` -/
def P2520141207361473264.Spec : Prop :=
  ∀ n, P2520141207361473264.a n = A004959 n

end A004959

/-! ## A004959.P9184951777825924466

`A004919(n)-A057428(n)`
-/

namespace A004959.P9184951777825924466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 n - A057428 n

end

end A004959.P9184951777825924466

namespace A004959

/-- `A004919(n)-A057428(n)` -/
def P9184951777825924466.Spec : Prop :=
  ∀ n, P9184951777825924466.a n = A004959 n

end A004959

/-! ## A004959.P12614255900851773594

`A135302(C(2, n²))+A004919(n)`
-/

namespace A004959.P12614255900851773594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (Nat.choose 2 (n ^ 2)) + A004919 n

end

end A004959.P12614255900851773594

namespace A004959

/-- `A135302(C(2, n²))+A004919(n)` -/
def P12614255900851773594.Spec : Prop :=
  ∀ n, P12614255900851773594.a n = A004959 n

end A004959

/-! ## A004959.P844716831097141337

`A276427(C(2, n²))+A004919(n)`
-/

namespace A004959.P844716831097141337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276427 (Nat.choose 2 (n ^ 2)) + A004919 n

end

end A004959.P844716831097141337

namespace A004959

/-- `A276427(C(2, n²))+A004919(n)` -/
def P844716831097141337.Spec : Prop :=
  ∀ n, P844716831097141337.a n = A004959 n

end A004959

/-! ## A004959.P880712036447892669

`A004919(n)+A004958(n)-A004976(n)`
-/

namespace A004959.P880712036447892669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 n + (A004958 n - A004976 n)

end

end A004959.P880712036447892669

namespace A004959

/-- `A004919(n)+A004958(n)-A004976(n)` -/
def P880712036447892669.Spec : Prop :=
  ∀ n, P880712036447892669.a n = A004959 n

end A004959

/-! ## A004959.P12845428430815357269

`A004919(n)+char[A038722(n+1)]`
-/

namespace A004959.P12845428430815357269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004959.P12845428430815357269

namespace A004959

/-- `A004919(n)+char[A038722(n+1)]` -/
def P12845428430815357269.Spec : Prop :=
  ∀ n, P12845428430815357269.a n = A004959 n

end A004959

/-! ## A004959.P5292762703944788190

`A004957(3*n)-n`
-/

namespace A004959.P5292762703944788190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (3 * n) - (n : ℤ)

end

end A004959.P5292762703944788190

namespace A004959

/-- `A004957(3*n)-n` -/
def P5292762703944788190.Spec : Prop :=
  ∀ n, P5292762703944788190.a n = A004959 n

end A004959

/-! ## A004959.P8889615189013715978

`A007066(3*n+1)-(n+1)`
-/

namespace A004959.P8889615189013715978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (3 * n + 1) - (n + 1 : ℤ)

end

end A004959.P8889615189013715978

namespace A004959

/-- `A007066(3*n+1)-(n+1)` -/
def P8889615189013715978.Spec : Prop :=
  ∀ n, P8889615189013715978.a n = A004959 n

end A004959

/-! ## A004959.P3724649009639381319

`A005843(n)+A004956(3*n)`
-/

namespace A004959.P3724649009639381319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004956 (3 * n)

end

end A004959.P3724649009639381319

namespace A004959

/-- `A005843(n)+A004956(3*n)` -/
def P3724649009639381319.Spec : Prop :=
  ∀ n, P3724649009639381319.a n = A004959 n

end A004959

/-! ## A004959.P15323717142312329879

`A004958(3*n)-(A007067(3*n)+n)`
-/

namespace A004959.P15323717142312329879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (3 * n) - (A007067 (3 * n) + (n : ℤ))

end

end A004959.P15323717142312329879

namespace A004959

/-- `A004958(3*n)-(A007067(3*n)+n)` -/
def P15323717142312329879.Spec : Prop :=
  ∀ n, P15323717142312329879.a n = A004959 n

end A004959

/-! ## A004959.P10791931399980411002

`A060145(3*n)+A195170(3*n)-n`
-/

namespace A004959.P10791931399980411002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (3 * n) + (A195170 (3 * n) - (n : ℤ))

end

end A004959.P10791931399980411002

namespace A004959

/-- `A060145(3*n)+A195170(3*n)-n` -/
def P10791931399980411002.Spec : Prop :=
  ∀ n, P10791931399980411002.a n = A004959 n

end A004959

/-! ## A004959.P4362926294466386764

`A153152(A004919(n)-n)+n`
-/

namespace A004959.P4362926294466386764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A004919 n - (n : ℤ)).toNat + (n : ℤ)

end

end A004959.P4362926294466386764

namespace A004959

/-- `A153152(A004919(n)-n)+n` -/
def P4362926294466386764.Spec : Prop :=
  ∀ n, P4362926294466386764.a n = A004959 n

end A004959

/-! ## A004959.P11460136810836355553

`A005206(A004958(3*n))-n`
-/

namespace A004959.P11460136810836355553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A004958 (3 * n)).toNat - (n : ℤ)

end

end A004959.P11460136810836355553

namespace A004959

/-- `A005206(A004958(3*n))-n` -/
def P11460136810836355553.Spec : Prop :=
  ∀ n, P11460136810836355553.a n = A004959 n

end A004959

/-! ## A004959.P13072313445622940082

`A153152(A004919(n))`
-/

namespace A004959.P13072313445622940082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A004919 n).toNat

end

end A004959.P13072313445622940082

namespace A004959

/-- `A153152(A004919(n))` -/
def P13072313445622940082.Spec : Prop :=
  ∀ n, P13072313445622940082.a n = A004959 n

end A004959

/-! ## A004959.P3040978416097810215

`A120613(A007066(3*n+1))-n`
-/

namespace A004959.P3040978416097810215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (A007066 (3 * n + 1)).toNat - (n : ℤ)

end

end A004959.P3040978416097810215

namespace A004959

/-- `A120613(A007066(3*n+1))-n` -/
def P3040978416097810215.Spec : Prop :=
  ∀ n, P3040978416097810215.a n = A004959 n

end A004959

/-!
# A004960: a(n) = ceiling(n*phi^5), where phi is the golden ratio, A001622.

The programs for A004960, the canonical program `A004960.P8255385307919614529` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004960 has offset 0).

The definition of A004960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^5)` (program `A004960.P8255385307919614529`, by `A004960.P8255385307919614529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004960.P8255385307919614529

`ceil(n*ϕ^5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004960

/-- `ceil(n*ϕ^5)` -/
def P8255385307919614529.Spec : Prop :=
  ∀ n, P8255385307919614529.a n = A004960 n

theorem P8255385307919614529.correct : P8255385307919614529.Spec := by
  intro n
  simp only [A004960]

end A004960

/-! ## A004960.P1838334133966583479

`(A004920(n)+1)%(n+1)²²`
-/

namespace A004960.P1838334133966583479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004920 n + 1) (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A004960.P1838334133966583479

namespace A004960

/-- `(A004920(n)+1)%(n+1)²²` -/
def P1838334133966583479.Spec : Prop :=
  ∀ n, P1838334133966583479.a n = A004960 n

end A004960

/-! ## A004960.P12193203960297450080

`A057427(n)+A004920(n)`
-/

namespace A004960.P12193203960297450080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004920 n

end

end A004960.P12193203960297450080

namespace A004960

/-- `A057427(n)+A004920(n)` -/
def P12193203960297450080.Spec : Prop :=
  ∀ n, P12193203960297450080.a n = A004960 n

end A004960

/-! ## A004960.P10366404679601949775

`A004920(n)-A057428(n)`
-/

namespace A004960.P10366404679601949775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004920 n - A057428 n

end

end A004960.P10366404679601949775

namespace A004960

/-- `A004920(n)-A057428(n)` -/
def P10366404679601949775.Spec : Prop :=
  ∀ n, P10366404679601949775.a n = A004960 n

end A004960

/-! ## A004960.P12274869498309759781

`A004920(n)+A004965(n)-A004925(n)`
-/

namespace A004960.P12274869498309759781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004920 n + (A004965 n - A004925 n)

end

end A004960.P12274869498309759781

namespace A004960

/-- `A004920(n)+A004965(n)-A004925(n)` -/
def P12274869498309759781.Spec : Prop :=
  ∀ n, P12274869498309759781.a n = A004960 n

end A004960

/-! ## A004960.P6084411328164632315

`A004920(n)+A001221(A000961(n+1))`
-/

namespace A004960.P6084411328164632315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004920 n + A001221 (A000961 (n + 1)).toNat

end

end A004960.P6084411328164632315

namespace A004960

/-- `A004920(n)+A001221(A000961(n+1))` -/
def P6084411328164632315.Spec : Prop :=
  ∀ n, P6084411328164632315.a n = A004960 n

end A004960

/-! ## A004960.P15965276431110238600

`A004956(5*n)+3*n`
-/

namespace A004960.P15965276431110238600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (5 * n) + (3 * n : ℤ)

end

end A004960.P15965276431110238600

namespace A004960

/-- `A004956(5*n)+3*n` -/
def P15965276431110238600.Spec : Prop :=
  ∀ n, P15965276431110238600.a n = A004960 n

end A004960

/-! ## A004960.P14313620174898583065

`A004957(5*n)-2*n`
-/

namespace A004960.P14313620174898583065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (5 * n) - (2 * n : ℤ)

end

end A004960.P14313620174898583065

namespace A004960

/-- `A004957(5*n)-2*n` -/
def P14313620174898583065.Spec : Prop :=
  ∀ n, P14313620174898583065.a n = A004960 n

end A004960

/-! ## A004960.P8801580720621893211

`A007066(A016861(n))-(2*n+1)`
-/

namespace A004960.P8801580720621893211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (A016861 n).toNat - (2 * n + 1 : ℤ)

end

end A004960.P8801580720621893211

namespace A004960

/-- `A007066(A016861(n))-(2*n+1)` -/
def P8801580720621893211.Spec : Prop :=
  ∀ n, P8801580720621893211.a n = A004960 n

end A004960

/-! ## A004960.P8461355094349402868

`A326178(A004920(n))`
-/

namespace A004960.P8461355094349402868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A004920 n).toNat

end

end A004960.P8461355094349402868

namespace A004960

/-- `A326178(A004920(n))` -/
def P8461355094349402868.Spec : Prop :=
  ∀ n, P8461355094349402868.a n = A004960 n

end A004960

/-!
# A004961: a(n) = ceiling(n*phi^6), where phi is the golden ratio.

The programs for A004961, the canonical program `A004961.P9532648479180972872` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004961 has offset 0).

The definition of A004961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^6)` (program `A004961.P9532648479180972872`, by `A004961.P9532648479180972872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004961.P9532648479180972872

`ceil(n*ϕ^6)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004961

/-- `ceil(n*ϕ^6)` -/
def P9532648479180972872.Spec : Prop :=
  ∀ n, P9532648479180972872.a n = A004961 n

theorem P9532648479180972872.correct : P9532648479180972872.Spec := by
  intro n
  simp only [A004961]

end A004961

/-! ## A004961.P7534104552952660576

`A057427(n)+A004921(n)`
-/

namespace A004961.P7534104552952660576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004921 n

end

end A004961.P7534104552952660576

namespace A004961

/-- `A057427(n)+A004921(n)` -/
def P7534104552952660576.Spec : Prop :=
  ∀ n, P7534104552952660576.a n = A004961 n

end A004961

/-! ## A004961.P16844011138681604545

`A004921(n)-A057428(n)`
-/

namespace A004961.P16844011138681604545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 n - A057428 n

end

end A004961.P16844011138681604545

namespace A004961

/-- `A004921(n)-A057428(n)` -/
def P16844011138681604545.Spec : Prop :=
  ∀ n, P16844011138681604545.a n = A004961 n

end A004961

/-! ## A004961.P14920491002375764052

`A004921(n)+abs(A062157(n))`
-/

namespace A004961.P14920491002375764052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 n + |A062157 n|

end

end A004961.P14920491002375764052

namespace A004961

/-- `A004921(n)+abs(A062157(n))` -/
def P14920491002375764052.Spec : Prop :=
  ∀ n, P14920491002375764052.a n = A004961 n

end A004961

/-! ## A004961.P4036977113743843491

`A004921(n)+1-A000007(n)`
-/

namespace A004961.P4036977113743843491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 n + (1 - A000007 n)

end

end A004961.P4036977113743843491

namespace A004961

/-- `A004921(n)+1-A000007(n)` -/
def P4036977113743843491.Spec : Prop :=
  ∀ n, P4036977113743843491.a n = A004961 n

end A004961

/-! ## A004961.P12823461030283472528

`A019425(2*n)+A004921(n)`
-/

namespace A004961.P12823461030283472528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n) + A004921 n

end

end A004961.P12823461030283472528

namespace A004961

/-- `A019425(2*n)+A004921(n)` -/
def P12823461030283472528.Spec : Prop :=
  ∀ n, P12823461030283472528.a n = A004961 n

end A004961

/-! ## A004961.P18131091815439291893

`A004921(n)+and(1, A000040(n+1))`
-/

namespace A004961.P18131091815439291893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 n + Int.land 1 (A000040 (n + 1))

end

end A004961.P18131091815439291893

namespace A004961

/-- `A004921(n)+and(1, A000040(n+1))` -/
def P18131091815439291893.Spec : Prop :=
  ∀ n, P18131091815439291893.a n = A004961 n

end A004961

/-! ## A004961.P13481331291345682212

`A004921(n)+A019425(A004275(n))²`
-/

namespace A004961.P13481331291345682212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 n + A019425 (A004275 n).toNat ^ 2

end

end A004961.P13481331291345682212

namespace A004961

/-- `A004921(n)+A019425(A004275(n))²` -/
def P13481331291345682212.Spec : Prop :=
  ∀ n, P13481331291345682212.a n = A004961 n

end A004961

/-! ## A004961.P10435349873113909068

`A004921(n)+A019425(A019425(n))²`
-/

namespace A004961.P10435349873113909068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 n + A019425 (A019425 n).toNat ^ 2

end

end A004961.P10435349873113909068

namespace A004961

/-- `A004921(n)+A019425(A019425(n))²` -/
def P10435349873113909068.Spec : Prop :=
  ∀ n, P10435349873113909068.a n = A004961 n

end A004961

/-! ## A004961.P5526193021768306736

`A004921(n)+A004965(n)-A004925(n)`
-/

namespace A004961.P5526193021768306736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 n + (A004965 n - A004925 n)

end

end A004961.P5526193021768306736

namespace A004961

/-- `A004921(n)+A004965(n)-A004925(n)` -/
def P5526193021768306736.Spec : Prop :=
  ∀ n, P5526193021768306736.a n = A004961 n

end A004961

/-! ## A004961.P15829796222991793103

`A004921(n)+A004958(n)-A004976(n)`
-/

namespace A004961.P15829796222991793103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 n + (A004958 n - A004976 n)

end

end A004961.P15829796222991793103

namespace A004961

/-- `A004921(n)+A004958(n)-A004976(n)` -/
def P15829796222991793103.Spec : Prop :=
  ∀ n, P15829796222991793103.a n = A004961 n

end A004961

/-! ## A004961.P9104643908082763607

`A004921(n)+A001222(A008578(n+1))`
-/

namespace A004961.P9104643908082763607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 n + A001222 (A008578 (n + 1)).toNat

end

end A004961.P9104643908082763607

namespace A004961

/-- `A004921(n)+A001222(A008578(n+1))` -/
def P9104643908082763607.Spec : Prop :=
  ∀ n, P9104643908082763607.a n = A004961 n

end A004961

/-! ## A004961.P15430178465815285841

`A004921(n)-A062157(2*n)`
-/

namespace A004961.P15430178465815285841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 n - A062157 (2 * n)

end

end A004961.P15430178465815285841

namespace A004961

/-- `A004921(n)-A062157(2*n)` -/
def P15430178465815285841.Spec : Prop :=
  ∀ n, P15430178465815285841.a n = A004961 n

end A004961

/-! ## A004961.P14848090213347159801

`A004958(4*n)+n`
-/

namespace A004961.P14848090213347159801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (4 * n) + (n : ℤ)

end

end A004961.P14848090213347159801

namespace A004961

/-- `A004958(4*n)+n` -/
def P14848090213347159801.Spec : Prop :=
  ∀ n, P14848090213347159801.a n = A004961 n

end A004961

/-! ## A004961.P11019521019273142880

`A087156(n+1)+A004976(A008586(n))`
-/

namespace A004961.P11019521019273142880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A004976 (A008586 n).toNat

end

end A004961.P11019521019273142880

namespace A004961

/-- `A087156(n+1)+A004976(A008586(n))` -/
def P11019521019273142880.Spec : Prop :=
  ∀ n, P11019521019273142880.a n = A004961 n

end A004961

/-! ## A004961.P8125095719821360939

`A153152(A004921(n))`
-/

namespace A004961.P8125095719821360939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A004921 n).toNat

end

end A004961.P8125095719821360939

namespace A004961

/-- `A153152(A004921(n))` -/
def P8125095719821360939.Spec : Prop :=
  ∀ n, P8125095719821360939.a n = A004961 n

end A004961

/-!
# A004962: a(n) = ceiling(n*phi^7), where phi is the golden ratio, A001622.

The programs for A004962, the canonical program `A004962.P10020237349822122355` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004962 has offset 0).

The definition of A004962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^7)` (program `A004962.P10020237349822122355`, by `A004962.P10020237349822122355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004962.P10020237349822122355

`ceil(n*ϕ^7)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004962

/-- `ceil(n*ϕ^7)` -/
def P10020237349822122355.Spec : Prop :=
  ∀ n, P10020237349822122355.a n = A004962 n

theorem P10020237349822122355.correct : P10020237349822122355.Spec := by
  intro n
  simp only [A004962]

end A004962

/-! ## A004962.P2275016068649199241

`A057427(n)+A004922(n)`
-/

namespace A004962.P2275016068649199241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004922 n

end

end A004962.P2275016068649199241

namespace A004962

/-- `A057427(n)+A004922(n)` -/
def P2275016068649199241.Spec : Prop :=
  ∀ n, P2275016068649199241.a n = A004962 n

end A004962

/-! ## A004962.P14436331922542842333

`A004922(n)-A057428(n)`
-/

namespace A004962.P14436331922542842333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004922 n - A057428 n

end

end A004962.P14436331922542842333

namespace A004962

/-- `A004922(n)-A057428(n)` -/
def P14436331922542842333.Spec : Prop :=
  ∀ n, P14436331922542842333.a n = A004962 n

end A004962

/-! ## A004962.P10063044994921643383

`A004922(n)+A112347(n)²`
-/

namespace A004962.P10063044994921643383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004922 n + A112347 n ^ 2

end

end A004962.P10063044994921643383

namespace A004962

/-- `A004922(n)+A112347(n)²` -/
def P10063044994921643383.Spec : Prop :=
  ∀ n, P10063044994921643383.a n = A004962 n

end A004962

/-! ## A004962.P15929696401663947305

`A004922(n)+A000040(n+1)%2`
-/

namespace A004962.P15929696401663947305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004922 n + Int.tmod (A000040 (n + 1)) 2

end

end A004962.P15929696401663947305

namespace A004962

/-- `A004922(n)+A000040(n+1)%2` -/
def P15929696401663947305.Spec : Prop :=
  ∀ n, P15929696401663947305.a n = A004962 n

end A004962

/-! ## A004962.P2383389587103592783

`A004922(n)--1%A020639(n+1)`
-/

namespace A004962.P2383389587103592783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004922 n - Int.tmod (-1) (A020639 (n + 1))

end

end A004962.P2383389587103592783

namespace A004962

/-- `A004922(n)--1%A020639(n+1)` -/
def P2383389587103592783.Spec : Prop :=
  ∀ n, P2383389587103592783.a n = A004962 n

end A004962

/-! ## A004962.P307615182483808073

`A004922(n)+and(1, p?[A319723(n)])`
-/

namespace A004962.P307615182483808073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004922 n + Int.land 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A004962.P307615182483808073

namespace A004962

/-- `A004922(n)+and(1, p?[A319723(n)])` -/
def P307615182483808073.Spec : Prop :=
  ∀ n, P307615182483808073.a n = A004962 n

end A004962

/-! ## A004962.P2102352839920577127

`A004922(n)+and(1, p?[A007095(n)])`
-/

namespace A004962.P2102352839920577127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004922 n + Int.land 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A004962.P2102352839920577127

namespace A004962

/-- `A004922(n)+and(1, p?[A007095(n)])` -/
def P2102352839920577127.Spec : Prop :=
  ∀ n, P2102352839920577127.a n = A004962 n

end A004962

/-! ## A004962.P15784767084323888500

`A004922(n)+A081999(n+1)%2`
-/

namespace A004962.P15784767084323888500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004922 n + Int.tmod (A081999 (n + 1)) 2

end

end A004962.P15784767084323888500

namespace A004962

/-- `A004922(n)+A081999(n+1)%2` -/
def P15784767084323888500.Spec : Prop :=
  ∀ n, P15784767084323888500.a n = A004962 n

end A004962

/-! ## A004962.P17356419273104645218

`A153152(A004922(n))`
-/

namespace A004962.P17356419273104645218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A004922 n).toNat

end

end A004962.P17356419273104645218

namespace A004962

/-- `A153152(A004922(n))` -/
def P17356419273104645218.Spec : Prop :=
  ∀ n, P17356419273104645218.a n = A004962 n

end A004962

/-!
# A004963: a(n) = ceiling(n*phi^8), where phi is the golden ratio, A001622.

The programs for A004963, the canonical program `A004963.P148113536325122893` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004963 has offset 0).

The definition of A004963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^8)` (program `A004963.P148113536325122893`, by `A004963.P148113536325122893.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004963.P148113536325122893

`ceil(n*ϕ^8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004963

/-- `ceil(n*ϕ^8)` -/
def P148113536325122893.Spec : Prop :=
  ∀ n, P148113536325122893.a n = A004963 n

theorem P148113536325122893.correct : P148113536325122893.Spec := by
  intro n
  simp only [A004963]

end A004963

/-! ## A004963.P8734122871970024130

`A057427(n)+A004923(n)`
-/

namespace A004963.P8734122871970024130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004923 n

end

end A004963.P8734122871970024130

namespace A004963

/-- `A057427(n)+A004923(n)` -/
def P8734122871970024130.Spec : Prop :=
  ∀ n, P8734122871970024130.a n = A004963 n

end A004963

/-! ## A004963.P12358507499444730196

`A004923(n)-A057428(n)`
-/

namespace A004963.P12358507499444730196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004923 n - A057428 n

end

end A004963.P12358507499444730196

namespace A004963

/-- `A004923(n)-A057428(n)` -/
def P12358507499444730196.Spec : Prop :=
  ∀ n, P12358507499444730196.a n = A004963 n

end A004963

/-! ## A004963.P572816045823097849

`A004923(n)+1-A000007(n)`
-/

namespace A004963.P572816045823097849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004923 n + (1 - A000007 n)

end

end A004963.P572816045823097849

namespace A004963

/-- `A004923(n)+1-A000007(n)` -/
def P572816045823097849.Spec : Prop :=
  ∀ n, P572816045823097849.a n = A004963 n

end A004963

/-! ## A004963.P890447225373957826

`A004923(n)+char[A066182(n+1)]`
-/

namespace A004963.P890447225373957826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004923 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004963.P890447225373957826

namespace A004963

/-- `A004923(n)+char[A066182(n+1)]` -/
def P890447225373957826.Spec : Prop :=
  ∀ n, P890447225373957826.a n = A004963 n

end A004963

/-! ## A004963.P11422438080029789533

`A004923(n)+(n-A014681(n))²`
-/

namespace A004963.P11422438080029789533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004923 n + ((n : ℤ) - A014681 n) ^ 2

end

end A004963.P11422438080029789533

namespace A004963

/-- `A004923(n)+(n-A014681(n))²` -/
def P11422438080029789533.Spec : Prop :=
  ∀ n, P11422438080029789533.a n = A004963 n

end A004963

/-! ## A004963.P1019762739568198561

`A004923(n)+and(1, A000040(n+1))`
-/

namespace A004963.P1019762739568198561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004923 n + Int.land 1 (A000040 (n + 1))

end

end A004963.P1019762739568198561

namespace A004963

/-- `A004923(n)+and(1, A000040(n+1))` -/
def P1019762739568198561.Spec : Prop :=
  ∀ n, P1019762739568198561.a n = A004963 n

end A004963

/-! ## A004963.P16578275321070392795

`A059841(A034444(n+1))+A004923(n)`
-/

namespace A004963.P16578275321070392795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A034444 (n + 1)).toNat + A004923 n

end

end A004963.P16578275321070392795

namespace A004963

/-- `A059841(A034444(n+1))+A004923(n)` -/
def P16578275321070392795.Spec : Prop :=
  ∀ n, P16578275321070392795.a n = A004963 n

end A004963

/-! ## A004963.P740861929373043603

`A004923(n)+A004965(n)-A004925(n)`
-/

namespace A004963.P740861929373043603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004923 n + (A004965 n - A004925 n)

end

end A004963.P740861929373043603

namespace A004963

/-- `A004923(n)+A004965(n)-A004925(n)` -/
def P740861929373043603.Spec : Prop :=
  ∀ n, P740861929373043603.a n = A004963 n

end A004963

/-! ## A004963.P16419984100950464842

`A034460(3^floor(log2(n+1)))+A004923(n)`
-/

namespace A004963.P16419984100950464842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (3 ^ Nat.log 2 (n + 1)) + A004923 n

end

end A004963.P16419984100950464842

namespace A004963

/-- `A034460(3^floor(log2(n+1)))+A004923(n)` -/
def P16419984100950464842.Spec : Prop :=
  ∀ n, P16419984100950464842.a n = A004963 n

end A004963

/-! ## A004963.P16011927149827755130

`A004959(7*n)-n`
-/

namespace A004963.P16011927149827755130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004959 (7 * n) - (n : ℤ)

end

end A004963.P16011927149827755130

namespace A004963

/-- `A004959(7*n)-n` -/
def P16011927149827755130.Spec : Prop :=
  ∀ n, P16011927149827755130.a n = A004963 n

end A004963

/-! ## A004963.P1344300009478152600

`A153152(A004923(n))`
-/

namespace A004963.P1344300009478152600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A004923 n).toNat

end

end A004963.P1344300009478152600

namespace A004963

/-- `A153152(A004923(n))` -/
def P1344300009478152600.Spec : Prop :=
  ∀ n, P1344300009478152600.a n = A004963 n

end A004963

/-!
# A004964: a(n) = ceiling(n*phi^9), where phi is the golden ratio, A001622.

The programs for A004964, the canonical program `A004964.P10113056132259982977` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004964 has offset 0).

The definition of A004964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^9)` (program `A004964.P10113056132259982977`, by `A004964.P10113056132259982977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004964.P10113056132259982977

`ceil(n*ϕ^9)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004964

/-- `ceil(n*ϕ^9)` -/
def P10113056132259982977.Spec : Prop :=
  ∀ n, P10113056132259982977.a n = A004964 n

theorem P10113056132259982977.correct : P10113056132259982977.Spec := by
  intro n
  simp only [A004964]

end A004964

/-! ## A004964.P3688438229001333630

`A057427(n)+A004924(n)`
-/

namespace A004964.P3688438229001333630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004924 n

end

end A004964.P3688438229001333630

namespace A004964

/-- `A057427(n)+A004924(n)` -/
def P3688438229001333630.Spec : Prop :=
  ∀ n, P3688438229001333630.a n = A004964 n

end A004964

/-! ## A004964.P11732934176167884308

`A004924(n)-A057428(n)`
-/

namespace A004964.P11732934176167884308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004924 n - A057428 n

end

end A004964.P11732934176167884308

namespace A004964

/-- `A004924(n)-A057428(n)` -/
def P11732934176167884308.Spec : Prop :=
  ∀ n, P11732934176167884308.a n = A004964 n

end A004964

/-! ## A004964.P17210813032765035742

`A004924(n)+and(1, A000040(n+1))`
-/

namespace A004964.P17210813032765035742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004924 n + Int.land 1 (A000040 (n + 1))

end

end A004964.P17210813032765035742

namespace A004964

/-- `A004924(n)+and(1, A000040(n+1))` -/
def P17210813032765035742.Spec : Prop :=
  ∀ n, P17210813032765035742.a n = A004964 n

end A004964

/-! ## A004964.P14643304389363689920

`floor(A323022(A078350(n+1)+1)+n*ϕ^9)`
-/

namespace A004964.P14643304389363689920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323022 (A078350 (n + 1) + 1).toNat : ℝ) + (n : ℝ) * Real.goldenRatio ^ 9⌋

end

end A004964.P14643304389363689920

namespace A004964

/-- `floor(A323022(A078350(n+1)+1)+n*ϕ^9)` -/
def P14643304389363689920.Spec : Prop :=
  ∀ n, P14643304389363689920.a n = A004964 n

end A004964

/-! ## A004964.P3885367746426778724

`A004924(n)+A001222(A050229(n+1))`
-/

namespace A004964.P3885367746426778724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004924 n + A001222 (A050229 (n + 1)).toNat

end

end A004964.P3885367746426778724

namespace A004964

/-- `A004924(n)+A001222(A050229(n+1))` -/
def P3885367746426778724.Spec : Prop :=
  ∀ n, P3885367746426778724.a n = A004964 n

end A004964

/-! ## A004964.P16715931523640658500

`A034460(3^floor(log2(n+1)))+A004924(n)`
-/

namespace A004964.P16715931523640658500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (3 ^ Nat.log 2 (n + 1)) + A004924 n

end

end A004964.P16715931523640658500

namespace A004964

/-- `A034460(3^floor(log2(n+1)))+A004924(n)` -/
def P16715931523640658500.Spec : Prop :=
  ∀ n, P16715931523640658500.a n = A004964 n

end A004964

/-! ## A004964.P15208383520214406481

`or(A004924(n), A057427(A007504(n)))`
-/

namespace A004964.P15208383520214406481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004924 n) (A057427 (A007504 n).toNat)

end

end A004964.P15208383520214406481

namespace A004964

/-- `or(A004924(n), A057427(A007504(n)))` -/
def P15208383520214406481.Spec : Prop :=
  ∀ n, P15208383520214406481.a n = A004964 n

end A004964

/-! ## A004964.P8031642404440801755

`or(A004944(n), A057427(A007504(n)))`
-/

namespace A004964.P8031642404440801755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004944 n) (A057427 (A007504 n).toNat)

end

end A004964.P8031642404440801755

namespace A004964

/-- `or(A004944(n), A057427(A007504(n)))` -/
def P8031642404440801755.Spec : Prop :=
  ∀ n, P8031642404440801755.a n = A004964 n

end A004964

/-! ## A004964.P7657701187078814657

`A334415(A004966(n)+1)`
-/

namespace A004964.P7657701187078814657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A004966 n + 1).toNat

end

end A004964.P7657701187078814657

namespace A004964

/-- `A334415(A004966(n)+1)` -/
def P7657701187078814657.Spec : Prop :=
  ∀ n, P7657701187078814657.a n = A004964 n

end A004964

/-!
# A004965: a(n) = ceiling(n*phi^10), where phi is the golden ratio, A001622.

The programs for A004965, the canonical program `A004965.P1216650175913332815` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004965 has offset 0).

The definition of A004965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^10)` (program `A004965.P1216650175913332815`, by `A004965.P1216650175913332815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004965.P1216650175913332815

`ceil(n*ϕ^10)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004965

/-- `ceil(n*ϕ^10)` -/
def P1216650175913332815.Spec : Prop :=
  ∀ n, P1216650175913332815.a n = A004965 n

theorem P1216650175913332815.correct : P1216650175913332815.Spec := by
  intro n
  simp only [A004965]

end A004965

/-! ## A004965.P11640196226120053879

`A057427(n)+A004925(n)`
-/

namespace A004965.P11640196226120053879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004925 n

end

end A004965.P11640196226120053879

namespace A004965

/-- `A057427(n)+A004925(n)` -/
def P11640196226120053879.Spec : Prop :=
  ∀ n, P11640196226120053879.a n = A004965 n

end A004965

/-! ## A004965.P7820744811300487112

`A004925(n)+and(1, A000040(n+1))`
-/

namespace A004965.P7820744811300487112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004925 n + Int.land 1 (A000040 (n + 1))

end

end A004965.P7820744811300487112

namespace A004965

/-- `A004925(n)+and(1, A000040(n+1))` -/
def P7820744811300487112.Spec : Prop :=
  ∀ n, P7820744811300487112.a n = A004965 n

end A004965

/-! ## A004965.P15431764364833515250

`A034460(3^floor(log2(n+1)))+A004925(n)`
-/

namespace A004965.P15431764364833515250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (3 ^ Nat.log 2 (n + 1)) + A004925 n

end

end A004965.P15431764364833515250

namespace A004965

/-- `A034460(3^floor(log2(n+1)))+A004925(n)` -/
def P15431764364833515250.Spec : Prop :=
  ∀ n, P15431764364833515250.a n = A004965 n

end A004965

/-! ## A004965.P6161562303771501295

`A352893(A000040(n+1))+A004925(n)`
-/

namespace A004965.P6161562303771501295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352893 (A000040 (n + 1)).toNat + A004925 n

end

end A004965.P6161562303771501295

namespace A004965

/-- `A352893(A000040(n+1))+A004925(n)` -/
def P6161562303771501295.Spec : Prop :=
  ∀ n, P6161562303771501295.a n = A004965 n

end A004965

/-! ## A004965.P12878759000601089329

`A071045(82*n)`
-/

namespace A004965.P12878759000601089329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (82 * n)

end

end A004965.P12878759000601089329

namespace A004965

/-- `A071045(82*n)` -/
def P12878759000601089329.Spec : Prop :=
  ∀ n, P12878759000601089329.a n = A004965 n

end A004965

/-! ## A004965.P11000547099230006160

`A006368(2*41*n)`
-/

namespace A004965.P11000547099230006160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (2 * (41 * n))

end

end A004965.P11000547099230006160

namespace A004965

/-- `A006368(2*41*n)` -/
def P11000547099230006160.Spec : Prop :=
  ∀ n, P11000547099230006160.a n = A004965 n

end A004965

/-! ## A004965.P2141175273937870028

`A007494(2*41*n)`
-/

namespace A004965.P2141175273937870028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (2 * (41 * n))

end

end A004965.P2141175273937870028

namespace A004965

/-- `A007494(2*41*n)` -/
def P2141175273937870028.Spec : Prop :=
  ∀ n, P2141175273937870028.a n = A004965 n

end A004965

/-! ## A004965.P17374458716013987080

`A026430(2*41*n)`
-/

namespace A004965.P17374458716013987080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (2 * (41 * n))

end

end A004965.P17374458716013987080

namespace A004965

/-- `A026430(2*41*n)` -/
def P17374458716013987080.Spec : Prop :=
  ∀ n, P17374458716013987080.a n = A004965 n

end A004965

/-! ## A004965.P7629220474956676198

`A032766(2*41*n)`
-/

namespace A004965.P7629220474956676198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (2 * (41 * n))

end

end A004965.P7629220474956676198

namespace A004965

/-- `A032766(2*41*n)` -/
def P7629220474956676198.Spec : Prop :=
  ∀ n, P7629220474956676198.a n = A004965 n

end A004965

/-! ## A004965.P13928073061613326685

`3*A004525(82*n)`
-/

namespace A004965.P13928073061613326685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004525 (82 * n)

end

end A004965.P13928073061613326685

namespace A004965

/-- `3*A004525(82*n)` -/
def P13928073061613326685.Spec : Prop :=
  ∀ n, P13928073061613326685.a n = A004965 n

end A004965

/-! ## A004965.P10481484803343400042

`3*A004526(82*n)`
-/

namespace A004965.P10481484803343400042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004526 (82 * n)

end

end A004965.P10481484803343400042

namespace A004965

/-- `3*A004526(82*n)` -/
def P10481484803343400042.Spec : Prop :=
  ∀ n, P10481484803343400042.a n = A004965 n

end A004965

/-! ## A004965.P15916334109062968850

`3*A025480(82*n)`
-/

namespace A004965.P15916334109062968850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A025480 (82 * n)

end

end A004965.P15916334109062968850

namespace A004965

/-- `3*A025480(82*n)` -/
def P15916334109062968850.Spec : Prop :=
  ∀ n, P15916334109062968850.a n = A004965 n

end A004965

/-! ## A004965.P4928998495844381312

`3*A026741(82*n)`
-/

namespace A004965.P4928998495844381312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026741 (82 * n)

end

end A004965.P4928998495844381312

namespace A004965

/-- `3*A026741(82*n)` -/
def P4928998495844381312.Spec : Prop :=
  ∀ n, P4928998495844381312.a n = A004965 n

end A004965

/-! ## A004965.P44487694635290517

`41*n*A122553(A165721(n+1))`
-/

namespace A004965.P44487694635290517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) * A122553 (A165721 (n + 1)).toNat

end

end A004965.P44487694635290517

namespace A004965

/-- `41*n*A122553(A165721(n+1))` -/
def P44487694635290517.Spec : Prop :=
  ∀ n, P44487694635290517.a n = A004965 n

end A004965

/-! ## A004965.P1070314509423105856

`41*n*A122553(∑[2*n])`
-/

namespace A004965.P1070314509423105856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) * A122553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004965.P1070314509423105856

namespace A004965

/-- `41*n*A122553(∑[2*n])` -/
def P1070314509423105856.Spec : Prop :=
  ∀ n, P1070314509423105856.a n = A004965 n

end A004965

/-! ## A004965.P17989343926136310025

`Δ[3*A155098((1-n)²+n)]`
-/

namespace A004965.P17989343926136310025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A155098 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004965.P17989343926136310025

namespace A004965

/-- `Δ[3*A155098((1-n)²+n)]` -/
def P17989343926136310025.Spec : Prop :=
  ∀ n, P17989343926136310025.a n = A004965 n

end A004965

/-!
# A004966: a(n) = ceiling(n*phi^11), where phi is the golden ratio, A001622.

The programs for A004966, the canonical program `A004966.P9235411182987362832` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004966 has offset 0).

The definition of A004966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^11)` (program `A004966.P9235411182987362832`, by `A004966.P9235411182987362832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004966.P9235411182987362832

`ceil(n*ϕ^11)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004966

/-- `ceil(n*ϕ^11)` -/
def P9235411182987362832.Spec : Prop :=
  ∀ n, P9235411182987362832.a n = A004966 n

theorem P9235411182987362832.correct : P9235411182987362832.Spec := by
  intro n
  simp only [A004966]

end A004966

/-! ## A004966.P5939191069806419895

`A057427(n)+A004926(n)`
-/

namespace A004966.P5939191069806419895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004926 n

end

end A004966.P5939191069806419895

namespace A004966

/-- `A057427(n)+A004926(n)` -/
def P5939191069806419895.Spec : Prop :=
  ∀ n, P5939191069806419895.a n = A004966 n

end A004966

/-! ## A004966.P11363889560583291805

`A004926(n)-A057428(n)`
-/

namespace A004966.P11363889560583291805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n - A057428 n

end

end A004966.P11363889560583291805

namespace A004966

/-- `A004926(n)-A057428(n)` -/
def P11363889560583291805.Spec : Prop :=
  ∀ n, P11363889560583291805.a n = A004966 n

end A004966

/-! ## A004966.P10826170332742974277

`A004926(n)+A062157(n)²`
-/

namespace A004966.P10826170332742974277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n + A062157 n ^ 2

end

end A004966.P10826170332742974277

namespace A004966

/-- `A004926(n)+A062157(n)²` -/
def P10826170332742974277.Spec : Prop :=
  ∀ n, P10826170332742974277.a n = A004966 n

end A004966

/-! ## A004966.P7191301507433977451

`A004926(n)+1-A000007(n)`
-/

namespace A004966.P7191301507433977451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n + (1 - A000007 n)

end

end A004966.P7191301507433977451

namespace A004966

/-- `A004926(n)+1-A000007(n)` -/
def P7191301507433977451.Spec : Prop :=
  ∀ n, P7191301507433977451.a n = A004966 n

end A004966

/-! ## A004966.P9188408428893852488

`A019426(2*n)+A004926(n)`
-/

namespace A004966.P9188408428893852488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n) + A004926 n

end

end A004966.P9188408428893852488

namespace A004966

/-- `A019426(2*n)+A004926(n)` -/
def P9188408428893852488.Spec : Prop :=
  ∀ n, P9188408428893852488.a n = A004966 n

end A004966

/-! ## A004966.P9609747612658125597

`A004926(n)+and(1, A000040(n+1))`
-/

namespace A004966.P9609747612658125597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n + Int.land 1 (A000040 (n + 1))

end

end A004966.P9609747612658125597

namespace A004966

/-- `A004926(n)+and(1, A000040(n+1))` -/
def P9609747612658125597.Spec : Prop :=
  ∀ n, P9609747612658125597.a n = A004966 n

end A004966

/-! ## A004966.P4222656658493805255

`A004926(n)-A023443(C(2, n+2))`
-/

namespace A004966.P4222656658493805255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n - A023443 (Nat.choose 2 (n + 2))

end

end A004966.P4222656658493805255

namespace A004966

/-- `A004926(n)-A023443(C(2, n+2))` -/
def P4222656658493805255.Spec : Prop :=
  ∀ n, P4222656658493805255.a n = A004966 n

end A004966

/-! ## A004966.P8727836511467936028

`A107286(A107286(n))+A004926(n)`
-/

namespace A004966.P8727836511467936028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A107286 n).toNat + A004926 n

end

end A004966.P8727836511467936028

namespace A004966

/-- `A107286(A107286(n))+A004926(n)` -/
def P8727836511467936028.Spec : Prop :=
  ∀ n, P8727836511467936028.a n = A004966 n

end A004966

/-! ## A004966.P6276287809599865687

`A004926(n)+A001221(A000961(n+1))`
-/

namespace A004966.P6276287809599865687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n + A001221 (A000961 (n + 1)).toNat

end

end A004966.P6276287809599865687

namespace A004966

/-- `A004926(n)+A001221(A000961(n+1))` -/
def P6276287809599865687.Spec : Prop :=
  ∀ n, P6276287809599865687.a n = A004966 n

end A004966

/-! ## A004966.P11156026995193201327

`A004926(n)+A001222(A008578(n+1))`
-/

namespace A004966.P11156026995193201327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n + A001222 (A008578 (n + 1)).toNat

end

end A004966.P11156026995193201327

namespace A004966

/-- `A004926(n)+A001222(A008578(n+1))` -/
def P11156026995193201327.Spec : Prop :=
  ∀ n, P11156026995193201327.a n = A004966 n

end A004966

/-! ## A004966.P6248572355213624605

`A004926(n)-A062157(2*n)`
-/

namespace A004966.P6248572355213624605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n - A062157 (2 * n)

end

end A004966.P6248572355213624605

namespace A004966

/-- `A004926(n)-A062157(2*n)` -/
def P6248572355213624605.Spec : Prop :=
  ∀ n, P6248572355213624605.a n = A004966 n

end A004966

/-! ## A004966.P18414974842991883640

`A034460(3^floor(log2(n+1)))+A004926(n)`
-/

namespace A004966.P18414974842991883640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (3 ^ Nat.log 2 (n + 1)) + A004926 n

end

end A004966.P18414974842991883640

namespace A004966

/-- `A034460(3^floor(log2(n+1)))+A004926(n)` -/
def P18414974842991883640.Spec : Prop :=
  ∀ n, P18414974842991883640.a n = A004966 n

end A004966

/-! ## A004966.P14642019157212369848

`A267776(A256793(n+1))+A004926(n)`
-/

namespace A004966.P14642019157212369848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267776 (A256793 (n + 1)).toNat + A004926 n

end

end A004966.P14642019157212369848

namespace A004966

/-- `A267776(A256793(n+1))+A004926(n)` -/
def P14642019157212369848.Spec : Prop :=
  ∀ n, P14642019157212369848.a n = A004966 n

end A004966

/-! ## A004966.P1957898706652802975

`A059841(A001043(n+1))+A004926(n)`
-/

namespace A004966.P1957898706652802975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A001043 (n + 1)).toNat + A004926 n

end

end A004966.P1957898706652802975

namespace A004966

/-- `A059841(A001043(n+1))+A004926(n)` -/
def P1957898706652802975.Spec : Prop :=
  ∀ n, P1957898706652802975.a n = A004966 n

end A004966

/-! ## A004966.P14130868696300696030

`A165471(n²)+A004926(n)`
-/

namespace A004966.P14130868696300696030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (n ^ 2) + A004926 n

end

end A004966.P14130868696300696030

namespace A004966

/-- `A165471(n²)+A004926(n)` -/
def P14130868696300696030.Spec : Prop :=
  ∀ n, P14130868696300696030.a n = A004966 n

end A004966

/-! ## A004966.P16508603431090105290

`A267776((n+1)²)+A004926(n)`
-/

namespace A004966.P16508603431090105290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267776 ((n + 1) ^ 2) + A004926 n

end

end A004966.P16508603431090105290

namespace A004966

/-- `A267776((n+1)²)+A004926(n)` -/
def P16508603431090105290.Spec : Prop :=
  ∀ n, P16508603431090105290.a n = A004966 n

end A004966

/-!
# A004967: 

The programs for A004967, there is no canonical definition to state claims against.
-/

/-! ## A004967.P399062199277936109

`ceil(n*ϕ^12)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004967.P399062199277936109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 12⌉

end

end A004967.P399062199277936109

/-! ## A004967.P10354694587352814409

`A057427(n)+A004927(n)`
-/

namespace A004967.P10354694587352814409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004927 n

end

end A004967.P10354694587352814409

/-! ## A004967.P10410183506059258384

`A004927(n)-A057428(n)`
-/

namespace A004967.P10410183506059258384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004927 n - A057428 n

end

end A004967.P10410183506059258384

/-! ## A004967.P8511428714874706212

`A004927(n)+1-A000007(n)`
-/

namespace A004967.P8511428714874706212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004927 n + (1 - A000007 n)

end

end A004967.P8511428714874706212

/-! ## A004967.P3242692708785157806

`A004927(n)+char[A316668(n+1)]`
-/

namespace A004967.P3242692708785157806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316668 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004927 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004967.P3242692708785157806

/-! ## A004967.P1988785315028315110

`A004927(n)+and(1, A000040(n+1))`
-/

namespace A004967.P1988785315028315110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004927 n + Int.land 1 (A000040 (n + 1))

end

end A004967.P1988785315028315110

/-! ## A004967.P18326980256230391621

`A004927(n)+A000045(round(n/(n+1)))`
-/

namespace A004967.P18326980256230391621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004927 n + A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A004967.P18326980256230391621

/-! ## A004967.P8857848147490328819

`A178334(A178334(n))+A004927(n)`
-/

namespace A004967.P8857848147490328819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat + A004927 n

end

end A004967.P8857848147490328819

/-! ## A004967.P6955682868433081023

`A069283(A069346(n+1))+A004927(n)`
-/

namespace A004967.P6955682868433081023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A069346 (n + 1)).toNat + A004927 n

end

end A004967.P6955682868433081023

/-!
# A004968: a(n) = ceiling(n*phi^13), where phi is the golden ratio, A001622.

The programs for A004968, the canonical program `A004968.P15226134137798546724` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004968 has offset 0).

The definition of A004968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^13)` (program `A004968.P15226134137798546724`, by `A004968.P15226134137798546724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004968.P15226134137798546724

`ceil(n*ϕ^13)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004968

/-- `ceil(n*ϕ^13)` -/
def P15226134137798546724.Spec : Prop :=
  ∀ n, P15226134137798546724.a n = A004968 n

theorem P15226134137798546724.correct : P15226134137798546724.Spec := by
  intro n
  simp only [A004968]

end A004968

/-! ## A004968.P3539227922938551518

`A057427(n)+A004928(n)`
-/

namespace A004968.P3539227922938551518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004928 n

end

end A004968.P3539227922938551518

namespace A004968

/-- `A057427(n)+A004928(n)` -/
def P3539227922938551518.Spec : Prop :=
  ∀ n, P3539227922938551518.a n = A004968 n

end A004968

/-! ## A004968.P15964711936548189456

`A004928(n)+1-A000007(n)`
-/

namespace A004968.P15964711936548189456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004928 n + (1 - A000007 n)

end

end A004968.P15964711936548189456

namespace A004968

/-- `A004928(n)+1-A000007(n)` -/
def P15964711936548189456.Spec : Prop :=
  ∀ n, P15964711936548189456.a n = A004968 n

end A004968

/-! ## A004968.P4837668705058209462

`A019429(2*n)+A004928(n)`
-/

namespace A004968.P4837668705058209462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (2 * n) + A004928 n

end

end A004968.P4837668705058209462

namespace A004968

/-- `A019429(2*n)+A004928(n)` -/
def P4837668705058209462.Spec : Prop :=
  ∀ n, P4837668705058209462.a n = A004968 n

end A004968

/-! ## A004968.P17214981225656006297

`A004928(n)+and(1, A000040(n+1))`
-/

namespace A004968.P17214981225656006297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004928 n + Int.land 1 (A000040 (n + 1))

end

end A004968.P17214981225656006297

namespace A004968

/-- `A004928(n)+and(1, A000040(n+1))` -/
def P17214981225656006297.Spec : Prop :=
  ∀ n, P17214981225656006297.a n = A004968 n

end A004968

/-! ## A004968.P14267435326953033111

`A004928(n)+A001065(A027746(n+1))`
-/

namespace A004968.P14267435326953033111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004928 n + A001065 (A027746 (n + 1)).toNat

end

end A004968.P14267435326953033111

namespace A004968

/-- `A004928(n)+A001065(A027746(n+1))` -/
def P14267435326953033111.Spec : Prop :=
  ∀ n, P14267435326953033111.a n = A004968 n

end A004968

/-! ## A004968.P3046613260687391871

`A004928(n)+A001222(A076396(n+1))`
-/

namespace A004968.P3046613260687391871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004928 n + A001222 (A076396 (n + 1)).toNat

end

end A004968.P3046613260687391871

namespace A004968

/-- `A004928(n)+A001222(A076396(n+1))` -/
def P3046613260687391871.Spec : Prop :=
  ∀ n, P3046613260687391871.a n = A004968 n

end A004968

/-! ## A004968.P18006086867047376194

`A034460(3^floor(log2(n+1)))+A004928(n)`
-/

namespace A004968.P18006086867047376194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (3 ^ Nat.log 2 (n + 1)) + A004928 n

end

end A004968.P18006086867047376194

namespace A004968

/-- `A034460(3^floor(log2(n+1)))+A004928(n)` -/
def P18006086867047376194.Spec : Prop :=
  ∀ n, P18006086867047376194.a n = A004968 n

end A004968

/-!
# A004969: 

The programs for A004969, there is no canonical definition to state claims against.
-/

/-! ## A004969.P13790429706261985436

`ceil(n*ϕ^14)`
-/

namespace A004969.P13790429706261985436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 14⌉

end

end A004969.P13790429706261985436

/-! ## A004969.P15819143068941965558

`floor(A057427(n)+n*(ϕ^7)²)`
-/

namespace A004969.P15819143068941965558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + (n : ℝ) * (Real.goldenRatio ^ 7) ^ 2⌋

end

end A004969.P15819143068941965558

/-! ## A004969.P9680297817164368720

`A057427(n)+A004929(n)`
-/

namespace A004969.P9680297817164368720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004929 n

end

end A004969.P9680297817164368720

/-! ## A004969.P8070973330248295462

`A004929(n)-A057428(n)`
-/

namespace A004969.P8070973330248295462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004929 n - A057428 n

end

end A004969.P8070973330248295462

/-! ## A004969.P1500401961421466999

`A004929(n)+and(1, A000040(n+1))`
-/

namespace A004969.P1500401961421466999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004929 n + Int.land 1 (A000040 (n + 1))

end

end A004969.P1500401961421466999

/-! ## A004969.P5771342661303790873

`A004929(n)+A000045(round(n/(n+1)))`
-/

namespace A004969.P5771342661303790873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004929 n + A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A004969.P5771342661303790873

/-! ## A004969.P9099202617767309277

`A051903(A007947(n+1))+A004929(n)`
-/

namespace A004969.P9099202617767309277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007947 (n + 1)).toNat + A004929 n

end

end A004969.P9099202617767309277

/-! ## A004969.P10163248962475191843

`A004929(n)+A008683(A072055(n+1)-1)`
-/

namespace A004969.P10163248962475191843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004929 n + A008683 (A072055 (n + 1) - 1).toNat

end

end A004969.P10163248962475191843

/-! ## A004969.P6011516392044255785

`A004929(n)+char[A103889(n+1)]`
-/

namespace A004969.P6011516392044255785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004929 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004969.P6011516392044255785

/-! ## A004969.P11117252038826970409

`A008607(A008599(n))+A008604(A008601(n))`
-/

namespace A004969.P11117252038826970409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (A008599 n).toNat + A008604 (A008601 n).toNat

end

end A004969.P11117252038826970409

/-! ## A004969.P17772390246913644188

`A008606(A008597(n))+A008605(A008603(n))`
-/

namespace A004969.P17772390246913644188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A008597 n).toNat + A008605 (A008603 n).toNat

end

end A004969.P17772390246913644188

/-! ## A004969.P4921693148210029648

`A008605(A008603(n))+A008602(A008600(n))`
-/

namespace A004969.P4921693148210029648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 (A008603 n).toNat + A008602 (A008600 n).toNat

end

end A004969.P4921693148210029648

/-!
# A004970: a(n) = ceiling(n*phi^15), where phi is the golden ratio, A001622.

The programs for A004970, the canonical program `A004970.P1885893689424084694` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004970 has offset 0).

The definition of A004970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^15)` (program `A004970.P1885893689424084694`, by `A004970.P1885893689424084694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004970.P1885893689424084694

`ceil(n*ϕ^15)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004970

/-- `ceil(n*ϕ^15)` -/
def P1885893689424084694.Spec : Prop :=
  ∀ n, P1885893689424084694.a n = A004970 n

theorem P1885893689424084694.correct : P1885893689424084694.Spec := by
  intro n
  simp only [A004970]

end A004970

/-! ## A004970.P1325014403686666651

`A057427(n)+A004930(n)`
-/

namespace A004970.P1325014403686666651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004930 n

end

end A004970.P1325014403686666651

namespace A004970

/-- `A057427(n)+A004930(n)` -/
def P1325014403686666651.Spec : Prop :=
  ∀ n, P1325014403686666651.a n = A004970 n

end A004970

/-! ## A004970.P9345766536416830098

`A004930(n)-A057428(n)`
-/

namespace A004970.P9345766536416830098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004930 n - A057428 n

end

end A004970.P9345766536416830098

namespace A004970

/-- `A004930(n)-A057428(n)` -/
def P9345766536416830098.Spec : Prop :=
  ∀ n, P9345766536416830098.a n = A004970 n

end A004970

/-! ## A004970.P8347068191383891529

`A004930(n)+and(1, A000040(n+1))`
-/

namespace A004970.P8347068191383891529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004930 n + Int.land 1 (A000040 (n + 1))

end

end A004970.P8347068191383891529

namespace A004970

/-- `A004930(n)+and(1, A000040(n+1))` -/
def P8347068191383891529.Spec : Prop :=
  ∀ n, P8347068191383891529.a n = A004970 n

end A004970

/-! ## A004970.P248228460208473870

`A004930(n)+A000035(A038573(n))`
-/

namespace A004970.P248228460208473870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004930 n + A000035 (A038573 n).toNat

end

end A004970.P248228460208473870

namespace A004970

/-- `A004930(n)+A000035(A038573(n))` -/
def P248228460208473870.Spec : Prop :=
  ∀ n, P248228460208473870.a n = A004970 n

end A004970

/-! ## A004970.P18103000921984623695

`A004930(n)+A001221(A000961(n+1))`
-/

namespace A004970.P18103000921984623695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004930 n + A001221 (A000961 (n + 1)).toNat

end

end A004970.P18103000921984623695

namespace A004970

/-- `A004930(n)+A001221(A000961(n+1))` -/
def P18103000921984623695.Spec : Prop :=
  ∀ n, P18103000921984623695.a n = A004970 n

end A004970

/-! ## A004970.P17315137016597586533

`A004930(n)+A001222(A008578(n+1))`
-/

namespace A004970.P17315137016597586533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004930 n + A001222 (A008578 (n + 1)).toNat

end

end A004970.P17315137016597586533

namespace A004970

/-- `A004930(n)+A001222(A008578(n+1))` -/
def P17315137016597586533.Spec : Prop :=
  ∀ n, P17315137016597586533.a n = A004970 n

end A004970

/-! ## A004970.P4252360462561930226

`A004930(n)+char[A038722(n+1)]`
-/

namespace A004970.P4252360462561930226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004930 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004970.P4252360462561930226

namespace A004970

/-- `A004930(n)+char[A038722(n+1)]` -/
def P4252360462561930226.Spec : Prop :=
  ∀ n, P4252360462561930226.a n = A004970 n

end A004970

/-! ## A004970.P7041337740598426592

`A043545(2*n)+A004930(n)`
-/

namespace A004970.P7041337740598426592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (2 * n) + A004930 n

end

end A004970.P7041337740598426592

namespace A004970

/-- `A043545(2*n)+A004930(n)` -/
def P7041337740598426592.Spec : Prop :=
  ∀ n, P7041337740598426592.a n = A004970 n

end A004970

/-! ## A004970.P10138435858102173746

`A352893(A000040(n+1))+A004930(n)`
-/

namespace A004970.P10138435858102173746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352893 (A000040 (n + 1)).toNat + A004930 n

end

end A004970.P10138435858102173746

namespace A004970

/-- `A352893(A000040(n+1))+A004930(n)` -/
def P10138435858102173746.Spec : Prop :=
  ∀ n, P10138435858102173746.a n = A004970 n

end A004970

/-! ## A004970.P13544753468454067772

`A059841(A014686(n+1))+A004930(n)`
-/

namespace A004970.P13544753468454067772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A014686 (n + 1)).toNat + A004930 n

end

end A004970.P13544753468454067772

namespace A004970

/-- `A059841(A014686(n+1))+A004930(n)` -/
def P13544753468454067772.Spec : Prop :=
  ∀ n, P13544753468454067772.a n = A004970 n

end A004970

/-! ## A004970.P1953292923878037463

`A059841(A000040(n+1)+1)+A004930(n)`
-/

namespace A004970.P1953292923878037463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A000040 (n + 1) + 1).toNat + A004930 n

end

end A004970.P1953292923878037463

namespace A004970

/-- `A059841(A000040(n+1)+1)+A004930(n)` -/
def P1953292923878037463.Spec : Prop :=
  ∀ n, P1953292923878037463.a n = A004970 n

end A004970

/-! ## A004970.P678615961310383385

`A066247(A125518(n+1))+A004930(n)`
-/

namespace A004970.P678615961310383385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A125518 (n + 1)).toNat + A004930 n

end

end A004970.P678615961310383385

namespace A004970

/-- `A066247(A125518(n+1))+A004930(n)` -/
def P678615961310383385.Spec : Prop :=
  ∀ n, P678615961310383385.a n = A004970 n

end A004970

/-! ## A004970.P5950237627341577243

`A066247((n+1)²)+A004930(n)`
-/

namespace A004970.P5950237627341577243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 ((n + 1) ^ 2) + A004930 n

end

end A004970.P5950237627341577243

namespace A004970

/-- `A066247((n+1)²)+A004930(n)` -/
def P5950237627341577243.Spec : Prop :=
  ∀ n, P5950237627341577243.a n = A004970 n

end A004970

/-! ## A004970.P14562263085208315502

`A059841(A125561(n))+A004930(n)`
-/

namespace A004970.P14562263085208315502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A125561 n).toNat + A004930 n

end

end A004970.P14562263085208315502

namespace A004970

/-- `A059841(A125561(n))+A004930(n)` -/
def P14562263085208315502.Spec : Prop :=
  ∀ n, P14562263085208315502.a n = A004970 n

end A004970

/-!
# A004971: 

The programs for A004971, there is no canonical definition to state claims against.
-/

/-! ## A004971.P6754584425620895163

`ceil(n*ϕ^16)`
-/

namespace A004971.P6754584425620895163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 16⌉

end

end A004971.P6754584425620895163

/-! ## A004971.P11488790559733067150

`A004931(n)+n²%(n+1)`
-/

namespace A004971.P11488790559733067150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A004971.P11488790559733067150

/-! ## A004971.P17896958704077748427

`floor(n*ϕ^16-A057428(n))`
-/

namespace A004971.P17896958704077748427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 16 - (A057428 n : ℝ)⌋

end

end A004971.P17896958704077748427

/-! ## A004971.P654920147173737095

`floor(A057427(n)+n*(ϕ^8)²)`
-/

namespace A004971.P654920147173737095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + (n : ℝ) * (Real.goldenRatio ^ 8) ^ 2⌋

end

end A004971.P654920147173737095

/-! ## A004971.P14665595297112732214

`A057427(n)+A004931(n)`
-/

namespace A004971.P14665595297112732214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004931 n

end

end A004971.P14665595297112732214

/-! ## A004971.P5319842853443983562

`A004931(n)-A057428(n)`
-/

namespace A004971.P5319842853443983562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n - A057428 n

end

end A004971.P5319842853443983562

/-! ## A004971.P6328659846961783942

`A004931(n)+1-A000007(n)`
-/

namespace A004971.P6328659846961783942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + (1 - A000007 n)

end

end A004971.P6328659846961783942

/-! ## A004971.P5357564063005268436

`A004931(n)+char[A336147(n+1)]`
-/

namespace A004971.P5357564063005268436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336147 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004971.P5357564063005268436

/-! ## A004971.P13089164508460567140

`A004931(n)+and(1, A000040(n+1))`
-/

namespace A004971.P13089164508460567140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + Int.land 1 (A000040 (n + 1))

end

end A004971.P13089164508460567140

/-! ## A004971.P2631960459633935957

`A004931(n)+A000045(round(n/(n+1)))`
-/

namespace A004971.P2631960459633935957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A004971.P2631960459633935957

/-! ## A004971.P8872918873401786545

`A004931(n)+A001221(A001316(n))`
-/

namespace A004971.P8872918873401786545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + A001221 (A001316 n).toNat

end

end A004971.P8872918873401786545

/-! ## A004971.P2318753124713658933

`A004931(n)+A001221(A037445(n+1))`
-/

namespace A004971.P2318753124713658933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + A001221 (A037445 (n + 1)).toNat

end

end A004971.P2318753124713658933

/-! ## A004971.P9053024346956244554

`A004931(n)+char[A119257(n+1)]`
-/

namespace A004971.P9053024346956244554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004971.P9053024346956244554

/-! ## A004971.P3468774778127994226

`A004931(n)+A001221(A000961(n+1))`
-/

namespace A004971.P3468774778127994226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + A001221 (A000961 (n + 1)).toNat

end

end A004971.P3468774778127994226

/-! ## A004971.P1652816723497096291

`A004931(n)+A001222(A008578(n+1))`
-/

namespace A004971.P1652816723497096291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + A001222 (A008578 (n + 1)).toNat

end

end A004971.P1652816723497096291

/-! ## A004971.P16638455619964720661

`A004931(n)+A001222(A006005(n+1))`
-/

namespace A004971.P16638455619964720661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + A001222 (A006005 (n + 1)).toNat

end

end A004971.P16638455619964720661

/-! ## A004971.P17652168826513304369

`A004931(n)+char[A081241(n+1)]`
-/

namespace A004971.P17652168826513304369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081241 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004971.P17652168826513304369

/-! ## A004971.P11054848392498673320

`A004931(n)+char[A038722(n+1)]`
-/

namespace A004971.P11054848392498673320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004971.P11054848392498673320

/-!
# A004972: a(n) = ceiling(n*phi^17), where phi is the golden ratio, A001622.

The programs for A004972, the canonical program `A004972.P3835660201874054077` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004972 has offset 0).

The definition of A004972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^17)` (program `A004972.P3835660201874054077`, by `A004972.P3835660201874054077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004972.P3835660201874054077

`ceil(n*ϕ^17)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004972

/-- `ceil(n*ϕ^17)` -/
def P3835660201874054077.Spec : Prop :=
  ∀ n, P3835660201874054077.a n = A004972 n

theorem P3835660201874054077.correct : P3835660201874054077.Spec := by
  intro n
  simp only [A004972]

end A004972

/-! ## A004972.P10326000880879548856

`(floor(n*ϕ^17)+1)*A057427(n)`
-/

namespace A004972.P10326000880879548856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℝ) * Real.goldenRatio ^ 17⌋ + 1) * A057427 n

end

end A004972.P10326000880879548856

namespace A004972

/-- `(floor(n*ϕ^17)+1)*A057427(n)` -/
def P10326000880879548856.Spec : Prop :=
  ∀ n, P10326000880879548856.a n = A004972 n

end A004972

/-! ## A004972.P12440624914581620852

`A057427(n)+A004932(n)`
-/

namespace A004972.P12440624914581620852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004932 n

end

end A004972.P12440624914581620852

namespace A004972

/-- `A057427(n)+A004932(n)` -/
def P12440624914581620852.Spec : Prop :=
  ∀ n, P12440624914581620852.a n = A004972 n

end A004972

/-! ## A004972.P11969073445619726015

`A004932(n)+and(1, A000040(n+1))`
-/

namespace A004972.P11969073445619726015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004932 n + Int.land 1 (A000040 (n + 1))

end

end A004972.P11969073445619726015

namespace A004972

/-- `A004932(n)+and(1, A000040(n+1))` -/
def P11969073445619726015.Spec : Prop :=
  ∀ n, P11969073445619726015.a n = A004972 n

end A004972

/-! ## A004972.P13582813840188948527

`A352893(A000040(n+1))+A004932(n)`
-/

namespace A004972.P13582813840188948527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352893 (A000040 (n + 1)).toNat + A004932 n

end

end A004972.P13582813840188948527

namespace A004972

/-- `A352893(A000040(n+1))+A004932(n)` -/
def P13582813840188948527.Spec : Prop :=
  ∀ n, P13582813840188948527.a n = A004972 n

end A004972

/-!
# A004973: 

The programs for A004973, there is no canonical definition to state claims against.
-/

/-! ## A004973.P7810574664303274747

`ceil(n*ϕ^18)`
-/

namespace A004973.P7810574664303274747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 18⌉

end

end A004973.P7810574664303274747

/-! ## A004973.P5165368478187466785

`A057427(n)+A004933(n)`
-/

namespace A004973.P5165368478187466785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004933 n

end

end A004973.P5165368478187466785

/-! ## A004973.P12215487615639340121

`A004933(n)+1-A000007(n)`
-/

namespace A004973.P12215487615639340121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n + (1 - A000007 n)

end

end A004973.P12215487615639340121

/-! ## A004973.P15670861371957408512

`A004933(n)+char[A316668(n+1)]`
-/

namespace A004973.P15670861371957408512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316668 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004973.P15670861371957408512

/-! ## A004973.P16285045618973106285

`A004933(n)+and(1, A000040(n+1))`
-/

namespace A004973.P16285045618973106285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n + Int.land 1 (A000040 (n + 1))

end

end A004973.P16285045618973106285

/-! ## A004973.P6817560628072756564

`A004933(n)+A000045(round(n/(n+1)))`
-/

namespace A004973.P6817560628072756564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n + A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A004973.P6817560628072756564

/-! ## A004973.P3966014882851232601

`A004933(n)+A001221(A000961(n+1))`
-/

namespace A004973.P3966014882851232601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n + A001221 (A000961 (n + 1)).toNat

end

end A004973.P3966014882851232601

/-! ## A004973.P10636097043943291617

`A004933(n)+A001222(A008578(n+1))`
-/

namespace A004973.P10636097043943291617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n + A001222 (A008578 (n + 1)).toNat

end

end A004973.P10636097043943291617

/-! ## A004973.P5040931961195475494

`A004933(n)+char[A316669(n+1)]`
-/

namespace A004973.P5040931961195475494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004973.P5040931961195475494

/-! ## A004973.P13348331196115602817

`n*A031574(A027642(2*n+1))`
-/

namespace A004973.P13348331196115602817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A031574 (A027642 (2 * n + 1)).toNat

end

end A004973.P13348331196115602817

/-!
# A004974: a(n) = ceiling(n*phi^19), where phi is the golden ratio, A001622.

The programs for A004974, the canonical program `A004974.P7179369236416872227` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004974 has offset 0).

The definition of A004974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*ϕ^19)` (program `A004974.P7179369236416872227`, by `A004974.P7179369236416872227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004974.P7179369236416872227

`ceil(n*ϕ^19)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004974

/-- `ceil(n*ϕ^19)` -/
def P7179369236416872227.Spec : Prop :=
  ∀ n, P7179369236416872227.a n = A004974 n

theorem P7179369236416872227.correct : P7179369236416872227.Spec := by
  intro n
  simp only [A004974]

end A004974

/-! ## A004974.P6599997103899102590

`A057427(n)+A004934(n)`
-/

namespace A004974.P6599997103899102590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004934 n

end

end A004974.P6599997103899102590

namespace A004974

/-- `A057427(n)+A004934(n)` -/
def P6599997103899102590.Spec : Prop :=
  ∀ n, P6599997103899102590.a n = A004974 n

end A004974

/-! ## A004974.P4763129853432332421

`A004934(n)+1-A000007(n)`
-/

namespace A004974.P4763129853432332421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004934 n + (1 - A000007 n)

end

end A004974.P4763129853432332421

namespace A004974

/-- `A004934(n)+1-A000007(n)` -/
def P4763129853432332421.Spec : Prop :=
  ∀ n, P4763129853432332421.a n = A004974 n

end A004974

/-! ## A004974.P6950508959954791134

`A272988(round(1/(n+2)))+A004934(n)`
-/

namespace A004974.P6950508959954791134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272988 (SequenceMachineLib.roundAway (1 / (n + 2 : ℚ))).toNat + A004934 n

end

end A004974.P6950508959954791134

namespace A004974

/-- `A272988(round(1/(n+2)))+A004934(n)` -/
def P6950508959954791134.Spec : Prop :=
  ∀ n, P6950508959954791134.a n = A004974 n

end A004974

/-! ## A004974.P18030490717714165844

`A004934(n)+A001221(A006530(n+1))`
-/

namespace A004974.P18030490717714165844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004934 n + A001221 (A006530 (n + 1)).toNat

end

end A004974.P18030490717714165844

namespace A004974

/-- `A004934(n)+A001221(A006530(n+1))` -/
def P18030490717714165844.Spec : Prop :=
  ∀ n, P18030490717714165844.a n = A004974 n

end A004974

/-! ## A004974.P3988092371947841896

`A004934(n)+A001221(A000961(n+1))`
-/

namespace A004974.P3988092371947841896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004934 n + A001221 (A000961 (n + 1)).toNat

end

end A004974.P3988092371947841896

namespace A004974

/-- `A004934(n)+A001221(A000961(n+1))` -/
def P3988092371947841896.Spec : Prop :=
  ∀ n, P3988092371947841896.a n = A004974 n

end A004974

/-! ## A004974.P12156821448044190743

`A034460(3^floor(log2(n+1)))+A004934(n)`
-/

namespace A004974.P12156821448044190743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (3 ^ Nat.log 2 (n + 1)) + A004934 n

end

end A004974.P12156821448044190743

namespace A004974

/-- `A034460(3^floor(log2(n+1)))+A004934(n)` -/
def P12156821448044190743.Spec : Prop :=
  ∀ n, P12156821448044190743.a n = A004974 n

end A004974

/-!
# A004975: 

The programs for A004975, there is no canonical definition to state claims against.
-/

/-! ## A004975.P9503879164952828166

`ceil(n*ϕ^20)`
-/

namespace A004975.P9503879164952828166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 20⌉

end

end A004975.P9503879164952828166

/-!
# A004976: a(n) = floor(n*phi^3), where phi=(1+sqrt(5))/2.

The programs for A004976, the canonical program `A004976.P17859778821686246181` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004976 has offset 0).

The definition of A004976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ^3)` (program `A004976.P17859778821686246181`, by `A004976.P17859778821686246181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004976.P17859778821686246181

`floor(n*ϕ^3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004976

/-- `floor(n*ϕ^3)` -/
def P17859778821686246181.Spec : Prop :=
  ∀ n, P17859778821686246181.a n = A004976 n

theorem P17859778821686246181.correct : P17859778821686246181.Spec := by
  intro n
  simp only [A004976]

end A004976

/-! ## A004976.P2854629598988282446

`floor(ϕ*lcm(2, 2*n))+n`
-/

namespace A004976.P2854629598988282446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.lcm 2 (2 * n) : ℝ)⌋ + (n : ℤ)

end

end A004976.P2854629598988282446

namespace A004976

/-- `floor(ϕ*lcm(2, 2*n))+n` -/
def P2854629598988282446.Spec : Prop :=
  ∀ n, P2854629598988282446.a n = A004976 n

end A004976

/-! ## A004976.P5747983630220928136

`n+floor(n/cos(2*π/5))`
-/

namespace A004976.P5747983630220928136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(n : ℝ) / Real.cos (2 * (Real.pi / 5))⌋

end

end A004976.P5747983630220928136

namespace A004976

/-- `n+floor(n/cos(2*π/5))` -/
def P5747983630220928136.Spec : Prop :=
  ∀ n, P5747983630220928136.a n = A004976 n

end A004976

/-! ## A004976.P3392708302994094970

`floor(ϕ*xor(1, 2*n+1))+n`
-/

namespace A004976.P3392708302994094970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.xor 1 (2 * n + 1) : ℝ)⌋ + (n : ℤ)

end

end A004976.P3392708302994094970

namespace A004976

/-- `floor(ϕ*xor(1, 2*n+1))+n` -/
def P3392708302994094970.Spec : Prop :=
  ∀ n, P3392708302994094970.a n = A004976 n

end A004976

/-! ## A004976.P8997041593284927216

`floor(ϕ*2*n)+gcd(n, 2*n)`
-/

namespace A004976.P8997041593284927216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (2 * n : ℝ)⌋ + (Nat.gcd n (2 * n) : ℤ)

end

end A004976.P8997041593284927216

namespace A004976

/-- `floor(ϕ*2*n)+gcd(n, 2*n)` -/
def P8997041593284927216.Spec : Prop :=
  ∀ n, P8997041593284927216.a n = A004976 n

end A004976

/-! ## A004976.P13938335538456885610

`floor(ϕ*and(2*n+1, 2*n))+n`
-/

namespace A004976.P13938335538456885610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.land (2 * n + 1) (2 * n) : ℝ)⌋ + (n : ℤ)

end

end A004976.P13938335538456885610

namespace A004976

/-- `floor(ϕ*and(2*n+1, 2*n))+n` -/
def P13938335538456885610.Spec : Prop :=
  ∀ n, P13938335538456885610.a n = A004976 n

end A004976

/-! ## A004976.P5118206551111985583

`A276854(n)+n`
-/

namespace A004976.P5118206551111985583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n + (n : ℤ)

end

end A004976.P5118206551111985583

namespace A004976

/-- `A276854(n)+n` -/
def P5118206551111985583.Spec : Prop :=
  ∀ n, P5118206551111985583.a n = A004976 n

end A004976

/-! ## A004976.P9221656825533840076

`5*n-A195172(n)`
-/

namespace A004976.P9221656825533840076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A195172 n

end

end A004976.P9221656825533840076

namespace A004976

/-- `5*n-A195172(n)` -/
def P9221656825533840076.Spec : Prop :=
  ∀ n, P9221656825533840076.a n = A004976 n

end A004976

/-! ## A004976.P18278541170744218146

`A057428(n)+A004958(n)`
-/

namespace A004976.P18278541170744218146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004958 n

end

end A004976.P18278541170744218146

namespace A004976

/-- `A057428(n)+A004958(n)` -/
def P18278541170744218146.Spec : Prop :=
  ∀ n, P18278541170744218146.a n = A004976 n

end A004976

/-! ## A004976.P9117115511602085318

`A066096(n)+A004937(n)`
-/

namespace A004976.P9117115511602085318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n + A004937 n

end

end A004976.P9117115511602085318

namespace A004976

/-- `A066096(n)+A004937(n)` -/
def P9117115511602085318.Spec : Prop :=
  ∀ n, P9117115511602085318.a n = A004976 n

end A004976

/-! ## A004976.P2430415893037929813

`A198082(n)+A004273(n)`
-/

namespace A004976.P2430415893037929813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n + A004273 n

end

end A004976.P2430415893037929813

namespace A004976

/-- `A198082(n)+A004273(n)` -/
def P2430415893037929813.Spec : Prop :=
  ∀ n, P2430415893037929813.a n = A004976 n

end A004976

/-! ## A004976.P8921402936150123230

`A004958(n)-A057427(n)`
-/

namespace A004976.P8921402936150123230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - A057427 n

end

end A004976.P8921402936150123230

namespace A004976

/-- `A004958(n)-A057427(n)` -/
def P8921402936150123230.Spec : Prop :=
  ∀ n, P8921402936150123230.a n = A004976 n

end A004976

/-! ## A004976.P1710303353738628072

`A008588(n)-A195173(n)`
-/

namespace A004976.P1710303353738628072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n - A195173 n

end

end A004976.P1710303353738628072

namespace A004976

/-- `A008588(n)-A195173(n)` -/
def P1710303353738628072.Spec : Prop :=
  ∀ n, P1710303353738628072.a n = A004976 n

end A004976

/-! ## A004976.P17398447766858017788

`A276855(n)-A334415(n)`
-/

namespace A004976.P17398447766858017788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n - A334415 n

end

end A004976.P17398447766858017788

namespace A004976

/-- `A276855(n)-A334415(n)` -/
def P17398447766858017788.Spec : Prop :=
  ∀ n, P17398447766858017788.a n = A004976 n

end A004976

/-! ## A004976.P6471524510142311781

`A004958(n)-A005171(A016945(n))`
-/

namespace A004976.P6471524510142311781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - A005171 (A016945 n).toNat

end

end A004976.P6471524510142311781

namespace A004976

/-- `A004958(n)-A005171(A016945(n))` -/
def P6471524510142311781.Spec : Prop :=
  ∀ n, P6471524510142311781.a n = A004976 n

end A004976

/-! ## A004976.P13907676875220087821

`A004958(n)-A004956(n)/A026351(n)`
-/

namespace A004976.P13907676875220087821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004958 n : ℚ) - (A004956 n : ℚ) / (A026351 n : ℚ)

end

end A004976.P13907676875220087821

namespace A004976

/-- `A004958(n)-A004956(n)/A026351(n)` -/
def P13907676875220087821.Spec : Prop :=
  ∀ n, P13907676875220087821.a n = (A004976 n : ℚ)

end A004976

/-! ## A004976.P3444458849724405657

`A066096(2*n)+n`
-/

namespace A004976.P3444458849724405657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (2 * n) + (n : ℤ)

end

end A004976.P3444458849724405657

namespace A004976

/-- `A066096(2*n)+n` -/
def P3444458849724405657.Spec : Prop :=
  ∀ n, P3444458849724405657.a n = A004976 n

end A004976

/-! ## A004976.P7221816589478907275

`A026351(2*n)+n-1`
-/

namespace A004976.P7221816589478907275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (2 * n) + ((n : ℤ) - 1)

end

end A004976.P7221816589478907275

namespace A004976

/-- `A026351(2*n)+n-1` -/
def P7221816589478907275.Spec : Prop :=
  ∀ n, P7221816589478907275.a n = A004976 n

end A004976

/-! ## A004976.P16282526462165263948

`A058066(2*n)`
-/

namespace A004976.P16282526462165263948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (2 * n)

end

end A004976.P16282526462165263948

namespace A004976

/-- `A058066(2*n)` -/
def P16282526462165263948.Spec : Prop :=
  ∀ n, P16282526462165263948.a n = A004976 n

end A004976

/-! ## A004976.P3959325378510202263

`A026352(2*n)-(n+1)`
-/

namespace A004976.P3959325378510202263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (2 * n) - (n + 1 : ℤ)

end

end A004976.P3959325378510202263

namespace A004976

/-- `A026352(2*n)-(n+1)` -/
def P3959325378510202263.Spec : Prop :=
  ∀ n, P3959325378510202263.a n = A004976 n

end A004976

/-!
# A004977: Sum of digits of n-th term in Look and Say sequence A005150.

The programs for A004977, there is no canonical definition to state claims against.
-/

/-! ## A004977.P15079308616341912900

`A056635(n+1)+A005341(n+1)`
-/

namespace A004977.P15079308616341912900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056635 (n + 1) + A005341 (n + 1)

end

end A004977.P15079308616341912900

/-! ## A004977.P6679203925868417036

`A005341(n+1)+A022467(n+1)+2*A022468(n+1)`
-/

namespace A004977.P6679203925868417036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005341 (n + 1) + (A022467 (n + 1) + 2 * A022468 (n + 1))

end

end A004977.P6679203925868417036

/-! ## A004977.P871920460233761984

`A056635(n+1)+A022466(n+1)+A022468(n+1)+A022467(n+1)`
-/

namespace A004977.P871920460233761984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056635 (n + 1) + (A022466 (n + 1) + (A022468 (n + 1) + A022467 (n + 1)))

end

end A004977.P871920460233761984

/-! ## A004977.P1526449736674703717

`A005341(n+1)+A005341(n+1)+A022468(n+1)-A022466(n+1)`
-/

namespace A004977.P1526449736674703717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005341 (n + 1) + (A005341 (n + 1) + (A022468 (n + 1) - A022466 (n + 1)))

end

end A004977.P1526449736674703717

/-! ## A004977.P5728307028803671187

`Δ[A116100(A028310(n))%(2^n)]`
-/

namespace A004977.P5728307028803671187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116100 (A028310 n).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004977.P5728307028803671187

/-!
# A004978: a(n) = least integer m > a(n-1) such that m - a(n-1) != a(j) - a(k) for all j, k less than n; a(1) = 1, a(2) = 2.

The programs for A004978, there is no canonical definition to state claims against.
-/

/-! ## A004978.P10592781962822642132

`A002048(n)+a(n-1)` with `a(0)=1`
-/

namespace A004978.P10592781962822642132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002048 n + a (n - 1)

end

end A004978.P10592781962822642132

/-! ## A004978.P16473246265643562035

`∑[A002048(abs(1-n)+1)]-1`
-/

namespace A004978.P16473246265643562035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004978.P16473246265643562035

/-! ## A004978.P17963720647689469281

`∑[A002048(floor(1/(n+1)+n))]`
-/

namespace A004978.P17963720647689469281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004978.P17963720647689469281

/-! ## A004978.P11232267288649661702

`A002049(n+1)+1-A002048(n+1)`
-/

namespace A004978.P11232267288649661702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1) + (1 - A002048 (n + 1))

end

end A004978.P11232267288649661702

/-! ## A004978.P12290609316731120149

`A048204(n+1)+2-A048202(n+2)`
-/

namespace A004978.P12290609316731120149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 1) + (2 - A048202 (n + 2))

end

end A004978.P12290609316731120149

/-! ## A004978.P1733109799719764689

`A057427(n)+A002049(A028310(n))`
-/

namespace A004978.P1733109799719764689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A002049 (A028310 n).toNat

end

end A004978.P1733109799719764689

/-!
# A004979: a(n)=least number m such that m-a(n-1)<>a(j)-a(k) for all j,k less than m; a(1)=1, a(2)=3.

The programs for A004979, there is no canonical definition to state claims against.
-/

/-! ## A004979.P11823462341538936613

`A048213(n)+a(n-1)` with `a(0)=1`
-/

namespace A004979.P11823462341538936613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048213 n + a (n - 1)

end

end A004979.P11823462341538936613

/-! ## A004979.P5332937993389045926

`∑[A048213(abs(1-n)+1)]`
-/

namespace A004979.P5332937993389045926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048213 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004979.P5332937993389045926

/-! ## A004979.P17090295554074933487

`A048216(A028310(n))+1-A000038(n)`
-/

namespace A004979.P17090295554074933487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (A028310 n).toNat + (1 - A000038 n)

end

end A004979.P17090295554074933487

/-! ## A004979.P17746887385139917543

`A048216(n+1)+1-A048213(n+1)`
-/

namespace A004979.P17746887385139917543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 1) + (1 - A048213 (n + 1))

end

end A004979.P17746887385139917543

/-! ## A004979.P7900154474745993269

`A048216(n+3)+1-A048215(n+3)`
-/

namespace A004979.P7900154474745993269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048216 (n + 3) + 1 - A048215 (n + 3)

end

end A004979.P7900154474745993269

/-! ## A004979.P13685285034624072681

`A048217(n+2)-(A048215(n+3)-3)`
-/

namespace A004979.P13685285034624072681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048217 (n + 2) - (A048215 (n + 3) - 3)

end

end A004979.P13685285034624072681

/-!
# A004981: a(n) = (2^n/n!) * Product_{k=0..n-1} (4*k + 1).

The programs for A004981, the canonical program `A004981.P3495203524727652138` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004981 has offset 0).

The definition of A004981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004981.P3495203524727652138

`(8-6/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004981

/-- `(8-6/n)*a(n-1)` -/
def P3495203524727652138.Spec : Prop :=
  ∀ n, P3495203524727652138.a n = (A004981 n : ℚ)

end A004981

/-! ## A004981.P14162541045094454000

`A001316(n)*A004130(n)`
-/

namespace A004981.P14162541045094454000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A004130 n

end

end A004981.P14162541045094454000

namespace A004981

/-- `A001316(n)*A004130(n)` -/
def P14162541045094454000.Spec : Prop :=
  ∀ n, P14162541045094454000.a n = A004981 n

end A004981

/-! ## A004981.P11283647348684428824

`A000079(A000120(n))*A004130(n)`
-/

namespace A004981.P11283647348684428824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n).toNat * A004130 n

end

end A004981.P11283647348684428824

namespace A004981

/-- `A000079(A000120(n))*A004130(n)` -/
def P11283647348684428824.Spec : Prop :=
  ∀ n, P11283647348684428824.a n = A004981 n

end A004981

/-! ## A004981.P15168115287811878085

`A004130(n)*A046523(A048883(n))`
-/

namespace A004981.P15168115287811878085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004130 n * A046523 (A048883 n).toNat

end

end A004981.P15168115287811878085

namespace A004981

/-- `A004130(n)*A046523(A048883(n))` -/
def P15168115287811878085.Spec : Prop :=
  ∀ n, P15168115287811878085.a n = A004981 n

end A004981

/-! ## A004981.P8763455489756545370

`lcm(A001316(A006257(n)), A004130(n))`
-/

namespace A004981.P8763455489756545370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A006257 n).toNat) (A004130 n)

end

end A004981.P8763455489756545370

namespace A004981

/-- `lcm(A001316(A006257(n)), A004130(n))` -/
def P8763455489756545370.Spec : Prop :=
  ∀ n, (P8763455489756545370.a n : ℤ) = A004981 n

end A004981

/-! ## A004981.P2887750621272595176

`A004985(n)/(4*n+1)`
-/

namespace A004981.P2887750621272595176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004985 n : ℚ) / (4 * n + 1 : ℚ)

end

end A004981.P2887750621272595176

namespace A004981

/-- `A004985(n)/(4*n+1)` -/
def P2887750621272595176.Spec : Prop :=
  ∀ n, P2887750621272595176.a n = (A004981 n : ℚ)

end A004981

/-! ## A004981.P6644582665689231662

`A034385(n)/2^n`
-/

namespace A004981.P6644582665689231662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034385 n : ℚ) / (2 ^ n : ℚ)

end

end A004981.P6644582665689231662

namespace A004981

/-- `A034385(n)/2^n` -/
def P6644582665689231662.Spec : Prop :=
  ∀ n, P6644582665689231662.a n = (A004981 n : ℚ)

end A004981

/-! ## A004981.P3949742064367133483

`gcd(A004985(n), A034385(n))`
-/

namespace A004981.P3949742064367133483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004985 n) (A034385 n)

end

end A004981.P3949742064367133483

namespace A004981

/-- `gcd(A004985(n), A034385(n))` -/
def P3949742064367133483.Spec : Prop :=
  ∀ n, (P3949742064367133483.a n : ℤ) = A004981 n

end A004981

/-! ## A004981.P13917068744685262892

`A000984(n)/A004982(n)*A001448(n)`
-/

namespace A004981.P13917068744685262892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A004982 n : ℚ) * (A001448 n : ℚ)

end

end A004981.P13917068744685262892

namespace A004981

/-- `A000984(n)/A004982(n)*A001448(n)` -/
def P13917068744685262892.Spec : Prop :=
  ∀ n, P13917068744685262892.a n = (A004981 n : ℚ)

end A004981

/-! ## A004981.P9196376031103122241

`A208890(n)/A000984(n)`
-/

namespace A004981.P9196376031103122241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208890 n : ℚ) / (A000984 n : ℚ)

end

end A004981.P9196376031103122241

namespace A004981

/-- `A208890(n)/A000984(n)` -/
def P9196376031103122241.Spec : Prop :=
  ∀ n, P9196376031103122241.a n = (A004981 n : ℚ)

end A004981

/-!
# A004982: a(n) = (2^n/n!) * Product_{k=0..n-1} (4*k + 3).

The programs for A004982, the canonical program `A004982.P10117647933676475083` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004982 has offset 0).

The definition of A004982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004982.P3304928491870508308

`(8-2/n)*a(n-1)` with `a(0)=1`
-/

namespace A004982.P3304928491870508308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (8 - 2 / (n : ℚ)) * a (n - 1)

end

end A004982.P3304928491870508308

namespace A004982

/-- `(8-2/n)*a(n-1)` -/
def P3304928491870508308.Spec : Prop :=
  ∀ n, P3304928491870508308.a n = (A004982 n : ℚ)

end A004982

/-! ## A004982.P10117647933676475083

`(n+1)*A048779(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004982

/-- `(n+1)*A048779(n+1)` -/
def P10117647933676475083.Spec : Prop :=
  ∀ n, P10117647933676475083.a n = A004982 n

theorem P10117647933676475083.correct : P10117647933676475083.Spec := by
  intro n
  simp only [A004982]

end A004982

/-! ## A004982.P8441713642636572243

`(1-4*n)*A004984(n)`
-/

namespace A004982.P8441713642636572243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (4 * n : ℤ)) * A004984 n

end

end A004982.P8441713642636572243

namespace A004982

/-- `(1-4*n)*A004984(n)` -/
def P8441713642636572243.Spec : Prop :=
  ∀ n, P8441713642636572243.a n = A004982 n

end A004982

/-! ## A004982.P10412560641417683909

`(n+1)*record[A202039(n+1)]`
-/

namespace A004982.P10412560641417683909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004982.P10412560641417683909

namespace A004982

/-- `(n+1)*record[A202039(n+1)]` -/
def P10412560641417683909.Spec : Prop :=
  ∀ n, P10412560641417683909.a n = A004982 n

end A004982

/-! ## A004982.P9620126283127805132

`A001316(n)*A067002(n)`
-/

namespace A004982.P9620126283127805132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A067002 n

end

end A004982.P9620126283127805132

namespace A004982

/-- `A001316(n)*A067002(n)` -/
def P9620126283127805132.Spec : Prop :=
  ∀ n, P9620126283127805132.a n = A004982 n

end A004982

/-! ## A004982.P15216579027297319467

`A004984(n)*A165747(2*n)`
-/

namespace A004982.P15216579027297319467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004984 n * A165747 (2 * n)

end

end A004982.P15216579027297319467

namespace A004982

/-- `A004984(n)*A165747(2*n)` -/
def P15216579027297319467.Spec : Prop :=
  ∀ n, P15216579027297319467.a n = A004982 n

end A004982

/-! ## A004982.P11574331913943256131

`∏[A111284(2*n+1)/A028310(n)]`
-/

namespace A004982.P11574331913943256131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111284 (2 * n + 1) : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004982.P11574331913943256131

namespace A004982

/-- `∏[A111284(2*n+1)/A028310(n)]` -/
def P11574331913943256131.Spec : Prop :=
  ∀ n, P11574331913943256131.a n = (A004982 n : ℚ)

end A004982

/-! ## A004982.P4499700251178883984

`∏[A019442(A019442(2*(n+1)))/A019442(n+2)]`
-/

namespace A004982.P4499700251178883984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019442 (A019442 (2 * (n + 1))).toNat : ℚ) / (A019442 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004982.P4499700251178883984

namespace A004982

/-- `∏[A019442(A019442(2*(n+1)))/A019442(n+2)]` -/
def P4499700251178883984.Spec : Prop :=
  ∀ n, P4499700251178883984.a n = (A004982 n : ℚ)

end A004982

/-! ## A004982.P17567792539461277572

`A067001(∑[n]+n)`
-/

namespace A004982.P17567792539461277572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067001 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A004982.P17567792539461277572

namespace A004982

/-- `A067001(∑[n]+n)` -/
def P17567792539461277572.Spec : Prop :=
  ∀ n, P17567792539461277572.a n = A004982 n

end A004982

/-! ## A004982.P6488802270950602329

`A000984(n)/A004981(n)*A001448(n)`
-/

namespace A004982.P6488802270950602329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A004981 n : ℚ) * (A001448 n : ℚ)

end

end A004982.P6488802270950602329

namespace A004982

/-- `A000984(n)/A004981(n)*A001448(n)` -/
def P6488802270950602329.Spec : Prop :=
  ∀ n, P6488802270950602329.a n = (A004982 n : ℚ)

end A004982

/-!
# A004983: a(n) = (2^n/n!) * Product_{k=0..n-1} (4*k - 3).

The programs for A004983, the canonical program `A004983.P11453796624910627043` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004983 has offset 0).

The definition of A004983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004983.P11453796624910627043

`(8-14/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004983

/-- `(8-14/n)*a(n-1)` -/
def P11453796624910627043.Spec : Prop :=
  ∀ n, P11453796624910627043.a n = (A004983 n : ℚ)

end A004983

/-!
# A004984: a(n) = (2^n/n!)*Product_{k=0..n-1} (4*k - 1).

The programs for A004984, the canonical program `A004984.P8056446502152417151` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004984 has offset 0).

The definition of A004984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004984.P8056446502152417151

`(8-10/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004984

/-- `(8-10/n)*a(n-1)` -/
def P8056446502152417151.Spec : Prop :=
  ∀ n, P8056446502152417151.a n = (A004984 n : ℚ)

end A004984

/-! ## A004984.P12447907739029625135

`∏[8-10/(n+1)]/(8-10/(n+1))`
-/

namespace A004984.P12447907739029625135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 - 10 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / (8 - 10 / (n + 1 : ℚ))

end

end A004984.P12447907739029625135

namespace A004984

/-- `∏[8-10/(n+1)]/(8-10/(n+1))` -/
def P12447907739029625135.Spec : Prop :=
  ∀ n, P12447907739029625135.a n = (A004984 n : ℚ)

end A004984

/-!
# A004985: a(n) = (2^n/n!)*Product_{k=0..n-1} (4*k + 5).

The programs for A004985, the canonical program `A004985.P8851749625276327124` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004985 has offset 0).

The definition of A004985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004985.P296530733574155605

`(2/n+8)*a(n-1)` with `a(0)=1`
-/

namespace A004985.P296530733574155605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 / (n : ℚ) + 8) * a (n - 1)

end

end A004985.P296530733574155605

namespace A004985

/-- `(2/n+8)*a(n-1)` -/
def P296530733574155605.Spec : Prop :=
  ∀ n, P296530733574155605.a n = (A004985 n : ℚ)

end A004985

/-! ## A004985.P17414861446372449256

`∏[(8*n+2)/(abs(1-n)+1)]`
-/

namespace A004985.P17414861446372449256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n + 2 : ℚ) / (|1 - (n : ℤ)| + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004985.P17414861446372449256

namespace A004985

/-- `∏[(8*n+2)/(abs(1-n)+1)]` -/
def P17414861446372449256.Spec : Prop :=
  ∀ n, P17414861446372449256.a n = (A004985 n : ℚ)

end A004985

/-! ## A004985.P8851749625276327124

`A004981(n)*(4*n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004985

/-- `A004981(n)*(4*n+1)` -/
def P8851749625276327124.Spec : Prop :=
  ∀ n, P8851749625276327124.a n = A004985 n

theorem P8851749625276327124.correct : P8851749625276327124.Spec := by
  intro n
  simp only [A004985]

end A004985

/-! ## A004985.P6071411369803477898

`Δ[A000384(n)]*A004981(n)`
-/

namespace A004985.P6071411369803477898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004981 n

end

end A004985.P6071411369803477898

namespace A004985

/-- `Δ[A000384(n)]*A004981(n)` -/
def P6071411369803477898.Spec : Prop :=
  ∀ n, P6071411369803477898.a n = A004985 n

end A004985

/-! ## A004985.P5258291964099280438

`record[A009001(n)]*A004981(n)`
-/

namespace A004985.P5258291964099280438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A004981 n

end

end A004985.P5258291964099280438

namespace A004985

/-- `record[A009001(n)]*A004981(n)` -/
def P5258291964099280438.Spec : Prop :=
  ∀ n, P5258291964099280438.a n = A004985 n

end A004985

/-! ## A004985.P16160688835017432972

`record[A266072(n)]*A004981(n)`
-/

namespace A004985.P16160688835017432972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A004981 n

end

end A004985.P16160688835017432972

namespace A004985

/-- `record[A266072(n)]*A004981(n)` -/
def P16160688835017432972.Spec : Prop :=
  ∀ n, P16160688835017432972.a n = A004985 n

end A004985

/-! ## A004985.P11756550524757578829

`(A008586(n)+1)*A004981(n)`
-/

namespace A004985.P11756550524757578829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008586 n + 1) * A004981 n

end

end A004985.P11756550524757578829

namespace A004985

/-- `(A008586(n)+1)*A004981(n)` -/
def P11756550524757578829.Spec : Prop :=
  ∀ n, P11756550524757578829.a n = A004985 n

end A004985

/-! ## A004985.P973203792282219244

`(A016825(n)-1)*A004981(n)`
-/

namespace A004985.P973203792282219244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 n - 1) * A004981 n

end

end A004985.P973203792282219244

namespace A004985

/-- `(A016825(n)-1)*A004981(n)` -/
def P973203792282219244.Spec : Prop :=
  ∀ n, P973203792282219244.a n = A004985 n

end A004985

/-! ## A004985.P12440935062110584127

`(A004767(n)-2)*A004981(n)`
-/

namespace A004985.P12440935062110584127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004767 n - 2) * A004981 n

end

end A004985.P12440935062110584127

namespace A004985

/-- `(A004767(n)-2)*A004981(n)` -/
def P12440935062110584127.Spec : Prop :=
  ∀ n, P12440935062110584127.a n = A004985 n

end A004985

/-! ## A004985.P13686024031852323181

`A004273(A005408(n))*A004981(n)`
-/

namespace A004985.P13686024031852323181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005408 n).toNat * A004981 n

end

end A004985.P13686024031852323181

namespace A004985

/-- `A004273(A005408(n))*A004981(n)` -/
def P13686024031852323181.Spec : Prop :=
  ∀ n, P13686024031852323181.a n = A004985 n

end A004985

/-! ## A004985.P2851810493188299639

`A004442(A008586(n))*A004981(n)`
-/

namespace A004985.P2851810493188299639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A008586 n).toNat * A004981 n

end

end A004985.P2851810493188299639

namespace A004985

/-- `A004442(A008586(n))*A004981(n)` -/
def P2851810493188299639.Spec : Prop :=
  ∀ n, P2851810493188299639.a n = A004985 n

end A004985

/-!
# A004986: a(n) = (2^n/n!) * Product_{k=0..n-1} (4*k + 7).

The programs for A004986, the canonical program `A004986.P8569688461532880896` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004986 has offset 0).

The definition of A004986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004986.P8569688461532880896

`(6/n+8)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004986

/-- `(6/n+8)*a(n-1)` -/
def P8569688461532880896.Spec : Prop :=
  ∀ n, P8569688461532880896.a n = (A004986 n : ℚ)

end A004986

/-! ## A004986.P5886033483298543130

`2*a(n-1)*record[xor(3, n)]/n` with `a(0)=1`
-/

namespace A004986.P5886033483298543130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n : ℚ))

end

end A004986.P5886033483298543130

namespace A004986

/-- `2*a(n-1)*record[xor(3, n)]/n` -/
def P5886033483298543130.Spec : Prop :=
  ∀ n, P5886033483298543130.a n = (A004986 n : ℚ)

end A004986

/-! ## A004986.P3633436787785903345

`a(n-1)/n*A017137(n)` with `a(0)=1`
-/

namespace A004986.P3633436787785903345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) * (A017137 n : ℚ)

end

end A004986.P3633436787785903345

namespace A004986

/-- `a(n-1)/n*A017137(n)` -/
def P3633436787785903345.Spec : Prop :=
  ∀ n, P3633436787785903345.a n = (A004986 n : ℚ)

end A004986

/-! ## A004986.P14160310993730978880

`a(n-1)/n*sqrt(A017138(n))` with `a(0)=1`
-/

namespace A004986.P14160310993730978880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℝ) * Real.sqrt (A017138 n : ℝ)

end

end A004986.P14160310993730978880

namespace A004986

/-- `a(n-1)/n*sqrt(A017138(n))` -/
def P14160310993730978880.Spec : Prop :=
  ∀ n, P14160310993730978880.a n = (A004986 n : ℝ)

end A004986

/-! ## A004986.P3737499332099877874

`a(n-1)/n*A016825(Δ[n²])` with `a(0)=1`
-/

namespace A004986.P3737499332099877874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) * (A016825 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A004986.P3737499332099877874

namespace A004986

/-- `a(n-1)/n*A016825(Δ[n²])` -/
def P3737499332099877874.Spec : Prop :=
  ∀ n, P3737499332099877874.a n = (A004986 n : ℚ)

end A004986

/-! ## A004986.P12360542413788920005

`2*a(n-1)/n*Δ[A014105(n)]` with `a(0)=1`
-/

namespace A004986.P12360542413788920005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) / (n : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A004986.P12360542413788920005

namespace A004986

/-- `2*a(n-1)/n*Δ[A014105(n)]` -/
def P12360542413788920005.Spec : Prop :=
  ∀ n, P12360542413788920005.a n = (A004986 n : ℚ)

end A004986

/-!
# A004987: a(n) = (3^n/n!)*Product_{k=0..n-1} (3*k + 1). 3-central binomial coefficients.

The programs for A004987, the canonical program `A004987.P18049546126674529782` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004987 has offset 0).

The definition of A004987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004987.P9387054201725136315

`3^n/n!*A007559(n)`
-/

namespace A004987.P9387054201725136315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / (Nat.factorial n : ℚ) * (A007559 n : ℚ)

end

end A004987.P9387054201725136315

namespace A004987

/-- `3^n/n!*A007559(n)` -/
def P9387054201725136315.Spec : Prop :=
  ∀ n, P9387054201725136315.a n = (A004987 n : ℚ)

end A004987

/-! ## A004987.P18049546126674529782

`(9-6/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004987

/-- `(9-6/n)*a(n-1)` -/
def P18049546126674529782.Spec : Prop :=
  ∀ n, P18049546126674529782.a n = (A004987 n : ℚ)

end A004987

/-! ## A004987.P15088801357001986282

`A248324(∑[n])`
-/

namespace A004987.P15088801357001986282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248324 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004987.P15088801357001986282

namespace A004987

/-- `A248324(∑[n])` -/
def P15088801357001986282.Spec : Prop :=
  ∀ n, P15088801357001986282.a n = A004987 n

end A004987

/-! ## A004987.P5074720795036167523

`record[A361840(n)]`
-/

namespace A004987.P5074720795036167523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004987.P5074720795036167523

namespace A004987

/-- `record[A361840(n)]` -/
def P5074720795036167523.Spec : Prop :=
  ∀ n, P5074720795036167523.a n = A004987 n

end A004987

/-! ## A004987.P8405390538076317231

`A361840(∑[n]+n)`
-/

namespace A004987.P8405390538076317231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361840 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A004987.P8405390538076317231

namespace A004987

/-- `A361840(∑[n]+n)` -/
def P8405390538076317231.Spec : Prop :=
  ∀ n, P8405390538076317231.a n = A004987 n

end A004987

/-! ## A004987.P6273327453372839546

`(n+1)/2*A155579(n)`
-/

namespace A004987.P6273327453372839546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A155579 n : ℚ)

end

end A004987.P6273327453372839546

namespace A004987

/-- `(n+1)/2*A155579(n)` -/
def P6273327453372839546.Spec : Prop :=
  ∀ n, P6273327453372839546.a n = (A004987 n : ℚ)

end A004987

/-! ## A004987.P17250248024140945918

`A004117(n)*A125824(n)`
-/

namespace A004987.P17250248024140945918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004117 n * A125824 n

end

end A004987.P17250248024140945918

namespace A004987

/-- `A004117(n)*A125824(n)` -/
def P17250248024140945918.Spec : Prop :=
  ∀ n, P17250248024140945918.a n = A004987 n

end A004987

/-! ## A004987.P15644335129031769453

`A004991(n)/(3*n+1)`
-/

namespace A004987.P15644335129031769453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (3 * n + 1 : ℚ)

end

end A004987.P15644335129031769453

namespace A004987

/-- `A004991(n)/(3*n+1)` -/
def P15644335129031769453.Spec : Prop :=
  ∀ n, P15644335129031769453.a n = (A004987 n : ℚ)

end A004987

/-! ## A004987.P2058754238229626538

`A283150(∑[n])`
-/

namespace A004987.P2058754238229626538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004987.P2058754238229626538

namespace A004987

/-- `A283150(∑[n])` -/
def P2058754238229626538.Spec : Prop :=
  ∀ n, P2058754238229626538.a n = A004987 n

end A004987

/-!
# A004988: a(n) = (3^n/n!) * Product_{k=0..n-1} (3*k + 2).

The programs for A004988, the canonical program `A004988.P16943067729549526592` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004988 has offset 0).

The definition of A004988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004988.P16943067729549526592

`(9-3/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004988

/-- `(9-3/n)*a(n-1)` -/
def P16943067729549526592.Spec : Prop :=
  ∀ n, P16943067729549526592.a n = (A004988 n : ℚ)

end A004988

/-! ## A004988.P1152231084797299751

`A248324(∑[n]+n)`
-/

namespace A004988.P1152231084797299751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248324 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A004988.P1152231084797299751

namespace A004988

/-- `A248324(∑[n]+n)` -/
def P1152231084797299751.Spec : Prop :=
  ∀ n, P1152231084797299751.a n = A004988 n

end A004988

/-! ## A004988.P8454441771153218889

`(n+1)*A097188(n)`
-/

namespace A004988.P8454441771153218889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097188 n

end

end A004988.P8454441771153218889

namespace A004988

/-- `(n+1)*A097188(n)` -/
def P8454441771153218889.Spec : Prop :=
  ∀ n, P8454441771153218889.a n = A004988 n

end A004988

/-! ## A004988.P17240835636828912933

`(n+1)*A025748(n+1)`
-/

namespace A004988.P17240835636828912933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025748 (n + 1)

end

end A004988.P17240835636828912933

namespace A004988

/-- `(n+1)*A025748(n+1)` -/
def P17240835636828912933.Spec : Prop :=
  ∀ n, P17240835636828912933.a n = A004988 n

end A004988

/-! ## A004988.P7481466656409139907

`(n+1)*A048966(∑[n]+1)`
-/

namespace A004988.P7481466656409139907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048966 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004988.P7481466656409139907

namespace A004988

/-- `(n+1)*A048966(∑[n]+1)` -/
def P7481466656409139907.Spec : Prop :=
  ∀ n, P7481466656409139907.a n = A004988 n

end A004988

/-! ## A004988.P577056835428220095

`(n+1)*record[A048966(n+1)]`
-/

namespace A004988.P577056835428220095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004988.P577056835428220095

namespace A004988

/-- `(n+1)*record[A048966(n+1)]` -/
def P577056835428220095.Spec : Prop :=
  ∀ n, P577056835428220095.a n = A004988 n

end A004988

/-! ## A004988.P2307742468317090472

`A125824(n)*A127974(n)`
-/

namespace A004988.P2307742468317090472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125824 n * A127974 n

end

end A004988.P2307742468317090472

namespace A004988

/-- `A125824(n)*A127974(n)` -/
def P2307742468317090472.Spec : Prop :=
  ∀ n, P2307742468317090472.a n = A004988 n

end A004988

/-! ## A004988.P9206649942082454839

`record[A008611(n)*A025748(A008611(n))]`
-/

namespace A004988.P9206649942082454839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A025748 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004988.P9206649942082454839

namespace A004988

/-- `record[A008611(n)*A025748(A008611(n))]` -/
def P9206649942082454839.Spec : Prop :=
  ∀ n, P9206649942082454839.a n = A004988 n

end A004988

/-! ## A004988.P264046565545818276

`record[A008624(n)*A025748(A008624(n))]`
-/

namespace A004988.P264046565545818276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n * A025748 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004988.P264046565545818276

namespace A004988

/-- `record[A008624(n)*A025748(A008624(n))]` -/
def P264046565545818276.Spec : Prop :=
  ∀ n, P264046565545818276.a n = A004988 n

end A004988

/-! ## A004988.P13887953255720870584

`A283151(∑[n])`
-/

namespace A004988.P13887953255720870584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283151 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004988.P13887953255720870584

namespace A004988

/-- `A283151(∑[n])` -/
def P13887953255720870584.Spec : Prop :=
  ∀ n, P13887953255720870584.a n = A004988 n

end A004988

/-!
# A004989: a(n) = (3^n/n!) * Product_{k=0..n-1} (3*k - 2).

The programs for A004989, the canonical program `A004989.P9010111773116664573` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004989 has offset 0).

The definition of A004989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004989.P9010111773116664573

`(9-15/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004989

/-- `(9-15/n)*a(n-1)` -/
def P9010111773116664573.Spec : Prop :=
  ∀ n, P9010111773116664573.a n = (A004989 n : ℚ)

end A004989

/-! ## A004989.P15849264368976212216

`A004990(n)/A067622(n)*A364658(n)`
-/

namespace A004989.P15849264368976212216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004990 n : ℚ) / (A067622 n : ℚ) * (A364658 n : ℚ)

end

end A004989.P15849264368976212216

namespace A004989

/-- `A004990(n)/A067622(n)*A364658(n)` -/
def P15849264368976212216.Spec : Prop :=
  ∀ n, P15849264368976212216.a n = (A004989 n : ℚ)

end A004989

/-! ## A004989.P12283818600774586694

`A004991(n)/(1-A062741(n))`
-/

namespace A004989.P12283818600774586694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (1 - A062741 n : ℚ)

end

end A004989.P12283818600774586694

namespace A004989

/-- `A004991(n)/(1-A062741(n))` -/
def P12283818600774586694.Spec : Prop :=
  ∀ n, P12283818600774586694.a n = (A004989 n : ℚ)

end A004989

/-! ## A004989.P10095666891675058491

`A004991(n)/A024000(A062741(n))`
-/

namespace A004989.P10095666891675058491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (A024000 (A062741 n).toNat : ℚ)

end

end A004989.P10095666891675058491

namespace A004989

/-- `A004991(n)/A024000(A062741(n))` -/
def P10095666891675058491.Spec : Prop :=
  ∀ n, P10095666891675058491.a n = (A004989 n : ℚ)

end A004989

/-!
# A004990: a(n) = (3^n/n!)*Product_{k=0..n-1} (3*k - 1).

The programs for A004990, the canonical program `A004990.P3566122818574094345` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004990 has offset 0).

The definition of A004990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004990.P3566122818574094345

`3*(3-4/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004990

/-- `3*(3-4/n)*a(n-1)` -/
def P3566122818574094345.Spec : Prop :=
  ∀ n, P3566122818574094345.a n = (A004990 n : ℚ)

end A004990

/-! ## A004990.P4859754892696236362

`A000748(A178334(n))*A025748(n)`
-/

namespace A004990.P4859754892696236362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000748 (A178334 n).toNat * A025748 n

end

end A004990.P4859754892696236362

namespace A004990

/-- `A000748(A178334(n))*A025748(n)` -/
def P4859754892696236362.Spec : Prop :=
  ∀ n, P4859754892696236362.a n = A004990 n

end A004990

/-! ## A004990.P12596050632561762651

`A004988(n)/(1-3*n)`
-/

namespace A004990.P12596050632561762651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004988 n : ℚ) / (1 - (3 * n : ℤ) : ℚ)

end

end A004990.P12596050632561762651

namespace A004990

/-- `A004988(n)/(1-3*n)` -/
def P12596050632561762651.Spec : Prop :=
  ∀ n, P12596050632561762651.a n = (A004990 n : ℚ)

end A004990

/-! ## A004990.P3294169805522975694

`A108733(n)/A122803(n)`
-/

namespace A004990.P3294169805522975694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108733 n : ℚ) / (A122803 n : ℚ)

end

end A004990.P3294169805522975694

namespace A004990

/-- `A108733(n)/A122803(n)` -/
def P3294169805522975694.Spec : Prop :=
  ∀ n, P3294169805522975694.a n = (A004990 n : ℚ)

end A004990

/-! ## A004990.P12439839153895928324

`A108733(n)/A077966(2*n)`
-/

namespace A004990.P12439839153895928324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108733 n : ℚ) / (A077966 (2 * n) : ℚ)

end

end A004990.P12439839153895928324

namespace A004990

/-- `A108733(n)/A077966(2*n)` -/
def P12439839153895928324.Spec : Prop :=
  ∀ n, P12439839153895928324.a n = (A004990 n : ℚ)

end A004990

/-!
# A004991: a(n) = (3^n/n!) * Product_{k=0..n-1} (3*k + 4).

The programs for A004991, the canonical program `A004991.P16565924391553142663` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004991 has offset 0).

The definition of A004991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004991.P15718715752124437226

`(3/n+9)*a(n-1)` with `a(0)=1`
-/

namespace A004991.P15718715752124437226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 / (n : ℚ) + 9) * a (n - 1)

end

end A004991.P15718715752124437226

namespace A004991

/-- `(3/n+9)*a(n-1)` -/
def P15718715752124437226.Spec : Prop :=
  ∀ n, P15718715752124437226.a n = (A004991 n : ℚ)

end A004991

/-! ## A004991.P7737690133993077253

`(n+1)*A034171(n)`
-/

namespace A004991.P7737690133993077253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034171 n

end

end A004991.P7737690133993077253

namespace A004991

/-- `(n+1)*A034171(n)` -/
def P7737690133993077253.Spec : Prop :=
  ∀ n, P7737690133993077253.a n = A004991 n

end A004991

/-! ## A004991.P11472320034143789695

`∑[n+1]*A185047(n)`
-/

namespace A004991.P11472320034143789695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A185047 n

end

end A004991.P11472320034143789695

namespace A004991

/-- `∑[n+1]*A185047(n)` -/
def P11472320034143789695.Spec : Prop :=
  ∀ n, P11472320034143789695.a n = A004991 n

end A004991

/-! ## A004991.P5604836082042225054

`(n+1)/3*A004987(n+1)`
-/

namespace A004991.P5604836082042225054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A004987 (n + 1) : ℚ)

end

end A004991.P5604836082042225054

namespace A004991

/-- `(n+1)/3*A004987(n+1)` -/
def P5604836082042225054.Spec : Prop :=
  ∀ n, P5604836082042225054.a n = (A004991 n : ℚ)

end A004991

/-! ## A004991.P16565924391553142663

`A004987(n)*A016777(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004991

/-- `A004987(n)*A016777(n)` -/
def P16565924391553142663.Spec : Prop :=
  ∀ n, P16565924391553142663.a n = A004991 n

theorem P16565924391553142663.correct : P16565924391553142663.Spec := by
  intro n
  simp only [A004991]

end A004991

/-!
# A004992: a(n) = (3^n/n!) * Product_{k=0..n-1} (3*k + 5).

The programs for A004992, the canonical program `A004992.P16208284378058727150` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004992 has offset 0).

The definition of A004992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004992.P16208284378058727150

`(6/n+9)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004992

/-- `(6/n+9)*a(n-1)` -/
def P16208284378058727150.Spec : Prop :=
  ∀ n, P16208284378058727150.a n = (A004992 n : ℚ)

end A004992

/-! ## A004992.P15460590819778988625

`∑[n+1]*A034164(n)`
-/

namespace A004992.P15460590819778988625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A034164 n

end

end A004992.P15460590819778988625

namespace A004992

/-- `∑[n+1]*A034164(n)` -/
def P15460590819778988625.Spec : Prop :=
  ∀ n, P15460590819778988625.a n = A004992 n

end A004992

/-! ## A004992.P3361698274432537392

`∑[A016777(n)]*A097188(n)`
-/

namespace A004992.P3361698274432537392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A097188 n

end

end A004992.P3361698274432537392

namespace A004992

/-- `∑[A016777(n)]*A097188(n)` -/
def P3361698274432537392.Spec : Prop :=
  ∀ n, P3361698274432537392.a n = A004992 n

end A004992

/-! ## A004992.P8272774543253003955

`∑[A016777(n)]*record[A048966(n+1)]`
-/

namespace A004992.P8272774543253003955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A004992.P8272774543253003955

namespace A004992

/-- `∑[A016777(n)]*record[A048966(n+1)]` -/
def P8272774543253003955.Spec : Prop :=
  ∀ n, P8272774543253003955.a n = A004992 n

end A004992

/-! ## A004992.P1221317840728040563

`A034164(n)*A038722(A000124(n))`
-/

namespace A004992.P1221317840728040563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034164 n * A038722 (A000124 n).toNat

end

end A004992.P1221317840728040563

namespace A004992

/-- `A034164(n)*A038722(A000124(n))` -/
def P1221317840728040563.Spec : Prop :=
  ∀ n, P1221317840728040563.a n = A004992 n

end A004992

/-!
# A004993: a(n) = (6^n/n!)*Product_{k=0..n-1} (6*k + 1).

The programs for A004993, there is no canonical definition to state claims against.
-/

/-! ## A004993.P11910971002394010025

`A248328(∑[n])`
-/

namespace A004993.P11910971002394010025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248328 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004993.P11910971002394010025

/-! ## A004993.P9334482418131912337

`A004997(n)/(6*n+1)`
-/

namespace A004993.P9334482418131912337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004997 n : ℚ) / (6 * n + 1 : ℚ)

end

end A004993.P9334482418131912337

/-! ## A004993.P9626118901724802062

`2*A004997(n)/A017545(n)`
-/

namespace A004993.P9626118901724802062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A004997 n : ℚ) / (A017545 n : ℚ))

end

end A004993.P9626118901724802062

/-! ## A004993.P3806374010258199426

`(n+1)*A034789(n+1)/A016921(n)`
-/

namespace A004993.P3806374010258199426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034789 (n + 1) : ℚ) / (A016921 n : ℚ)

end

end A004993.P3806374010258199426

/-! ## A004993.P16513875932398183731

`1/A007310(A005408(n))*A004997(n)`
-/

namespace A004993.P16513875932398183731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A007310 (A005408 n).toNat : ℚ) * (A004997 n : ℚ)

end

end A004993.P16513875932398183731

/-! ## A004993.P5569243291871591678

`(n+1)*A034789(n+1)/A007310(A005408(n))`
-/

namespace A004993.P5569243291871591678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034789 (n + 1) : ℚ) / (A007310 (A005408 n).toNat : ℚ)

end

end A004993.P5569243291871591678

/-!
# A004994: a(n) = (6^n/n!)*Product_{k=0..n-1} (6*k + 5).

The programs for A004994, there is no canonical definition to state claims against.
-/

/-! ## A004994.P10877664599606275765

`A248328(∑[n]+n)`
-/

namespace A004994.P10877664599606275765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248328 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A004994.P10877664599606275765

/-! ## A004994.P1689347383050209446

`(n+1)*A025751(n+1)`
-/

namespace A004994.P1689347383050209446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025751 (n + 1)

end

end A004994.P1689347383050209446

/-! ## A004994.P15007349767815184649

`(n+1)*A049224(∑[n]+1)`
-/

namespace A004994.P15007349767815184649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049224 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004994.P15007349767815184649

/-! ## A004994.P17311221995509276897

`(n+1)*record[A049224(n+1)]`
-/

namespace A004994.P17311221995509276897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004994.P17311221995509276897

/-! ## A004994.P11908013076684476553

`A049224(A000124(n))*(n+1)`
-/

namespace A004994.P11908013076684476553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049224 (A000124 n).toNat * (n + 1 : ℤ)

end

end A004994.P11908013076684476553

/-! ## A004994.P1768850311623709102

`record[A049224(n+1)*A101447(n)]`
-/

namespace A004994.P1768850311623709102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049224 (n + 1) * A101447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004994.P1768850311623709102

/-!
# A004996: a(n) = 6^n/n! * Product_{k=0..n-1} (6*k - 1).

The programs for A004996, there is no canonical definition to state claims against.
-/

/-! ## A004996.P1916549638155227754

`6/n*(6*n-7)*a(n-1)` with `a(0)=1`
-/

namespace A004996.P1916549638155227754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 / (n : ℚ) * ((6 * n : ℤ) - 7 : ℚ) * a (n - 1)

end

end A004996.P1916549638155227754

/-!
# A004997: a(n) = (6^n/n!) * Product_{k=0..n-1} (6*k + 7).

The programs for A004997, there is no canonical definition to state claims against.
-/

/-! ## A004997.P1012928858408643684

`(n+1)*A034789(n+1)`
-/

namespace A004997.P1012928858408643684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034789 (n + 1)

end

end A004997.P1012928858408643684

/-! ## A004997.P822432140762635019

`A004993(n)*(6*n+1)`
-/

namespace A004997.P822432140762635019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004993 n * (6 * n + 1 : ℤ)

end

end A004997.P822432140762635019

/-! ## A004997.P13336181773543774958

`(n+1)*record[A092083(n+1)]`
-/

namespace A004997.P13336181773543774958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004997.P13336181773543774958

/-! ## A004997.P9521921532912766476

`3*a(n-1)/n*A017545(n)` with `a(0)=1`
-/

namespace A004997.P9521921532912766476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) / (n : ℚ) * (A017545 n : ℚ)

end

end A004997.P9521921532912766476

/-! ## A004997.P6653599584139947090

`(A016933(n)-1)*A004993(n)`
-/

namespace A004997.P6653599584139947090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016933 n - 1) * A004993 n

end

end A004997.P6653599584139947090

/-! ## A004997.P12088142768617045848

`A004993(n)/2*A017545(n)`
-/

namespace A004997.P12088142768617045848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004993 n : ℚ) / 2 * (A017545 n : ℚ)

end

end A004997.P12088142768617045848

/-! ## A004997.P7784287562171189554

`A000265(A017545(n))*A004993(n)`
-/

namespace A004997.P7784287562171189554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017545 n).toNat * A004993 n

end

end A004997.P7784287562171189554

/-! ## A004997.P127124102392813668

`A004483(A016933(n))*A004993(n)`
-/

namespace A004997.P127124102392813668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A016933 n).toNat * A004993 n

end

end A004997.P127124102392813668

/-!
# A004998: a(n) = (6^n/n!) * Product_{k=0..n-1} ( 6*k + 11 ).

The programs for A004998, there is no canonical definition to state claims against.
-/

/-! ## A004998.P7075706078240331273

`(30/n+36)*a(n-1)` with `a(0)=1`
-/

namespace A004998.P7075706078240331273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (30 / (n : ℚ) + 36) * a (n - 1)

end

end A004998.P7075706078240331273

/-! ## A004998.P499359916458530543

`∏[(30/n+36)/a(A000027(n)-n)]` with `a(0)=1`
-/

namespace A004998.P499359916458530543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (30 / (n : ℚ) + 36) / f1 (A000027 n - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004998.P499359916458530543

/-! ## A004998.P911722641845293534

`A034787(n+1)/A008543(n)*A004994(n)`
-/

namespace A004998.P911722641845293534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034787 (n + 1) : ℚ) / (A008543 n : ℚ) * (A004994 n : ℚ)

end

end A004998.P911722641845293534

/-!
# A004999: Sums of two nonnegative cubes.

The programs for A004999, there is no canonical definition to state claims against.
-/

/-! ## A004999.P7174439973578165554

`∪[A003325(n+1), n*n²]`
-/

namespace A004999.P7174439973578165554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A004999.P7174439973578165554

/-! ## A004999.P1860839157007187108

`∪[A000578(n), A003325(n+1)]`
-/

namespace A004999.P1860839157007187108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004999.P1860839157007187108

/-! ## A004999.P17385850512000778778

`∪[A114090(n+1), A033431(n)]`
-/

namespace A004999.P17385850512000778778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004999.P17385850512000778778

/-! ## A004999.P16532647529215910984

`∪[A114090(n+1), A213389(n)]`
-/

namespace A004999.P16532647529215910984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004999.P16532647529215910984

/-! ## A004999.P15300731024902403352

`∪[2*A000578(n), A114090(n+1)]`
-/

namespace A004999.P15300731024902403352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004999.P15300731024902403352

/-! ## A004999.P969795438823799108

`lt[0, A025446(n)]`
-/

namespace A004999.P969795438823799108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004999.P969795438823799108

/-! ## A004999.P16068585373870419194

`comp[A022555(n+1)]`
-/

namespace A004999.P16068585373870419194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004999.P16068585373870419194

/-! ## A004999.P17751655129745512855

`eq[0, A351338(n)]`
-/

namespace A004999.P17751655129745512855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004999.P17751655129745512855

/-! ## A004999.P10352319132551093398

`eq[0, A351376(n)]`
-/

namespace A004999.P10352319132551093398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004999.P10352319132551093398

