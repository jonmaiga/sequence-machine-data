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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A083602: Starting positions of strings of four 1's in the decimal expansion of Pi.

The programs for A083602, there is no canonical definition to state claims against.
-/

/-! ## A083602.P5887425375923910832

`∩[A050208(n+1)-2, A050208(n+1)]`
-/

namespace A083602.P5887425375923910832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050208 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083602.P5887425375923910832

/-! ## A083602.P10701032304468002490

`∩[A050209(n+1)-1, A050209(n+1)]`
-/

namespace A083602.P10701032304468002490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050209 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083602.P10701032304468002490

/-!
# A083603: Starting positions of strings of five 1's in the decimal expansion of Pi.

The programs for A083603, there is no canonical definition to state claims against.
-/

/-! ## A083603.P14600633912213319114

`∩[A083602(n+1)-1, A083602(n+1)]`
-/

namespace A083603.P14600633912213319114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083602 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083603.P14600633912213319114

/-!
# A083606: Starting positions of strings of three 2's in the decimal expansion of Pi.

The programs for A083606, there is no canonical definition to state claims against.
-/

/-! ## A083606.P13763050956834032619

`∩[A050215(n+1)-1, A050215(n+1)]`
-/

namespace A083606.P13763050956834032619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050215 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083606.P13763050956834032619

/-! ## A083606.P11659907725541738561

`∩[A050215(n+1), A023443(A050215(n+1))]`
-/

namespace A083606.P11659907725541738561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050215 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083606.P11659907725541738561

/-!
# A083610: Starting positions of strings of three 3's in the decimal expansion of Pi.

The programs for A083610, there is no canonical definition to state claims against.
-/

/-! ## A083610.P14259361371613738767

`∩[A050222(n+1)-1, A050222(n+1)]`
-/

namespace A083610.P14259361371613738767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050222 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083610.P14259361371613738767

/-! ## A083610.P3358480432389275751

`∩[A050222(n+1), A023443(A050222(n+1))]`
-/

namespace A083610.P3358480432389275751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050222 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083610.P3358480432389275751

/-!
# A083613: Starting positions of strings of six 3's in the decimal expansion of Pi.

The programs for A083613, there is no canonical definition to state claims against.
-/

/-! ## A083613.P17710441214939633159

`∩[A083612(n+1)-1, A083612(n+1)]`
-/

namespace A083613.P17710441214939633159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083612 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083613.P17710441214939633159

/-!
# A083614: Starting positions of strings of seven '3's in the decimal expansion of Pi.

The programs for A083614, there is no canonical definition to state claims against.
-/

/-! ## A083614.P17640084782774871289

`∩[A083613(n+1), A284166(n+1)]`
-/

namespace A083614.P17640084782774871289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083614.P17640084782774871289

/-!
# A083615: Starting positions of strings of three 4's in the decimal expansion of Pi.

The programs for A083615, there is no canonical definition to state claims against.
-/

/-! ## A083615.P10188078892687960200

`∩[A050230(n+1)-1, A050230(n+1)]`
-/

namespace A083615.P10188078892687960200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050230 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083615.P10188078892687960200

/-! ## A083615.P355857243798651354

`∩[A050230(n+1), A023443(A050230(n+1))]`
-/

namespace A083615.P355857243798651354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050230 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083615.P355857243798651354

/-!
# A083620: Starting positions of strings of three 5's in the decimal expansion of Pi.

The programs for A083620, there is no canonical definition to state claims against.
-/

/-! ## A083620.P16980655401693407499

`∩[A050238(n+1)-1, A050238(n+1)]`
-/

namespace A083620.P16980655401693407499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050238 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083620.P16980655401693407499

/-! ## A083620.P17978589408183866371

`∩[A050238(n+1), A023443(A050238(n+1))]`
-/

namespace A083620.P17978589408183866371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050238 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083620.P17978589408183866371

/-! ## A083620.P1533661956258053605

`∩[A289207(A050238(n+1)+1), A050238(n+1)]`
-/

namespace A083620.P1533661956258053605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A050238 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083620.P1533661956258053605

/-!
# A083622: Starting positions of strings of five 5's in the decimal expansion of Pi.

The programs for A083622, there is no canonical definition to state claims against.
-/

/-! ## A083622.P18429773451662592825

`A083621(lt[Δ[A083621(n+1)], 2]+1)`
-/

namespace A083622.P18429773451662592825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083621 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083621 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A083622.P18429773451662592825

/-!
# A083625: Starting positions of strings of three 6's in the decimal expansion of Pi.

The programs for A083625, there is no canonical definition to state claims against.
-/

/-! ## A083625.P6220417739941810619

`∩[A050245(n+1)-1, A050245(n+1)]`
-/

namespace A083625.P6220417739941810619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050245 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083625.P6220417739941810619

/-! ## A083625.P15773236151457403549

`∩[A050245(n+1), A023443(A050245(n+1))]`
-/

namespace A083625.P15773236151457403549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050245 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083625.P15773236151457403549

/-!
# A083627: Starting positions of strings of five 6's in the decimal expansion of Pi.

The programs for A083627, there is no canonical definition to state claims against.
-/

/-! ## A083627.P898430578200096689

`A083626(lt[Δ[A083626(n+1)], n]+1)`
-/

namespace A083627.P898430578200096689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083626 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A083627.P898430578200096689

/-! ## A083627.P17352898131952636276

`∩[A083626(n+3)-1, A083626(n+3)]`
-/

namespace A083627.P17352898131952636276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083626 (n + 3) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083626 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083627.P17352898131952636276

/-!
# A083630: Starting positions of strings of eight '6's in the decimal expansion of Pi.

The programs for A083630, there is no canonical definition to state claims against.
-/

/-! ## A083630.P7956149627474153281

`∩[A083629(n+1)-1, A083629(n+1)]`
-/

namespace A083630.P7956149627474153281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083629 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083630.P7956149627474153281

/-!
# A083631: Starting positions of strings of three 7's in the decimal expansion of Pi.

The programs for A083631, there is no canonical definition to state claims against.
-/

/-! ## A083631.P1098090469407243048

`∩[A050254(n+1)-1, A050254(n+1)]`
-/

namespace A083631.P1098090469407243048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050254 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083631.P1098090469407243048

/-! ## A083631.P8822598586874317623

`∩[A050254(n+1), A023443(A050254(n+1))]`
-/

namespace A083631.P8822598586874317623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050254 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083631.P8822598586874317623

/-!
# A083632: Starting positions of strings of four 7's in the decimal expansion of Pi.

The programs for A083632, there is no canonical definition to state claims against.
-/

/-! ## A083632.P2219145006579047159

`∩[A083631(n+1)-1, A083631(n+1)]`
-/

namespace A083632.P2219145006579047159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083631 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083632.P2219145006579047159

/-!
# A083637: Starting positions of strings of three 8's in the decimal expansion of Pi.

The programs for A083637, there is no canonical definition to state claims against.
-/

/-! ## A083637.P5628554288742184240

`∩[A050263(n+1)-1, A050263(n+1)]`
-/

namespace A083637.P5628554288742184240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050263 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083637.P5628554288742184240

/-! ## A083637.P12638343549813823286

`∩[A050263(n+1), A023443(A050263(n+1))]`
-/

namespace A083637.P12638343549813823286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050263 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083637.P12638343549813823286

/-!
# A083638: Starting positions of strings of four 8's in the decimal expansion of Pi.

The programs for A083638, there is no canonical definition to state claims against.
-/

/-! ## A083638.P5349866012961536493

`∩[A083637(n+1)-1, A083637(n+1)]`
-/

namespace A083638.P5349866012961536493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083637 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083638.P5349866012961536493

/-! ## A083638.P61504360380432837

`A083637(eq[1, A083637(n+2)-A083637(n+1)]+1)`
-/

namespace A083638.P61504360380432837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083637 (n + 2) - A083637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A083638.P61504360380432837

/-! ## A083638.P5491387463512189094

`A083637(eq[1, A083637(n+2)%A083637(n+1)]+1)`
-/

namespace A083638.P5491387463512189094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083637 (n + 2)) (A083637 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A083638.P5491387463512189094

/-!
# A083640: Starting positions of strings of six 8's in the decimal expansion of Pi.

The programs for A083640, there is no canonical definition to state claims against.
-/

/-! ## A083640.P8056368344455675962

`∩[A083639(n+1)-1, A083639(n+1)]`
-/

namespace A083640.P8056368344455675962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083639 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083640.P8056368344455675962

/-!
# A083642: Starting positions of strings of three 9's in the decimal expansion of Pi.

The programs for A083642, there is no canonical definition to state claims against.
-/

/-! ## A083642.P12218147018591097983

`∩[A050272(n+1)-1, A050272(n+1)]`
-/

namespace A083642.P12218147018591097983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050272 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083642.P12218147018591097983

/-!
# A083643: Starting positions of strings of four 9's in the decimal expansion of Pi.

The programs for A083643, there is no canonical definition to state claims against.
-/

/-! ## A083643.P15940990189052363322

`∩[A083642(n+1)-1, A083642(n+1)]`
-/

namespace A083643.P15940990189052363322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083642 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083643.P15940990189052363322

/-! ## A083643.P2554436802447117265

`∩[A050272(n+1)-2, A050272(n+1)]`
-/

namespace A083643.P2554436802447117265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050272 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083643.P2554436802447117265

/-!
# A083644: Starting positions of strings of five 9's in the decimal expansion of Pi.

The programs for A083644, there is no canonical definition to state claims against.
-/

/-! ## A083644.P13094731266080292922

`∩[A083643(n+1)-1, A083643(n+1)]`
-/

namespace A083644.P13094731266080292922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083643 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083644.P13094731266080292922

/-! ## A083644.P13882735155559086912

`∩[A083642(n+1)-2, A083642(n+1)]`
-/

namespace A083644.P13882735155559086912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083642 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083644.P13882735155559086912

/-!
# A083645: Starting positions of strings of six 9's in the decimal expansion of Pi.

The programs for A083645, there is no canonical definition to state claims against.
-/

/-! ## A083645.P3519852557444895568

`∩[A083644(n+1)-1, A083644(n+1)]`
-/

namespace A083645.P3519852557444895568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083644 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083645.P3519852557444895568

/-!
# A083646: Starting positions of strings of seven 9's in the decimal expansion of Pi.

The programs for A083646, there is no canonical definition to state claims against.
-/

/-! ## A083646.P12356096832929078872

`∩[A083645(n+1), A284166(n+1)]`
-/

namespace A083646.P12356096832929078872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083646.P12356096832929078872

/-! ## A083646.P9427985665240440757

`∩[A083645(n+1)-1, A083645(n+2)]`
-/

namespace A083646.P9427985665240440757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083645 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083646.P9427985665240440757

/-!
# A083647: For primes p: Number of steps to reach 2 when iterating f(p) = greatest prime divisor of p-1.

The programs for A083647, the canonical program `A083647.P13520631719973171400` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083647 has offset 1).

The definition of A083647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083647.P13520631719973171400

`a(A061395(4*record[A000010(n+1)])-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A083647

/-- `a(A061395(4*record[A000010(n+1)])-1)+1` -/
def P13520631719973171400.Spec : Prop :=
  ∀ n, (P13520631719973171400.a n : ℤ) = A083647 (n + 1)

theorem P13520631719973171400.correct : P13520631719973171400.Spec := by
  intro n
  simp only [A083647, Nat.add_sub_cancel]

end A083647

/-! ## A083647.P6053237290315524892

`A333870(A006530(record[A003958(n+1)²]))`
-/

namespace A083647.P6053237290315524892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A083647.P6053237290315524892

namespace A083647

/-- `A333870(A006530(record[A003958(n+1)²]))` -/
def P6053237290315524892.Spec : Prop :=
  ∀ n, P6053237290315524892.a n = A083647 (n + 1)

end A083647

/-! ## A083647.P1059854443765263606

`A333870(A006530(record[A023900(n+1)²]))`
-/

namespace A083647.P1059854443765263606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A083647.P1059854443765263606

namespace A083647

/-- `A333870(A006530(record[A023900(n+1)²]))` -/
def P1059854443765263606.Spec : Prop :=
  ∀ n, P1059854443765263606.a n = A083647 (n + 1)

end A083647

/-! ## A083647.P16716756250051410757

`A333870(A006530(record[A173557(n+1)²]))`
-/

namespace A083647.P16716756250051410757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A083647.P16716756250051410757

namespace A083647

/-- `A333870(A006530(record[A173557(n+1)²]))` -/
def P16716756250051410757.Spec : Prop :=
  ∀ n, P16716756250051410757.a n = A083647 (n + 1)

end A083647

/-! ## A083647.P11850759419674372453

`A333870(A006530(record[A003958((n+1)²)]))`
-/

namespace A083647.P11850759419674372453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A083647.P11850759419674372453

namespace A083647

/-- `A333870(A006530(record[A003958((n+1)²)]))` -/
def P11850759419674372453.Spec : Prop :=
  ∀ n, P11850759419674372453.a n = A083647 (n + 1)

end A083647

/-! ## A083647.P18054803992183959971

`and(A045535(n), A364332(n+1))`
-/

namespace A083647.P18054803992183959971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A364332 (n + 1))

end

end A083647.P18054803992183959971

namespace A083647

/-- `and(A045535(n), A364332(n+1))` -/
def P18054803992183959971.Spec : Prop :=
  ∀ n, P18054803992183959971.a n = A083647 (n + 1)

end A083647

/-! ## A083647.P17693732386385041065

`and(A168612(n+1), A364332(n+1))`
-/

namespace A083647.P17693732386385041065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168612 (n + 1)) (A364332 (n + 1))

end

end A083647.P17693732386385041065

namespace A083647

/-- `and(A168612(n+1), A364332(n+1))` -/
def P17693732386385041065.Spec : Prop :=
  ∀ n, P17693732386385041065.a n = A083647 (n + 1)

end A083647

/-!
# A083650: Expansion of f(-x, x^3) * phi(x^2) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A083650, there is no canonical definition to state claims against.
-/

/-! ## A083650.P4422840527495393310

`(1-and(2, n))*A030204(n)`
-/

namespace A083650.P4422840527495393310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A030204 n

end

end A083650.P4422840527495393310

/-! ## A083650.P11032986032132402734

`A030204(n)*A057077(n)`
-/

namespace A083650.P11032986032132402734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A057077 n

end

end A083650.P11032986032132402734

/-! ## A083650.P5152534623824573868

`A087960(n)*A138514(n)`
-/

namespace A083650.P5152534623824573868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A138514 n

end

end A083650.P5152534623824573868

/-! ## A083650.P6671365720787759379

`A030204(n)*A033999(A004526(n))`
-/

namespace A083650.P6671365720787759379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A033999 (A004526 n).toNat

end

end A083650.P6671365720787759379

/-! ## A083650.P12901036317692140133

`A030204(n)*A062157(A008619(n))`
-/

namespace A083650.P12901036317692140133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A062157 (A008619 n).toNat

end

end A083650.P12901036317692140133

/-! ## A083650.P16981616011425705319

`A030204(n)*A033999(A112046(n+1))`
-/

namespace A083650.P16981616011425705319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A033999 (A112046 (n + 1)).toNat

end

end A083650.P16981616011425705319

/-! ## A083650.P707907407442009608

`A010892(A032766(n))*A030204(n)`
-/

namespace A083650.P707907407442009608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A032766 n).toNat * A030204 n

end

end A083650.P707907407442009608

/-! ## A083650.P15097372749368664493

`A030204(n)*A055975(A007310(n+1))`
-/

namespace A083650.P15097372749368664493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 n * A055975 (A007310 (n + 1)).toNat

end

end A083650.P15097372749368664493

/-! ## A083650.P2043928594069503172

`A010892(A301451(n+1)-1)*A030204(n)`
-/

namespace A083650.P2043928594069503172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A301451 (n + 1) - 1).toNat * A030204 n

end

end A083650.P2043928594069503172

/-! ## A083650.P12282609655052767272

`A010892(A301451(n+1))*A030204(n)`
-/

namespace A083650.P12282609655052767272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A301451 (n + 1)).toNat * A030204 n

end

end A083650.P12282609655052767272

/-!
# A083651: Triangular array, read by rows: T(n,k) = k-th bit in binary representation of n (0<=k<=n).

The programs for A083651, the canonical program `A083651.P4235126305781789106` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083651 has offset 0).

The definition of A083651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083651.P3772748738956838130

`C(row(n), 2^col(n))%2`
-/

namespace A083651.P3772748738956838130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (2 ^ SequenceMachineLib.triCol n) % 2

end

end A083651.P3772748738956838130

namespace A083651

/-- `C(row(n), 2^col(n))%2` -/
def P3772748738956838130.Spec : Prop :=
  ∀ n, (P3772748738956838130.a n : ℤ) = A083651 n

end A083651

/-! ## A083651.P5650937204089230050

`floor(row(n)/2^col(n))%2`
-/

namespace A083651.P5650937204089230050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(SequenceMachineLib.triRow n : ℚ) / (2 ^ SequenceMachineLib.triCol n : ℚ)⌋ 2

end

end A083651.P5650937204089230050

namespace A083651

/-- `floor(row(n)/2^col(n))%2` -/
def P5650937204089230050.Spec : Prop :=
  ∀ n, P5650937204089230050.a n = A083651 n

end A083651

/-! ## A083651.P11344716380183966772

`A000120(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P11344716380183966772
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P11344716380183966772

namespace A083651

/-- `A000120(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P11344716380183966772.Spec : Prop :=
  ∀ n, P11344716380183966772.a n = A083651 n

end A083651

/-! ## A083651.P3984323232678564536

`A002487(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P3984323232678564536
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P3984323232678564536

namespace A083651

/-- `A002487(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P3984323232678564536.Spec : Prop :=
  ∀ n, P3984323232678564536.a n = A083651 n

end A083651

/-! ## A083651.P209948091293062945

`A006257(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P209948091293062945
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P209948091293062945

namespace A083651

/-- `A006257(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P209948091293062945.Spec : Prop :=
  ∀ n, P209948091293062945.a n = A083651 n

end A083651

/-! ## A083651.P18404689864899271617

`A011602(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P18404689864899271617
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P18404689864899271617

namespace A083651

/-- `A011602(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P18404689864899271617.Spec : Prop :=
  ∀ n, P18404689864899271617.a n = A083651 n

end A083651

/-! ## A083651.P13978396958997638245

`A011655(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P13978396958997638245
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P13978396958997638245

namespace A083651

/-- `A011655(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P13978396958997638245.Spec : Prop :=
  ∀ n, P13978396958997638245.a n = A083651 n

end A083651

/-! ## A083651.P3204671619562460241

`A019425(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P3204671619562460241
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P3204671619562460241

namespace A083651

/-- `A019425(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P3204671619562460241.Spec : Prop :=
  ∀ n, P3204671619562460241.a n = A083651 n

end A083651

/-! ## A083651.P4443666164788630726

`A030101(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P4443666164788630726
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P4443666164788630726

namespace A083651

/-- `A030101(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P4443666164788630726.Spec : Prop :=
  ∀ n, P4443666164788630726.a n = A083651 n

end A083651

/-! ## A083651.P13117933046700040364

`A057427(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P13117933046700040364
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P13117933046700040364

namespace A083651

/-- `A057427(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P13117933046700040364.Spec : Prop :=
  ∀ n, P13117933046700040364.a n = A083651 n

end A083651

/-! ## A083651.P13901527680385143382

`A089309(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P13901527680385143382
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P13901527680385143382

namespace A083651

/-- `A089309(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P13901527680385143382.Spec : Prop :=
  ∀ n, P13901527680385143382.a n = A083651 n

end A083651

/-! ## A083651.P8912831272884473040

`A175629(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P8912831272884473040
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P8912831272884473040

namespace A083651

/-- `A175629(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P8912831272884473040.Spec : Prop :=
  ∀ n, P8912831272884473040.a n = A083651 n

end A083651

/-! ## A083651.P12855728695206406588

`A316569(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))`
-/

namespace A083651.P12855728695206406588
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A083651.P12855728695206406588

namespace A083651

/-- `A316569(and(2^(n-C(∑[char[∑[n]]], 2)), ∑[char[∑[n+1]]]))` -/
def P12855728695206406588.Spec : Prop :=
  ∀ n, P12855728695206406588.a n = A083651 n

end A083651

/-! ## A083651.P4235126305781789106

`C(A003056(n), A059268(n))%2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A083651

/-- `C(A003056(n), A059268(n))%2` -/
def P4235126305781789106.Spec : Prop :=
  ∀ n, (P4235126305781789106.a n : ℤ) = A083651 n

theorem P4235126305781789106.correct : P4235126305781789106.Spec := by
  intro n
  simp only [A083651]

end A083651

/-! ## A083651.P12972064585925933126

`and(A003056(n), A173786(n))²%3`
-/

namespace A083651.P12972064585925933126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A003056 n) (A173786 n) ^ 2) 3

end

end A083651.P12972064585925933126

namespace A083651

/-- `and(A003056(n), A173786(n))²%3` -/
def P12972064585925933126.Spec : Prop :=
  ∀ n, P12972064585925933126.a n = A083651 n

end A083651

/-! ## A083651.P2735576883640381442

`char[A053398(n+1)+C(comp[∑[n]]-n, 2)]`
-/

namespace A083651.P2735576883640381442
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053398 (n + 1) + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083651.P2735576883640381442

namespace A083651

/-- `char[A053398(n+1)+C(comp[∑[n]]-n, 2)]` -/
def P2735576883640381442.Spec : Prop :=
  ∀ n, (P2735576883640381442.a n : ℤ) = A083651 n

end A083651

/-! ## A083651.P12412818384175757052

`A180969(A245300(n))%2`
-/

namespace A083651.P12412818384175757052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180969 (A245300 n).toNat) 2

end

end A083651.P12412818384175757052

namespace A083651

/-- `A180969(A245300(n))%2` -/
def P12412818384175757052.Spec : Prop :=
  ∀ n, P12412818384175757052.a n = A083651 n

end A083651

/-! ## A083651.P6831629303162439412

`A000035(C(∑[char[∑[n+1]]], 2^(n-C(∑[char[∑[n]]], 2))))`
-/

namespace A083651.P6831629303162439412
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ))).toNat)

end

end A083651.P6831629303162439412

namespace A083651

/-- `A000035(C(∑[char[∑[n+1]]], 2^(n-C(∑[char[∑[n]]], 2))))` -/
def P6831629303162439412.Spec : Prop :=
  ∀ n, P6831629303162439412.a n = A083651 n

end A083651

/-! ## A083651.P8493575102664752869

`1-A103842(∑[char[∑[n]]]²-n)`
-/

namespace A083651.P8493575102664752869
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A103842 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A083651.P8493575102664752869

namespace A083651

/-- `1-A103842(∑[char[∑[n]]]²-n)` -/
def P8493575102664752869.Spec : Prop :=
  ∀ n, P8493575102664752869.a n = A083651 n

end A083651

/-! ## A083651.P11248613273426075593

`xor(1, A103842(A038722(n+1)))`
-/

namespace A083651.P11248613273426075593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103842 (A038722 (n + 1)).toNat)

end

end A083651.P11248613273426075593

namespace A083651

/-- `xor(1, A103842(A038722(n+1)))` -/
def P11248613273426075593.Spec : Prop :=
  ∀ n, P11248613273426075593.a n = A083651 n

end A083651

/-!
# A083652: Sum of lengths of binary expansions of 0 through n.

The programs for A083652, the canonical program `A083652.P17078178510795744902` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083652 has offset 0).

