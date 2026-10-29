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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A062901: Number and its reversal are both multiples of 7.

The programs for A062901, there is no canonical definition to state claims against.
-/

/-! ## A062901.P12949701095948528598

`filter[A373117(n+2), A082784(#)]`
-/

namespace A062901.P12949701095948528598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373117 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A062901.P12949701095948528598

/-! ## A062901.P15874303434930420912

`∩[A182341(n+1), A373117(n+1)]`
-/

namespace A062901.P15874303434930420912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062901.P15874303434930420912

/-!
# A062902: Number and its reversal are both multiples of 12.

The programs for A062902, there is no canonical definition to state claims against.
-/

/-! ## A062902.P14453766363009975046

`record[A005925(A332797(3*n+4))/2]`
-/

namespace A062902.P14453766363009975046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005925 (A332797 (3 * n + 4)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062902.P14453766363009975046

/-!
# A062904: Numbers n such that n and its reversal are both multiples of 14.

The programs for A062904, there is no canonical definition to state claims against.
-/

/-! ## A062904.P1597737541169996255

`∩[A062897(n+1), A062901(n+1)]`
-/

namespace A062904.P1597737541169996255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062904.P1597737541169996255

/-!
# A062906: Numbers k such that k and its reversal are both multiples of 17.

The programs for A062906, there is no canonical definition to state claims against.
-/

/-! ## A062906.P8319465849362739178

`∩[A059995(A020338(n+1)), A008599(n)]`
-/

namespace A062906.P8319465849362739178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A020338 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062906.P8319465849362739178

/-!
# A062908: Non-palindromic number and its reversal are both even.

The programs for A062908, there is no canonical definition to state claims against.
-/

/-! ## A062908.P6836144937326977545

`eq[2, gcd(n, A280193(A338827(n)))]`
-/

namespace A062908.P6836144937326977545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A280193 (A338827 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062908.P6836144937326977545

/-! ## A062908.P4476347624575547844

`∩[A029742(n+1), A062897(n+1)]`
-/

namespace A062908.P4476347624575547844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062908.P4476347624575547844

/-! ## A062908.P133855094781901381

`∩[A062897(n+1), A124404(n+1)]`
-/

namespace A062908.P133855094781901381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062908.P133855094781901381

/-! ## A062908.P5740800316561482093

`eq[A019427(A256756(n)), A152271(n)]`
-/

namespace A062908.P5740800316561482093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A256756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062908.P5740800316561482093

/-! ## A062908.P15472050564694052751

`eq[2, A019427(n)+A019427(A256756(n))]`
-/

namespace A062908.P15472050564694052751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + A019427 (A256756 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062908.P15472050564694052751

/-! ## A062908.P5822791857108884778

`eq[2*A084099(n), A084099(A338827(n))]`
-/

namespace A062908.P5822791857108884778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (A338827 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062908.P5822791857108884778

/-! ## A062908.P7506600268065376788

`lt[2, A280193(n)*A280193(A338827(n))]`
-/

namespace A062908.P7506600268065376788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n * A280193 (A338827 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062908.P7506600268065376788

/-!
# A062909: Non-palindromic number and its reversal are both multiples of 4.

The programs for A062909, there is no canonical definition to state claims against.
-/

/-! ## A062909.P14631618776076951555

`∩[A062898(n+1), A062908(n+1)]`
-/

namespace A062909.P14631618776076951555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062909.P14631618776076951555

/-! ## A062909.P9280033042836646524

`∩[A029742(n+1), A062898(n+1)]`
-/

namespace A062909.P9280033042836646524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062909.P9280033042836646524

/-! ## A062909.P492812486187613985

`∩[A054518(n+1), A062898(n+1)]`
-/

namespace A062909.P492812486187613985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062909.P492812486187613985

/-! ## A062909.P9547255710098019902

`∩[A062898(n+1), A124404(n+1)]`
-/

namespace A062909.P9547255710098019902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062909.P9547255710098019902

/-!
# A062910: Non-palindromic number and its reversal are both multiples of 6.

The programs for A062910, there is no canonical definition to state claims against.
-/

/-! ## A062910.P11059993733593148902

`∩[6*n, A062908(n+1)]`
-/

namespace A062910.P11059993733593148902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P11059993733593148902

/-! ## A062910.P15918125279003325038

`filter[A062908(n+1), A079979(#)]`
-/

namespace A062910.P15918125279003325038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A062910.P15918125279003325038

/-! ## A062910.P12530032234717623619

`filter[A062908(n+1), A093719(#)]`
-/

namespace A062910.P12530032234717623619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A062910.P12530032234717623619

/-! ## A062910.P794424028912284260

`∩[A062908(n+1), A008458(n)]`
-/

namespace A062910.P794424028912284260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P794424028912284260

/-! ## A062910.P6854582106199406850

`∩[A062908(n+1), A008588(n)]`
-/

namespace A062910.P6854582106199406850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P6854582106199406850

/-! ## A062910.P16335905090162023215

`∩[A062908(n+1), A062899(n+1)]`
-/

namespace A062910.P16335905090162023215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P16335905090162023215

/-! ## A062910.P8112110783916401327

`∩[A062908(n+1), A230628(n+1)]`
-/

namespace A062910.P8112110783916401327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P8112110783916401327

/-! ## A062910.P2051283693642571922

`∩[A062908(n+1), A231960(n+1)]`
-/

namespace A062910.P2051283693642571922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P2051283693642571922

/-! ## A062910.P52841332241309812

`∩[A062908(n+1), A256882(n+1)]`
-/

namespace A062910.P52841332241309812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P52841332241309812

/-! ## A062910.P2880529351772903467

`∩[A062908(n+1), A385701(n+1)]`
-/

namespace A062910.P2880529351772903467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P2880529351772903467

/-! ## A062910.P9914698901404020922

`∩[A062908(n+1), A378884(n+1)]`
-/

namespace A062910.P9914698901404020922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P9914698901404020922

/-! ## A062910.P8413428869871653334

`∩[A062908(n+1), A008486(n)]`
-/

namespace A062910.P8413428869871653334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P8413428869871653334

/-! ## A062910.P8995561880643878161

`∩[A062908(n+1), A008585(n)]`
-/

namespace A062910.P8995561880643878161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P8995561880643878161

/-! ## A062910.P18084317649281808975

`∩[A062908(n+1), A319451(n)]`
-/

namespace A062910.P18084317649281808975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P18084317649281808975

/-! ## A062910.P9674203850175483723

`∩[A062908(n+1), A047225(n+1)]`
-/

namespace A062910.P9674203850175483723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P9674203850175483723

/-! ## A062910.P1560815547911833143

`∩[A062908(n+1), A047264(n+1)]`
-/

namespace A062910.P1560815547911833143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P1560815547911833143

/-! ## A062910.P3234392666498215102

`∩[A062908(n+1), A204502(n+1)]`
-/

namespace A062910.P3234392666498215102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P3234392666498215102

/-! ## A062910.P10346425189569313438

`∩[A062908(n+1), A397805(n+1)]`
-/

namespace A062910.P10346425189569313438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P10346425189569313438

/-! ## A062910.P12843081999993426674

`∩[A062908(n+1), A061641(n+1)]`
-/

namespace A062910.P12843081999993426674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P12843081999993426674

/-! ## A062910.P18200548435787056461

`∩[A062908(n+1), A177729(n+1)]`
-/

namespace A062910.P18200548435787056461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062910.P18200548435787056461

/-!
# A062911: Non-palindromic number and its reversal are both multiples of 8.

The programs for A062911, there is no canonical definition to state claims against.
-/

/-! ## A062911.P15452227478930004563

`∩[A062900(n+1), A062909(n+1)]`
-/

namespace A062911.P15452227478930004563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062911.P15452227478930004563

/-! ## A062911.P2805309468967017702

`∩[A062900(n+1), A062908(n+1)]`
-/

namespace A062911.P2805309468967017702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062911.P2805309468967017702

/-!
# A062913: Non-palindromic number and its reversal are both multiples of 14.

The programs for A062913, there is no canonical definition to state claims against.
-/

/-! ## A062913.P2141151544581460994

`A062904(A062934(n+1)+7)`
-/

namespace A062913.P2141151544581460994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062904 (A062934 (n + 1) + 7).toNat

end

end A062913.P2141151544581460994

/-!
# A062916: Non-palindromic number and its reversal are both multiples of 19.

The programs for A062916, there is no canonical definition to state claims against.
-/

/-! ## A062916.P3855492436897199431

`A062907(eq[3, A026806(n+1)])`
-/

namespace A062916.P3855492436897199431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062916.P3855492436897199431

/-!
# A062917: Nonpalindromic numbers k such that k is not divisible by 10 and k*R(k) is a square, where R(k) is the reversal of k (A004086).

The programs for A062917, there is no canonical definition to state claims against.
-/

/-! ## A062917.P17733258538279711115

`∪[A035090(n+1), A082994(n+1)]`
-/

namespace A062917.P17733258538279711115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062917.P17733258538279711115

/-! ## A062917.P8044023956393564404

`record[A004086(A004086(A070760(n+2)))]`
-/

namespace A062917.P8044023956393564404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (A070760 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062917.P8044023956393564404

/-! ## A062917.P8653886469108185993

`record[A004151(A070760(n+2))]`
-/

namespace A062917.P8653886469108185993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A070760 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062917.P8653886469108185993

/-! ## A062917.P16858483937133942724

`filter[A070760(n+1), A168184(#)]`
-/

namespace A062917.P16858483937133942724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A062917.P16858483937133942724

/-!
# A062918: Sum of the digit reversals of the first n natural numbers.

The programs for A062918, there is no canonical definition to state claims against.
-/

/-! ## A062918.P11303842529563471930

`∑[A004086(n+1)]`
-/

namespace A062918.P11303842529563471930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062918.P11303842529563471930

/-! ## A062918.P10952131658476749978

`∑[∑[1-Δ[A056965(n)]]]`
-/

namespace A062918.P10952131658476749978
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062918.P10952131658476749978

/-! ## A062918.P6239471603833615469

`∑[A056964(n+1)-(n+1)]`
-/

namespace A062918.P6239471603833615469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062918.P6239471603833615469

/-! ## A062918.P14062035534119066474

`∑[n+1-A056965(n+1)]`
-/

namespace A062918.P14062035534119066474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A056965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062918.P14062035534119066474

/-! ## A062918.P12755191909819727902

`∑[A061205(n+1)/(n+1)]`
-/

namespace A062918.P12755191909819727902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062918.P12755191909819727902

/-! ## A062918.P9886943640523735380

`∑[A135020(2*(n+1))]`
-/

namespace A062918.P9886943640523735380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062918.P9886943640523735380

/-! ## A062918.P8162759674648771086

`∑[A004093(5*(n+1))]`
-/

namespace A062918.P8162759674648771086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062918.P8162759674648771086

/-! ## A062918.P14836689987143148408

`∑[A167542(A014681(n+1))]`
-/

namespace A062918.P14836689987143148408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167542 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062918.P14836689987143148408

/-! ## A062918.P8940380350183353661

`∑[ratio[A062919(n)]]`
-/

namespace A062918.P8940380350183353661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062919 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062918.P8940380350183353661

/-! ## A062918.P10281730945659620325

`∑[A062919(n+1)/A062919(n)]`
-/

namespace A062918.P10281730945659620325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062919 (n + 1) : ℚ) / (A062919 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062918.P10281730945659620325

/-!
# A062919: "Reverse factorials": product of the digit reversals of the numbers 1 through n.

The programs for A062919, there is no canonical definition to state claims against.
-/

/-! ## A062919.P3137789569501491353

`∏[A004086(floor(acot(n)+n))]`
-/

namespace A062919.P3137789569501491353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A062919.P3137789569501491353

/-! ## A062919.P10443150869759548577

`a(n-1)*A004086(n)` with `a(0)=1`
-/

namespace A062919.P10443150869759548577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004086 n

end

end A062919.P10443150869759548577

/-! ## A062919.P11920573347026261992

`a(n-1)*A345110(n)` with `a(0)=1`
-/

namespace A062919.P11920573347026261992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A345110 n

end

end A062919.P11920573347026261992

/-! ## A062919.P12165911638795905891

`∏[A004086(round(sqrt(n²+1)))]`
-/

namespace A062919.P12165911638795905891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A062919.P12165911638795905891

/-! ## A062919.P15964934231960045854

`a(n-1)*A135020(2*n)` with `a(0)=1`
-/

namespace A062919.P15964934231960045854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A135020 (2 * n)

end

end A062919.P15964934231960045854

/-! ## A062919.P14116673867537608877

`a(n-1)*A004093(5*n)` with `a(0)=1`
-/

namespace A062919.P14116673867537608877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004093 (5 * n)

end

end A062919.P14116673867537608877

/-! ## A062919.P5153628594004784297

`(A056964(n)-n)*a(n-1)` with `a(0)=1`
-/

namespace A062919.P5153628594004784297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A056964 n - (n : ℤ)) * a (n - 1)

end

end A062919.P5153628594004784297

/-! ## A062919.P2172230826932092098

`(n-A056965(n))*a(n-1)` with `a(0)=1`
-/

namespace A062919.P2172230826932092098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - A056965 n) * a (n - 1)

end

end A062919.P2172230826932092098

/-! ## A062919.P10456386559112938587

`∏[A028310(A004086(n))]`
-/

namespace A062919.P10456386559112938587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A062919.P10456386559112938587

/-! ## A062919.P5874388852813294064

`(A160925(n+1)-A160933(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A062919.P5874388852813294064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A160925 (n + 1) - A160933 (n + 1)) * a (n - 1)

end

end A062919.P5874388852813294064

/-!
# A062920: Numbers k that, when expressed in base 4 and then interpreted in base 5, give a multiple of k.

The programs for A062920, there is no canonical definition to state claims against.
-/

/-! ## A062920.P15623243913025551699

`and(A094588(3*n), A330994(A287140(n)))`
-/

namespace A062920.P15623243913025551699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094588 (3 * n)) (A330994 (A287140 n).toNat)

end

end A062920.P15623243913025551699

/-!
# A062921: When expressed in base 4 and then interpreted in base 6, is a multiple of the original number.

The programs for A062921, there is no canonical definition to state claims against.
-/

/-! ## A062921.P5026731212962703297

`eq[n, gcd(n, A037460(n))]`
-/

namespace A062921.P5026731212962703297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037460 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062921.P5026731212962703297

/-! ## A062921.P5455593297734663707

`eq[0, A037460(n)%A028310(n)]`
-/

namespace A062921.P5455593297734663707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037460 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062921.P5455593297734663707

/-! ## A062921.P9255127977631858760

`eq[n*A044930(n+1), A037460(n)]`
-/

namespace A062921.P9255127977631858760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A044930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062921.P9255127977631858760

/-! ## A062921.P847971571067427713

`eq[n*A044948(n+1), A037460(n)]`
-/

namespace A062921.P847971571067427713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A044948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062921.P847971571067427713

/-!
# A062922: Numbers k that, when expressed in base 4 and then interpreted in base 7, give a multiple of k.

The programs for A062922, there is no canonical definition to state claims against.
-/

/-! ## A062922.P12333218400677517693

`A237291(A054131(n))`
-/

namespace A062922.P12333218400677517693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237291 (A054131 n).toNat

end

end A062922.P12333218400677517693

/-! ## A062922.P6595121120493456872

`A083290(A018026(n)+1)`
-/

namespace A062922.P6595121120493456872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083290 (A018026 n + 1).toNat

end

end A062922.P6595121120493456872

/-!
# A062923: Numbers k that, when expressed in base 4 and then interpreted in base 8, give a multiple of k.

The programs for A062923, there is no canonical definition to state claims against.
-/

/-! ## A062923.P13269280459939686440

`record[gcd(n, A037462(n))]`
-/

namespace A062923.P13269280459939686440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037462 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062923.P13269280459939686440

/-! ## A062923.P15254810461166184416

`eq[0, A037462(n)%A028310(n)]`
-/

namespace A062923.P15254810461166184416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037462 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062923.P15254810461166184416

/-! ## A062923.P13264857561961466609

`lt[lcm(n, A037462(n)), A037462(n+2)]`
-/

namespace A062923.P13264857561961466609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A037462 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062923.P13264857561961466609

/-! ## A062923.P11304369382523617151

`record[A057000(n+1)/A097026(n+1)]`
-/

namespace A062923.P11304369382523617151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057000 (n + 1) : ℚ) / (A097026 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062923.P11304369382523617151

/-!
# A062925: Numbers k that, when expressed in base 4 and then interpreted in base 9, give a multiple of k.

The programs for A062925, there is no canonical definition to state claims against.
-/

/-! ## A062925.P2140179855626776715

`eq[n, gcd(n, A037463(n))]`
-/

namespace A062925.P2140179855626776715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037463 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062925.P2140179855626776715

/-! ## A062925.P9063539521747677276

`eq[0, A037463(n)%A028310(n)]`
-/

namespace A062925.P9063539521747677276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037463 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062925.P9063539521747677276

/-! ## A062925.P16651517146438263903

`lt[lcm(n, A037463(n)), A037463(n+1)]`
-/

namespace A062925.P16651517146438263903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A037463 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062925.P16651517146438263903

/-! ## A062925.P9732620771223634530

`eq[A391754(n+3), A393081(n)]`
-/

namespace A062925.P9732620771223634530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391754 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062925.P9732620771223634530

/-! ## A062925.P8719941685608070045

`record[A219254(A336843(n+1))]`
-/

namespace A062925.P8719941685608070045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219254 (A336843 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062925.P8719941685608070045

/-!
# A062926: a(1) = 1; a(n) is the smallest square of the form k*a(n-1) + 1, k > 0, i.e., a(n) == 1 (mod a(n-1)), n > 2.

The programs for A062926, there is no canonical definition to state claims against.
-/

/-! ## A062926.P2268235880195371970

`A061369(a(n-1))` with `a(0)=1`
-/

namespace A062926.P2268235880195371970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061369 (a (n - 1)).toNat

end

end A062926.P2268235880195371970

/-! ## A062926.P6422478721341483310

`A338151(a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A062926.P6422478721341483310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A338151 (a (n - 1)).toNat

end

end A062926.P6422478721341483310

/-!
# A062927: Numbers k such that k divides the sum of digits of 9^k.

The programs for A062927, there is no canonical definition to state claims against.
-/

/-! ## A062927.P2856629372408079252

`eq[n, gcd(n, A065999(n))]`
-/

namespace A062927.P2856629372408079252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A065999 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062927.P2856629372408079252

/-! ## A062927.P8159126093997416369

`eq[lcm(n, A004166(2*n)), A065999(n)]`
-/

namespace A062927.P8159126093997416369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A004166 (2 * n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062927.P8159126093997416369

/-! ## A062927.P4879666553794129626

`record[A013610(A036043(n²))]`
-/

namespace A062927.P4879666553794129626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A036043 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062927.P4879666553794129626

/-!
# A062928: Numbers k that, when expressed in base 5 and then interpreted in base 6, give a multiple of k.

The programs for A062928, there is no canonical definition to state claims against.
-/

/-! ## A062928.P11629391638994715527

`abs(n+1-A205133(n^n))`
-/

namespace A062928.P11629391638994715527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A205133 (n ^ n)|

end

end A062928.P11629391638994715527

/-! ## A062928.P16351974408142297635

`A110413(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A062928.P16351974408142297635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  A110413 (a (n - 1)).toNat

end

end A062928.P16351974408142297635

/-!
# A062929: Numbers k that, when expressed in base 5 and then interpreted in base 7, give a multiple of k.

The programs for A062929, there is no canonical definition to state claims against.
-/

/-! ## A062929.P4815024846389496343

`A297617(A247480(n))+n`
-/

namespace A062929.P4815024846389496343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297617 (A247480 n).toNat + (n : ℤ)

end

end A062929.P4815024846389496343

/-! ## A062929.P12728961679449708962

`n*A002568(A005635(n))`
-/

namespace A062929.P12728961679449708962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002568 (A005635 n).toNat

end

end A062929.P12728961679449708962

/-!
# A062930: Numbers k that, when expressed in base 5 and then interpreted in base 8, give a multiple of k.

The programs for A062930, there is no canonical definition to state claims against.
-/

/-! ## A062930.P3332679567715929029

`eq[A030101(n), A030101(A037467(n))]`
-/

namespace A062930.P3332679567715929029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A037467 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062930.P3332679567715929029

/-! ## A062930.P13738648733130146353

`eq[A305989(A037467(n)), A305989(n)]`
-/

namespace A062930.P13738648733130146353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A037467 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062930.P13738648733130146353

/-! ## A062930.P12929221473493117952

`∑[gcd(5, n^a(n-2))^3]` with `a(0)=0, a(1)=1`
-/

namespace A062930.P12929221473493117952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.gcd 5 (n ^ f1 (n - 2)) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062930.P12929221473493117952

/-!
# A062931: Numbers k that, when expressed in base 5 and then interpreted in base 9, give a multiple of k.

The programs for A062931, there is no canonical definition to state claims against.
-/

/-! ## A062931.P14838422299142919235

`eq[n, gcd(n, A037468(n))]`
-/

namespace A062931.P14838422299142919235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037468 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062931.P14838422299142919235

/-! ## A062931.P1837432360097553880

`eq[0, A037468(n)%A028310(n)]`
-/

namespace A062931.P1837432360097553880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037468 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062931.P1837432360097553880

/-! ## A062931.P11502498040382130363

`eq[A137305(A037468(n)), A137305(n)]`
-/

namespace A062931.P11502498040382130363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 (A037468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062931.P11502498040382130363

/-! ## A062931.P15986885760198814904

`eq[A080464(n), A181578(n)]`
-/

namespace A062931.P15986885760198814904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080464 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062931.P15986885760198814904

/-! ## A062931.P4485827161444245797

`eq[A202605(A131507(n)), A294787(n+1)]`
-/

namespace A062931.P4485827161444245797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202605 (A131507 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062931.P4485827161444245797

/-!
# A062932: a(0) = 0; a(n) = smallest number > a(n-1) such that a(n-1)+a(n) is a palindrome.

The programs for A062932, there is no canonical definition to state claims against.
-/

/-! ## A062932.P5954447604718652549

`A228730(n)*A259333(A059922(n))`
-/

namespace A062932.P5954447604718652549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228730 n * A259333 (A059922 n).toNat

end

end A062932.P5954447604718652549

/-! ## A062932.P2749220013375710719

`eq[A178401(2*n), A322356(A263722(n+1))]`
-/

namespace A062932.P2749220013375710719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (A263722 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062932.P2749220013375710719

/-!
# A062933: Numbers k such that k divides the sum of digits of 8^k.

The programs for A062933, there is no canonical definition to state claims against.
-/

/-! ## A062933.P4933604499713485378

`eq[n, gcd(n, A066004(n))]`
-/

namespace A062933.P4933604499713485378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A066004 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062933.P4933604499713485378

/-!
# A062936: Numbers n such that n*R(n) is a palindrome, where R(n) (A004086) = digit reversal.

The programs for A062936, there is no canonical definition to state claims against.
-/

/-! ## A062936.P3559581265537199985

`eq[A011558(n), A055642(A003132(n))]`
-/

namespace A062936.P3559581265537199985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062936.P3559581265537199985

/-! ## A062936.P13879086073264277384

`eq[A010122(n), A139337(A003132(n))]`
-/

namespace A062936.P13879086073264277384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062936.P13879086073264277384

/-! ## A062936.P16179843147324555743

`eq[A055642(A003132(n)), A112713(n)]`
-/

namespace A062936.P16179843147324555743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062936.P16179843147324555743

/-! ## A062936.P16201419106546589012

`eq[A055642(A003132(n)), A168184(n)]`
-/

namespace A062936.P16201419106546589012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062936.P16201419106546589012

/-! ## A062936.P14226360778023944895

`eq[A055642(A003132(n)), A330025(n)]`
-/

namespace A062936.P14226360778023944895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062936.P14226360778023944895

/-!
# A062937: Numbers k that, when expressed in base 6 and then interpreted in base 8, give a multiple of k.

The programs for A062937, there is no canonical definition to state claims against.
-/

/-! ## A062937.P1839151388815519863

`A219642(A348807(n))+n`
-/

namespace A062937.P1839151388815519863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A348807 n).toNat + (n : ℤ)

end

end A062937.P1839151388815519863

/-! ## A062937.P10109258657229314072

`xor(n, A160086(A015544(n)))`
-/

namespace A062937.P10109258657229314072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A160086 (A015544 n).toNat)

end

end A062937.P10109258657229314072

/-! ## A062937.P5599587835505000153

`xor(n, A160086(A051055(n)))`
-/

namespace A062937.P5599587835505000153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A160086 (A051055 n).toNat)

end

end A062937.P5599587835505000153

/-!
# A062938: a(n) = n*(n+1)*(n+2)*(n+3)+1 = (n^2 + 3*n + 1)^2.

The programs for A062938, the canonical program `A062938.P5210963884579662397` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062938 has offset 0).

The definition of A062938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+3*n+1)²` (program `A062938.P5210963884579662397`, by `A062938.P5210963884579662397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062938.P5210963884579662397

`(n²+3*n+1)²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062938

/-- `(n²+3*n+1)²` -/
def P5210963884579662397.Spec : Prop :=
  ∀ n, (P5210963884579662397.a n : ℤ) = A062938 n

theorem P5210963884579662397.correct : P5210963884579662397.Spec := by
  intro n
  simp only [A062938]

end A062938

/-! ## A062938.P18330290264995984054

`ogf((1+20x+6x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A062938.P18330290264995984054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 20, 6, -4, 1] [1, -5, 10, -10, 5, -1] n

end

end A062938.P18330290264995984054

namespace A062938

/-- `ogf((1+20x+6x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P18330290264995984054.Spec : Prop :=
  ∀ n, P18330290264995984054.a n = A062938 n

end A062938

/-! ## A062938.P838971146923069177

`n*(n+1)*(n+2)*(n+3)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062938.P838971146923069177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1) * (n + 2) * (n + 3) + 1

end

end A062938.P838971146923069177

namespace A062938

/-- `n*(n+1)*(n+2)*(n+3)+1` -/
def P838971146923069177.Spec : Prop :=
  ∀ n, (P838971146923069177.a n : ℤ) = A062938 n

theorem P838971146923069177.correct : P838971146923069177.Spec := by
  intro n
  simp only [A062938, Nat.add_sub_cancel, A062938.P838971146923069177.a, A062938.P5210963884579662397.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062938

/-! ## A062938.P6480673569719005893

`or(1, record[(1-n)²-n]²)`
-/

namespace A062938.P6480673569719005893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2)

end

end A062938.P6480673569719005893

namespace A062938

/-- `or(1, record[(1-n)²-n]²)` -/
def P6480673569719005893.Spec : Prop :=
  ∀ n, P6480673569719005893.a n = A062938 n

end A062938

/-! ## A062938.P13407177014218731313

`∑[a(n-1)+2]^2` with `a(0)=1, a(1)=4`
-/

namespace A062938.P13407177014218731313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A062938.P13407177014218731313

namespace A062938

/-- `∑[a(n-1)+2]^2` -/
def P13407177014218731313.Spec : Prop :=
  ∀ n, (P13407177014218731313.a n : ℤ) = A062938 n

end A062938

/-! ## A062938.P3151362925089367516

`floor(∑[a(n-1)-2]²)` with `a(0)=-1, a(1)=-4`

`floor` is left out, it is the identity on integers.
-/

namespace A062938.P3151362925089367516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -4] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A062938.P3151362925089367516

namespace A062938

/-- `floor(∑[a(n-1)-2]²)` -/
def P3151362925089367516.Spec : Prop :=
  ∀ n, P3151362925089367516.a n = A062938 n

end A062938

/-! ## A062938.P10839394983779008254

`lcm(n+2, n+3)*∑[2*n]+1`
-/

namespace A062938.P10839394983779008254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A062938.P10839394983779008254

namespace A062938

/-- `lcm(n+2, n+3)*∑[2*n]+1` -/
def P10839394983779008254.Spec : Prop :=
  ∀ n, (P10839394983779008254.a n : ℤ) = A062938 n

end A062938

/-! ## A062938.P15058846768179546292

`or(1, 2*n*(n+3)*∑[n+1])`
-/

namespace A062938.P15058846768179546292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n * ((n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A062938.P15058846768179546292

namespace A062938

/-- `or(1, 2*n*(n+3)*∑[n+1])` -/
def P15058846768179546292.Spec : Prop :=
  ∀ n, (P15058846768179546292.a n : ℤ) = A062938 n

end A062938

/-! ## A062938.P1995762484081602173

`(∑[2*n+1]+n)^gcd(2, 2*n)`
-/

namespace A062938.P1995762484081602173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ Nat.gcd 2 (2 * n)

end

end A062938.P1995762484081602173

namespace A062938

/-- `(∑[2*n+1]+n)^gcd(2, 2*n)` -/
def P1995762484081602173.Spec : Prop :=
  ∀ n, (P1995762484081602173.a n : ℤ) = A062938 n

end A062938

/-! ## A062938.P3903765405990260963

`xor(1, 2*n*(n+3)*∑[n+1])`
-/

namespace A062938.P3903765405990260963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n * ((n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A062938.P3903765405990260963

namespace A062938

/-- `xor(1, 2*n*(n+3)*∑[n+1])` -/
def P3903765405990260963.Spec : Prop :=
  ∀ n, (P3903765405990260963.a n : ℤ) = A062938 n

end A062938

/-! ## A062938.P12274857592841726404

`a(n-1)+8*n*∑[n+1]` with `a(0)=1`
-/

namespace A062938.P12274857592841726404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 8 * n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062938.P12274857592841726404

namespace A062938

/-- `a(n-1)+8*n*∑[n+1]` -/
def P12274857592841726404.Spec : Prop :=
  ∀ n, (P12274857592841726404.a n : ℤ) = A062938 n

end A062938

/-! ## A062938.P8382257440914066322

`(n+1)*2*n*C(n+3, 2)+1`
-/

namespace A062938.P8382257440914066322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n) * Nat.choose (n + 3) 2 + 1

end

end A062938.P8382257440914066322

namespace A062938

/-- `(n+1)*2*n*C(n+3, 2)+1` -/
def P8382257440914066322.Spec : Prop :=
  ∀ n, (P8382257440914066322.a n : ℤ) = A062938 n

theorem P8382257440914066322.correct : P8382257440914066322.Spec := by
  intro n
  simp only [A062938, Nat.add_sub_cancel, A062938.P8382257440914066322.a, A062938.P5210963884579662397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062938

/-! ## A062938.P4776729587616437451

`A090288(n)²/4`
-/

namespace A062938.P4776729587616437451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090288 n ^ 2 : ℚ) / 4

end

end A062938.P4776729587616437451

namespace A062938

/-- `A090288(n)²/4` -/
def P4776729587616437451.Spec : Prop :=
  ∀ n, P4776729587616437451.a n = (A062938 n : ℚ)

theorem P4776729587616437451.correct : P4776729587616437451.Spec := by
  intro n
  simp only [A062938, Nat.add_sub_cancel, A062938.P4776729587616437451.a, A062938.P5210963884579662397.a, A090288, A090288.P18129157653264208824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062938

/-! ## A062938.P8937847777388058372

`A028387(n)*A028387(n)`
-/

namespace A062938.P8937847777388058372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n * A028387 n

end

end A062938.P8937847777388058372

namespace A062938

/-- `A028387(n)*A028387(n)` -/
def P8937847777388058372.Spec : Prop :=
  ∀ n, P8937847777388058372.a n = A062938 n

theorem P8937847777388058372.correct : P8937847777388058372.Spec := by
  intro n
  simp only [A062938, Nat.add_sub_cancel, A062938.P8937847777388058372.a, A062938.P5210963884579662397.a, A028387, A028387.P5954590561330899546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062938

/-! ## A062938.P539302781980908160

`A109118(n)/A090288(n)`
-/

namespace A062938.P539302781980908160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109118 n : ℚ) / (A090288 n : ℚ)

end

end A062938.P539302781980908160

namespace A062938

/-- `A109118(n)/A090288(n)` -/
def P539302781980908160.Spec : Prop :=
  ∀ n, P539302781980908160.a n = (A062938 n : ℚ)

theorem P539302781980908160.correct : P539302781980908160.Spec := by
  intro n
  simp only [A062938, Nat.add_sub_cancel, A062938.P539302781980908160.a, A062938.P5210963884579662397.a, A090288, A090288.P18129157653264208824.a, A109118, A109118.P764154899245515744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062938

/-! ## A062938.P17434467898047502767

`ceil(cot(Δ[ratio[n+1]]))²`
-/

namespace A062938.P17434467898047502767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (f1 (n + 1) - f1 n : ℝ)⌉ ^ 2

end

end A062938.P17434467898047502767

namespace A062938

/-- `ceil(cot(Δ[ratio[n+1]]))²` -/
def P17434467898047502767.Spec : Prop :=
  ∀ n, P17434467898047502767.a n = A062938 n

end A062938

/-! ## A062938.P698429625745993001

`2*n*Δ[C(∑[n+1], 2)]+1`
-/

namespace A062938.P698429625745993001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1

end

end A062938.P698429625745993001

namespace A062938

/-- `2*n*Δ[C(∑[n+1], 2)]+1` -/
def P698429625745993001.Spec : Prop :=
  ∀ n, P698429625745993001.a n = A062938 n

end A062938

/-! ## A062938.P11529501842371184926

`(A101214(n)+A101213(n+1))/A101213(n+1)`
-/

namespace A062938.P11529501842371184926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101214 n + A101213 (n + 1) : ℚ) / (A101213 (n + 1) : ℚ)

end

end A062938.P11529501842371184926

namespace A062938

/-- `(A101214(n)+A101213(n+1))/A101213(n+1)` -/
def P11529501842371184926.Spec : Prop :=
  ∀ n, P11529501842371184926.a n = (A062938 n : ℚ)

theorem P11529501842371184926.correct : P11529501842371184926.Spec := by
  intro n
  simp only [A062938, Nat.add_sub_cancel, A062938.P11529501842371184926.a, A062938.P5210963884579662397.a, A101213, A101213.P3554903692529130162.a, A101214, A101214.P8343880758956369705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062938

/-! ## A062938.P3201614741022948171

`A104777(A007980(n))`
-/

namespace A062938.P3201614741022948171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104777 (A007980 n).toNat

end

end A062938.P3201614741022948171

namespace A062938

/-- `A104777(A007980(n))` -/
def P3201614741022948171.Spec : Prop :=
  ∀ n, P3201614741022948171.a n = A062938 n

end A062938

/-!
# A062939: Numbers k that, when expressed in base 6 and then interpreted in base 9, give a multiple of k.

The programs for A062939, there is no canonical definition to state claims against.
-/

/-! ## A062939.P2316590749195032327

`eq[n, gcd(n, A037472(n))]`
-/

namespace A062939.P2316590749195032327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037472 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062939.P2316590749195032327

/-! ## A062939.P11494256020904814786

`lt[lcm(n, A037472(n)), A037472(n+4)]`
-/

namespace A062939.P11494256020904814786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A037472 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062939.P11494256020904814786

/-! ## A062939.P3150023032662907742

`eq[A030101(n), A030101(A037472(n))]`
-/

namespace A062939.P3150023032662907742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A037472 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062939.P3150023032662907742

/-! ## A062939.P16840561695064828048

`eq[A051724(A037472(n)), A051724(n)]`
-/

namespace A062939.P16840561695064828048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A037472 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062939.P16840561695064828048

/-! ## A062939.P3019668777033914199

`eq[A106609(A037472(n)), A106609(n)]`
-/

namespace A062939.P3019668777033914199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A037472 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062939.P3019668777033914199

/-!
# A062940: Number of squares (including 0) with n digits.

The programs for A062940, the canonical program `A062940.P116347299529594207` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062940 has offset 1).

The definition of A062940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062940.P12072017342298029344

`Δ[floor(10^(n/2))+n%2]+floor(acot(n))`
-/

namespace A062940.P12072017342298029344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A062940.P12072017342298029344

namespace A062940

/-- `Δ[floor(10^(n/2))+n%2]+floor(acot(n))` -/
def P12072017342298029344.Spec : Prop :=
  ∀ n, P12072017342298029344.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P14810989107033140177

`A000007(n)+Δ[ceil(sqrt(10)^n)]`
-/

namespace A062940.P14810989107033140177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (10 : ℝ) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A062940.P14810989107033140177

namespace A062940

/-- `A000007(n)+Δ[ceil(sqrt(10)^n)]` -/
def P14810989107033140177.Spec : Prop :=
  ∀ n, P14810989107033140177.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P4497377409599549005

`Δ[ceil(sqrt(10)^n)*A057427(n)]`
-/

namespace A062940.P4497377409599549005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (10 : ℝ) ^ n⌉ * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062940.P4497377409599549005

namespace A062940

/-- `Δ[ceil(sqrt(10)^n)*A057427(n)]` -/
def P4497377409599549005.Spec : Prop :=
  ∀ n, P4497377409599549005.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P15720115714744315643

`Δ[A017936(n+1)]+floor(acot(n))`
-/

namespace A062940.P15720115714744315643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A062940.P15720115714744315643

namespace A062940

/-- `Δ[A017936(n+1)]+floor(acot(n))` -/
def P15720115714744315643.Spec : Prop :=
  ∀ n, P15720115714744315643.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P12533133635667820635

`Δ[A018074(2*n)]+floor(acot(n))`
-/

namespace A062940.P12533133635667820635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A062940.P12533133635667820635

namespace A062940

/-- `Δ[A018074(2*n)]+floor(acot(n))` -/
def P12533133635667820635.Spec : Prop :=
  ∀ n, P12533133635667820635.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P13920811303020199552

`Δ[A130080(3*n+1)]+floor(acot(n))`
-/

namespace A062940.P13920811303020199552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A062940.P13920811303020199552

namespace A062940

/-- `Δ[A130080(3*n+1)]+floor(acot(n))` -/
def P13920811303020199552.Spec : Prop :=
  ∀ n, P13920811303020199552.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P14715553872792419286

`Δ[A130082(4*n+1)]+floor(acot(n))`
-/

namespace A062940.P14715553872792419286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A062940.P14715553872792419286

namespace A062940

/-- `Δ[A130082(4*n+1)]+floor(acot(n))` -/
def P14715553872792419286.Spec : Prop :=
  ∀ n, P14715553872792419286.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P116347299529594207

`A049415(n+1)+A000007(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062940

/-- `A049415(n+1)+A000007(n)` -/
def P116347299529594207.Spec : Prop :=
  ∀ n, P116347299529594207.a n = A062940 (n + 1)

theorem P116347299529594207.correct : P116347299529594207.Spec := by
  intro n
  simp only [A062940, Nat.add_sub_cancel]

end A062940

/-! ## A062940.P18060545287232855339

`A049415(n+1)+char[A123292(n)]`
-/

namespace A062940.P18060545287232855339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123292 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062940.P18060545287232855339

namespace A062940

/-- `A049415(n+1)+char[A123292(n)]` -/
def P18060545287232855339.Spec : Prop :=
  ∀ n, P18060545287232855339.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P3996235756844457456

`A049415(n+1)+A000079(n)%2`
-/

namespace A062940.P3996235756844457456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + Int.tmod (A000079 n) 2

end

end A062940.P3996235756844457456

namespace A062940

/-- `A049415(n+1)+A000079(n)%2` -/
def P3996235756844457456.Spec : Prop :=
  ∀ n, P3996235756844457456.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P16530979720717594749

`A187036(2*n+1)+A049415(n+1)`
-/

namespace A062940.P16530979720717594749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187036 (2 * n + 1) + A049415 (n + 1)

end

end A062940.P16530979720717594749

namespace A062940

/-- `A187036(2*n+1)+A049415(n+1)` -/
def P16530979720717594749.Spec : Prop :=
  ∀ n, P16530979720717594749.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P11875897460337798324

`floor(A049415(n+1)+1/A076368(n+1))`
-/

namespace A062940.P11875897460337798324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049415 (n + 1) : ℚ) + 1 / (A076368 (n + 1) : ℚ)⌋

end

end A062940.P11875897460337798324

namespace A062940

/-- `floor(A049415(n+1)+1/A076368(n+1))` -/
def P11875897460337798324.Spec : Prop :=
  ∀ n, P11875897460337798324.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P8258798568833847891

`A049415(n+1)+1-char[A038722(n+1)]`
-/

namespace A062940.P8258798568833847891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A062940.P8258798568833847891

namespace A062940

/-- `A049415(n+1)+1-char[A038722(n+1)]` -/
def P8258798568833847891.Spec : Prop :=
  ∀ n, P8258798568833847891.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P7862840765424094818

`A102831(2*(n+1))+A102831(2*n+1)`
-/

namespace A062940.P7862840765424094818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102831 (2 * (n + 1)) + A102831 (2 * n + 1)

end

end A062940.P7862840765424094818

namespace A062940

/-- `A102831(2*(n+1))+A102831(2*n+1)` -/
def P7862840765424094818.Spec : Prop :=
  ∀ n, P7862840765424094818.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P6498252115107162330

`A049415(n+1)+A008683(A000118(n))`
-/

namespace A062940.P6498252115107162330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + A008683 (A000118 n).toNat

end

end A062940.P6498252115107162330

namespace A062940

/-- `A049415(n+1)+A008683(A000118(n))` -/
def P6498252115107162330.Spec : Prop :=
  ∀ n, P6498252115107162330.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P18401207488533887059

`A049415(n+1)+char[A295735(A000583(n))]`
-/

namespace A062940.P18401207488533887059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 (A000583 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062940.P18401207488533887059

namespace A062940

/-- `A049415(n+1)+char[A295735(A000583(n))]` -/
def P18401207488533887059.Spec : Prop :=
  ∀ n, P18401207488533887059.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P15154762974127998799

`A049415(n+1)+char[A178500(A178500(n))]`
-/

namespace A062940.P15154762974127998799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 (A178500 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062940.P15154762974127998799

namespace A062940

/-- `A049415(n+1)+char[A178500(A178500(n))]` -/
def P15154762974127998799.Spec : Prop :=
  ∀ n, P15154762974127998799.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P12429878719406292752

`A049415(n+1)+A062941(n+1)-A181354(n+1)`
-/

namespace A062940.P12429878719406292752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + (A062941 (n + 1) - A181354 (n + 1))

end

end A062940.P12429878719406292752

namespace A062940

/-- `A049415(n+1)+A062941(n+1)-A181354(n+1)` -/
def P12429878719406292752.Spec : Prop :=
  ∀ n, P12429878719406292752.a n = A062940 (n + 1)

end A062940

/-! ## A062940.P15060017976289575566

`Δ[ceil(sqrt(10)^n)-A057428(n)]`
-/

namespace A062940.P15060017976289575566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (10 : ℝ) ^ n⌉ - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062940.P15060017976289575566

namespace A062940

/-- `Δ[ceil(sqrt(10)^n)-A057428(n)]` -/
def P15060017976289575566.Spec : Prop :=
  ∀ n, P15060017976289575566.a n = A062940 (n + 1)

end A062940

/-!
# A062941: Number of n-digit cubes (0 is included as a single-digit number).

The programs for A062941, the canonical program `A062941.P13715714431049639666` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062941 has offset 1).

The definition of A062941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062941.P3413400652598790103

`A181354(n+1)+A000007(n)`
-/

namespace A062941.P3413400652598790103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181354 (n + 1) + A000007 n

end

end A062941.P3413400652598790103

namespace A062941

/-- `A181354(n+1)+A000007(n)` -/
def P3413400652598790103.Spec : Prop :=
  ∀ n, P3413400652598790103.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P13715714431049639666

`A000007(n)+Δ[A018005(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062941

/-- `A000007(n)+Δ[A018005(n+1)]` -/
def P13715714431049639666.Spec : Prop :=
  ∀ n, P13715714431049639666.a n = A062941 (n + 1)

theorem P13715714431049639666.correct : P13715714431049639666.Spec := by
  intro n
  simp only [A062941, Nat.add_sub_cancel]

end A062941

/-! ## A062941.P883948439128775766

`A181354(n+1)+A063524(n+1)`
-/

namespace A062941.P883948439128775766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181354 (n + 1) + A063524 (n + 1)

end

end A062941.P883948439128775766

namespace A062941

/-- `A181354(n+1)+A063524(n+1)` -/
def P883948439128775766.Spec : Prop :=
  ∀ n, P883948439128775766.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P12881074931974791710

`A181354(n+1)+A171386(n+3)`
-/

namespace A062941.P12881074931974791710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181354 (n + 1) + A171386 (n + 3)

end

end A062941.P12881074931974791710

namespace A062941

/-- `A181354(n+1)+A171386(n+3)` -/
def P12881074931974791710.Spec : Prop :=
  ∀ n, P12881074931974791710.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P15502893916244548633

`A000007(n)+Δ[A130080(2*n+1)]`
-/

namespace A062941.P15502893916244548633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A062941.P15502893916244548633

namespace A062941

/-- `A000007(n)+Δ[A130080(2*n+1)]` -/
def P15502893916244548633.Spec : Prop :=
  ∀ n, P15502893916244548633.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P11831390678719801751

`A216656(2*(n+1))+A216656(2*n+1)`
-/

namespace A062941.P11831390678719801751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216656 (2 * (n + 1)) + A216656 (2 * n + 1)

end

end A062941.P11831390678719801751

namespace A062941

/-- `A216656(2*(n+1))+A216656(2*n+1)` -/
def P11831390678719801751.Spec : Prop :=
  ∀ n, P11831390678719801751.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P15263293155751890206

`A010051(2*(n+1))+Δ[A130080(2*n+1)]`
-/

namespace A062941.P15263293155751890206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A062941.P15263293155751890206

namespace A062941

/-- `A010051(2*(n+1))+Δ[A130080(2*n+1)]` -/
def P15263293155751890206.Spec : Prop :=
  ∀ n, P15263293155751890206.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P11231022963628336506

`A181403(A280641(n+1))+A181354(n+1)`
-/

namespace A062941.P11231022963628336506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181403 (A280641 (n + 1)).toNat + A181354 (n + 1)

end

end A062941.P11231022963628336506

namespace A062941

/-- `A181403(A280641(n+1))+A181354(n+1)` -/
def P11231022963628336506.Spec : Prop :=
  ∀ n, P11231022963628336506.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P10110400613535218524

`Δ[A130080(2*n+1)+A057427(n)]`
-/

namespace A062941.P10110400613535218524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (2 * n + 1) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062941.P10110400613535218524

namespace A062941

/-- `Δ[A130080(2*n+1)+A057427(n)]` -/
def P10110400613535218524.Spec : Prop :=
  ∀ n, P10110400613535218524.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P3976712067027736484

`Δ[A130080(2*n+1)-A057428(n)]`
-/

namespace A062941.P3976712067027736484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (2 * n + 1) - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062941.P3976712067027736484

namespace A062941

/-- `Δ[A130080(2*n+1)-A057428(n)]` -/
def P3976712067027736484.Spec : Prop :=
  ∀ n, P3976712067027736484.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P4980140965940721927

`Δ[A018005(n+1)+A000051(n)%2]`
-/

namespace A062941.P4980140965940721927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) + Int.tmod (A000051 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062941.P4980140965940721927

namespace A062941

/-- `Δ[A018005(n+1)+A000051(n)%2]` -/
def P4980140965940721927.Spec : Prop :=
  ∀ n, P4980140965940721927.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P10802136253199294238

`Δ[A130130(n+1)+A130080(2*n+1)]`
-/

namespace A062941.P10802136253199294238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (n + 1) + A130080 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062941.P10802136253199294238

namespace A062941

/-- `Δ[A130130(n+1)+A130080(2*n+1)]` -/
def P10802136253199294238.Spec : Prop :=
  ∀ n, P10802136253199294238.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P10247790784307606442

`Δ[A130080(2*n+1)+A057428(2*n)²]`
-/

namespace A062941.P10247790784307606442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (2 * n + 1) + A057428 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062941.P10247790784307606442

namespace A062941

/-- `Δ[A130080(2*n+1)+A057428(2*n)²]` -/
def P10247790784307606442.Spec : Prop :=
  ∀ n, P10247790784307606442.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P7702018367315698280

`Δ[A018005(n+1)%A017987(n)²]`
-/

namespace A062941.P7702018367315698280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018005 (n + 1)) (A017987 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062941.P7702018367315698280

namespace A062941

/-- `Δ[A018005(n+1)%A017987(n)²]` -/
def P7702018367315698280.Spec : Prop :=
  ∀ n, P7702018367315698280.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P9595294918038242756

`A062940(n+1)+A181354(n+1)-A049415(n+1)`
-/

namespace A062941.P9595294918038242756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062940 (n + 1) + (A181354 (n + 1) - A049415 (n + 1))

end

end A062941.P9595294918038242756

namespace A062941

/-- `A062940(n+1)+A181354(n+1)-A049415(n+1)` -/
def P9595294918038242756.Spec : Prop :=
  ∀ n, P9595294918038242756.a n = A062941 (n + 1)

end A062941

/-! ## A062941.P6168146598344696205

`Δ[A018005(n+1)%A017959(n)]`
-/

namespace A062941.P6168146598344696205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018005 (n + 1)) (A017959 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062941.P6168146598344696205

namespace A062941

/-- `Δ[A018005(n+1)%A017959(n)]` -/
def P6168146598344696205.Spec : Prop :=
  ∀ n, P6168146598344696205.a n = A062941 (n + 1)

end A062941

/-!
# A062942: Numbers k that, when expressed in base 6 and then interpreted in base 10, give a multiple of k.

The programs for A062942, there is no canonical definition to state claims against.
-/

/-! ## A062942.P10427991521623761690

`A032546(A028310(n))-floor(acot(n))`
-/

namespace A062942.P10427991521623761690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032546 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A062942.P10427991521623761690

/-! ## A062942.P15722894650120385629

`∪[A032546(n+1), A130428(n+1)]`
-/

namespace A062942.P15722894650120385629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062942.P15722894650120385629

/-! ## A062942.P17818502828915155772

`∪[A032546(n+1), A130429(n+1)]`
-/

namespace A062942.P17818502828915155772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062942.P17818502828915155772

/-! ## A062942.P15646883830323817329

`∪[A032546(n+1), A130430(n+1)]`
-/

namespace A062942.P15646883830323817329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062942.P15646883830323817329

/-! ## A062942.P16341685075192129915

`∪[A032546(n+1), A135496(n+1)]`
-/

namespace A062942.P16341685075192129915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062942.P16341685075192129915

/-!
# A062943: When expressed in base 7 and then interpreted in base 9, is a multiple of the original number.

The programs for A062943, there is no canonical definition to state claims against.
-/

/-! ## A062943.P12065774777582179037

`eq[A030101(n), A030101(A037475(n))]`
-/

namespace A062943.P12065774777582179037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A037475 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062943.P12065774777582179037

/-! ## A062943.P13387913520795824121

`eq[A305989(A037475(n)), A305989(n)]`
-/

namespace A062943.P13387913520795824121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A037475 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062943.P13387913520795824121

/-! ## A062943.P10629080443462073016

`∑[A066575((n-1)*(n-2)/2+n*a(n-1)-(n-1)*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A062943.P10629080443462073016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A066575 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) / 2) + ((n : ℤ) * f1 (n - 1) : ℚ) - (((n : ℤ) - 1) * f1 (n - 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062943.P10629080443462073016

/-!
# A062944: Numbers k that, when expressed in base 7 and then interpreted in base 10, give a multiple of k.

The programs for A062944, there is no canonical definition to state claims against.
-/

/-! ## A062944.P12970401947264952919

`A032549(A028310(n))%(2^n)`
-/

namespace A062944.P12970401947264952919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032549 (A028310 n).toNat) (2 ^ n : ℤ)

end

end A062944.P12970401947264952919

/-! ## A062944.P5511442269079365222

`∪[A032549(n+1), A130428(n+1)]`
-/

namespace A062944.P5511442269079365222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062944.P5511442269079365222

/-! ## A062944.P1115907887944871660

`∪[A032549(n+1), A130429(n+1)]`
-/

namespace A062944.P1115907887944871660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062944.P1115907887944871660

/-! ## A062944.P1141997607232334009

`∪[A032549(n+1), A130430(n+1)]`
-/

namespace A062944.P1141997607232334009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062944.P1141997607232334009

/-! ## A062944.P12784026123104231156

`∪[A032549(n+1), A135496(n+1)]`
-/

namespace A062944.P12784026123104231156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062944.P12784026123104231156

/-! ## A062944.P3033548066515144275

`∪[A032549(n+1), A228050(n+1)]`
-/

namespace A062944.P3033548066515144275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062944.P3033548066515144275

/-! ## A062944.P1724111114774940952

`∪[A032549(n+1), A308070(n+1)]`
-/

namespace A062944.P1724111114774940952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062944.P1724111114774940952

/-! ## A062944.P7556639241588028289

`∪[A032549(n+1), A335839(n+1)]`
-/

namespace A062944.P7556639241588028289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062944.P7556639241588028289

/-!
# A062947: a(n) = binomial(n,floor(n/7)).

The programs for A062947, the canonical program `A062947.P11020473264882610648` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062947 has offset 0).

The definition of A062947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/7))` (program `A062947.P11020473264882610648`, by `A062947.P11020473264882610648.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062947.P11020473264882610648

`C(n, floor(n/7))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062947

/-- `C(n, floor(n/7))` -/
def P11020473264882610648.Spec : Prop :=
  ∀ n, (P11020473264882610648.a n : ℤ) = A062947 n

theorem P11020473264882610648.correct : P11020473264882610648.Spec := by
  intro n
  simp only [A062947]

end A062947

/-! ## A062947.P12039087938875661198

`A074909(∑[n]-A145569(n))`
-/

namespace A062947.P12039087938875661198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A145569 n).toNat

end

end A062947.P12039087938875661198

namespace A062947

/-- `A074909(∑[n]-A145569(n))` -/
def P12039087938875661198.Spec : Prop :=
  ∀ n, P12039087938875661198.a n = A062947 n

end A062947

/-! ## A062947.P7372068331492415163

`A007318(∑[(n^6)%7+n])`
-/

namespace A062947.P7372068331492415163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 7 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062947.P7372068331492415163

namespace A062947

/-- `A007318(∑[(n^6)%7+n])` -/
def P7372068331492415163.Spec : Prop :=
  ∀ n, P7372068331492415163.a n = A062947 n

end A062947

/-! ## A062947.P17945872327033372613

`A007318(∑[A109720(n)+n])`
-/

namespace A062947.P17945872327033372613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062947.P17945872327033372613

namespace A062947

/-- `A007318(∑[A109720(n)+n])` -/
def P17945872327033372613.Spec : Prop :=
  ∀ n, P17945872327033372613.a n = A062947 n

end A062947

/-! ## A062947.P2757799927297566480

`A007318(A145569(n)+A000217(n))`
-/

namespace A062947.P2757799927297566480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A145569 n + A000217 n).toNat

end

end A062947.P2757799927297566480

namespace A062947

/-- `A007318(A145569(n)+A000217(n))` -/
def P2757799927297566480.Spec : Prop :=
  ∀ n, P2757799927297566480.a n = A062947 n

end A062947

/-! ## A062947.P15070084097884973744

`A007318(∑[A175629(n²)+n])`
-/

namespace A062947.P15070084097884973744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062947.P15070084097884973744

namespace A062947

/-- `A007318(∑[A175629(n²)+n])` -/
def P15070084097884973744.Spec : Prop :=
  ∀ n, P15070084097884973744.a n = A062947 n

end A062947

/-!
# A062948: a(n) = H(A002808(n)) where H(n) is the half-totient function, H(n) = phi(n)/2: (A023022) and A002808(n) are the composites.

The programs for A062948, the canonical program `A062948.P1375917266178059174` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062948 has offset 1).

The definition of A062948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062948.P8672921554135220835

`A073256(n+1)/2`
-/

namespace A062948.P8672921554135220835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073256 (n + 1) : ℚ) / 2

end

end A062948.P8672921554135220835

namespace A062948

/-- `A073256(n+1)/2` -/
def P8672921554135220835.Spec : Prop :=
  ∀ n, P8672921554135220835.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P16256696317664305585

`A000010(Δ[A053767(n)])/2`
-/

namespace A062948.P16256696317664305585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A062948.P16256696317664305585

namespace A062948

/-- `A000010(Δ[A053767(n)])/2` -/
def P16256696317664305585.Spec : Prop :=
  ∀ n, P16256696317664305585.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P15589375047927055824

`A000010(comp[A351078(n)])/2`
-/

namespace A062948.P15589375047927055824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A062948.P15589375047927055824

namespace A062948

/-- `A000010(comp[A351078(n)])/2` -/
def P15589375047927055824.Spec : Prop :=
  ∀ n, P15589375047927055824.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P7409655780302290324

`A000010(A002808(n+1))/2`
-/

namespace A062948.P7409655780302290324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A002808 (n + 1)).toNat : ℚ) / 2

end

end A062948.P7409655780302290324

namespace A062948

/-- `A000010(A002808(n+1))/2` -/
def P7409655780302290324.Spec : Prop :=
  ∀ n, P7409655780302290324.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P15094649041903211771

`A000010(A018252(n+2))/2`
-/

namespace A062948.P15094649041903211771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A018252 (n + 2)).toNat : ℚ) / 2

end

end A062948.P15094649041903211771

namespace A062948

/-- `A000010(A018252(n+2))/2` -/
def P15094649041903211771.Spec : Prop :=
  ∀ n, P15094649041903211771.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P8588386512979724056

`A000010(A141468(n+3))/2`
-/

namespace A062948.P8588386512979724056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A141468 (n + 3)).toNat : ℚ) / 2

end

end A062948.P8588386512979724056

namespace A062948

/-- `A000010(A141468(n+3))/2` -/
def P8588386512979724056.Spec : Prop :=
  ∀ n, P8588386512979724056.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P6533636564643747241

`A000010(lt[1, A074206(n)])/2`
-/

namespace A062948.P6533636564643747241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A062948.P6533636564643747241

namespace A062948

/-- `A000010(lt[1, A074206(n)])/2` -/
def P6533636564643747241.Spec : Prop :=
  ∀ n, P6533636564643747241.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P17648168638358024385

`A000010(comp[A158611(n+1)])/2`
-/

namespace A062948.P17648168638358024385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A062948.P17648168638358024385

namespace A062948

/-- `A000010(comp[A158611(n+1)])/2` -/
def P17648168638358024385.Spec : Prop :=
  ∀ n, P17648168638358024385.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P12615440354443246753

`A000010(comp[C(A006530(n+1), n)])/2`
-/

namespace A062948.P12615440354443246753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A062948.P12615440354443246753

namespace A062948

/-- `A000010(comp[C(A006530(n+1), n)])/2` -/
def P12615440354443246753.Spec : Prop :=
  ∀ n, P12615440354443246753.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P15886420833216966939

`A000010(comp[C(A020639(n+1), n)])/2`
-/

namespace A062948.P15886420833216966939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A062948.P15886420833216966939

namespace A062948

/-- `A000010(comp[C(A020639(n+1), n)])/2` -/
def P15886420833216966939.Spec : Prop :=
  ∀ n, P15886420833216966939.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P1353888093577594645

`A000010(lt[1, A001222(n+1)]+1)/2`
-/

namespace A062948.P1353888093577594645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / 2

end

end A062948.P1353888093577594645

namespace A062948

/-- `A000010(lt[1, A001222(n+1)]+1)/2` -/
def P1353888093577594645.Spec : Prop :=
  ∀ n, P1353888093577594645.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P778343727113563057

`A000010(lt[2, A000005(n+1)]+1)/2`
-/

namespace A062948.P778343727113563057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / 2

end

end A062948.P778343727113563057

namespace A062948

/-- `A000010(lt[2, A000005(n+1)]+1)/2` -/
def P778343727113563057.Spec : Prop :=
  ∀ n, P778343727113563057.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P14512096078266455057

`(A129309(n+1)+A048984(n+1))/2`
-/

namespace A062948.P14512096078266455057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129309 (n + 1) + A048984 (n + 1) : ℚ) / 2

end

end A062948.P14512096078266455057

namespace A062948

/-- `(A129309(n+1)+A048984(n+1))/2` -/
def P14512096078266455057.Spec : Prop :=
  ∀ n, P14512096078266455057.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P13969252209548671273

`A000010(lt[A000010(n+1), n]+1)/2`
-/

namespace A062948.P13969252209548671273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A062948.P13969252209548671273

namespace A062948

/-- `A000010(lt[A000010(n+1), n]+1)/2` -/
def P13969252209548671273.Spec : Prop :=
  ∀ n, P13969252209548671273.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P5432868244812578417

`A166362(n+2)/2`
-/

namespace A062948.P5432868244812578417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166362 (n + 2) : ℚ) / 2

end

end A062948.P5432868244812578417

namespace A062948

/-- `A166362(n+2)/2` -/
def P5432868244812578417.Spec : Prop :=
  ∀ n, P5432868244812578417.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P14252797005268438245

`A137148(n+2)/(A018252(n+2)+A018252(n+2))`
-/

namespace A062948.P14252797005268438245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137148 (n + 2) : ℚ) / (A018252 (n + 2) + A018252 (n + 2) : ℚ)

end

end A062948.P14252797005268438245

namespace A062948

/-- `A137148(n+2)/(A018252(n+2)+A018252(n+2))` -/
def P14252797005268438245.Spec : Prop :=
  ∀ n, P14252797005268438245.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P14200194627453604663

`A000010(A065090(n+3))/2`
-/

namespace A062948.P14200194627453604663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A065090 (n + 3)).toNat : ℚ) / 2

end

end A062948.P14200194627453604663

namespace A062948

/-- `A000010(A065090(n+3))/2` -/
def P14200194627453604663.Spec : Prop :=
  ∀ n, P14200194627453604663.a n = (A062948 (n + 1) : ℚ)

end A062948

/-! ## A062948.P13823318019516889962

`A001281(A073256(n+1))`
-/

namespace A062948.P13823318019516889962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A073256 (n + 1)).toNat

end

end A062948.P13823318019516889962

namespace A062948

/-- `A001281(A073256(n+1))` -/
def P13823318019516889962.Spec : Prop :=
  ∀ n, P13823318019516889962.a n = A062948 (n + 1)

end A062948

/-! ## A062948.P1375917266178059174

`A001281(A166362(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062948

/-- `A001281(A166362(n+2))` -/
def P1375917266178059174.Spec : Prop :=
  ∀ n, P1375917266178059174.a n = A062948 (n + 1)

theorem P1375917266178059174.correct : P1375917266178059174.Spec := by
  intro n
  simp only [A062948, Nat.add_sub_cancel]

end A062948

/-! ## A062948.P15442292699235765668

`A023022(A002808(n+1))`
-/

namespace A062948.P15442292699235765668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A002808 (n + 1)).toNat

end

end A062948.P15442292699235765668

namespace A062948

/-- `A023022(A002808(n+1))` -/
def P15442292699235765668.Spec : Prop :=
  ∀ n, P15442292699235765668.a n = A062948 (n + 1)

end A062948

/-!
# A062949: Multiplicative with a(p^e) = ((e+1)*p^(e+1)-(e+2)*p^e+1)/(p-1).

The programs for A062949, the canonical program `A062949.P13251923550202936897` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062949 has offset 1).

The definition of A062949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062949.P13251923550202936897

`∑{d}[n+1, A000010(#)*A000005(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062949

/-- `∑{d}[n+1, A000010(#)*A000005(#)]` -/
def P13251923550202936897.Spec : Prop :=
  ∀ n, P13251923550202936897.a n = A062949 (n + 1)

theorem P13251923550202936897.correct : P13251923550202936897.Spec := by
  intro n
  simp only [A062949, Nat.add_sub_cancel]

end A062949

/-! ## A062949.P13309612960001185852

`∑{#}[n, A000005((n+1)/gcd(n+1, #))]`
-/

namespace A062949.P13309612960001185852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) k : ℚ))).toNat

end

end A062949.P13309612960001185852

namespace A062949

/-- `∑{#}[n, A000005((n+1)/gcd(n+1, #))]` -/
def P13309612960001185852.Spec : Prop :=
  ∀ n, P13309612960001185852.a n = A062949 (n + 1)

end A062949

/-! ## A062949.P15806891031378958111

`∑{d}[n+1, A062355(#)]`
-/

namespace A062949.P15806891031378958111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062355 d

end

end A062949.P15806891031378958111

namespace A062949

/-- `∑{d}[n+1, A062355(#)]` -/
def P15806891031378958111.Spec : Prop :=
  ∀ n, P15806891031378958111.a n = A062949 (n + 1)

end A062949

/-! ## A062949.P13057044904337304443

`A127469(n+1)/(n+1)`
-/

namespace A062949.P13057044904337304443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127469 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A062949.P13057044904337304443

namespace A062949

/-- `A127469(n+1)/(n+1)` -/
def P13057044904337304443.Spec : Prop :=
  ∀ n, P13057044904337304443.a n = (A062949 (n + 1) : ℚ)

end A062949

/-! ## A062949.P8035780571629768790

`∑{d}[n+1, (n+1)/#*A047994(#)]`
-/

namespace A062949.P8035780571629768790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A047994 d : ℚ)

end

end A062949.P8035780571629768790

namespace A062949

/-- `∑{d}[n+1, (n+1)/#*A047994(#)]` -/
def P8035780571629768790.Spec : Prop :=
  ∀ n, P8035780571629768790.a n = (A062949 (n + 1) : ℚ)

end A062949

/-! ## A062949.P3224417149280293321

`∑{d}[n+1, A000005(#)*A000010(#)]`
-/

namespace A062949.P3224417149280293321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000010 d

end

end A062949.P3224417149280293321

namespace A062949

/-- `∑{d}[n+1, A000005(#)*A000010(#)]` -/
def P3224417149280293321.Spec : Prop :=
  ∀ n, P3224417149280293321.a n = A062949 (n + 1)

end A062949

/-! ## A062949.P5255046562555110290

`∑{d}[n+1, A000010(#)*A333645((n+1)/#)]`
-/

namespace A062949.P5255046562555110290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062949.P5255046562555110290

namespace A062949

/-- `∑{d}[n+1, A000010(#)*A333645((n+1)/#)]` -/
def P5255046562555110290.Spec : Prop :=
  ∀ n, P5255046562555110290.a n = A062949 (n + 1)

end A062949

/-! ## A062949.P16594432913219319577

`∑{d}[n+1, A008683(#)*A341636((n+1)/#)]`
-/

namespace A062949.P16594432913219319577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341636 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062949.P16594432913219319577

namespace A062949

/-- `∑{d}[n+1, A008683(#)*A341636((n+1)/#)]` -/
def P16594432913219319577.Spec : Prop :=
  ∀ n, P16594432913219319577.a n = A062949 (n + 1)

end A062949

/-! ## A062949.P15264575877480020402

`∑{d}[n+1, A000005(#)*A359954((n+1)/#)]`
-/

namespace A062949.P15264575877480020402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A359954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062949.P15264575877480020402

namespace A062949

/-- `∑{d}[n+1, A000005(#)*A359954((n+1)/#)]` -/
def P15264575877480020402.Spec : Prop :=
  ∀ n, P15264575877480020402.a n = A062949 (n + 1)

end A062949

/-! ## A062949.P13399345798369754227

`∑{d}[n+1, A018804(#)*A396336((n+1)/#)]`
-/

namespace A062949.P13399345798369754227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A396336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062949.P13399345798369754227

namespace A062949

/-- `∑{d}[n+1, A018804(#)*A396336((n+1)/#)]` -/
def P13399345798369754227.Spec : Prop :=
  ∀ n, P13399345798369754227.a n = A062949 (n + 1)

end A062949

/-! ## A062949.P16474864458749206233

`∑{d}[n+1, A384055(#)*A384056((n+1)/#)]`
-/

namespace A062949.P16474864458749206233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384055 d * A384056 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062949.P16474864458749206233

namespace A062949

/-- `∑{d}[n+1, A384055(#)*A384056((n+1)/#)]` -/
def P16474864458749206233.Spec : Prop :=
  ∀ n, P16474864458749206233.a n = A062949 (n + 1)

end A062949

/-! ## A062949.P505757106116507013

`∑{d}[n+1, A384057(#)*A384058((n+1)/#)]`
-/

namespace A062949.P505757106116507013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384057 d * A384058 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062949.P505757106116507013

namespace A062949

/-- `∑{d}[n+1, A384057(#)*A384058((n+1)/#)]` -/
def P505757106116507013.Spec : Prop :=
  ∀ n, P505757106116507013.a n = A062949 (n + 1)

end A062949

/-!
# A062950: C(H(n)), where C(n) is Chowla's function (A048050) and H(n) is the half-totient function (A023022).

The programs for A062950, the canonical program `A062950.P11962313584920516019` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062950 has offset 3).

The definition of A062950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062950.P15192344916959119369

`A319699(A000010(n+3))-1`
-/

namespace A062950.P15192344916959119369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (A000010 (n + 3)).toNat - 1

end

end A062950.P15192344916959119369

namespace A062950

/-- `A319699(A000010(n+3))-1` -/
def P15192344916959119369.Spec : Prop :=
  ∀ n, P15192344916959119369.a n = A062950 (n + 3)

end A062950

/-! ## A062950.P11962313584920516019

`A001065(A055684(n+3)+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062950

/-- `A001065(A055684(n+3)+1)-1` -/
def P11962313584920516019.Spec : Prop :=
  ∀ n, P11962313584920516019.a n = A062950 (n + 3)

theorem P11962313584920516019.correct : P11962313584920516019.Spec := by
  intro n
  simp only [A062950, Nat.add_sub_cancel]

end A062950

/-! ## A062950.P55721980553343530

`A001065(A000010(n+3)/2)-1`
-/

namespace A062950.P55721980553343530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((A000010 (n + 3) : ℚ) / 2)).toNat - 1

end

end A062950.P55721980553343530

namespace A062950

/-- `A001065(A000010(n+3)/2)-1` -/
def P55721980553343530.Spec : Prop :=
  ∀ n, P55721980553343530.a n = A062950 (n + 3)

end A062950

/-! ## A062950.P11622819050958460461

`∑{d}[A000010(n+3)/2, #-A000010(#)]-1`
-/

namespace A062950.P11622819050958460461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, ((d : ℤ) - A000010 d) - 1

end

end A062950.P11622819050958460461

namespace A062950

/-- `∑{d}[A000010(n+3)/2, #-A000010(#)]-1` -/
def P11622819050958460461.Spec : Prop :=
  ∀ n, P11622819050958460461.a n = A062950 (n + 3)

end A062950

/-! ## A062950.P14214031373979331433

`A033999(or(1, n))+A001065(A000010(n+3)/2)`
-/

namespace A062950.P14214031373979331433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.lor 1 n) + A001065 (SequenceMachineLib.roundAway ((A000010 (n + 3) : ℚ) / 2)).toNat

end

end A062950.P14214031373979331433

namespace A062950

/-- `A033999(or(1, n))+A001065(A000010(n+3)/2)` -/
def P14214031373979331433.Spec : Prop :=
  ∀ n, P14214031373979331433.a n = A062950 (n + 3)

end A062950

/-! ## A062950.P17413196838943690554

`A001065(A023022(n+3))-1`
-/

namespace A062950.P17413196838943690554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A023022 (n + 3)).toNat - 1

end

end A062950.P17413196838943690554

namespace A062950

/-- `A001065(A023022(n+3))-1` -/
def P17413196838943690554.Spec : Prop :=
  ∀ n, P17413196838943690554.a n = A062950 (n + 3)

theorem P17413196838943690554.correct : P17413196838943690554.Spec := by
  intro n
  simp only [A062950, Nat.add_sub_cancel, A062950.P17413196838943690554.a, A062950.P11962313584920516019.a, A001065, A001065.P4097147489331274860.a, A023022, A023022.P7088589745698581179.f1, A023022.P7088589745698581179.a, A055684, A055684.P4777645842216541427.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062950

/-! ## A062950.P7712883847856762889

`A033999(2*n+1)+A001065(A023022(n+3))`
-/

namespace A062950.P7712883847856762889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A001065 (A023022 (n + 3)).toNat

end

end A062950.P7712883847856762889

namespace A062950

/-- `A033999(2*n+1)+A001065(A023022(n+3))` -/
def P7712883847856762889.Spec : Prop :=
  ∀ n, P7712883847856762889.a n = A062950 (n + 3)

end A062950

/-! ## A062950.P4447692773142485469

`A168361(2*(n+1))+A001065(A023022(n+3))`
-/

namespace A062950.P4447692773142485469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (2 * (n + 1)) + A001065 (A023022 (n + 3)).toNat

end

end A062950.P4447692773142485469

namespace A062950

/-- `A168361(2*(n+1))+A001065(A023022(n+3))` -/
def P4447692773142485469.Spec : Prop :=
  ∀ n, P4447692773142485469.a n = A062950 (n + 3)

end A062950

/-! ## A062950.P11496744560164742549

`A134824(2*(n+1))+A001065(A000010(n+3)/2)`
-/

namespace A062950.P11496744560164742549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * (n + 1)) + A001065 (SequenceMachineLib.roundAway ((A000010 (n + 3) : ℚ) / 2)).toNat

end

end A062950.P11496744560164742549

namespace A062950

/-- `A134824(2*(n+1))+A001065(A000010(n+3)/2)` -/
def P11496744560164742549.Spec : Prop :=
  ∀ n, P11496744560164742549.a n = A062950 (n + 3)

end A062950

/-!
# A062951: a(n) = H(A005117(n)) where H(n) is the half-totient function and A005117(n) are the squarefree numbers.

The programs for A062951, the canonical program `A062951.P2019372823293054039` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062951 has offset 3).

The definition of A062951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062951.P2019372823293054039

`A023022(A005117(n+3))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062951

/-- `A023022(A005117(n+3))` -/
def P2019372823293054039.Spec : Prop :=
  ∀ n, P2019372823293054039.a n = A062951 (n + 3)

theorem P2019372823293054039.correct : P2019372823293054039.Spec := by
  intro n
  simp only [A062951, Nat.add_sub_cancel]

end A062951

/-! ## A062951.P15044445372974179209

`A000010(record[A007947(n+3)])/2`
-/

namespace A062951.P15044445372974179209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A062951.P15044445372974179209

namespace A062951

/-- `A000010(record[A007947(n+3)])/2` -/
def P15044445372974179209.Spec : Prop :=
  ∀ n, P15044445372974179209.a n = (A062951 (n + 3) : ℚ)

end A062951

/-! ## A062951.P6287649115078003677

`A000010(record[(n+3)*A008683(n+3)²])/2`
-/

namespace A062951.P6287649115078003677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A008683 (n + 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A062951.P6287649115078003677

namespace A062951

/-- `A000010(record[(n+3)*A008683(n+3)²])/2` -/
def P6287649115078003677.Spec : Prop :=
  ∀ n, P6287649115078003677.a n = (A062951 (n + 3) : ℚ)

end A062951

/-! ## A062951.P1953225446869361667

`A049200(n+3)/2`
-/

namespace A062951.P1953225446869361667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049200 (n + 3) : ℚ) / 2

end

end A062951.P1953225446869361667

namespace A062951

/-- `A049200(n+3)/2` -/
def P1953225446869361667.Spec : Prop :=
  ∀ n, P1953225446869361667.a n = (A062951 (n + 3) : ℚ)

end A062951

/-! ## A062951.P6143752048565434594

`A000010(record[A002734(n+2)])/2`
-/

namespace A062951.P6143752048565434594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002734 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A062951.P6143752048565434594

namespace A062951

/-- `A000010(record[A002734(n+2)])/2` -/
def P6143752048565434594.Spec : Prop :=
  ∀ n, P6143752048565434594.a n = (A062951 (n + 3) : ℚ)

end A062951

/-! ## A062951.P10186597649415937002

`A001281(A049200(n+3))`
-/

namespace A062951.P10186597649415937002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049200 (n + 3)).toNat

end

end A062951.P10186597649415937002

namespace A062951

/-- `A001281(A049200(n+3))` -/
def P10186597649415937002.Spec : Prop :=
  ∀ n, P10186597649415937002.a n = A062951 (n + 3)

end A062951

/-! ## A062951.P16681478914234865641

`A023022(A144338(n+2))`
-/

namespace A062951.P16681478914234865641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A144338 (n + 2)).toNat

end

end A062951.P16681478914234865641

namespace A062951

/-- `A023022(A144338(n+2))` -/
def P16681478914234865641.Spec : Prop :=
  ∀ n, P16681478914234865641.a n = A062951 (n + 3)

end A062951

/-! ## A062951.P4153304821589827842

`A023022(record[A002734(n+2)])`
-/

namespace A062951.P4153304821589827842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002734 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062951.P4153304821589827842

namespace A062951

/-- `A023022(record[A002734(n+2)])` -/
def P4153304821589827842.Spec : Prop :=
  ∀ n, P4153304821589827842.a n = A062951 (n + 3)

end A062951

/-! ## A062951.P3796042405329288196

`A000010(record[A079228(n+2)])/2`
-/

namespace A062951.P3796042405329288196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A062951.P3796042405329288196

namespace A062951

/-- `A000010(record[A079228(n+2)])/2` -/
def P3796042405329288196.Spec : Prop :=
  ∀ n, P3796042405329288196.a n = (A062951 (n + 3) : ℚ)

end A062951

/-! ## A062951.P10906863341330765793

`A173557(A339794(n+2))/2`
-/

namespace A062951.P10906863341330765793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (A339794 (n + 2)).toNat : ℚ) / 2

end

end A062951.P10906863341330765793

namespace A062951

/-- `A173557(A339794(n+2))/2` -/
def P10906863341330765793.Spec : Prop :=
  ∀ n, P10906863341330765793.a n = (A062951 (n + 3) : ℚ)

end A062951

/-!
# A062952: Multiplicative with a(p^e) = (p^(2*e+2)-p^(e+1)-p^e+p)/(p^2-1).

The programs for A062952, the canonical program `A062952.P6439989796024171597` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062952 has offset 1).

The definition of A062952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062952.P6439989796024171597

`∑{d}[n+1, A000010(#)*A000203(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062952

/-- `∑{d}[n+1, A000010(#)*A000203(#)]` -/
def P6439989796024171597.Spec : Prop :=
  ∀ n, P6439989796024171597.a n = A062952 (n + 1)

theorem P6439989796024171597.correct : P6439989796024171597.Spec := by
  intro n
  simp only [A062952, Nat.add_sub_cancel]

end A062952

/-! ## A062952.P2441504357088029811

`∑{#}[n, A000203((n+1)/gcd(n+1, #))]`
-/

namespace A062952.P2441504357088029811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) k : ℚ))).toNat

end

end A062952.P2441504357088029811

namespace A062952

/-- `∑{#}[n, A000203((n+1)/gcd(n+1, #))]` -/
def P2441504357088029811.Spec : Prop :=
  ∀ n, P2441504357088029811.a n = A062952 (n + 1)

end A062952

/-! ## A062952.P12985377962116772481

`∑{d}[n+1, A062354(#)]`
-/

namespace A062952.P12985377962116772481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062354 d

end

end A062952.P12985377962116772481

namespace A062952

/-- `∑{d}[n+1, A062354(#)]` -/
def P12985377962116772481.Spec : Prop :=
  ∀ n, P12985377962116772481.a n = A062952 (n + 1)

end A062952

/-! ## A062952.P800256392934281971

`∑{d}[n+1, A008683(#)*A341638((n+1)/#)]`
-/

namespace A062952.P800256392934281971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341638 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062952.P800256392934281971

namespace A062952

/-- `∑{d}[n+1, A008683(#)*A341638((n+1)/#)]` -/
def P800256392934281971.Spec : Prop :=
  ∀ n, P800256392934281971.a n = A062952 (n + 1)

end A062952

/-! ## A062952.P10720223745293493829

`∑{d}[n+1, A000005(#)*A386624((n+1)/#)]`
-/

namespace A062952.P10720223745293493829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A386624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062952.P10720223745293493829