The definition of A083652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083652.P17078178510795744902

`2+(n+1)*ceil(log2(n+1))-2^ceil(log2(n+1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083652

/-- `2+(n+1)*ceil(log2(n+1))-2^ceil(log2(n+1))` -/
def P17078178510795744902.Spec : Prop :=
  ∀ n, P17078178510795744902.a n = (A083652 n : ℚ)

end A083652

/-! ## A083652.P887686070637355967

`∑[ceil(abs(log2(acot(n))))]`
-/

namespace A083652.P887686070637355967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 (SequenceMachineLib.acot (n : ℝ))|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083652.P887686070637355967

namespace A083652

/-- `∑[ceil(abs(log2(acot(n))))]` -/
def P887686070637355967.Spec : Prop :=
  ∀ n, P887686070637355967.a n = A083652 n

end A083652

/-! ## A083652.P2697662948238331902

`∑[floor(log2(2*or(1, n)))]`
-/

namespace A083652.P2697662948238331902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (2 * Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083652.P2697662948238331902

namespace A083652

/-- `∑[floor(log2(2*or(1, n)))]` -/
def P2697662948238331902.Spec : Prop :=
  ∀ n, (P2697662948238331902.a n : ℤ) = A083652 n

end A083652

/-! ## A083652.P12995568365496730721

`∑[∑[char[and(n, 1-n)]]]`
-/

namespace A083652.P12995568365496730721
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083652.P12995568365496730721

namespace A083652

/-- `∑[∑[char[and(n, 1-n)]]]` -/
def P12995568365496730721.Spec : Prop :=
  ∀ n, (P12995568365496730721.a n : ℤ) = A083652 n

end A083652

/-! ## A083652.P3671197134108219784

`∑[a(floor(n/2))+1]` with `a(0)=1, a(1)=1`
-/

namespace A083652.P3671197134108219784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083652.P3671197134108219784

namespace A083652

/-- `∑[a(floor(n/2))+1]` -/
def P3671197134108219784.Spec : Prop :=
  ∀ n, (P3671197134108219784.a n : ℤ) = A083652 n

end A083652

/-! ## A083652.P2139430299218182898

`∑[∑[char[2*a(n-1)]]]` with `a(0)=0, a(1)=2`
-/

namespace A083652.P2139430299218182898
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f3 =>
  2 * f3 (n - 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083652.P2139430299218182898

namespace A083652

/-- `∑[∑[char[2*a(n-1)]]]` -/
def P2139430299218182898.Spec : Prop :=
  ∀ n, (P2139430299218182898.a n : ℤ) = A083652 n

end A083652

/-! ## A083652.P13368673807228453828

`ceil(a(n-1)+log2(n+1))` with `a(0)=1`
-/

namespace A083652.P13368673807228453828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.logb 2 (n + 1 : ℝ)⌉

end

end A083652.P13368673807228453828

namespace A083652

/-- `ceil(a(n-1)+log2(n+1))` -/
def P13368673807228453828.Spec : Prop :=
  ∀ n, P13368673807228453828.a n = A083652 n

end A083652

/-! ## A083652.P8678427371166283118

`floor(a(n-1)+log2(2*n))` with `a(0)=1`
-/

namespace A083652.P8678427371166283118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.logb 2 (2 * n : ℝ)⌋

end

end A083652.P8678427371166283118

namespace A083652

/-- `floor(a(n-1)+log2(2*n))` -/
def P8678427371166283118.Spec : Prop :=
  ∀ n, P8678427371166283118.a n = A083652 n

end A083652

/-! ## A083652.P10718881558665215802

`∑[char[2^(n+1)]+a(n-1)]` with `a(0)=1`
-/

namespace A083652.P10718881558665215802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083652.P10718881558665215802

namespace A083652

/-- `∑[char[2^(n+1)]+a(n-1)]` -/
def P10718881558665215802.Spec : Prop :=
  ∀ n, (P10718881558665215802.a n : ℤ) = A083652 n

end A083652

/-! ## A083652.P1510637385818535770

`2-floor((1/n+1)*(1-a(n-1)))` with `a(0)=1`
-/

namespace A083652.P1510637385818535770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ⌊(1 / (n : ℚ) + 1) * (1 - a (n - 1) : ℚ)⌋

end

end A083652.P1510637385818535770

namespace A083652

/-- `2-floor((1/n+1)*(1-a(n-1)))` -/
def P1510637385818535770.Spec : Prop :=
  ∀ n, P1510637385818535770.a n = A083652 n

end A083652

/-! ## A083652.P14859706486521700914

`a(n-1)+1-floor((1-a(n-1))/n)` with `a(0)=1`
-/

namespace A083652.P14859706486521700914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - ⌊(1 - a (n - 1) : ℚ) / (n : ℚ)⌋

end

end A083652.P14859706486521700914

namespace A083652

/-- `a(n-1)+1-floor((1-a(n-1))/n)` -/
def P14859706486521700914.Spec : Prop :=
  ∀ n, P14859706486521700914.a n = A083652 n

end A083652

/-! ## A083652.P3506791008185346763

`1-floor((1-a(n-1))/n-a(n-1))` with `a(0)=1`
-/

namespace A083652.P3506791008185346763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(1 - a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A083652.P3506791008185346763

namespace A083652

/-- `1-floor((1-a(n-1))/n-a(n-1))` -/
def P3506791008185346763.Spec : Prop :=
  ∀ n, P3506791008185346763.a n = A083652 n

end A083652

/-! ## A083652.P13587986504668136534

`∑[A070939(n)]`
-/

namespace A083652.P13587986504668136534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083652.P13587986504668136534

namespace A083652

/-- `∑[A070939(n)]` -/
def P13587986504668136534.Spec : Prop :=
  ∀ n, P13587986504668136534.a n = A083652 n

end A083652

/-! ## A083652.P6999035461809637455

`A296349(n+1)`
-/

namespace A083652.P6999035461809637455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 (n + 1)

end

end A083652.P6999035461809637455

namespace A083652

/-- `A296349(n+1)` -/
def P6999035461809637455.Spec : Prop :=
  ∀ n, P6999035461809637455.a n = A083652 n

end A083652

/-! ## A083652.P10948437590429764522

`record[A296349(abs(1-n))]`
-/

namespace A083652.P10948437590429764522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083652.P10948437590429764522

namespace A083652

/-- `record[A296349(abs(1-n))]` -/
def P10948437590429764522.Spec : Prop :=
  ∀ n, P10948437590429764522.a n = A083652 n

end A083652

/-! ## A083652.P9139727637157612075

`A030303(A000788(n)+1)`
-/

namespace A083652.P9139727637157612075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (A000788 n + 1).toNat

end

end A083652.P9139727637157612075

namespace A083652

/-- `A030303(A000788(n)+1)` -/
def P9139727637157612075.Spec : Prop :=
  ∀ n, P9139727637157612075.a n = A083652 n

end A083652

/-! ## A083652.P5915960348581191358

`filter[A296349(n), A030190(#)]`
-/

namespace A083652.P5915960348581191358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030190 (f1 j).toNat = 1) n)

end

end A083652.P5915960348581191358

namespace A083652

/-- `filter[A296349(n), A030190(#)]` -/
def P5915960348581191358.Spec : Prop :=
  ∀ n, P5915960348581191358.a n = A083652 n

end A083652

/-! ## A083652.P682104997915774962

`∩[A296349(n), A337843(n)]`
-/

namespace A083652.P682104997915774962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083652.P682104997915774962

namespace A083652

/-- `∩[A296349(n), A337843(n)]` -/
def P682104997915774962.Spec : Prop :=
  ∀ n, (P682104997915774962.a n : ℤ) = A083652 n

end A083652

/-! ## A083652.P75253360617009147

`∑[A110591(n²)]`
-/

namespace A083652.P75253360617009147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083652.P75253360617009147

namespace A083652

/-- `∑[A110591(n²)]` -/
def P75253360617009147.Spec : Prop :=
  ∀ n, P75253360617009147.a n = A083652 n

end A083652

/-!
# A083653: Consider the binary Champernowne sequence (A030190): smallest number m such that in binary representation n is contained in the concatenation of m and its successors.

The programs for A083653, there is no canonical definition to state claims against.
-/

/-! ## A083653.P3378217566974898591

`A333920(n)+1-A083654(n)`
-/

namespace A083653.P3378217566974898591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333920 n + (1 - A083654 n)

end

end A083653.P3378217566974898591

/-! ## A083653.P7992725932548049056

`A030530(A030304(n))`
-/

namespace A083653.P7992725932548049056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A030304 n).toNat

end

end A083653.P7992725932548049056

/-! ## A083653.P1265955135947396745

`A030530(∑[ceil(log2(C(n, n²)+n))]-A296364(n))`
-/

namespace A083653.P1265955135947396745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.choose n (n ^ 2) + n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (∑ j ∈ Finset.range (n + 1), f1 j - A296364 n).toNat

end

end A083653.P1265955135947396745

/-! ## A083653.P14332520157819669104

`A030530(∑[∑[char[and(n, 1-n)+1]]]-A296364(n))`
-/

namespace A083653.P14332520157819669104
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ)) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A296364 n).toNat

end

end A083653.P14332520157819669104

/-! ## A083653.P7485338251982237341

`A030530(∑[∑[char[2-or(n, 1-n)]]]-A296364(n))`
-/

namespace A083653.P7485338251982237341
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor (n : ℤ) (1 - (n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A296364 n).toNat

end

end A083653.P7485338251982237341

/-! ## A083653.P3544710461033091255

`A030530(∑[ceil(log2((n%2)^n+n))]-A296364(n))`
-/

namespace A083653.P3544710461033091255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (((n % 2) ^ n + n : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (∑ j ∈ Finset.range (n + 1), f1 j - A296364 n).toNat

end

end A083653.P3544710461033091255

/-! ## A083653.P2010969879208571830

`A030530(A296349(n)-A296364(n))`
-/

namespace A083653.P2010969879208571830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A296349 n - A296364 n).toNat

end

end A083653.P2010969879208571830

/-!
# A083654: Consider the binary Champernowne sequence (A030190): number of successive numbers to be concatenated beginning with A083653(n) such that in binary representation n is contained.

The programs for A083654, there is no canonical definition to state claims against.
-/

/-! ## A083654.P5993686779872331913

`A333920(n)+1-A083653(n)`
-/

namespace A083654.P5993686779872331913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333920 n + (1 - A083653 n)

end

end A083654.P5993686779872331913

/-! ## A083654.P7503215429130535810

`A005496(A333920(n)-A083653(n))`
-/

namespace A083654.P7503215429130535810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A333920 n - A083653 n).toNat

end

end A083654.P7503215429130535810

/-! ## A083654.P7260687119535489173

`A033307(A333920(n)-A083653(n))`
-/

namespace A083654.P7260687119535489173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A333920 n - A083653 n).toNat

end

end A083654.P7260687119535489173

/-! ## A083654.P15518587828111048041

`1-A001489(A333920(n)-A083653(n))`
-/

namespace A083654.P15518587828111048041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (A333920 n - A083653 n).toNat

end

end A083654.P15518587828111048041

/-! ## A083654.P9770227125429223268

`A008611(3*(A333920(n)-A083653(n)))`
-/

namespace A083654.P9770227125429223268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * (A333920 n - A083653 n)).toNat

end

end A083654.P9770227125429223268

/-! ## A083654.P3269032692595432609

`A000005(2^(A333920(n)-A083653(n)))`
-/

namespace A083654.P3269032692595432609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A333920 n - A083653 n : ℤ))).toNat

end

end A083654.P3269032692595432609

/-! ## A083654.P11096582079140112274

`A001227(3^(A333920(n)-A083653(n)))`
-/

namespace A083654.P11096582079140112274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A333920 n - A083653 n : ℤ))).toNat

end

end A083654.P11096582079140112274

/-! ## A083654.P11174622635224431210

`A002654(5^(A333920(n)-A083653(n)))`
-/

namespace A083654.P11174622635224431210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A333920 n - A083653 n : ℤ))).toNat

end

end A083654.P11174622635224431210

/-! ## A083654.P7837227674224206692

`A025581(64-(A333920(n)-A083653(n)))`
-/

namespace A083654.P7837227674224206692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (64 - (A333920 n - A083653 n)).toNat

end

end A083654.P7837227674224206692

/-! ## A083654.P9300774301431273501

`A001222(2*5^(A333920(n)-A083653(n)))`
-/

namespace A083654.P9300774301431273501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (5 : ℚ) ^ (A333920 n - A083653 n : ℤ))).toNat

end

end A083654.P9300774301431273501

/-! ## A083654.P16658608133183365951

`A001222(lcm(2, 5^(A333920(n)-A083653(n))))`
-/

namespace A083654.P16658608133183365951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A333920 n - A083653 n : ℤ))))

end

end A083654.P16658608133183365951

/-! ## A083654.P8419157659981387300

`A333920(n)-(A083653(n)-A007318(C(2, n)))`
-/

namespace A083654.P8419157659981387300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333920 n - (A083653 n - A007318 (Nat.choose 2 n))

end

end A083654.P8419157659981387300

/-!
# A083655: Numbers which do not appear prematurely in the binary Champernowne word (A030190).

The programs for A083655, the canonical program `A083655.P6389959470461502657` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083655 has offset 0).

The definition of A083655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083655.P6389959470461502657

`6*a(n-3)-8*a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=10, a(6)=16, a(7)=32, a(8)=36`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083655

/-- `6*a(n-3)-8*a(n-6)` -/
def P6389959470461502657.Spec : Prop :=
  ∀ n, P6389959470461502657.a n = A083655 n

theorem P6389959470461502657.correct : P6389959470461502657.Spec := by
  intro n
  simp only [A083655]

end A083655

/-! ## A083655.P6475888543147433587

`ogf((x+2x^2+4x^3+2x^4-2x^5-8x^6-8x^7-8x^8)/(1-6x^3+8x^6))`
-/

namespace A083655.P6475888543147433587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 4, 2, -2, -8, -8, -8] [1, 0, 0, -6, 0, 0, 8] n

end

end A083655.P6475888543147433587

namespace A083655

/-- `ogf((x+2x^2+4x^3+2x^4-2x^5-8x^6-8x^7-8x^8)/(1-6x^3+8x^6))` -/
def P6475888543147433587.Spec : Prop :=
  ∀ n, P6475888543147433587.a n = A083655 n

end A083655

/-! ## A083655.P7028902830962452258

`∩[A161374(n+1), A389731(n+1)]`
-/

namespace A083655.P7028902830962452258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083655.P7028902830962452258

namespace A083655

/-- `∩[A161374(n+1), A389731(n+1)]` -/
def P7028902830962452258.Spec : Prop :=
  ∀ n, (P7028902830962452258.a n : ℤ) = A083655 n

end A083655

/-! ## A083655.P3398643978669754658

`∩[A161374(n+1), A326704(n+1)]`
-/

namespace A083655.P3398643978669754658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083655.P3398643978669754658

namespace A083655

/-- `∩[A161374(n+1), A326704(n+1)]` -/
def P3398643978669754658.Spec : Prop :=
  ∀ n, (P3398643978669754658.a n : ℤ) = A083655 n

end A083655

/-! ## A083655.P14655512625971610509

`∩[A136490(n+1), A161374(n+1)]`
-/

namespace A083655.P14655512625971610509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083655.P14655512625971610509

namespace A083655

/-- `∩[A136490(n+1), A161374(n+1)]` -/
def P14655512625971610509.Spec : Prop :=
  ∀ n, (P14655512625971610509.a n : ℤ) = A083655 n

end A083655

/-!
# A083656: a(n) = Sum_{i=1..n} floor(r*floor(r*i)), where r=sqrt(2).

The programs for A083656, the canonical program `A083656.P8217995013209757616` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083656 has offset 1).

The definition of A083656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083656.P8217995013209757616