namespace A062952

/-- `∑{d}[n+1, A000005(#)*A386624((n+1)/#)]` -/
def P10720223745293493829.Spec : Prop :=
  ∀ n, P10720223745293493829.a n = A062952 (n + 1)

end A062952

/-! ## A062952.P2748131662409413784

`∑{d}[n+1, A055615(#)*A341637((n+1)/#)]`
-/

namespace A062952.P2748131662409413784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A341637 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062952.P2748131662409413784

namespace A062952

/-- `∑{d}[n+1, A055615(#)*A341637((n+1)/#)]` -/
def P2748131662409413784.Spec : Prop :=
  ∀ n, P2748131662409413784.a n = A062952 (n + 1)

end A062952

/-! ## A062952.P633590515436302288

`∑{d}[n+1, A152958(#²)]`
-/

namespace A062952.P633590515436302288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A152958 (d ^ 2)

end

end A062952.P633590515436302288

namespace A062952

/-- `∑{d}[n+1, A152958(#²)]` -/
def P633590515436302288.Spec : Prop :=
  ∀ n, P633590515436302288.a n = A062952 (n + 1)

end A062952

/-!
# A062953: Multiplicative with a(p^e) = -p.

The programs for A062953, the canonical program `A062953.P16423185383085465747` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062953 has offset 1).

The definition of A062953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062953.P8526290714923344385

`∑{d}[n+1, A063441(#)]`
-/

namespace A062953.P8526290714923344385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063441 d

end

end A062953.P8526290714923344385

namespace A062953

/-- `∑{d}[n+1, A063441(#)]` -/
def P8526290714923344385.Spec : Prop :=
  ∀ n, P8526290714923344385.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P17257981982152049347

`∑{d}[n+1, A008683(#)*A000203(#)]`
-/

namespace A062953.P17257981982152049347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000203 d

end

end A062953.P17257981982152049347

namespace A062953

/-- `∑{d}[n+1, A008683(#)*A000203(#)]` -/
def P17257981982152049347.Spec : Prop :=
  ∀ n, P17257981982152049347.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P16423185383085465747

`A007947(n+1)*(-1)^A001221(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062953

/-- `A007947(n+1)*(-1)^A001221(n+1)` -/
def P16423185383085465747.Spec : Prop :=
  ∀ n, P16423185383085465747.a n = (A062953 (n + 1) : ℚ)

end A062953

/-! ## A062953.P9759881334051125695

`(n+1)*A023900(n+1)/A000010(n+1)`
-/

namespace A062953.P9759881334051125695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A023900 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A062953.P9759881334051125695

namespace A062953

/-- `(n+1)*A023900(n+1)/A000010(n+1)` -/
def P9759881334051125695.Spec : Prop :=
  ∀ n, P9759881334051125695.a n = (A062953 (n + 1) : ℚ)

end A062953

/-! ## A062953.P7070986576885355537

`∏{p}[n+1, -#]`
-/

namespace A062953.P7070986576885355537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))

end

end A062953.P7070986576885355537

namespace A062953

/-- `∏{p}[n+1, -#]` -/
def P7070986576885355537.Spec : Prop :=
  ∀ n, P7070986576885355537.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P880987627009983947

`A055615(∏{p}[n+1, #])`
-/

namespace A062953.P880987627009983947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A062953.P880987627009983947

namespace A062953

/-- `A055615(∏{p}[n+1, #])` -/
def P880987627009983947.Spec : Prop :=
  ∀ n, P880987627009983947.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P17081758267320081092

`A061019(∏{p}[n+1, #])`
-/

namespace A062953.P17081758267320081092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A062953.P17081758267320081092

namespace A062953

/-- `A061019(∏{p}[n+1, #])` -/
def P17081758267320081092.Spec : Prop :=
  ∀ n, P17081758267320081092.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P17145151653747252280

`A325126(∏{p}[n+1, #])`
-/

namespace A062953.P17145151653747252280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325126 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A062953.P17145151653747252280

namespace A062953

/-- `A325126(∏{p}[n+1, #])` -/
def P17145151653747252280.Spec : Prop :=
  ∀ n, P17145151653747252280.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P15967196057310890370

`A329445(∏{p}[n+1, #])`
-/

namespace A062953.P15967196057310890370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329445 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A062953.P15967196057310890370

namespace A062953

/-- `A329445(∏{p}[n+1, #])` -/
def P15967196057310890370.Spec : Prop :=
  ∀ n, P15967196057310890370.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P5555652552826556569

`A341635(∏{p}[n+1, #])`
-/

namespace A062953.P5555652552826556569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341635 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A062953.P5555652552826556569

namespace A062953

/-- `A341635(∏{p}[n+1, #])` -/
def P5555652552826556569.Spec : Prop :=
  ∀ n, P5555652552826556569.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P7806791988944424751

`A359588(∏{p}[n+1, #])`
-/

namespace A062953.P7806791988944424751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359588 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A062953.P7806791988944424751

namespace A062953

/-- `A359588(∏{p}[n+1, #])` -/
def P7806791988944424751.Spec : Prop :=
  ∀ n, P7806791988944424751.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P14235882771749698275

`A378997(∏{p}[n+1, #])`
-/

namespace A062953.P14235882771749698275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378997 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A062953.P14235882771749698275

namespace A062953

/-- `A378997(∏{p}[n+1, #])` -/
def P14235882771749698275.Spec : Prop :=
  ∀ n, P14235882771749698275.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P958240119133719633

`A390954(∏{p}[n+1, #])`
-/

namespace A062953.P958240119133719633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390954 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A062953.P958240119133719633

namespace A062953

/-- `A390954(∏{p}[n+1, #])` -/
def P958240119133719633.Spec : Prop :=
  ∀ n, P958240119133719633.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P2502934669656665665

`1/∏{p}[n+1, A008683(#)/#]`
-/

namespace A062953.P2502934669656665665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (∏ p ∈ Nat.primeFactors (f1 n), (A008683 p : ℚ) / (p : ℚ))

end

end A062953.P2502934669656665665

namespace A062953

/-- `1/∏{p}[n+1, A008683(#)/#]` -/
def P2502934669656665665.Spec : Prop :=
  ∀ n, P2502934669656665665.a n = (A062953 (n + 1) : ℚ)

end A062953

/-! ## A062953.P13103775702036993503

`A008683(∏{p}[n+1, #])*∏{p}[n+1, #]`
-/

namespace A062953.P13103775702036993503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), p) * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A062953.P13103775702036993503

namespace A062953

/-- `A008683(∏{p}[n+1, #])*∏{p}[n+1, #]` -/
def P13103775702036993503.Spec : Prop :=
  ∀ n, P13103775702036993503.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P8484251964435821229

`A055615(A007947(n+1))`
-/

namespace A062953.P8484251964435821229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A007947 (n + 1)).toNat

end

end A062953.P8484251964435821229

namespace A062953

/-- `A055615(A007947(n+1))` -/
def P8484251964435821229.Spec : Prop :=
  ∀ n, P8484251964435821229.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P691346903128082297

`A378997(A007948(n+1))`
-/

namespace A062953.P691346903128082297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378997 (A007948 (n + 1)).toNat

end

end A062953.P691346903128082297

namespace A062953

/-- `A378997(A007948(n+1))` -/
def P691346903128082297.Spec : Prop :=
  ∀ n, P691346903128082297.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P16829696539178917849

`A378997(A066990(n+1))`
-/

namespace A062953.P16829696539178917849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378997 (A066990 (n + 1)).toNat

end

end A062953.P16829696539178917849

namespace A062953

/-- `A378997(A066990(n+1))` -/
def P16829696539178917849.Spec : Prop :=
  ∀ n, P16829696539178917849.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P11232010061514279359

`A007947(n+1)*A076479(n+1)`
-/

namespace A062953.P11232010061514279359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A076479 (n + 1)

end

end A062953.P11232010061514279359

namespace A062953

/-- `A007947(n+1)*A076479(n+1)` -/
def P11232010061514279359.Spec : Prop :=
  ∀ n, P11232010061514279359.a n = A062953 (n + 1)

end A062953

/-! ## A062953.P612583415374754956

`A055615((n+1)/A003557(n+1))`
-/

namespace A062953.P612583415374754956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A062953.P612583415374754956

namespace A062953

/-- `A055615((n+1)/A003557(n+1))` -/
def P612583415374754956.Spec : Prop :=
  ∀ n, P612583415374754956.a n = A062953 (n + 1)

end A062953

/-!
# A062954: Least common multiple of Lucas numbers L(0), L(1), ..., L(n).

The programs for A062954, there is no canonical definition to state claims against.
-/

/-! ## A062954.P10581521431012884212

`lcm(a(n-1), A000032(n))` with `a(0)=2`
-/

namespace A062954.P10581521431012884212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000032 n)

end

end A062954.P10581521431012884212

/-! ## A062954.P6467376555445710978

`lcm(2, A355322(round(sqrt(n²+1))))`
-/

namespace A062954.P6467376555445710978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A355322 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A062954.P6467376555445710978

/-! ## A062954.P17658752488194952749

`lcm(floor(a(n-1)), A000204(n))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A062954.P17658752488194952749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000204 n)

end

end A062954.P17658752488194952749

/-! ## A062954.P3783294768950395886

`lcm(A000211(n)-2, round(a(n-1)))` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A062954.P3783294768950395886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (A000211 n - 2) (a (n - 1) : ℤ)

end

end A062954.P3783294768950395886

/-! ## A062954.P7472198560254608795

`lcm(A001612(n)-1, a(A023443(n)))` with `a(0)=2`
-/

namespace A062954.P7472198560254608795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (A001612 n - 1) (a (A023443 n).toNat : ℤ)

end

end A062954.P7472198560254608795

/-!
# A062955: a(n) = phi(n^2) - phi(n) = (n-1) * phi(n).

The programs for A062955, the canonical program `A062955.P10591233305349930181` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062955 has offset 1).

The definition of A062955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A000010(n+1)` (program `A062955.P10591233305349930181`, by `A062955.P10591233305349930181.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062955.P10591233305349930181

`n*A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062955

/-- `n*A000010(n+1)` -/
def P10591233305349930181.Spec : Prop :=
  ∀ n, P10591233305349930181.a n = A062955 (n + 1)

theorem P10591233305349930181.correct : P10591233305349930181.Spec := by
  intro n
  simp only [A062955, Nat.add_sub_cancel]

end A062955

/-! ## A062955.P17396036720495467672

`A002618(n+1)-A000010(n+1)`
-/

namespace A062955.P17396036720495467672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - A000010 (n + 1)

end

end A062955.P17396036720495467672

namespace A062955

/-- `A002618(n+1)-A000010(n+1)` -/
def P17396036720495467672.Spec : Prop :=
  ∀ n, P17396036720495467672.a n = A062955 (n + 1)

theorem P17396036720495467672.correct : P17396036720495467672.Spec := by
  intro n
  simp only [A062955, Nat.add_sub_cancel, A062955.P17396036720495467672.a, A062955.P10591233305349930181.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062955

/-! ## A062955.P13426316000123527284

`A000010((n+1)²)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062955.P13426316000123527284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 2) - A000010 (n + 1)

end

end A062955.P13426316000123527284

namespace A062955

/-- `A000010((n+1)²)-A000010(n+1)` -/
def P13426316000123527284.Spec : Prop :=
  ∀ n, P13426316000123527284.a n = A062955 (n + 1)

end A062955

/-! ## A062955.P17561573697138714683

`n*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A062955.P17561573697138714683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A062955.P17561573697138714683

namespace A062955

/-- `n*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P17561573697138714683.Spec : Prop :=
  ∀ n, P17561573697138714683.a n = (A062955 (n + 1) : ℚ)

end A062955

/-! ## A062955.P4006051433657380178

`n*Δ[A002088(n)]`
-/

namespace A062955.P4006051433657380178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A062955.P4006051433657380178

namespace A062955

/-- `n*Δ[A002088(n)]` -/
def P4006051433657380178.Spec : Prop :=
  ∀ n, P4006051433657380178.a n = A062955 (n + 1)

end A062955

/-! ## A062955.P2643180432006154721

`n*Δ[A005728(n)]`
-/

namespace A062955.P2643180432006154721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A062955.P2643180432006154721

namespace A062955

/-- `n*Δ[A005728(n)]` -/
def P2643180432006154721.Spec : Prop :=
  ∀ n, P2643180432006154721.a n = A062955 (n + 1)

end A062955

/-! ## A062955.P12886672807259903074

`A000010(n+1)*n`
-/

namespace A062955.P12886672807259903074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (n : ℤ)

end

end A062955.P12886672807259903074

namespace A062955

/-- `A000010(n+1)*n` -/
def P12886672807259903074.Spec : Prop :=
  ∀ n, P12886672807259903074.a n = A062955 (n + 1)

theorem P12886672807259903074.correct : P12886672807259903074.Spec := by
  intro n
  simp only [A062955, Nat.add_sub_cancel, A062955.P12886672807259903074.a, A062955.P10591233305349930181.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062955

/-! ## A062955.P9962924869850818070

`n*A349137(Δ[n²])`
-/

namespace A062955.P9962924869850818070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062955.P9962924869850818070

namespace A062955

/-- `n*A349137(Δ[n²])` -/
def P9962924869850818070.Spec : Prop :=
  ∀ n, P9962924869850818070.a n = A062955 (n + 1)

end A062955

/-! ## A062955.P2971673405501679127

`n*sqrt(A127473(n+1))`
-/

namespace A062955.P2971673405501679127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A127473 (n + 1) : ℝ)

end

end A062955.P2971673405501679127

namespace A062955

/-- `n*sqrt(A127473(n+1))` -/
def P2971673405501679127.Spec : Prop :=
  ∀ n, P2971673405501679127.a n = (A062955 (n + 1) : ℝ)

end A062955

/-! ## A062955.P915357650419080664

`A345891(n+1)-(n+1)`
-/

namespace A062955.P915357650419080664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345891 (n + 1) - (n + 1 : ℤ)

end

end A062955.P915357650419080664

namespace A062955

/-- `A345891(n+1)-(n+1)` -/
def P915357650419080664.Spec : Prop :=
  ∀ n, P915357650419080664.a n = A062955 (n + 1)

theorem P915357650419080664.correct : P915357650419080664.Spec := by
  intro n
  simp only [A062955, Nat.add_sub_cancel, A062955.P915357650419080664.a, A062955.P10591233305349930181.a, A000010, A000010.P4673923239450215316.a, A345891, A345891.P1680838059371173555.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062955

/-! ## A062955.P16899869302597346557

`n*(A109606(n+1)+1)`
-/

namespace A062955.P16899869302597346557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A109606 (n + 1) + 1)

end

end A062955.P16899869302597346557

namespace A062955

/-- `n*(A109606(n+1)+1)` -/
def P16899869302597346557.Spec : Prop :=
  ∀ n, P16899869302597346557.a n = A062955 (n + 1)

theorem P16899869302597346557.correct : P16899869302597346557.Spec := by
  intro n
  simp only [A062955, Nat.add_sub_cancel, A062955.P16899869302597346557.a, A062955.P10591233305349930181.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062955

/-! ## A062955.P1829091887693356777

`n*(A039649(n+1)-1)`
-/

namespace A062955.P1829091887693356777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A039649 (n + 1) - 1)

end

end A062955.P1829091887693356777

namespace A062955

/-- `n*(A039649(n+1)-1)` -/
def P1829091887693356777.Spec : Prop :=
  ∀ n, P1829091887693356777.a n = A062955 (n + 1)

theorem P1829091887693356777.correct : P1829091887693356777.Spec := by
  intro n
  simp only [A062955, Nat.add_sub_cancel, A062955.P1829091887693356777.a, A062955.P10591233305349930181.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062955

/-! ## A062955.P14706446736867108342

`n/2*A140434(n+1)`
-/

namespace A062955.P14706446736867108342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A140434 (n + 1) : ℚ)

end

end A062955.P14706446736867108342

namespace A062955

/-- `n/2*A140434(n+1)` -/
def P14706446736867108342.Spec : Prop :=
  ∀ n, P14706446736867108342.a n = (A062955 (n + 1) : ℚ)

end A062955

/-! ## A062955.P1237674479687103400

`n/3*A200905(n+1)`
-/

namespace A062955.P1237674479687103400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A200905 (n + 1) : ℚ)

end

end A062955.P1237674479687103400

namespace A062955

/-- `n/3*A200905(n+1)` -/
def P1237674479687103400.Spec : Prop :=
  ∀ n, P1237674479687103400.a n = (A062955 (n + 1) : ℚ)

theorem P1237674479687103400.correct : P1237674479687103400.Spec := by
  intro n
  simp only [A062955, Nat.add_sub_cancel, A062955.P1237674479687103400.a, A062955.P10591233305349930181.a, A000010, A000010.P4673923239450215316.a, A200905, A200905.P16128160975711994279.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062955

/-! ## A062955.P10279694142023113179

`n/4*A002246(n+1)`
-/

namespace A062955.P10279694142023113179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A002246 (n + 1) : ℚ)

end

end A062955.P10279694142023113179

namespace A062955

/-- `n/4*A002246(n+1)` -/
def P10279694142023113179.Spec : Prop :=
  ∀ n, P10279694142023113179.a n = (A062955 (n + 1) : ℚ)

end A062955

/-! ## A062955.P1440317261590292264

`n*(n-A016035(n+1))`
-/

namespace A062955.P1440317261590292264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A016035 (n + 1))

end

end A062955.P1440317261590292264

namespace A062955

/-- `n*(n-A016035(n+1))` -/
def P1440317261590292264.Spec : Prop :=
  ∀ n, P1440317261590292264.a n = A062955 (n + 1)

end A062955

/-! ## A062955.P4556793349842931425

`n*(n-A219428(n+1))`
-/

namespace A062955.P4556793349842931425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A219428 (n + 1))

end

end A062955.P4556793349842931425

namespace A062955

/-- `n*(n-A219428(n+1))` -/
def P4556793349842931425.Spec : Prop :=
  ∀ n, P4556793349842931425.a n = A062955 (n + 1)

theorem P4556793349842931425.correct : P4556793349842931425.Spec := by
  intro n
  simp only [A062955, Nat.add_sub_cancel, A062955.P4556793349842931425.a, A062955.P10591233305349930181.a, A000010, A000010.P4673923239450215316.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062955

/-! ## A062955.P17753728355969341858

`n*sqrt(sqrt(A361148(n+1)))`
-/

namespace A062955.P17753728355969341858
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (Real.sqrt (A361148 (n + 1) : ℝ))

end

end A062955.P17753728355969341858

namespace A062955

/-- `n*sqrt(sqrt(A361148(n+1)))` -/
def P17753728355969341858.Spec : Prop :=
  ∀ n, P17753728355969341858.a n = (A062955 (n + 1) : ℝ)

end A062955

/-! ## A062955.P14097972040030494440

`n*(n+1-A051953(n+1))`
-/

namespace A062955.P14097972040030494440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 1 : ℤ) - A051953 (n + 1))

end

end A062955.P14097972040030494440

namespace A062955

/-- `n*(n+1-A051953(n+1))` -/
def P14097972040030494440.Spec : Prop :=
  ∀ n, P14097972040030494440.a n = A062955 (n + 1)

theorem P14097972040030494440.correct : P14097972040030494440.Spec := by
  intro n
  simp only [A062955, Nat.add_sub_cancel, A062955.P14097972040030494440.a, A062955.P10591233305349930181.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062955

/-! ## A062955.P15639430825510469154

`n*(A121048(n+1)-(n+1))`
-/

namespace A062955.P15639430825510469154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A121048 (n + 1) - (n + 1 : ℤ))

end

end A062955.P15639430825510469154

namespace A062955

/-- `n*(A121048(n+1)-(n+1))` -/
def P15639430825510469154.Spec : Prop :=
  ∀ n, P15639430825510469154.a n = A062955 (n + 1)

theorem P15639430825510469154.correct : P15639430825510469154.Spec := by
  intro n
  simp only [A062955, Nat.add_sub_cancel, A062955.P15639430825510469154.a, A062955.P10591233305349930181.a, A000010, A000010.P4673923239450215316.a, A121048, A121048.P10222907602682812102.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062955

/-!
# A062956: a(n) = h(n^2) - h(n), where h(n) is the half-totient function (A023022).

The programs for A062956, the canonical program `A062956.P3129538147120838096` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062956 has offset 3).

The definition of A062956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062956.P3129538147120838096

`(n+2)*A023022(n+3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062956

/-- `(n+2)*A023022(n+3)` -/
def P3129538147120838096.Spec : Prop :=
  ∀ n, P3129538147120838096.a n = A062956 (n + 3)

theorem P3129538147120838096.correct : P3129538147120838096.Spec := by
  intro n
  simp only [A062956, Nat.add_sub_cancel]

end A062956

/-! ## A062956.P17288942239096897015

`(n/2+1)*A000010(n+3)`
-/

namespace A062956.P17288942239096897015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A000010 (n + 3) : ℚ)

end

end A062956.P17288942239096897015

namespace A062956

/-- `(n/2+1)*A000010(n+3)` -/
def P17288942239096897015.Spec : Prop :=
  ∀ n, P17288942239096897015.a n = (A062956 (n + 3) : ℚ)

end A062956

/-! ## A062956.P2849402570867334930

`A004525(A000010(n+3))*(n+2)`
-/

namespace A062956.P2849402570867334930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000010 (n + 3)).toNat * (n + 2 : ℤ)

end

end A062956.P2849402570867334930

namespace A062956

/-- `A004525(A000010(n+3))*(n+2)` -/
def P2849402570867334930.Spec : Prop :=
  ∀ n, P2849402570867334930.a n = A062956 (n + 3)

end A062956

/-! ## A062956.P1536797168595570619

`(n+2)*Δ[A046657(n+2)]`
-/

namespace A062956.P1536797168595570619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A062956.P1536797168595570619

namespace A062956

/-- `(n+2)*Δ[A046657(n+2)]` -/
def P1536797168595570619.Spec : Prop :=
  ∀ n, P1536797168595570619.a n = A062956 (n + 3)

end A062956

/-! ## A062956.P7442540109754802377

`A062955(n+3)/2`
-/

namespace A062956.P7442540109754802377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062955 (n + 3) : ℚ) / 2