`∑[A007069(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083656

/-- `∑[A007069(n+1)]` -/
def P8217995013209757616.Spec : Prop :=
  ∀ n, P8217995013209757616.a n = A083656 (n + 1)

theorem P8217995013209757616.correct : P8217995013209757616.Spec := by
  intro n
  simp only [A083656, Nat.add_sub_cancel]

end A083656

/-! ## A083656.P12575379295544165340

`(n+1)²-∑[A059648(n+1)]`
-/

namespace A083656.P12575379295544165340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P12575379295544165340

namespace A083656

/-- `(n+1)²-∑[A059648(n+1)]` -/
def P12575379295544165340.Spec : Prop :=
  ∀ n, P12575379295544165340.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P12847555878084929912

`∑[A286923(n+1)-A080652(n+1)]`
-/

namespace A083656.P12847555878084929912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286923 (n + 1) - A080652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P12847555878084929912

namespace A083656

/-- `∑[A286923(n+1)-A080652(n+1)]` -/
def P12847555878084929912.Spec : Prop :=
  ∀ n, P12847555878084929912.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P358836342191005404

`∑[A001951(A001951(n+1))]`
-/

namespace A083656.P358836342191005404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A001951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P358836342191005404

namespace A083656

/-- `∑[A001951(A001951(n+1))]` -/
def P358836342191005404.Spec : Prop :=
  ∀ n, P358836342191005404.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P16493169259314287160

`∑[record[xor(n, A080764(n))]]`
-/

namespace A083656.P16493169259314287160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A080764 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P16493169259314287160

namespace A083656

/-- `∑[record[xor(n, A080764(n))]]` -/
def P16493169259314287160.Spec : Prop :=
  ∀ n, P16493169259314287160.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P3146443705816174248

`∑[A080764(2*n)+2*n]`
-/

namespace A083656.P3146443705816174248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (2 * n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P3146443705816174248

namespace A083656

/-- `∑[A080764(2*n)+2*n]` -/
def P3146443705816174248.Spec : Prop :=
  ∀ n, P3146443705816174248.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P15875331030548494825

`∑[A188295(2*(n+1))]+n²+n`
-/

namespace A083656.P15875331030548494825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 + n : ℤ)

end

end A083656.P15875331030548494825

namespace A083656

/-- `∑[A188295(2*(n+1))]+n²+n` -/
def P15875331030548494825.Spec : Prop :=
  ∀ n, P15875331030548494825.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P8172835254386143501

`∑[abs(A171588(Δ[n²])-2*n)+1]`
-/

namespace A083656.P8172835254386143501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171588 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - (2 * n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P8172835254386143501

namespace A083656

/-- `∑[abs(A171588(Δ[n²])-2*n)+1]` -/
def P8172835254386143501.Spec : Prop :=
  ∀ n, P8172835254386143501.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P14103342233462519928

`∑[2*n+1-A171588(2*n+1)]`
-/

namespace A083656.P14103342233462519928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A171588 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P14103342233462519928

namespace A083656

/-- `∑[2*n+1-A171588(2*n+1)]` -/
def P14103342233462519928.Spec : Prop :=
  ∀ n, P14103342233462519928.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P15934520614798012060

`∑[A286687(2*n+1)-(2*n+1)]`
-/

namespace A083656.P15934520614798012060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (2 * n + 1) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P15934520614798012060

namespace A083656

/-- `∑[A286687(2*n+1)-(2*n+1)]` -/
def P15934520614798012060.Spec : Prop :=
  ∀ n, P15934520614798012060.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P11635809506295067378

`∑[A081946(2*(n+1))-A081946(2*n+1)]`
-/

namespace A083656.P11635809506295067378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081946 (2 * (n + 1)) - A081946 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P11635809506295067378

namespace A083656

/-- `∑[A081946(2*(n+1))-A081946(2*n+1)]` -/
def P11635809506295067378.Spec : Prop :=
  ∀ n, P11635809506295067378.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P1415745224422854610

`∑[Δ[n²]-A289035(2*(n+2))]`
-/

namespace A083656.P1415745224422854610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A289035 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P1415745224422854610

namespace A083656

/-- `∑[Δ[n²]-A289035(2*(n+2))]` -/
def P1415745224422854610.Spec : Prop :=
  ∀ n, P1415745224422854610.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P9373058499279348983

`∑[A049472(A286909(n+1))]`
-/

namespace A083656.P9373058499279348983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A286909 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P9373058499279348983

namespace A083656

/-- `∑[A049472(A286909(n+1))]` -/
def P9373058499279348983.Spec : Prop :=
  ∀ n, P9373058499279348983.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P4088552153345366823

`∑[A074840(A184922(n+1))]`
-/

namespace A083656.P4088552153345366823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A184922 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P4088552153345366823

namespace A083656

/-- `∑[A074840(A184922(n+1))]` -/
def P4088552153345366823.Spec : Prop :=
  ∀ n, P4088552153345366823.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P9752331101360428429

`∑[A074840(A341239(n+1))]`
-/

namespace A083656.P9752331101360428429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A341239 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P9752331101360428429

namespace A083656

/-- `∑[A074840(A341239(n+1))]` -/
def P9752331101360428429.Spec : Prop :=
  ∀ n, P9752331101360428429.a n = A083656 (n + 1)

end A083656

/-! ## A083656.P3593397776121004392

`∑[A097508(A007071(A001952(n+1)))]`
-/

namespace A083656.P3593397776121004392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A007071 (A001952 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P3593397776121004392

namespace A083656

/-- `∑[A097508(A007071(A001952(n+1)))]` -/
def P3593397776121004392.Spec : Prop :=
  ∀ n, P3593397776121004392.a n = A083656 (n + 1)

end A083656

/-!
# A083657: a(n) = Sum_{i=1..n} floor(r*floor(r*i)) where r=sqrt(3).

The programs for A083657, the canonical program `A083657.P12921516313600058634` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083657 has offset 1).

The definition of A083657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083657.P6534787387583029588

`∑[A022158(n+1)]`
-/

namespace A083657.P6534787387583029588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083657.P6534787387583029588

namespace A083657

/-- `∑[A022158(n+1)]` -/
def P6534787387583029588.Spec : Prop :=
  ∀ n, P6534787387583029588.a n = A083657 (n + 1)

end A083657

/-! ## A083657.P12921516313600058634

`∑[floor(sqrt(3)*A022838(n+1))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083657

/-- `∑[floor(sqrt(3)*A022838(n+1))]` -/
def P12921516313600058634.Spec : Prop :=
  ∀ n, P12921516313600058634.a n = A083657 (n + 1)

theorem P12921516313600058634.correct : P12921516313600058634.Spec := by
  intro n
  simp only [A083657, Nat.add_sub_cancel]

end A083657

/-! ## A083657.P912266420311015245

`∑[A022838(∑[A080757(n)])]`
-/

namespace A083657.P912266420311015245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083657.P912266420311015245

namespace A083657

/-- `∑[A022838(∑[A080757(n)])]` -/
def P912266420311015245.Spec : Prop :=
  ∀ n, P912266420311015245.a n = A083657 (n + 1)

end A083657

/-! ## A083657.P752512369937572388

`∑[A022838(A022838(n+1))]`
-/

namespace A083657.P752512369937572388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A022838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083657.P752512369937572388

namespace A083657

/-- `∑[A022838(A022838(n+1))]` -/
def P752512369937572388.Spec : Prop :=
  ∀ n, P752512369937572388.a n = A083657 (n + 1)

end A083657

/-! ## A083657.P15433340384912512071

`∑[record[A022158(A126759(n))]]`
-/

namespace A083657.P15433340384912512071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022158 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083657.P15433340384912512071

namespace A083657

/-- `∑[record[A022158(A126759(n))]]` -/
def P15433340384912512071.Spec : Prop :=
  ∀ n, P15433340384912512071.a n = A083657 (n + 1)

end A083657

/-! ## A083657.P5246122356191635708

`∑[A308358(4*floor((n+1)*sqrt(3)))]`
-/

namespace A083657.P5246122356191635708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (4 * ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083657.P5246122356191635708

namespace A083657

/-- `∑[A308358(4*floor((n+1)*sqrt(3)))]` -/
def P5246122356191635708.Spec : Prop :=
  ∀ n, P5246122356191635708.a n = A083657 (n + 1)

end A083657

/-!
# A083658: a(n) = a(n-1) + a(n-2) + gcd(a(n-1), a(n-2)) for n > 1; a(0)=1, a(1)=1.

The programs for A083658, the canonical program `A083658.P570344654653850934` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083658 has offset 0).

The definition of A083658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+gcd(a(n-1), a(n-2))` (program `A083658.P570344654653850934`, by `A083658.P570344654653850934.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083658.P3013659487388228731

`ogf((1+x+2x^3)/(1-3x^2))`
-/

namespace A083658.P3013659487388228731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2] [1, 0, -3] n

end

end A083658.P3013659487388228731

namespace A083658

/-- `ogf((1+x+2x^3)/(1-3x^2))` -/
def P3013659487388228731.Spec : Prop :=
  ∀ n, P3013659487388228731.a n = A083658 n

end A083658

/-! ## A083658.P17734666800066449128

`3*a(n-2)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A083658.P17734666800066449128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n a =>
  3 * a (n - 2)

end

end A083658.P17734666800066449128

namespace A083658

/-- `3*a(n-2)` -/
def P17734666800066449128.Spec : Prop :=
  ∀ n, (P17734666800066449128.a n : ℤ) = A083658 n

end A083658

/-! ## A083658.P570344654653850934

`a(n-1)+a(n-2)+gcd(a(n-1), a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083658

/-- `a(n-1)+a(n-2)+gcd(a(n-1), a(n-2))` -/
def P570344654653850934.Spec : Prop :=
  ∀ n, (P570344654653850934.a n : ℤ) = A083658 n

theorem P570344654653850934.correct : P570344654653850934.Spec := by
  intro n
  simp only [A083658]

end A083658

/-! ## A083658.P498015599415994576

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A083658.P498015599415994576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 5] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A083658.P498015599415994576

namespace A083658

/-- `a(n-2)/(1-2/3)` -/
def P498015599415994576.Spec : Prop :=
  ∀ n, P498015599415994576.a n = (A083658 n : ℚ)

end A083658

/-! ## A083658.P2362276862872498593

`a(n-2)+lcm(2, a(n-2))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A083658.P2362276862872498593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 2))

end

end A083658.P2362276862872498593

namespace A083658

/-- `a(n-2)+lcm(2, a(n-2))` -/
def P2362276862872498593.Spec : Prop :=
  ∀ n, (P2362276862872498593.a n : ℤ) = A083658 n

end A083658

/-! ## A083658.P12211964475915086680

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A083658.P12211964475915086680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A083658.P12211964475915086680

namespace A083658

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P12211964475915086680.Spec : Prop :=
  ∀ n, (P12211964475915086680.a n : ℤ) = A083658 n

end A083658

/-! ## A083658.P6022151301349429977

`A091916(A007494(n))`
-/

namespace A083658.P6022151301349429977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A007494 n).toNat

end

end A083658.P6022151301349429977

namespace A083658

/-- `A091916(A007494(n))` -/
def P6022151301349429977.Spec : Prop :=
  ∀ n, P6022151301349429977.a n = A083658 n

end A083658

/-! ## A083658.P500561002889913739

`A091916(A001651(n+1))`
-/

namespace A083658.P500561002889913739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A001651 (n + 1)).toNat

end

end A083658.P500561002889913739

namespace A083658

/-- `A091916(A001651(n+1))` -/
def P500561002889913739.Spec : Prop :=
  ∀ n, P500561002889913739.a n = A083658 n

end A083658

/-! ## A083658.P9702171719843443768

`A091916(A047255(n+1))`
-/

namespace A083658.P9702171719843443768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A047255 (n + 1)).toNat

end

end A083658.P9702171719843443768

namespace A083658

/-- `A091916(A047255(n+1))` -/
def P9702171719843443768.Spec : Prop :=
  ∀ n, P9702171719843443768.a n = A083658 n

end A083658

/-! ## A083658.P335393203049287829

`A091916(A047262(n+1))`
-/

namespace A083658.P335393203049287829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A047262 (n + 1)).toNat

end

end A083658.P335393203049287829

namespace A083658

/-- `A091916(A047262(n+1))` -/
def P335393203049287829.Spec : Prop :=
  ∀ n, P335393203049287829.a n = A083658 n

end A083658

/-! ## A083658.P17320036301898428110

`A091916(A097482(n+1))`
-/

namespace A083658.P17320036301898428110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A097482 (n + 1)).toNat

end

end A083658.P17320036301898428110

namespace A083658

/-- `A091916(A097482(n+1))` -/
def P17320036301898428110.Spec : Prop :=
  ∀ n, P17320036301898428110.a n = A083658 n

end A083658

/-! ## A083658.P17262556785382052158

`A091916(A189796(n+1))`
-/

namespace A083658.P17262556785382052158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A189796 (n + 1)).toNat

end

end A083658.P17262556785382052158

namespace A083658

/-- `A091916(A189796(n+1))` -/
def P17262556785382052158.Spec : Prop :=
  ∀ n, P17262556785382052158.a n = A083658 n

end A083658

/-! ## A083658.P4830834627313175998

`A091916(A267528(n+1))`
-/

namespace A083658.P4830834627313175998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A267528 (n + 1)).toNat

end

end A083658.P4830834627313175998

namespace A083658

/-- `A091916(A267528(n+1))` -/
def P4830834627313175998.Spec : Prop :=
  ∀ n, P4830834627313175998.a n = A083658 n

end A083658

/-! ## A083658.P10268720763739238804

`A091916(A284818(n+1))`
-/

namespace A083658.P10268720763739238804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A284818 (n + 1)).toNat

end

end A083658.P10268720763739238804

namespace A083658

/-- `A091916(A284818(n+1))` -/
def P10268720763739238804.Spec : Prop :=
  ∀ n, P10268720763739238804.a n = A083658 n

end A083658

/-! ## A083658.P7880814919930287601

`A091916(A320928(n+1))`
-/

namespace A083658.P7880814919930287601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A320928 (n + 1)).toNat

end

end A083658.P7880814919930287601

namespace A083658

/-- `A091916(A320928(n+1))` -/
def P7880814919930287601.Spec : Prop :=
  ∀ n, P7880814919930287601.a n = A083658 n

end A083658

/-! ## A083658.P2420805300956468828

`A091916(A399801(n+1))`
-/

namespace A083658.P2420805300956468828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A399801 (n + 1)).toNat

end

end A083658.P2420805300956468828

namespace A083658

/-- `A091916(A399801(n+1))` -/
def P2420805300956468828.Spec : Prop :=
  ∀ n, P2420805300956468828.a n = A083658 n

end A083658

/-! ## A083658.P622076196407292361

`A091916(A294732(n+2))`
-/

namespace A083658.P622076196407292361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A294732 (n + 2)).toNat

end

end A083658.P622076196407292361

namespace A083658

/-- `A091916(A294732(n+2))` -/
def P622076196407292361.Spec : Prop :=
  ∀ n, P622076196407292361.a n = A083658 n

end A083658

/-! ## A083658.P9207921988331888840

`A213933(A004526(3*n+1))`
-/

namespace A083658.P9207921988331888840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213933 (A004526 (3 * n + 1)).toNat

end

end A083658.P9207921988331888840

namespace A083658

/-- `A213933(A004526(3*n+1))` -/
def P9207921988331888840.Spec : Prop :=
  ∀ n, P9207921988331888840.a n = A083658 n

end A083658

/-! ## A083658.P2730357269282847722

`A213933(A004526(n+1)+n)`
-/

namespace A083658.P2730357269282847722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213933 (A004526 (n + 1) + (n : ℤ)).toNat

end

end A083658.P2730357269282847722

namespace A083658

/-- `A213933(A004526(n+1)+n)` -/
def P2730357269282847722.Spec : Prop :=
  ∀ n, P2730357269282847722.a n = A083658 n

end A083658

/-! ## A083658.P4189681044037656053

`A213933(2*n-A004526(n))`
-/

namespace A083658.P4189681044037656053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213933 ((2 * n : ℤ) - A004526 n).toNat

end

end A083658.P4189681044037656053

namespace A083658

/-- `A213933(2*n-A004526(n))` -/
def P4189681044037656053.Spec : Prop :=
  ∀ n, P4189681044037656053.a n = A083658 n

end A083658

/-!
# A083659: Denominator of fraction equal to the continued fraction [p(n); p(n-1),...,5,3,2].

The programs for A083659, there is no canonical definition to state claims against.
-/

/-! ## A083659.P17837531469554615679

`a(n-2)+a(n-1)*A000040(n)` with `a(0)=1, a(1)=2`
-/

namespace A083659.P17837531469554615679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A000040 n

end

end A083659.P17837531469554615679

/-! ## A083659.P11751055116796023544

`a(n-2)+a(n-1)*A008578(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A083659.P11751055116796023544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A008578 (n + 1)

end

end A083659.P11751055116796023544

/-! ## A083659.P1669565919818247886

`a(n-2)+a(n-1)*A182986(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A083659.P1669565919818247886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A182986 (n + 1)

end

end A083659.P1669565919818247886

/-! ## A083659.P17730861172412049619

`A036247(A028310(n))-A000007(n)`
-/

namespace A083659.P17730861172412049619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036247 (A028310 n).toNat - A000007 n

end

end A083659.P17730861172412049619

/-! ## A083659.P12693342104428633003

`gcd(A036247(A028310(n)), A130706(n))`
-/

namespace A083659.P12693342104428633003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036247 (A028310 n).toNat) (A130706 n)

end

end A083659.P12693342104428633003

/-! ## A083659.P14946513594390200754

`A036247(A028310(n))-A130706(2*n)`
-/

namespace A083659.P14946513594390200754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036247 (A028310 n).toNat - A130706 (2 * n)

end

end A083659.P14946513594390200754

/-! ## A083659.P2325676326040384407

`A036247(A000007(n)+n)-A000007(n)`
-/

namespace A083659.P2325676326040384407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036247 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A083659.P2325676326040384407

/-! ## A083659.P12089181937843981194

`A036247(n+2)%A036247(n+1)`
-/

namespace A083659.P12089181937843981194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036247 (n + 2)) (A036247 (n + 1))

end

end A083659.P12089181937843981194

/-!
# A083661: G.f.: 1/(1-x) * Sum_{k>=0} x^2^(k+2)/(1+x^2^k).

The programs for A083661, the canonical program `A083661.P3725117190280122076` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083661 has offset 1).

The definition of A083661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083661.P3725117190280122076

`a(floor((n-1)/2))+n%2` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083661

/-- `a(floor((n-1)/2))+n%2` -/
def P3725117190280122076.Spec : Prop :=
  ∀ n, (P3725117190280122076.a n : ℤ) = A083661 (n + 1)

theorem P3725117190280122076.correct : P3725117190280122076.Spec := by
  intro n
  simp only [A083661, Nat.add_sub_cancel]

end A083661

/-! ## A083661.P14249448540299799169

`a(floor((n-1)/2))+and(1, n)` with `a(0)=0, a(1)=0`
-/

namespace A083661.P14249448540299799169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + Nat.land 1 n

end

end A083661.P14249448540299799169

namespace A083661

/-- `a(floor((n-1)/2))+and(1, n)` -/
def P14249448540299799169.Spec : Prop :=
  ∀ n, (P14249448540299799169.a n : ℤ) = A083661 (n + 1)

theorem P14249448540299799169.correct : P14249448540299799169.Spec := by
  intro n
  simp only [A083661, Nat.add_sub_cancel, A083661.P14249448540299799169.a, A083661.P3725117190280122076.a, SequenceMachineLib.memo_apply]
  try simp

end A083661

/-! ## A083661.P12879027510786074984

`a(ceil(n/2)-1)+2-gcd(2, n)` with `a(0)=0, a(1)=0`
-/

namespace A083661.P12879027510786074984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (⌈(n : ℚ) / 2⌉ - 1).toNat + (2 - (Nat.gcd 2 n : ℤ))

end

end A083661.P12879027510786074984

namespace A083661

/-- `a(ceil(n/2)-1)+2-gcd(2, n)` -/
def P12879027510786074984.Spec : Prop :=
  ∀ n, P12879027510786074984.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P1262125249374162694

`∑[a(∑[floor(a(n-2))])-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083661.P1262125249374162694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083661.P1262125249374162694

namespace A083661

/-- `∑[a(∑[floor(a(n-2))])-a(n-1)]` -/
def P1262125249374162694.Spec : Prop :=
  ∀ n, P1262125249374162694.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P8846048486953260361

`A023416(n+1)-char[2^floor(log2(n+1))+n]`
-/

namespace A083661.P8846048486953260361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A083661.P8846048486953260361

namespace A083661

/-- `A023416(n+1)-char[2^floor(log2(n+1))+n]` -/
def P8846048486953260361.Spec : Prop :=
  ∀ n, P8846048486953260361.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P13822534057943632622

`A080791(n+1)-char[2^floor(log2(n+1))+n]`
-/

namespace A083661.P13822534057943632622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A083661.P13822534057943632622

namespace A083661

/-- `A080791(n+1)-char[2^floor(log2(n+1))+n]` -/
def P13822534057943632622.Spec : Prop :=
  ∀ n, P13822534057943632622.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P17749782684227459632

`A023416(A246592(n+1))`
-/

namespace A083661.P17749782684227459632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A246592 (n + 1)).toNat

end

end A083661.P17749782684227459632

namespace A083661

/-- `A023416(A246592(n+1))` -/
def P17749782684227459632.Spec : Prop :=
  ∀ n, P17749782684227459632.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P12902818997221824047

`A099396(n+1)-A048881(n)`
-/

namespace A083661.P12902818997221824047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099396 (n + 1) - A048881 n

end

end A083661.P12902818997221824047

namespace A083661

/-- `A099396(n+1)-A048881(n)` -/
def P12902818997221824047.Spec : Prop :=
  ∀ n, P12902818997221824047.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P15208385412827023456

`A006165(n+1)+A080791(n+1)-A078881(n+1)`
-/

namespace A083661.P15208385412827023456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 1) + (A080791 (n + 1) - A078881 (n + 1))

end

end A083661.P15208385412827023456

namespace A083661

/-- `A006165(n+1)+A080791(n+1)-A078881(n+1)` -/
def P15208385412827023456.Spec : Prop :=
  ∀ n, P15208385412827023456.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P3350868301059216524

`A006165(n+1)+A080791(n+1)-A006165(n+2)`
-/

namespace A083661.P3350868301059216524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 1) + (A080791 (n + 1) - A006165 (n + 2))

end

end A083661.P3350868301059216524

namespace A083661

/-- `A006165(n+1)+A080791(n+1)-A006165(n+2)` -/
def P3350868301059216524.Spec : Prop :=
  ∀ n, P3350868301059216524.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P2909540804074732847

`A160380(A126684(n+1))`
-/

namespace A083661.P2909540804074732847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A126684 (n + 1)).toNat

end

end A083661.P2909540804074732847

namespace A083661

/-- `A160380(A126684(n+1))` -/
def P2909540804074732847.Spec : Prop :=
  ∀ n, P2909540804074732847.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P9858255136290591340

`A160380(A227992(n+1))`
-/

namespace A083661.P9858255136290591340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A227992 (n + 1)).toNat

end

end A083661.P9858255136290591340

namespace A083661

/-- `A160380(A227992(n+1))` -/
def P9858255136290591340.Spec : Prop :=
  ∀ n, P9858255136290591340.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P5510803843335712657

`A285726(A253563(n+1))`
-/

namespace A083661.P5510803843335712657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (A253563 (n + 1)).toNat

end

end A083661.P5510803843335712657

namespace A083661

/-- `A285726(A253563(n+1))` -/
def P5510803843335712657.Spec : Prop :=
  ∀ n, P5510803843335712657.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P736273130712845163

`A023416(A112714(n+1))`
-/

namespace A083661.P736273130712845163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A112714 (n + 1)).toNat

end

end A083661.P736273130712845163

namespace A083661

/-- `A023416(A112714(n+1))` -/
def P736273130712845163.Spec : Prop :=
  ∀ n, P736273130712845163.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P11240401590073036061

`A037879(A277238(n+1))`
-/

namespace A083661.P11240401590073036061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037879 (A277238 (n + 1)).toNat

end

end A083661.P11240401590073036061

namespace A083661

/-- `A037879(A277238(n+1))` -/
def P11240401590073036061.Spec : Prop :=
  ∀ n, P11240401590073036061.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P1405840926355564412

`A285725(A253565(n+1))`
-/

namespace A083661.P1405840926355564412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285725 (A253565 (n + 1)).toNat

end

end A083661.P1405840926355564412

namespace A083661

/-- `A285725(A253565(n+1))` -/
def P1405840926355564412.Spec : Prop :=
  ∀ n, P1405840926355564412.a n = A083661 (n + 1)

end A083661

/-! ## A083661.P15399825990889223123

`A023416(A317407(2*n+1))`
-/

namespace A083661.P15399825990889223123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A317407 (2 * n + 1)).toNat

end

end A083661.P15399825990889223123

namespace A083661

/-- `A023416(A317407(2*n+1))` -/
def P15399825990889223123.Spec : Prop :=
  ∀ n, P15399825990889223123.a n = A083661 (n + 1)

end A083661

/-!
# A083662: a(n) = a(floor(n/2)) + a(floor(n/4)), n > 0; a(0)=1.

The programs for A083662, the canonical program `A083662.P7641579763503093838` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083662 has offset 0).

The definition of A083662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/2))+a(floor(n/4))` (program `A083662.P7641579763503093838`, by `A083662.P7641579763503093838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083662.P7641579763503093838

`a(floor(n/2))+a(floor(n/4))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083662

/-- `a(floor(n/2))+a(floor(n/4))` -/
def P7641579763503093838.Spec : Prop :=
  ∀ n, (P7641579763503093838.a n : ℤ) = A083662 n

theorem P7641579763503093838.correct : P7641579763503093838.Spec := by
  intro n
  simp only [A083662]

end A083662

/-! ## A083662.P17493219607664959687

`A007067(a(floor(n/2)))` with `a(0)=1`
-/

namespace A083662.P17493219607664959687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007067 (a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A083662.P17493219607664959687

namespace A083662

/-- `A007067(a(floor(n/2)))` -/
def P17493219607664959687.Spec : Prop :=
  ∀ n, P17493219607664959687.a n = A083662 n

end A083662

/-! ## A083662.P1676411136899518846

`A026355(a(floor(n/2)))` with `a(0)=1`
-/

namespace A083662.P1676411136899518846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026355 (a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A083662.P1676411136899518846

namespace A083662

/-- `A026355(a(floor(n/2)))` -/
def P1676411136899518846.Spec : Prop :=
  ∀ n, P1676411136899518846.a n = A083662 n

end A083662

/-! ## A083662.P13411995295461766455

`A000045(ceil(log2(n+1))+2)`
-/

namespace A083662.P13411995295461766455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌈Real.logb 2 (n + 1 : ℝ)⌉ + 2).toNat

end

end A083662.P13411995295461766455

namespace A083662

/-- `A000045(ceil(log2(n+1))+2)` -/
def P13411995295461766455.Spec : Prop :=
  ∀ n, P13411995295461766455.a n = A083662 n

end A083662

/-! ## A083662.P6881064018753046217

`A185357(ceil(log2(2*n+1)))`
-/

namespace A083662.P6881064018753046217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185357 ⌈Real.logb 2 (2 * n + 1 : ℝ)⌉.toNat

end

end A083662.P6881064018753046217

namespace A083662

/-- `A185357(ceil(log2(2*n+1)))` -/
def P6881064018753046217.Spec : Prop :=
  ∀ n, P6881064018753046217.a n = A083662 n

end A083662

/-! ## A083662.P6604461473121900975

`A022342(a(floor(n/2))+1)` with `a(0)=1`
-/

namespace A083662.P6604461473121900975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022342 (a ⌊(n : ℚ) / 2⌋.toNat + 1).toNat

end

end A083662.P6604461473121900975

namespace A083662

/-- `A022342(a(floor(n/2))+1)` -/
def P6604461473121900975.Spec : Prop :=
  ∀ n, P6604461473121900975.a n = A083662 n

end A083662

/-! ## A083662.P12127908435644588175

`A219640(a(floor(n/2)))+1` with `a(0)=1, a(1)=2`
-/

namespace A083662.P12127908435644588175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A219640 (a ⌊(n : ℚ) / 2⌋.toNat).toNat + 1

end

end A083662.P12127908435644588175

namespace A083662

/-- `A219640(a(floor(n/2)))+1` -/
def P12127908435644588175.Spec : Prop :=
  ∀ n, P12127908435644588175.a n = A083662 n

end A083662

/-! ## A083662.P461050860591276112

`A001611(ceil(log2(n+1))+2)-1`
-/

namespace A083662.P461050860591276112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (⌈Real.logb 2 (n + 1 : ℝ)⌉ + 2).toNat - 1

end

end A083662.P461050860591276112

namespace A083662

/-- `A001611(ceil(log2(n+1))+2)-1` -/
def P461050860591276112.Spec : Prop :=
  ∀ n, P461050860591276112.a n = A083662 n

end A083662

/-! ## A083662.P2743620996756484877

`A103609(2*(ceil(log2(n+1))+2))`
-/

namespace A083662.P2743620996756484877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (⌈Real.logb 2 (n + 1 : ℝ)⌉ + 2)).toNat

end

end A083662.P2743620996756484877

namespace A083662

/-- `A103609(2*(ceil(log2(n+1))+2))` -/
def P2743620996756484877.Spec : Prop :=
  ∀ n, P2743620996756484877.a n = A083662 n

end A083662

/-! ## A083662.P15924900442638138800

`A000071(floor(log2(3*n+1+n))+1)+1`
-/

namespace A083662.P15924900442638138800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (Nat.log 2 (3 * n + 1 + n) + 1) + 1

end

end A083662.P15924900442638138800

namespace A083662

/-- `A000071(floor(log2(3*n+1+n))+1)+1` -/
def P15924900442638138800.Spec : Prop :=
  ∀ n, P15924900442638138800.a n = A083662 n

end A083662

/-! ## A083662.P16486027427413571411

`A214127(A053644(n))`
-/

namespace A083662.P16486027427413571411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214127 (A053644 n).toNat

end

end A083662.P16486027427413571411

namespace A083662

/-- `A214127(A053644(n))` -/
def P16486027427413571411.Spec : Prop :=
  ∀ n, P16486027427413571411.a n = A083662 n

end A083662

/-! ## A083662.P3345156483294501350

`A071585(A003817(n))`
-/

namespace A083662.P3345156483294501350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A003817 n).toNat

end

end A083662.P3345156483294501350

namespace A083662

/-- `A071585(A003817(n))` -/
def P3345156483294501350.Spec : Prop :=
  ∀ n, P3345156483294501350.a n = A083662 n

end A083662

/-! ## A083662.P16990675873896324094

`A022290(A062383(n))`
-/

namespace A083662.P16990675873896324094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A062383 n).toNat

end

end A083662.P16990675873896324094

namespace A083662

/-- `A022290(A062383(n))` -/
def P16990675873896324094.Spec : Prop :=
  ∀ n, P16990675873896324094.a n = A083662 n

end A083662

/-! ## A083662.P4045414574065511077

`A214126(A003817(n)+1)`
-/

namespace A083662.P4045414574065511077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214126 (A003817 n + 1).toNat

end

end A083662.P4045414574065511077

namespace A083662

/-- `A214126(A003817(n)+1)` -/
def P4045414574065511077.Spec : Prop :=
  ∀ n, P4045414574065511077.a n = A083662 n

end A083662

/-! ## A083662.P11583819349980989889

`A245564(A062383(n)-1)`
-/

namespace A083662.P11583819349980989889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (A062383 n - 1).toNat

end

end A083662.P11583819349980989889

namespace A083662

/-- `A245564(A062383(n)-1)` -/
def P11583819349980989889.Spec : Prop :=
  ∀ n, P11583819349980989889.a n = A083662 n

end A083662

/-! ## A083662.P305663907065103852

`A048680(A004760(n+2)-n)`
-/

namespace A083662.P305663907065103852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A004760 (n + 2) - (n : ℤ)).toNat

end

end A083662.P305663907065103852

namespace A083662

/-- `A048680(A004760(n+2)-n)` -/
def P305663907065103852.Spec : Prop :=
  ∀ n, P305663907065103852.a n = A083662 n

end A083662

/-! ## A083662.P15602821217398468550

`A071585(or(A006068(n), A233279(n)))`
-/

namespace A083662.P15602821217398468550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (Int.lor (A006068 n) (A233279 n)).toNat

end

end A083662.P15602821217398468550

namespace A083662

/-- `A071585(or(A006068(n), A233279(n)))` -/
def P15602821217398468550.Spec : Prop :=
  ∀ n, P15602821217398468550.a n = A083662 n

end A083662

/-! ## A083662.P9222779633957535399

`A071585(A053645(A054429(n+1)+1)+n)`
-/

namespace A083662.P9222779633957535399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A053645 (A054429 (n + 1) + 1).toNat + (n : ℤ)).toNat

end

end A083662.P9222779633957535399

namespace A083662

/-- `A071585(A053645(A054429(n+1)+1)+n)` -/
def P9222779633957535399.Spec : Prop :=
  ∀ n, P9222779633957535399.a n = A083662 n

end A083662

/-! ## A083662.P8471051230072464029

`A124229(A101925(n))`
-/

namespace A083662.P8471051230072464029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124229 (A101925 n).toNat

end

end A083662.P8471051230072464029

namespace A083662

/-- `A124229(A101925(n))` -/
def P8471051230072464029.Spec : Prop :=
  ∀ n, P8471051230072464029.a n = A083662 n

end A083662

/-!
# A083666: Palindromes arising when building A083664.

The programs for A083666, there is no canonical definition to state claims against.
-/

/-! ## A083666.P9420518223005341116

`A262038(A298796(2*n)+n+1)`
-/

namespace A083666.P9420518223005341116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A298796 (2 * n) + (n + 1 : ℤ)).toNat

end

end A083666.P9420518223005341116

/-!
# A083667: Number of antisymmetric binary relations on a set of n labeled points.

The programs for A083667, the canonical program `A083667.P16451561477864388099` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083667 has offset 0).

The definition of A083667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083667.P16451561477864388099

`2^n*3^C(n, 2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083667

/-- `2^n*3^C(n, 2)` -/
def P16451561477864388099.Spec : Prop :=
  ∀ n, (P16451561477864388099.a n : ℤ) = A083667 n

theorem P16451561477864388099.correct : P16451561477864388099.Spec := by
  intro n
  simp only [A083667]

end A083667

/-! ## A083667.P12542204472527180180

`2^n*3^((n²-n)/2)`
-/

namespace A083667.P12542204472527180180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) * (3 : ℝ) ^ (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 : ℝ)

end

end A083667.P12542204472527180180

namespace A083667

/-- `2^n*3^((n²-n)/2)` -/
def P12542204472527180180.Spec : Prop :=
  ∀ n, P12542204472527180180.a n = (A083667 n : ℝ)

end A083667

/-! ## A083667.P3641237033710989543

`3*a(n-1)²/a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A083667.P3641237033710989543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) ^ 2 / a (n - 2)

end

end A083667.P3641237033710989543

namespace A083667

/-- `3*a(n-1)²/a(n-2)` -/
def P3641237033710989543.Spec : Prop :=
  ∀ n, P3641237033710989543.a n = (A083667 n : ℚ)

end A083667

/-! ## A083667.P10519531106277057105

`∏[3*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A083667.P10519531106277057105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083667.P10519531106277057105

namespace A083667

/-- `∏[3*a(n-1)]` -/
def P10519531106277057105.Spec : Prop :=
  ∀ n, (P10519531106277057105.a n : ℤ) = A083667 n

end A083667

/-! ## A083667.P11088867268606000926

`lcm(2^n, 3^C(n, 2))`
-/

namespace A083667.P11088867268606000926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (3 ^ Nat.choose n 2)

end

end A083667.P11088867268606000926

namespace A083667

/-- `lcm(2^n, 3^C(n, 2))` -/
def P11088867268606000926.Spec : Prop :=
  ∀ n, (P11088867268606000926.a n : ℤ) = A083667 n

end A083667

/-!
# A083668: Prime indices of prime Fibonacci numbers.

The programs for A083668, there is no canonical definition to state claims against.
-/

/-! ## A083668.P128736043642806436

`A339173(n+1)+2`
-/

namespace A083668.P128736043642806436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339173 (n + 1) + 2

end

end A083668.P128736043642806436

/-! ## A083668.P9059553189126276446

`or(1, A069744(n+2))`
-/

namespace A083668.P9059553189126276446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069744 (n + 2))

end

end A083668.P9059553189126276446

/-! ## A083668.P4702017386170118892

`record[xor(1, A069744(n+1))]`
-/

namespace A083668.P4702017386170118892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A069744 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083668.P4702017386170118892

/-! ## A083668.P30895350254840977

`A001605(ceil(cosh(sin(n))+n))`
-/

namespace A083668.P30895350254840977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A083668.P30895350254840977

/-! ## A083668.P9580704678055840500

`2*A117517(n+1)+1`
-/

namespace A083668.P9580704678055840500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117517 (n + 1) + 1

end

end A083668.P9580704678055840500

/-! ## A083668.P2398389015044498724

`or(1, A001605(n+2)-1)`
-/

namespace A083668.P2398389015044498724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001605 (n + 2) - 1)

end

end A083668.P2398389015044498724

/-! ## A083668.P18259278971534811259

`A001605(gcd(6, 2^n)+n)`
-/

namespace A083668.P18259278971534811259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (Nat.gcd 6 (2 ^ n) + n)

end

end A083668.P18259278971534811259

/-! ## A083668.P11858125458348719743

`A001605((n+2)/ceil(acot(n)))`
-/

namespace A083668.P11858125458348719743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat

end

end A083668.P11858125458348719743

/-! ## A083668.P867869950563379902

`A001605(ceil(sqrt((n+1)²+n)))`
-/

namespace A083668.P867869950563379902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 ⌈Real.sqrt ((n + 1) ^ 2 + n : ℝ)⌉.toNat

end

end A083668.P867869950563379902

/-! ## A083668.P5628531479879696812

`A001605(n+2)-A332219(n²+5)`
-/

namespace A083668.P5628531479879696812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 2) - A332219 (n ^ 2 + 5)

end

end A083668.P5628531479879696812

/-!
# A083669: Number of ordered quintuples (a,b,c,d,e), -n <= a,b,c,d,e <= n, such that a+b+c+d+e = 0.

The programs for A083669, the canonical program `A083669.P6791237294177357705` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083669 has offset 0).

The definition of A083669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083669.P9791305706295349589

`ogf((1+46x+136x^2+46x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A083669.P9791305706295349589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 46, 136, 46, 1] [1, -5, 10, -10, 5, -1] n

end

end A083669.P9791305706295349589

namespace A083669

/-- `ogf((1+46x+136x^2+46x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P9791305706295349589.Spec : Prop :=
  ∀ n, P9791305706295349589.a n = A083669 n

end A083669

/-! ## A083669.P6791237294177357705

`1+5*n*(n+1)*(23*n²+23*n+14)/12`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083669

/-- `1+5*n*(n+1)*(23*n²+23*n+14)/12` -/
def P6791237294177357705.Spec : Prop :=
  ∀ n, P6791237294177357705.a n = (A083669 n : ℚ)

end A083669

/-! ## A083669.P4370525185580901295

`A077044(Δ[n²])`
-/

namespace A083669.P4370525185580901295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077044 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A083669.P4370525185580901295

namespace A083669

/-- `A077044(Δ[n²])` -/
def P4370525185580901295.Spec : Prop :=
  ∀ n, P4370525185580901295.a n = A083669 n

end A083669

/-! ## A083669.P12305447045033543252

`record[A077044(n^and(1, n))]`
-/

namespace A083669.P12305447045033543252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077044 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083669.P12305447045033543252

namespace A083669

/-- `record[A077044(n^and(1, n))]` -/
def P12305447045033543252.Spec : Prop :=
  ∀ n, P12305447045033543252.a n = A083669 n

end A083669

/-! ## A083669.P1966179682974711483

`record[A077044(A093178(n))]`
-/

namespace A083669.P1966179682974711483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077044 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083669.P1966179682974711483

namespace A083669

/-- `record[A077044(A093178(n))]` -/
def P1966179682974711483.Spec : Prop :=
  ∀ n, P1966179682974711483.a n = A083669 n

end A083669

/-! ## A083669.P7226709937126123846

`record[A077044(A000265(n+1))]`
-/

namespace A083669.P7226709937126123846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077044 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083669.P7226709937126123846

namespace A083669

/-- `record[A077044(A000265(n+1))]` -/
def P7226709937126123846.Spec : Prop :=
  ∀ n, P7226709937126123846.a n = A083669 n

end A083669

/-! ## A083669.P9862319671013759687

`record[gcd(A035363(n), A077044(n))]`
-/

namespace A083669.P9862319671013759687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A077044 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083669.P9862319671013759687

namespace A083669

/-- `record[gcd(A035363(n), A077044(n))]` -/
def P9862319671013759687.Spec : Prop :=
  ∀ n, (P9862319671013759687.a n : ℤ) = A083669 n

end A083669

/-! ## A083669.P3911830355882355563

`A077044(2*n+1)%A017332(n)`
-/

namespace A083669.P3911830355882355563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077044 (2 * n + 1)) (A017332 n)

end

end A083669.P3911830355882355563

namespace A083669

/-- `A077044(2*n+1)%A017332(n)` -/
def P3911830355882355563.Spec : Prop :=
  ∀ n, P3911830355882355563.a n = A083669 n

end A083669

/-! ## A083669.P13958726117447413037

`gcd(A008683(A022144(n)), A077044(2*n+1))`
-/

namespace A083669.P13958726117447413037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A022144 n).toNat) (A077044 (2 * n + 1))