end

end A062956.P7442540109754802377

namespace A062956

/-- `A062955(n+3)/2` -/
def P7442540109754802377.Spec : Prop :=
  ∀ n, P7442540109754802377.a n = (A062956 (n + 3) : ℚ)

end A062956

/-! ## A062956.P7705473154038021943

`A023896(n+3)-A023022(n+3)`
-/

namespace A062956.P7705473154038021943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 3) - A023022 (n + 3)

end

end A062956.P7705473154038021943

namespace A062956

/-- `A023896(n+3)-A023022(n+3)` -/
def P7705473154038021943.Spec : Prop :=
  ∀ n, P7705473154038021943.a n = A062956 (n + 3)

end A062956

/-! ## A062956.P5732106122474647944

`A014682((n+2)*A000010(n+3))`
-/

namespace A062956.P5732106122474647944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 2 : ℤ) * A000010 (n + 3)).toNat

end

end A062956.P5732106122474647944

namespace A062956

/-- `A014682((n+2)*A000010(n+3))` -/
def P5732106122474647944.Spec : Prop :=
  ∀ n, P5732106122474647944.a n = A062956 (n + 3)

end A062956

/-! ## A062956.P16482081253234214660

`(A000010((n+3)²)-A000010(n+3))/2`
-/

namespace A062956.P16482081253234214660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 3) ^ 2) - A000010 (n + 3) : ℚ) / 2

end

end A062956.P16482081253234214660

namespace A062956

/-- `(A000010((n+3)²)-A000010(n+3))/2` -/
def P16482081253234214660.Spec : Prop :=
  ∀ n, P16482081253234214660.a n = (A062956 (n + 3) : ℚ)

end A062956

/-!
# A062957: a(n) = C(n^2) - C(n), where C(n) is Chowla's function (A048050).

The programs for A062957, the canonical program `A062957.P18008206236470764848` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062957 has offset 1).

The definition of A062957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062957.P18008206236470764848

`A320059(n+1)-∑[2*n]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062957

/-- `A320059(n+1)-∑[2*n]` -/
def P18008206236470764848.Spec : Prop :=
  ∀ n, P18008206236470764848.a n = A062957 (n + 1)

theorem P18008206236470764848.correct : P18008206236470764848.Spec := by
  intro n
  simp only [A062957, Nat.add_sub_cancel]

end A062957

/-! ## A062957.P17235977794504423316

`A086156(n+1)+n*(∑{d}[n+1, #]-(n+1))`
-/

namespace A062957.P17235977794504423316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086156 (n + 1) + (n : ℤ) * (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A062957.P17235977794504423316

namespace A062957

/-- `A086156(n+1)+n*(∑{d}[n+1, #]-(n+1))` -/
def P17235977794504423316.Spec : Prop :=
  ∀ n, P17235977794504423316.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P17180096194294557304

`abs(A320059(n+1)-A002378(n))`
-/

namespace A062957.P17180096194294557304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320059 (n + 1) - A002378 n|

end

end A062957.P17180096194294557304

namespace A062957

/-- `abs(A320059(n+1)-A002378(n))` -/
def P17180096194294557304.Spec : Prop :=
  ∀ n, P17180096194294557304.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P3290005075547880191

`A320059(n+1)+n-A005563(n)`
-/

namespace A062957.P3290005075547880191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320059 (n + 1) + (n : ℤ) - A005563 n

end

end A062957.P3290005075547880191

namespace A062957

/-- `A320059(n+1)+n-A005563(n)` -/
def P3290005075547880191.Spec : Prop :=
  ∀ n, P3290005075547880191.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P4326090772821421889

`A320059(n+1)-n-A000290(n)`
-/

namespace A062957.P4326090772821421889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320059 (n + 1) - (n : ℤ) - A000290 n

end

end A062957.P4326090772821421889

namespace A062957

/-- `A320059(n+1)-n-A000290(n)` -/
def P4326090772821421889.Spec : Prop :=
  ∀ n, P4326090772821421889.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P5177893450989990736

`∑{d}[(n+1)², #]-∑{d}[n+1, #]-∑[2*n]`
-/

namespace A062957.P5177893450989990736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A062957.P5177893450989990736

namespace A062957

/-- `∑{d}[(n+1)², #]-∑{d}[n+1, #]-∑[2*n]` -/
def P5177893450989990736.Spec : Prop :=
  ∀ n, P5177893450989990736.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P11650431005313742042

`A000203((n+1)²)-(∑[2*n]+A000203(n+1))`
-/

namespace A062957.P11650431005313742042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000203 (n + 1))

end

end A062957.P11650431005313742042

namespace A062957

/-- `A000203((n+1)²)-(∑[2*n]+A000203(n+1))` -/
def P11650431005313742042.Spec : Prop :=
  ∀ n, P11650431005313742042.a n = A062957 (n + 1)

theorem P11650431005313742042.correct : P11650431005313742042.Spec := by
  intro n
  simp only [A062957, Nat.add_sub_cancel, A062957.P11650431005313742042.f1, A062957.P11650431005313742042.a, A062957.P18008206236470764848.f1, A062957.P18008206236470764848.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A320059, A320059.P12231139820511273363.a, A065764, A065764.P16236740945723656355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062957

/-! ## A062957.P12689051997283471134

`A281006((n+1)²)-A281006(n+1)`
-/

namespace A062957.P12689051997283471134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 ((n + 1) ^ 2) - A281006 (n + 1)

end

end A062957.P12689051997283471134

namespace A062957

/-- `A281006((n+1)²)-A281006(n+1)` -/
def P12689051997283471134.Spec : Prop :=
  ∀ n, P12689051997283471134.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P15063554456051272446

`A326143((n+1)²)-A326143(n+1)`
-/

namespace A062957.P15063554456051272446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326143 ((n + 1) ^ 2) - A326143 (n + 1)

end

end A062957.P15063554456051272446

namespace A062957

/-- `A326143((n+1)²)-A326143(n+1)` -/
def P15063554456051272446.Spec : Prop :=
  ∀ n, P15063554456051272446.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P15015619329381176203

`A326146((n+1)²)-A326146(n+1)`
-/

namespace A062957.P15015619329381176203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 ((n + 1) ^ 2) - A326146 (n + 1)

end

end A062957.P15015619329381176203

namespace A062957

/-- `A326146((n+1)²)-A326146(n+1)` -/
def P15015619329381176203.Spec : Prop :=
  ∀ n, P15015619329381176203.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P193150455819329306

`A325314(n+1)-A325314((n+1)²)`
-/

namespace A062957.P193150455819329306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1) - A325314 ((n + 1) ^ 2)

end

end A062957.P193150455819329306

namespace A062957

/-- `A325314(n+1)-A325314((n+1)²)` -/
def P193150455819329306.Spec : Prop :=
  ∀ n, P193150455819329306.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P15181409497931444898

`A001065((n+1)²)-A001065(n+1)`
-/

namespace A062957.P15181409497931444898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 ((n + 1) ^ 2) - A001065 (n + 1)

end

end A062957.P15181409497931444898

namespace A062957

/-- `A001065((n+1)²)-A001065(n+1)` -/
def P15181409497931444898.Spec : Prop :=
  ∀ n, P15181409497931444898.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P7271660039894011996

`A048050((n+1)²)-A048050(n+1)`
-/

namespace A062957.P7271660039894011996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 ((n + 1) ^ 2) - A048050 (n + 1)

end

end A062957.P7271660039894011996

namespace A062957

/-- `A048050((n+1)²)-A048050(n+1)` -/
def P7271660039894011996.Spec : Prop :=
  ∀ n, P7271660039894011996.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P553636368045810617

`A173455((n+1)²)-A173455(n+1)`
-/

namespace A062957.P553636368045810617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 ((n + 1) ^ 2) - A173455 (n + 1)

end

end A062957.P553636368045810617

namespace A062957

/-- `A173455((n+1)²)-A173455(n+1)` -/
def P553636368045810617.Spec : Prop :=
  ∀ n, P553636368045810617.a n = A062957 (n + 1)

end A062957

/-! ## A062957.P9551099389058590392

`A389461((n+1)²)-A389461(n+1)`
-/

namespace A062957.P9551099389058590392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389461 ((n + 1) ^ 2) - A389461 (n + 1)

end

end A062957.P9551099389058590392

namespace A062957

/-- `A389461((n+1)²)-A389461(n+1)` -/
def P9551099389058590392.Spec : Prop :=
  ∀ n, P9551099389058590392.a n = A062957 (n + 1)

end A062957

/-!
# A062958: Numbers k such that phi(k+1) < 2*phi(k), where phi = A000010.

The programs for A062958, the canonical program `A062958.P12901331491880060464` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062958 has offset 1).

The definition of A062958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062958.P12901331491880060464

`lt[ratio[A000010(n+1)], 2]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062958

/-- `lt[ratio[A000010(n+1)], 2]+1` -/
def P12901331491880060464.Spec : Prop :=
  ∀ n, (P12901331491880060464.a n : ℤ) = A062958 (n + 1)

theorem P12901331491880060464.correct : P12901331491880060464.Spec := by
  intro n
  simp only [A062958, Nat.add_sub_cancel]

end A062958

/-! ## A062958.P13549770601133556352

`lt[A057000(n+1), A000010(n+1)]+1`
-/

namespace A062958.P13549770601133556352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A062958.P13549770601133556352

namespace A062958

/-- `lt[A057000(n+1), A000010(n+1)]+1` -/
def P13549770601133556352.Spec : Prop :=
  ∀ n, (P13549770601133556352.a n : ℤ) = A062958 (n + 1)

end A062958

/-! ## A062958.P3675476486692948227

`lt[A039649(n+1), 2*A225530(n)]`
-/

namespace A062958.P3675476486692948227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062958.P3675476486692948227

namespace A062958

/-- `lt[A039649(n+1), 2*A225530(n)]` -/
def P3675476486692948227.Spec : Prop :=
  ∀ n, (P3675476486692948227.a n : ℤ) = A062958 (n + 1)

end A062958

/-! ## A062958.P8267198873055042936

`lt[A000010(n+1), A004273(A225530(n))]`
-/

namespace A062958.P8267198873055042936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062958.P8267198873055042936

namespace A062958

/-- `lt[A000010(n+1), A004273(A225530(n))]` -/
def P8267198873055042936.Spec : Prop :=
  ∀ n, (P8267198873055042936.a n : ℤ) = A062958 (n + 1)

end A062958

/-! ## A062958.P10096120104977522217

`lt[A057000(A233583(n+1)), A225530(n)]`
-/

namespace A062958.P10096120104977522217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062958.P10096120104977522217

namespace A062958

/-- `lt[A057000(A233583(n+1)), A225530(n)]` -/
def P10096120104977522217.Spec : Prop :=
  ∀ n, (P10096120104977522217.a n : ℤ) = A062958 (n + 1)

end A062958

/-! ## A062958.P11144589265886775725

`lt[A109606(n+1)+1, A004273(A225530(n))]`
-/

namespace A062958.P11144589265886775725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062958.P11144589265886775725

namespace A062958

/-- `lt[A109606(n+1)+1, A004273(A225530(n))]` -/
def P11144589265886775725.Spec : Prop :=
  ∀ n, (P11144589265886775725.a n : ℤ) = A062958 (n + 1)

end A062958

/-! ## A062958.P10467609898578843205

`lt[A032742(A109606(n+1)+1), A225530(n)]`
-/

namespace A062958.P10467609898578843205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A109606 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062958.P10467609898578843205

namespace A062958

/-- `lt[A032742(A109606(n+1)+1), A225530(n)]` -/
def P10467609898578843205.Spec : Prop :=
  ∀ n, (P10467609898578843205.a n : ℤ) = A062958 (n + 1)

end A062958

/-! ## A062958.P13888194532202218095

`lt[A325563(A109606(n+1)+1), A225530(n)]`
-/

namespace A062958.P13888194532202218095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A109606 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062958.P13888194532202218095

namespace A062958

/-- `lt[A325563(A109606(n+1)+1), A225530(n)]` -/
def P13888194532202218095.Spec : Prop :=
  ∀ n, (P13888194532202218095.a n : ℤ) = A062958 (n + 1)

end A062958

/-!
# A062959: Number of divisors of n^(n!) (A053986).

The programs for A062959, there is no canonical definition to state claims against.
-/

/-! ## A062959.P16114307932798058582

`∏{e}[n+1, #*(n+1)!+1]`
-/

namespace A062959.P16114307932798058582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p * Nat.factorial (n + 1) + 1)

end

end A062959.P16114307932798058582

/-! ## A062959.P7709718976620977558

`∑{d}[n+1, (n+1)!^A001221(#)]`
-/

namespace A062959.P7709718976620977558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial (n + 1) : ℚ) ^ (A001221 d : ℤ)

end

end A062959.P7709718976620977558

/-! ## A062959.P486076212571177924

`∑{d}[n+1, A000142(n+1)^A001221(#)]`
-/

namespace A062959.P486076212571177924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000142 (n + 1) : ℚ) ^ (A001221 d : ℤ)

end

end A062959.P486076212571177924

/-!
# A062960: Number of divisors of (n!)^n (A036740).

The programs for A062960, there is no canonical definition to state claims against.
-/

/-! ## A062960.P18182471839707158252

`∏{e}[n!, n*#+1]`
-/

namespace A062960.P18182471839707158252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1)

end

end A062960.P18182471839707158252

/-! ## A062960.P2289936673944383384

`∏{e}[A000142(n), n*#+1]`
-/

namespace A062960.P2289936673944383384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n * Nat.factorization (f1 n).natAbs p + 1)

end

end A062960.P2289936673944383384

/-! ## A062960.P12399996592184766057

`∏{e}[Δ[A003422(n)], n*#+1]`
-/

namespace A062960.P12399996592184766057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n * Nat.factorization (f1 n).natAbs p + 1)

end

end A062960.P12399996592184766057

/-!
# A062961: Number of divisors of n!^n! (A046882).

The programs for A062961, there is no canonical definition to state claims against.
-/

/-! ## A062961.P17278525504102636838

`∑{d}[n!, n!^A001221(#)]`
-/

namespace A062961.P17278525504102636838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial n : ℚ) ^ (A001221 d : ℤ)

end

end A062961.P17278525504102636838

/-! ## A062961.P5164353726726002267

`∑{d}[A000142(n), A000142(n)^A001221(#)]`
-/

namespace A062961.P5164353726726002267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000142 n : ℚ) ^ (A001221 d : ℤ)

end

end A062961.P5164353726726002267

/-! ## A062961.P5826866685384566503

`A062319(n!)`
-/

namespace A062961.P5826866685384566503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 (Nat.factorial n)

end

end A062961.P5826866685384566503

/-! ## A062961.P10242752488927468411

`A062319(A033646(n))`
-/

namespace A062961.P10242752488927468411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 (A033646 n).toNat

end

end A062961.P10242752488927468411

/-!
# A062962: Number of divisors of n-th term of sequence a(n+1) = a(n)*(a(0) + ... + a(n)) (A001697).

The programs for A062962, there is no canonical definition to state claims against.
-/

/-! ## A062962.P4325120098236664711

`A109950(n+1)*A109950(A080014(n))`
-/

namespace A062962.P4325120098236664711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (n + 1) * A109950 (A080014 n).toNat

end

end A062962.P4325120098236664711

/-!
# A062963: a(n) = mu(n) * H(n) where H(n) is A023022.

The programs for A062963, the canonical program `A062963.P9104749185217117533` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062963 has offset 2).

The definition of A062963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062963.P9104749185217117533

`A008683(n+2)*A023022(n+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062963

/-- `A008683(n+2)*A023022(n+2)` -/
def P9104749185217117533.Spec : Prop :=
  ∀ n, P9104749185217117533.a n = A062963 (n + 2)

theorem P9104749185217117533.correct : P9104749185217117533.Spec := by
  intro n
  simp only [A062963, Nat.add_sub_cancel]

end A062963

/-! ## A062963.P13873938248976045631

`A008683(n+2)²*A349431(n+2)`
-/

namespace A062963.P13873938248976045631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) ^ 2 * A349431 (n + 2)

end

end A062963.P13873938248976045631

namespace A062963

/-- `A008683(n+2)²*A349431(n+2)` -/
def P13873938248976045631.Spec : Prop :=
  ∀ n, P13873938248976045631.a n = A062963 (n + 2)

end A062963

/-! ## A062963.P2005278822603335445

`round(A097945(n+2)/2)`
-/

namespace A062963.P2005278822603335445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A097945 (n + 2) : ℚ) / 2)

end

end A062963.P2005278822603335445

namespace A062963

/-- `round(A097945(n+2)/2)` -/
def P2005278822603335445.Spec : Prop :=
  ∀ n, P2005278822603335445.a n = A062963 (n + 2)

end A062963

/-! ## A062963.P17032786404384727288

`Δ[A002321(n+1)]*A023022(n+2)`
-/

namespace A062963.P17032786404384727288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A023022 (n + 2)

end

end A062963.P17032786404384727288

namespace A062963

/-- `Δ[A002321(n+1)]*A023022(n+2)` -/
def P17032786404384727288.Spec : Prop :=
  ∀ n, P17032786404384727288.a n = A062963 (n + 2)

end A062963

/-! ## A062963.P10637262853343288922

`A097945(n+2)/A073180(A020639(2*n+1))`
-/

namespace A062963.P10637262853343288922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097945 (n + 2) : ℚ) / (A073180 (A020639 (2 * n + 1)).toNat : ℚ)

end

end A062963.P10637262853343288922

namespace A062963

/-- `A097945(n+2)/A073180(A020639(2*n+1))` -/
def P10637262853343288922.Spec : Prop :=
  ∀ n, P10637262853343288922.a n = (A062963 (n + 2) : ℚ)

end A062963

/-!
# A062964: Pi in hexadecimal.

The programs for A062964, the canonical program `A062964.P8705216197046672937` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062964 has offset 1).

The definition of A062964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062964.P8705216197046672937

`floor(16^n*π)-16*floor(16^(n-1)*π)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062964

/-- `floor(16^n*π)-16*floor(16^(n-1)*π)` -/
def P8705216197046672937.Spec : Prop :=
  ∀ n, P8705216197046672937.a n = A062964 (n + 1)

theorem P8705216197046672937.correct : P8705216197046672937.Spec := by
  intro n
  simp only [A062964, Nat.add_sub_cancel]

end A062964

/-! ## A062964.P960441948907725658

`floor(π*16^n)%16`
-/

namespace A062964.P960441948907725658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.pi * (16 ^ n : ℝ)⌋ 16

end

end A062964.P960441948907725658

namespace A062964

/-- `floor(π*16^n)%16` -/
def P960441948907725658.Spec : Prop :=
  ∀ n, P960441948907725658.a n = A062964 (n + 1)

end A062964

/-!
# A062965: Positive numbers which are one less than a perfect square that is also another power.

The programs for A062965, there is no canonical definition to state claims against.
-/

/-! ## A062965.P3381971878966564818

`A001597(n+2)²-1`
-/

namespace A062965.P3381971878966564818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2) ^ 2 - 1

end

end A062965.P3381971878966564818

/-! ## A062965.P11356709700405827074

`A340588(n+2)-1`
-/

namespace A062965.P11356709700405827074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 2) - 1

end

end A062965.P11356709700405827074

/-! ## A062965.P8433564112227181259

`A157985(n+2)²-1`
-/

namespace A062965.P8433564112227181259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 2) ^ 2 - 1

end

end A062965.P8433564112227181259

/-! ## A062965.P7284889671952633426

`Δ[A076408(n+1)]²-1`
-/

namespace A062965.P7284889671952633426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A062965.P7284889671952633426

/-! ## A062965.P14316795476171691198

`∑[abs(Δ[A001597(n+1)²])]`
-/

namespace A062965.P14316795476171691198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062965.P14316795476171691198

/-! ## A062965.P5266565684536327639

`A045542(n+1)+A001597(n+2)*A045542(n+1)`
-/

namespace A062965.P5266565684536327639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) + A001597 (n + 2) * A045542 (n + 1)

end

end A062965.P5266565684536327639

/-! ## A062965.P2347870863266389500

`A001597(n+2)*A216765(n+1)-A216765(n+1)`
-/

namespace A062965.P2347870863266389500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2) * A216765 (n + 1) - A216765 (n + 1)

end

end A062965.P2347870863266389500

/-! ## A062965.P9473303791711083408

`A001597(n+2)*A001597(n+2)-A057427(n+1)`
-/

namespace A062965.P9473303791711083408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2) * A001597 (n + 2) - A057427 (n + 1)

end

end A062965.P9473303791711083408

/-! ## A062965.P1533960638922512647

`A033999(2*n+1)+A001597(n+2)²`
-/

namespace A062965.P1533960638922512647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A001597 (n + 2) ^ 2

end

end A062965.P1533960638922512647

/-! ## A062965.P15156231835598597452

`record[A072103(A304088(n))²-1]`
-/

namespace A062965.P15156231835598597452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072103 (A304088 n).toNat ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062965.P15156231835598597452

/-! ## A062965.P11181329614103555386

`(lt[1, A295924(n+1)]+1)²-1`
-/

namespace A062965.P11181329614103555386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2 : ℤ) - 1

end

end A062965.P11181329614103555386

/-! ## A062965.P1135639993148796890

`lt[1, A295924(n+1)]*A216765(n+1)`
-/

namespace A062965.P1135639993148796890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) * A216765 (n + 1)

end

end A062965.P1135639993148796890

/-! ## A062965.P10928955867741775608

`∩[A062312(n+2), A076467(n+2)]-1`
-/

namespace A062965.P10928955867741775608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A062965.P10928955867741775608

/-! ## A062965.P5614846989073238985

`∩[A062312(n+2), A076468(n+2)]-1`
-/

namespace A062965.P5614846989073238985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A062965.P5614846989073238985

/-! ## A062965.P282110023689778338

`∩[A062312(n+2), A117453(n+2)]-1`
-/

namespace A062965.P282110023689778338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117453 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A062965.P282110023689778338

/-! ## A062965.P2318681940848973094

`∩[A076467(n+2), A161753(n+2)]-1`
-/

namespace A062965.P2318681940848973094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161753 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A062965.P2318681940848973094

/-! ## A062965.P8439977769253187097

`lt[1, A253641(n)]²-1`
-/

namespace A062965.P8439977769253187097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 : ℤ) - 1

end

end A062965.P8439977769253187097

/-! ## A062965.P4876207752093357623

`A005563(A045542(n+1))`
-/

namespace A062965.P4876207752093357623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A045542 (n + 1)).toNat

end

end A062965.P4876207752093357623

/-! ## A062965.P11182067605899866240

`A005563(A001597(n+2)-1)`
-/

namespace A062965.P11182067605899866240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A001597 (n + 2) - 1).toNat

end

end A062965.P11182067605899866240

/-! ## A062965.P6903681010047395951

`A067998(A216765(n+1))`
-/

namespace A062965.P6903681010047395951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A216765 (n + 1)).toNat

end

end A062965.P6903681010047395951

/-!
# A062966: a(n) = C(3+n, n) + C(4+n, n) + C(5+n, n) + C(6+n, n).

The programs for A062966, the canonical program `A062966.P14137810226249902809` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062966 has offset 0).

The definition of A062966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3+n, n)+C(4+n, n)+C(5+n, n)+C(6+n, n)` (program `A062966.P14137810226249902809`, by `A062966.P14137810226249902809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062966.P14137810226249902809

`C(3+n, n)+C(4+n, n)+C(5+n, n)+C(6+n, n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062966

/-- `C(3+n, n)+C(4+n, n)+C(5+n, n)+C(6+n, n)` -/
def P14137810226249902809.Spec : Prop :=
  ∀ n, (P14137810226249902809.a n : ℤ) = A062966 n

theorem P14137810226249902809.correct : P14137810226249902809.Spec := by
  intro n
  simp only [A062966]

end A062966

/-! ## A062966.P10101744810018727318

`∑[∑[∑[C(n+4, 3)]]]`
-/

namespace A062966.P10101744810018727318
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062966.P10101744810018727318

namespace A062966

/-- `∑[∑[∑[C(n+4, 3)]]]` -/
def P10101744810018727318.Spec : Prop :=
  ∀ n, (P10101744810018727318.a n : ℤ) = A062966 n

end A062966

/-! ## A062966.P1614936312615417997

`∑[∑[∑[∏[3/(n+1)+1]]]]`
-/

namespace A062966.P1614936312615417997
noncomputable section

def f4 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062966.P1614936312615417997

namespace A062966

/-- `∑[∑[∑[∏[3/(n+1)+1]]]]` -/
def P1614936312615417997.Spec : Prop :=
  ∀ n, P1614936312615417997.a n = (A062966 n : ℚ)

end A062966

/-! ## A062966.P7783459370347291119

`A064056(n)+∑[n+1]`
-/

namespace A062966.P7783459370347291119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064056 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062966.P7783459370347291119

namespace A062966

/-- `A064056(n)+∑[n+1]` -/
def P7783459370347291119.Spec : Prop :=
  ∀ n, P7783459370347291119.a n = A062966 n

end A062966

/-! ## A062966.P18195572265591728373

`A027659(n)+a(n-1)` with `a(0)=4`
-/

namespace A062966.P18195572265591728373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A027659 n + a (n - 1)

end

end A062966.P18195572265591728373

namespace A062966

/-- `A027659(n)+a(n-1)` -/
def P18195572265591728373.Spec : Prop :=
  ∀ n, P18195572265591728373.a n = A062966 n

end A062966

/-! ## A062966.P2468186800095500086

`A095669(n)-A130857(n+1)`
-/

namespace A062966.P2468186800095500086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n - A130857 (n + 1)

end

end A062966.P2468186800095500086

namespace A062966

/-- `A095669(n)-A130857(n+1)` -/
def P2468186800095500086.Spec : Prop :=
  ∀ n, P2468186800095500086.a n = A062966 n

end A062966

/-! ## A062966.P882793578271462296

`A062990(n)-A000580(n+7)`
-/

namespace A062966.P882793578271462296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n - A000580 (n + 7)

end

end A062966.P882793578271462296

namespace A062966

/-- `A062990(n)-A000580(n+7)` -/
def P882793578271462296.Spec : Prop :=
  ∀ n, P882793578271462296.a n = A062966 n

end A062966

/-! ## A062966.P7465034640877246454

`A005584(n+1)+A005582(n+1)`
-/

namespace A062966.P7465034640877246454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 1) + A005582 (n + 1)

end

end A062966.P7465034640877246454

namespace A062966

/-- `A005584(n+1)+A005582(n+1)` -/
def P7465034640877246454.Spec : Prop :=
  ∀ n, P7465034640877246454.a n = A062966 n

end A062966

/-! ## A062966.P13230969909455808657

`A166810(n+1)-A034856(n+1)`
-/

namespace A062966.P13230969909455808657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1) - A034856 (n + 1)

end

end A062966.P13230969909455808657

namespace A062966

/-- `A166810(n+1)-A034856(n+1)` -/
def P13230969909455808657.Spec : Prop :=
  ∀ n, P13230969909455808657.a n = A062966 n

end A062966

/-! ## A062966.P16769431173685025271

`A005582(n+1)+∑[A005583(n+1)]`
-/

namespace A062966.P16769431173685025271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062966.P16769431173685025271

namespace A062966

/-- `A005582(n+1)+∑[A005583(n+1)]` -/
def P16769431173685025271.Spec : Prop :=
  ∀ n, P16769431173685025271.a n = A062966 n

end A062966

/-! ## A062966.P8202612655885846494

`A062989(n+1)-∑[n+1]`
-/

namespace A062966.P8202612655885846494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062966.P8202612655885846494

namespace A062966

/-- `A062989(n+1)-∑[n+1]` -/
def P8202612655885846494.Spec : Prop :=
  ∀ n, P8202612655885846494.a n = A062966 n

end A062966

/-! ## A062966.P16414484133170736215

`A124089(n+7)-A000096(n+1)`
-/

namespace A062966.P16414484133170736215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 7) - A000096 (n + 1)

end

end A062966.P16414484133170736215

namespace A062966

/-- `A124089(n+7)-A000096(n+1)` -/
def P16414484133170736215.Spec : Prop :=
  ∀ n, P16414484133170736215.a n = A062966 n

end A062966

/-! ## A062966.P13575263980585404201

`A062989(n+1)+A000292(n)-A000292(n+1)`
-/

namespace A062966.P13575263980585404201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 (n + 1) + A000292 n - A000292 (n + 1)

end

end A062966.P13575263980585404201

namespace A062966

/-- `A062989(n+1)+A000292(n)-A000292(n+1)` -/
def P13575263980585404201.Spec : Prop :=
  ∀ n, P13575263980585404201.a n = A062966 n

end A062966

/-! ## A062966.P11231577909034249871

`A145128(n+2)-(n+3)²`
-/

namespace A062966.P11231577909034249871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145128 (n + 2) - ((n + 3) ^ 2 : ℤ)

end

end A062966.P11231577909034249871

namespace A062966

/-- `A145128(n+2)-(n+3)²` -/
def P11231577909034249871.Spec : Prop :=
  ∀ n, P11231577909034249871.a n = A062966 n

end A062966

/-! ## A062966.P10909113219328898674

`Δ[A145129(n+1)]-(n+3)²`
-/

namespace A062966.P10909113219328898674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n + 3) ^ 2 : ℤ)

end

end A062966.P10909113219328898674

namespace A062966

/-- `Δ[A145129(n+1)]-(n+3)²` -/
def P10909113219328898674.Spec : Prop :=
  ∀ n, P10909113219328898674.a n = A062966 n

end A062966

/-! ## A062966.P12384634022934071551

`A005584(n+1)+∑[A005581(n+2)]`
-/

namespace A062966.P12384634022934071551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062966.P12384634022934071551

namespace A062966

/-- `A005584(n+1)+∑[A005581(n+2)]` -/
def P12384634022934071551.Spec : Prop :=
  ∀ n, P12384634022934071551.a n = A062966 n

end A062966

/-! ## A062966.P2700540161424200801

`(A082140(n+1)-A080929(n+1))/A011782(n+1)`
-/

namespace A062966.P2700540161424200801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082140 (n + 1) - A080929 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A062966.P2700540161424200801

namespace A062966

/-- `(A082140(n+1)-A080929(n+1))/A011782(n+1)` -/
def P2700540161424200801.Spec : Prop :=
  ∀ n, P2700540161424200801.a n = (A062966 n : ℚ)

end A062966

/-! ## A062966.P10819316875539617135

`(A036220(n+1)-A027472(n+4))/A000244(n+1)`
-/

namespace A062966.P10819316875539617135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036220 (n + 1) - A027472 (n + 4) : ℚ) / (A000244 (n + 1) : ℚ)

end

end A062966.P10819316875539617135

namespace A062966

/-- `(A036220(n+1)-A027472(n+4))/A000244(n+1)` -/
def P10819316875539617135.Spec : Prop :=
  ∀ n, P10819316875539617135.a n = (A062966 n : ℚ)

end A062966

/-!
# A062967: a(n) = 2*(sigma(n)-n-1)+1, where sigma = A000203, sum of divisors of n.

The programs for A062967, the canonical program `A062967.P18374354357009488384` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062967 has offset 1).

The definition of A062967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(A000203(n+1)-(n+1)-1)+1` (program `A062967.P18374354357009488384`, by `A062967.P18374354357009488384.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062967.P4115088381061697299

`2*A001065(n+1)-1`
-/

namespace A062967.P4115088381061697299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - 1

end

end A062967.P4115088381061697299

namespace A062967

/-- `2*A001065(n+1)-1` -/
def P4115088381061697299.Spec : Prop :=
  ∀ n, P4115088381061697299.a n = A062967 (n + 1)

theorem P4115088381061697299.correct : P4115088381061697299.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P4115088381061697299.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P18374354357009488384

`2*(A000203(n+1)-(n+1)-1)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062967

/-- `2*(A000203(n+1)-(n+1)-1)+1` -/
def P18374354357009488384.Spec : Prop :=
  ∀ n, P18374354357009488384.a n = A062967 (n + 1)

theorem P18374354357009488384.correct : P18374354357009488384.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel]