end

end A083669.P13958726117447413037

namespace A083669

/-- `gcd(A008683(A022144(n)), A077044(2*n+1))` -/
def P13958726117447413037.Spec : Prop :=
  ∀ n, (P13958726117447413037.a n : ℤ) = A083669 n

end A083669

/-! ## A083669.P5061875203424026770

`record[A077044(A204154(n+1))]`
-/

namespace A083669.P5061875203424026770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077044 (A204154 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083669.P5061875203424026770

namespace A083669

/-- `record[A077044(A204154(n+1))]` -/
def P5061875203424026770.Spec : Prop :=
  ∀ n, P5061875203424026770.a n = A083669 n

end A083669

/-!
# A083670: Number of different antisymmetric relations on n unlabeled points.

The programs for A083670, there is no canonical definition to state claims against.
-/

/-! ## A083670.P16412303681054244304

`floor(A095100(n^n+n)/4)+1`
-/

namespace A083670.P16412303681054244304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095100 (n ^ n + n) : ℚ) / 4⌋ + 1

end

end A083670.P16412303681054244304

/-!
# A083671: Array read by rows in which each row describes in words the composition of the previous row.

The programs for A083671, there is no canonical definition to state claims against.
-/

/-! ## A083671.P13572483356727265539

`gcd(A000217(A208437(n+1)), A055188(n+1))`
-/

namespace A083671.P13572483356727265539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A208437 (n + 1)).toNat) (A055188 (n + 1))

end

end A083671.P13572483356727265539

/-!
# A083672: Binomial transform of 1,8,48,256,1280,6144,... (cf. A002697).

The programs for A083672, the canonical program `A083672.P10179614937936149265` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083672 has offset 0).

The definition of A083672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083672.P11527279423540908414

`ogf((1-3x+3x^2-x^3)/(1-4x-2x^2+12x^3+9x^4))`
-/

namespace A083672.P11527279423540908414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -4, -2, 12, 9] n

end

end A083672.P11527279423540908414

namespace A083672

/-- `ogf((1-3x+3x^2-x^3)/(1-4x-2x^2+12x^3+9x^4))` -/
def P11527279423540908414.Spec : Prop :=
  ∀ n, P11527279423540908414.a n = A083672 n

end A083672

/-! ## A083672.P10179614937936149265

`1/6*((n+3)*3^n+(3*n+3)*(-1)^n)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083672

/-- `1/6*((n+3)*3^n+(3*n+3)*(-1)^n)` -/
def P10179614937936149265.Spec : Prop :=
  ∀ n, P10179614937936149265.a n = (A083672 n : ℚ)

end A083672

/-! ## A083672.P2623031273771568743

`A082306(n)-Δ[A110660(n)]`
-/

namespace A083672.P2623031273771568743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082306 n - (f1 (n + 1) - f1 n)

end

end A083672.P2623031273771568743

namespace A083672

/-- `A082306(n)-Δ[A110660(n)]` -/
def P2623031273771568743.Spec : Prop :=
  ∀ n, P2623031273771568743.a n = A083672 n

end A083672

/-! ## A083672.P8368014851453661913

`or(3, A082306(n)-A093178(n))-2`
-/

namespace A083672.P8368014851453661913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A082306 n - A093178 n) - 2

end

end A083672.P8368014851453661913

namespace A083672

/-- `or(3, A082306(n)-A093178(n))-2` -/
def P8368014851453661913.Spec : Prop :=
  ∀ n, P8368014851453661913.a n = A083672 n

end A083672

/-! ## A083672.P4421839715508630741

`A082306(n)-A005843(A142150(n+1))`
-/

namespace A083672.P4421839715508630741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082306 n - A005843 (A142150 (n + 1)).toNat

end

end A083672.P4421839715508630741

namespace A083672

/-- `A082306(n)-A005843(A142150(n+1))` -/
def P4421839715508630741.Spec : Prop :=
  ∀ n, P4421839715508630741.a n = A083672 n

end A083672

/-! ## A083672.P15736327931436001495

`A082306(n)-A142150(A106833(n+1))`
-/

namespace A083672.P15736327931436001495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082306 n - A142150 (A106833 (n + 1)).toNat

end

end A083672.P15736327931436001495

namespace A083672

/-- `A082306(n)-A142150(A106833(n+1))` -/
def P15736327931436001495.Spec : Prop :=
  ∀ n, P15736327931436001495.a n = A083672 n

end A083672

/-! ## A083672.P12597244052041994912

`A082306(n)-A142150(A145979(2*n))`
-/

namespace A083672.P12597244052041994912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082306 n - A142150 (A145979 (2 * n)).toNat

end

end A083672.P12597244052041994912

namespace A083672

/-- `A082306(n)-A142150(A145979(2*n))` -/
def P12597244052041994912.Spec : Prop :=
  ∀ n, P12597244052041994912.a n = A083672 n

end A083672

/-! ## A083672.P15275185151285759987

`A009001(2*n)+A082306(n)-A093178(n)`
-/

namespace A083672.P15275185151285759987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) + (A082306 n - A093178 n)

end

end A083672.P15275185151285759987

namespace A083672

/-- `A009001(2*n)+A082306(n)-A093178(n)` -/
def P15275185151285759987.Spec : Prop :=
  ∀ n, P15275185151285759987.a n = A083672 n

end A083672

/-! ## A083672.P7034607696877254990

`A360036(n+1)+A122983(n)-A360036(n)`
-/

namespace A083672.P7034607696877254990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360036 (n + 1) + (A122983 n - A360036 n)

end

end A083672.P7034607696877254990

namespace A083672

/-- `A360036(n+1)+A122983(n)-A360036(n)` -/
def P7034607696877254990.Spec : Prop :=
  ∀ n, P7034607696877254990.a n = A083672 n

end A083672

/-!
# A083673: First differences have period 6: 2,-1,3,4,-3,7, 2,-1,3,4,-3,7, 2,-1,...

The programs for A083673, the canonical program `A083673.P3569106546571915571` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083673 has offset 1).

The definition of A083673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083673.P3216900748747876596

`ogf((2+2x-x^2+3x^3+4x^4-3x^5+5x^6)/(1-x-x^6+x^7))`
-/

namespace A083673.P3216900748747876596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -1, 3, 4, -3, 5] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A083673.P3216900748747876596

namespace A083673

/-- `ogf((2+2x-x^2+3x^3+4x^4-3x^5+5x^6)/(1-x-x^6+x^7))` -/
def P3216900748747876596.Spec : Prop :=
  ∀ n, P3216900748747876596.a n = A083673 (n + 1)

end A083673

/-! ## A083673.P3569106546571915571

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=2, a(1)=4, a(2)=3, a(3)=6, a(4)=10, a(5)=7, a(6)=14`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083673

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P3569106546571915571.Spec : Prop :=
  ∀ n, P3569106546571915571.a n = A083673 (n + 1)

theorem P3569106546571915571.correct : P3569106546571915571.Spec := by
  intro n
  simp only [A083673, Nat.add_sub_cancel]

end A083673

/-! ## A083673.P6948820096152253451

`A004442(Δ[n²]-A214684(n+1))+1`
-/

namespace A083673.P6948820096152253451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A214684 (n + 1)).toNat + 1

end

end A083673.P6948820096152253451

namespace A083673

/-- `A004442(Δ[n²]-A214684(n+1))+1` -/
def P6948820096152253451.Spec : Prop :=
  ∀ n, P6948820096152253451.a n = A083673 (n + 1)

end A083673

/-! ## A083673.P2689340967763940088

`A014681(2*n+1-A109362(n))`
-/

namespace A083673.P2689340967763940088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 ((2 * n + 1 : ℤ) - A109362 n).toNat

end

end A083673.P2689340967763940088

namespace A083673

/-- `A014681(2*n+1-A109362(n))` -/
def P2689340967763940088.Spec : Prop :=
  ∀ n, P2689340967763940088.a n = A083673 (n + 1)

end A083673

/-! ## A083673.P7802216873861610582

`A014681(2*(n+1)-A214684(n+1))`
-/

namespace A083673.P7802216873861610582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 ((2 * (n + 1) : ℤ) - A214684 (n + 1)).toNat

end

end A083673.P7802216873861610582

namespace A083673

/-- `A014681(2*(n+1)-A214684(n+1))` -/
def P7802216873861610582.Spec : Prop :=
  ∀ n, P7802216873861610582.a n = A083673 (n + 1)

end A083673

/-! ## A083673.P5881742384817704323

`A014681(xor(A005408(n), A109362(n)))`
-/

namespace A083673.P5881742384817704323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (Int.xor (A005408 n) (A109362 n)).toNat

end

end A083673.P5881742384817704323

namespace A083673

/-- `A014681(xor(A005408(n), A109362(n)))` -/
def P5881742384817704323.Spec : Prop :=
  ∀ n, P5881742384817704323.a n = A083673 (n + 1)

end A083673

/-!
# A083674: Triangular numbers whose sum of divisors is also a triangular number.

The programs for A083674, there is no canonical definition to state claims against.
-/

/-! ## A083674.P106144229236101224

`C(A175849(n+1)+1, 2)`
-/

namespace A083674.P106144229236101224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175849 (n + 1) + 1).toNat 2

end

end A083674.P106144229236101224

/-! ## A083674.P13124672391558071498

`A000217(A175849(n+1))`
-/

namespace A083674.P13124672391558071498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A175849 (n + 1)).toNat

end

end A083674.P13124672391558071498

/-! ## A083674.P6403443241676552359

`A161680(A175849(n+1)+1)`
-/

namespace A083674.P6403443241676552359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A175849 (n + 1) + 1).toNat

end

end A083674.P6403443241676552359

/-! ## A083674.P1487364641449151649

`A179865(A175849(n+1)+1)`
-/

namespace A083674.P1487364641449151649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A175849 (n + 1) + 1).toNat

end

end A083674.P1487364641449151649

/-! ## A083674.P17850384883053870701

`A000124(A175849(n+1))-A007318(∑[n])`
-/

namespace A083674.P17850384883053870701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A175849 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083674.P17850384883053870701

/-!
# A083675: Triangular numbers whose sum of aliquot divisors is also a triangular number.

The programs for A083675, there is no canonical definition to state claims against.
-/

/-! ## A083675.P1745984095804108099

`∩[C(n+1, 2), A045745(n+1)]`
-/

namespace A083675.P1745984095804108099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083675.P1745984095804108099

/-! ## A083675.P14990775272603755163

`∩[A045745(n+1), A000217(n)]`
-/

namespace A083675.P14990775272603755163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083675.P14990775272603755163

/-! ## A083675.P5053683174612787299

`∩[A045745(n+1), A375999(n+1)]`
-/

namespace A083675.P5053683174612787299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083675.P5053683174612787299

/-! ## A083675.P13932400456938969811

`∩[A045745(n+1), A000124(n)-1]`
-/

namespace A083675.P13932400456938969811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083675.P13932400456938969811

/-!
# A083676: Triangular numbers whose sum of aliquot divisors is a prime number.

The programs for A083676, there is no canonical definition to state claims against.
-/

/-! ## A083676.P6300881014185066295

`∩[A037020(n+1), A000217(n)]`
-/

namespace A083676.P6300881014185066295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083676.P6300881014185066295

/-! ## A083676.P1273940890813739397

`∩[A037020(n+1), A253145(n)]`
-/

namespace A083676.P1273940890813739397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083676.P1273940890813739397

/-! ## A083676.P7480337579200756122

`∩[A014493(n+1), A037020(n+1)]`
-/

namespace A083676.P7480337579200756122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083676.P7480337579200756122

/-! ## A083676.P12699850311073017464

`∩[A037020(n+1), A074314(n+1)]`
-/

namespace A083676.P12699850311073017464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083676.P12699850311073017464

/-! ## A083676.P8377531140915163633

`∩[A037020(n+1), A129966(n+1)]`
-/

namespace A083676.P8377531140915163633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083676.P8377531140915163633

/-!
# A083678: Numbers m = d_1 d_2 ... d_k (in base 10) with properties that k is even and d_i + d_{k+1-i} = 10 for all i.

The programs for A083678, there is no canonical definition to state claims against.
-/

/-! ## A083678.P10371052175118738038

`filter[A299539(n+1), A130630(#)]`
-/

namespace A083678.P10371052175118738038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130630 (f1 j).toNat = 1) n)

end

end A083678.P10371052175118738038

/-! ## A083678.P13265110406961587886

`filter[A299539(n+1), A156595(#)]`
-/

namespace A083678.P13265110406961587886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A083678.P13265110406961587886

/-! ## A083678.P12908980416247523250

`filter[A299539(n+2), A011655(#)]`
-/

namespace A083678.P12908980416247523250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A083678.P12908980416247523250

/-! ## A083678.P1069811704453519423

`filter[A299539(n+2), A014578(#)]`
-/

namespace A083678.P1069811704453519423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A083678.P1069811704453519423

/-! ## A083678.P9740322556139489011

`filter[A299539(n+2), A267208(#)]`
-/

namespace A083678.P9740322556139489011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A083678.P9740322556139489011

/-!
# A083681: Sum of divisors of semiprimes.

The programs for A083681, the canonical program `A083681.P17881450193974693801` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083681 has offset 1).

The definition of A083681 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083681.P17881450193974693801

`A000203(A001358(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A083681

/-- `A000203(A001358(n+1))` -/
def P17881450193974693801.Spec : Prop :=
  ∀ n, P17881450193974693801.a n = A083681 (n + 1)

theorem P17881450193974693801.correct : P17881450193974693801.Spec := by
  intro n
  simp only [A083681, Nat.add_sub_cancel]

end A083681

/-! ## A083681.P672373830431068873

`∑{d}[A001358(n+1), #]`
-/

namespace A083681.P672373830431068873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A083681.P672373830431068873

namespace A083681

/-- `∑{d}[A001358(n+1), #]` -/
def P672373830431068873.Spec : Prop :=
  ∀ n, (P672373830431068873.a n : ℤ) = A083681 (n + 1)

end A083681

/-! ## A083681.P8941609645820805709

`∑{d}[A186621(n+1)+1, #]`
-/

namespace A083681.P8941609645820805709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A083681.P8941609645820805709

namespace A083681

/-- `∑{d}[A186621(n+1)+1, #]` -/
def P8941609645820805709.Spec : Prop :=
  ∀ n, (P8941609645820805709.a n : ℤ) = A083681 (n + 1)

end A083681

/-! ## A083681.P4701553231298956888

`∑{d}[A075818(n+1)/2, #]`
-/

namespace A083681.P4701553231298956888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A083681.P4701553231298956888

namespace A083681

/-- `∑{d}[A075818(n+1)/2, #]` -/
def P4701553231298956888.Spec : Prop :=
  ∀ n, (P4701553231298956888.a n : ℤ) = A083681 (n + 1)

end A083681

/-! ## A083681.P10077045497390018190

`∑{d}[eq[1, A064911(n+1)]+1, #]`
-/

namespace A083681.P10077045497390018190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A083681.P10077045497390018190

namespace A083681

/-- `∑{d}[eq[1, A064911(n+1)]+1, #]` -/
def P10077045497390018190.Spec : Prop :=
  ∀ n, (P10077045497390018190.a n : ℤ) = A083681 (n + 1)

end A083681

/-! ## A083681.P4067789699851143739

`∑{d}[eq[2, A001222(n+1)]+1, #]`
-/

namespace A083681.P4067789699851143739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A083681.P4067789699851143739

namespace A083681

/-- `∑{d}[eq[2, A001222(n+1)]+1, #]` -/
def P4067789699851143739.Spec : Prop :=
  ∀ n, (P4067789699851143739.a n : ℤ) = A083681 (n + 1)

end A083681

/-! ## A083681.P16375145998760163175

`∑{d}[eq[2, A033273(n+1)]+1, #]`
-/

namespace A083681.P16375145998760163175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A083681.P16375145998760163175

namespace A083681

/-- `∑{d}[eq[2, A033273(n+1)]+1, #]` -/
def P16375145998760163175.Spec : Prop :=
  ∀ n, (P16375145998760163175.a n : ℤ) = A083681 (n + 1)

end A083681

/-! ## A083681.P9572471236113834332

`∑{d}[eq[2, A342085(n+1)]+1, #]`
-/

namespace A083681.P9572471236113834332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A083681.P9572471236113834332

namespace A083681

/-- `∑{d}[eq[2, A342085(n+1)]+1, #]` -/
def P9572471236113834332.Spec : Prop :=
  ∀ n, (P9572471236113834332.a n : ℤ) = A083681 (n + 1)

end A083681

/-! ## A083681.P6952702799749639735

`∑{d}[A175708(n+1)+1+n, #]`
-/

namespace A083681.P6952702799749639735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A083681.P6952702799749639735

namespace A083681

/-- `∑{d}[A175708(n+1)+1+n, #]` -/
def P6952702799749639735.Spec : Prop :=
  ∀ n, (P6952702799749639735.a n : ℤ) = A083681 (n + 1)

end A083681

/-! ## A083681.P16758439792727671520

`A000203(sqrt(A074985(n+1)))`
-/

namespace A083681.P16758439792727671520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A083681.P16758439792727671520

namespace A083681

/-- `A000203(sqrt(A074985(n+1)))` -/
def P16758439792727671520.Spec : Prop :=
  ∀ n, P16758439792727671520.a n = A083681 (n + 1)

end A083681

/-! ## A083681.P4670761812150505529

`A000203(A186621(n+1)+1)`
-/

namespace A083681.P4670761812150505529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A186621 (n + 1) + 1).toNat

end

end A083681.P4670761812150505529

namespace A083681

/-- `A000203(A186621(n+1)+1)` -/
def P4670761812150505529.Spec : Prop :=
  ∀ n, P4670761812150505529.a n = A083681 (n + 1)

theorem P4670761812150505529.correct : P4670761812150505529.Spec := by
  intro n
  simp only [A083681, Nat.add_sub_cancel, A083681.P4670761812150505529.a, A083681.P17881450193974693801.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001358, A001358.P632087320844056370.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083681

/-! ## A083681.P3996339065921005718

`A000203(A088707(n+1)-1)`
-/

namespace A083681.P3996339065921005718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A088707 (n + 1) - 1).toNat

end

end A083681.P3996339065921005718

namespace A083681

/-- `A000203(A088707(n+1)-1)` -/
def P3996339065921005718.Spec : Prop :=
  ∀ n, P3996339065921005718.a n = A083681 (n + 1)

end A083681

/-! ## A083681.P3446018093588934098

`A000203(A075818(n+1)/2)`
-/

namespace A083681.P3446018093588934098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A083681.P3446018093588934098

namespace A083681

/-- `A000203(A075818(n+1)/2)` -/
def P3446018093588934098.Spec : Prop :=
  ∀ n, P3446018093588934098.a n = A083681 (n + 1)

end A083681

/-! ## A083681.P2968482894839641130

`A000203(eq[2, A001222(n+1)]+1)`
-/

namespace A083681.P2968482894839641130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A083681.P2968482894839641130

namespace A083681

/-- `A000203(eq[2, A001222(n+1)]+1)` -/
def P2968482894839641130.Spec : Prop :=
  ∀ n, P2968482894839641130.a n = A083681 (n + 1)

end A083681

/-! ## A083681.P6794372275698924297

`A083682(n+1)+A001358(n+1)`
-/

namespace A083681.P6794372275698924297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083682 (n + 1) + A001358 (n + 1)

end

end A083681.P6794372275698924297

namespace A083681

/-- `A083682(n+1)+A001358(n+1)` -/
def P6794372275698924297.Spec : Prop :=
  ∀ n, P6794372275698924297.a n = A083681 (n + 1)

end A083681

/-! ## A083681.P10038182064737828766

`A000203(A175708(n+1)+1+n)`
-/

namespace A083681.P10038182064737828766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A175708 (n + 1) + 1 + (n : ℤ)).toNat

end

end A083681.P10038182064737828766

namespace A083681

/-- `A000203(A175708(n+1)+1+n)` -/
def P10038182064737828766.Spec : Prop :=
  ∀ n, P10038182064737828766.a n = A083681 (n + 1)

theorem P10038182064737828766.correct : P10038182064737828766.Spec := by
  intro n
  simp only [A083681, Nat.add_sub_cancel, A083681.P10038182064737828766.a, A083681.P17881450193974693801.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001358, A001358.P632087320844056370.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083681

/-! ## A083681.P492666984774174155

`A257533(n+1)+A088707(n+1)`
-/

namespace A083681.P492666984774174155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257533 (n + 1) + A088707 (n + 1)

end

end A083681.P492666984774174155

namespace A083681

/-- `A257533(n+1)+A088707(n+1)` -/
def P492666984774174155.Spec : Prop :=
  ∀ n, P492666984774174155.a n = A083681 (n + 1)

theorem P492666984774174155.correct : P492666984774174155.Spec := by
  intro n
  simp only [A083681, Nat.add_sub_cancel, A083681.P492666984774174155.a, A083681.P17881450193974693801.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001358, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A257533, A257533.P4837027764855834530.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083681

/-! ## A083681.P11941699039330907715

`A000203(A100493(n+1)-(n+1))`
-/

namespace A083681.P11941699039330907715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A100493 (n + 1) - (n + 1 : ℤ)).toNat

end

end A083681.P11941699039330907715

namespace A083681

/-- `A000203(A100493(n+1)-(n+1))` -/
def P11941699039330907715.Spec : Prop :=
  ∀ n, P11941699039330907715.a n = A083681 (n + 1)

theorem P11941699039330907715.correct : P11941699039330907715.Spec := by
  intro n
  simp only [A083681, Nat.add_sub_cancel, A083681.P11941699039330907715.a, A083681.P17881450193974693801.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001358, A001358.P632087320844056370.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083681

/-! ## A083681.P9888818941805946517

`A001358(n+1)+A257533(n+1)+1`
-/

namespace A083681.P9888818941805946517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A257533 (n + 1) + 1)

end

end A083681.P9888818941805946517

namespace A083681

/-- `A001358(n+1)+A257533(n+1)+1` -/
def P9888818941805946517.Spec : Prop :=
  ∀ n, P9888818941805946517.a n = A083681 (n + 1)

theorem P9888818941805946517.correct : P9888818941805946517.Spec := by
  intro n
  simp only [A083681, Nat.add_sub_cancel, A083681.P9888818941805946517.a, A083681.P17881450193974693801.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001358, A001358.P632087320844056370.a, A257533, A257533.P4837027764855834530.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083681

/-! ## A083681.P11288848362476191700

`A000203(eq[n-1-a(A001222(n))², n-2])` with `a(0)=1, a(1)=0`
-/

namespace A083681.P11288848362476191700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - 1 - f1 (A001222 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A083681.P11288848362476191700

namespace A083681

/-- `A000203(eq[n-1-a(A001222(n))², n-2])` -/
def P11288848362476191700.Spec : Prop :=
  ∀ n, P11288848362476191700.a n = A083681 (n + 1)

end A083681

/-!
# A083682: Sum of aliquot divisors of semiprimes.

The programs for A083682, the canonical program `A083682.P5462783992102275873` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083682 has offset 1).

The definition of A083682 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083682.P5462783992102275873

`A001065(A001358(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A083682

/-- `A001065(A001358(n+1))` -/
def P5462783992102275873.Spec : Prop :=
  ∀ n, P5462783992102275873.a n = A083682 (n + 1)

theorem P5462783992102275873.correct : P5462783992102275873.Spec := by
  intro n
  simp only [A083682, Nat.add_sub_cancel]

end A083682

/-! ## A083682.P11714207938104013643

`A257533(n+1)+1`
-/

namespace A083682.P11714207938104013643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257533 (n + 1) + 1

end

end A083682.P11714207938104013643

namespace A083682

/-- `A257533(n+1)+1` -/
def P11714207938104013643.Spec : Prop :=
  ∀ n, P11714207938104013643.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P16916660561428470373

`∑{p}[A088707(n+1)-1, #]+1`
-/

namespace A083682.P16916660561428470373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1

end

end A083682.P16916660561428470373

namespace A083682

/-- `∑{p}[A088707(n+1)-1, #]+1` -/
def P16916660561428470373.Spec : Prop :=
  ∀ n, (P16916660561428470373.a n : ℤ) = A083682 (n + 1)

end A083682

/-! ## A083682.P16983826296929230621

`A008472(sqrt(A074985(n+1)))+1`
-/

namespace A083682.P16983826296929230621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat + 1

end

end A083682.P16983826296929230621

namespace A083682

/-- `A008472(sqrt(A074985(n+1)))+1` -/
def P16983826296929230621.Spec : Prop :=
  ∀ n, P16983826296929230621.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P16835264442339854877

`A083681(n+1)-A001358(n+1)`
-/

namespace A083682.P16835264442339854877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083681 (n + 1) - A001358 (n + 1)

end

end A083682.P16835264442339854877

namespace A083682

/-- `A083681(n+1)-A001358(n+1)` -/
def P16835264442339854877.Spec : Prop :=
  ∀ n, P16835264442339854877.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P2272513644746570172

`∑{d}[A001358(n+1), #-A000010(#)]`
-/

namespace A083682.P2272513644746570172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A083682.P2272513644746570172

namespace A083682

/-- `∑{d}[A001358(n+1), #-A000010(#)]` -/
def P2272513644746570172.Spec : Prop :=
  ∀ n, P2272513644746570172.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P3117387262637851670

`A083681(n+1)+1-A088707(n+1)`
-/

namespace A083682.P3117387262637851670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083681 (n + 1) + (1 - A088707 (n + 1))

end

end A083682.P3117387262637851670

namespace A083682

/-- `A083681(n+1)+1-A088707(n+1)` -/
def P3117387262637851670.Spec : Prop :=
  ∀ n, P3117387262637851670.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P7431209514648508715

`A000203(A001358(n+1))+1-A088707(n+1)`
-/

namespace A083682.P7431209514648508715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001358 (n + 1)).toNat + (1 - A088707 (n + 1))

end

end A083682.P7431209514648508715

namespace A083682

/-- `A000203(A001358(n+1))+1-A088707(n+1)` -/
def P7431209514648508715.Spec : Prop :=
  ∀ n, P7431209514648508715.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P13506870168489446082

`∑{d}[A001358(A000027(n+1)), #]-A001358(n+1)`
-/

namespace A083682.P13506870168489446082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A001358 (n + 1)

end

end A083682.P13506870168489446082

namespace A083682

/-- `∑{d}[A001358(A000027(n+1)), #]-A001358(n+1)` -/
def P13506870168489446082.Spec : Prop :=
  ∀ n, P13506870168489446082.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P15748808588632283295

`A000203(A088707(n+1)-1)-(A088707(n+1)-1)`
-/

namespace A083682.P15748808588632283295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A088707 (n + 1) - 1).toNat - (A088707 (n + 1) - 1)

end

end A083682.P15748808588632283295

namespace A083682

/-- `A000203(A088707(n+1)-1)-(A088707(n+1)-1)` -/
def P15748808588632283295.Spec : Prop :=
  ∀ n, P15748808588632283295.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P14606573755487310391

`A000203(eq[2, A001222(n+1)]+1)-A001358(n+1)`
-/

namespace A083682.P14606573755487310391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A001358 (n + 1)

end

end A083682.P14606573755487310391

namespace A083682

/-- `A000203(eq[2, A001222(n+1)]+1)-A001358(n+1)` -/
def P14606573755487310391.Spec : Prop :=
  ∀ n, P14606573755487310391.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P15235426120180291627

`A000203(A075818(n+1)/2)-(eq[2, A001222(n+1)]+1)`
-/

namespace A083682.P15235426120180291627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A083682.P15235426120180291627

namespace A083682

/-- `A000203(A075818(n+1)/2)-(eq[2, A001222(n+1)]+1)` -/
def P15235426120180291627.Spec : Prop :=
  ∀ n, P15235426120180291627.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P14707308955142167086

`A000203(eq[2, A001222(n+1)]+1)-(A175708(n+1)+n+1)`
-/

namespace A083682.P14707308955142167086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - (A175708 (n + 1) + (n + 1 : ℤ))

end

end A083682.P14707308955142167086

namespace A083682

/-- `A000203(eq[2, A001222(n+1)]+1)-(A175708(n+1)+n+1)` -/
def P14707308955142167086.Spec : Prop :=
  ∀ n, P14707308955142167086.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P2520222636678420554

`A000203(A084126(n+1)*A084127(n+1))-(A175708(n+1)+n+1)`
-/

namespace A083682.P2520222636678420554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A084126 (n + 1) * A084127 (n + 1)).toNat - (A175708 (n + 1) + (n + 1 : ℤ))

end

end A083682.P2520222636678420554

namespace A083682

/-- `A000203(A084126(n+1)*A084127(n+1))-(A175708(n+1)+n+1)` -/
def P2520222636678420554.Spec : Prop :=
  ∀ n, P2520222636678420554.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P12620361707480888174

`A008472(A176540(n+2))+1`
-/

namespace A083682.P12620361707480888174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A176540 (n + 2)).toNat + 1

end

end A083682.P12620361707480888174

namespace A083682

/-- `A008472(A176540(n+2))+1` -/
def P12620361707480888174.Spec : Prop :=
  ∀ n, P12620361707480888174.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P17527242856473152005

`A020725(A257533(n+1))`
-/

namespace A083682.P17527242856473152005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A257533 (n + 1)).toNat

end

end A083682.P17527242856473152005

namespace A083682

/-- `A020725(A257533(n+1))` -/
def P17527242856473152005.Spec : Prop :=
  ∀ n, P17527242856473152005.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P17480342836197320156

`A294886(A001358(2*n+1-n))`
-/

namespace A083682.P17480342836197320156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (A001358 (2 * n + 1 - n)).toNat

end

end A083682.P17480342836197320156

namespace A083682

/-- `A294886(A001358(2*n+1-n))` -/
def P17480342836197320156.Spec : Prop :=
  ∀ n, P17480342836197320156.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P16348543275224747975

`A000203(A129767(2*(n+1)))-A129767(2*(n+1))`
-/

namespace A083682.P16348543275224747975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A129767 (2 * (n + 1))).toNat - A129767 (2 * (n + 1))

end

end A083682.P16348543275224747975

namespace A083682

/-- `A000203(A129767(2*(n+1)))-A129767(2*(n+1))` -/
def P16348543275224747975.Spec : Prop :=
  ∀ n, P16348543275224747975.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P8138142432727593650

`A001065(eq[2, ∑{e}[n, #]])`
-/

namespace A083682.P8138142432727593650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A083682.P8138142432727593650

namespace A083682

/-- `A001065(eq[2, ∑{e}[n, #]])` -/
def P8138142432727593650.Spec : Prop :=
  ∀ n, P8138142432727593650.a n = A083682 (n + 1)

end A083682

/-! ## A083682.P1357855871199950846

`A001065(A176540(n+2))`
-/

namespace A083682.P1357855871199950846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A176540 (n + 2)).toNat

end

end A083682.P1357855871199950846

namespace A083682

/-- `A001065(A176540(n+2))` -/
def P1357855871199950846.Spec : Prop :=
  ∀ n, P1357855871199950846.a n = A083682 (n + 1)

end A083682

/-!
# A083683: a(n) = 11*2^n + 1.

The programs for A083683, the canonical program `A083683.P15891330511901493962` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083683 has offset 0).

The definition of A083683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*2^n+1` (program `A083683.P15891330511901493962`, by `A083683.P15891330511901493962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083683.P15891330511901493962

`11*2^n+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083683

/-- `11*2^n+1` -/
def P15891330511901493962.Spec : Prop :=
  ∀ n, (P15891330511901493962.a n : ℤ) = A083683 n

theorem P15891330511901493962.correct : P15891330511901493962.Spec := by
  intro n
  simp only [A083683]

end A083683

/-! ## A083683.P10988918991613835899

`ogf((12-13x)/(1-3x+2x^2))`
-/

namespace A083683.P10988918991613835899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -13] [1, -3, 2] n

end

end A083683.P10988918991613835899

namespace A083683

/-- `ogf((12-13x)/(1-3x+2x^2))` -/
def P10988918991613835899.Spec : Prop :=
  ∀ n, P10988918991613835899.a n = A083683 n

end A083683

/-! ## A083683.P6595056309995336019

`∑[2*a(n-1)]` with `a(0)=12, a(1)=11`
-/

namespace A083683.P6595056309995336019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 11] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083683.P6595056309995336019

namespace A083683

/-- `∑[2*a(n-1)]` -/
def P6595056309995336019.Spec : Prop :=
  ∀ n, (P6595056309995336019.a n : ℤ) = A083683 n

end A083683

/-! ## A083683.P6129466007519656268

`2*(a(n-1)-1/2)` with `a(0)=12`
-/

namespace A083683.P6129466007519656268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  2 * (a (n - 1) - (1 : ℚ) / 2)

end

end A083683.P6129466007519656268

namespace A083683

/-- `2*(a(n-1)-1/2)` -/
def P6129466007519656268.Spec : Prop :=
  ∀ n, P6129466007519656268.a n = (A083683 n : ℚ)

theorem P6129466007519656268.correct : P6129466007519656268.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083683, Nat.add_sub_cancel, A083683.P6129466007519656268.a, A083683.P15891330511901493962.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083683, Nat.add_sub_cancel, A083683.P6129466007519656268.a, A083683.P15891330511901493962.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083683

/-! ## A083683.P7892145319041819116

`∑[a(n-1)+a(n-1)]` with `a(0)=12, a(1)=11`
-/

namespace A083683.P7892145319041819116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 11] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083683.P7892145319041819116

namespace A083683

/-- `∑[a(n-1)+a(n-1)]` -/
def P7892145319041819116.Spec : Prop :=
  ∀ n, (P7892145319041819116.a n : ℤ) = A083683 n

end A083683

/-! ## A083683.P10598263698824445342

`floor(a(n-1)+a(n-1)-1)` with `a(0)=12`

`floor` is left out, it is the identity on integers.
-/

namespace A083683.P10598263698824445342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A083683.P10598263698824445342

namespace A083683

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P10598263698824445342.Spec : Prop :=
  ∀ n, P10598263698824445342.a n = A083683 n

theorem P10598263698824445342.correct : P10598263698824445342.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083683, Nat.add_sub_cancel, A083683.P10598263698824445342.a, A083683.P15891330511901493962.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083683, Nat.add_sub_cancel, A083683.P10598263698824445342.a, A083683.P15891330511901493962.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083683

/-! ## A083683.P6796863850047285525

`floor(a(n-1)-(1-a(n-1)))` with `a(0)=12`

`floor` is left out, it is the identity on integers.
-/

namespace A083683.P6796863850047285525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A083683.P6796863850047285525

namespace A083683

/-- `floor(a(n-1)-(1-a(n-1)))` -/
def P6796863850047285525.Spec : Prop :=
  ∀ n, P6796863850047285525.a n = A083683 n

theorem P6796863850047285525.correct : P6796863850047285525.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083683, Nat.add_sub_cancel, A083683.P6796863850047285525.a, A083683.P15891330511901493962.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083683, Nat.add_sub_cancel, A083683.P6796863850047285525.a, A083683.P15891330511901493962.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083683

/-! ## A083683.P8197624955225302216

`abs(11*Δ[A000225(n)]+1)`
-/

namespace A083683.P8197624955225302216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 * (f1 (n + 1) - f1 n) + 1|

end

end A083683.P8197624955225302216

namespace A083683

/-- `abs(11*Δ[A000225(n)]+1)` -/
def P8197624955225302216.Spec : Prop :=
  ∀ n, P8197624955225302216.a n = A083683 n

end A083683

/-! ## A083683.P11031322750169450199

`∪[A122041(n+1), A199211(n)]`
-/

namespace A083683.P11031322750169450199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199211 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083683.P11031322750169450199

namespace A083683

/-- `∪[A122041(n+1), A199211(n)]` -/
def P11031322750169450199.Spec : Prop :=
  ∀ n, (P11031322750169450199.a n : ℤ) = A083683 n

end A083683

/-! ## A083683.P17934959942530537567

`ceil(A005015(n)+cos(A062157(n)))`
-/

namespace A083683.P17934959942530537567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005015 n : ℝ) + Real.cos (A062157 n : ℝ)⌉

end

end A083683.P17934959942530537567

namespace A083683

/-- `ceil(A005015(n)+cos(A062157(n)))` -/
def P17934959942530537567.Spec : Prop :=
  ∀ n, P17934959942530537567.a n = A083683 n

end A083683

/-! ## A083683.P8484785446998353006

`Δ[A005015(n)+n]`
-/

namespace A083683.P8484785446998353006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083683.P8484785446998353006

namespace A083683

/-- `Δ[A005015(n)+n]` -/
def P8484785446998353006.Spec : Prop :=
  ∀ n, P8484785446998353006.a n = A083683 n

theorem P8484785446998353006.correct : P8484785446998353006.Spec := by
  intro n
  simp only [A083683, Nat.add_sub_cancel, A083683.P8484785446998353006.f1, A083683.P8484785446998353006.a, A083683.P15891330511901493962.a, A005015, A005015.P14859435765551798402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083683

/-! ## A083683.P4183964008703157193

`Δ[A086225(n)+n]`
-/

namespace A083683.P4183964008703157193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086225 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083683.P4183964008703157193

namespace A083683

/-- `Δ[A086225(n)+n]` -/
def P4183964008703157193.Spec : Prop :=
  ∀ n, P4183964008703157193.a n = A083683 n

theorem P4183964008703157193.correct : P4183964008703157193.Spec := by
  intro n
  simp only [A083683, Nat.add_sub_cancel, A083683.P4183964008703157193.f1, A083683.P4183964008703157193.a, A083683.P15891330511901493962.a, A086225, A086225.P10155150668756747458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083683

/-! ## A083683.P6912996663836510197

`Δ[A267880(n+3)+n]`
-/

namespace A083683.P6912996663836510197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 (n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083683.P6912996663836510197

namespace A083683

/-- `Δ[A267880(n+3)+n]` -/
def P6912996663836510197.Spec : Prop :=
  ∀ n, P6912996663836510197.a n = A083683 n

end A083683

/-! ## A083683.P16113976104468837044

`(A122041(n+1)+1)/2`
-/

namespace A083683.P16113976104468837044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122041 (n + 1) + 1 : ℚ) / 2

end

end A083683.P16113976104468837044

namespace A083683

/-- `(A122041(n+1)+1)/2` -/
def P16113976104468837044.Spec : Prop :=
  ∀ n, P16113976104468837044.a n = (A083683 n : ℚ)

end A083683

/-! ## A083683.P10659704913693123179

`(A086225(n+1)+3)/2`
-/

namespace A083683.P10659704913693123179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086225 (n + 1) + 3 : ℚ) / 2

end

end A083683.P10659704913693123179

namespace A083683

/-- `(A086225(n+1)+3)/2` -/
def P10659704913693123179.Spec : Prop :=
  ∀ n, P10659704913693123179.a n = (A083683 n : ℚ)

theorem P10659704913693123179.correct : P10659704913693123179.Spec := by
  intro n
  simp only [A083683, Nat.add_sub_cancel, A083683.P10659704913693123179.a, A083683.P15891330511901493962.a, A086225, A086225.P10155150668756747458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083683

/-! ## A083683.P2505824413053765256

`A195744(n)%A110288(n)`
-/

namespace A083683.P2505824413053765256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195744 n) (A110288 n)

end

end A083683.P2505824413053765256

namespace A083683

/-- `A195744(n)%A110288(n)` -/
def P2505824413053765256.Spec : Prop :=
  ∀ n, P2505824413053765256.a n = A083683 n

end A083683

/-! ## A083683.P7355491965477858316

`Δ[A083706(n)+A083705(n)]`
-/

namespace A083683.P7355491965477858316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 n + A083705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083683.P7355491965477858316

namespace A083683

/-- `Δ[A083706(n)+A083705(n)]` -/
def P7355491965477858316.Spec : Prop :=
  ∀ n, P7355491965477858316.a n = A083683 n

end A083683

/-! ## A083683.P1320878959607516804

`(A168596(n)+A083705(n))/2`
-/

namespace A083683.P1320878959607516804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168596 n + A083705 n : ℚ) / 2

end

end A083683.P1320878959607516804

namespace A083683

/-- `(A168596(n)+A083705(n))/2` -/
def P1320878959607516804.Spec : Prop :=
  ∀ n, P1320878959607516804.a n = (A083683 n : ℚ)

end A083683

/-! ## A083683.P10588429044374001690

`(A002089(n)+A000079(n))/A000079(n)`
-/

namespace A083683.P10588429044374001690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002089 n + A000079 n : ℚ) / (A000079 n : ℚ)

end

end A083683.P10588429044374001690

namespace A083683

/-- `(A002089(n)+A000079(n))/A000079(n)` -/
def P10588429044374001690.Spec : Prop :=
  ∀ n, P10588429044374001690.a n = (A083683 n : ℚ)

end A083683

/-!
# A083684: Numbers k such that there is no nonnegative integer m such that m < k*prime(k) and the concatenated decimal number fp(k,m) = prime(1).m.prime(2).m. ... .prime(k-1).m.prime(k) is prime.

The programs for A083684, there is no canonical definition to state claims against.
-/

/-! ## A083684.P5957377189002516388

`A300402(∑[A136432(n)])+A137165(n+1)`
-/

namespace A083684.P5957377189002516388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300402 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A137165 (n + 1)

end

end A083684.P5957377189002516388

/-! ## A083684.P1437327063031910635

`A300402(A137165(n+1)+1)+A137165(n+1)`
-/

namespace A083684.P1437327063031910635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300402 (A137165 (n + 1) + 1).toNat + A137165 (n + 1)

end

end A083684.P1437327063031910635

/-! ## A083684.P8772092070659288172

`A300402(n²+3)+A137165(n+1)`
-/

namespace A083684.P8772092070659288172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300402 (n ^ 2 + 3) + A137165 (n + 1)

end

end A083684.P8772092070659288172

/-! ## A083684.P15479950140123256760

`A137165(n+1)+A091935(A002386(n+1))`
-/

namespace A083684.P15479950140123256760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137165 (n + 1) + A091935 (A002386 (n + 1)).toNat

end

end A083684.P15479950140123256760

/-! ## A083684.P11719901543847435506

`A123883(A137165(n+1)+2)`
-/

namespace A083684.P11719901543847435506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123883 (A137165 (n + 1) + 2).toNat

end

end A083684.P11719901543847435506

/-!
# A083685: a(n) is the smallest prime of the form k*lcm(1..n) - 1.

The programs for A083685, there is no canonical definition to state claims against.
-/

/-! ## A083685.P10322011727183941195

`A038700(∏[(n+1)/∏{p}[n+1, (n+1)/#]])`
-/

namespace A083685.P10322011727183941195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A083685.P10322011727183941195

/-! ## A083685.P11021935198132091472

`A038700(A120108(∑[n]))`
-/

namespace A083685.P11021935198132091472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A120108 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A083685.P11021935198132091472

/-! ## A083685.P10299264557270418225

`A038700(A003418(n+1))`
-/

namespace A083685.P10299264557270418225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A003418 (n + 1)).toNat

end

end A083685.P10299264557270418225

/-! ## A083685.P8898470055011827987

`A038700(A058312(n+1))`
-/

namespace A083685.P8898470055011827987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A058312 (n + 1)).toNat

end

end A083685.P8898470055011827987

/-! ## A083685.P18275059395556040539

`A038700(A070198(n)+1)`
-/

namespace A083685.P18275059395556040539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A070198 n + 1).toNat