end A062967

/-! ## A062967.P5134984518361410584

`2*(∑{d}[n+1, #]-n)-3`
-/

namespace A062967.P5134984518361410584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n : ℤ)) - 3

end

end A062967.P5134984518361410584

namespace A062967

/-- `2*(∑{d}[n+1, #]-n)-3` -/
def P5134984518361410584.Spec : Prop :=
  ∀ n, P5134984518361410584.a n = A062967 (n + 1)

theorem P5134984518361410584.correct : P5134984518361410584.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P5134984518361410584.f1, A062967.P5134984518361410584.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P9558026752348591325

`∑{d}[n+1, #]+∑{d}[n+1, #]-(n+3+n)`
-/

namespace A062967.P9558026752348591325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 3 + n : ℤ))

end

end A062967.P9558026752348591325

namespace A062967

/-- `∑{d}[n+1, #]+∑{d}[n+1, #]-(n+3+n)` -/
def P9558026752348591325.Spec : Prop :=
  ∀ n, P9558026752348591325.a n = A062967 (n + 1)

theorem P9558026752348591325.correct : P9558026752348591325.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P9558026752348591325.f1, A062967.P9558026752348591325.f2, A062967.P9558026752348591325.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P11804058532168862508

`A091818(n+1)-1`
-/

namespace A062967.P11804058532168862508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - 1

end

end A062967.P11804058532168862508

namespace A062967

/-- `A091818(n+1)-1` -/
def P11804058532168862508.Spec : Prop :=
  ∀ n, P11804058532168862508.a n = A062967 (n + 1)

theorem P11804058532168862508.correct : P11804058532168862508.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P11804058532168862508.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A091818, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P14114106161937098320

`A294015(n+1)-2`
-/

namespace A062967.P14114106161937098320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1) - 2

end

end A062967.P14114106161937098320

namespace A062967

/-- `A294015(n+1)-2` -/
def P14114106161937098320.Spec : Prop :=
  ∀ n, P14114106161937098320.a n = A062967 (n + 1)

theorem P14114106161937098320.correct : P14114106161937098320.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P14114106161937098320.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A294015, A294015.P9060703257274913068.a, A091818, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P14582955825104002002

`A294628(n+1)/4-2`
-/

namespace A062967.P14582955825104002002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294628 (n + 1) : ℚ) / 4 - 2

end

end A062967.P14582955825104002002

namespace A062967

/-- `A294628(n+1)/4-2` -/
def P14582955825104002002.Spec : Prop :=
  ∀ n, P14582955825104002002.a n = (A062967 (n + 1) : ℚ)

theorem P14582955825104002002.correct : P14582955825104002002.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P14582955825104002002.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A294628, A294628.P17732687691627968368.a, A294015, A294015.P9060703257274913068.a, A091818, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P483493983506370470

`A002659(n+1)-2*(n+1)`
-/

namespace A062967.P483493983506370470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1) - (2 * (n + 1) : ℤ)

end

end A062967.P483493983506370470

namespace A062967

/-- `A002659(n+1)-2*(n+1)` -/
def P483493983506370470.Spec : Prop :=
  ∀ n, P483493983506370470.a n = A062967 (n + 1)

theorem P483493983506370470.correct : P483493983506370470.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P483493983506370470.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002659, A002659.P8948138163684764047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P13089256985611127546

`2*(n-A033879(n+1))+1`
-/

namespace A062967.P13089256985611127546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A033879 (n + 1)) + 1

end

end A062967.P13089256985611127546

namespace A062967

/-- `2*(n-A033879(n+1))+1` -/
def P13089256985611127546.Spec : Prop :=
  ∀ n, P13089256985611127546.a n = A062967 (n + 1)

theorem P13089256985611127546.correct : P13089256985611127546.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P13089256985611127546.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P5965131822542929609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P6471025883576677758

`A074400(n+1)-(2*n+3)`
-/

namespace A062967.P6471025883576677758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - (2 * n + 3 : ℤ)

end

end A062967.P6471025883576677758

namespace A062967

/-- `A074400(n+1)-(2*n+3)` -/
def P6471025883576677758.Spec : Prop :=
  ∀ n, P6471025883576677758.a n = A062967 (n + 1)

theorem P6471025883576677758.correct : P6471025883576677758.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P6471025883576677758.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P5791828319664742512

`2*(A000203(n+1)-n)-3`
-/

namespace A062967.P5791828319664742512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000203 (n + 1) - (n : ℤ)) - 3

end

end A062967.P5791828319664742512

namespace A062967

/-- `2*(A000203(n+1)-n)-3` -/
def P5791828319664742512.Spec : Prop :=
  ∀ n, P5791828319664742512.a n = A062967 (n + 1)

theorem P5791828319664742512.correct : P5791828319664742512.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P5791828319664742512.a, A062967.P18374354357009488384.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062967

/-! ## A062967.P280610201907131204

`2*A039653(n+1)-(2*n+1)`
-/

namespace A062967.P280610201907131204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039653 (n + 1) - (2 * n + 1 : ℤ)

end

end A062967.P280610201907131204

namespace A062967

/-- `2*A039653(n+1)-(2*n+1)` -/
def P280610201907131204.Spec : Prop :=
  ∀ n, P280610201907131204.a n = A062967 (n + 1)

end A062967

/-! ## A062967.P12638056997350867336

`A039653(n+1)+A033880(n+1)`
-/

namespace A062967.P12638056997350867336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + A033880 (n + 1)

end

end A062967.P12638056997350867336

namespace A062967

/-- `A039653(n+1)+A033880(n+1)` -/
def P12638056997350867336.Spec : Prop :=
  ∀ n, P12638056997350867336.a n = A062967 (n + 1)

end A062967

/-! ## A062967.P11028548665036754511

`A039653(n+1)-A033879(n+1)`
-/

namespace A062967.P11028548665036754511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - A033879 (n + 1)

end

end A062967.P11028548665036754511

namespace A062967

/-- `A039653(n+1)-A033879(n+1)` -/
def P11028548665036754511.Spec : Prop :=
  ∀ n, P11028548665036754511.a n = A062967 (n + 1)

end A062967

/-! ## A062967.P6237112119575065199

`A346880(n+1)-A000593(n+1)`
-/

namespace A062967.P6237112119575065199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346880 (n + 1) - A000593 (n + 1)

end

end A062967.P6237112119575065199

namespace A062967

/-- `A346880(n+1)-A000593(n+1)` -/
def P6237112119575065199.Spec : Prop :=
  ∀ n, P6237112119575065199.a n = A062967 (n + 1)

end A062967

/-! ## A062967.P16108846783481919553

`A272027(n+1)-A387001(n+1)`
-/

namespace A062967.P16108846783481919553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) - A387001 (n + 1)

end

end A062967.P16108846783481919553

namespace A062967

/-- `A272027(n+1)-A387001(n+1)` -/
def P16108846783481919553.Spec : Prop :=
  ∀ n, P16108846783481919553.a n = A062967 (n + 1)

theorem P16108846783481919553.correct : P16108846783481919553.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P16108846783481919553.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A272027, A272027.P17950759033993077215.a, A387001, A387001.P16811340479551848930.a, A224880, A224880.P6780601834210635688.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P15682416369353456158

`A000203(n+1)-(A033879(n+1)+1)`
-/

namespace A062967.P15682416369353456158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A033879 (n + 1) + 1)

end

end A062967.P15682416369353456158

namespace A062967

/-- `A000203(n+1)-(A033879(n+1)+1)` -/
def P15682416369353456158.Spec : Prop :=
  ∀ n, P15682416369353456158.a n = A062967 (n + 1)

theorem P15682416369353456158.correct : P15682416369353456158.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P15682416369353456158.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P5965131822542929609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P9750534367365533934

`A000203(n+1)+A033880(n+1)-1`
-/

namespace A062967.P9750534367365533934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A033880 (n + 1) - 1)

end

end A062967.P9750534367365533934

namespace A062967

/-- `A000203(n+1)+A033880(n+1)-1` -/
def P9750534367365533934.Spec : Prop :=
  ∀ n, P9750534367365533934.a n = A062967 (n + 1)

theorem P9750534367365533934.correct : P9750534367365533934.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P9750534367365533934.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P7495214252741487203

`A051612(n+1)+A051709(n+1)-1`
-/

namespace A062967.P7495214252741487203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) + (A051709 (n + 1) - 1)

end

end A062967.P7495214252741487203

namespace A062967

/-- `A051612(n+1)+A051709(n+1)-1` -/
def P7495214252741487203.Spec : Prop :=
  ∀ n, P7495214252741487203.a n = A062967 (n + 1)

theorem P7495214252741487203.correct : P7495214252741487203.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P7495214252741487203.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A051709, A051709.P8066883811744733228.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-! ## A062967.P260352909026826350

`A211779(n+1)+A296074(n+1)-1`
-/

namespace A062967.P260352909026826350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + (A296074 (n + 1) - 1)

end

end A062967.P260352909026826350

namespace A062967

/-- `A211779(n+1)+A296074(n+1)-1` -/
def P260352909026826350.Spec : Prop :=
  ∀ n, P260352909026826350.a n = A062967 (n + 1)

theorem P260352909026826350.correct : P260352909026826350.Spec := by
  intro n
  simp only [A062967, Nat.add_sub_cancel, A062967.P260352909026826350.a, A062967.P18374354357009488384.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A211779, A211779.P11493622072280912374.a, A296074, A296074.P13795180973919370839.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A033879, A033879.P5965131822542929609.a, A296075, A296075.P11175105171194449082.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062967

/-!
# A062968: a(n) = n + 1 - d(n), where d(n) is the number of divisors function.

The programs for A062968, the canonical program `A062968.P12745258028289340812` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062968 has offset 1).

The definition of A062968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062968.P12745258028289340812

`A049820(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062968

/-- `A049820(n+1)+1` -/
def P12745258028289340812.Spec : Prop :=
  ∀ n, P12745258028289340812.a n = A062968 (n + 1)

theorem P12745258028289340812.correct : P12745258028289340812.Spec := by
  intro n
  simp only [A062968, Nat.add_sub_cancel]

end A062968

/-! ## A062968.P11620201928428543580

`n+2-A000005(n+1)`
-/

namespace A062968.P11620201928428543580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000005 (n + 1)

end

end A062968.P11620201928428543580

namespace A062968

/-- `n+2-A000005(n+1)` -/
def P11620201928428543580.Spec : Prop :=
  ∀ n, P11620201928428543580.a n = A062968 (n + 1)

theorem P11620201928428543580.correct : P11620201928428543580.Spec := by
  intro n
  simp only [A062968, Nat.add_sub_cancel, A062968.P11620201928428543580.a, A062968.P12745258028289340812.a, A000005, A000005.P16091521709108585461.a, A049820, A049820.P9428372222244335888.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062968

/-! ## A062968.P1057122786828845863

`2-∏{e}[n+1, #+1]+n`
-/

namespace A062968.P1057122786828845863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)

end

end A062968.P1057122786828845863

namespace A062968

/-- `2-∏{e}[n+1, #+1]+n` -/
def P1057122786828845863.Spec : Prop :=
  ∀ n, P1057122786828845863.a n = A062968 (n + 1)

theorem P1057122786828845863.correct : P1057122786828845863.Spec := by
  intro n
  simp only [A062968, Nat.add_sub_cancel, A062968.P1057122786828845863.f1, A062968.P1057122786828845863.a, A062968.P12745258028289340812.a, A049820, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062968

/-! ## A062968.P4989486369619713606

`2-∑{d}[n+1, gcd(n, #)]+n`
-/

namespace A062968.P4989486369619713606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) + (n : ℤ)

end

end A062968.P4989486369619713606

namespace A062968

/-- `2-∑{d}[n+1, gcd(n, #)]+n` -/
def P4989486369619713606.Spec : Prop :=
  ∀ n, P4989486369619713606.a n = A062968 (n + 1)

end A062968

/-! ## A062968.P9504907784675418191

`∑{d}[n+1, or(#, -1)]+n+2`
-/

namespace A062968.P9504907784675418191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1) + (n + 2 : ℤ)

end

end A062968.P9504907784675418191

namespace A062968

/-- `∑{d}[n+1, or(#, -1)]+n+2` -/
def P9504907784675418191.Spec : Prop :=
  ∀ n, P9504907784675418191.a n = A062968 (n + 1)

end A062968

/-! ## A062968.P8098939350476703568

`n+2-∑{d}[n+1, ceil(1/#)]`
-/

namespace A062968.P8098939350476703568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A062968.P8098939350476703568

namespace A062968

/-- `n+2-∑{d}[n+1, ceil(1/#)]` -/
def P8098939350476703568.Spec : Prop :=
  ∀ n, P8098939350476703568.a n = A062968 (n + 1)

end A062968

/-! ## A062968.P11800533785612278418

`n-∑{d}[n+1, n²%#]+1`
-/

namespace A062968.P11800533785612278418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ) + 1

end

end A062968.P11800533785612278418

namespace A062968

/-- `n-∑{d}[n+1, n²%#]+1` -/
def P11800533785612278418.Spec : Prop :=
  ∀ n, P11800533785612278418.a n = A062968 (n + 1)

end A062968

/-! ## A062968.P5521052554574535731

`∑{d}[n+1, lcm(#, n+1)]%(n+2)`
-/

namespace A062968.P5521052554574535731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1)) % (n + 2)

end

end A062968.P5521052554574535731

namespace A062968

/-- `∑{d}[n+1, lcm(#, n+1)]%(n+2)` -/
def P5521052554574535731.Spec : Prop :=
  ∀ n, (P5521052554574535731.a n : ℤ) = A062968 (n + 1)

end A062968

/-! ## A062968.P16233548600070773690

`A059292(n+1)-1`
-/

namespace A062968.P16233548600070773690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) - 1

end

end A062968.P16233548600070773690

namespace A062968

/-- `A059292(n+1)-1` -/
def P16233548600070773690.Spec : Prop :=
  ∀ n, P16233548600070773690.a n = A062968 (n + 1)

theorem P16233548600070773690.correct : P16233548600070773690.Spec := by
  intro n
  simp only [A062968, Nat.add_sub_cancel, A062968.P16233548600070773690.a, A062968.P12745258028289340812.a, A049820, A049820.P9428372222244335888.a, A059292, A059292.P13391037705740320393.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062968

/-! ## A062968.P12974805918364241675

`A378216(n+1)+n`
-/

namespace A062968.P12974805918364241675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + (n : ℤ)

end

end A062968.P12974805918364241675

namespace A062968

/-- `A378216(n+1)+n` -/
def P12974805918364241675.Spec : Prop :=
  ∀ n, P12974805918364241675.a n = A062968 (n + 1)

theorem P12974805918364241675.correct : P12974805918364241675.Spec := by
  intro n
  simp only [A062968, Nat.add_sub_cancel, A062968.P12974805918364241675.a, A062968.P12745258028289340812.a, A049820, A049820.P9428372222244335888.a, A378216, A378216.P4619166357507459087.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062968

/-! ## A062968.P9144906706682607932

`A286002(n+1)-n`
-/

namespace A062968.P9144906706682607932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) - (n : ℤ)

end

end A062968.P9144906706682607932

namespace A062968

/-- `A286002(n+1)-n` -/
def P9144906706682607932.Spec : Prop :=
  ∀ n, P9144906706682607932.a n = A062968 (n + 1)

theorem P9144906706682607932.correct : P9144906706682607932.Spec := by
  intro n
  simp only [A062968, Nat.add_sub_cancel, A062968.P9144906706682607932.a, A062968.P12745258028289340812.a, A049820, A049820.P9428372222244335888.a, A286002, A286002.P1824755549209206382.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062968

/-! ## A062968.P17798549617546031306

`∑[1-Δ[A032741(n)]]`
-/

namespace A062968.P17798549617546031306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062968.P17798549617546031306

namespace A062968

/-- `∑[1-Δ[A032741(n)]]` -/
def P17798549617546031306.Spec : Prop :=
  ∀ n, P17798549617546031306.a n = A062968 (n + 1)

end A062968

/-! ## A062968.P2662969149612637790

`2-Δ[A006218(n)]+n`
-/

namespace A062968.P2662969149612637790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A062968.P2662969149612637790

namespace A062968

/-- `2-Δ[A006218(n)]+n` -/
def P2662969149612637790.Spec : Prop :=
  ∀ n, P2662969149612637790.a n = A062968 (n + 1)

end A062968

/-! ## A062968.P14369469254264042187

`2-Δ[A054519(n)]+n`
-/

namespace A062968.P14369469254264042187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A062968.P14369469254264042187

namespace A062968

/-- `2-Δ[A054519(n)]+n` -/
def P14369469254264042187.Spec : Prop :=
  ∀ n, P14369469254264042187.a n = A062968 (n + 1)

end A062968

/-! ## A062968.P11371520218121622443

`1-A032741(n+1)+n`
-/

namespace A062968.P11371520218121622443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A032741 (n + 1) + (n : ℤ)

end

end A062968.P11371520218121622443

namespace A062968

/-- `1-A032741(n+1)+n` -/
def P11371520218121622443.Spec : Prop :=
  ∀ n, P11371520218121622443.a n = A062968 (n + 1)

theorem P11371520218121622443.correct : P11371520218121622443.Spec := by
  intro n
  simp only [A062968, Nat.add_sub_cancel, A062968.P11371520218121622443.a, A062968.P12745258028289340812.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049820, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062968

/-! ## A062968.P11249783845289198697

`2+n-A000005(n+1)`
-/

namespace A062968.P11249783845289198697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + ((n : ℤ) - A000005 (n + 1))

end

end A062968.P11249783845289198697

namespace A062968

/-- `2+n-A000005(n+1)` -/
def P11249783845289198697.Spec : Prop :=
  ∀ n, P11249783845289198697.a n = A062968 (n + 1)

theorem P11249783845289198697.correct : P11249783845289198697.Spec := by
  intro n
  simp only [A062968, Nat.add_sub_cancel, A062968.P11249783845289198697.a, A062968.P12745258028289340812.a, A000005, A000005.P16091521709108585461.a, A049820, A049820.P9428372222244335888.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062968

/-! ## A062968.P15773518744512549856

`A069553(n+1)/(n+1)`
-/

namespace A062968.P15773518744512549856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069553 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A062968.P15773518744512549856

namespace A062968

/-- `A069553(n+1)/(n+1)` -/
def P15773518744512549856.Spec : Prop :=
  ∀ n, P15773518744512549856.a n = (A062968 (n + 1) : ℚ)

end A062968

/-! ## A062968.P10017399023951048028

`3-A334954(n+1)+n`
-/

namespace A062968.P10017399023951048028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A334954 (n + 1) + (n : ℤ)

end

end A062968.P10017399023951048028

namespace A062968

/-- `3-A334954(n+1)+n` -/
def P10017399023951048028.Spec : Prop :=
  ∀ n, P10017399023951048028.a n = A062968 (n + 1)

end A062968

/-! ## A062968.P2773650756566955329

`A038040(n+1)%(n+2)`
-/

namespace A062968.P2773650756566955329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038040 (n + 1)) (n + 2 : ℤ)

end

end A062968.P2773650756566955329

namespace A062968

/-- `A038040(n+1)%(n+2)` -/
def P2773650756566955329.Spec : Prop :=
  ∀ n, P2773650756566955329.a n = A062968 (n + 1)

end A062968

/-! ## A062968.P1978167228331409771

`A386012(n+1)%(n+2)`
-/

namespace A062968.P1978167228331409771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386012 (n + 1)) (n + 2 : ℤ)

end

end A062968.P1978167228331409771

namespace A062968

/-- `A386012(n+1)%(n+2)` -/
def P1978167228331409771.Spec : Prop :=
  ∀ n, P1978167228331409771.a n = A062968 (n + 1)

end A062968

/-!
# A062969: Numbers k such that abs(d(k)-k-1) is prime, where d(k) is the number of divisors of k.

The programs for A062969, the canonical program `A062969.P2182184149283088773` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062969 has offset 1).

The definition of A062969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062969.P2182184149283088773

`eq[2, A000005(2-A000005(n+1)+n)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062969

/-- `eq[2, A000005(2-A000005(n+1)+n)]+1` -/
def P2182184149283088773.Spec : Prop :=
  ∀ n, (P2182184149283088773.a n : ℤ) = A062969 (n + 1)

theorem P2182184149283088773.correct : P2182184149283088773.Spec := by
  intro n
  simp only [A062969, Nat.add_sub_cancel]

end A062969

/-! ## A062969.P9549945766701796102

`eq[1, A003415(n-A032741(n))]`
-/

namespace A062969.P9549945766701796102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n : ℤ) - A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062969.P9549945766701796102

namespace A062969

/-- `eq[1, A003415(n-A032741(n))]` -/
def P9549945766701796102.Spec : Prop :=
  ∀ n, (P9549945766701796102.a n : ℤ) = A062969 (n + 1)

end A062969

/-! ## A062969.P2801352088703949223

`eq[1, A018783(n-A032741(n))]`
-/

namespace A062969.P2801352088703949223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 ((n : ℤ) - A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062969.P2801352088703949223

namespace A062969

/-- `eq[1, A018783(n-A032741(n))]` -/
def P2801352088703949223.Spec : Prop :=
  ∀ n, (P2801352088703949223.a n : ℤ) = A062969 (n + 1)

end A062969

/-! ## A062969.P15670844103808289907

`eq[1, A032741(n-A032741(n))]`
-/

namespace A062969.P15670844103808289907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((n : ℤ) - A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062969.P15670844103808289907

namespace A062969

/-- `eq[1, A032741(n-A032741(n))]` -/
def P15670844103808289907.Spec : Prop :=
  ∀ n, (P15670844103808289907.a n : ℤ) = A062969 (n + 1)

end A062969

/-! ## A062969.P9442181170106060789

`lt[A007920(n-A032741(n)), 1]`
-/

namespace A062969.P9442181170106060789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 ((n : ℤ) - A032741 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062969.P9442181170106060789

namespace A062969

/-- `lt[A007920(n-A032741(n)), 1]` -/
def P9442181170106060789.Spec : Prop :=
  ∀ n, (P9442181170106060789.a n : ℤ) = A062969 (n + 1)

end A062969

/-! ## A062969.P14390469570289647892

`eq[2, A184395(A062968(n+1))]+1`
-/

namespace A062969.P14390469570289647892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (A062968 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062969.P14390469570289647892

namespace A062969

/-- `eq[2, A184395(A062968(n+1))]+1` -/
def P14390469570289647892.Spec : Prop :=
  ∀ n, (P14390469570289647892.a n : ℤ) = A062969 (n + 1)

end A062969

/-! ## A062969.P15871370009960256553

`eq[1, A001222(A049820(n+1)+1)]+1`
-/

namespace A062969.P15871370009960256553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049820 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062969.P15871370009960256553

namespace A062969

/-- `eq[1, A001222(A049820(n+1)+1)]+1` -/
def P15871370009960256553.Spec : Prop :=
  ∀ n, (P15871370009960256553.a n : ℤ) = A062969 (n + 1)

end A062969

/-! ## A062969.P17432534530918246818

`eq[2, A000005(A049820(n+1)+1)]+1`
-/

namespace A062969.P17432534530918246818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049820 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062969.P17432534530918246818

namespace A062969

/-- `eq[2, A000005(A049820(n+1)+1)]+1` -/
def P17432534530918246818.Spec : Prop :=
  ∀ n, (P17432534530918246818.a n : ℤ) = A062969 (n + 1)

end A062969

/-!
# A062970: a(n) = 1 + Sum_{j=1..n} j^j.

The programs for A062970, the canonical program `A062970.P9271376026130432570` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062970 has offset 0).

The definition of A062970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062970.P9271376026130432570

`A001923(n)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062970

/-- `A001923(n)+1` -/
def P9271376026130432570.Spec : Prop :=
  ∀ n, P9271376026130432570.a n = A062970 n

theorem P9271376026130432570.correct : P9271376026130432570.Spec := by
  intro n
  simp only [A062970]

end A062970

/-! ## A062970.P11652316913314638394

`a(n-1)+A000312(n)` with `a(0)=1`
-/

namespace A062970.P11652316913314638394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000312 n

end

end A062970.P11652316913314638394

namespace A062970

/-- `a(n-1)+A000312(n)` -/
def P11652316913314638394.Spec : Prop :=
  ∀ n, P11652316913314638394.a n = A062970 n

end A062970

/-! ## A062970.P4596989073201413163

`∑[n^n]`
-/

namespace A062970.P4596989073201413163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062970.P4596989073201413163

namespace A062970

/-- `∑[n^n]` -/
def P4596989073201413163.Spec : Prop :=
  ∀ n, (P4596989073201413163.a n : ℤ) = A062970 n

end A062970

/-! ## A062970.P1584336281229332588

`a(n-1)+n^n` with `a(0)=1`
-/

namespace A062970.P1584336281229332588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n ^ n

end

end A062970.P1584336281229332588

namespace A062970

/-- `a(n-1)+n^n` -/
def P1584336281229332588.Spec : Prop :=
  ∀ n, (P1584336281229332588.a n : ℤ) = A062970 n

end A062970

/-! ## A062970.P11742529845984426242

`n^n-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062970.P11742529845984426242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℤ) - (-a (n - 1))

end

end A062970.P11742529845984426242

namespace A062970

/-- `n^n-floor(-a(n-1))` -/
def P11742529845984426242.Spec : Prop :=
  ∀ n, P11742529845984426242.a n = A062970 n

end A062970

/-! ## A062970.P16066196668516652603

`n^n-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A062970.P16066196668516652603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℤ) - (-a (n - 1))

end

end A062970.P16066196668516652603

namespace A062970

/-- `n^n-ceil(-a(n-1))` -/
def P16066196668516652603.Spec : Prop :=
  ∀ n, P16066196668516652603.a n = A062970 n

end A062970

/-! ## A062970.P10007987424339947460

`n^n-round(-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A062970.P10007987424339947460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℤ) - (-a (n - 1))

end

end A062970.P10007987424339947460

namespace A062970

/-- `n^n-round(-a(n-1))` -/
def P10007987424339947460.Spec : Prop :=
  ∀ n, P10007987424339947460.a n = A062970 n

end A062970

/-! ## A062970.P8909270732345522971

`2*a(n-1)-(a(n-1)-n^n)` with `a(0)=1`
-/

namespace A062970.P8909270732345522971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (a (n - 1) - (n ^ n : ℤ))

end

end A062970.P8909270732345522971

namespace A062970

/-- `2*a(n-1)-(a(n-1)-n^n)` -/
def P8909270732345522971.Spec : Prop :=
  ∀ n, P8909270732345522971.a n = A062970 n

end A062970

/-! ## A062970.P13837341583973402135

`or(∑[A000312(n)], char[3])`
-/

namespace A062970.P13837341583973402135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A062970.P13837341583973402135

namespace A062970

/-- `or(∑[A000312(n)], char[3])` -/
def P13837341583973402135.Spec : Prop :=
  ∀ n, P13837341583973402135.a n = A062970 n

end A062970

/-! ## A062970.P402974990512773063

`A094054(n²)+a(n-1)` with `a(0)=1`
-/

namespace A062970.P402974990512773063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094054 (n ^ 2) + a (n - 1)

end

end A062970.P402974990512773063

namespace A062970

/-- `A094054(n²)+a(n-1)` -/
def P402974990512773063.Spec : Prop :=
  ∀ n, P402974990512773063.a n = A062970 n

end A062970

/-!
# A062971: a(n) = (2*n)^n.

The programs for A062971, the canonical program `A062971.P16349831134169031509` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062971 has offset 0).

The definition of A062971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^n` (program `A062971.P16349831134169031509`, by `A062971.P16349831134169031509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062971.P16349831134169031509

`(2*n)^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062971

/-- `(2*n)^n` -/
def P16349831134169031509.Spec : Prop :=
  ∀ n, (P16349831134169031509.a n : ℤ) = A062971 n

theorem P16349831134169031509.correct : P16349831134169031509.Spec := by
  intro n
  simp only [A062971]

end A062971

/-!
# A062972: Numbers k such that the Chowla function of k is divisible by phi(k).

The programs for A062972, the canonical program `A062972.P5621875404486289771` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062972 has offset 1).

The definition of A062972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062972.P4537424789876119559

`comp[∪[A001253(3*n+4), A062973(n+1)]]`
-/

namespace A062972.P4537424789876119559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001253 (3 * n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A062972.P4537424789876119559

namespace A062972

/-- `comp[∪[A001253(3*n+4), A062973(n+1)]]` -/
def P4537424789876119559.Spec : Prop :=
  ∀ n, (P4537424789876119559.a n : ℤ) = A062972 (n + 1)

end A062972

/-! ## A062972.P5621875404486289771

`lt[A048050(n+1)%A000010(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062972

/-- `lt[A048050(n+1)%A000010(n+1), 1]+1` -/
def P5621875404486289771.Spec : Prop :=
  ∀ n, (P5621875404486289771.a n : ℤ) = A062972 (n + 1)

theorem P5621875404486289771.correct : P5621875404486289771.Spec := by
  intro n
  simp only [A062972, Nat.add_sub_cancel]

end A062972

/-! ## A062972.P9442613165071258907

`eq[1, A001918((A001065(n+1)-1)%A000010(n+1)+1)]+1`
-/

namespace A062972.P9442613165071258907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (Int.tmod (A001065 (n + 1) - 1) (A000010 (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062972.P9442613165071258907

namespace A062972

/-- `eq[1, A001918((A001065(n+1)-1)%A000010(n+1)+1)]+1` -/
def P9442613165071258907.Spec : Prop :=
  ∀ n, (P9442613165071258907.a n : ℤ) = A062972 (n + 1)

end A062972

/-! ## A062972.P14143138949891588296

`lt[A003415(n), A007953(A182841(n))]`
-/

namespace A062972.P14143138949891588296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A182841 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062972.P14143138949891588296

namespace A062972

/-- `lt[A003415(n), A007953(A182841(n))]` -/
def P14143138949891588296.Spec : Prop :=
  ∀ n, (P14143138949891588296.a n : ℤ) = A062972 (n + 1)

end A062972

/-! ## A062972.P6492534937683395413

`eq[0, A330725(A082024(n+1))]+1`
-/

namespace A062972.P6492534937683395413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 (A082024 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062972.P6492534937683395413

namespace A062972

/-- `eq[0, A330725(A082024(n+1))]+1` -/
def P6492534937683395413.Spec : Prop :=
  ∀ n, (P6492534937683395413.a n : ℤ) = A062972 (n + 1)

end A062972

/-! ## A062972.P1162070838935910588

`eq[A000007(n), A330725(A082024(n))]`
-/

namespace A062972.P1162070838935910588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 (A082024 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062972.P1162070838935910588

namespace A062972

/-- `eq[A000007(n), A330725(A082024(n))]` -/
def P1162070838935910588.Spec : Prop :=
  ∀ n, (P1162070838935910588.a n : ℤ) = A062972 (n + 1)

end A062972

/-! ## A062972.P17481850364211030999

`eq[A000038(n), A330725(A082024(n))]`
-/

namespace A062972.P17481850364211030999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 (A082024 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062972.P17481850364211030999

namespace A062972

/-- `eq[A000038(n), A330725(A082024(n))]` -/
def P17481850364211030999.Spec : Prop :=
  ∀ n, (P17481850364211030999.a n : ℤ) = A062972 (n + 1)

end A062972

/-! ## A062972.P4151866379158104882

`eq[1, A330725(A082024(n))+A054977(n)]`
-/

namespace A062972.P4151866379158104882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 (A082024 n).toNat + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062972.P4151866379158104882

namespace A062972

/-- `eq[1, A330725(A082024(n))+A054977(n)]` -/
def P4151866379158104882.Spec : Prop :=
  ∀ n, (P4151866379158104882.a n : ℤ) = A062972 (n + 1)

end A062972

/-! ## A062972.P16923115327317407026

`eq[A330725(A082024(n))+1, A057427(n)]`
-/

namespace A062972.P16923115327317407026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 (A082024 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062972.P16923115327317407026

namespace A062972

/-- `eq[A330725(A082024(n))+1, A057427(n)]` -/
def P16923115327317407026.Spec : Prop :=
  ∀ n, (P16923115327317407026.a n : ℤ) = A062972 (n + 1)

end A062972

/-! ## A062972.P12485160618397212206

`record[A266646(n+1)%A003968(A063655(n+1))]`
-/

namespace A062972.P12485160618397212206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266646 (n + 1)) (A003968 (A063655 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062972.P12485160618397212206

namespace A062972

/-- `record[A266646(n+1)%A003968(A063655(n+1))]` -/
def P12485160618397212206.Spec : Prop :=
  ∀ n, P12485160618397212206.a n = A062972 (n + 1)

end A062972

/-! ## A062972.P8965877435730867971

`lt[A066656(n), A120461(A001222(n+1))]`
-/

namespace A062972.P8965877435730867971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120461 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062972.P8965877435730867971

namespace A062972

/-- `lt[A066656(n), A120461(A001222(n+1))]` -/
def P8965877435730867971.Spec : Prop :=
  ∀ n, (P8965877435730867971.a n : ℤ) = A062972 (n + 1)

end A062972

/-! ## A062972.P4558297610373871843

`eq[A028242(A082024(n)), A057427(n)]`
-/

namespace A062972.P4558297610373871843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A082024 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062972.P4558297610373871843

namespace A062972

/-- `eq[A028242(A082024(n)), A057427(n)]` -/
def P4558297610373871843.Spec : Prop :=
  ∀ n, (P4558297610373871843.a n : ℤ) = A062972 (n + 1)

end A062972

/-!
# A062973: Chowla function of n is not divisible by phi(n).

The programs for A062973, the canonical program `A062973.P1507118840475367549` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062973 has offset 1).

The definition of A062973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062973.P1507118840475367549

`comp[A062972(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062973

/-- `comp[A062972(n+1)-1]+1` -/
def P1507118840475367549.Spec : Prop :=
  ∀ n, (P1507118840475367549.a n : ℤ) = A062973 (n + 1)

theorem P1507118840475367549.correct : P1507118840475367549.Spec := by
  intro n
  simp only [A062973, Nat.add_sub_cancel]

end A062973

/-! ## A062973.P6966224126964757502

`lt[A306220(A003415(3*n+4)), A003415(n)]`
-/

namespace A062973.P6966224126964757502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (A003415 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P6966224126964757502

namespace A062973

/-- `lt[A306220(A003415(3*n+4)), A003415(n)]` -/
def P6966224126964757502.Spec : Prop :=
  ∀ n, (P6966224126964757502.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P3949437288912046829

`lt[A001227(A005835(3*n+5)), A003415(n)]`
-/

namespace A062973.P3949437288912046829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A005835 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P3949437288912046829

namespace A062973

/-- `lt[A001227(A005835(3*n+5)), A003415(n)]` -/
def P3949437288912046829.Spec : Prop :=
  ∀ n, (P3949437288912046829.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P6980140380815950514

`lt[A051903(A328613(3*(n+1))), A167865(n)]`
-/

namespace A062973.P6980140380815950514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A328613 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P6980140380815950514

namespace A062973

/-- `lt[A051903(A328613(3*(n+1))), A167865(n)]` -/
def P6980140380815950514.Spec : Prop :=
  ∀ n, (P6980140380815950514.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P577728400045799995

`lt[A328578(A003353(2*n+1)), A003415(n)]`
-/

namespace A062973.P577728400045799995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (A003353 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P577728400045799995

namespace A062973

/-- `lt[A328578(A003353(2*n+1)), A003415(n)]` -/
def P577728400045799995.Spec : Prop :=
  ∀ n, (P577728400045799995.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P15176056613209814322

`lt[A280136(A294877(n+1)), A003415(n)]`
-/

namespace A062973.P15176056613209814322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280136 (A294877 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P15176056613209814322

namespace A062973

/-- `lt[A280136(A294877(n+1)), A003415(n)]` -/
def P15176056613209814322.Spec : Prop :=
  ∀ n, (P15176056613209814322.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P130164008892992275

`lt[A137575(A112798(n+2)), A003415(n)]`
-/

namespace A062973.P130164008892992275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137575 (A112798 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P130164008892992275

namespace A062973

/-- `lt[A137575(A112798(n+2)), A003415(n)]` -/
def P130164008892992275.Spec : Prop :=
  ∀ n, (P130164008892992275.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P5455924918463200050

`lt[A120461(A001222(n+1)), A066656(n)]`
-/

namespace A062973.P5455924918463200050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120461 (A001222 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P5455924918463200050

namespace A062973

/-- `lt[A120461(A001222(n+1)), A066656(n)]` -/
def P5455924918463200050.Spec : Prop :=
  ∀ n, (P5455924918463200050.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P15167483816932590329

`lt[A000005(A191131(n+3)), A003415(n)]`
-/

namespace A062973.P15167483816932590329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A191131 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P15167483816932590329

namespace A062973

/-- `lt[A000005(A191131(n+3)), A003415(n)]` -/
def P15167483816932590329.Spec : Prop :=
  ∀ n, (P15167483816932590329.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P7340934164875006191

`lt[A009205(A003972(n+1)), A003415(n)]`
-/

namespace A062973.P7340934164875006191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009205 (A003972 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P7340934164875006191

namespace A062973

/-- `lt[A009205(A003972(n+1)), A003415(n)]` -/
def P7340934164875006191.Spec : Prop :=
  ∀ n, (P7340934164875006191.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P1249848769435931488

`lt[A327502(A001399(n)), A018783(n)]`
-/

namespace A062973.P1249848769435931488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327502 (A001399 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P1249848769435931488

namespace A062973

/-- `lt[A327502(A001399(n)), A018783(n)]` -/
def P1249848769435931488.Spec : Prop :=
  ∀ n, (P1249848769435931488.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P17717124444587253905

`lt[A112798(n+2), A331785(A331991(n+1))]`
-/

namespace A062973.P17717124444587253905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331785 (A331991 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062973.P17717124444587253905

namespace A062973

/-- `lt[A112798(n+2), A331785(A331991(n+1))]` -/
def P17717124444587253905.Spec : Prop :=
  ∀ n, (P17717124444587253905.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P12023013930209919050

`∪[A020739(n), A266000(n+1)]`
-/

namespace A062973.P12023013930209919050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062973.P12023013930209919050

namespace A062973

/-- `∪[A020739(n), A266000(n+1)]` -/
def P12023013930209919050.Spec : Prop :=
  ∀ n, (P12023013930209919050.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P14784215793821673470

`∪[A060652(n+1), A266000(n+1)]`
-/

namespace A062973.P14784215793821673470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062973.P14784215793821673470

namespace A062973

/-- `∪[A060652(n+1), A266000(n+1)]` -/
def P14784215793821673470.Spec : Prop :=
  ∀ n, (P14784215793821673470.a n : ℤ) = A062973 (n + 1)

end A062973

/-! ## A062973.P15936009553812341193

`A111653(A024390(n+2))`
-/

namespace A062973.P15936009553812341193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111653 (A024390 (n + 2)).toNat

end

end A062973.P15936009553812341193

namespace A062973

/-- `A111653(A024390(n+2))` -/
def P15936009553812341193.Spec : Prop :=
  ∀ n, P15936009553812341193.a n = A062973 (n + 1)

end A062973

/-!
# A062974: Numbers k such that omega(k+1) < 2*omega(k), where omega(k) is the number of distinct prime divisors of k.

The programs for A062974, the canonical program `A062974.P13804119697855287483` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062974 has offset 1).

The definition of A062974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062974.P7989762659122723909

`lt[A074816(n+1), A074816(A028310(n))²]`
-/

namespace A062974.P7989762659122723909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062974.P7989762659122723909

namespace A062974

/-- `lt[A074816(n+1), A074816(A028310(n))²]` -/
def P7989762659122723909.Spec : Prop :=
  ∀ n, (P7989762659122723909.a n : ℤ) = A062974 (n + 1)

end A062974

/-! ## A062974.P13804119697855287483

`lt[A001221(n+1), 2*A001221(A028310(n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062974

/-- `lt[A001221(n+1), 2*A001221(A028310(n))]` -/
def P13804119697855287483.Spec : Prop :=
  ∀ n, (P13804119697855287483.a n : ℤ) = A062974 (n + 1)

theorem P13804119697855287483.correct : P13804119697855287483.Spec := by
  intro n
  simp only [A062974, Nat.add_sub_cancel]

end A062974

/-! ## A062974.P8282705264666694593

`lt[A034444(n+1), A074816(A028310(n))]`
-/

namespace A062974.P8282705264666694593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062974.P8282705264666694593

namespace A062974

/-- `lt[A034444(n+1), A074816(A028310(n))]` -/
def P8282705264666694593.Spec : Prop :=
  ∀ n, (P8282705264666694593.a n : ℤ) = A062974 (n + 1)

end A062974

/-! ## A062974.P14626532524812672941

`lt[A001221(n+1), 2*A001221(A257088(n))]`
-/

namespace A062974.P14626532524812672941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062974.P14626532524812672941

namespace A062974

/-- `lt[A001221(n+1), 2*A001221(A257088(n))]` -/
def P14626532524812672941.Spec : Prop :=
  ∀ n, (P14626532524812672941.a n : ℤ) = A062974 (n + 1)

end A062974

/-! ## A062974.P6843470400146137770

`lt[A034444(n+1), A074816(A257088(n))]`
-/

namespace A062974.P6843470400146137770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062974.P6843470400146137770

namespace A062974

/-- `lt[A034444(n+1), A074816(A257088(n))]` -/
def P6843470400146137770.Spec : Prop :=
  ∀ n, (P6843470400146137770.a n : ℤ) = A062974 (n + 1)

end A062974

/-! ## A062974.P13383908961308915512

`lt[A074816(n+1), A074816(A257088(n))²]`
-/

namespace A062974.P13383908961308915512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (A257088 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062974.P13383908961308915512

namespace A062974

/-- `lt[A074816(n+1), A074816(A257088(n))²]` -/
def P13383908961308915512.Spec : Prop :=
  ∀ n, (P13383908961308915512.a n : ℤ) = A062974 (n + 1)

end A062974

/-! ## A062974.P6780246029045217057

`lt[A001221(n+1), A157230(A008574(n))]`
-/

namespace A062974.P6780246029045217057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062974.P6780246029045217057

namespace A062974

/-- `lt[A001221(n+1), A157230(A008574(n))]` -/
def P6780246029045217057.Spec : Prop :=
  ∀ n, (P6780246029045217057.a n : ℤ) = A062974 (n + 1)

end A062974

/-! ## A062974.P12354226637283527707

`lt[A087802(n+1), A034444(A028310(n))]`
-/

namespace A062974.P12354226637283527707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062974.P12354226637283527707

namespace A062974

/-- `lt[A087802(n+1), A034444(A028310(n))]` -/
def P12354226637283527707.Spec : Prop :=
  ∀ n, (P12354226637283527707.a n : ℤ) = A062974 (n + 1)

end A062974

/-! ## A062974.P3389037751882490328

`lt[A087802(n+1), A034444(A257088(n))]`
-/

namespace A062974.P3389037751882490328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062974.P3389037751882490328

namespace A062974

/-- `lt[A087802(n+1), A034444(A257088(n))]` -/
def P3389037751882490328.Spec : Prop :=
  ∀ n, (P3389037751882490328.a n : ℤ) = A062974 (n + 1)

end A062974

/-! ## A062974.P11215783385114169487

`lt[A001221(n+1), 2*A001221(A253909(n))]`
-/

namespace A062974.P11215783385114169487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062974.P11215783385114169487

namespace A062974

/-- `lt[A001221(n+1), 2*A001221(A253909(n))]` -/
def P11215783385114169487.Spec : Prop :=
  ∀ n, (P11215783385114169487.a n : ℤ) = A062974 (n + 1)

end A062974

/-! ## A062974.P12406009568010665451

`record[A007318(A000124(n))+1-A069513(n+1)]`
-/

namespace A062974.P12406009568010665451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat + (1 - A069513 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062974.P12406009568010665451

namespace A062974

/-- `record[A007318(A000124(n))+1-A069513(n+1)]` -/
def P12406009568010665451.Spec : Prop :=
  ∀ n, P12406009568010665451.a n = A062974 (n + 1)

end A062974

/-!
# A062975: Half-totient function of n is not divisible by the number of divisors of n.

The programs for A062975, there is no canonical definition to state claims against.
-/

/-! ## A062975.P6304284989408976597

`lt[1, A245459(A045920(2*(n+1)))]`
-/

namespace A062975.P6304284989408976597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245459 (A045920 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062975.P6304284989408976597

/-!
# A062977: Difference between largest and smallest positive exponent in prime factorization of n; a(1) = 0 by convention.

The programs for A062977, the canonical program `A062977.P9824039652820841542` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062977 has offset 1).

The definition of A062977 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A051904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062977.P9824039652820841542

`A051903(n+1)-A051904(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A062977

/-- `A051903(n+1)-A051904(n+1)` -/
def P9824039652820841542.Spec : Prop :=
  ∀ n, P9824039652820841542.a n = A062977 (n + 1)

theorem P9824039652820841542.correct : P9824039652820841542.Spec := by
  intro n
  simp only [A062977, Nat.add_sub_cancel]

end A062977

/-! ## A062977.P1460271938020892793

`A051903(A062760(n+1))`
-/

namespace A062977.P1460271938020892793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A062760 (n + 1)).toNat

end

end A062977.P1460271938020892793

namespace A062977

/-- `A051903(A062760(n+1))` -/
def P1460271938020892793.Spec : Prop :=
  ∀ n, P1460271938020892793.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P17376587340965399791

`A066301(A304776(n+1))`
-/

namespace A062977.P17376587340965399791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A304776 (n + 1)).toNat

end

end A062977.P17376587340965399791

namespace A062977

/-- `A066301(A304776(n+1))` -/
def P17376587340965399791.Spec : Prop :=
  ∀ n, P17376587340965399791.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P7095078111057343373

`A243055(A181819(n+1))`
-/

namespace A062977.P7095078111057343373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A181819 (n + 1)).toNat

end

end A062977.P7095078111057343373

namespace A062977

/-- `A243055(A181819(n+1))` -/
def P7095078111057343373.Spec : Prop :=
  ∀ n, P7095078111057343373.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P14986648502120634899

`A051903((n+1)/A062759(n+1))`
-/

namespace A062977.P14986648502120634899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062759 (n + 1) : ℚ))).toNat

end

end A062977.P14986648502120634899

namespace A062977

/-- `A051903((n+1)/A062759(n+1))` -/
def P14986648502120634899.Spec : Prop :=
  ∀ n, P14986648502120634899.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P86290386091268131

`A051903(n+1)-val(A320389(n+1), 2)`
-/

namespace A062977.P86290386091268131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - (SequenceMachineLib.valuation (A320389 (n + 1)).toNat 2 : ℤ)

end

end A062977.P86290386091268131

namespace A062977

/-- `A051903(n+1)-val(A320389(n+1), 2)` -/
def P86290386091268131.Spec : Prop :=
  ∀ n, P86290386091268131.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P8261055784670228671

`A188385(n+1)/(n+1)-A051904(n+1)`
-/

namespace A062977.P8261055784670228671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188385 (n + 1) : ℚ) / (n + 1 : ℚ) - (A051904 (n + 1) : ℚ)

end

end A062977.P8261055784670228671

namespace A062977

/-- `A188385(n+1)/(n+1)-A051904(n+1)` -/
def P8261055784670228671.Spec : Prop :=
  ∀ n, P8261055784670228671.a n = (A062977 (n + 1) : ℚ)

end A062977

/-! ## A062977.P13017163662783752468

`A007814(A046523(n+1))-A051904(n+1)`
-/

namespace A062977.P13017163662783752468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (n + 1)).toNat - A051904 (n + 1)

end

end A062977.P13017163662783752468

namespace A062977

/-- `A007814(A046523(n+1))-A051904(n+1)` -/
def P13017163662783752468.Spec : Prop :=
  ∀ n, P13017163662783752468.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P14566351927542398289

`A051903(n+1)-A051903(A062759(n+1))`
-/

namespace A062977.P14566351927542398289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A051903 (A062759 (n + 1)).toNat

end

end A062977.P14566351927542398289

namespace A062977

/-- `A051903(n+1)-A051903(A062759(n+1))` -/
def P14566351927542398289.Spec : Prop :=
  ∀ n, P14566351927542398289.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P11419588944803387412

`A067132(n+1)-A000005(A304181(n+1))`
-/

namespace A062977.P11419588944803387412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (n + 1) - A000005 (A304181 (n + 1)).toNat

end

end A062977.P11419588944803387412

namespace A062977

/-- `A067132(n+1)-A000005(A304181(n+1))` -/
def P11419588944803387412.Spec : Prop :=
  ∀ n, P11419588944803387412.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P16264151695799159488

`A001222(A238745(n+1))-A071178(A238745(n+1))`
-/

namespace A062977.P16264151695799159488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238745 (n + 1)).toNat - A071178 (A238745 (n + 1)).toNat

end

end A062977.P16264151695799159488

namespace A062977

/-- `A001222(A238745(n+1))-A071178(A238745(n+1))` -/
def P16264151695799159488.Spec : Prop :=
  ∀ n, P16264151695799159488.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P2771681594795770110

`A051903(A066636(n+1))`
-/

namespace A062977.P2771681594795770110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A066636 (n + 1)).toNat

end

end A062977.P2771681594795770110

namespace A062977

/-- `A051903(A066636(n+1))` -/
def P2771681594795770110.Spec : Prop :=
  ∀ n, P2771681594795770110.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P12078113145967451272

`A051903(A066638(n+1)/(n+1))`
-/

namespace A062977.P12078113145967451272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A066638 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A062977.P12078113145967451272

namespace A062977

/-- `A051903(A066638(n+1)/(n+1))` -/
def P12078113145967451272.Spec : Prop :=
  ∀ n, P12078113145967451272.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P112691674604884152

`A331594(A122111(A331598(A241909(A046523(n+1)))))`
-/

namespace A062977.P112691674604884152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331594 (A122111 (A331598 (A241909 (A046523 (n + 1)).toNat).toNat).toNat).toNat

end

end A062977.P112691674604884152

namespace A062977

/-- `A331594(A122111(A331598(A241909(A046523(n+1)))))` -/
def P112691674604884152.Spec : Prop :=
  ∀ n, P112691674604884152.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P3351990750632999617

`A051903(A373703(n+1))`
-/

namespace A062977.P3351990750632999617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A373703 (n + 1)).toNat

end

end A062977.P3351990750632999617

namespace A062977

/-- `A051903(A373703(n+1))` -/
def P3351990750632999617.Spec : Prop :=
  ∀ n, P3351990750632999617.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P16271026873615857101

`A051904(A066638(n+1))-A051904(n+1)`
-/

namespace A062977.P16271026873615857101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A066638 (n + 1)).toNat - A051904 (n + 1)

end

end A062977.P16271026873615857101

namespace A062977

/-- `A051904(A066638(n+1))-A051904(n+1)` -/
def P16271026873615857101.Spec : Prop :=
  ∀ n, P16271026873615857101.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P2435885060373718800

`A051904(A003557(A304768(n+1)))`
-/

namespace A062977.P2435885060373718800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A003557 (A304768 (n + 1)).toNat).toNat

end

end A062977.P2435885060373718800

namespace A062977

/-- `A051904(A003557(A304768(n+1)))` -/
def P2435885060373718800.Spec : Prop :=
  ∀ n, P2435885060373718800.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P3683499563658744539

`A051904(A062760(A293448(n+1)))`
-/

namespace A062977.P3683499563658744539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A062760 (A293448 (n + 1)).toNat).toNat

end

end A062977.P3683499563658744539

namespace A062977

/-- `A051904(A062760(A293448(n+1)))` -/
def P3683499563658744539.Spec : Prop :=
  ∀ n, P3683499563658744539.a n = A062977 (n + 1)

end A062977

/-! ## A062977.P1005268005483978497

`A051904(A062760(A295417(n+1)))`
-/

namespace A062977.P1005268005483978497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A062760 (A295417 (n + 1)).toNat).toNat

end

end A062977.P1005268005483978497

namespace A062977

/-- `A051904(A062760(A295417(n+1)))` -/
def P1005268005483978497.Spec : Prop :=
  ∀ n, P1005268005483978497.a n = A062977 (n + 1)

end A062977

/-!
# A062980: a(0) = 1, a(1) = 5; for n > 1, a(n) = 6*n*a(n-1) + Sum_{k=1..n-2} a(k)*a(n-k-1).

The programs for A062980, there is no canonical definition to state claims against.
-/

/-! ## A062980.P10962287304098998438

`record[A380622(∑[n+3])]`
-/

namespace A062980.P10962287304098998438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380622 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062980.P10962287304098998438

/-! ## A062980.P8363725967920958304

`A380622((2*n+1)*(n+3))`
-/

namespace A062980.P8363725967920958304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380622 ((2 * n + 1) * (n + 3))

end

end A062980.P8363725967920958304

/-! ## A062980.P12577065981667997280

`record[A010054(n+3)*A380622(n)]`
-/

namespace A062980.P12577065981667997280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A380622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062980.P12577065981667997280

/-! ## A062980.P6424745725759057340

`A305873(∑[n+1])`
-/

namespace A062980.P6424745725759057340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305873 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062980.P6424745725759057340

/-!
# A062981: a(n) = n^phi(n).

The programs for A062981, the canonical program `A062981.P14155426062693408732` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062981 has offset 1).

The definition of A062981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062981.P12274865894339513463

`A175504(n+1)*(n+1)`
-/

namespace A062981.P12274865894339513463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175504 (n + 1) * (n + 1 : ℤ)

end

end A062981.P12274865894339513463

namespace A062981

/-- `A175504(n+1)*(n+1)` -/
def P12274865894339513463.Spec : Prop :=
  ∀ n, P12274865894339513463.a n = A062981 (n + 1)

end A062981

/-! ## A062981.P14155426062693408732

`(n+1)^A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062981

/-- `(n+1)^A000010(n+1)` -/
def P14155426062693408732.Spec : Prop :=
  ∀ n, P14155426062693408732.a n = (A062981 (n + 1) : ℚ)

end A062981

/-! ## A062981.P8993995032481853578

`A066916(n+1)+1`
-/

namespace A062981.P8993995032481853578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066916 (n + 1) + 1

end

end A062981.P8993995032481853578

namespace A062981

/-- `A066916(n+1)+1` -/
def P8993995032481853578.Spec : Prop :=
  ∀ n, P8993995032481853578.a n = A062981 (n + 1)

end A062981

/-! ## A062981.P7459507238639911758

`A066915(n+1)-1`
-/

namespace A062981.P7459507238639911758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066915 (n + 1) - 1

end

end A062981.P7459507238639911758

namespace A062981

/-- `A066915(n+1)-1` -/
def P7459507238639911758.Spec : Prop :=
  ∀ n, P7459507238639911758.a n = A062981 (n + 1)

end A062981

/-! ## A062981.P14199687606221387238

`(n+1)^A106476(∑[n])`
-/

namespace A062981.P14199687606221387238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A106476 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A062981.P14199687606221387238

namespace A062981

/-- `(n+1)^A106476(∑[n])` -/
def P14199687606221387238.Spec : Prop :=
  ∀ n, P14199687606221387238.a n = (A062981 (n + 1) : ℚ)

end A062981

/-! ## A062981.P11873782946239733624

`(n+1)^Δ[A002088(n)]`
-/

namespace A062981.P11873782946239733624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A062981.P11873782946239733624

namespace A062981

/-- `(n+1)^Δ[A002088(n)]` -/
def P11873782946239733624.Spec : Prop :=
  ∀ n, P11873782946239733624.a n = (A062981 (n + 1) : ℚ)

end A062981

/-! ## A062981.P689390319977786267

`(n+1)^Δ[A005728(n)]`
-/

namespace A062981.P689390319977786267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A062981.P689390319977786267

namespace A062981

/-- `(n+1)^Δ[A005728(n)]` -/
def P689390319977786267.Spec : Prop :=
  ∀ n, P689390319977786267.a n = (A062981 (n + 1) : ℚ)

end A062981

/-! ## A062981.P12324400373990956387

`(n+1)^Δ[A049643(n)]`
-/

namespace A062981.P12324400373990956387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A062981.P12324400373990956387

namespace A062981

/-- `(n+1)^Δ[A049643(n)]` -/
def P12324400373990956387.Spec : Prop :=
  ∀ n, P12324400373990956387.a n = (A062981 (n + 1) : ℚ)

end A062981

/-! ## A062981.P16308125334765875326

`(n+1)^Δ[A225531(n)]`
-/

namespace A062981.P16308125334765875326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A062981.P16308125334765875326

namespace A062981

/-- `(n+1)^Δ[A225531(n)]` -/
def P16308125334765875326.Spec : Prop :=
  ∀ n, P16308125334765875326.a n = (A062981 (n + 1) : ℚ)

end A062981

/-! ## A062981.P14399717469504233401

`(n+1)*A175504(n+1)`
-/

namespace A062981.P14399717469504233401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175504 (n + 1)

end

end A062981.P14399717469504233401

namespace A062981

/-- `(n+1)*A175504(n+1)` -/
def P14399717469504233401.Spec : Prop :=
  ∀ n, P14399717469504233401.a n = A062981 (n + 1)

end A062981

/-!
# A062982: Numbers k such that Mertens's function of k (A002321) is divisible by phi(k).

The programs for A062982, there is no canonical definition to state claims against.
-/

/-! ## A062982.P4352414173114244919

`A100306(n+1)+A057428(n)`
-/

namespace A062982.P4352414173114244919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1) + A057428 n

end

end A062982.P4352414173114244919

/-! ## A062982.P10562547818451462609

`A100306(n+1)-A057427(n)`
-/

namespace A062982.P10562547818451462609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1) - A057427 n

end

end A062982.P10562547818451462609

/-! ## A062982.P6478621784468714832

`A100306(n+1)+A000007(n)-1`
-/

namespace A062982.P6478621784468714832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1) + (A000007 n - 1)

end

end A062982.P6478621784468714832

/-! ## A062982.P14301136409897759008

`A100306(n+1)-(n-A014681(n))²`
-/

namespace A062982.P14301136409897759008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1) - ((n : ℤ) - A014681 n) ^ 2

end

end A062982.P14301136409897759008

/-! ## A062982.P11876119239936129082

`A100306(n+1)-and(1, A000040(n+1))`
-/

namespace A062982.P11876119239936129082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1) - Int.land 1 (A000040 (n + 1))

end

end A062982.P11876119239936129082

/-! ## A062982.P10752487381944661732

`A100306(n+1)-A002088(n²%(n+1))`
-/

namespace A062982.P10752487381944661732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1) - A002088 (n ^ 2 % (n + 1))

end

end A062982.P10752487381944661732

/-! ## A062982.P11158551758715770261

`A028442(n)^a(A008683(A013929(n)))` with `a(0)=1`
-/

namespace A062982.P11158551758715770261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A028442 n : ℝ) ^ (a (A008683 (A013929 n).toNat).toNat)

end

end A062982.P11158551758715770261

/-! ## A062982.P9242538867463221468

`A100306(n+1)-char[A260742(n+1)]`
-/

namespace A062982.P9242538867463221468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062982.P9242538867463221468

/-! ## A062982.P746701621637571582

`eq[0, A008683(n)+a(n-1)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A062982.P746701621637571582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  A008683 n + f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062982.P746701621637571582

/-! ## A062982.P6191924572958737518

`A055456(A100306(n+1))`
-/

namespace A062982.P6191924572958737518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A100306 (n + 1)).toNat

end

end A062982.P6191924572958737518

/-! ## A062982.P2165427237388651441

`eq[A143443(n+1)², A143443(n+1)]+1`
-/

namespace A062982.P2165427237388651441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143443 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143443 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062982.P2165427237388651441

/-!
# A062983: Numbers k such that Mertens's function of k (A002321) is not divisible by phi(k).

The programs for A062983, the canonical program `A062983.P5085903841917211748` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062983 has offset 1).

The definition of A062983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8849 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062983.P5959405275320518108

`comp[A062982(n+1)-1]+1`
-/

namespace A062983.P5959405275320518108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A062983.P5959405275320518108

namespace A062983

/-- `comp[A062982(n+1)-1]+1` -/
def P5959405275320518108.Spec : Prop :=
  ∀ n, (P5959405275320518108.a n : ℤ) = A062983 (n + 1)

end A062983

/-! ## A062983.P9030033032951041664

`comp[A100306(n+1)-3]+2`
-/

namespace A062983.P9030033032951041664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A062983.P9030033032951041664

namespace A062983

/-- `comp[A100306(n+1)-3]+2` -/
def P9030033032951041664.Spec : Prop :=
  ∀ n, (P9030033032951041664.a n : ℤ) = A062983 (n + 1)

end A062983

/-! ## A062983.P5085903841917211748

`comp[eq[0, A002321(round(acot(n)+n))]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062983

/-- `comp[eq[0, A002321(round(acot(n)+n))]]` -/
def P5085903841917211748.Spec : Prop :=
  ∀ n, (P5085903841917211748.a n : ℤ) = A062983 (n + 1)

theorem P5085903841917211748.correct : P5085903841917211748.Spec := by
  intro n
  simp only [A062983, Nat.add_sub_cancel]

end A062983

/-! ## A062983.P5492206013931964743

`A055642(A358270(n+10))+n+1`
-/

namespace A062983.P5492206013931964743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A358270 (n + 10)).toNat + (n + 1 : ℤ)

end

end A062983.P5492206013931964743

namespace A062983

/-- `A055642(A358270(n+10))+n+1` -/
def P5492206013931964743.Spec : Prop :=
  ∀ n, P5492206013931964743.a n = A062983 (n + 1)

end A062983

/-! ## A062983.P16618815533281765796

`A052938(A323048(2*n+1))+2`
-/

namespace A062983.P16618815533281765796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A323048 (2 * n + 1)).toNat + 2

end

end A062983.P16618815533281765796

namespace A062983

/-- `A052938(A323048(2*n+1))+2` -/
def P16618815533281765796.Spec : Prop :=
  ∀ n, P16618815533281765796.a n = A062983 (n + 1)

end A062983

/-!
# A062984: a(n) = M(C(n)), where M(n) is Mertens's function (A002321) and C(n) is Chowla's function (A048050).

The programs for A062984, the canonical program `A062984.P9111632731463951526` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062984 has offset 1).

The definition of A062984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062984.P9111632731463951526

`A002321(abs(1-A048050(n+1))+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062984

/-- `A002321(abs(1-A048050(n+1))+1)` -/
def P9111632731463951526.Spec : Prop :=
  ∀ n, P9111632731463951526.a n = A062984 (n + 1)

theorem P9111632731463951526.correct : P9111632731463951526.Spec := by
  intro n
  simp only [A062984, Nat.add_sub_cancel]

end A062984

/-! ## A062984.P17670047270035014995

`A002321(A048050(n+1)+1)-A008683(A048050(n+1)+1)`
-/

namespace A062984.P17670047270035014995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A048050 (n + 1) + 1).toNat - A008683 (A048050 (n + 1) + 1).toNat

end

end A062984.P17670047270035014995

namespace A062984

/-- `A002321(A048050(n+1)+1)-A008683(A048050(n+1)+1)` -/
def P17670047270035014995.Spec : Prop :=
  ∀ n, P17670047270035014995.a n = A062984 (n + 1)

end A062984

/-! ## A062984.P16232627012143290588

`A002321(A233583(A173455(n+1)))`
-/

namespace A062984.P16232627012143290588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A233583 (A173455 (n + 1)).toNat).toNat

end

end A062984.P16232627012143290588

namespace A062984

/-- `A002321(A233583(A173455(n+1)))` -/
def P16232627012143290588.Spec : Prop :=
  ∀ n, P16232627012143290588.a n = A062984 (n + 1)

end A062984

/-! ## A062984.P11254896768757172505

`A100198(A048050(n+1))+1`
-/

namespace A062984.P11254896768757172505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 (A048050 (n + 1)).toNat + 1

end

end A062984.P11254896768757172505

namespace A062984

/-- `A100198(A048050(n+1))+1` -/
def P11254896768757172505.Spec : Prop :=
  ∀ n, P11254896768757172505.a n = A062984 (n + 1)

end A062984

/-! ## A062984.P12434536338501840673

`A100198(C(2, C(2, n²))+A000203(n+1)-(n+3))+1`
-/

namespace A062984.P12434536338501840673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 ((Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ) + (A000203 (n + 1) - (n + 3 : ℤ))).toNat + 1

end

end A062984.P12434536338501840673

namespace A062984

/-- `A100198(C(2, C(2, n²))+A000203(n+1)-(n+3))+1` -/
def P12434536338501840673.Spec : Prop :=
  ∀ n, P12434536338501840673.a n = A062984 (n + 1)

end A062984

/-! ## A062984.P4957023899842602619

`A100198(A000041(C(2, n+1))+A000203(n+1)-(n+3))+1`
-/

namespace A062984.P4957023899842602619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 (A000041 (Nat.choose 2 (n + 1)) + (A000203 (n + 1) - (n + 3 : ℤ))).toNat + 1

end

end A062984.P4957023899842602619

namespace A062984

/-- `A100198(A000041(C(2, n+1))+A000203(n+1)-(n+3))+1` -/
def P4957023899842602619.Spec : Prop :=
  ∀ n, P4957023899842602619.a n = A062984 (n + 1)

end A062984

/-! ## A062984.P1212317063662320559

`A100198(A000203(n+1)+C(A000010(n+1), n+1)-(n+2))+1`
-/

namespace A062984.P1212317063662320559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 (A000203 (n + 1) + ((Nat.choose (A000010 (n + 1)).toNat (n + 1) : ℤ) - (n + 2 : ℤ))).toNat + 1

end

end A062984.P1212317063662320559

namespace A062984

/-- `A100198(A000203(n+1)+C(A000010(n+1), n+1)-(n+2))+1` -/
def P1212317063662320559.Spec : Prop :=
  ∀ n, P1212317063662320559.a n = A062984 (n + 1)

end A062984

/-! ## A062984.P15572163652719562284

`A100198(C(A000005(n+2), n+2)+A000203(n+1)-(n+2))+1`
-/

namespace A062984.P15572163652719562284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 ((Nat.choose (A000005 (n + 2)).toNat (n + 2) : ℤ) + (A000203 (n + 1) - (n + 2 : ℤ))).toNat + 1

end

end A062984.P15572163652719562284

namespace A062984

/-- `A100198(C(A000005(n+2), n+2)+A000203(n+1)-(n+2))+1` -/
def P15572163652719562284.Spec : Prop :=
  ∀ n, P15572163652719562284.a n = A062984 (n + 1)

end A062984

/-! ## A062984.P5967528028855442493

`A100198(A000203(n+1)+C(n+3, A000040(n+2))-(n+2))+1`
-/

namespace A062984.P5967528028855442493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 (A000203 (n + 1) + (Nat.choose (n + 3) (A000040 (n + 2)).toNat : ℤ) - (n + 2 : ℤ)).toNat + 1

end

end A062984.P5967528028855442493

namespace A062984

/-- `A100198(A000203(n+1)+C(n+3, A000040(n+2))-(n+2))+1` -/
def P5967528028855442493.Spec : Prop :=
  ∀ n, P5967528028855442493.a n = A062984 (n + 1)

end A062984

/-!
# A062988: a(n) = binomial(n+6,5) - 1.

The programs for A062988, the canonical program `A062988.P10319984421922645529` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062988 has offset 0).

The definition of A062988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 5)-1` (program `A062988.P10319984421922645529`, by `A062988.P10319984421922645529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062988.P10319984421922645529

`C(n+6, 5)-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062988

/-- `C(n+6, 5)-1` -/
def P10319984421922645529.Spec : Prop :=
  ∀ n, P10319984421922645529.a n = A062988 n

theorem P10319984421922645529.correct : P10319984421922645529.Spec := by
  intro n
  simp only [A062988]

end A062988

/-! ## A062988.P11821851088457217865

`∑[C(n+5, 4)]`
-/

namespace A062988.P11821851088457217865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062988.P11821851088457217865

namespace A062988

/-- `∑[C(n+5, 4)]` -/
def P11821851088457217865.Spec : Prop :=
  ∀ n, (P11821851088457217865.a n : ℤ) = A062988 n

end A062988

/-! ## A062988.P17227304956583793032

`∑[∏[4/(n+1)+1]]`
-/

namespace A062988.P17227304956583793032
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062988.P17227304956583793032

namespace A062988

/-- `∑[∏[4/(n+1)+1]]` -/
def P17227304956583793032.Spec : Prop :=
  ∀ n, P17227304956583793032.a n = (A062988 n : ℚ)

end A062988

/-! ## A062988.P4449596206969823898

`a(n-1)+5*(a(n-1)+1)/(n+1)` with `a(0)=5`
-/

namespace A062988.P4449596206969823898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 5 * ((a (n - 1) + 1) / (n + 1 : ℚ))

end

end A062988.P4449596206969823898

namespace A062988

/-- `a(n-1)+5*(a(n-1)+1)/(n+1)` -/
def P4449596206969823898.Spec : Prop :=
  ∀ n, P4449596206969823898.a n = (A062988 n : ℚ)

end A062988

/-! ## A062988.P1788794136422795094

`A166808(n+1)+1`
-/

namespace A062988.P1788794136422795094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166808 (n + 1) + 1

end

end A062988.P1788794136422795094

namespace A062988

/-- `A166808(n+1)+1` -/
def P1788794136422795094.Spec : Prop :=
  ∀ n, P1788794136422795094.a n = A062988 n

theorem P1788794136422795094.correct : P1788794136422795094.Spec := by
  intro n
  simp only [A062988, Nat.add_sub_cancel, A062988.P1788794136422795094.a, A062988.P10319984421922645529.a, A166808, A166808.P9614524992927031431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062988

/-! ## A062988.P1189165803004294399

`A027659(n)+1+n`
-/

namespace A062988.P1189165803004294399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027659 n + 1 + (n : ℤ)

end

end A062988.P1189165803004294399

namespace A062988

/-- `A027659(n)+1+n` -/
def P1189165803004294399.Spec : Prop :=
  ∀ n, P1189165803004294399.a n = A062988 n

theorem P1189165803004294399.correct : P1189165803004294399.Spec := by
  intro n
  simp only [A062988, Nat.add_sub_cancel, A062988.P1189165803004294399.a, A062988.P10319984421922645529.a, A027659, A027659.P8446224191872039570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062988

/-! ## A062988.P3581103205896849600

`A051745(n+1)+A005718(n)`
-/

namespace A062988.P3581103205896849600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 1) + A005718 n

end

end A062988.P3581103205896849600

namespace A062988

/-- `A051745(n+1)+A005718(n)` -/
def P3581103205896849600.Spec : Prop :=
  ∀ n, P3581103205896849600.a n = A062988 n

end A062988

/-! ## A062988.P15064948680443274240

`A062748(n)+A005583(n+1)`
-/

namespace A062988.P15064948680443274240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n + A005583 (n + 1)

end

end A062988.P15064948680443274240

namespace A062988

/-- `A062748(n)+A005583(n+1)` -/
def P15064948680443274240.Spec : Prop :=
  ∀ n, P15064948680443274240.a n = A062988 n

end A062988

/-! ## A062988.P1066352343761551432

`A257890(n)+A051744(n+1)`
-/

namespace A062988.P1066352343761551432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n + A051744 (n + 1)

end

end A062988.P1066352343761551432

namespace A062988

/-- `A257890(n)+A051744(n+1)` -/
def P1066352343761551432.Spec : Prop :=
  ∀ n, P1066352343761551432.a n = A062988 n

end A062988

/-! ## A062988.P18177071097474068282

`A223718(n+1)+A257890(n)-1`
-/

namespace A062988.P18177071097474068282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1) + (A257890 n - 1)

end

end A062988.P18177071097474068282

namespace A062988

/-- `A223718(n+1)+A257890(n)-1` -/
def P18177071097474068282.Spec : Prop :=
  ∀ n, P18177071097474068282.a n = A062988 n

end A062988

/-! ## A062988.P1032157726727748912

`A252817(n+1)-A252873(n+1)`
-/

namespace A062988.P1032157726727748912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252817 (n + 1) - A252873 (n + 1)

end

end A062988.P1032157726727748912

namespace A062988

/-- `A252817(n+1)-A252873(n+1)` -/
def P1032157726727748912.Spec : Prop :=
  ∀ n, P1032157726727748912.a n = A062988 n

end A062988

/-! ## A062988.P520825129237218596

`A007993(n+1)+A246172(n+1)+1`
-/

namespace A062988.P520825129237218596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007993 (n + 1) + (A246172 (n + 1) + 1)

end

end A062988.P520825129237218596

namespace A062988

/-- `A007993(n+1)+A246172(n+1)+1` -/
def P520825129237218596.Spec : Prop :=
  ∀ n, P520825129237218596.a n = A062988 n

end A062988

/-! ## A062988.P8956783195432571893

`A062749(n)-(A063258(n)+A062748(n))`
-/

namespace A062988.P8956783195432571893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062749 n - (A063258 n + A062748 n)

end

end A062988.P8956783195432571893

namespace A062988

/-- `A062749(n)-(A063258(n)+A062748(n))` -/
def P8956783195432571893.Spec : Prop :=
  ∀ n, P8956783195432571893.a n = A062988 n

end A062988

/-! ## A062988.P16957497908195944541

`Δ[A062989(n)]`
-/

namespace A062988.P16957497908195944541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062988.P16957497908195944541

namespace A062988

/-- `Δ[A062989(n)]` -/
def P16957497908195944541.Spec : Prop :=
  ∀ n, P16957497908195944541.a n = A062988 n

theorem P16957497908195944541.correct : P16957497908195944541.Spec := by
  intro n
  simp only [A062988, Nat.add_sub_cancel, A062988.P16957497908195944541.f1, A062988.P16957497908195944541.a, A062988.P10319984421922645529.a, A062989, A062989.P942204784021349880.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062988

/-! ## A062988.P2734266125449930741

`Δ[A124089(n+6)]-1`
-/

namespace A062988.P2734266125449930741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A062988.P2734266125449930741

namespace A062988

/-- `Δ[A124089(n+6)]-1` -/
def P2734266125449930741.Spec : Prop :=
  ∀ n, P2734266125449930741.a n = A062988 n

theorem P2734266125449930741.correct : P2734266125449930741.Spec := by
  intro n
  simp only [A062988, Nat.add_sub_cancel, A062988.P2734266125449930741.f1, A062988.P2734266125449930741.a, A062988.P10319984421922645529.a, A124089, A124089.P16269199596857535660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062988

/-! ## A062988.P6349810155453359714

`∑[A154286(n+1)]/5`
-/

namespace A062988.P6349810155453359714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154286 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A062988.P6349810155453359714

namespace A062988

/-- `∑[A154286(n+1)]/5` -/
def P6349810155453359714.Spec : Prop :=
  ∀ n, P6349810155453359714.a n = (A062988 n : ℚ)

end A062988

/-! ## A062988.P13631977959014485269

`A051745(n+2)-(n+3)`
-/

namespace A062988.P13631977959014485269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 2) - (n + 3 : ℤ)

end

end A062988.P13631977959014485269

namespace A062988

/-- `A051745(n+2)-(n+3)` -/
def P13631977959014485269.Spec : Prop :=
  ∀ n, P13631977959014485269.a n = A062988 n

theorem P13631977959014485269.correct : P13631977959014485269.Spec := by
  intro n
  simp only [A062988, Nat.add_sub_cancel, A062988.P13631977959014485269.a, A062988.P10319984421922645529.a, A051745, A051745.P5054150048059455946.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062988

/-! ## A062988.P6483559104070544530

`A062989(n+1)-A062989(n)`
-/

namespace A062988.P6483559104070544530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 (n + 1) - A062989 n

end

end A062988.P6483559104070544530

namespace A062988

/-- `A062989(n+1)-A062989(n)` -/
def P6483559104070544530.Spec : Prop :=
  ∀ n, P6483559104070544530.a n = A062988 n

theorem P6483559104070544530.correct : P6483559104070544530.Spec := by
  intro n
  simp only [A062988, Nat.add_sub_cancel, A062988.P6483559104070544530.a, A062988.P10319984421922645529.a, A062989, A062989.P942204784021349880.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062988

/-! ## A062988.P18342687842523425666

`A027764(n+4)-(A059599(n+1)+1)`
-/

namespace A062988.P18342687842523425666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027764 (n + 4) - (A059599 (n + 1) + 1)

end

end A062988.P18342687842523425666

namespace A062988

/-- `A027764(n+4)-(A059599(n+1)+1)` -/
def P18342687842523425666.Spec : Prop :=
  ∀ n, P18342687842523425666.a n = A062988 n

end A062988

/-! ## A062988.P1318408239353916388

`(A104673(n+1)-A001287(n+1))/A001287(n+1)`
-/

namespace A062988.P1318408239353916388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104673 (n + 1) - A001287 (n + 1 + 10) : ℚ) / (A001287 (n + 1 + 10) : ℚ)

end

end A062988.P1318408239353916388

namespace A062988

/-- `(A104673(n+1)-A001287(n+1))/A001287(n+1)` -/
def P1318408239353916388.Spec : Prop :=
  ∀ n, P1318408239353916388.a n = (A062988 n : ℚ)

end A062988

/-!
# A062989: a(n) = binomial(n+6, 6) - n - 1.

The programs for A062989, the canonical program `A062989.P942204784021349880` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062989 has offset 0).

The definition of A062989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)-n-1` (program `A062989.P942204784021349880`, by `A062989.P942204784021349880.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062989.P942204784021349880

`C(n+6, 6)-n-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062989

/-- `C(n+6, 6)-n-1` -/
def P942204784021349880.Spec : Prop :=
  ∀ n, P942204784021349880.a n = A062989 n

theorem P942204784021349880.correct : P942204784021349880.Spec := by
  intro n
  simp only [A062989]

end A062989

/-! ## A062989.P9427153875310245575

`∑[C(n+5, 5)-1]`
-/

namespace A062989.P9427153875310245575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062989.P9427153875310245575

namespace A062989

/-- `∑[C(n+5, 5)-1]` -/
def P9427153875310245575.Spec : Prop :=
  ∀ n, P9427153875310245575.a n = A062989 n

end A062989

/-! ## A062989.P15424654382109151673

`C(n+6, 6)-(n+1)`
-/

namespace A062989.P15424654382109151673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) - (n + 1 : ℤ)

end

end A062989.P15424654382109151673

namespace A062989

/-- `C(n+6, 6)-(n+1)` -/
def P15424654382109151673.Spec : Prop :=
  ∀ n, P15424654382109151673.a n = A062989 n

theorem P15424654382109151673.correct : P15424654382109151673.Spec := by
  intro n
  simp only [A062989, Nat.add_sub_cancel, A062989.P15424654382109151673.a, A062989.P942204784021349880.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062989

/-! ## A062989.P16384914536746315423

`∑[∑[∑[∑[∑[n+1]]]]-1]`
-/

namespace A062989.P16384914536746315423
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062989.P16384914536746315423

namespace A062989

/-- `∑[∑[∑[∑[∑[n+1]]]]-1]` -/
def P16384914536746315423.Spec : Prop :=
  ∀ n, P16384914536746315423.a n = A062989 n

end A062989

/-! ## A062989.P12758415615004726044

`A124089(n+6)-n`
-/

namespace A062989.P12758415615004726044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6) - (n : ℤ)

end

end A062989.P12758415615004726044

namespace A062989

/-- `A124089(n+6)-n` -/
def P12758415615004726044.Spec : Prop :=
  ∀ n, P12758415615004726044.a n = A062989 n

theorem P12758415615004726044.correct : P12758415615004726044.Spec := by
  intro n
  simp only [A062989, Nat.add_sub_cancel, A062989.P12758415615004726044.a, A062989.P942204784021349880.a, A124089, A124089.P16269199596857535660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062989

/-! ## A062989.P9351817079570902580

`A027818(n)/(n+1)-(n+1)`
-/

namespace A062989.P9351817079570902580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027818 n : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A062989.P9351817079570902580

namespace A062989

/-- `A027818(n)/(n+1)-(n+1)` -/
def P9351817079570902580.Spec : Prop :=
  ∀ n, P9351817079570902580.a n = (A062989 n : ℚ)

theorem P9351817079570902580.correct : P9351817079570902580.Spec := by
  intro n
  simp only [A062989, Nat.add_sub_cancel, A062989.P9351817079570902580.a, A062989.P942204784021349880.a, A027818, A027818.P2026887167249722118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062989

/-! ## A062989.P8008953756868360222

`∑[A062988(n)]-A062988(n)`
-/

namespace A062989.P8008953756868360222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062988 n

end

end A062989.P8008953756868360222

namespace A062989

/-- `∑[A062988(n)]-A062988(n)` -/
def P8008953756868360222.Spec : Prop :=
  ∀ n, P8008953756868360222.a n = A062989 n

end A062989

/-! ## A062989.P12836875609892949993

`A095670(n)-∑[A095662(n)+1]`
-/

namespace A062989.P12836875609892949993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095670 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062989.P12836875609892949993

namespace A062989

/-- `A095670(n)-∑[A095662(n)+1]` -/
def P12836875609892949993.Spec : Prop :=
  ∀ n, P12836875609892949993.a n = A062989 n

end A062989

/-! ## A062989.P14458077782788975326

`∑[A027659(n)+n]-A027659(n)`
-/

namespace A062989.P14458077782788975326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027659 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027659 n

end

end A062989.P14458077782788975326

namespace A062989

/-- `∑[A027659(n)+n]-A027659(n)` -/
def P14458077782788975326.Spec : Prop :=
  ∀ n, P14458077782788975326.a n = A062989 n

end A062989

/-! ## A062989.P2874803455729861515

`A005584(n+1)-A051745(n+1)`
-/

namespace A062989.P2874803455729861515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 1) - A051745 (n + 1)

end

end A062989.P2874803455729861515

namespace A062989

/-- `A005584(n+1)-A051745(n+1)` -/
def P2874803455729861515.Spec : Prop :=
  ∀ n, P2874803455729861515.a n = A062989 n

end A062989

/-! ## A062989.P4277866084782412261

`A166810(n+1)-(A062988(n)+n)`
-/

namespace A062989.P4277866084782412261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1) - (A062988 n + (n : ℤ))

end

end A062989.P4277866084782412261

namespace A062989

/-- `A166810(n+1)-(A062988(n)+n)` -/
def P4277866084782412261.Spec : Prop :=
  ∀ n, P4277866084782412261.a n = A062989 n

theorem P4277866084782412261.correct : P4277866084782412261.Spec := by
  intro n
  simp only [A062989, Nat.add_sub_cancel, A062989.P4277866084782412261.a, A062989.P942204784021349880.a, A062988, A062988.P10319984421922645529.a, A166810, A166810.P9111942378694377844.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062989

/-! ## A062989.P17010099471741829

`A000217(n)+A062966(n)-A027659(n)`
-/

namespace A062989.P17010099471741829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A062966 n - A027659 n)

end

end A062989.P17010099471741829

namespace A062989

/-- `A000217(n)+A062966(n)-A027659(n)` -/
def P17010099471741829.Spec : Prop :=
  ∀ n, P17010099471741829.a n = A062989 n

end A062989

/-! ## A062989.P2966366813425707323

`A005581(n+1)+A005584(n+1)-A051747(n+1)`
-/

namespace A062989.P2966366813425707323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 1) + (A005584 (n + 1) - A051747 (n + 1))

end

end A062989.P2966366813425707323

namespace A062989

/-- `A005581(n+1)+A005584(n+1)-A051747(n+1)` -/
def P2966366813425707323.Spec : Prop :=
  ∀ n, P2966366813425707323.a n = A062989 n

end A062989

/-! ## A062989.P17449236400690276020

`A000579(A020715(n))-(n+1)`
-/

namespace A062989.P17449236400690276020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A020715 n).toNat - (n + 1 : ℤ)

end

end A062989.P17449236400690276020

namespace A062989

/-- `A000579(A020715(n))-(n+1)` -/
def P17449236400690276020.Spec : Prop :=
  ∀ n, P17449236400690276020.a n = A062989 n

end A062989

/-! ## A062989.P17243270327851246820

`A299338(2*n)-(n+1)`
-/

namespace A062989.P17243270327851246820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n) - (n + 1 : ℤ)