end

end A083685.P18275059395556040539

/-!
# A083686: a(0) = 8; for n>0, a(n) = 2*a(n-1) - 1.

The programs for A083686, the canonical program `A083686.P10917686282636666226` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083686 has offset 0).

The definition of A083686 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-1` (program `A083686.P10917686282636666226`, by `A083686.P10917686282636666226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083686.P7034874534047711666

`7*2^n+1`
-/

namespace A083686.P7034874534047711666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * 2 ^ n + 1

end

end A083686.P7034874534047711666

namespace A083686

/-- `7*2^n+1` -/
def P7034874534047711666.Spec : Prop :=
  ∀ n, (P7034874534047711666.a n : ℤ) = A083686 n

theorem P7034874534047711666.correct : P7034874534047711666.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083686, Nat.add_sub_cancel, A083686.P7034874534047711666.a, A083686.P10917686282636666226.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083686, Nat.add_sub_cancel, A083686.P7034874534047711666.a, A083686.P10917686282636666226.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083686

/-! ## A083686.P12341285186219978700

`ogf((8-9x)/(1-3x+2x^2))`
-/

namespace A083686.P12341285186219978700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -9] [1, -3, 2] n

end

end A083686.P12341285186219978700

namespace A083686

/-- `ogf((8-9x)/(1-3x+2x^2))` -/
def P12341285186219978700.Spec : Prop :=
  ∀ n, P12341285186219978700.a n = A083686 n

end A083686

/-! ## A083686.P10917686282636666226

`2*a(n-1)-1` with `a(0)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083686

/-- `2*a(n-1)-1` -/
def P10917686282636666226.Spec : Prop :=
  ∀ n, P10917686282636666226.a n = A083686 n

theorem P10917686282636666226.correct : P10917686282636666226.Spec := by
  intro n
  simp only [A083686]

end A083686

/-! ## A083686.P6798990602488611269

`floor(a(n-1)+a(n-1)-1)` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A083686.P6798990602488611269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A083686.P6798990602488611269

namespace A083686

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P6798990602488611269.Spec : Prop :=
  ∀ n, P6798990602488611269.a n = A083686 n

theorem P6798990602488611269.correct : P6798990602488611269.Spec := by
  intro n
  simp only [A083686, Nat.add_sub_cancel, A083686.P6798990602488611269.a, A083686.P10917686282636666226.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083686

/-! ## A083686.P9309400280328890718

`floor(a(n-1)-(1-a(n-1)))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A083686.P9309400280328890718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A083686.P9309400280328890718

namespace A083686

/-- `floor(a(n-1)-(1-a(n-1)))` -/
def P9309400280328890718.Spec : Prop :=
  ∀ n, P9309400280328890718.a n = A083686 n

theorem P9309400280328890718.correct : P9309400280328890718.Spec := by
  intro n
  simp only [A083686, Nat.add_sub_cancel, A083686.P9309400280328890718.a, A083686.P10917686282636666226.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083686

/-! ## A083686.P13096578751675351504

`abs(2-A164285(n))`
-/

namespace A083686.P13096578751675351504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A164285 n|

end

end A083686.P13096578751675351504

namespace A083686

/-- `abs(2-A164285(n))` -/
def P13096578751675351504.Spec : Prop :=
  ∀ n, P13096578751675351504.a n = A083686 n

end A083686

/-! ## A083686.P12126473865785260398

`record[A010737(xor(1, n))+2]`
-/

namespace A083686.P12126473865785260398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (Nat.xor 1 n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083686.P12126473865785260398

namespace A083686

/-- `record[A010737(xor(1, n))+2]` -/
def P12126473865785260398.Spec : Prop :=
  ∀ n, P12126473865785260398.a n = A083686 n

end A083686

/-! ## A083686.P8081132107979501507

`(A005009(n)+1)*A210679(A270298(n+1))`
-/

namespace A083686.P8081132107979501507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005009 n + 1) * A210679 (A270298 (n + 1)).toNat

end

end A083686.P8081132107979501507

namespace A083686

/-- `(A005009(n)+1)*A210679(A270298(n+1))` -/
def P8081132107979501507.Spec : Prop :=
  ∀ n, P8081132107979501507.a n = A083686 n

end A083686

/-! ## A083686.P751534862650654537

`Δ[A156127(n)+n]`
-/

namespace A083686.P751534862650654537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156127 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083686.P751534862650654537

namespace A083686

/-- `Δ[A156127(n)+n]` -/
def P751534862650654537.Spec : Prop :=
  ∀ n, P751534862650654537.a n = A083686 n

theorem P751534862650654537.correct : P751534862650654537.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083686, Nat.add_sub_cancel, A083686.P751534862650654537.f1, A083686.P751534862650654537.a, A083686.P10917686282636666226.a, A156127, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083686, Nat.add_sub_cancel, A083686.P751534862650654537.f1, A083686.P751534862650654537.a, A083686.P10917686282636666226.a, A156127, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083686

/-! ## A083686.P11590717290624700139

`(A164285(n+1)-1)/2`
-/

namespace A083686.P11590717290624700139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164285 (n + 1) - 1 : ℚ) / 2

end

end A083686.P11590717290624700139

namespace A083686

/-- `(A164285(n+1)-1)/2` -/
def P11590717290624700139.Spec : Prop :=
  ∀ n, P11590717290624700139.a n = (A083686 n : ℚ)

theorem P11590717290624700139.correct : P11590717290624700139.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083686, Nat.add_sub_cancel, A083686.P11590717290624700139.a, A083686.P10917686282636666226.a, A164285, A164285.P3743901133409701877.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083686, Nat.add_sub_cancel, A083686.P11590717290624700139.a, A083686.P10917686282636666226.a, A164285, A164285.P3743901133409701877.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083686

/-! ## A083686.P2712579392289958598

`(A181565(n+1)+A020737(n+1))/2`
-/

namespace A083686.P2712579392289958598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181565 (n + 1) + A020737 (n + 1) : ℚ) / 2

end

end A083686.P2712579392289958598

namespace A083686

/-- `(A181565(n+1)+A020737(n+1))/2` -/
def P2712579392289958598.Spec : Prop :=
  ∀ n, P2712579392289958598.a n = (A083686 n : ℚ)

theorem P2712579392289958598.correct : P2712579392289958598.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083686, Nat.add_sub_cancel, A083686.P2712579392289958598.a, A083686.P10917686282636666226.a, A020737, A020737.P8756672290686718691.a, A181565, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083686, Nat.add_sub_cancel, A083686.P2712579392289958598.a, A083686.P10917686282636666226.a, A020737, A020737.P8756672290686718691.a, A181565, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083686

/-! ## A083686.P12623676734413101320

`(A171389(n)+4)/3`
-/

namespace A083686.P12623676734413101320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171389 n + 4 : ℚ) / 3

end

end A083686.P12623676734413101320

namespace A083686

/-- `(A171389(n)+4)/3` -/
def P12623676734413101320.Spec : Prop :=
  ∀ n, P12623676734413101320.a n = (A083686 n : ℚ)

theorem P12623676734413101320.correct : P12623676734413101320.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083686, Nat.add_sub_cancel, A083686.P12623676734413101320.a, A083686.P10917686282636666226.a, A171389, A171389.P11836700993274447639.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083686, Nat.add_sub_cancel, A083686.P12623676734413101320.a, A083686.P10917686282636666226.a, A171389, A171389.P11836700993274447639.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083686

/-! ## A083686.P321439810462273030

`A122041(n+1)%A110286(n)`
-/

namespace A083686.P321439810462273030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122041 (n + 1)) (A110286 n)

end

end A083686.P321439810462273030

namespace A083686

/-- `A122041(n+1)%A110286(n)` -/
def P321439810462273030.Spec : Prop :=
  ∀ n, P321439810462273030.a n = A083686 n

end A083686

/-! ## A083686.P9004230855825194871

`A206371(n)%A081808(n+1)`
-/

namespace A083686.P9004230855825194871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206371 n) (A081808 (n + 1))

end

end A083686.P9004230855825194871

namespace A083686

/-- `A206371(n)%A081808(n+1)` -/
def P9004230855825194871.Spec : Prop :=
  ∀ n, P9004230855825194871.a n = A083686 n

end A083686

/-! ## A083686.P16560234238198412858

`A007283(n+3)%A198275(n)`
-/

namespace A083686.P16560234238198412858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007283 (n + 3)) (A198275 n)

end

end A083686.P16560234238198412858

namespace A083686

/-- `A007283(n+3)%A198275(n)` -/
def P16560234238198412858.Spec : Prop :=
  ∀ n, P16560234238198412858.a n = A083686 n

end A083686

/-! ## A083686.P13737434542521369524

`A171390(n+1)%A196305(n)`
-/

namespace A083686.P13737434542521369524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171390 (n + 1)) (A196305 n)

end

end A083686.P13737434542521369524

namespace A083686

/-- `A171390(n+1)%A196305(n)` -/
def P13737434542521369524.Spec : Prop :=
  ∀ n, P13737434542521369524.a n = A083686 n

end A083686

/-! ## A083686.P3520813081198244331

`A196657(n)%A110287(n)`
-/

namespace A083686.P3520813081198244331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196657 n) (A110287 n)

end

end A083686.P3520813081198244331

namespace A083686

/-- `A196657(n)%A110287(n)` -/
def P3520813081198244331.Spec : Prop :=
  ∀ n, P3520813081198244331.a n = A083686 n

end A083686

/-! ## A083686.P7265192752774223532

`(A048478(n+1)+n)/(n+1)`
-/

namespace A083686.P7265192752774223532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048478 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A083686.P7265192752774223532

namespace A083686

/-- `(A048478(n+1)+n)/(n+1)` -/
def P7265192752774223532.Spec : Prop :=
  ∀ n, P7265192752774223532.a n = (A083686 n : ℚ)

end A083686

/-! ## A083686.P7807048257523629199

`A288870(A167614(n+2))`
-/

namespace A083686.P7807048257523629199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288870 (A167614 (n + 2)).toNat

end

end A083686.P7807048257523629199

namespace A083686

/-- `A288870(A167614(n+2))` -/
def P7807048257523629199.Spec : Prop :=
  ∀ n, P7807048257523629199.a n = A083686 n

end A083686

/-!
# A083687: Numerator of B(2n)*H(2n)/n*(-1)^(n+1) where B(k) is the k-th Bernoulli number and H(k) the k-th harmonic number.

The programs for A083687, there is no canonical definition to state claims against.
-/

/-! ## A083687.P8051304527708570712

`∏{p}[A002547(2*(n+1))², #]`
-/

namespace A083687.P8051304527708570712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002547 (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A083687.P8051304527708570712

/-!
# A083690: a(n) = number of partitions of n wherein the sum of the 1's is no more than the sum of the other parts.

The programs for A083690, there is no canonical definition to state claims against.
-/

/-! ## A083690.P12584566089298103532

`A000041(n+1)-A000041(floor(n/2))`
-/

namespace A083690.P12584566089298103532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A000041 ⌊(n : ℚ) / 2⌋.toNat

end

end A083690.P12584566089298103532

/-! ## A083690.P5649996925232860312

`A000041(n+1)-A119620(n)`
-/

namespace A083690.P5649996925232860312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A119620 n

end

end A083690.P5649996925232860312

/-! ## A083690.P9159675942411333730

`A000065(n+1)-A000065(A140106(n+2))`
-/

namespace A083690.P9159675942411333730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) - A000065 (A140106 (n + 2)).toNat

end

end A083690.P9159675942411333730

/-! ## A083690.P5681741437276153308

`A027187(n+1)+A027193(n+1)-A119620(n)`
-/

namespace A083690.P5681741437276153308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (n + 1) + (A027193 (n + 1) - A119620 n)

end

end A083690.P5681741437276153308

/-! ## A083690.P1411278512532599235

`A119620(n+1)+A347448(n+1)-A119620(n)`
-/

namespace A083690.P1411278512532599235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (n + 1) + (A347448 (n + 1) - A119620 n)

end

end A083690.P1411278512532599235

/-! ## A083690.P11509908485587464285

`A386638(n)+A110618(n+1)`
-/

namespace A083690.P11509908485587464285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386638 n + A110618 (n + 1)

end

end A083690.P11509908485587464285

/-! ## A083690.P1952409846078753382

`A066639(2*(n+1))-A119620(n)`
-/

namespace A083690.P1952409846078753382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066639 (2 * (n + 1)) - A119620 n

end

end A083690.P1952409846078753382

/-! ## A083690.P14591854915644222608

`A027300(∑[and(1, n)+n]+1)`
-/

namespace A083690.P14591854915644222608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A083690.P14591854915644222608

/-! ## A083690.P4254245266834119510

`A027300(∑[1-or(1, -n)]+1)`
-/

namespace A083690.P4254245266834119510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A083690.P4254245266834119510

/-! ## A083690.P8720131658311724090

`A027300(A080827(n+1))`
-/

namespace A083690.P8720131658311724090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (A080827 (n + 1)).toNat

end

end A083690.P8720131658311724090

/-! ## A083690.P14166926100078551859

`A027300(A099392(n+2))`
-/

namespace A083690.P14166926100078551859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (A099392 (n + 2)).toNat

end

end A083690.P14166926100078551859

/-! ## A083690.P18205461145238116441

`A061199(∑[or(1, n+1)])`
-/

namespace A083690.P18205461145238116441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083690.P18205461145238116441

/-! ## A083690.P17246936765260156470

`A061199(ceil(n²/2)+2*n+1)`
-/

namespace A083690.P17246936765260156470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (⌈(n ^ 2 : ℚ) / 2⌉ + (2 * n : ℤ) + 1).toNat

end

end A083690.P17246936765260156470

/-!
# A083691: Length of list generated by n replacements of k by {-1-|k|, ..., 1+|k|} with increment 2, starting with {0}.

The programs for A083691, there is no canonical definition to state claims against.
-/

/-! ## A083691.P6396457021014994624

`A014963(A001316(n))*A083692(A289207(n+1))`
-/

namespace A083691.P6396457021014994624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A083692 (A289207 (n + 1)).toNat

end

end A083691.P6396457021014994624

/-! ## A083691.P2630022737035739785

`A001221(2*A000040(n+1))*A083692(A289207(n+1))`
-/

namespace A083691.P2630022737035739785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A000040 (n + 1)).toNat * A083692 (A289207 (n + 1)).toNat

end

end A083691.P2630022737035739785

/-! ## A083691.P8158474328931594075

`A014963(A137688(n))*A083692(A289207(n+1))`
-/

namespace A083691.P8158474328931594075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A137688 n).toNat * A083692 (A289207 (n + 1)).toNat

end

end A083691.P8158474328931594075

/-! ## A083691.P13058150304160544252

`A014963(A127973(n))*A083692(A289207(n+1))`
-/

namespace A083691.P13058150304160544252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A127973 n).toNat * A083692 (A289207 (n + 1)).toNat

end

end A083691.P13058150304160544252

/-!
# A083692: Length of list generated by n replacements of k by {-1-|k|, .., 1+|k|} with increment 2, starting with {1}.

The programs for A083692, there is no canonical definition to state claims against.
-/

/-! ## A083692.P3954244221834831492