end

end A062989.P17243270327851246820

namespace A062989

/-- `A299338(2*n)-(n+1)` -/
def P17243270327851246820.Spec : Prop :=
  ∀ n, P17243270327851246820.a n = A062989 n

end A062989

/-! ## A062989.P13736624485999906095

`(A299337(2*n+1)-A005843(n+1))/2`
-/

namespace A062989.P13736624485999906095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299337 (2 * n + 1) - A005843 (n + 1) : ℚ) / 2

end

end A062989.P13736624485999906095

namespace A062989

/-- `(A299337(2*n+1)-A005843(n+1))/2` -/
def P13736624485999906095.Spec : Prop :=
  ∀ n, P13736624485999906095.a n = (A062989 n : ℚ)

end A062989

/-! ## A062989.P2781264060935546646

`(A082140(n)-A057711(n+1))/A011782(n)`
-/

namespace A062989.P2781264060935546646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082140 n - A057711 (n + 1) : ℚ) / (A011782 n : ℚ)

end

end A062989.P2781264060935546646

namespace A062989

/-- `(A082140(n)-A057711(n+1))/A011782(n)` -/
def P2781264060935546646.Spec : Prop :=
  ∀ n, P2781264060935546646.a n = (A062989 n : ℚ)

end A062989

/-! ## A062989.P3377124864378588176

`(A002409(n)-A001787(n+1))/A000079(n)`
-/

namespace A062989.P3377124864378588176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n - A001787 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A062989.P3377124864378588176

namespace A062989

/-- `(A002409(n)-A001787(n+1))/A000079(n)` -/
def P3377124864378588176.Spec : Prop :=
  ∀ n, P3377124864378588176.a n = (A062989 n : ℚ)

end A062989

/-! ## A062989.P861419279481386664

`(A036220(n)-A027471(n+2))/A000244(n)`
-/

namespace A062989.P861419279481386664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036220 n - A027471 (n + 2) : ℚ) / (A000244 n : ℚ)

end

end A062989.P861419279481386664

namespace A062989

/-- `(A036220(n)-A027471(n+2))/A000244(n)` -/
def P861419279481386664.Spec : Prop :=
  ∀ n, P861419279481386664.a n = (A062989 n : ℚ)

end A062989

/-! ## A062989.P12731606225825641583

`A193636(∑[n+3])-(n+1)`
-/

namespace A062989.P12731606225825641583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A062989.P12731606225825641583

namespace A062989

/-- `A193636(∑[n+3])-(n+1)` -/
def P12731606225825641583.Spec : Prop :=
  ∀ n, P12731606225825641583.a n = A062989 n

end A062989

/-!
# A062990: Eighth column (r=7) of FS(5) staircase array A062985.

The programs for A062990, the canonical program `A062990.P8239958271166238211` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062990 has offset 0).

The definition of A062990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062990.P8239958271166238211

`∑[∑[∑[C(n+5, 4)]]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062990

/-- `∑[∑[∑[C(n+5, 4)]]]` -/
def P8239958271166238211.Spec : Prop :=
  ∀ n, (P8239958271166238211.a n : ℤ) = A062990 n

theorem P8239958271166238211.correct : P8239958271166238211.Spec := by
  intro n
  simp only [A062990]

end A062990

/-! ## A062990.P4658565480967814728

`∑[∑[∑[∏[ratio[n+1]+3/(n+1)]]]]`
-/

namespace A062990.P4658565480967814728
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f5 (n + 1) : ℚ) / (f5 n : ℚ) + 3 / (n + 1 : ℚ)

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062990.P4658565480967814728

namespace A062990

/-- `∑[∑[∑[∏[ratio[n+1]+3/(n+1)]]]]` -/
def P4658565480967814728.Spec : Prop :=
  ∀ n, P4658565480967814728.a n = (A062990 n : ℚ)

end A062990

/-! ## A062990.P4746910323402137787

`C(n+7, 7)+C(n+6, 6)+C(n+5, 5)+C(n+4, 4)+C(n+3, 3)`
-/

namespace A062990.P4746910323402137787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 + Nat.choose (n + 6) 6 + Nat.choose (n + 5) 5 + Nat.choose (n + 4) 4 + Nat.choose (n + 3) 3

end

end A062990.P4746910323402137787

namespace A062990

/-- `C(n+7, 7)+C(n+6, 6)+C(n+5, 5)+C(n+4, 4)+C(n+3, 3)` -/
def P4746910323402137787.Spec : Prop :=
  ∀ n, (P4746910323402137787.a n : ℤ) = A062990 n

end A062990

/-! ## A062990.P10232792122348359446

`A063262(n)+∑[n+1]`
-/

namespace A062990.P10232792122348359446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063262 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062990.P10232792122348359446

namespace A062990

/-- `A063262(n)+∑[n+1]` -/
def P10232792122348359446.Spec : Prop :=
  ∀ n, P10232792122348359446.a n = A062990 n

end A062990

/-! ## A062990.P14854358800393723975

`A063267(n)-∑[n+1]`
-/

namespace A062990.P14854358800393723975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063267 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062990.P14854358800393723975

namespace A062990

/-- `A063267(n)-∑[n+1]` -/
def P14854358800393723975.Spec : Prop :=
  ∀ n, P14854358800393723975.a n = A062990 n

end A062990

/-! ## A062990.P6189800114063783963

`∑[A166810(n+1)]-∑[n]`
-/

namespace A062990.P6189800114063783963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A062990.P6189800114063783963

namespace A062990

/-- `∑[A166810(n+1)]-∑[n]` -/
def P6189800114063783963.Spec : Prop :=
  ∀ n, P6189800114063783963.a n = A062990 n

end A062990

/-! ## A062990.P7708188594919527439

`A062966(n)+A000580(n+7)`
-/

namespace A062990.P7708188594919527439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062966 n + A000580 (n + 7)

end

end A062990.P7708188594919527439

namespace A062990

/-- `A062966(n)+A000580(n+7)` -/
def P7708188594919527439.Spec : Prop :=
  ∀ n, P7708188594919527439.a n = A062990 n

end A062990

/-! ## A062990.P17908256808497051263

`A166812(n+1)-A034856(n+1)`
-/

namespace A062990.P17908256808497051263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 (n + 1) - A034856 (n + 1)

end

end A062990.P17908256808497051263

namespace A062990

/-- `A166812(n+1)-A034856(n+1)` -/
def P17908256808497051263.Spec : Prop :=
  ∀ n, P17908256808497051263.a n = A062990 n

end A062990

/-! ## A062990.P2270556502527933252

`A001919(n+3)-A005714(n+3)`
-/

namespace A062990.P2270556502527933252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) - A005714 (n + 3)

end

end A062990.P2270556502527933252

namespace A062990

/-- `A001919(n+3)-A005714(n+3)` -/
def P2270556502527933252.Spec : Prop :=
  ∀ n, P2270556502527933252.a n = A062990 n

end A062990

/-! ## A062990.P7587753627093379382

`A166812(n+1)-(Δ[A000292(n)]+n)`
-/

namespace A062990.P7587753627093379382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 (n + 1) - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A062990.P7587753627093379382

namespace A062990

/-- `A166812(n+1)-(Δ[A000292(n)]+n)` -/
def P7587753627093379382.Spec : Prop :=
  ∀ n, P7587753627093379382.a n = A062990 n

end A062990

/-! ## A062990.P18116737093230464506

`A000292(n)+A063267(n)-A000292(n+1)`
-/

namespace A062990.P18116737093230464506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A063267 n - A000292 (n + 1))

end

end A062990.P18116737093230464506

namespace A062990

/-- `A000292(n)+A063267(n)-A000292(n+1)` -/
def P18116737093230464506.Spec : Prop :=
  ∀ n, P18116737093230464506.a n = A062990 n

end A062990

/-! ## A062990.P5294188604420685712

`A062989(n+1)+∑[A062989(n)]`
-/

namespace A062990.P5294188604420685712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062990.P5294188604420685712

namespace A062990

/-- `A062989(n+1)+∑[A062989(n)]` -/
def P5294188604420685712.Spec : Prop :=
  ∀ n, P5294188604420685712.a n = A062990 n

end A062990

/-! ## A062990.P1286972946590347303

`A124090(n+8)-A000096(n+1)`
-/

namespace A062990.P1286972946590347303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 8) - A000096 (n + 1)

end

end A062990.P1286972946590347303

namespace A062990

/-- `A124090(n+8)-A000096(n+1)` -/
def P1286972946590347303.Spec : Prop :=
  ∀ n, P1286972946590347303.a n = A062990 n

end A062990

/-! ## A062990.P3553252137044934489

`A000580(n+8)-A000217(n+2)`
-/

namespace A062990.P3553252137044934489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - A000217 (n + 2)

end

end A062990.P3553252137044934489

namespace A062990

/-- `A000580(n+8)-A000217(n+2)` -/
def P3553252137044934489.Spec : Prop :=
  ∀ n, P3553252137044934489.a n = A062990 n

end A062990

/-! ## A062990.P12687743139478154049

`A000580(n+8)-Δ[A000292(n+1)]`
-/

namespace A062990.P12687743139478154049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - (f1 (n + 1) - f1 n)

end

end A062990.P12687743139478154049

namespace A062990

/-- `A000580(n+8)-Δ[A000292(n+1)]` -/
def P12687743139478154049.Spec : Prop :=
  ∀ n, P12687743139478154049.a n = A062990 n

end A062990

/-! ## A062990.P9466832974941049068

`A000580(n+8)-(A000096(n+1)+1)`
-/

namespace A062990.P9466832974941049068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - (A000096 (n + 1) + 1)

end

end A062990.P9466832974941049068

namespace A062990

/-- `A000580(n+8)-(A000096(n+1)+1)` -/
def P9466832974941049068.Spec : Prop :=
  ∀ n, P9466832974941049068.a n = A062990 n

end A062990

/-! ## A062990.P7218584514369777620

`A000580(n+8)-A027379(n+1)+n`
-/

namespace A062990.P7218584514369777620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - A027379 (n + 1) + (n : ℤ)

end

end A062990.P7218584514369777620

namespace A062990

/-- `A000580(n+8)-A027379(n+1)+n` -/
def P7218584514369777620.Spec : Prop :=
  ∀ n, P7218584514369777620.a n = A062990 n

end A062990

/-! ## A062990.P17871564619024825925

`A000580(n+8)-A104670(n+1)/A000580(n+8)`
-/

namespace A062990.P17871564619024825925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 8) : ℚ) - (A104670 (n + 1) : ℚ) / (A000580 (n + 8) : ℚ)

end

end A062990.P17871564619024825925

namespace A062990

/-- `A000580(n+8)-A104670(n+1)/A000580(n+8)` -/
def P17871564619024825925.Spec : Prop :=
  ∀ n, P17871564619024825925.a n = (A062990 n : ℚ)

end A062990

/-!
# A062991: Coefficient triangle for certain polynomials N(2; n,x) (rising powers of x).

The programs for A062991, the canonical program `A062991.P862635828570248787` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062991 has offset 0).

The definition of A062991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062991.P862635828570248787

`A097807(A061579(n))*A234950(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062991

/-- `A097807(A061579(n))*A234950(n)` -/
def P862635828570248787.Spec : Prop :=
  ∀ n, P862635828570248787.a n = A062991 n

theorem P862635828570248787.correct : P862635828570248787.Spec := by
  intro n
  simp only [A062991]

end A062991

/-! ## A062991.P3501705802955483717

`A062157(A002260(n+1))*A234950(n)`
-/

namespace A062991.P3501705802955483717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A234950 n

end

end A062991.P3501705802955483717

namespace A062991

/-- `A062157(A002260(n+1))*A234950(n)` -/
def P3501705802955483717.Spec : Prop :=
  ∀ n, P3501705802955483717.a n = A062991 n

end A062991

/-! ## A062991.P9047953878264953176

`A033999(A061885(n))*A234950(n)`
-/

namespace A062991.P9047953878264953176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A234950 n

end

end A062991.P9047953878264953176

namespace A062991

/-- `A033999(A061885(n))*A234950(n)` -/
def P9047953878264953176.Spec : Prop :=
  ∀ n, P9047953878264953176.a n = A062991 n

end A062991

/-! ## A062991.P6279657590865127828

`A008836(A059268(n))*A234950(n)`
-/

namespace A062991.P6279657590865127828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A234950 n

end

end A062991.P6279657590865127828

namespace A062991

/-- `A008836(A059268(n))*A234950(n)` -/
def P6279657590865127828.Spec : Prop :=
  ∀ n, P6279657590865127828.a n = A062991 n

end A062991

/-!
# A062992: Row sums of unsigned triangle A062991.

The programs for A062992, the canonical program `A062992.P6101721318031816608` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062992 has offset 0).

The definition of A062992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062992.P6101721318031816608

`1/(n+1)*∑{#}[n, C(2*n+2, n-#)*C(n+#, #)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062992

/-- `1/(n+1)*∑{#}[n, C(2*n+2, n-#)*C(n+#, #)]` -/
def P6101721318031816608.Spec : Prop :=
  ∀ n, P6101721318031816608.a n = (A062992 n : ℚ)

end A062992

/-! ## A062992.P11254871130083183946

`record[A115193(n)]`
-/

namespace A062992.P11254871130083183946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062992.P11254871130083183946

namespace A062992

/-- `record[A115193(n)]` -/
def P11254871130083183946.Spec : Prop :=
  ∀ n, P11254871130083183946.a n = A062992 n

end A062992

/-! ## A062992.P15145996148312140046

`A064062(n+1)`
-/

namespace A062992.P15145996148312140046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (n + 1)

end

end A062992.P15145996148312140046

namespace A062992

/-- `A064062(n+1)` -/
def P15145996148312140046.Spec : Prop :=
  ∀ n, P15145996148312140046.a n = A062992 n

end A062992

/-! ## A062992.P5051054498190340384

`abs(A114191(n+1))`
-/

namespace A062992.P5051054498190340384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114191 (n + 1)|

end

end A062992.P5051054498190340384

namespace A062992

/-- `abs(A114191(n+1))` -/
def P5051054498190340384.Spec : Prop :=
  ∀ n, P5051054498190340384.a n = A062992 n

end A062992

/-! ## A062992.P6199396976706080227

`A115193(∑[n+1])`
-/

namespace A062992.P6199396976706080227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062992.P6199396976706080227

namespace A062992

/-- `A115193(∑[n+1])` -/
def P6199396976706080227.Spec : Prop :=
  ∀ n, P6199396976706080227.a n = A062992 n

end A062992

/-! ## A062992.P4509592666906611380

`record[A064062(round(xor(1, n)/6))]`
-/

namespace A062992.P4509592666906611380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062992.P4509592666906611380

namespace A062992

/-- `record[A064062(round(xor(1, n)/6))]` -/
def P4509592666906611380.Spec : Prop :=
  ∀ n, P4509592666906611380.a n = A062992 n

end A062992

/-! ## A062992.P8931874765169475408

`A025225(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A062992.P8931874765169475408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025225 (n + 1) - a (n - 1)

end

end A062992.P8931874765169475408

namespace A062992

/-- `A025225(n+1)-a(n-1)` -/
def P8931874765169475408.Spec : Prop :=
  ∀ n, P8931874765169475408.a n = A062992 n

end A062992

/-! ## A062992.P8642009233232013696

`A115125(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A062992.P8642009233232013696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115125 (n + 1) - a (n - 1)

end

end A062992.P8642009233232013696

namespace A062992

/-- `A115125(n+1)-a(n-1)` -/
def P8642009233232013696.Spec : Prop :=
  ∀ n, P8642009233232013696.a n = A062992 n

end A062992

/-! ## A062992.P12194405035271478605

`2*A151374(n)-a(n-1)` with `a(0)=1`
-/

namespace A062992.P12194405035271478605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A151374 n - a (n - 1)

end

end A062992.P12194405035271478605

namespace A062992

/-- `2*A151374(n)-a(n-1)` -/
def P12194405035271478605.Spec : Prop :=
  ∀ n, P12194405035271478605.a n = A062992 n

end A062992

/-! ## A062992.P10600076147835566050

`a(n-1)+A115137(n)+a(n-1)` with `a(0)=1`
-/

namespace A062992.P10600076147835566050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A115137 n + a (n - 1))

end

end A062992.P10600076147835566050

namespace A062992

/-- `a(n-1)+A115137(n)+a(n-1)` -/
def P10600076147835566050.Spec : Prop :=
  ∀ n, P10600076147835566050.a n = A062992 n

end A062992

/-! ## A062992.P11634622253875721822

`record[A064062(A004788(n))]`
-/

namespace A062992.P11634622253875721822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (A004788 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062992.P11634622253875721822

namespace A062992

/-- `record[A064062(A004788(n))]` -/
def P11634622253875721822.Spec : Prop :=
  ∀ n, P11634622253875721822.a n = A062992 n

end A062992

/-! ## A062992.P3407437721790650079

`record[A064062(A008611(n))]`
-/

namespace A062992.P3407437721790650079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062992.P3407437721790650079

namespace A062992

/-- `record[A064062(A008611(n))]` -/
def P3407437721790650079.Spec : Prop :=
  ∀ n, P3407437721790650079.a n = A062992 n

end A062992

/-! ## A062992.P4636539104203669093

`record[A064062(A008612(n))]`
-/

namespace A062992.P4636539104203669093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062992.P4636539104203669093

namespace A062992

/-- `record[A064062(A008612(n))]` -/
def P4636539104203669093.Spec : Prop :=
  ∀ n, P4636539104203669093.a n = A062992 n

end A062992

/-! ## A062992.P13489247997023351742

`record[A064062(A008615(n))]`
-/

namespace A062992.P13489247997023351742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062992.P13489247997023351742

namespace A062992

/-- `record[A064062(A008615(n))]` -/
def P13489247997023351742.Spec : Prop :=
  ∀ n, P13489247997023351742.a n = A062992 n

end A062992

/-! ## A062992.P5528181074472196056

`record[A064062(A028242(n))]`
-/

namespace A062992.P5528181074472196056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062992.P5528181074472196056

namespace A062992

/-- `record[A064062(A028242(n))]` -/
def P5528181074472196056.Spec : Prop :=
  ∀ n, P5528181074472196056.a n = A062992 n

end A062992

/-! ## A062992.P17668313411429264247

`record[A064062(A057979(n))]`
-/

namespace A062992.P17668313411429264247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062992.P17668313411429264247

namespace A062992

/-- `record[A064062(A057979(n))]` -/
def P17668313411429264247.Spec : Prop :=
  ∀ n, P17668313411429264247.a n = A062992 n

end A062992

/-! ## A062992.P6977311141477331003

`record[A064062(A324346(n))]`
-/

namespace A062992.P6977311141477331003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (A324346 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062992.P6977311141477331003

namespace A062992

/-- `record[A064062(A324346(n))]` -/
def P6977311141477331003.Spec : Prop :=
  ∀ n, P6977311141477331003.a n = A062992 n

end A062992

/-! ## A062992.P14131717963344204508

`ratio[A064062(n)]*A064062(n)`
-/

namespace A062992.P14131717963344204508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A064062 n : ℚ)

end

end A062992.P14131717963344204508

namespace A062992

/-- `ratio[A064062(n)]*A064062(n)` -/
def P14131717963344204508.Spec : Prop :=
  ∀ n, P14131717963344204508.a n = (A062992 n : ℚ)

end A062992

/-! ## A062992.P2510162307365116765

`or(1, A115193(A000124(n+1)))`
-/

namespace A062992.P2510162307365116765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115193 (A000124 (n + 1)).toNat)

end

end A062992.P2510162307365116765

namespace A062992

/-- `or(1, A115193(A000124(n+1)))` -/
def P2510162307365116765.Spec : Prop :=
  ∀ n, P2510162307365116765.a n = A062992 n

end A062992

/-! ## A062992.P14629935878290041004

`lcm(Δ[A008611(n+1)], A114191(n+1))`
-/

namespace A062992.P14629935878290041004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A114191 (n + 1))

end

end A062992.P14629935878290041004

namespace A062992

/-- `lcm(Δ[A008611(n+1)], A114191(n+1))` -/
def P14629935878290041004.Spec : Prop :=
  ∀ n, (P14629935878290041004.a n : ℤ) = A062992 n

end A062992

/-!
# A062993: A triangle (lower triangular matrix) composed of Pfaff-Fuss (or Raney) sequences.

The programs for A062993, the canonical program `A062993.P3207476126118128285` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062993 has offset 0).

The definition of A062993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062993.P3207476126118128285

`C((col(n)+2)*(row(n)-col(n)), row(n)-col(n))/((col(n)+1)*(row(n)-col(n))+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062993

/-- `C((col(n)+2)*(row(n)-col(n)), row(n)-col(n))/((col(n)+1)*(row(n)-col(n))+1)` -/
def P3207476126118128285.Spec : Prop :=
  ∀ n, P3207476126118128285.a n = (A062993 n : ℚ)

end A062993

/-! ## A062993.P5966946713049911281

`A070914(A099375(n)+n)`
-/

namespace A062993.P5966946713049911281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A099375 n + (n : ℤ)).toNat

end

end A062993.P5966946713049911281

namespace A062993

/-- `A070914(A099375(n)+n)` -/
def P5966946713049911281.Spec : Prop :=
  ∀ n, P5966946713049911281.a n = A062993 n

end A062993

/-! ## A062993.P62616060844827651

`A070914(A061579(comp[∑[n]]))`
-/

namespace A062993.P62616060844827651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A062993.P62616060844827651

namespace A062993

/-- `A070914(A061579(comp[∑[n]]))` -/
def P62616060844827651.Spec : Prop :=
  ∀ n, P62616060844827651.a n = A062993 n

end A062993

/-! ## A062993.P460146713534642126

`A070914(log2(A262616(n))+n+1)`
-/

namespace A062993.P460146713534642126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ) + (n + 1 : ℝ))).toNat

end

end A062993.P460146713534642126

namespace A062993

/-- `A070914(log2(A262616(n))+n+1)` -/
def P460146713534642126.Spec : Prop :=
  ∀ n, P460146713534642126.a n = A062993 n

end A062993

/-! ## A062993.P5726603635931431846

`A070914(A212012(n+1)-1+n)`
-/

namespace A062993.P5726603635931431846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A212012 (n + 1) - 1 + (n : ℤ)).toNat

end

end A062993.P5726603635931431846

namespace A062993

/-- `A070914(A212012(n+1)-1+n)` -/
def P5726603635931431846.Spec : Prop :=
  ∀ n, P5726603635931431846.a n = A062993 n

end A062993

/-! ## A062993.P15419545579840697092

`A070914(2*A025581(n)+n+1)`
-/

namespace A062993.P15419545579840697092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (2 * A025581 n + (n + 1 : ℤ)).toNat

end

end A062993.P15419545579840697092

namespace A062993

/-- `A070914(2*A025581(n)+n+1)` -/
def P15419545579840697092.Spec : Prop :=
  ∀ n, P15419545579840697092.a n = A062993 n

end A062993

/-! ## A062993.P10501909233393912877

`A070914(A114327(n)+comp[∑[n-1]])`
-/

namespace A062993.P10501909233393912877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A114327 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A062993.P10501909233393912877

namespace A062993

/-- `A070914(A114327(n)+comp[∑[n-1]])` -/
def P10501909233393912877.Spec : Prop :=
  ∀ n, P10501909233393912877.a n = A062993 n

end A062993

/-! ## A062993.P17430469106437490850

`A070914(A038722(comp[∑[n-1]]+1)-2)`
-/

namespace A062993.P17430469106437490850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - 2).toNat

end

end A062993.P17430469106437490850

namespace A062993

/-- `A070914(A038722(comp[∑[n-1]]+1)-2)` -/
def P17430469106437490850.Spec : Prop :=
  ∀ n, P17430469106437490850.a n = A062993 n

end A062993

/-! ## A062993.P17615905460822387219

`A070914(A061579(n)+A002024(n+1))`
-/

namespace A062993.P17615905460822387219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A061579 n + A002024 (n + 1)).toNat

end

end A062993.P17615905460822387219

namespace A062993

/-- `A070914(A061579(n)+A002024(n+1))` -/
def P17615905460822387219.Spec : Prop :=
  ∀ n, P17615905460822387219.a n = A062993 n

end A062993

/-! ## A062993.P11360897156934408026

`A070914(A003056(n)+A061579(n)+1)`
-/

namespace A062993.P11360897156934408026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A003056 n + (A061579 n + 1)).toNat

end

end A062993.P11360897156934408026

namespace A062993

/-- `A070914(A003056(n)+A061579(n)+1)` -/
def P11360897156934408026.Spec : Prop :=
  ∀ n, P11360897156934408026.a n = A062993 n

end A062993

/-!
# A062995: Doubly exponentiate the Bessel function I(0,2*sqrt(z)).

The programs for A062995, there is no canonical definition to state claims against.
-/

/-! ## A062995.P15155703551006127826

`A288174(n!²)`
-/

namespace A062995.P15155703551006127826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288174 (Nat.factorial n ^ 2)

end

end A062995.P15155703551006127826

/-!
# A062996: Numbers whose sum of digits is greater than or equal to its product of digits.

The programs for A062996, the canonical program `A062996.P11625453850010715147` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062996 has offset 1).

The definition of A062996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062996.P11774851274061612884

`∪[A034710(n+1), A062997(n+1)]`
-/

namespace A062996.P11774851274061612884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062996.P11774851274061612884

namespace A062996

/-- `∪[A034710(n+1), A062997(n+1)]` -/
def P11774851274061612884.Spec : Prop :=
  ∀ n, (P11774851274061612884.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P12020566912970421038

`∪[A055931(n+1), A062997(n+1)]`
-/

namespace A062996.P12020566912970421038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062996.P12020566912970421038

namespace A062996

/-- `∪[A055931(n+1), A062997(n+1)]` -/
def P12020566912970421038.Spec : Prop :=
  ∀ n, (P12020566912970421038.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P11625453850010715147

`∪[A055933(n+1), A062997(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062996

/-- `∪[A055933(n+1), A062997(n+1)]` -/
def P11625453850010715147.Spec : Prop :=
  ∀ n, (P11625453850010715147.a n : ℤ) = A062996 (n + 1)

theorem P11625453850010715147.correct : P11625453850010715147.Spec := by
  intro n
  simp only [A062996, Nat.add_sub_cancel]

end A062996

/-! ## A062996.P13965626055711424456

`∪[A062997(n+1), A064158(n+1)]`
-/

namespace A062996.P13965626055711424456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062996.P13965626055711424456

namespace A062996

/-- `∪[A062997(n+1), A064158(n+1)]` -/
def P13965626055711424456.Spec : Prop :=
  ∀ n, (P13965626055711424456.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P3522750498061223003

`∪[A062997(n+1), A254621(n+1)]`
-/

namespace A062996.P3522750498061223003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062996.P3522750498061223003

namespace A062996

/-- `∪[A062997(n+1), A254621(n+1)]` -/
def P3522750498061223003.Spec : Prop :=
  ∀ n, (P3522750498061223003.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P7688763636793773292

`∪[A098394(n+1), A254621(n+1)]`
-/

namespace A062996.P7688763636793773292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062996.P7688763636793773292

namespace A062996

/-- `∪[A098394(n+1), A254621(n+1)]` -/
def P7688763636793773292.Spec : Prop :=
  ∀ n, (P7688763636793773292.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P4824231408158313507

`∪[A062997(n+1), A342048(n+1)]`
-/

namespace A062996.P4824231408158313507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062996.P4824231408158313507

namespace A062996

/-- `∪[A062997(n+1), A342048(n+1)]` -/
def P4824231408158313507.Spec : Prop :=
  ∀ n, (P4824231408158313507.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P3859577126451984628

`∪[A212499(n+1), A254621(n+1)]`
-/

namespace A062996.P3859577126451984628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062996.P3859577126451984628

namespace A062996

/-- `∪[A212499(n+1), A254621(n+1)]` -/
def P3859577126451984628.Spec : Prop :=
  ∀ n, (P3859577126451984628.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P6407599537692037845

`lt[A007954(n)², A118881(n)+A007954(n)]`
-/

namespace A062996.P6407599537692037845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n + A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062996.P6407599537692037845

namespace A062996

/-- `lt[A007954(n)², A118881(n)+A007954(n)]` -/
def P6407599537692037845.Spec : Prop :=
  ∀ n, (P6407599537692037845.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P2694684664323462649

`lt[n*∏{digits}[n, #]/(n+1), ∑{digits}[n, #]]`
-/

namespace A062996.P2694684664323462649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℚ) / (n + 1 : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A062996.P2694684664323462649

namespace A062996

/-- `lt[n*∏{digits}[n, #]/(n+1), ∑{digits}[n, #]]` -/
def P2694684664323462649.Spec : Prop :=
  ∀ n, (P2694684664323462649.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P820539307434272001

`lt[0, A168046(n)+A062329(n)]`
-/

namespace A062996.P820539307434272001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n + A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062996.P820539307434272001

namespace A062996

/-- `lt[0, A168046(n)+A062329(n)]` -/
def P820539307434272001.Spec : Prop :=
  ∀ n, (P820539307434272001.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P4628113747198175728

`lt[A000007(n), A062329(n)+1]`
-/

namespace A062996.P4628113747198175728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062996.P4628113747198175728

namespace A062996

/-- `lt[A000007(n), A062329(n)+1]` -/
def P4628113747198175728.Spec : Prop :=
  ∀ n, (P4628113747198175728.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P10044331067213581913

`lt[A098736(n), A160942(n+1)]`
-/

namespace A062996.P10044331067213581913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062996.P10044331067213581913

namespace A062996

/-- `lt[A098736(n), A160942(n+1)]` -/
def P10044331067213581913.Spec : Prop :=
  ∀ n, (P10044331067213581913.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P4642029455608647423

`lt[A098736(n), A057147(n)+n]`
-/

namespace A062996.P4642029455608647423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062996.P4642029455608647423

namespace A062996

/-- `lt[A098736(n), A057147(n)+n]` -/
def P4642029455608647423.Spec : Prop :=
  ∀ n, (P4642029455608647423.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P17043250466175997258

`lt[A230099(n+1), A160939(n+2)]+1`
-/

namespace A062996.P17043250466175997258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A062996.P17043250466175997258

namespace A062996

/-- `lt[A230099(n+1), A160939(n+2)]+1` -/
def P17043250466175997258.Spec : Prop :=
  ∀ n, (P17043250466175997258.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P9584990284090967007

`eq[abs(A062329(n+1)), A062329(n+1)]+1`
-/

namespace A062996.P9584990284090967007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062329 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062996.P9584990284090967007

namespace A062996

/-- `eq[abs(A062329(n+1)), A062329(n+1)]+1` -/
def P9584990284090967007.Spec : Prop :=
  ∀ n, (P9584990284090967007.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P8662371806895965152

`lt[A230099(A028310(n)), A160939(n+1)]`
-/

namespace A062996.P8662371806895965152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062996.P8662371806895965152

namespace A062996

/-- `lt[A230099(A028310(n)), A160939(n+1)]` -/
def P8662371806895965152.Spec : Prop :=
  ∀ n, (P8662371806895965152.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P14245124454834676171

`lt[A028310(n)+A007954(n), A160939(n+1)]`
-/

namespace A062996.P14245124454834676171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062996.P14245124454834676171

namespace A062996

/-- `lt[A028310(n)+A007954(n), A160939(n+1)]` -/
def P14245124454834676171.Spec : Prop :=
  ∀ n, (P14245124454834676171.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P16904488844783331405

`lt[A028310(A007954(n)+n), A160939(n+1)]`
-/

namespace A062996.P16904488844783331405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A007954 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062996.P16904488844783331405

namespace A062996

/-- `lt[A028310(A007954(n)+n), A160939(n+1)]` -/
def P16904488844783331405.Spec : Prop :=
  ∀ n, (P16904488844783331405.a n : ℤ) = A062996 (n + 1)

end A062996

/-! ## A062996.P1345587035160912523

`lt[0, A062329(10*n+1)]`
-/

namespace A062996.P1345587035160912523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062996.P1345587035160912523

namespace A062996

/-- `lt[0, A062329(10*n+1)]` -/
def P1345587035160912523.Spec : Prop :=
  ∀ n, (P1345587035160912523.a n : ℤ) = A062996 (n + 1)

end A062996

/-!
# A062997: Numbers whose sum of digits is strictly greater than its product of digits.

The programs for A062997, the canonical program `A062997.P4649149388555751464` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062997 has offset 1).

The definition of A062997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2716 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062997.P4649149388555751464

`lt[A007954(n), A007953(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062997

/-- `lt[A007954(n), A007953(n)]` -/
def P4649149388555751464.Spec : Prop :=
  ∀ n, (P4649149388555751464.a n : ℤ) = A062997 (n + 1)

theorem P4649149388555751464.correct : P4649149388555751464.Spec := by
  intro n
  simp only [A062997, Nat.add_sub_cancel]

end A062997

/-! ## A062997.P15814074977593307040

`lt[A230099(n), A062028(n)]`
-/

namespace A062997.P15814074977593307040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P15814074977593307040

namespace A062997

/-- `lt[A230099(n), A062028(n)]` -/
def P15814074977593307040.Spec : Prop :=
  ∀ n, (P15814074977593307040.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P13076702666847796805

`lt[A007954(n)², A118881(n)]`
-/

namespace A062997.P13076702666847796805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P13076702666847796805

namespace A062997

/-- `lt[A007954(n)², A118881(n)]` -/
def P13076702666847796805.Spec : Prop :=
  ∀ n, (P13076702666847796805.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P17980297697385412727

`lt[A007954(n), log2(A329562(n))]`
-/

namespace A062997.P17980297697385412727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A062997.P17980297697385412727

namespace A062997

/-- `lt[A007954(n), log2(A329562(n))]` -/
def P17980297697385412727.Spec : Prop :=
  ∀ n, (P17980297697385412727.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P12746411582975877535

`lt[A007954(n)+n, A062028(n)]`
-/

namespace A062997.P12746411582975877535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P12746411582975877535

namespace A062997

/-- `lt[A007954(n)+n, A062028(n)]` -/
def P12746411582975877535.Spec : Prop :=
  ∀ n, (P12746411582975877535.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P2951390514900941257

`lt[A230099(n), A007953(n)+n]`
-/

namespace A062997.P2951390514900941257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P2951390514900941257

namespace A062997

/-- `lt[A230099(n), A007953(n)+n]` -/
def P2951390514900941257.Spec : Prop :=
  ∀ n, (P2951390514900941257.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P11102242466767234810

`lt[∏{digits}[n, #], ∑{digits}[n, #]]`
-/

namespace A062997.P11102242466767234810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A062997.P11102242466767234810

namespace A062997

/-- `lt[∏{digits}[n, #], ∑{digits}[n, #]]` -/
def P11102242466767234810.Spec : Prop :=
  ∀ n, (P11102242466767234810.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P3023421361436655668

`lt[0, A062329(n)]`
-/

namespace A062997.P3023421361436655668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062997.P3023421361436655668

namespace A062997

/-- `lt[0, A062329(n)]` -/
def P3023421361436655668.Spec : Prop :=
  ∀ n, (P3023421361436655668.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P14907578468342422762

`lt[A066568(n), A070565(n)]`
-/

namespace A062997.P14907578468342422762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P14907578468342422762

namespace A062997

/-- `lt[A066568(n), A070565(n)]` -/
def P14907578468342422762.Spec : Prop :=
  ∀ n, (P14907578468342422762.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P15633519590153576339

`lt[A098736(n), A057147(n)]`
-/

namespace A062997.P15633519590153576339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P15633519590153576339

namespace A062997

/-- `lt[A098736(n), A057147(n)]` -/
def P15633519590153576339.Spec : Prop :=
  ∀ n, (P15633519590153576339.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P14092988726124072241

`lt[A061762(n), A169805(n)]`
-/

namespace A062997.P14092988726124072241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P14092988726124072241

namespace A062997

/-- `lt[A061762(n), A169805(n)]` -/
def P14092988726124072241.Spec : Prop :=
  ∀ n, (P14092988726124072241.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P13310186079249016219

`lt[2*A007954(n), A061762(n)]`
-/

namespace A062997.P13310186079249016219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P13310186079249016219

namespace A062997

/-- `lt[2*A007954(n), A061762(n)]` -/
def P13310186079249016219.Spec : Prop :=
  ∀ n, (P13310186079249016219.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P2990352791369138853

`lt[2*A007954(n), A169805(n)]`
-/

namespace A062997.P2990352791369138853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P2990352791369138853

namespace A062997

/-- `lt[2*A007954(n), A169805(n)]` -/
def P2990352791369138853.Spec : Prop :=
  ∀ n, (P2990352791369138853.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P13557264843563609094

`lt[A066568(n)+A007954(n), n]`
-/

namespace A062997.P13557264843563609094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + A007954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062997.P13557264843563609094

namespace A062997

/-- `lt[A066568(n)+A007954(n), n]` -/
def P13557264843563609094.Spec : Prop :=
  ∀ n, (P13557264843563609094.a n : ℤ) = A062997 (n + 1)

end A062997

/-! ## A062997.P12946993762644701703

`lt[A005408(A007954(n)), A169805(n)]`
-/

namespace A062997.P12946993762644701703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P12946993762644701703

namespace A062997

/-- `lt[A005408(A007954(n)), A169805(n)]` -/
def P12946993762644701703.Spec : Prop :=
  ∀ n, (P12946993762644701703.a n : ℤ) = A062997 (n + 1)

end A062997

/-!
# A062998: Numbers whose sum of digits is less than or equal to its product of digits.

The programs for A062998, the canonical program `A062998.P8525607989414604910` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062998 has offset 1).

The definition of A062998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062998.P8525607989414604910

`lt[n*A062329(n), n]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062998

/-- `lt[n*A062329(n), n]` -/
def P8525607989414604910.Spec : Prop :=
  ∀ n, (P8525607989414604910.a n : ℤ) = A062998 (n + 1)

theorem P8525607989414604910.correct : P8525607989414604910.Spec := by
  intro n
  simp only [A062998, Nat.add_sub_cancel]

end A062998

/-! ## A062998.P9380893672838837914

`lt[A062329(n+1), 1]+1`
-/

namespace A062998.P9380893672838837914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A062998.P9380893672838837914

namespace A062998

/-- `lt[A062329(n+1), 1]+1` -/
def P9380893672838837914.Spec : Prop :=
  ∀ n, (P9380893672838837914.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P18242567927780587748

`lt[A062329(n), A054054(n)]`
-/

namespace A062998.P18242567927780587748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062998.P18242567927780587748

namespace A062998

/-- `lt[A062329(n), A054054(n)]` -/
def P18242567927780587748.Spec : Prop :=
  ∀ n, (P18242567927780587748.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P17101718067869187

`lt[A062329(n), A168046(n)]`
-/

namespace A062998.P17101718067869187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062998.P17101718067869187

namespace A062998

/-- `lt[A062329(n), A168046(n)]` -/
def P17101718067869187.Spec : Prop :=
  ∀ n, (P17101718067869187.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P15897265466452655340

`lt[A062329(n)+A000007(n), 1]`
-/

namespace A062998.P15897265466452655340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + A000007 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062998.P15897265466452655340

namespace A062998

/-- `lt[A062329(n)+A000007(n), 1]` -/
def P15897265466452655340.Spec : Prop :=
  ∀ n, (P15897265466452655340.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P6271705739142478547

`lt[A057147(n), A098736(n)+n]`
-/

namespace A062998.P6271705739142478547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062998.P6271705739142478547

namespace A062998

/-- `lt[A057147(n), A098736(n)+n]` -/
def P6271705739142478547.Spec : Prop :=
  ∀ n, (P6271705739142478547.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P17156124017947245859

`lt[A062329(n), n/A000124(n)]`
-/

namespace A062998.P17156124017947245859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000124 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A062998.P17156124017947245859

namespace A062998

/-- `lt[A062329(n), n/A000124(n)]` -/
def P17156124017947245859.Spec : Prop :=
  ∀ n, (P17156124017947245859.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P6508441705366995191

`lt[A062329(n), A193582(A007954(n))]`
-/

namespace A062998.P6508441705366995191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062998.P6508441705366995191

namespace A062998

/-- `lt[A062329(n), A193582(A007954(n))]` -/
def P6508441705366995191.Spec : Prop :=
  ∀ n, (P6508441705366995191.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P13757436330243642767

`lt[A062329(n), A193582(A008687(n))]`
-/

namespace A062998.P13757436330243642767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 (A008687 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062998.P13757436330243642767

namespace A062998

/-- `lt[A062329(n), A193582(A008687(n))]` -/
def P13757436330243642767.Spec : Prop :=
  ∀ n, (P13757436330243642767.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P10986177300584692843

`lt[A160942(A028310(n)), A098736(n)]`
-/

namespace A062998.P10986177300584692843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160942 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062998.P10986177300584692843

namespace A062998

/-- `lt[A160942(A028310(n)), A098736(n)]` -/
def P10986177300584692843.Spec : Prop :=
  ∀ n, (P10986177300584692843.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P2979920236654013501

`lt[A160939(A028310(n)), A230099(n)]`
-/

namespace A062998.P2979920236654013501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062998.P2979920236654013501

namespace A062998

/-- `lt[A160939(A028310(n)), A230099(n)]` -/
def P2979920236654013501.Spec : Prop :=
  ∀ n, (P2979920236654013501.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P13302484454741131446

`lt[A160939(A028310(n)), A007954(n)+n]`
-/

namespace A062998.P13302484454741131446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062998.P13302484454741131446

namespace A062998

/-- `lt[A160939(A028310(n)), A007954(n)+n]` -/
def P13302484454741131446.Spec : Prop :=
  ∀ n, (P13302484454741131446.a n : ℤ) = A062998 (n + 1)

end A062998

/-! ## A062998.P12736074419834488697

`lt[A061762(n)^A062329(n), A061762(n)]`
-/

namespace A062998.P12736074419834488697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061762 n : ℚ) ^ (A062329 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A062998.P12736074419834488697

namespace A062998

/-- `lt[A061762(n)^A062329(n), A061762(n)]` -/
def P12736074419834488697.Spec : Prop :=
  ∀ n, (P12736074419834488697.a n : ℤ) = A062998 (n + 1)

end A062998

/-!
# A062999: Numbers whose sum of the digits is strictly less than its product of digits.

The programs for A062999, the canonical program `A062999.P8006304150182912047` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062999 has offset 1).

The definition of A062999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062999.P8006304150182912047

`lt[∑{digits}[n, #], ∏{digits}[n, #]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062999

/-- `lt[∑{digits}[n, #], ∏{digits}[n, #]]` -/
def P8006304150182912047.Spec : Prop :=
  ∀ n, (P8006304150182912047.a n : ℤ) = A062999 (n + 1)

theorem P8006304150182912047.correct : P8006304150182912047.Spec := by
  intro n
  simp only [A062999, Nat.add_sub_cancel]

end A062999

/-! ## A062999.P3359443708900274596

`lt[A062329(n), 0]`
-/

namespace A062999.P3359443708900274596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062999.P3359443708900274596

namespace A062999

/-- `lt[A062329(n), 0]` -/
def P3359443708900274596.Spec : Prop :=
  ∀ n, (P3359443708900274596.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P3383323521830847311

`lt[n*char[A062996(n+1)], n]`
-/

namespace A062999.P3383323521830847311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A062999.P3383323521830847311

namespace A062999

/-- `lt[n*char[A062996(n+1)], n]` -/
def P3383323521830847311.Spec : Prop :=
  ∀ n, (P3383323521830847311.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P14491048373092728154

`lt[A007953(n), A007954(n)]`
-/

namespace A062999.P14491048373092728154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P14491048373092728154

namespace A062999

/-- `lt[A007953(n), A007954(n)]` -/
def P14491048373092728154.Spec : Prop :=
  ∀ n, (P14491048373092728154.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P5108209276281412321

`lt[A070565(n), A066568(n)]`
-/

namespace A062999.P5108209276281412321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P5108209276281412321

namespace A062999

/-- `lt[A070565(n), A066568(n)]` -/
def P5108209276281412321.Spec : Prop :=
  ∀ n, (P5108209276281412321.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P7234400812405010296

`lt[A057147(n), A098736(n)]`
-/

namespace A062999.P7234400812405010296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P7234400812405010296

namespace A062999

/-- `lt[A057147(n), A098736(n)]` -/
def P7234400812405010296.Spec : Prop :=
  ∀ n, (P7234400812405010296.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P3522477883280105433

`lt[A169805(n), A061762(n)]`
-/

namespace A062999.P3522477883280105433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P3522477883280105433

namespace A062999

/-- `lt[A169805(n), A061762(n)]` -/
def P3522477883280105433.Spec : Prop :=
  ∀ n, (P3522477883280105433.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P10010229207648689200

`lt[A062028(n), A230099(n)]`
-/

namespace A062999.P10010229207648689200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P10010229207648689200

namespace A062999

/-- `lt[A062028(n), A230099(n)]` -/
def P10010229207648689200.Spec : Prop :=
  ∀ n, (P10010229207648689200.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P6937623712747586761

`lt[A118881(n), A007954(n)²]`
-/

namespace A062999.P6937623712747586761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P6937623712747586761

namespace A062999

/-- `lt[A118881(n), A007954(n)²]` -/
def P6937623712747586761.Spec : Prop :=
  ∀ n, (P6937623712747586761.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P5092893903946144771

`lt[log2(A329562(n)), A007954(n)]`
-/

namespace A062999.P5092893903946144771
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A062999.P5092893903946144771

namespace A062999

/-- `lt[log2(A329562(n)), A007954(n)]` -/
def P5092893903946144771.Spec : Prop :=
  ∀ n, (P5092893903946144771.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P4861109903599198344

`lt[A160942(n+1), A098736(n)]`
-/

namespace A062999.P4861109903599198344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P4861109903599198344

namespace A062999

/-- `lt[A160942(n+1), A098736(n)]` -/
def P4861109903599198344.Spec : Prop :=
  ∀ n, (P4861109903599198344.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P4008524043934501970

`lt[A061762(n), 2*A007954(n)]`
-/

namespace A062999.P4008524043934501970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P4008524043934501970

namespace A062999

/-- `lt[A061762(n), 2*A007954(n)]` -/
def P4008524043934501970.Spec : Prop :=
  ∀ n, (P4008524043934501970.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P12723278616964181220

`lt[A169805(n), 2*A007954(n)]`
-/

namespace A062999.P12723278616964181220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P12723278616964181220

namespace A062999

/-- `lt[A169805(n), 2*A007954(n)]` -/
def P12723278616964181220.Spec : Prop :=
  ∀ n, (P12723278616964181220.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P16866842908707521257

`lt[A062028(n), A007954(n)+n]`
-/

namespace A062999.P16866842908707521257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P16866842908707521257

namespace A062999

/-- `lt[A062028(n), A007954(n)+n]` -/
def P16866842908707521257.Spec : Prop :=
  ∀ n, (P16866842908707521257.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P9801592125768548499

`lt[n, A066568(n)+A007954(n)]`
-/

namespace A062999.P9801592125768548499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062999.P9801592125768548499

namespace A062999

/-- `lt[n, A066568(n)+A007954(n)]` -/
def P9801592125768548499.Spec : Prop :=
  ∀ n, (P9801592125768548499.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P13028555048415495773

`lt[A007953(n)+n, A230099(n)]`
-/

namespace A062999.P13028555048415495773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062999.P13028555048415495773

namespace A062999

/-- `lt[A007953(n)+n, A230099(n)]` -/
def P13028555048415495773.Spec : Prop :=
  ∀ n, (P13028555048415495773.a n : ℤ) = A062999 (n + 1)

end A062999

/-! ## A062999.P1333206053027393267

`lt[A160942(n+1)/(n+1)+A160939(n+1)-(n+1), A061762(n)]`
-/

namespace A062999.P1333206053027393267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160942 (n + 1) : ℚ) / (n + 1 : ℚ) + (A160939 (n + 1) - (n + 1 : ℤ) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A062999.P1333206053027393267

namespace A062999

/-- `lt[A160942(n+1)/(n+1)+A160939(n+1)-(n+1), A061762(n)]` -/
def P1333206053027393267.Spec : Prop :=
  ∀ n, (P1333206053027393267.a n : ℤ) = A062999 (n + 1)

end A062999