`A083691(n+1)/2`
-/

namespace A083692.P3954244221834831492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083691 (n + 1) : ℚ) / 2

end

end A083692.P3954244221834831492

/-! ## A083692.P14186014048997964326

`Δ[∑[A083691(n)]/2]`
-/

namespace A083692.P14186014048997964326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083691 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083692.P14186014048997964326

/-! ## A083692.P7415534819011375625

`record[ratio[A083691(A152271(n))]]`
-/

namespace A083692.P7415534819011375625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083691 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083692.P7415534819011375625

/-! ## A083692.P5054249629526670220

`record[A083691(A007599(n))/2]`
-/

namespace A083692.P5054249629526670220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083691 (A007599 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083692.P5054249629526670220

/-!
# A083693: Sum of absolute values of list generated by n replacements of k by {-1-|k|, .., 1+|k|} with increment 2, starting with {1}.

The programs for A083693, there is no canonical definition to state claims against.
-/

/-! ## A083693.P2972057355830815307

`A083691(n+2)/2-A083691(n+1)`
-/

namespace A083693.P2972057355830815307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083691 (n + 2) : ℚ) / 2 - (A083691 (n + 1) : ℚ)

end

end A083693.P2972057355830815307

/-! ## A083693.P16812582664748332536

`Δ[A083692(n)]-A083692(n)`
-/

namespace A083693.P16812582664748332536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083692 n

end

end A083693.P16812582664748332536

/-! ## A083693.P6990723333994651608

`A083692(n+1)-A083691(n+1)`
-/

namespace A083693.P6990723333994651608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083692 (n + 1) - A083691 (n + 1)

end

end A083693.P6990723333994651608

/-! ## A083693.P9267320163892283631

`A083692(n+1)-2*A083692(n)`
-/

namespace A083693.P9267320163892283631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083692 (n + 1) - 2 * A083692 n

end

end A083693.P9267320163892283631

/-!
# A083694: a(n) = 2*A002532(n).

The programs for A083694, the canonical program `A083694.P8538574103418569436` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083694 has offset 0).

The definition of A083694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A002532(n)` (program `A083694.P8538574103418569436`, by `A083694.P8538574103418569436.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083694.P16439365195705915880

`ogf(2x/(1-2x-5x^2))`
-/

namespace A083694.P16439365195705915880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -5] n

end

end A083694.P16439365195705915880

namespace A083694

/-- `ogf(2x/(1-2x-5x^2))` -/
def P16439365195705915880.Spec : Prop :=
  ∀ n, P16439365195705915880.a n = A083694 n

end A083694

/-! ## A083694.P13149689493806392971

`2*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A083694.P13149689493806392971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * a (n - 1) + 5 * a (n - 2)

end

end A083694.P13149689493806392971

namespace A083694

/-- `2*a(n-1)+5*a(n-2)` -/
def P13149689493806392971.Spec : Prop :=
  ∀ n, (P13149689493806392971.a n : ℤ) = A083694 n

end A083694

/-! ## A083694.P8538574103418569436

`2*A002532(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083694

/-- `2*A002532(n)` -/
def P8538574103418569436.Spec : Prop :=
  ∀ n, P8538574103418569436.a n = A083694 n

theorem P8538574103418569436.correct : P8538574103418569436.Spec := by
  intro n
  simp only [A083694]

end A083694

/-! ## A083694.P585399746732318460

`2*A002533(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A083694.P585399746732318460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * A002533 (n - 1) + a (n - 1)

end

end A083694.P585399746732318460

namespace A083694

/-- `2*A002533(n-1)+a(n-1)` -/
def P585399746732318460.Spec : Prop :=
  ∀ n, P585399746732318460.a n = A083694 n

end A083694

/-! ## A083694.P2254349545546799464

`2*a(n-1)-5*floor(-a(n-2))` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A083694.P2254349545546799464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * a (n - 1) - 5 * (-a (n - 2))

end

end A083694.P2254349545546799464

namespace A083694

/-- `2*a(n-1)-5*floor(-a(n-2))` -/
def P2254349545546799464.Spec : Prop :=
  ∀ n, P2254349545546799464.a n = A083694 n

end A083694

/-! ## A083694.P18038193810919432148

`a(n-1)+a(n-1)+lcm(5, a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A083694.P18038193810919432148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (a (n - 1) + Nat.lcm 5 (a (n - 2)))

end

end A083694.P18038193810919432148

namespace A083694

/-- `a(n-1)+a(n-1)+lcm(5, a(n-2))` -/
def P18038193810919432148.Spec : Prop :=
  ∀ n, (P18038193810919432148.a n : ℤ) = A083694 n

end A083694

/-! ## A083694.P18316572390430640827

`3*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A083694.P18316572390430640827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A083694.P18316572390430640827

namespace A083694

/-- `3*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P18316572390430640827.Spec : Prop :=
  ∀ n, P18316572390430640827.a n = A083694 n

end A083694

/-! ## A083694.P12983193275226239575

`2/3*A083695(n)`
-/

namespace A083694.P12983193275226239575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A083695 n : ℚ)

end

end A083694.P12983193275226239575

namespace A083694

/-- `2/3*A083695(n)` -/
def P12983193275226239575.Spec : Prop :=
  ∀ n, P12983193275226239575.a n = (A083694 n : ℚ)

end A083694

/-! ## A083694.P15107459301271056103

`A083695(n)-A002532(n)`
-/

namespace A083694.P15107459301271056103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 n - A002532 n

end

end A083694.P15107459301271056103

namespace A083694

/-- `A083695(n)-A002532(n)` -/
def P15107459301271056103.Spec : Prop :=
  ∀ n, P15107459301271056103.a n = A083694 n

end A083694

/-! ## A083694.P16368109174796648066

`A180168(n)-A002533(n)`
-/

namespace A083694.P16368109174796648066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 n - A002533 n

end

end A083694.P16368109174796648066

namespace A083694

/-- `A180168(n)-A002533(n)` -/
def P16368109174796648066.Spec : Prop :=
  ∀ n, P16368109174796648066.a n = A083694 n

end A083694

/-! ## A083694.P5811710541849290774

`A002532(n)+A002532(A005843(n)/2)`
-/

namespace A083694.P5811710541849290774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n + A002532 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat

end

end A083694.P5811710541849290774

namespace A083694

/-- `A002532(n)+A002532(A005843(n)/2)` -/
def P5811710541849290774.Spec : Prop :=
  ∀ n, P5811710541849290774.a n = A083694 n

end A083694

/-! ## A083694.P2238932767610399852

`A002532(n)+A002532(A005843(n)-n)`
-/

namespace A083694.P2238932767610399852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n + A002532 (A005843 n - (n : ℤ)).toNat

end

end A083694.P2238932767610399852

namespace A083694

/-- `A002532(n)+A002532(A005843(n)-n)` -/
def P2238932767610399852.Spec : Prop :=
  ∀ n, P2238932767610399852.a n = A083694 n

end A083694

/-! ## A083694.P15984880116540487839

`A002533(n)+A083695(n)-∑[A002533(n)]`
-/

namespace A083694.P15984880116540487839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n + (A083695 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083694.P15984880116540487839

namespace A083694

/-- `A002533(n)+A083695(n)-∑[A002533(n)]` -/
def P15984880116540487839.Spec : Prop :=
  ∀ n, P15984880116540487839.a n = A083694 n

end A083694

/-! ## A083694.P5189218360771773701

`A002532(n+1)+A002532(n)-A002533(n)`
-/

namespace A083694.P5189218360771773701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 (n + 1) + (A002532 n - A002533 n)

end

end A083694.P5189218360771773701

namespace A083694

/-- `A002532(n+1)+A002532(n)-A002533(n)` -/
def P5189218360771773701.Spec : Prop :=
  ∀ n, P5189218360771773701.a n = A083694 n

end A083694

/-! ## A083694.P9778572710303800494

`A002532(n)+A180168(n)-A002532(n+1)`
-/

namespace A083694.P9778572710303800494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n + (A180168 n - A002532 (n + 1))

end

end A083694.P9778572710303800494

namespace A083694

/-- `A002532(n)+A180168(n)-A002532(n+1)` -/
def P9778572710303800494.Spec : Prop :=
  ∀ n, P9778572710303800494.a n = A083694 n

end A083694

/-! ## A083694.P3057505093060036745

`A290999(n)/3`
-/

namespace A083694.P3057505093060036745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290999 n : ℚ) / 3

end

end A083694.P3057505093060036745

namespace A083694

/-- `A290999(n)/3` -/
def P3057505093060036745.Spec : Prop :=
  ∀ n, P3057505093060036745.a n = (A083694 n : ℚ)

end A083694

/-! ## A083694.P12220552551517199278

`Δ[A002533(n)]/3`
-/

namespace A083694.P12220552551517199278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A083694.P12220552551517199278

namespace A083694

/-- `Δ[A002533(n)]/3` -/
def P12220552551517199278.Spec : Prop :=
  ∀ n, P12220552551517199278.a n = (A083694 n : ℚ)

end A083694

/-! ## A083694.P14402824161110425859

`A123011(n)-A180168(n)`
-/

namespace A083694.P14402824161110425859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123011 n - A180168 n

end

end A083694.P14402824161110425859

namespace A083694

/-- `A123011(n)-A180168(n)` -/
def P14402824161110425859.Spec : Prop :=
  ∀ n, P14402824161110425859.a n = A083694 n

end A083694

/-! ## A083694.P12664000314677841699

`A002533(n+1)-A123011(n)`
-/

namespace A083694.P12664000314677841699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (n + 1) - A123011 n

end

end A083694.P12664000314677841699

namespace A083694

/-- `A002533(n+1)-A123011(n)` -/
def P12664000314677841699.Spec : Prop :=
  ∀ n, P12664000314677841699.a n = A083694 n

end A083694

/-! ## A083694.P11849519519698701138

`A180168(n+1)-A176812(n)`
-/

namespace A083694.P11849519519698701138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 (n + 1) - A176812 n

end

end A083694.P11849519519698701138

namespace A083694

/-- `A180168(n+1)-A176812(n)` -/
def P11849519519698701138.Spec : Prop :=
  ∀ n, P11849519519698701138.a n = A083694 n

end A083694

/-!
# A083695: a(n) = 2*a(n-1) + 5*a(n-2), with a(0) = 0, a(1) = 3.

The programs for A083695, the canonical program `A083695.P13792313098206864076` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083695 has offset 0).

The definition of A083695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+5*a(n-2)` (program `A083695.P13792313098206864076`, by `A083695.P13792313098206864076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083695.P14758002073840984507

`ogf(3x/(1-2x-5x^2))`
-/

namespace A083695.P14758002073840984507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -2, -5] n

end

end A083695.P14758002073840984507

namespace A083695

/-- `ogf(3x/(1-2x-5x^2))` -/
def P14758002073840984507.Spec : Prop :=
  ∀ n, P14758002073840984507.a n = A083695 n

end A083695

/-! ## A083695.P13792313098206864076

`2*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083695

/-- `2*a(n-1)+5*a(n-2)` -/
def P13792313098206864076.Spec : Prop :=
  ∀ n, (P13792313098206864076.a n : ℤ) = A083695 n

theorem P13792313098206864076.correct : P13792313098206864076.Spec := by
  intro n
  simp only [A083695]

end A083695

/-! ## A083695.P2218510849503780168

`3*A002533(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A083695.P2218510849503780168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * A002533 (n - 1) + a (n - 1)

end

end A083695.P2218510849503780168

namespace A083695

/-- `3*A002533(n-1)+a(n-1)` -/
def P2218510849503780168.Spec : Prop :=
  ∀ n, P2218510849503780168.a n = A083695 n

end A083695

/-! ## A083695.P6189391410266769938

`3*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A083695.P6189391410266769938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A083695.P6189391410266769938

namespace A083695

/-- `3*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P6189391410266769938.Spec : Prop :=
  ∀ n, P6189391410266769938.a n = A083695 n

end A083695

/-! ## A083695.P16387916417027463478

`3*A002532(n)`
-/

namespace A083695.P16387916417027463478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002532 n

end

end A083695.P16387916417027463478

namespace A083695

/-- `3*A002532(n)` -/
def P16387916417027463478.Spec : Prop :=
  ∀ n, P16387916417027463478.a n = A083695 n

end A083695

/-! ## A083695.P11499406660862578929

`3/2*A083694(n)`
-/

namespace A083695.P11499406660862578929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A083694 n : ℚ)

end

end A083695.P11499406660862578929

namespace A083695

/-- `3/2*A083694(n)` -/
def P11499406660862578929.Spec : Prop :=
  ∀ n, P11499406660862578929.a n = (A083695 n : ℚ)

end A083695

/-! ## A083695.P15700661877913977369

`A083694(n)+A002532(n)`
-/

namespace A083695.P15700661877913977369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083694 n + A002532 n

end

end A083695.P15700661877913977369

namespace A083695

/-- `A083694(n)+A002532(n)` -/
def P15700661877913977369.Spec : Prop :=
  ∀ n, P15700661877913977369.a n = A083695 n

end A083695

/-! ## A083695.P14868274821235739832

`A002532(n)+A180168(n)-A002533(n)`
-/

namespace A083695.P14868274821235739832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n + (A180168 n - A002533 n)

end

end A083695.P14868274821235739832

namespace A083695

/-- `A002532(n)+A180168(n)-A002533(n)` -/
def P14868274821235739832.Spec : Prop :=
  ∀ n, P14868274821235739832.a n = A083695 n

end A083695

/-! ## A083695.P4447615128268749124

`A290999(n)/2`
-/

namespace A083695.P4447615128268749124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290999 n : ℚ) / 2

end

end A083695.P4447615128268749124

namespace A083695

/-- `A290999(n)/2` -/
def P4447615128268749124.Spec : Prop :=
  ∀ n, P4447615128268749124.a n = (A083695 n : ℚ)

end A083695

/-! ## A083695.P17170453383252987916

`Δ[A002533(n)/2]`
-/

namespace A083695.P17170453383252987916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002533 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083695.P17170453383252987916

namespace A083695

/-- `Δ[A002533(n)/2]` -/
def P17170453383252987916.Spec : Prop :=
  ∀ n, P17170453383252987916.a n = (A083695 n : ℚ)

end A083695

/-! ## A083695.P1328471368574448160

`A123011(n)-A002532(n+1)`
-/

namespace A083695.P1328471368574448160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123011 n - A002532 (n + 1)

end

end A083695.P1328471368574448160

namespace A083695

/-- `A123011(n)-A002532(n+1)` -/
def P1328471368574448160.Spec : Prop :=
  ∀ n, P1328471368574448160.a n = A083695 n

end A083695

/-! ## A083695.P3762764929069284724

`(A002533(n+1)-A002533(n))/2`
-/

namespace A083695.P3762764929069284724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002533 (n + 1) - A002533 n : ℚ) / 2

end

end A083695.P3762764929069284724

namespace A083695

/-- `(A002533(n+1)-A002533(n))/2` -/
def P3762764929069284724.Spec : Prop :=
  ∀ n, P3762764929069284724.a n = (A083695 n : ℚ)

end A083695

/-! ## A083695.P18286534848791476093

`A123011(n)-A002532(n)-Δ[A002532(n)]`
-/

namespace A083695.P18286534848791476093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123011 n - A002532 n - (f1 (n + 1) - f1 n)

end

end A083695.P18286534848791476093

namespace A083695

/-- `A123011(n)-A002532(n)-Δ[A002532(n)]` -/
def P18286534848791476093.Spec : Prop :=
  ∀ n, P18286534848791476093.a n = A083695 n

end A083695

/-! ## A083695.P1026530399509494399

`A180168(n+1)+A002532(n)-A176812(n)`
-/

namespace A083695.P1026530399509494399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 (n + 1) + (A002532 n - A176812 n)

end

end A083695.P1026530399509494399

namespace A083695

/-- `A180168(n+1)+A002532(n)-A176812(n)` -/
def P1026530399509494399.Spec : Prop :=
  ∀ n, P1026530399509494399.a n = A083695 n

end A083695

/-!
# A083696: a(n) = Sum_{r=0..2^(n-1)} (5^r/(2r)!)*Product_{k=0..2r-1} (2^n - k).

The programs for A083696, the canonical program `A083696.P18431486069192656597` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083696 has offset 0).

The definition of A083696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083696.P18431486069192656597

`a(n-1)²+5*A083697(n-1)²` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083696

/-- `a(n-1)²+5*A083697(n-1)²` -/
def P18431486069192656597.Spec : Prop :=
  ∀ n, P18431486069192656597.a n = A083696 n

theorem P18431486069192656597.correct : P18431486069192656597.Spec := by
  intro n
  simp only [A083696]

end A083696

/-! ## A083696.P1585764259577855882

`A084057(2^n)`
-/

namespace A083696.P1585764259577855882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 (2 ^ n)

end

end A083696.P1585764259577855882

namespace A083696

/-- `A084057(2^n)` -/
def P1585764259577855882.Spec : Prop :=
  ∀ n, P1585764259577855882.a n = A083696 n

end A083696

/-! ## A083696.P15209245805646495742

`A203579(2^n)-1`
-/

namespace A083696.P15209245805646495742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203579 (2 ^ n) - 1

end

end A083696.P15209245805646495742

namespace A083696

/-- `A203579(2^n)-1` -/
def P15209245805646495742.Spec : Prop :=
  ∀ n, P15209245805646495742.a n = A083696 n

end A083696

/-! ## A083696.P14523123857919488958

`2^(2^n-1)*A000032(2^n)`
-/

namespace A083696.P14523123857919488958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) * (A000032 (2 ^ n) : ℚ)

end

end A083696.P14523123857919488958

namespace A083696

/-- `2^(2^n-1)*A000032(2^n)` -/
def P14523123857919488958.Spec : Prop :=
  ∀ n, P14523123857919488958.a n = (A083696 n : ℚ)

end A083696

/-!
# A083697: a(n) = 2^(2^n - 1) * Fibonacci(2^n).

The programs for A083697, the canonical program `A083697.P5603520656838925954` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083697 has offset 0).

The definition of A083697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083697.P5603520656838925954

`2^(2^n-1)*A000045(2^n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083697

/-- `2^(2^n-1)*A000045(2^n)` -/
def P5603520656838925954.Spec : Prop :=
  ∀ n, P5603520656838925954.a n = (A083697 n : ℚ)

end A083697

/-! ## A083697.P16772329741008437963

`A085449(2^n)`
-/

namespace A083697.P16772329741008437963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (2 ^ n)

end

end A083697.P16772329741008437963

namespace A083697

/-- `A085449(2^n)` -/
def P16772329741008437963.Spec : Prop :=
  ∀ n, P16772329741008437963.a n = A083697 n

end A083697

/-! ## A083697.P16936254252532791621

`A063727(2^n-1)`
-/

namespace A083697.P16936254252532791621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 (2 ^ n - 1)

end

end A083697.P16936254252532791621

namespace A083697

/-- `A063727(2^n-1)` -/
def P16936254252532791621.Spec : Prop :=
  ∀ n, P16936254252532791621.a n = A083697 n

end A083697

/-! ## A083697.P8362664489669312568

`A103435(2^n)/2`
-/

namespace A083697.P8362664489669312568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103435 (2 ^ n) : ℚ) / 2

end

end A083697.P8362664489669312568

namespace A083697

/-- `A103435(2^n)/2` -/
def P8362664489669312568.Spec : Prop :=
  ∀ n, P8362664489669312568.a n = (A083697 n : ℚ)

end A083697

/-!
# A083699: Numerators of the continued fraction convergents which have the least possible prime denominators (A072999).

The programs for A083699, there is no canonical definition to state claims against.
-/

/-! ## A083699.P7745989136434051653

`A083698(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A083699.P7745989136434051653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A083698 (n + 1) * a (n - 1) + a (n - 2)

end

end A083699.P7745989136434051653

/-! ## A083699.P4269388981821714139

`A140199(A128816(n))`
-/

namespace A083699.P4269388981821714139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140199 (A128816 n).toNat

end

end A083699.P4269388981821714139

