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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A127100: Numbers k such that k^2 divides 10^k-1.

The programs for A127100, there is no canonical definition to state claims against.
-/

/-! ## A127100.P7291898116480128755

`A197309(record[A339242(n)])`
-/

namespace A127100.P7291898116480128755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197309 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127100.P7291898116480128755

/-! ## A127100.P18293406153067975005

`A197309(record[A343371(n)])`
-/

namespace A127100.P18293406153067975005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197309 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127100.P18293406153067975005

/-! ## A127100.P4072432397698239364

`A197309(A067593(n+1))`
-/

namespace A127100.P4072432397698239364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197309 (A067593 (n + 1)).toNat

end

end A127100.P4072432397698239364

/-!
# A127101: Numbers k such that k^2 divides 9^k - 1.

The programs for A127101, there is no canonical definition to state claims against.
-/

/-! ## A127101.P2186306253871970325

`∩[A068382(n+1), A177909(n+1)]`
-/

namespace A127101.P2186306253871970325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127101.P2186306253871970325

/-! ## A127101.P7007261248280078945

`A177909(lt[A059791(n+1), A059772(n+2)])`
-/

namespace A127101.P7007261248280078945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127101.P7007261248280078945

/-! ## A127101.P6650949618448535237

`A177909(lt[((n-2)/∏{p}[n, #])², 4]%A177243(2*n+5))`
-/

namespace A127101.P6650949618448535237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177909 (Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n : ℤ) (A177243 (2 * n + 5))).toNat

end

end A127101.P6650949618448535237

/-! ## A127101.P10896368401225776768

`A177909(A078779(n+1)%A128394(n+2))`
-/

namespace A127101.P10896368401225776768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177909 (Int.tmod (A078779 (n + 1)) (A128394 (n + 2))).toNat

end

end A127101.P10896368401225776768

/-! ## A127101.P8279689774625621643

`A177909(A078779(n+1))%A141214(3*n+1)`
-/

namespace A127101.P8279689774625621643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177909 (A078779 (n + 1)).toNat) (A141214 (3 * n + 1))

end

end A127101.P8279689774625621643

/-!
# A127102: Numbers k such that k^2 divides 8^k-1.

The programs for A127102, there is no canonical definition to state claims against.
-/

/-! ## A127102.P5165068893875132283

`A177908(∪[A177916(2*(n+1)), A290387(n+1)])`
-/

namespace A127102.P5165068893875132283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177916 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290387 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177908 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A127102.P5165068893875132283

/-! ## A127102.P12494657109030288445

`A177908(A290387(n+1))`
-/

namespace A127102.P12494657109030288445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177908 (A290387 (n + 1)).toNat

end

end A127102.P12494657109030288445

/-! ## A127102.P3008834283948610948

`A177908(∪[A081549(n+1), A033887(n)])`
-/

namespace A127102.P3008834283948610948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177908 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A127102.P3008834283948610948

/-! ## A127102.P10513264373250455234

`A177908(∪[A081549(n+1), A163084(n)])`
-/

namespace A127102.P10513264373250455234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163084 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177908 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A127102.P10513264373250455234

/-! ## A127102.P740231462416391616

`A177908(∪[A081549(n+1), A177914(n+1)])`
-/

namespace A127102.P740231462416391616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177908 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A127102.P740231462416391616

/-!
# A127103: Numbers k such that k^2 divides 3^k-1.

The programs for A127103, there is no canonical definition to state claims against.
-/

/-! ## A127103.P3304726849061232494

`∩[A125774(n+1), A127101(n+1)]`
-/

namespace A127103.P3304726849061232494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127103.P3304726849061232494

/-! ## A127103.P6884058373095219447

`∩[A125774(n+1), A129211(n+1)]`
-/

namespace A127103.P6884058373095219447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127103.P6884058373095219447

/-! ## A127103.P6090651994746299242

`∩[A125774(n+1), A177909(n+1)]`
-/

namespace A127103.P6090651994746299242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127103.P6090651994746299242

/-! ## A127103.P2798491506339367751

`∩[A067945(n+1), A129211(n+1)]`
-/

namespace A127103.P2798491506339367751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127103.P2798491506339367751

/-! ## A127103.P10654999991349601419

`∩[A067945(n+1), A125774(n+1)]`
-/

namespace A127103.P10654999991349601419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127103.P10654999991349601419

/-!
# A127104: Numbers k such that k^2 divides 4^k-1.

The programs for A127104, there is no canonical definition to state claims against.
-/

/-! ## A127104.P8809590026197572817

`∩[A129212(n+1), A323203(n+1)]`
-/

namespace A127104.P8809590026197572817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127104.P8809590026197572817

/-! ## A127104.P10523588587869217056

`∩[A014945(n+1), A128396(n+1)]`
-/

namespace A127104.P10523588587869217056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127104.P10523588587869217056

/-! ## A127104.P1601059283259373190

`∩[A128396(n+1), A323203(n+1)]`
-/

namespace A127104.P1601059283259373190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127104.P1601059283259373190

/-! ## A127104.P16343544475667794648

`∩[A128396(n+1), A125227(n+3)]`
-/

namespace A127104.P16343544475667794648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127104.P16343544475667794648

/-! ## A127104.P2838669313430432764

`∩[A014945(n+1), A129212(n+1)]`
-/

namespace A127104.P2838669313430432764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127104.P2838669313430432764

/-!
# A127105: Numbers k such that k^2 divides 5^k-1.

The programs for A127105, there is no canonical definition to state claims against.
-/

/-! ## A127105.P10164420804871604835

`∩[A125775(n+1), A177905(n+1)]`
-/

namespace A127105.P10164420804871604835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127105.P10164420804871604835

/-! ## A127105.P1351370890982179661

`∩[A067946(n+1), A177905(n+1)]`
-/

namespace A127105.P1351370890982179661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127105.P1351370890982179661

/-! ## A127105.P66163596044072634

`∩[A067946(n+1), A125775(n+1)]`
-/

namespace A127105.P66163596044072634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127105.P66163596044072634

/-! ## A127105.P13349087074175652936

`record[abs(A009531(A125775(n+1)))]`
-/

namespace A127105.P13349087074175652936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009531 (A125775 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127105.P13349087074175652936

/-! ## A127105.P9691078591573788720

`∩[A067946(n+1), A078779(n+1)]`
-/

namespace A127105.P9691078591573788720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127105.P9691078591573788720

/-!
# A127106: Numbers k such that k^2 divides 6^k-1.

The programs for A127106, there is no canonical definition to state claims against.
-/

/-! ## A127106.P3212417168635426529

`A333500(A052905(n+3))`
-/

namespace A127106.P3212417168635426529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333500 (A052905 (n + 3)).toNat

end

end A127106.P3212417168635426529

/-!
# A127107: Numbers k such that k^2 divides 7^k-1.

The programs for A127107, there is no canonical definition to state claims against.
-/

/-! ## A127107.P15447132918249083463

`∩[A067947(n+1), A177907(n+1)]`
-/

namespace A127107.P15447132918249083463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127107.P15447132918249083463

/-! ## A127107.P4927403352248964933

`∑[∏{e}[A326829(n)², #]]`
-/

namespace A127107.P4927403352248964933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326829 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127107.P4927403352248964933

/-! ## A127107.P17203049375366657985

`lt[A302029(n+1), 10]+1`
-/

namespace A127107.P17203049375366657985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A127107.P17203049375366657985

/-! ## A127107.P15067709218830588065

`∑[2^A001221(C(C(n, 3), 3)+1)]`
-/

namespace A127107.P15067709218830588065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (Nat.choose (Nat.choose n 3) 3 + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127107.P15067709218830588065

/-! ## A127107.P4479294860392018551

`A370809(xor(∑[n+2]+4, ∏{e}[n+1, #]))`
-/

namespace A127107.P4479294860392018551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370809 (Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j + 4) (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A127107.P4479294860392018551

/-!
# A127109: n! in base 5.

The programs for A127109, there is no canonical definition to state claims against.
-/

/-! ## A127109.P11184212963110569594

`A007091(n!)`
-/

namespace A127109.P11184212963110569594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (Nat.factorial n)

end

end A127109.P11184212963110569594

/-! ## A127109.P2570323161373159096

`A014263(n!+1)/2`
-/

namespace A127109.P2570323161373159096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (Nat.factorial n + 1) : ℚ) / 2

end

end A127109.P2570323161373159096

/-! ## A127109.P17786856480501897667

`A007091(∏[round(1/acot(n))])`
-/

namespace A127109.P17786856480501897667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127109.P17786856480501897667

/-! ## A127109.P6268252471131644052

`A007091(∏[ceil(abs(γ-n))])`
-/

namespace A127109.P6268252471131644052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127109.P6268252471131644052

/-!
# A127110: n! in base 3.

The programs for A127110, there is no canonical definition to state claims against.
-/

/-! ## A127110.P3862227102933527580

`A007089(n!)`
-/

namespace A127110.P3862227102933527580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (Nat.factorial n)

end

end A127110.P3862227102933527580

/-! ## A127110.P5136426140069375853

`A343810(n!)/4`
-/

namespace A127110.P5136426140069375853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (Nat.factorial n) : ℚ) / 4

end

end A127110.P5136426140069375853

/-! ## A127110.P18169998504148976534

`A007089(∏[round(1/acot(n))])`
-/

namespace A127110.P18169998504148976534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127110.P18169998504148976534

/-! ## A127110.P11667892055036926487

`A007089(∏[ceil(abs(γ-n))])`
-/

namespace A127110.P11667892055036926487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127110.P11667892055036926487

/-!
# A127111: a(n) = (n+1)! - (n)!!.

The programs for A127111, the canonical program `A127111.P17464411461334883638` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127111 has offset 0).

The definition of A127111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127111.P17464411461334883638

`A000142(n+1)-A006882(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127111

/-- `A000142(n+1)-A006882(n)` -/
def P17464411461334883638.Spec : Prop :=
  ∀ n, P17464411461334883638.a n = A127111 n

theorem P17464411461334883638.correct : P17464411461334883638.Spec := by
  intro n
  simp only [A127111]

end A127111

/-! ## A127111.P4448801382511125903

`n*(a(n-2)+n!)` with `a(0)=0, a(1)=1`
-/

namespace A127111.P4448801382511125903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  n * (a (n - 2) + Nat.factorial n)

end

end A127111.P4448801382511125903

namespace A127111

/-- `n*(a(n-2)+n!)` -/
def P4448801382511125903.Spec : Prop :=
  ∀ n, (P4448801382511125903.a n : ℤ) = A127111 n

end A127111

/-! ## A127111.P7760112986000510822

`(n+1)!-∏[n/a(n-1)]` with `a(0)=1`
-/

namespace A127111.P7760112986000510822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127111.P7760112986000510822

namespace A127111

/-- `(n+1)!-∏[n/a(n-1)]` -/
def P7760112986000510822.Spec : Prop :=
  ∀ n, P7760112986000510822.a n = (A127111 n : ℚ)

end A127111

/-! ## A127111.P11773857997637187562

`∏[n+1]-∏[n/a(n-1)]` with `a(0)=1`
-/

namespace A127111.P11773857997637187562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ∏ j ∈ Finset.range (n + 1), f2 j

end

end A127111.P11773857997637187562

namespace A127111

/-- `∏[n+1]-∏[n/a(n-1)]` -/
def P11773857997637187562.Spec : Prop :=
  ∀ n, P11773857997637187562.a n = (A127111 n : ℚ)

end A127111

/-! ## A127111.P7447950364563391113

`record[Δ[A129116(n+1)]]`
-/

namespace A127111.P7447950364563391113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127111.P7447950364563391113

namespace A127111

/-- `record[Δ[A129116(n+1)]]` -/
def P7447950364563391113.Spec : Prop :=
  ∀ n, P7447950364563391113.a n = A127111 n

end A127111

/-! ## A127111.P5896271213569213829

`(n+1)!-(A128882(n)+1)`
-/

namespace A127111.P5896271213569213829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - (A128882 n + 1)

end

end A127111.P5896271213569213829

namespace A127111

/-- `(n+1)!-(A128882(n)+1)` -/
def P5896271213569213829.Spec : Prop :=
  ∀ n, P5896271213569213829.a n = A127111 n

end A127111

/-! ## A127111.P15517042036026407363

`A006882(n)*A128882(n+1)`
-/

namespace A127111.P15517042036026407363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A128882 (n + 1)

end

end A127111.P15517042036026407363

namespace A127111

/-- `A006882(n)*A128882(n+1)` -/
def P15517042036026407363.Spec : Prop :=
  ∀ n, P15517042036026407363.a n = A127111 n

end A127111

/-! ## A127111.P16935185355557063710

`A110903(n)+n*A000142(n)`
-/

namespace A127111.P16935185355557063710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110903 n + (n : ℤ) * A000142 n

end

end A127111.P16935185355557063710

namespace A127111

/-- `A110903(n)+n*A000142(n)` -/
def P16935185355557063710.Spec : Prop :=
  ∀ n, P16935185355557063710.a n = A127111 n

end A127111

/-! ## A127111.P288633818871978412

`A000142(n+1)-sqrt(A184877(n))`
-/

namespace A127111.P288633818871978412
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℝ) - Real.sqrt (A184877 n : ℝ)

end

end A127111.P288633818871978412

namespace A127111

/-- `A000142(n+1)-sqrt(A184877(n))` -/
def P288633818871978412.Spec : Prop :=
  ∀ n, P288633818871978412.a n = (A127111 n : ℝ)

end A127111

/-! ## A127111.P13434738091893634671

`A005165(n+1)+A005165(n)-A006882(n)`
-/

namespace A127111.P13434738091893634671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005165 (n + 1) + (A005165 n - A006882 n)

end

end A127111.P13434738091893634671

namespace A127111

/-- `A005165(n+1)+A005165(n)-A006882(n)` -/
def P13434738091893634671.Spec : Prop :=
  ∀ n, P13434738091893634671.a n = A127111 n

end A127111

/-!
# A127112: n! in base 4.

The programs for A127112, there is no canonical definition to state claims against.
-/

/-! ## A127112.P7982250356892276761

`A007090(n!)`
-/

namespace A127112.P7982250356892276761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (Nat.factorial n)

end

end A127112.P7982250356892276761

/-! ## A127112.P800510921502885468

`A007090(∏[round(1/acot(n))])`
-/

namespace A127112.P800510921502885468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127112.P800510921502885468

/-! ## A127112.P6464229972016520846

`A007090(∏[ceil(abs(γ-n))])`
-/

namespace A127112.P6464229972016520846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127112.P6464229972016520846

/-! ## A127112.P4929510542231880992

`and(-1, A007090(-∏[n-C(2, n+2)]))`
-/

namespace A127112.P4929510542231880992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007090 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A127112.P4929510542231880992

/-!
# A127113: n! in base 6.

The programs for A127113, there is no canonical definition to state claims against.
-/

/-! ## A127113.P11233996814576631398

`A007092(A000142(n))`
-/

namespace A127113.P11233996814576631398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A000142 n).toNat

end

end A127113.P11233996814576631398

/-! ## A127113.P67404173258736991

`A007092(n!)`
-/

namespace A127113.P67404173258736991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (Nat.factorial n)

end

end A127113.P67404173258736991

/-! ## A127113.P13811140874269419695

`A007092(∏[round(1/acot(n))])`
-/

namespace A127113.P13811140874269419695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127113.P13811140874269419695

/-! ## A127113.P13098803697974332100

`A007092(∏[ceil(abs(γ-n))])`
-/

namespace A127113.P13098803697974332100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127113.P13098803697974332100

/-!
# A127114: n! in base 7.

The programs for A127114, there is no canonical definition to state claims against.
-/

/-! ## A127114.P5984158007765651018

`A007093(n!)`
-/

namespace A127114.P5984158007765651018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Nat.factorial n)

end

end A127114.P5984158007765651018

/-! ## A127114.P7773358740709318831

`A007093(∏[round(1/acot(n))])`
-/

namespace A127114.P7773358740709318831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127114.P7773358740709318831

/-! ## A127114.P8555827732020064458

`A007093(∏[ceil(abs(γ-n))])`
-/

namespace A127114.P8555827732020064458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127114.P8555827732020064458

/-! ## A127114.P8250681688456927678

`A007094(A037474(n!))`
-/

namespace A127114.P8250681688456927678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037474 (Nat.factorial n)).toNat

end

end A127114.P8250681688456927678

/-!
# A127115: n! in base 8.

The programs for A127115, there is no canonical definition to state claims against.
-/

/-! ## A127115.P3686862241030333463

`A007094(n!)`
-/

namespace A127115.P3686862241030333463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Nat.factorial n)

end

end A127115.P3686862241030333463

/-! ## A127115.P228256601825733306

`A214678(n!+1)-1`
-/

namespace A127115.P228256601825733306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (Nat.factorial n + 1) - 1

end

end A127115.P228256601825733306

/-! ## A127115.P4519741629579644711

`A007094(∏[round(1/acot(n))])`
-/

namespace A127115.P4519741629579644711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127115.P4519741629579644711

/-! ## A127115.P8389020430265239707

`A007094(∏[ceil(abs(γ-n))])`
-/

namespace A127115.P8389020430265239707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127115.P8389020430265239707

/-!
# A127116: n! in base 9.

The programs for A127116, there is no canonical definition to state claims against.
-/

/-! ## A127116.P5606684489739206884

`A007095(n!)`
-/

namespace A127116.P5606684489739206884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.factorial n)

end

end A127116.P5606684489739206884

/-! ## A127116.P12040467229410377475

`A037479(n!)`
-/

namespace A127116.P12040467229410377475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (Nat.factorial n)

end

end A127116.P12040467229410377475

/-! ## A127116.P4560056167926999156

`A052382(n!+1)-1`
-/

namespace A127116.P4560056167926999156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (Nat.factorial n + 1) - 1

end

end A127116.P4560056167926999156

/-! ## A127116.P7715875261622884325

`A007095(∏[round(1/acot(n))])`
-/

namespace A127116.P7715875261622884325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127116.P7715875261622884325

/-!
# A127118: a(n) = n-th prime * n-th nonprime.

The programs for A127118, the canonical program `A127118.P4587657049897229788` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127118 has offset 1).

The definition of A127118 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127118.P4587657049897229788

`A000040(n+1)*A018252(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127118

/-- `A000040(n+1)*A018252(n+1)` -/
def P4587657049897229788.Spec : Prop :=
  ∀ n, P4587657049897229788.a n = A127118 (n + 1)

theorem P4587657049897229788.correct : P4587657049897229788.Spec := by
  intro n
  simp only [A127118, Nat.add_sub_cancel]

end A127118

/-! ## A127118.P17067415134049708257

`Δ[A051349(n)]*p?[A259153(n)]`
-/

namespace A127118.P17067415134049708257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A127118.P17067415134049708257

namespace A127118

/-- `Δ[A051349(n)]*p?[A259153(n)]` -/
def P17067415134049708257.Spec : Prop :=
  ∀ n, P17067415134049708257.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P6755029251304139410

`A018252(n+1)*Δ[A007504(n)]`
-/

namespace A127118.P6755029251304139410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) * (f1 (n + 1) - f1 n)

end

end A127118.P6755029251304139410

namespace A127118

/-- `A018252(n+1)*Δ[A007504(n)]` -/
def P6755029251304139410.Spec : Prop :=
  ∀ n, P6755029251304139410.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P7509235453480955417

`A000040(n+1)*Δ[A051349(n)]`
-/

namespace A127118.P7509235453480955417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A127118.P7509235453480955417

namespace A127118

/-- `A000040(n+1)*Δ[A051349(n)]` -/
def P7509235453480955417.Spec : Prop :=
  ∀ n, P7509235453480955417.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P2116348551261319494

`Δ[A007504(n)]*A141468(n+2)`
-/

namespace A127118.P2116348551261319494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A141468 (n + 2)

end

end A127118.P2116348551261319494

namespace A127118

/-- `Δ[A007504(n)]*A141468(n+2)` -/
def P2116348551261319494.Spec : Prop :=
  ∀ n, P2116348551261319494.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P353922383008686517

`p?[A259153(n)]*A018252(n+1)`
-/

namespace A127118.P353922383008686517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A018252 (n + 1)

end

end A127118.P353922383008686517

namespace A127118

/-- `p?[A259153(n)]*A018252(n+1)` -/
def P353922383008686517.Spec : Prop :=
  ∀ n, P353922383008686517.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P4167333258491051853

`A000040(n+1)*A141468(n+2)`
-/

namespace A127118.P4167333258491051853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A141468 (n + 2)

end

end A127118.P4167333258491051853

namespace A127118

/-- `A000040(n+1)*A141468(n+2)` -/
def P4167333258491051853.Spec : Prop :=
  ∀ n, P4167333258491051853.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P8457689893475698650

`sqrt(A001248(n+1))*A018252(n+1)`
-/

namespace A127118.P8457689893475698650
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A018252 (n + 1) : ℝ)

end

end A127118.P8457689893475698650

namespace A127118

/-- `sqrt(A001248(n+1))*A018252(n+1)` -/
def P8457689893475698650.Spec : Prop :=
  ∀ n, P8457689893475698650.a n = (A127118 (n + 1) : ℝ)

end A127118

/-! ## A127118.P13144905949369304887

`sqrt(A062312(n+1))*A000040(n+1)`
-/

namespace A127118.P13144905949369304887
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062312 (n + 1) : ℝ) * (A000040 (n + 1) : ℝ)

end

end A127118.P13144905949369304887

namespace A127118

/-- `sqrt(A062312(n+1))*A000040(n+1)` -/
def P13144905949369304887.Spec : Prop :=
  ∀ n, P13144905949369304887.a n = (A127118 (n + 1) : ℝ)

end A127118

/-! ## A127118.P1721135226408768690

`A000040(n+1)*∑[A054546(n+1)]`
-/

namespace A127118.P1721135226408768690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127118.P1721135226408768690

namespace A127118

/-- `A000040(n+1)*∑[A054546(n+1)]` -/
def P1721135226408768690.Spec : Prop :=
  ∀ n, P1721135226408768690.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P10780389840392005009

`A018252(n+1)*∑[A054541(n+1)]`
-/

namespace A127118.P10780389840392005009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127118.P10780389840392005009

namespace A127118

/-- `A018252(n+1)*∑[A054541(n+1)]` -/
def P10780389840392005009.Spec : Prop :=
  ∀ n, P10780389840392005009.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P9028416295745375754

`A018252(n+1)*p?[A090252(n+1)]`
-/

namespace A127118.P9028416295745375754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127118.P9028416295745375754

namespace A127118

/-- `A018252(n+1)*p?[A090252(n+1)]` -/
def P9028416295745375754.Spec : Prop :=
  ∀ n, P9028416295745375754.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P11686425433848641849

`(A006093(n+1)+1)*A018252(n+1)`
-/

namespace A127118.P11686425433848641849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A018252 (n + 1)

end

end A127118.P11686425433848641849

namespace A127118

/-- `(A006093(n+1)+1)*A018252(n+1)` -/
def P11686425433848641849.Spec : Prop :=
  ∀ n, P11686425433848641849.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P5376294201443077232

`(A008864(n+1)-1)*A018252(n+1)`
-/

namespace A127118.P5376294201443077232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A018252 (n + 1)

end

end A127118.P5376294201443077232

namespace A127118

/-- `(A008864(n+1)-1)*A018252(n+1)` -/
def P5376294201443077232.Spec : Prop :=
  ∀ n, P5376294201443077232.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P3075640797820399326

`A000040(n+1)*A222307(2*n+1)`
-/

namespace A127118.P3075640797820399326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A222307 (2 * n + 1)

end

end A127118.P3075640797820399326

namespace A127118

/-- `A000040(n+1)*A222307(2*n+1)` -/
def P3075640797820399326.Spec : Prop :=
  ∀ n, P3075640797820399326.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P3597728472718797132

`(A014692(n+1)+n)*A018252(n+1)`
-/

namespace A127118.P3597728472718797132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A018252 (n + 1)

end

end A127118.P3597728472718797132

namespace A127118

/-- `(A014692(n+1)+n)*A018252(n+1)` -/
def P3597728472718797132.Spec : Prop :=
  ∀ n, P3597728472718797132.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P18317012383930024808

`(A007504(n+1)-A007504(n))*A141468(n+2)`
-/

namespace A127118.P18317012383930024808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A141468 (n + 2)

end

end A127118.P18317012383930024808

namespace A127118

/-- `(A007504(n+1)-A007504(n))*A141468(n+2)` -/
def P18317012383930024808.Spec : Prop :=
  ∀ n, P18317012383930024808.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P3967900121729933028

`(A000040(n+1)-A014237(n+1))*A000040(n+1)`
-/

namespace A127118.P3967900121729933028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A014237 (n + 1)) * A000040 (n + 1)

end

end A127118.P3967900121729933028

namespace A127118

/-- `(A000040(n+1)-A014237(n+1))*A000040(n+1)` -/
def P3967900121729933028.Spec : Prop :=
  ∀ n, P3967900121729933028.a n = A127118 (n + 1)

end A127118

/-! ## A127118.P343138397806043755

`(A022797(n+1)-A000040(n+1))*A000040(n+1)`
-/

namespace A127118.P343138397806043755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022797 (n + 1) - A000040 (n + 1)) * A000040 (n + 1)

end

end A127118.P343138397806043755

namespace A127118

/-- `(A022797(n+1)-A000040(n+1))*A000040(n+1)` -/
def P343138397806043755.Spec : Prop :=
  ∀ n, P343138397806043755.a n = A127118 (n + 1)

end A127118

/-!
# A127120: Column limit of A127119.

The programs for A127120, there is no canonical definition to state claims against.
-/

/-! ## A127120.P7259142234589464019

`A127119(∑[4*n]+1)`
-/

namespace A127120.P7259142234589464019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127119 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A127120.P7259142234589464019

/-! ## A127120.P14934923332944848732

`or(A127119((n+1)²+n²), A151810(n))`
-/

namespace A127120.P14934923332944848732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127119 ((n + 1) ^ 2 + n ^ 2)) (A151810 n)

end

end A127120.P14934923332944848732

/-! ## A127120.P15723039631671215732

`-A127119(A001844(n))*A308778(n²)`
-/

namespace A127120.P15723039631671215732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A127119 (A001844 n).toNat * A308778 (n ^ 2))

end

end A127120.P15723039631671215732

/-! ## A127120.P4632110287315019533

`A127119(A001844(n))+A066442(A127125(n+1))`
-/

namespace A127120.P4632110287315019533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127119 (A001844 n).toNat + A066442 (A127125 (n + 1)).toNat

end

end A127120.P4632110287315019533

/-! ## A127120.P5265644488154993144

`A127119(A001844(n))+A102676(A329697(n+1))`
-/

namespace A127120.P5265644488154993144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127119 (A001844 n).toNat + A102676 (A329697 (n + 1)).toNat

end

end A127120.P5265644488154993144

/-!
# A127121: Number of endofunctions on a set, where the multiset of indegrees forms the n-th partition in Mathematica order (ignoring 0's).

The programs for A127121, there is no canonical definition to state claims against.
-/

/-! ## A127121.P5374584170384044414

`or(A054989(A329044(n+1)), A066657(n))`
-/

namespace A127121.P5374584170384044414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054989 (A329044 (n + 1)).toNat) (A066657 n)

end

end A127121.P5374584170384044414

/-! ## A127121.P7947273287072892574

`A001222(xor(A055204(n+2), A130003(n+1)))`
-/

namespace A127121.P7947273287072892574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A055204 (n + 2)) (A130003 (n + 1))).toNat

end

end A127121.P7947273287072892574

/-!
# A127122: Row limit of A127121.

The programs for A127122, there is no canonical definition to state claims against.
-/

/-! ## A127122.P3007258309625691294

`A127121(lt[A011763(n+1), A167222(n)])`
-/

namespace A127122.P3007258309625691294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127121 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127122.P3007258309625691294

/-!
# A127123: Triangle read by rows: T(n,k) = number of endofunctions on n points with k points in the image.

The programs for A127123, there is no canonical definition to state claims against.
-/

/-! ## A127123.P13886887927858498612

`A089282(A101820(n))`
-/

namespace A127123.P13886887927858498612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089282 (A101820 n).toNat

end

end A127123.P13886887927858498612

/-! ## A127123.P17830619576537757720

`A109129(A373628(n)+1)`
-/

namespace A127123.P17830619576537757720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A373628 n + 1).toNat

end

end A127123.P17830619576537757720

/-! ## A127123.P12093905363375940980

`∏{e}[A038208(A308737(n)), #]`
-/

namespace A127123.P12093905363375940980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 (A308737 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A127123.P12093905363375940980

/-! ## A127123.P13836383093163379257

`A058063(A022188(n))+A026820(n+1)`
-/

namespace A127123.P13836383093163379257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058063 (A022188 n).toNat + A026820 (n + 1)

end

end A127123.P13836383093163379257

/-!
# A127126: Triangle, read by rows, where the g.f. of column k, C_k(x), is defined by the recurrence: C_k(x) = [ 1 + Sum_{n>=k+1} C_n(x)*x^(n-k) ]^(k+1) for k>=0.

The programs for A127126, there is no canonical definition to state claims against.
-/

/-! ## A127126.P14454159770337424807

`A154921(n)+A010893(A094587(n))`
-/

namespace A127126.P14454159770337424807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n + A010893 ((A094587 n).toNat + 13)

end

end A127126.P14454159770337424807

/-! ## A127126.P1752363950945210423

`A154921(n)+A010893(A104557(n))`
-/

namespace A127126.P1752363950945210423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n + A010893 ((A104557 n).toNat + 13)

end

end A127126.P1752363950945210423

/-! ## A127126.P15943658572045008459

`A154921(n)+A028961(A008292(2*(n+2)))`
-/

namespace A127126.P15943658572045008459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n + A028961 (A008292 (2 * (n + 2))).toNat

end

end A127126.P15943658572045008459

/-! ## A127126.P6777930736363218655

`A154921(n)+∑{e}[A201432(3*n+1)+1, 2%#]`
-/

namespace A127126.P6777930736363218655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (3 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, 2 % Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A127126.P6777930736363218655

/-! ## A127126.P15506891133282844610

`A335446(A270831(n+1))+A154921(n)`
-/

namespace A127126.P15506891133282844610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A270831 (n + 1)).toNat + A154921 n

end

end A127126.P15506891133282844610

/-!
# A127127: Column 0 of triangle A127126.

The programs for A127127, there is no canonical definition to state claims against.
-/

/-! ## A127127.P10313096417892472710

`A127126(∑[n])`
-/

namespace A127127.P10313096417892472710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127127.P10313096417892472710

/-! ## A127127.P17052233263685318110

`or(char[1], A127126(A000217(n)))`
-/

namespace A127127.P17052233263685318110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A127126 (A000217 n).toNat)

end

end A127127.P17052233263685318110

/-! ## A127127.P13901981162238731018

`gcd(A000038(n), A127126(A000217(n)))`
-/

namespace A127127.P13901981162238731018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127126 (A000217 n).toNat)

end

end A127127.P13901981162238731018

/-! ## A127127.P10585549073628891935

`lcm(A033999(n), A127126(A000217(n)))`
-/

namespace A127127.P10585549073628891935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A127126 (A000217 n).toNat)

end

end A127127.P10585549073628891935

/-! ## A127127.P15404147047530797179

`A127126(A000217(n))+A000038(2*n+3)`
-/

namespace A127127.P15404147047530797179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (A000217 n).toNat + A000038 (2 * n + 3)

end

end A127127.P15404147047530797179

/-! ## A127127.P7409058489579934883

`A034947(A017089(n))*A127126(A000217(n))`
-/

namespace A127127.P7409058489579934883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A017089 n).toNat * A127126 (A000217 n).toNat

end

end A127127.P7409058489579934883

/-! ## A127127.P5095433551282940388

`A127126(A000217(n))/A124328(A000217(2*n+5))`
-/

namespace A127127.P5095433551282940388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127126 (A000217 n).toNat : ℚ) / (A124328 (A000217 (2 * n + 5)).toNat : ℚ)

end

end A127127.P5095433551282940388

/-!
# A127128: Column 1 of triangle A127126.

The programs for A127128, there is no canonical definition to state claims against.
-/

/-! ## A127128.P11371290988062900243

`A127126(∑[n+1]+1)`
-/

namespace A127128.P11371290988062900243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A127128.P11371290988062900243

/-! ## A127128.P13570548774848766599

`record[A127126(A014132(n+1))]`
-/

namespace A127128.P13570548774848766599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127128.P13570548774848766599

/-! ## A127128.P9824306447299920364

`record[A127126(gcd(n, A039991(n)))]`
-/

namespace A127128.P9824306447299920364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (Int.gcd (n : ℤ) (A039991 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127128.P9824306447299920364

/-! ## A127128.P18350568157688774998

`record[and(1, A099627(n))*A127126(n)]`
-/

namespace A127128.P18350568157688774998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A099627 n) * A127126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127128.P18350568157688774998

/-! ## A127128.P8362804613072788275

`record[A127126(A000124(A008615(n)))]`
-/

namespace A127128.P8362804613072788275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (A000124 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127128.P8362804613072788275

/-! ## A127128.P13927885234417951808

`record[A127126(A000124(A078898(n)))]`
-/

namespace A127128.P13927885234417951808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (A000124 (A078898 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127128.P13927885234417951808

/-!
# A127129: Column 2 of triangle A127126.

The programs for A127129, there is no canonical definition to state claims against.
-/

/-! ## A127129.P15416956729559816961

`A127126(∑[n+2]+3)`
-/

namespace A127129.P15416956729559816961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A127129.P15416956729559816961

/-! ## A127129.P8195111811996801778

`record[A127126(A133263(n))]`
-/

namespace A127129.P8195111811996801778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127129.P8195111811996801778

/-! ## A127129.P12385397126612680276

`record[A127126(A000124(n)+1)]`
-/

namespace A127129.P12385397126612680276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127129.P12385397126612680276

/-! ## A127129.P13352651903775051720

`record[A127126(A022856(n+1))]`
-/

namespace A127129.P13352651903775051720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127129.P13352651903775051720

/-! ## A127129.P1283632184000078053

`record[A127126(A089071(n+1))]`
-/

namespace A127129.P1283632184000078053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127129.P1283632184000078053

/-!
# A127130: Column 3 of triangle A127126.

The programs for A127130, there is no canonical definition to state claims against.
-/

/-! ## A127130.P8503511783342749817

`A000007(n)+A127132(n+1)-A127133(n)`
-/

namespace A127130.P8503511783342749817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A127132 (n + 1) - A127133 n)

end

end A127130.P8503511783342749817

/-! ## A127130.P2984358070242073694

`A127126(∑[n+3]+6)`
-/

namespace A127130.P2984358070242073694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A127130.P2984358070242073694

/-! ## A127130.P4860481652801099739

`A127126(A167614(n+2))+A055641(2*n+1)`
-/

namespace A127130.P4860481652801099739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (A167614 (n + 2)).toNat + A055641 (2 * n + 1)

end

end A127130.P4860481652801099739

/-! ## A127130.P7704883530454733125

`A127132(n+1)-A127133(n)%A127134(n)`
-/

namespace A127130.P7704883530454733125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127132 (n + 1) - Int.tmod (A127133 n) (A127134 n)

end

end A127130.P7704883530454733125

/-!
# A127131: Self-convolution square-root of column 1 (A127128) of triangle A127126.

The programs for A127131, there is no canonical definition to state claims against.
-/

/-! ## A127131.P17777386351732856192

`A005374(A215916(n)+A122129(n))`
-/

namespace A127131.P17777386351732856192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A215916 n + A122129 n).toNat

end

end A127131.P17777386351732856192

/-! ## A127131.P10313827835107755284

`A083355(n)-A352128(A000108(n))`
-/

namespace A127131.P10313827835107755284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083355 n - A352128 (A000108 n).toNat

end

end A127131.P10313827835107755284

/-!
# A127132: Self-convolution cube-root of column 2 (A127129) of triangle A127126.

The programs for A127132, there is no canonical definition to state claims against.
-/

/-! ## A127132.P10319488571300349878

`A090616(A352914(n)+3)`
-/

namespace A127132.P10319488571300349878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090616 (A352914 n + 3).toNat

end

end A127132.P10319488571300349878

/-! ## A127132.P3658970488456390483

`A004525(A352914(n)-A000065(n))`
-/

namespace A127132.P3658970488456390483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A352914 n - A000065 n).toNat

end

end A127132.P3658970488456390483

/-!
# A127133: Self-convolution 4th root of column 3 (A127130) of triangle A127126.

The programs for A127133, there is no canonical definition to state claims against.
-/

/-! ## A127133.P4897249225371610462

`A127132(n+1)-A127130(n+3)%A127132(n+1)`
-/

namespace A127133.P4897249225371610462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127132 (n + 1) - Int.tmod (A127130 (n + 3)) (A127132 (n + 1))

end

end A127133.P4897249225371610462

/-!
# A127134: Central terms of triangle A127126; a(n) = A127126(2n,n).

The programs for A127134, there is no canonical definition to state claims against.
-/

/-! ## A127134.P12146729743381218415

`(n+1)*A127135(n)`
-/

namespace A127134.P12146729743381218415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127135 n

end

end A127134.P12146729743381218415

/-! ## A127134.P2808182662536788707

`A127126(∑[4*n])`
-/

namespace A127134.P2808182662536788707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127126 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127134.P2808182662536788707

/-! ## A127134.P11973260168487754273

`record[gcd(A080232(n), A127126(n))]`
-/

namespace A127134.P11973260168487754273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080232 n) (A127126 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127134.P11973260168487754273

/-! ## A127134.P16101755510184724748

`A127126(A046092(n))^A178334(n)`
-/

namespace A127134.P16101755510184724748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127126 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A127134.P16101755510184724748

/-! ## A127134.P15086615136220246247

`A127126(A046092(n))^A178489(n)`
-/

namespace A127134.P15086615136220246247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127126 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A127134.P15086615136220246247

/-!
# A127135: Derived from the central terms (A127134) of triangle A127126; a(n) = A127126(2n,n)/(n+1).

The programs for A127135, there is no canonical definition to state claims against.
-/

/-! ## A127135.P16486912250563435210

`A127134(n)/(n+1)`
-/

namespace A127135.P16486912250563435210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127134 n : ℚ) / (n + 1 : ℚ)

end

end A127135.P16486912250563435210

/-! ## A127135.P2692540361381371014

`floor(A127134(n)/A029579(2*n))`
-/

namespace A127135.P2692540361381371014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127134 n : ℚ) / (A029579 (2 * n) : ℚ)⌋

end

end A127135.P2692540361381371014

/-! ## A127135.P15248091350540649581

`A127126(∑[4*n])/(n+1)`
-/

namespace A127135.P15248091350540649581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127126 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A127135.P15248091350540649581

/-! ## A127135.P8005291722738342481

`record[gcd(A080232(n), A127126(n))]/(n+1)`
-/

namespace A127135.P8005291722738342481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080232 n) (A127126 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A127135.P8005291722738342481

/-! ## A127135.P12524070785763502281

`A127126(A046092(n))^A178489(n)/(n+1)`
-/

namespace A127135.P12524070785763502281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127126 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ) / (n + 1 : ℚ)

end

end A127135.P12524070785763502281

/-!
# A127137: Define an array by Q(m, 0) = 1, Q(m, 1) = 1; Q(m, 2k) = (m - 2k + 1)*Q(m+1, 2k-1) - (2k-1)*Q(m+2, 2k-2), m*Q(m, 2k+1) = (m - 2k)*Q(m+1, 2k) - 2k(m+1)*Q(m+2, 2k-1). Sequence gives Q(0,n).

The programs for A127137, there is no canonical definition to state claims against.
-/

/-! ## A127137.P13465642338321945144

`A127080(∑[n]+n)`
-/

namespace A127137.P13465642338321945144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A127137.P13465642338321945144

/-! ## A127137.P4217071535615861960

`A127080(A000096(n))%A098406(n)`
-/

namespace A127137.P4217071535615861960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127080 (A000096 n).toNat) (A098406 n)

end

end A127137.P4217071535615861960

/-! ## A127137.P16223372381423119797

`or(A000007(n), A127080(A000096(n)))`
-/

namespace A127137.P16223372381423119797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A127080 (A000096 n).toNat)

end

end A127137.P16223372381423119797

/-! ## A127137.P2425697470949372195

`or(A000035(n), A127080(A000096(n)))`
-/

namespace A127137.P2425697470949372195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A127080 (A000096 n).toNat)

end

end A127137.P2425697470949372195

/-! ## A127137.P17480685211012554591

`A007318(∑[n])*A127080(A000096(n))`
-/

namespace A127137.P17480685211012554591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A127080 (A000096 n).toNat

end

end A127137.P17480685211012554591

/-! ## A127137.P7283731916492009826

`A127080(A000096(n))+A080367(A277698(n+1)²)`
-/

namespace A127137.P7283731916492009826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A000096 n).toNat + A080367 (A277698 (n + 1) ^ 2).toNat

end

end A127137.P7283731916492009826

/-!
# A127138: Q(1,n), where Q(m,k) is defined in A127080 and A127137.

The programs for A127138, there is no canonical definition to state claims against.
-/

/-! ## A127138.P411785076897377654

`A127080(∑[n+2]-1)`
-/

namespace A127138.P411785076897377654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A127138.P411785076897377654

/-! ## A127138.P17368858847667067160

`or(char[1], A127080(∑[n+1]+n))`
-/

namespace A127138.P17368858847667067160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A127080 (∑ j ∈ Finset.range (n + 1), f2 j + n))

end

end A127138.P17368858847667067160

/-! ## A127138.P2547548510569324900

`A127080(∑[n+1]+n)+A002262(∑[n])`
-/

namespace A127138.P2547548510569324900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A002262 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A127138.P2547548510569324900

/-! ## A127138.P16371776301733587287

`A127080(∑[n+1]+n)*A127080(∑[n])`
-/

namespace A127138.P16371776301733587287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (∑ j ∈ Finset.range (n + 1), f1 j + n) * A127080 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A127138.P16371776301733587287

/-! ## A127138.P17655835153518845749

`A127080(∑[n+1]+n)^A013609(∑[n])`
-/

namespace A127138.P17655835153518845749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127080 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) ^ (A013609 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A127138.P17655835153518845749

/-! ## A127138.P11815148240804495506

`A127080(∑[n+1]+n)^A014963(A016825(n))`
-/

namespace A127138.P11815148240804495506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127080 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) ^ (A014963 (A016825 n).toNat : ℤ)

end

end A127138.P11815148240804495506

/-! ## A127138.P1414587532548851065

`A142150(A002144(n+1))+A127080(∑[n+1]+n)`
-/

namespace A127138.P1414587532548851065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A002144 (n + 1)).toNat + A127080 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A127138.P1414587532548851065

/-! ## A127138.P4894365946092367702

`A142150(A002476(n+1))+A127080(∑[n+1]+n)`
-/

namespace A127138.P4894365946092367702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A002476 (n + 1)).toNat + A127080 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A127138.P4894365946092367702

/-! ## A127138.P12033391229775524643

`A142150(A007520(n+1))+A127080(∑[n+1]+n)`
-/

namespace A127138.P12033391229775524643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007520 (n + 1)).toNat + A127080 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A127138.P12033391229775524643

/-! ## A127138.P10026987789305620412

`A127080(∑[n+1]+n)/A001222(A000928(n+1))`
-/

namespace A127138.P10026987789305620412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127080 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / (A001222 (A000928 (n + 1)).toNat : ℚ)

end

end A127138.P10026987789305620412

/-! ## A127138.P5938171695473793298

`A127080(∑[n+1]+n)^A001222(A008578(n+1))`
-/

namespace A127138.P5938171695473793298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127080 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A127138.P5938171695473793298

/-! ## A127138.P6363603104928329109

`A206958(A269100(n))+A127080(A034856(n+1))`
-/

namespace A127138.P6363603104928329109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206958 (A269100 n).toNat + A127080 (A034856 (n + 1)).toNat

end

end A127138.P6363603104928329109

/-!
# A127139: Inverse triangle of A126988.

The programs for A127139, the canonical program `A127139.P9104165502177887580` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127139 has offset 1).

The definition of A127139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127139.P9104165502177887580

`∑{d}[A126988(n+1), A046692(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127139

/-- `∑{d}[A126988(n+1), A046692(#)]` -/
def P9104165502177887580.Spec : Prop :=
  ∀ n, P9104165502177887580.a n = A127139 (n + 1)

theorem P9104165502177887580.correct : P9104165502177887580.Spec := by
  intro n
  simp only [A127139, Nat.add_sub_cancel]

end A127139

/-! ## A127139.P15595756060326509103

`A010766(n+1)*A054525(n+1)`
-/

namespace A127139.P15595756060326509103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A054525 (n + 1)

end

end A127139.P15595756060326509103

namespace A127139

/-- `A010766(n+1)*A054525(n+1)` -/
def P15595756060326509103.Spec : Prop :=
  ∀ n, P15595756060326509103.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P16329771540566470291

`A049834(n+1)*A054525(n+1)`
-/

namespace A127139.P16329771540566470291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A054525 (n + 1)

end

end A127139.P16329771540566470291

namespace A127139

/-- `A049834(n+1)*A054525(n+1)` -/
def P16329771540566470291.Spec : Prop :=
  ∀ n, P16329771540566470291.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P9909803127030877932

`A051537(n+1)*A054525(n+1)`
-/

namespace A127139.P9909803127030877932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A054525 (n + 1)

end

end A127139.P9909803127030877932

namespace A127139

/-- `A051537(n+1)*A054525(n+1)` -/
def P9909803127030877932.Spec : Prop :=
  ∀ n, P9909803127030877932.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P5423121876751680840

`A054525(n+1)*A054531(n+1)`
-/

namespace A127139.P5423121876751680840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A054531 (n + 1)

end

end A127139.P5423121876751680840

namespace A127139

/-- `A054525(n+1)*A054531(n+1)` -/
def P5423121876751680840.Spec : Prop :=
  ∀ n, P5423121876751680840.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P2417723845330031146

`A054525(n+1)*A059026(n+1)`
-/

namespace A127139.P2417723845330031146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A059026 (n + 1)

end

end A127139.P2417723845330031146

namespace A127139

/-- `A054525(n+1)*A059026(n+1)` -/
def P2417723845330031146.Spec : Prop :=
  ∀ n, P2417723845330031146.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P15253682688868689351

`A054525(n+1)*A126988(n+1)`
-/

namespace A127139.P15253682688868689351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A126988 (n + 1)

end

end A127139.P15253682688868689351

namespace A127139

/-- `A054525(n+1)*A126988(n+1)` -/
def P15253682688868689351.Spec : Prop :=
  ∀ n, P15253682688868689351.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P7089896327912891428

`A054525(n+1)*A219158(n+1)`
-/

namespace A127139.P7089896327912891428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A219158 (n + 1)

end

end A127139.P7089896327912891428

namespace A127139

/-- `A054525(n+1)*A219158(n+1)` -/
def P7089896327912891428.Spec : Prop :=
  ∀ n, P7089896327912891428.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P11886329379021808286

`A054525(n+1)*A234575(n+1)`
-/

namespace A127139.P11886329379021808286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A234575 (n + 1)

end

end A127139.P11886329379021808286

namespace A127139

/-- `A054525(n+1)*A234575(n+1)` -/
def P11886329379021808286.Spec : Prop :=
  ∀ n, P11886329379021808286.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P11760826429535205660

`A054525(n+1)*A372523(n+1)`
-/

namespace A127139.P11760826429535205660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A372523 (n + 1)

end

end A127139.P11760826429535205660

namespace A127139

/-- `A054525(n+1)*A372523(n+1)` -/
def P11760826429535205660.Spec : Prop :=
  ∀ n, P11760826429535205660.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P7299197400116526306

`A125093(n+1)/A002260(n+1)`
-/

namespace A127139.P7299197400116526306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A127139.P7299197400116526306

namespace A127139

/-- `A125093(n+1)/A002260(n+1)` -/
def P7299197400116526306.Spec : Prop :=
  ∀ n, P7299197400116526306.a n = (A127139 (n + 1) : ℚ)

end A127139

/-! ## A127139.P1793774201865124882

`A125093(n+1)/A050873(n+1)`
-/

namespace A127139.P1793774201865124882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A127139.P1793774201865124882

namespace A127139

/-- `A125093(n+1)/A050873(n+1)` -/
def P1793774201865124882.Spec : Prop :=
  ∀ n, P1793774201865124882.a n = (A127139 (n + 1) : ℚ)

end A127139

/-! ## A127139.P7278072857953434103

`A125093(n+1)/A123275(n+1)`
-/

namespace A127139.P7278072857953434103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A127139.P7278072857953434103

namespace A127139

/-- `A125093(n+1)/A123275(n+1)` -/
def P7278072857953434103.Spec : Prop :=
  ∀ n, P7278072857953434103.a n = (A127139 (n + 1) : ℚ)

end A127139

/-! ## A127139.P17317901086801081592

`A125093(n+1)/A334230(n+1)`
-/

namespace A127139.P17317901086801081592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A334230 (n + 1) : ℚ)

end

end A127139.P17317901086801081592

namespace A127139

/-- `A125093(n+1)/A334230(n+1)` -/
def P17317901086801081592.Spec : Prop :=
  ∀ n, P17317901086801081592.a n = (A127139 (n + 1) : ℚ)

end A127139

/-! ## A127139.P8609691790038454869

`A125093(n+1)/A357554(n+1)`
-/

namespace A127139.P8609691790038454869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A357554 (n + 1) : ℚ)

end

end A127139.P8609691790038454869

namespace A127139

/-- `A125093(n+1)/A357554(n+1)` -/
def P8609691790038454869.Spec : Prop :=
  ∀ n, P8609691790038454869.a n = (A127139 (n + 1) : ℚ)

end A127139

/-! ## A127139.P8041636066368102744

`A054524(A286158(n+1))*A126988(n+1)`
-/

namespace A127139.P8041636066368102744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (A286158 (n + 1)).toNat * A126988 (n + 1)

end

end A127139.P8041636066368102744

namespace A127139

/-- `A054524(A286158(n+1))*A126988(n+1)` -/
def P8041636066368102744.Spec : Prop :=
  ∀ n, P8041636066368102744.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P18026920333009021435

`A125093(n+1)/A307662(n+1)`
-/

namespace A127139.P18026920333009021435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A307662 (n + 1) : ℚ)

end

end A127139.P18026920333009021435

namespace A127139

/-- `A125093(n+1)/A307662(n+1)` -/
def P18026920333009021435.Spec : Prop :=
  ∀ n, P18026920333009021435.a n = (A127139 (n + 1) : ℚ)

end A127139

/-! ## A127139.P11637437065374143256

`A125093(n+1)/A112544(n+1)`
-/

namespace A127139.P11637437065374143256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A112544 (n + 1) : ℚ)

end

end A127139.P11637437065374143256

namespace A127139

/-- `A125093(n+1)/A112544(n+1)` -/
def P11637437065374143256.Spec : Prop :=
  ∀ n, P11637437065374143256.a n = (A127139 (n + 1) : ℚ)

end A127139

/-! ## A127139.P3935324735053812160

`A126988(n+1)*A140699(A128489(n+1))`
-/

namespace A127139.P3935324735053812160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A140699 (A128489 (n + 1)).toNat

end

end A127139.P3935324735053812160

namespace A127139

/-- `A126988(n+1)*A140699(A128489(n+1))` -/
def P3935324735053812160.Spec : Prop :=
  ∀ n, P3935324735053812160.a n = A127139 (n + 1)

end A127139

/-! ## A127139.P12914395801562096538

`A125093(n+1)/A000005(A059268(n))`
-/

namespace A127139.P12914395801562096538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A127139.P12914395801562096538

namespace A127139

/-- `A125093(n+1)/A000005(A059268(n))` -/
def P12914395801562096538.Spec : Prop :=
  ∀ n, P12914395801562096538.a n = (A127139 (n + 1) : ℚ)

end A127139

/-!
# A127140: Square of triangle A127139, row sums = A101035.

The programs for A127140, there is no canonical definition to state claims against.
-/

/-! ## A127140.P8761770831354708180

`∑{d}[A126988(n+1), A327960(#)]`
-/

namespace A127140.P8761770831354708180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327960 d

end

end A127140.P8761770831354708180

/-! ## A127140.P10754054863243472637

`A010766(n+1)*A127173(n+1)`
-/

namespace A127140.P10754054863243472637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127173 (n + 1)

end

end A127140.P10754054863243472637

/-! ## A127140.P17823890153224421587

`A049834(n+1)*A127173(n+1)`
-/

namespace A127140.P17823890153224421587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A127173 (n + 1)

end

end A127140.P17823890153224421587

/-! ## A127140.P9116308861701022242

`A051537(n+1)*A127173(n+1)`
-/

namespace A127140.P9116308861701022242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A127173 (n + 1)

end

end A127140.P9116308861701022242

/-! ## A127140.P17274053409221756981

`A054531(n+1)*A127173(n+1)`
-/

namespace A127140.P17274053409221756981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A127173 (n + 1)

end

end A127140.P17274053409221756981

/-! ## A127140.P1315954629264972663

`A059026(n+1)*A127173(n+1)`
-/

namespace A127140.P1315954629264972663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A127173 (n + 1)

end

end A127140.P1315954629264972663

/-! ## A127140.P5735004070071953782

`A120885(n+1)*A127173(n+1)`
-/

namespace A127140.P5735004070071953782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120885 (n + 1) * A127173 (n + 1)

end

end A127140.P5735004070071953782

/-! ## A127140.P1075661046497858894

`A126988(n+1)*A127173(n+1)`
-/

namespace A127140.P1075661046497858894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A127173 (n + 1)

end

end A127140.P1075661046497858894

/-! ## A127140.P12951695438599617570

`A127173(n+1)*A193278(n+1)`
-/

namespace A127140.P12951695438599617570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127173 (n + 1) * A193278 (n + 1)

end

end A127140.P12951695438599617570

/-! ## A127140.P6097951256260686985

`A127173(n+1)*A219158(n+1)`
-/

namespace A127140.P6097951256260686985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127173 (n + 1) * A219158 (n + 1)

end

end A127140.P6097951256260686985

/-!
# A127143: Value of n where the first match occurs in A127141.

The programs for A127143, there is no canonical definition to state claims against.
-/

/-! ## A127143.P7455726946379233984

`floor(A226614(n+1)/2)`
-/

namespace A127143.P7455726946379233984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226614 (n + 1) : ℚ) / 2⌋

end

end A127143.P7455726946379233984

/-! ## A127143.P5160309534661094693

`(A226614(2*n-n+1)-1)/2`
-/

namespace A127143.P5160309534661094693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226614 ((2 * n : ℤ) - (n : ℤ) + 1).toNat - 1 : ℚ) / 2

end

end A127143.P5160309534661094693

/-! ## A127143.P4680104915309418089

`record[ceil(3*n/2)/A102280(n+1)]`
-/

namespace A127143.P4680104915309418089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈3 * ((n : ℚ) / 2)⌉ : ℚ) / (A102280 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127143.P4680104915309418089

/-! ## A127143.P10682282552675300667

`A004524(A226614(n+1))`
-/

namespace A127143.P10682282552675300667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A226614 (n + 1)).toNat

end

end A127143.P10682282552675300667

/-! ## A127143.P5511956467610229234

`A001281(A226614(n+1)-1)`
-/

namespace A127143.P5511956467610229234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A226614 (n + 1) - 1).toNat

end

end A127143.P5511956467610229234

/-! ## A127143.P4253795762414200738

`A004525(A226614(n+1)-1)`
-/

namespace A127143.P4253795762414200738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A226614 (n + 1) - 1).toNat

end

end A127143.P4253795762414200738

/-! ## A127143.P15290242901706756689

`A004526(A226614(n+1)-1)`
-/

namespace A127143.P15290242901706756689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A226614 (n + 1) - 1).toNat

end

end A127143.P15290242901706756689

/-!
# A127144: Q(2,n), where Q(m,k) is defined in A127080 and A127137.

The programs for A127144, there is no canonical definition to state claims against.
-/

/-! ## A127144.P4637516777489164665

`A127080(∑[n+3])`
-/

namespace A127144.P4637516777489164665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127144.P4637516777489164665

/-! ## A127144.P4150069259778129944

`or(A000007(n), A127080(A027379(n+1)))`
-/

namespace A127144.P4150069259778129944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A127080 (A027379 (n + 1)).toNat)

end

end A127144.P4150069259778129944

/-! ## A127144.P9781415027256384787

`A127080(A027379(n+1))+A000007(n+1)`
-/

namespace A127144.P9781415027256384787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A127144.P9781415027256384787

/-! ## A127144.P446838140341371554

`A127080(A027379(n+1))+A000038(n+1)`
-/

namespace A127144.P446838140341371554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A027379 (n + 1)).toNat + A000038 (n + 1)

end

end A127144.P446838140341371554

/-! ## A127144.P6572822271640029216

`A127067(n)/A248809(∑[n])`
-/

namespace A127144.P6572822271640029216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127067 n : ℚ) / (A248809 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A127144.P6572822271640029216

/-! ## A127144.P2237931872163446723

`A127067(n)/A006882(n+1)`
-/

namespace A127144.P2237931872163446723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127067 n : ℚ) / (A006882 (n + 1) : ℚ)

end

end A127144.P2237931872163446723

/-! ## A127144.P3256188646468759164

`A105937(∑[n+3])/A248809(A000217(n))`
-/

namespace A127144.P3256188646468759164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105937 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A248809 (A000217 n).toNat : ℚ)

end

end A127144.P3256188646468759164

/-!
# A127145: Q(3,n), where Q(m,k) is defined in A127080 and A127137.

The programs for A127145, there is no canonical definition to state claims against.
-/

/-! ## A127145.P4447137326148491824

`A127080(∑[n+3]+n+3)`
-/

namespace A127145.P4447137326148491824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A127145.P4447137326148491824

/-! ## A127145.P17569507274910341269

`A127080(eq[3, A025581(n)])+A000007(n+1)`
-/

namespace A127145.P17569507274910341269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A127145.P17569507274910341269

/-! ## A127145.P17360412071742519666

`A127080(eq[3, A025581(n)])-n*A000007(n)`
-/

namespace A127145.P17360412071742519666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - (n : ℤ) * A000007 n

end

end A127145.P17360412071742519666

/-! ## A127145.P8113370106035428499

`A127080(eq[3, A025581(n)])%(A000042(n+1)+1)`
-/

namespace A127145.P8113370106035428499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A000042 (n + 1) + 1)

end

end A127145.P8113370106035428499

/-! ## A127145.P14775153478966136589

`A127080(eq[3, A025581(n)])+A070689(n+2)%2`
-/

namespace A127145.P14775153478966136589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + Int.tmod (A070689 (n + 2)) 2

end

end A127145.P14775153478966136589

/-!
# A127146: Q(n,4), where Q(m,k) is defined in A127080 and A127137.

The programs for A127146, the canonical program `A127146.P526860412335781692` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127146 has offset 0).

The definition of A127146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127146.P526860412335781692

`(n-5)²-13`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127146

/-- `(n-5)²-13` -/
def P526860412335781692.Spec : Prop :=
  ∀ n, P526860412335781692.a n = A127146 n

theorem P526860412335781692.correct : P526860412335781692.Spec := by
  intro n
  simp only [A127146]

end A127146

/-! ## A127146.P15791192551639849233

`∑[a(n-1)+2]` with `a(0)=12, a(1)=-9`
-/

namespace A127146.P15791192551639849233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12, -9] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127146.P15791192551639849233

namespace A127146

/-- `∑[a(n-1)+2]` -/
def P15791192551639849233.Spec : Prop :=
  ∀ n, P15791192551639849233.a n = A127146 n

end A127146

/-! ## A127146.P6593069728722822077

`or(n*(n-10)+12, n%2)`
-/

namespace A127146.P6593069728722822077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * ((n : ℤ) - 10) + 12) ((n % 2 : ℕ) : ℤ)

end

end A127146.P6593069728722822077

namespace A127146

/-- `or(n*(n-10)+12, n%2)` -/
def P6593069728722822077.Spec : Prop :=
  ∀ n, P6593069728722822077.a n = A127146 n

end A127146

/-! ## A127146.P11962167362411021529

`(n*(n-10)+12)*gcd(n, n+1)`
-/

namespace A127146.P11962167362411021529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 10) + 12) * (Nat.gcd n (n + 1) : ℤ)

end

end A127146.P11962167362411021529

namespace A127146

/-- `(n*(n-10)+12)*gcd(n, n+1)` -/
def P11962167362411021529.Spec : Prop :=
  ∀ n, P11962167362411021529.a n = A127146 n

theorem P11962167362411021529.correct : P11962167362411021529.Spec := by
  intro n
  simp only [A127146, Nat.add_sub_cancel, A127146.P11962167362411021529.a, A127146.P526860412335781692.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A127146

/-! ## A127146.P6792107983238993244

`(n*(n-10)+12)%(2*(n*(n-10)+12))`
-/

namespace A127146.P6792107983238993244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * ((n : ℤ) - 10) + 12) (2 * ((n : ℤ) * ((n : ℤ) - 10) + 12))

end

end A127146.P6792107983238993244

namespace A127146

/-- `(n*(n-10)+12)%(2*(n*(n-10)+12))` -/
def P6792107983238993244.Spec : Prop :=
  ∀ n, P6792107983238993244.a n = A127146 n

end A127146

/-! ## A127146.P1544606429926076637

`A126958(n)/((n+1)*(n+3))`
-/

namespace A127146.P1544606429926076637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126958 n : ℚ) / ((n + 1) * (n + 3) : ℚ)

end

end A127146.P1544606429926076637

namespace A127146

/-- `A126958(n)/((n+1)*(n+3))` -/
def P1544606429926076637.Spec : Prop :=
  ∀ n, P1544606429926076637.a n = (A127146 n : ℚ)

end A127146

/-! ## A127146.P9880950426471263407

`(n*(n-10)+12)*(A001489(n)+n)!`
-/

namespace A127146.P9880950426471263407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 10) + 12) * (Nat.factorial (A001489 n + (n : ℤ)).toNat : ℤ)

end

end A127146.P9880950426471263407

namespace A127146

/-- `(n*(n-10)+12)*(A001489(n)+n)!` -/
def P9880950426471263407.Spec : Prop :=
  ∀ n, P9880950426471263407.a n = A127146 n

end A127146

/-! ## A127146.P15315248443872949326

`(n*(n-10)+12)*A000034(2*n)`
-/

namespace A127146.P15315248443872949326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 10) + 12) * A000034 (2 * n)

end

end A127146.P15315248443872949326

namespace A127146

/-- `(n*(n-10)+12)*A000034(2*n)` -/
def P15315248443872949326.Spec : Prop :=
  ∀ n, P15315248443872949326.a n = A127146 n

end A127146

/-! ## A127146.P17789080446207361066

`A023455((5-n)²)`
-/

namespace A127146.P17789080446207361066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023455 ((5 - (n : ℤ)) ^ 2).toNat

end

end A127146.P17789080446207361066

namespace A127146

/-- `A023455((5-n)²)` -/
def P17789080446207361066.Spec : Prop :=
  ∀ n, P17789080446207361066.a n = A127146 n

end A127146

/-! ## A127146.P17045961543585154057

`-A022969(A022961(n)²)`
-/

namespace A127146.P17045961543585154057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A022969 (A022961 n ^ 2).toNat

end

end A127146.P17045961543585154057

namespace A127146

/-- `-A022969(A022961(n)²)` -/
def P17045961543585154057.Spec : Prop :=
  ∀ n, P17045961543585154057.a n = A127146 n

end A127146

/-! ## A127146.P11256812172029911868

`A023457(A023447(n)²+2)`
-/

namespace A127146.P11256812172029911868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023457 (A023447 n ^ 2 + 2).toNat

end

end A127146.P11256812172029911868

namespace A127146

/-- `A023457(A023447(n)²+2)` -/
def P11256812172029911868.Spec : Prop :=
  ∀ n, P11256812172029911868.a n = A127146 n

end A127146

/-! ## A127146.P13239999313758078812

`A008683(A054824(n+1))*A022969(A022961(n)²)`
-/

namespace A127146.P13239999313758078812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A054824 (n + 1)).toNat * A022969 (A022961 n ^ 2).toNat

end

end A127146.P13239999313758078812

namespace A127146

/-- `A008683(A054824(n+1))*A022969(A022961(n)²)` -/
def P13239999313758078812.Spec : Prop :=
  ∀ n, P13239999313758078812.a n = A127146 n

end A127146

/-!
# A127147: Q(n,5), where Q(m,k) is defined in A127080 and A127137.

The programs for A127147, the canonical program `A127147.P11603212744019295164` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127147 has offset 0).

The definition of A127147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127147.P11603212744019295164

`(n-8)²-21`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127147

/-- `(n-8)²-21` -/
def P11603212744019295164.Spec : Prop :=
  ∀ n, P11603212744019295164.a n = A127147 n

theorem P11603212744019295164.correct : P11603212744019295164.Spec := by
  intro n
  simp only [A127147]

end A127147

/-! ## A127147.P7975054322240065265

`∑[a(n-1)+2]` with `a(0)=43, a(1)=-15`
-/

namespace A127147.P7975054322240065265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [43, -15] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127147.P7975054322240065265

namespace A127147

/-- `∑[a(n-1)+2]` -/
def P7975054322240065265.Spec : Prop :=
  ∀ n, P7975054322240065265.a n = A127147 n

end A127147

/-! ## A127147.P13664865234130808980

`∑[A004277(6*A020761(n)+n)-17]`
-/

namespace A127147.P13664865234130808980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (6 * A020761 n + (n : ℤ)).toNat - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127147.P13664865234130808980

namespace A127147

/-- `∑[A004277(6*A020761(n)+n)-17]` -/
def P13664865234130808980.Spec : Prop :=
  ∀ n, P13664865234130808980.a n = A127147 n

end A127147

/-! ## A127147.P233996410699287773

`A023463((8-n)²)`
-/

namespace A127147.P233996410699287773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023463 ((8 - (n : ℤ)) ^ 2).toNat

end

end A127147.P233996410699287773

namespace A127147

/-- `A023463((8-n)²)` -/
def P233996410699287773.Spec : Prop :=
  ∀ n, P233996410699287773.a n = A127147 n

end A127147

/-! ## A127147.P13964007827587387814

`-A022977(A022964(n)²)`
-/

namespace A127147.P13964007827587387814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A022977 (A022964 n ^ 2).toNat

end

end A127147.P13964007827587387814

namespace A127147

/-- `-A022977(A022964(n)²)` -/
def P13964007827587387814.Spec : Prop :=
  ∀ n, P13964007827587387814.a n = A127147 n

end A127147

/-! ## A127147.P17891999363174055495

`A023464(A023450(n)²+1)`
-/

namespace A127147.P17891999363174055495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023464 (A023450 n ^ 2 + 1).toNat

end

end A127147.P17891999363174055495

namespace A127147

/-- `A023464(A023450(n)²+1)` -/
def P17891999363174055495.Spec : Prop :=
  ∀ n, P17891999363174055495.a n = A127147 n

end A127147

/-! ## A127147.P794255487546831363

`A022977(A022964(n)²)*A057428(A008619(n))`
-/

namespace A127147.P794255487546831363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022977 (A022964 n ^ 2).toNat * A057428 (A008619 n).toNat

end

end A127147.P794255487546831363

namespace A127147

/-- `A022977(A022964(n)²)*A057428(A008619(n))` -/
def P794255487546831363.Spec : Prop :=
  ∀ n, P794255487546831363.a n = A127147 n

end A127147

/-! ## A127147.P17286837500618843267

`A127080(A000124(n+5)+4)`
-/

namespace A127147.P17286837500618843267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A000124 (n + 5) + 4).toNat

end

end A127147.P17286837500618843267

namespace A127147

/-- `A127080(A000124(n+5)+4)` -/
def P17286837500618843267.Spec : Prop :=
  ∀ n, P17286837500618843267.a n = A127147 n

end A127147

/-! ## A127147.P15243249358501484847

`A127080(A000217(n+6)-(n+1))`
-/

namespace A127147.P15243249358501484847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A127147.P15243249358501484847

namespace A127147

/-- `A127080(A000217(n+6)-(n+1))` -/
def P15243249358501484847.Spec : Prop :=
  ∀ n, P15243249358501484847.a n = A127147 n

end A127147

/-! ## A127147.P12506878891558824334

`A127080(A161680(n+7)-(n+1))`
-/

namespace A127147.P12506878891558824334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A161680 (n + 7) - (n + 1 : ℤ)).toNat

end

end A127147.P12506878891558824334

namespace A127147

/-- `A127080(A161680(n+7)-(n+1))` -/
def P12506878891558824334.Spec : Prop :=
  ∀ n, P12506878891558824334.a n = A127147 n

end A127147

/-!
# A127148: Q(n,6), where Q(m,k) is defined in A127080 and A127137.

The programs for A127148, the canonical program `A127148.P17236329303789875871` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127148 has offset 0).

The definition of A127148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127148.P17236329303789875871

`n^3-24*n²+128*n-120`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127148

/-- `n^3-24*n²+128*n-120` -/
def P17236329303789875871.Spec : Prop :=
  ∀ n, P17236329303789875871.a n = A127148 n

theorem P17236329303789875871.correct : P17236329303789875871.Spec := by
  intro n
  simp only [A127148]

end A127148

/-! ## A127148.P12333940408800408130

`A127080(eq[6, A002262(n)])`
-/

namespace A127148.P12333940408800408130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127148.P12333940408800408130

namespace A127148

/-- `A127080(eq[6, A002262(n)])` -/
def P12333940408800408130.Spec : Prop :=
  ∀ n, P12333940408800408130.a n = A127148 n

end A127148

/-! ## A127148.P5131363999828009156

`A127080(A167499(n+5)+1)`
-/

namespace A127148.P5131363999828009156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A167499 (n + 5) + 1).toNat

end

end A127148.P5131363999828009156

namespace A127148

/-- `A127080(A167499(n+5)+1)` -/
def P5131363999828009156.Spec : Prop :=
  ∀ n, P5131363999828009156.a n = A127148 n

end A127148

/-! ## A127148.P10531764120740614672

`A127080(A167614(n+5)+3)`
-/

namespace A127148.P10531764120740614672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A167614 (n + 5) + 3).toNat

end

end A127148.P10531764120740614672

namespace A127148

/-- `A127080(A167614(n+5)+3)` -/
def P10531764120740614672.Spec : Prop :=
  ∀ n, P10531764120740614672.a n = A127148 n

end A127148

/-! ## A127148.P6165546253422733025

`A127080(A000096(n+5)+7)`
-/

namespace A127148.P6165546253422733025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (A000096 (n + 5) + 7).toNat

end

end A127148.P6165546253422733025

namespace A127148

/-- `A127080(A000096(n+5)+7)` -/
def P6165546253422733025.Spec : Prop :=
  ∀ n, P6165546253422733025.a n = A127148 n

end A127148

/-! ## A127148.P8522444722064198797

`A127080(eq[6, A144328(n+1)])`
-/

namespace A127148.P8522444722064198797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127148.P8522444722064198797

namespace A127148

/-- `A127080(eq[6, A144328(n+1)])` -/
def P8522444722064198797.Spec : Prop :=
  ∀ n, P8522444722064198797.a n = A127148 n

end A127148

/-!
# A127149: Records in A004648.

The programs for A127149, the canonical program `A127149.P11956640148928272579` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127149 has offset 1).

The definition of A127149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127149.P11956640148928272579

`record[(A001748(n+1)/3)%(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127149

/-- `record[(A001748(n+1)/3)%(n+1)]` -/
def P11956640148928272579.Spec : Prop :=
  ∀ n, P11956640148928272579.a n = A127149 (n + 1)

theorem P11956640148928272579.correct : P11956640148928272579.Spec := by
  intro n
  simp only [A127149, Nat.add_sub_cancel]

end A127149

/-! ## A127149.P716225700538972474

`record[(A001749(n+1)/4)%(n+1)]`
-/

namespace A127149.P716225700538972474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 4)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P716225700538972474

namespace A127149

/-- `record[(A001749(n+1)/4)%(n+1)]` -/
def P716225700538972474.Spec : Prop :=
  ∀ n, P716225700538972474.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P11204269429259565352

`record[A004648(n+1)]`
-/

namespace A127149.P11204269429259565352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P11204269429259565352

namespace A127149

/-- `record[A004648(n+1)]` -/
def P11204269429259565352.Spec : Prop :=
  ∀ n, P11204269429259565352.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P11843618189509280685

`record[A000040(n+1)%(n+1)]`
-/

namespace A127149.P11843618189509280685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P11843618189509280685

namespace A127149

/-- `record[A000040(n+1)%(n+1)]` -/
def P11843618189509280685.Spec : Prop :=
  ∀ n, P11843618189509280685.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P17725133186957460493

`record[A006005(n+1)%(n+1)]`
-/

namespace A127149.P17725133186957460493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P17725133186957460493

namespace A127149

/-- `record[A006005(n+1)%(n+1)]` -/
def P17725133186957460493.Spec : Prop :=
  ∀ n, P17725133186957460493.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P17825041282174393805

`record[A014688(n+1)%(n+1)]`
-/

namespace A127149.P17825041282174393805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P17825041282174393805

namespace A127149

/-- `record[A014688(n+1)%(n+1)]` -/
def P17825041282174393805.Spec : Prop :=
  ∀ n, P17825041282174393805.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P5173424948513544966

`record[A014689(n+1)%(n+1)]`
-/

namespace A127149.P5173424948513544966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014689 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P5173424948513544966

namespace A127149

/-- `record[A014689(n+1)%(n+1)]` -/
def P5173424948513544966.Spec : Prop :=
  ∀ n, P5173424948513544966.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P7910543877967536337

`record[A008578(n+2)%(n+1)]`
-/

namespace A127149.P7910543877967536337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P7910543877967536337

namespace A127149

/-- `record[A008578(n+2)%(n+1)]` -/
def P7910543877967536337.Spec : Prop :=
  ∀ n, P7910543877967536337.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P6681149578952857920

`record[record[A006530(n+2)]%(n+1)]`
-/

namespace A127149.P6681149578952857920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P6681149578952857920

namespace A127149

/-- `record[record[A006530(n+2)]%(n+1)]` -/
def P6681149578952857920.Spec : Prop :=
  ∀ n, P6681149578952857920.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P3532772202325803570

`record[record[A020639(n+2)]%(n+1)]`
-/

namespace A127149.P3532772202325803570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P3532772202325803570

namespace A127149

/-- `record[record[A020639(n+2)]%(n+1)]` -/
def P3532772202325803570.Spec : Prop :=
  ∀ n, P3532772202325803570.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P12704339313161034076

`record[(A006093(n+1)+1)%(n+1)]`
-/

namespace A127149.P12704339313161034076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P12704339313161034076

namespace A127149

/-- `record[(A006093(n+1)+1)%(n+1)]` -/
def P12704339313161034076.Spec : Prop :=
  ∀ n, P12704339313161034076.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P17993772484976137832

`record[(A040976(n+1)+2)%(n+1)]`
-/

namespace A127149.P17993772484976137832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1) + 2) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P17993772484976137832

namespace A127149

/-- `record[(A040976(n+1)+2)%(n+1)]` -/
def P17993772484976137832.Spec : Prop :=
  ∀ n, P17993772484976137832.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P1255135116128625895

`A004648(A127150(n+1))`
-/

namespace A127149.P1255135116128625895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A127150 (n + 1)).toNat

end

end A127149.P1255135116128625895

namespace A127149

/-- `A004648(A127150(n+1))` -/
def P1255135116128625895.Spec : Prop :=
  ∀ n, P1255135116128625895.a n = A127149 (n + 1)

end A127149

/-! ## A127149.P18228537336044224483

`record[record[A014963(n+2)]%(n+1)]`
-/

namespace A127149.P18228537336044224483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127149.P18228537336044224483

namespace A127149

/-- `record[record[A014963(n+2)]%(n+1)]` -/
def P18228537336044224483.Spec : Prop :=
  ∀ n, P18228537336044224483.a n = A127149 (n + 1)

end A127149

/-!
# A127150: Where records occur in A004648.

The programs for A127150, there is no canonical definition to state claims against.
-/

/-! ## A127150.P1056824834955914409

`A073325(A127149(n+1))`
-/

namespace A127150.P1056824834955914409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073325 (A127149 (n + 1)).toNat

end

end A127150.P1056824834955914409

/-!
# A127152: Sum of the Strahler numbers of all full binary trees with n internal vertices.

The programs for A127152, there is no canonical definition to state claims against.
-/

/-! ## A127152.P18211844172453191588

`A097140(A081670(n)-(2^n-2))`
-/

namespace A127152.P18211844172453191588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A081670 n - ((2 ^ n : ℤ) - 2)).toNat

end

end A127152.P18211844172453191588

/-! ## A127152.P15698348916981590044

`A124072(A001047(n)+C(2*n, n))`
-/

namespace A127152.P15698348916981590044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (A001047 n + (Nat.choose (2 * n) n : ℤ)).toNat

end

end A127152.P15698348916981590044

/-! ## A127152.P1335351908738969251

`A000463(A000984(n)+3^n-2^n)`
-/

namespace A127152.P1335351908738969251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A000984 n + ((3 ^ n : ℤ) - (2 ^ n : ℤ))).toNat

end

end A127152.P1335351908738969251

/-! ## A127152.P11850448179495771535

`A008619(A000984(n)+3^n-2^n)`
-/

namespace A127152.P11850448179495771535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000984 n + ((3 ^ n : ℤ) - (2 ^ n : ℤ))).toNat

end

end A127152.P11850448179495771535

/-!
# A127153: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n and having k UDUD's starting at level 0; here U=(1,1), D=(1,-1) (0<=k<=n-1).

The programs for A127153, there is no canonical definition to state claims against.
-/

/-! ## A127153.P174963108554018723

`A157391(n+1)+A157235(A157268(n))`
-/

namespace A127153.P174963108554018723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157391 (n + 1) + A157235 (A157268 n).toNat

end

end A127153.P174963108554018723

/-! ## A127153.P6285382176714837555

`A157391(n+1)+A157235(A157275(n))`
-/

namespace A127153.P6285382176714837555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157391 (n + 1) + A157235 (A157275 n).toNat

end

end A127153.P6285382176714837555

/-!
# A127154: Number of Dyck paths of semilength n and having no UDUD's starting at level 0; here U=(1,1), D=(1,-1).

The programs for A127154, there is no canonical definition to state claims against.
-/

/-! ## A127154.P1327328488805935426

`A127153(∑[abs(1-n)])`
-/

namespace A127154.P1327328488805935426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127153 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127154.P1327328488805935426

/-! ## A127154.P5554022589071633323

`A103221(record[A131163(3*n)])`
-/

namespace A127154.P5554022589071633323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131163 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127154.P5554022589071633323

/-! ## A127154.P17312545460245683359

`A157271(A050535(n)-A302242(n+1))`
-/

namespace A127154.P17312545460245683359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A050535 n - A302242 (n + 1)).toNat

end

end A127154.P17312545460245683359

/-! ## A127154.P1593618235751047506

`A002266((A286831(n)+3)*A000108(n)+1)`
-/

namespace A127154.P1593618235751047506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 ((A286831 n + 3) * A000108 n + 1).toNat

end

end A127154.P1593618235751047506

/-!
# A127155: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k long ascents and long descents. A long ascent (descent) in a Dyck path is a maximal sequence of at least 2 consecutive up (down) steps.

The programs for A127155, there is no canonical definition to state claims against.
-/

/-! ## A127155.P17266173842421447573

`A108947(eq[A000034(n), A065648(n)])`
-/

namespace A127155.P17266173842421447573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A127155.P17266173842421447573

/-! ## A127155.P8903631322926857596

`A347317(A348328(2*(n+1))^A353092(n))`
-/

namespace A127155.P8903631322926857596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347317 (SequenceMachineLib.roundAway ((A348328 (2 * (n + 1)) : ℚ) ^ (A353092 n : ℤ))).toNat

end

end A127155.P8903631322926857596

/-!
# A127156: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n starting with exactly k consecutive pyramids. A pyramid in a Dyck path is a factor of the form U^j D^j (j>0), starting at the x-axis. Here U=(1,1) and D=(1,-1). This definition differs from the one in A091866.

The programs for A127156, there is no canonical definition to state claims against.
-/

/-! ## A127156.P14270478246992380172

`Δ[A014138(A003056(n))-A125177(n)]`
-/

namespace A127156.P14270478246992380172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (A003056 n).toNat - A125177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127156.P14270478246992380172

/-! ## A127156.P12680761978608986298

`A131427(A014132(n+1))-Δ[A125177(n)]`
-/

namespace A127156.P12680761978608986298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131427 (A014132 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A127156.P12680761978608986298

/-! ## A127156.P12689060815634081909

`Δ[A155587(A002024(n+1))-A125177(n)]`
-/

namespace A127156.P12689060815634081909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (A002024 (n + 1)).toNat - A125177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127156.P12689060815634081909

/-! ## A127156.P366330737266353720

`A131427(A316669(n+2))-Δ[A125177(n)]`
-/

namespace A127156.P366330737266353720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131427 (A316669 (n + 2)).toNat - (f1 (n + 1) - f1 n)

end

end A127156.P366330737266353720

/-! ## A127156.P11599095425116426147

`A131427(A007401(n+1)+1)-Δ[A125177(n)]`
-/

namespace A127156.P11599095425116426147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131427 (A007401 (n + 1) + 1).toNat - (f1 (n + 1) - f1 n)

end

end A127156.P11599095425116426147

/-!
# A127158: Triangle read by rows: T(n,k) is the number of ordered trees with n edges and having k branches of length 1 starting from the root (0<=k<=n).

The programs for A127158, there is no canonical definition to state claims against.
-/

/-! ## A127158.P10285662320755323223

`A373953(A007318(n)*A145878(n))`
-/

namespace A127158.P10285662320755323223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A007318 n * A145878 n).toNat

end

end A127158.P10285662320755323223

/-! ## A127158.P4542533149428615388

`A278043(A186759(n)^A216763(n))`
-/

namespace A127158.P4542533149428615388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 (SequenceMachineLib.roundAway ((A186759 n : ℚ) ^ (A216763 n : ℤ))).toNat

end

end A127158.P4542533149428615388

/-! ## A127158.P1516674174661168466

`A195827(2^A306814(n))`
-/

namespace A127158.P1516674174661168466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195827 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A306814 n : ℤ))).toNat

end

end A127158.P1516674174661168466

/-! ## A127158.P7554368553982855393

`A068063(A306814(n)^3)`
-/

namespace A127158.P7554368553982855393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A306814 n ^ 3).toNat

end

end A127158.P7554368553982855393

/-! ## A127158.P10089142179891430678

`A352825(4^A306814(n))`
-/

namespace A127158.P10089142179891430678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352825 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A306814 n : ℤ))).toNat

end

end A127158.P10089142179891430678

/-!
# A127159: Triangle T(n,k) with T(n,k) = A061554(n,k) + A107430(n,k).

The programs for A127159, the canonical program `A127159.P3391310337848141613` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127159 has offset 0).

The definition of A127159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127159.P3391310337848141613

`A107430(n)+A061554(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127159

/-- `A107430(n)+A061554(n)` -/
def P3391310337848141613.Spec : Prop :=
  ∀ n, P3391310337848141613.a n = A127159 n

theorem P3391310337848141613.correct : P3391310337848141613.Spec := by
  intro n
  simp only [A127159]

end A127159

/-! ## A127159.P7613609332079680424

`A061554(n)+A061554(A061579(n))`
-/

namespace A127159.P7613609332079680424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n + A061554 (A061579 n).toNat

end

end A127159.P7613609332079680424

namespace A127159

/-- `A061554(n)+A061554(A061579(n))` -/
def P7613609332079680424.Spec : Prop :=
  ∀ n, P7613609332079680424.a n = A127159 n

end A127159

/-! ## A127159.P5489661817944356792

`A107430(A061579(n))+A107430(n)`
-/

namespace A127159.P5489661817944356792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A061579 n).toNat + A107430 n

end

end A127159.P5489661817944356792

namespace A127159

/-- `A107430(A061579(n))+A107430(n)` -/
def P5489661817944356792.Spec : Prop :=
  ∀ n, P5489661817944356792.a n = A127159 n

end A127159

/-! ## A127159.P6793586250291629150

`A107430(A038722(n+2))+A107430(n)`
-/

namespace A127159.P6793586250291629150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A038722 (n + 2)).toNat + A107430 n

end

end A127159.P6793586250291629150

namespace A127159

/-- `A107430(A038722(n+2))+A107430(n)` -/
def P6793586250291629150.Spec : Prop :=
  ∀ n, P6793586250291629150.a n = A127159 n

end A127159

/-! ## A127159.P3189384964096598865

`A107430(n)+A107430(A114327(n)+n)`
-/

namespace A127159.P3189384964096598865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 n + A107430 (A114327 n + (n : ℤ)).toNat

end

end A127159.P3189384964096598865

namespace A127159

/-- `A107430(n)+A107430(A114327(n)+n)` -/
def P3189384964096598865.Spec : Prop :=
  ∀ n, P3189384964096598865.a n = A127159 n

end A127159

/-! ## A127159.P14316086551277286063

`A061554(A038722(n+1)-1)+A061554(n)`
-/

namespace A127159.P14316086551277286063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A038722 (n + 1) - 1).toNat + A061554 n

end

end A127159.P14316086551277286063

namespace A127159

/-- `A061554(A038722(n+1)-1)+A061554(n)` -/
def P14316086551277286063.Spec : Prop :=
  ∀ n, P14316086551277286063.a n = A127159 n

end A127159

/-! ## A127159.P13166896593175668252

`A107430(n)+A007318(A004526(A064801(n+1)))`
-/

namespace A127159.P13166896593175668252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 n + A007318 (A004526 (A064801 (n + 1)).toNat).toNat

end

end A127159.P13166896593175668252

namespace A127159

/-- `A107430(n)+A007318(A004526(A064801(n+1)))` -/
def P13166896593175668252.Spec : Prop :=
  ∀ n, P13166896593175668252.a n = A127159 n

end A127159

/-!
# A127161: Integers whose aliquot sequences terminate by encountering a prime number.

The programs for A127161, there is no canonical definition to state claims against.
-/

/-! ## A127161.P3927080015824641731

`comp[a(n-2)+n!]` with `a(0)=28, a(1)=0, a(2)=1`
-/

namespace A127161.P3927080015824641731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [28, 0, 1] fun n f1 =>
  f1 (n - 2) + Nat.factorial n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A127161.P3927080015824641731

/-! ## A127161.P8764265006646753479

`comp[xor(1, n)*floor((3/2)^n)]`
-/

namespace A127161.P8764265006646753479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) * ⌊((3 : ℚ) / 2) ^ n⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127161.P8764265006646753479

/-! ## A127161.P8889896964683938721

`comp[xor((4-gcd(2, n))^n, ∑[n])-1]`
-/

namespace A127161.P8889896964683938721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((4 - (Nat.gcd 2 n : ℤ)) ^ n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127161.P8889896964683938721

/-! ## A127161.P11966646473068611625

`comp[5*a(n-1)+n]+2` with `a(0)=26, a(1)=98, a(2)=4`
-/

namespace A127161.P11966646473068611625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [26, 98, 4] fun n f1 =>
  5 * f1 (n - 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A127161.P11966646473068611625

/-! ## A127161.P13389387149039111107

`comp[n*and((-1)^n, and(n, floor(-n/2)))]`
-/

namespace A127161.P13389387149039111107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land ((-1) ^ n) (Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127161.P13389387149039111107

/-! ## A127161.P16820983635212652265

`A080907(n+2)`
-/

namespace A127161.P16820983635212652265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (n + 2)

end

end A127161.P16820983635212652265

/-! ## A127161.P2364389038599731560

`comp[n*A155046(n+1)]`
-/

namespace A127161.P2364389038599731560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A155046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127161.P2364389038599731560

/-! ## A127161.P1542833451104362598

`lt[1, A007906(n+1)]+1`
-/

namespace A127161.P1542833451104362598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A127161.P1542833451104362598

/-!
# A127162: Composite numbers whose aliquot sequences terminate by encountering a prime number.

The programs for A127162, there is no canonical definition to state claims against.
-/

/-! ## A127162.P5895989062033796871

`lt[2, A007906(n+1)]+1`
-/

namespace A127162.P5895989062033796871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A127162.P5895989062033796871

/-! ## A127162.P18123469803678090983

`lt[2, A044050(n+1)]+1`
-/

namespace A127162.P18123469803678090983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A127162.P18123469803678090983

/-! ## A127162.P11797140167986865097

`lt[2, A098008(n+1)]+1`
-/

namespace A127162.P11797140167986865097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A127162.P11797140167986865097

/-! ## A127162.P14514849822888485690

`lt[3, A098007(n+1)]+1`
-/

namespace A127162.P14514849822888485690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A127162.P14514849822888485690

/-! ## A127162.P18290816668322043684

`lt[2, A007906(or(n, C(n, n²)))]`
-/

namespace A127162.P18290816668322043684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (Nat.lor n (Nat.choose n (n ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127162.P18290816668322043684

/-! ## A127162.P3327286761498651759

`lt[2, A007906(A028310(n))]`
-/

namespace A127162.P3327286761498651759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127162.P3327286761498651759

/-! ## A127162.P16488267492101083706

`A020725(lt[2, A007906(n+1)])`
-/

namespace A127162.P16488267492101083706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A127162.P16488267492101083706

/-! ## A127162.P8419108283076824848

`A020725(lt[2, A044050(n+1)])`
-/

namespace A127162.P8419108283076824848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A127162.P8419108283076824848

/-! ## A127162.P1207347566658834715

`A020725(lt[2, A098008(n+1)])`
-/

namespace A127162.P1207347566658834715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A127162.P1207347566658834715

/-! ## A127162.P17420418884826509210

`lt[2, A007906(A233583(n+1))]`
-/

namespace A127162.P17420418884826509210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127162.P17420418884826509210

/-!
# A127163: Integers whose aliquot sequences terminate by encountering the prime 3. Also known as the prime family 3.

The programs for A127163, there is no canonical definition to state claims against.
-/

/-! ## A127163.P3646603071164073140

`eq[3, A115350(n+1)]+1`
-/

namespace A127163.P3646603071164073140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A127163.P3646603071164073140

/-! ## A127163.P6049581463184275947

`lt[A115350(n+3), 4]+3`
-/

namespace A127163.P6049581463184275947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A127163.P6049581463184275947

/-! ## A127163.P16636999903738160453

`eq[3, A115350(A028310(n))]`
-/

namespace A127163.P16636999903738160453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127163.P16636999903738160453

/-! ## A127163.P14335709600415347765

`A020725(eq[3, A115350(n+1)])`
-/

namespace A127163.P14335709600415347765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127163.P14335709600415347765

/-! ## A127163.P6583894143093070399

`A065475(eq[3, A115350(n+1)])`
-/

namespace A127163.P6583894143093070399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127163.P6583894143093070399

/-!
# A127164: Integers whose aliquot sequences terminate by encountering the prime 7. Also known as the prime family 7.

The programs for A127164, there is no canonical definition to state claims against.
-/

/-! ## A127164.P13422127939676309541

`eq[7, A115350(n+1)]+1`
-/

namespace A127164.P13422127939676309541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A127164.P13422127939676309541

/-! ## A127164.P1361130516827078686

`eq[7, A115350(A028310(n))]`
-/

namespace A127164.P1361130516827078686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127164.P1361130516827078686

/-! ## A127164.P11093775848748521435

`A020725(eq[7, A115350(n+1)])`
-/

namespace A127164.P11093775848748521435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127164.P11093775848748521435

/-! ## A127164.P4111405254883302539

`A065475(eq[7, A115350(n+1)])`
-/

namespace A127164.P4111405254883302539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127164.P4111405254883302539

/-! ## A127164.P16985906774587654111

`eq[7, A115350(A233583(n+1))]`
-/

namespace A127164.P16985906774587654111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127164.P16985906774587654111

/-!
# A127165: a(n) = the maximum prime S possible, if S = product of b(k)'s + product of c(k)'s, where the distinct positive integers <= n are partitioned into the two sets {b(k)} and {c(k)}. a(n) = 0 if no prime S exists for that n.

The programs for A127165, there is no canonical definition to state claims against.
-/

/-! ## A127165.P16962084077740530913

`p?[A256440(n+1)+A077012(n+1)]`
-/

namespace A127165.P16962084077740530913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (n + 1) + A077012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127165.P16962084077740530913

/-! ## A127165.P15285797938814370499

`or(A070939(n+2), A306264(A000142(n)))`
-/

namespace A127165.P15285797938814370499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070939 (n + 2)) (A306264 (A000142 n).toNat)

end

end A127165.P15285797938814370499

/-! ## A127165.P13109482616710231539

`A240313(n)+A028310(A000142(n))/A240313(n)`
-/

namespace A127165.P13109482616710231539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240313 n : ℚ) + (A028310 (A000142 n).toNat : ℚ) / (A240313 n : ℚ)

end

end A127165.P13109482616710231539

/-!
# A127166: a(n) = the minimum prime S possible, if S = product of b(k)'s + product of c(k)'s, where the distinct positive integers <= n are partitioned into the two sets {b(k)} and {c(k)}. a(n) = 0 if no prime S exists for that n.

The programs for A127166, there is no canonical definition to state claims against.
-/

/-! ## A127166.P2929460591213662332

`A006530(A000142(n)+A163590(n)²)`
-/

namespace A127166.P2929460591213662332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000142 n + A163590 n ^ 2).toNat

end

end A127166.P2929460591213662332

/-! ## A127166.P10996230064891176759

`p?[A179490(n)+1]`
-/

namespace A127166.P10996230064891176759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179490 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127166.P10996230064891176759

/-! ## A127166.P10534705030795488301

`p?[ceil(A074733(n)/5)]`
-/

namespace A127166.P10534705030795488301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074733 n : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127166.P10534705030795488301

/-!
# A127168: Triangle read by rows: square of A126988.

The programs for A127168, the canonical program `A127168.P12510765935863555111` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127168 has offset 0).

The definition of A127168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127168.P12510765935863555111

`A010766(n+1)*A127170(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127168

/-- `A010766(n+1)*A127170(n+1)` -/
def P12510765935863555111.Spec : Prop :=
  ∀ n, P12510765935863555111.a n = A127168 n

theorem P12510765935863555111.correct : P12510765935863555111.Spec := by
  intro n
  simp only [A127168]

end A127168

/-! ## A127168.P514786406639563032

`A049834(n+1)*A127170(n+1)`
-/

namespace A127168.P514786406639563032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A127170 (n + 1)

end

end A127168.P514786406639563032

namespace A127168

/-- `A049834(n+1)*A127170(n+1)` -/
def P514786406639563032.Spec : Prop :=
  ∀ n, P514786406639563032.a n = A127168 n

end A127168

/-! ## A127168.P16797020343453489501

`A051537(n+1)*A127170(n+1)`
-/

namespace A127168.P16797020343453489501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A127170 (n + 1)

end

end A127168.P16797020343453489501

namespace A127168

/-- `A051537(n+1)*A127170(n+1)` -/
def P16797020343453489501.Spec : Prop :=
  ∀ n, P16797020343453489501.a n = A127168 n

end A127168

/-! ## A127168.P18150866307438659870

`A054531(n+1)*A127170(n+1)`
-/

namespace A127168.P18150866307438659870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A127170 (n + 1)

end

end A127168.P18150866307438659870

namespace A127168

/-- `A054531(n+1)*A127170(n+1)` -/
def P18150866307438659870.Spec : Prop :=
  ∀ n, P18150866307438659870.a n = A127168 n

end A127168

/-! ## A127168.P12159687266749569355

`A059026(n+1)*A127170(n+1)`
-/

namespace A127168.P12159687266749569355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A127170 (n + 1)

end

end A127168.P12159687266749569355

namespace A127168

/-- `A059026(n+1)*A127170(n+1)` -/
def P12159687266749569355.Spec : Prop :=
  ∀ n, P12159687266749569355.a n = A127168 n

end A127168

/-! ## A127168.P15582499918316729517

`A126988(n+1)*A127170(n+1)`
-/

namespace A127168.P15582499918316729517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A127170 (n + 1)

end

end A127168.P15582499918316729517

namespace A127168

/-- `A126988(n+1)*A127170(n+1)` -/
def P15582499918316729517.Spec : Prop :=
  ∀ n, P15582499918316729517.a n = A127168 n

end A127168

/-! ## A127168.P767215582747321142

`A127170(n+1)*A219158(n+1)`
-/

namespace A127168.P767215582747321142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127170 (n + 1) * A219158 (n + 1)

end

end A127168.P767215582747321142

namespace A127168

/-- `A127170(n+1)*A219158(n+1)` -/
def P767215582747321142.Spec : Prop :=
  ∀ n, P767215582747321142.a n = A127168 n

end A127168

/-! ## A127168.P6713344556208665586

`A127170(n+1)*A234575(n+1)`
-/

namespace A127168.P6713344556208665586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127170 (n + 1) * A234575 (n + 1)

end

end A127168.P6713344556208665586

namespace A127168

/-- `A127170(n+1)*A234575(n+1)` -/
def P6713344556208665586.Spec : Prop :=
  ∀ n, P6713344556208665586.a n = A127168 n

end A127168

/-! ## A127168.P687630167083294688

`A127170(n+1)*A372523(n+1)`
-/

namespace A127168.P687630167083294688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127170 (n + 1) * A372523 (n + 1)

end

end A127168.P687630167083294688

namespace A127168

/-- `A127170(n+1)*A372523(n+1)` -/
def P687630167083294688.Spec : Prop :=
  ∀ n, P687630167083294688.a n = A127168 n

end A127168

/-! ## A127168.P7497633824239249949

`A329323(n+1)/A002260(n+1)`
-/

namespace A127168.P7497633824239249949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329323 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A127168.P7497633824239249949

namespace A127168

/-- `A329323(n+1)/A002260(n+1)` -/
def P7497633824239249949.Spec : Prop :=
  ∀ n, P7497633824239249949.a n = (A127168 n : ℚ)

end A127168

/-!
# A127169: Triangle read by rows: cube of A126988.

The programs for A127169, the canonical program `A127169.P17750561973413488397` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127169 has offset 1).

The definition of A127169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127169.P10746145054919176178

`A034718(A049834(n+1))*A051731(n+1)`
-/

namespace A127169.P10746145054919176178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034718 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A127169.P10746145054919176178

namespace A127169

/-- `A034718(A049834(n+1))*A051731(n+1)` -/
def P10746145054919176178.Spec : Prop :=
  ∀ n, P10746145054919176178.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P17750561973413488397

`A034718(A054531(n+1))*A051731(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127169

/-- `A034718(A054531(n+1))*A051731(n+1)` -/
def P17750561973413488397.Spec : Prop :=
  ∀ n, P17750561973413488397.a n = A127169 (n + 1)

theorem P17750561973413488397.correct : P17750561973413488397.Spec := by
  intro n
  simp only [A127169, Nat.add_sub_cancel]

end A127169

/-! ## A127169.P14673242086780017929

`A007425(A010766(n+1))*A126988(n+1)`
-/

namespace A127169.P14673242086780017929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A010766 (n + 1)).toNat * A126988 (n + 1)

end

end A127169.P14673242086780017929

namespace A127169

/-- `A007425(A010766(n+1))*A126988(n+1)` -/
def P14673242086780017929.Spec : Prop :=
  ∀ n, P14673242086780017929.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P12377240329004358227

`A034718(A059026(n+1))*A051731(n+1)`
-/

namespace A127169.P12377240329004358227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034718 (A059026 (n + 1)).toNat * A051731 (n + 1)

end

end A127169.P12377240329004358227

namespace A127169

/-- `A034718(A059026(n+1))*A051731(n+1)` -/
def P12377240329004358227.Spec : Prop :=
  ∀ n, P12377240329004358227.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P14609522323290720141

`A010766(n+1)*A127172(n+1)`
-/

namespace A127169.P14609522323290720141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127172 (n + 1)

end

end A127169.P14609522323290720141

namespace A127169

/-- `A010766(n+1)*A127172(n+1)` -/
def P14609522323290720141.Spec : Prop :=
  ∀ n, P14609522323290720141.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P16923545323631287303

`A049834(n+1)*A127172(n+1)`
-/

namespace A127169.P16923545323631287303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A127172 (n + 1)

end

end A127169.P16923545323631287303

namespace A127169

/-- `A049834(n+1)*A127172(n+1)` -/
def P16923545323631287303.Spec : Prop :=
  ∀ n, P16923545323631287303.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P18404944803478294279

`A051537(n+1)*A127172(n+1)`
-/

namespace A127169.P18404944803478294279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A127172 (n + 1)

end

end A127169.P18404944803478294279

namespace A127169

/-- `A051537(n+1)*A127172(n+1)` -/
def P18404944803478294279.Spec : Prop :=
  ∀ n, P18404944803478294279.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P351431758389536025

`A054531(n+1)*A127172(n+1)`
-/

namespace A127169.P351431758389536025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A127172 (n + 1)

end

end A127169.P351431758389536025

namespace A127169

/-- `A054531(n+1)*A127172(n+1)` -/
def P351431758389536025.Spec : Prop :=
  ∀ n, P351431758389536025.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P4070116770164966704

`A059026(n+1)*A127172(n+1)`
-/

namespace A127169.P4070116770164966704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A127172 (n + 1)

end

end A127169.P4070116770164966704

namespace A127169

/-- `A059026(n+1)*A127172(n+1)` -/
def P4070116770164966704.Spec : Prop :=
  ∀ n, P4070116770164966704.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P456643724832338155

`A126988(n+1)*A127172(n+1)`
-/

namespace A127169.P456643724832338155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A127172 (n + 1)

end

end A127169.P456643724832338155

namespace A127169

/-- `A126988(n+1)*A127172(n+1)` -/
def P456643724832338155.Spec : Prop :=
  ∀ n, P456643724832338155.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P4335439388138148079

`A127172(n+1)*A219158(n+1)`
-/

namespace A127169.P4335439388138148079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127172 (n + 1) * A219158 (n + 1)

end

end A127169.P4335439388138148079

namespace A127169

/-- `A127172(n+1)*A219158(n+1)` -/
def P4335439388138148079.Spec : Prop :=
  ∀ n, P4335439388138148079.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P5103096371371656463

`A127172(n+1)*A234575(n+1)`
-/

namespace A127169.P5103096371371656463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127172 (n + 1) * A234575 (n + 1)

end

end A127169.P5103096371371656463

namespace A127169

/-- `A127172(n+1)*A234575(n+1)` -/
def P5103096371371656463.Spec : Prop :=
  ∀ n, P5103096371371656463.a n = A127169 (n + 1)

end A127169

/-! ## A127169.P41334310543485401

`A127172(n+1)*A372523(n+1)`
-/

namespace A127169.P41334310543485401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127172 (n + 1) * A372523 (n + 1)

end

end A127169.P41334310543485401

namespace A127169

/-- `A127172(n+1)*A372523(n+1)` -/
def P41334310543485401.Spec : Prop :=
  ∀ n, P41334310543485401.a n = A127169 (n + 1)

end A127169

/-!
# A127170: Triangle read by rows: T(n,k) is the number of divisors of n that are divisible by k, with 1 <= k <= n.

The programs for A127170, the canonical program `A127170.P7991433110268517964` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127170 has offset 1).

The definition of A127170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127170.P482793319321253134

`A130209(A286158(n+1))`
-/

namespace A127170.P482793319321253134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (A286158 (n + 1)).toNat

end

end A127170.P482793319321253134

namespace A127170

/-- `A130209(A286158(n+1))` -/
def P482793319321253134.Spec : Prop :=
  ∀ n, P482793319321253134.a n = A127170 (n + 1)

end A127170

/-! ## A127170.P5224408104246328216

`A127168(n)/A010766(n+1)`
-/

namespace A127170.P5224408104246328216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127168 n : ℚ) / (A010766 (n + 1) : ℚ)

end

end A127170.P5224408104246328216

namespace A127170

/-- `A127168(n)/A010766(n+1)` -/
def P5224408104246328216.Spec : Prop :=
  ∀ n, P5224408104246328216.a n = (A127170 (n + 1) : ℚ)

end A127170

/-! ## A127170.P12380935912841516243

`A127168(n)/A049834(n+1)`
-/

namespace A127170.P12380935912841516243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127168 n : ℚ) / (A049834 (n + 1) : ℚ)

end

end A127170.P12380935912841516243

namespace A127170

/-- `A127168(n)/A049834(n+1)` -/
def P12380935912841516243.Spec : Prop :=
  ∀ n, P12380935912841516243.a n = (A127170 (n + 1) : ℚ)

end A127170

/-! ## A127170.P10806551462645402897

`A127168(n)/A051537(n+1)`
-/

namespace A127170.P10806551462645402897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127168 n : ℚ) / (A051537 (n + 1) : ℚ)

end

end A127170.P10806551462645402897

namespace A127170

/-- `A127168(n)/A051537(n+1)` -/
def P10806551462645402897.Spec : Prop :=
  ∀ n, P10806551462645402897.a n = (A127170 (n + 1) : ℚ)

end A127170

/-! ## A127170.P13534964210008119999

`A127168(n)/A054531(n+1)`
-/

namespace A127170.P13534964210008119999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127168 n : ℚ) / (A054531 (n + 1) : ℚ)

end

end A127170.P13534964210008119999

namespace A127170

/-- `A127168(n)/A054531(n+1)` -/
def P13534964210008119999.Spec : Prop :=
  ∀ n, P13534964210008119999.a n = (A127170 (n + 1) : ℚ)

end A127170

/-! ## A127170.P10860516295268175768

`A127168(n)/A059026(n+1)`
-/

namespace A127170.P10860516295268175768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127168 n : ℚ) / (A059026 (n + 1) : ℚ)

end

end A127170.P10860516295268175768

namespace A127170

/-- `A127168(n)/A059026(n+1)` -/
def P10860516295268175768.Spec : Prop :=
  ∀ n, P10860516295268175768.a n = (A127170 (n + 1) : ℚ)

end A127170

/-! ## A127170.P5886722614865173174

`A127168(n)/A219158(n+1)`
-/

namespace A127170.P5886722614865173174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127168 n : ℚ) / (A219158 (n + 1) : ℚ)

end

end A127170.P5886722614865173174

namespace A127170

/-- `A127168(n)/A219158(n+1)` -/
def P5886722614865173174.Spec : Prop :=
  ∀ n, P5886722614865173174.a n = (A127170 (n + 1) : ℚ)

end A127170

/-! ## A127170.P6396610577200868566

`A127168(n)/A234575(n+1)`
-/

namespace A127170.P6396610577200868566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127168 n : ℚ) / (A234575 (n + 1) : ℚ)

end

end A127170.P6396610577200868566

namespace A127170

/-- `A127168(n)/A234575(n+1)` -/
def P6396610577200868566.Spec : Prop :=
  ∀ n, P6396610577200868566.a n = (A127170 (n + 1) : ℚ)

end A127170

/-! ## A127170.P14396506339140943608

`A127168(n)/A372523(n+1)`
-/

namespace A127170.P14396506339140943608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127168 n : ℚ) / (A372523 (n + 1) : ℚ)

end

end A127170.P14396506339140943608

namespace A127170

/-- `A127168(n)/A372523(n+1)` -/
def P14396506339140943608.Spec : Prop :=
  ∀ n, P14396506339140943608.a n = (A127170 (n + 1) : ℚ)

end A127170

/-! ## A127170.P7991433110268517964

`∑{d}[A126988(n+1), A057427(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127170

/-- `∑{d}[A126988(n+1), A057427(#)]` -/
def P7991433110268517964.Spec : Prop :=
  ∀ n, P7991433110268517964.a n = A127170 (n + 1)

theorem P7991433110268517964.correct : P7991433110268517964.Spec := by
  intro n
  simp only [A127170, Nat.add_sub_cancel]

end A127170

/-! ## A127170.P10035322472667039241

`A127471(n+1)/A054526(n+1)`
-/

namespace A127170.P10035322472667039241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127471 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A127170.P10035322472667039241

namespace A127170

/-- `A127471(n+1)/A054526(n+1)` -/
def P10035322472667039241.Spec : Prop :=
  ∀ n, P10035322472667039241.a n = (A127170 (n + 1) : ℚ)

end A127170

/-! ## A127170.P13729595209154583666

`∑{d}[A126988(n+1), A000108(val(3*(#+1), 30))]`
-/

namespace A127170.P13729595209154583666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000108 (SequenceMachineLib.valuation (3 * (d + 1)) 30)

end

end A127170.P13729595209154583666

namespace A127170

/-- `∑{d}[A126988(n+1), A000108(val(3*(#+1), 30))]` -/
def P13729595209154583666.Spec : Prop :=
  ∀ n, P13729595209154583666.a n = A127170 (n + 1)

end A127170

/-! ## A127170.P12745572708141043129

`∑{d}[A126988(n+1), A007318(val(3*(#+1), 30))]`
-/

namespace A127170.P12745572708141043129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (SequenceMachineLib.valuation (3 * (d + 1)) 30)

end

end A127170.P12745572708141043129

namespace A127170

/-- `∑{d}[A126988(n+1), A007318(val(3*(#+1), 30))]` -/
def P12745572708141043129.Spec : Prop :=
  ∀ n, P12745572708141043129.a n = A127170 (n + 1)

end A127170

/-! ## A127170.P248297067507920833

`A002265(A145154(A126988(n+1)))`
-/

namespace A127170.P248297067507920833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A145154 (A126988 (n + 1)).toNat).toNat

end

end A127170.P248297067507920833

namespace A127170

/-- `A002265(A145154(A126988(n+1)))` -/
def P248297067507920833.Spec : Prop :=
  ∀ n, P248297067507920833.a n = A127170 (n + 1)

end A127170

/-! ## A127170.P16229224823674360334

`∑{d}[A126988(n+1), A010055(A000040(#))]`
-/

namespace A127170.P16229224823674360334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010055 (A000040 d).toNat

end

end A127170.P16229224823674360334

namespace A127170

/-- `∑{d}[A126988(n+1), A010055(A000040(#))]` -/
def P16229224823674360334.Spec : Prop :=
  ∀ n, P16229224823674360334.a n = A127170 (n + 1)

end A127170

/-! ## A127170.P6811648702189274156

`∑{d}[A126988(n+1), A048766(A048766(#))]`
-/

namespace A127170.P6811648702189274156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048766 (A048766 d).toNat

end

end A127170.P6811648702189274156

namespace A127170

/-- `∑{d}[A126988(n+1), A048766(A048766(#))]` -/
def P6811648702189274156.Spec : Prop :=
  ∀ n, P6811648702189274156.a n = A127170 (n + 1)

end A127170

/-! ## A127170.P9231907963870299930

`A051731(n+1)+A032741(A126988(n+1))`
-/

namespace A127170.P9231907963870299930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A032741 (A126988 (n + 1)).toNat

end

end A127170.P9231907963870299930

namespace A127170

/-- `A051731(n+1)+A032741(A126988(n+1))` -/
def P9231907963870299930.Spec : Prop :=
  ∀ n, P9231907963870299930.a n = A127170 (n + 1)

end A127170

/-! ## A127170.P18240080323300433592

`A000005(A010766(n+1))*A051731(n+1)`
-/

namespace A127170.P18240080323300433592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A127170.P18240080323300433592

namespace A127170

/-- `A000005(A010766(n+1))*A051731(n+1)` -/
def P18240080323300433592.Spec : Prop :=
  ∀ n, P18240080323300433592.a n = A127170 (n + 1)

end A127170

/-! ## A127170.P18023458694687065699

`A000005(A049834(n+1))*A051731(n+1)`
-/

namespace A127170.P18023458694687065699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A127170.P18023458694687065699

namespace A127170

/-- `A000005(A049834(n+1))*A051731(n+1)` -/
def P18023458694687065699.Spec : Prop :=
  ∀ n, P18023458694687065699.a n = A127170 (n + 1)

end A127170

/-! ## A127170.P1110365705106338781

`A000005(A051537(n+1))*A051731(n+1)`
-/

namespace A127170.P1110365705106338781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A127170.P1110365705106338781

namespace A127170

/-- `A000005(A051537(n+1))*A051731(n+1)` -/
def P1110365705106338781.Spec : Prop :=
  ∀ n, P1110365705106338781.a n = A127170 (n + 1)

end A127170

/-!
# A127171: Difference between largest prime factors of two successive 3-almost primes.

The programs for A127171, there is no canonical definition to state claims against.
-/

/-! ## A127171.P11967375117264808275

`Δ[p?[A054576(n+1)]]`
-/

namespace A127171.P11967375117264808275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127171.P11967375117264808275

/-! ## A127171.P2115235495477868653

`Δ[p?[A117358(2*(n+1))]]`
-/

namespace A127171.P2115235495477868653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127171.P2115235495477868653

/-! ## A127171.P4565551121257535298

`Δ[A006530(A014612(n+1))]`
-/

namespace A127171.P4565551121257535298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127171.P4565551121257535298

/-! ## A127171.P1979894645818983143

`Δ[A006530(A163173(n+1))]`
-/

namespace A127171.P1979894645818983143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A163173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127171.P1979894645818983143

/-! ## A127171.P14776984747310313952

`Δ[p?[A032742(A032742(n+1))]]`
-/

namespace A127171.P14776984747310313952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032742 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127171.P14776984747310313952

/-! ## A127171.P17218092233371524779

`Δ[A006530(A207790(8*n+5))]`
-/

namespace A127171.P17218092233371524779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A207790 (8 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127171.P17218092233371524779

/-! ## A127171.P13573907072908163861

`Δ[A006530(eq[3, A001222(n+1)]+1)]`
-/

namespace A127171.P13573907072908163861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127171.P13573907072908163861

/-! ## A127171.P4119257173081832193

`Δ[A006530(A000720(A124268(n+1)))]`
-/

namespace A127171.P4119257173081832193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000720 (A124268 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127171.P4119257173081832193

/-! ## A127171.P18427940678838487347

`Δ[A006530(A162731(n+1)+A162361(n+1))]`
-/

namespace A127171.P18427940678838487347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A162731 (n + 1) + A162361 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127171.P18427940678838487347

/-!
# A127172: Triangle read by rows: A051731^3 as an infinite lower triangular matrix.

The programs for A127172, the canonical program `A127172.P7443549897825496608` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127172 has offset 1).

The definition of A127172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127172.P7443549897825496608

`A134676(n+1)/A002260(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127172

/-- `A134676(n+1)/A002260(n+1)` -/
def P7443549897825496608.Spec : Prop :=
  ∀ n, P7443549897825496608.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P1492031679919015197

`A127169(n+1)/A010766(n+1)`
-/

namespace A127172.P1492031679919015197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127169 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A127172.P1492031679919015197

namespace A127172

/-- `A127169(n+1)/A010766(n+1)` -/
def P1492031679919015197.Spec : Prop :=
  ∀ n, P1492031679919015197.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P10105215322151645462

`A127169(n+1)/A049834(n+1)`
-/

namespace A127172.P10105215322151645462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127169 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

end

end A127172.P10105215322151645462

namespace A127172

/-- `A127169(n+1)/A049834(n+1)` -/
def P10105215322151645462.Spec : Prop :=
  ∀ n, P10105215322151645462.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P7280330447478083968

`A127169(n+1)/A051537(n+1)`
-/

namespace A127172.P7280330447478083968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127169 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A127172.P7280330447478083968

namespace A127172

/-- `A127169(n+1)/A051537(n+1)` -/
def P7280330447478083968.Spec : Prop :=
  ∀ n, P7280330447478083968.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P7806372288648638206

`A127169(n+1)/A054531(n+1)`
-/

namespace A127172.P7806372288648638206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127169 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A127172.P7806372288648638206

namespace A127172

/-- `A127169(n+1)/A054531(n+1)` -/
def P7806372288648638206.Spec : Prop :=
  ∀ n, P7806372288648638206.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P4142504419543866608

`A134676(n+1)/A050873(n+1)`
-/

namespace A127172.P4142504419543866608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134676 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A127172.P4142504419543866608

namespace A127172

/-- `A134676(n+1)/A050873(n+1)` -/
def P4142504419543866608.Spec : Prop :=
  ∀ n, P4142504419543866608.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P17602435863884489697

`A127169(n+1)/A059026(n+1)`
-/

namespace A127172.P17602435863884489697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127169 (n + 1) : ℚ) / (A059026 (n + 1) : ℚ)

end

end A127172.P17602435863884489697

namespace A127172

/-- `A127169(n+1)/A059026(n+1)` -/
def P17602435863884489697.Spec : Prop :=
  ∀ n, P17602435863884489697.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P13219891260345263674

`A134676(n+1)/A112544(n+1)`
-/

namespace A127172.P13219891260345263674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134676 (n + 1) : ℚ) / (A112544 (n + 1) : ℚ)

end

end A127172.P13219891260345263674

namespace A127172

/-- `A134676(n+1)/A112544(n+1)` -/
def P13219891260345263674.Spec : Prop :=
  ∀ n, P13219891260345263674.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P11523538357463302685

`A134676(n+1)/A123275(n+1)`
-/

namespace A127172.P11523538357463302685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134676 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A127172.P11523538357463302685

namespace A127172

/-- `A134676(n+1)/A123275(n+1)` -/
def P11523538357463302685.Spec : Prop :=
  ∀ n, P11523538357463302685.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P5376535425022267334

`A127169(n+1)/A219158(n+1)`
-/

namespace A127172.P5376535425022267334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127169 (n + 1) : ℚ) / (A219158 (n + 1) : ℚ)

end

end A127172.P5376535425022267334

namespace A127172

/-- `A127169(n+1)/A219158(n+1)` -/
def P5376535425022267334.Spec : Prop :=
  ∀ n, P5376535425022267334.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P12443492531750931816

`A127169(n+1)/A234575(n+1)`
-/

namespace A127172.P12443492531750931816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127169 (n + 1) : ℚ) / (A234575 (n + 1) : ℚ)

end

end A127172.P12443492531750931816

namespace A127172

/-- `A127169(n+1)/A234575(n+1)` -/
def P12443492531750931816.Spec : Prop :=
  ∀ n, P12443492531750931816.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P10912416248029291845

`A134676(n+1)/A307662(n+1)`
-/

namespace A127172.P10912416248029291845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134676 (n + 1) : ℚ) / (A307662 (n + 1) : ℚ)

end

end A127172.P10912416248029291845

namespace A127172

/-- `A134676(n+1)/A307662(n+1)` -/
def P10912416248029291845.Spec : Prop :=
  ∀ n, P10912416248029291845.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P979922563961426496

`A134676(n+1)/A334230(n+1)`
-/

namespace A127172.P979922563961426496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134676 (n + 1) : ℚ) / (A334230 (n + 1) : ℚ)

end

end A127172.P979922563961426496

namespace A127172

/-- `A134676(n+1)/A334230(n+1)` -/
def P979922563961426496.Spec : Prop :=
  ∀ n, P979922563961426496.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P9278853818142915439

`A134676(n+1)/A357554(n+1)`
-/

namespace A127172.P9278853818142915439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134676 (n + 1) : ℚ) / (A357554 (n + 1) : ℚ)

end

end A127172.P9278853818142915439

namespace A127172

/-- `A134676(n+1)/A357554(n+1)` -/
def P9278853818142915439.Spec : Prop :=
  ∀ n, P9278853818142915439.a n = (A127172 (n + 1) : ℚ)

end A127172

/-! ## A127172.P14193702558684311737

`A127169(n+1)/A372523(n+1)`
-/

namespace A127172.P14193702558684311737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127169 (n + 1) : ℚ) / (A372523 (n + 1) : ℚ)

end

end A127172.P14193702558684311737

namespace A127172

/-- `A127169(n+1)/A372523(n+1)` -/
def P14193702558684311737.Spec : Prop :=
  ∀ n, P14193702558684311737.a n = (A127172 (n + 1) : ℚ)

end A127172

/-!
# A127173: T(n,k) = A007427(n/k) if k divides n, T(n,k) = 0 otherwise.

The programs for A127173, the canonical program `A127173.P17703908866789190861` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127173 has offset 1).

The definition of A127173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127173.P17703908866789190861

`∑{d}[A126988(n+1), A007428(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127173

/-- `∑{d}[A126988(n+1), A007428(#)]` -/
def P17703908866789190861.Spec : Prop :=
  ∀ n, P17703908866789190861.a n = A127173 (n + 1)

theorem P17703908866789190861.correct : P17703908866789190861.Spec := by
  intro n
  simp only [A127173, Nat.add_sub_cancel]

end A127173

/-! ## A127173.P9704276970555517423

`A007427(A010766(n+1))*A051731(n+1)`
-/

namespace A127173.P9704276970555517423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A127173.P9704276970555517423

namespace A127173

/-- `A007427(A010766(n+1))*A051731(n+1)` -/
def P9704276970555517423.Spec : Prop :=
  ∀ n, P9704276970555517423.a n = A127173 (n + 1)

end A127173

/-! ## A127173.P17830195495662091705

`A007427(A049834(n+1))*A051731(n+1)`
-/

namespace A127173.P17830195495662091705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A127173.P17830195495662091705

namespace A127173

/-- `A007427(A049834(n+1))*A051731(n+1)` -/
def P17830195495662091705.Spec : Prop :=
  ∀ n, P17830195495662091705.a n = A127173 (n + 1)

end A127173

/-! ## A127173.P2526521548245155298

`A007427(A051537(n+1))*A051731(n+1)`
-/

namespace A127173.P2526521548245155298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A127173.P2526521548245155298

namespace A127173

/-- `A007427(A051537(n+1))*A051731(n+1)` -/
def P2526521548245155298.Spec : Prop :=
  ∀ n, P2526521548245155298.a n = A127173 (n + 1)

end A127173

/-! ## A127173.P5148562941250557368

`A007427(A054531(n+1))*A051731(n+1)`
-/

namespace A127173.P5148562941250557368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A127173.P5148562941250557368

namespace A127173

/-- `A007427(A054531(n+1))*A051731(n+1)` -/
def P5148562941250557368.Spec : Prop :=
  ∀ n, P5148562941250557368.a n = A127173 (n + 1)

end A127173

/-! ## A127173.P8675179985009779606

`∑{d}[A126988(n+1), A327960(#)/A126988(n+1)]`
-/

namespace A127173.P8675179985009779606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A327960 d : ℚ) / (A126988 (n + 1) : ℚ)

end

end A127173.P8675179985009779606

namespace A127173

/-- `∑{d}[A126988(n+1), A327960(#)/A126988(n+1)]` -/
def P8675179985009779606.Spec : Prop :=
  ∀ n, P8675179985009779606.a n = (A127173 (n + 1) : ℚ)

end A127173

/-! ## A127173.P5210900908040395036

`A130094(A120913(n+1))`
-/

namespace A127173.P5210900908040395036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130094 (A120913 (n + 1)).toNat

end

end A127173.P5210900908040395036

namespace A127173

/-- `A130094(A120913(n+1))` -/
def P5210900908040395036.Spec : Prop :=
  ∀ n, P5210900908040395036.a n = A127173 (n + 1)

end A127173

/-! ## A127173.P6254914574623339548

`A127140(n+1)/A010766(n+1)`
-/

namespace A127173.P6254914574623339548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127140 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A127173.P6254914574623339548

namespace A127173

/-- `A127140(n+1)/A010766(n+1)` -/
def P6254914574623339548.Spec : Prop :=
  ∀ n, P6254914574623339548.a n = (A127173 (n + 1) : ℚ)

end A127173

/-! ## A127173.P3413656440101986056

`A127140(n+1)/A049834(n+1)`
-/

namespace A127173.P3413656440101986056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127140 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

end

end A127173.P3413656440101986056

namespace A127173

/-- `A127140(n+1)/A049834(n+1)` -/
def P3413656440101986056.Spec : Prop :=
  ∀ n, P3413656440101986056.a n = (A127173 (n + 1) : ℚ)

end A127173

/-! ## A127173.P16197077899831518755

`A127140(n+1)/A051537(n+1)`
-/

namespace A127173.P16197077899831518755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127140 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A127173.P16197077899831518755

namespace A127173

/-- `A127140(n+1)/A051537(n+1)` -/
def P16197077899831518755.Spec : Prop :=
  ∀ n, P16197077899831518755.a n = (A127173 (n + 1) : ℚ)

end A127173

/-!
# A127174: Numbers n of the form 3*k such that partition number of n is also of the form 3*k.

The programs for A127174, there is no canonical definition to state claims against.
-/

/-! ## A127174.P17734183269665790790

`∩[3*n, A083214(n+1)]`
-/

namespace A127174.P17734183269665790790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127174.P17734183269665790790

/-! ## A127174.P3254966424875104617

`∩[A083214(n+1), A008486(n)]`
-/

namespace A127174.P3254966424875104617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127174.P3254966424875104617

/-! ## A127174.P11565791417280514957

`∩[A083214(n+1), A008585(n)]`
-/

namespace A127174.P11565791417280514957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127174.P11565791417280514957

/-! ## A127174.P17923785148820440528

`∩[A083214(n+1), A204502(n+1)]`
-/

namespace A127174.P17923785148820440528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127174.P17923785148820440528

/-! ## A127174.P5300709379403727877

`3*lt[A068907(3*n), 1]`
-/

namespace A127174.P5300709379403727877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A127174.P5300709379403727877

/-! ## A127174.P5330809217334380618

`eq[1, (A122580(n)-2)%3]`
-/

namespace A127174.P5330809217334380618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122580 n - 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127174.P5330809217334380618

/-! ## A127174.P3382422025079853765

`eq[A068907(n), A087509(n)]`
-/

namespace A127174.P3382422025079853765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127174.P3382422025079853765

/-! ## A127174.P8231215876339848544

`eq[A068907(n), A115273(n)]`
-/

namespace A127174.P8231215876339848544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127174.P8231215876339848544

/-! ## A127174.P5046890019741920814

`eq[A068907(n), A353327(n)]`
-/

namespace A127174.P5046890019741920814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127174.P5046890019741920814

/-! ## A127174.P17054337339181695020

`filter[A083214(n+1), A079978(#)]`
-/

namespace A127174.P17054337339181695020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A127174.P17054337339181695020

/-! ## A127174.P4730225609089529037

`filter[A083214(n+1), A173857(#)]`
-/

namespace A127174.P4730225609089529037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A127174.P4730225609089529037

/-! ## A127174.P4996538036244714286

`filter[A083214(n+1), A329680(#)]`
-/

namespace A127174.P4996538036244714286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A127174.P4996538036244714286

/-! ## A127174.P11550215772067874654

`eq[3, gcd(3, gcd(n, A000041(n)))]`
-/

namespace A127174.P11550215772067874654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (Int.gcd (n : ℤ) (A000041 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127174.P11550215772067874654

/-! ## A127174.P7007511877063472126

`eq[dr(n²), dr(A299473(n))]`
-/

namespace A127174.P7007511877063472126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A299473 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127174.P7007511877063472126

/-!
# A127175: Primes whose "Look And Say" descriptions from left to right (in the sense of method B, i.e., digit-indication followed by frequency) are also primes.

The programs for A127175, there is no canonical definition to state claims against.
-/

/-! ## A127175.P9238831216943837680

`A302568(lt[A333252(n+1), A326674(n+1)])`
-/

namespace A127175.P9238831216943837680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302568 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127175.P9238831216943837680

/-! ## A127175.P15351990778814111461

`A097958(lt[A326015(n+4), A341945(2*(n+1))])`
-/

namespace A127175.P15351990778814111461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326015 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127175.P15351990778814111461

/-!
# A127176: Primes with prime "Look And Say" descriptions from left to right (irrespective of method A or method B).

The programs for A127176, there is no canonical definition to state claims against.
-/

/-! ## A127176.P18316093136066662116

`∩[A056815(n+1), A127175(n+1)]`
-/

namespace A127176.P18316093136066662116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127176.P18316093136066662116

/-! ## A127176.P16555286888563417484

`∩[A036978(n+1), A127175(n+1)]`
-/

namespace A127176.P16555286888563417484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127176.P16555286888563417484

/-! ## A127176.P13644639465638208267

`A056815(lt[A000040(n+5), A109756(n+1)])`
-/

namespace A127176.P13644639465638208267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056815 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127176.P13644639465638208267

/-!
# A127177: Primes whose "Look And Say" descriptions from right to left (in the sense of method A, i.e., frequency followed by digit-indication) are also primes.

The programs for A127177, there is no canonical definition to state claims against.
-/

/-! ## A127177.P14763454141794510721

`A316885(A161908(n+1)+A128353(n+1))`
-/

namespace A127177.P14763454141794510721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316885 (A161908 (n + 1) + A128353 (n + 1)).toNat

end

end A127177.P14763454141794510721

/-! ## A127177.P9417400010246935011

`A006530(A080862(3*n+2)%A080870(n+3))`
-/

namespace A127177.P9417400010246935011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A080862 (3 * n + 2)) (A080870 (n + 3))).toNat

end

end A127177.P9417400010246935011

/-!
# A127178: Primes whose "Look And Say" descriptions from right to left (in the sense of method B, i.e., digit-indication followed by frequency) are also primes.

The programs for A127178, there is no canonical definition to state claims against.
-/

/-! ## A127178.P16777430618408435390

`p?[A210452(A008574(n)²)]`
-/

namespace A127178.P16777430618408435390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210452 (A008574 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127178.P16777430618408435390

/-! ## A127178.P4206544253518522351

`p?[A210452(Δ[A210440(2*n)])]`
-/

namespace A127178.P4206544253518522351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210452 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127178.P4206544253518522351

/-!
# A127179: Primes with prime "Look And Say" descriptions from right to left (irrespective of method A or method B).

The programs for A127179, there is no canonical definition to state claims against.
-/

/-! ## A127179.P1775602626067665154

`∩[A127177(n+1), A127178(n+1)]`
-/

namespace A127179.P1775602626067665154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127179.P1775602626067665154

/-!
# A127180: a(n) = smallest possible (product of b(k)'s + product of c(k)'s), where the positive integers <= n are partitioned somehow into {b(k)} and {c(k)}.

The programs for A127180, there is no canonical definition to state claims against.
-/

/-! ## A127180.P7320339682355862497

`A200744(A028310(n))+A200743(A028310(n))`
-/

namespace A127180.P7320339682355862497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200744 (A028310 n).toNat + A200743 (A028310 n).toNat

end

end A127180.P7320339682355862497

/-! ## A127180.P6650676184169466245

`A027434(n!)`
-/

namespace A127180.P6650676184169466245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (Nat.factorial n)

end

end A127180.P6650676184169466245

/-! ## A127180.P13031652295628248792

`A063655(n!)`
-/

namespace A127180.P13031652295628248792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (Nat.factorial n)

end

end A127180.P13031652295628248792

/-! ## A127180.P13439973489091286459

`A167991(n!)`
-/

namespace A127180.P13439973489091286459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167991 (Nat.factorial n)

end

end A127180.P13439973489091286459

/-!
# A127181: a(1)=a(2)=1. a(n) = smallest possible (product of b(k)'s + product of c(k)'s), where the sequence's terms a(1) through a(n-1) are partitioned somehow into {b(k)} and {c(k)}.

The programs for A127181, there is no canonical definition to state claims against.
-/

/-! ## A127181.P7279657596299589358

`ceil(root(A002966(n+1), 7)²)`
-/

namespace A127181.P7279657596299589358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A002966 (n + 1) : ℝ) ^ (1 / (7 : ℝ))) ^ 2⌉

end

end A127181.P7279657596299589358

/-! ## A127181.P13041857657827164438

`A067539(n*A266510(n+1)+1)`
-/

namespace A127181.P13041857657827164438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067539 ((n : ℤ) * A266510 (n + 1) + 1).toNat

end

end A127181.P13041857657827164438

/-! ## A127181.P11763200155798533212

`A325395(A005117(a(n-1))+1)` with `a(0)=1, a(1)=1`
-/

namespace A127181.P11763200155798533212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A325395 (A005117 (a (n - 1)).toNat + 1).toNat

end

end A127181.P11763200155798533212

/-! ## A127181.P4208165345419561640

`A003309(A284831(2*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A127181.P4208165345419561640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  A003309 (A284831 (2 * a (n - 2)).toNat).toNat

end

end A127181.P4208165345419561640

/-!
# A127182: Number of distinct characteristic polynomials of n X n real robust {0,1}-matrices.

The programs for A127182, there is no canonical definition to state claims against.
-/

/-! ## A127182.P9258418482427739148

`A298043(∏[A290414(n)])`
-/

namespace A127182.P9258418482427739148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298043 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127182.P9258418482427739148

/-!
# A127183: Number of distinct irreducible characteristic polynomials of n X n real robust {0,1}-matrices.

The programs for A127183, there is no canonical definition to state claims against.
-/

/-! ## A127183.P7972598379947746255

`A127182(n+1)-A127184(n+1)`
-/

namespace A127183.P7972598379947746255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127182 (n + 1) - A127184 (n + 1)

end

end A127183.P7972598379947746255

/-!
# A127184: Number of distinct reducible characteristic polynomials of n X n real robust {0,1}-matrices.

The programs for A127184, there is no canonical definition to state claims against.
-/

/-! ## A127184.P1716480044866769379

`A127182(n+1)-A127183(n+1)`
-/

namespace A127184.P1716480044866769379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127182 (n + 1) - A127183 (n + 1)

end

end A127184.P1716480044866769379

/-!
# A127185: Triangle of distances between n>=1 and n>=m>=1 measured by the number of non-common prime factors.

The programs for A127185, the canonical program `A127185.P15535594181796026610` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127185 has offset 1).

The definition of A127185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127185.P15535594181796026610

`∑{e}[A051537(n+1), #]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127185

/-- `∑{e}[A051537(n+1), #]` -/
def P15535594181796026610.Spec : Prop :=
  ∀ n, (P15535594181796026610.a n : ℤ) = A127185 (n + 1)

theorem P15535594181796026610.correct : P15535594181796026610.Spec := by
  intro n
  simp only [A127185, Nat.add_sub_cancel]

end A127185

/-! ## A127185.P14575094554359667156

`A001222(A051537(n+1))`
-/

namespace A127185.P14575094554359667156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051537 (n + 1)).toNat

end

end A127185.P14575094554359667156

namespace A127185

/-- `A001222(A051537(n+1))` -/
def P14575094554359667156.Spec : Prop :=
  ∀ n, P14575094554359667156.a n = A127185 (n + 1)

end A127185

/-! ## A127185.P1667526844868479394

`A001222(A051173(n+1)/A050873(n+1))`
-/

namespace A127185.P1667526844868479394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A051173 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ))).toNat

end

end A127185.P1667526844868479394

namespace A127185

/-- `A001222(A051173(n+1)/A050873(n+1))` -/
def P1667526844868479394.Spec : Prop :=
  ∀ n, P1667526844868479394.a n = A127185 (n + 1)

end A127185

/-! ## A127185.P10917443425169298757

`A130836(A245300(n)+1)`
-/

namespace A127185.P10917443425169298757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130836 (A245300 n + 1).toNat

end

end A127185.P10917443425169298757

namespace A127185

/-- `A130836(A245300(n)+1)` -/
def P10917443425169298757.Spec : Prop :=
  ∀ n, P10917443425169298757.a n = A127185 (n + 1)

end A127185

/-! ## A127185.P9358120334528016571

`A001222(A316431(A087112(n+1)))`
-/

namespace A127185.P9358120334528016571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A316431 (A087112 (n + 1)).toNat).toNat

end

end A127185.P9358120334528016571

namespace A127185

/-- `A001222(A316431(A087112(n+1)))` -/
def P9358120334528016571.Spec : Prop :=
  ∀ n, P9358120334528016571.a n = A127185 (n + 1)

end A127185

/-! ## A127185.P16028104141279335795

`A130836(A286146(n+1))`
-/

namespace A127185.P16028104141279335795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130836 (A286146 (n + 1)).toNat

end

end A127185.P16028104141279335795

namespace A127185

/-- `A130836(A286146(n+1))` -/
def P16028104141279335795.Spec : Prop :=
  ∀ n, P16028104141279335795.a n = A127185 (n + 1)

end A127185

/-!
# A127187: Nearest integer to (n+1)*Bernoulli(n).

The programs for A127187, there is no canonical definition to state claims against.
-/

/-! ## A127187.P10058083837939339026

`round(A050925(n)/A050932(n))`
-/

namespace A127187.P10058083837939339026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050925 n : ℚ) / (A050932 n : ℚ))

end

end A127187.P10058083837939339026

/-! ## A127187.P13092785321205726627

`round(A050925(n)/A140219(n))`
-/

namespace A127187.P13092785321205726627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050925 n : ℚ) / (A140219 n : ℚ))

end

end A127187.P13092785321205726627

/-! ## A127187.P15370045713311087308

`round((n+1)*A027641(n)/A027642(n))`
-/

namespace A127187.P15370045713311087308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((A027641 n : ℚ) / (A027642 n : ℚ)))

end

end A127187.P15370045713311087308

/-! ## A127187.P14693943101637317054

`round(A050925(n)/A100616(A193356(n+1)))`
-/

namespace A127187.P14693943101637317054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050925 n : ℚ) / (A100616 (A193356 (n + 1)).toNat : ℚ))

end

end A127187.P14693943101637317054

/-! ## A127187.P13234650265822496784

`round(A048999(A000096(n))/A000142(n))`
-/

namespace A127187.P13234650265822496784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A048999 (A000096 n).toNat : ℚ) / (A000142 n : ℚ))

end

end A127187.P13234650265822496784

/-!
# A127188: Nearest integer to (2*n+1)*Bernoulli(2*n).

The programs for A127188, there is no canonical definition to state claims against.
-/

/-! ## A127188.P2174298836147376401

`A127187(2*n)`
-/

namespace A127188.P2174298836147376401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127187 (2 * n)

end

end A127188.P2174298836147376401

/-! ## A127188.P10840624640897363872

`round(A002427(n)/A006955(n))`
-/

namespace A127188.P10840624640897363872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002427 n : ℚ) / (A006955 n : ℚ))

end

end A127188.P10840624640897363872

/-! ## A127188.P7579821037501308578

`round(A050925(2*n)/A050932(2*n))`
-/

namespace A127188.P7579821037501308578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050925 (2 * n) : ℚ) / (A050932 (2 * n) : ℚ))

end

end A127188.P7579821037501308578

/-! ## A127188.P17021751442301920308

`round(A050925(2*n)/A140219(2*n))`
-/

namespace A127188.P17021751442301920308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050925 (2 * n) : ℚ) / (A140219 (2 * n) : ℚ))

end

end A127188.P17021751442301920308

/-! ## A127188.P17251608137824383826

`round(A050925(2*n)/A100616(2*n+1))`
-/

namespace A127188.P17251608137824383826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050925 (2 * n) : ℚ) / (A100616 (2 * n + 1) : ℚ))

end

end A127188.P17251608137824383826

/-! ## A127188.P530720363927651390

`A127187(A004277(n))+A000038(n)`
-/

namespace A127188.P530720363927651390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127187 (A004277 n).toNat + A000038 n

end

end A127188.P530720363927651390

/-! ## A127188.P9613295225739911013

`A127187(A004277(n))^A178334(n)`
-/

namespace A127188.P9613295225739911013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127187 (A004277 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A127188.P9613295225739911013

/-! ## A127188.P5998247990220115233

`or(A000007(n), A127187(A005843(n)))`
-/

namespace A127188.P5998247990220115233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A127187 (A005843 n).toNat)

end

end A127188.P5998247990220115233

/-! ## A127188.P12113211554706709993

`A127187(A005843(n))+A036987(A017005(n))`
-/

namespace A127188.P12113211554706709993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127187 (A005843 n).toNat + A036987 (A017005 n).toNat

end

end A127188.P12113211554706709993

/-!
# A127189: E.g.f.: sqrt((1+4*x)/(1+2*x)).

The programs for A127189, there is no canonical definition to state claims against.
-/

/-! ## A127189.P17544039888506995132

`A290348(A260443(2*n))-A249639(n)`
-/

namespace A127189.P17544039888506995132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290348 (A260443 (2 * n)).toNat - A249639 n

end

end A127189.P17544039888506995132

/-!
# A127191: Related to the function "shin" - see reference for precise definition.

The programs for A127191, there is no canonical definition to state claims against.
-/

/-! ## A127191.P5716106895520983430

`A330003(A047241(3*(n+1)))-4`
-/

namespace A127191.P5716106895520983430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330003 (A047241 (3 * (n + 1))).toNat - 4

end

end A127191.P5716106895520983430

/-!
# A127192: Triangle read by rows: square of A054523.

The programs for A127192, the canonical program `A127192.P13574579328313795514` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127192 has offset 1).

The definition of A127192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127192.P143531056091695394

`∑{d}[A126988(n+1), A143275(#)]`
-/

namespace A127192.P143531056091695394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A143275 d

end

end A127192.P143531056091695394

namespace A127192

/-- `∑{d}[A126988(n+1), A143275(#)]` -/
def P143531056091695394.Spec : Prop :=
  ∀ n, P143531056091695394.a n = A127192 (n + 1)

end A127192

/-! ## A127192.P13574579328313795514

`A029935(A010766(n+1))*A051731(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127192

/-- `A029935(A010766(n+1))*A051731(n+1)` -/
def P13574579328313795514.Spec : Prop :=
  ∀ n, P13574579328313795514.a n = A127192 (n + 1)

theorem P13574579328313795514.correct : P13574579328313795514.Spec := by
  intro n
  simp only [A127192, Nat.add_sub_cancel]

end A127192

/-! ## A127192.P14310428135749869686

`A029935(A049834(n+1))*A051731(n+1)`
-/

namespace A127192.P14310428135749869686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A127192.P14310428135749869686

namespace A127192

/-- `A029935(A049834(n+1))*A051731(n+1)` -/
def P14310428135749869686.Spec : Prop :=
  ∀ n, P14310428135749869686.a n = A127192 (n + 1)

end A127192

/-! ## A127192.P12405010699359799155

`A036694(A126988(n+1)%p?[A061556(n)])`
-/

namespace A127192.P12405010699359799155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 (Int.tmod (A126988 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A127192.P12405010699359799155

namespace A127192

/-- `A036694(A126988(n+1)%p?[A061556(n)])` -/
def P12405010699359799155.Spec : Prop :=
  ∀ n, P12405010699359799155.a n = A127192 (n + 1)

end A127192

/-! ## A127192.P3146739863741140519

`gcd(A036694(A126988(n+1)), A048298((n+1)^3))`
-/

namespace A127192.P3146739863741140519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036694 (A126988 (n + 1)).toNat) (A048298 ((n + 1) ^ 3))

end

end A127192.P3146739863741140519

namespace A127192

/-- `gcd(A036694(A126988(n+1)), A048298((n+1)^3))` -/
def P3146739863741140519.Spec : Prop :=
  ∀ n, (P3146739863741140519.a n : ℤ) = A127192 (n + 1)

end A127192

/-!
# A127193: A 9th-order Fibonacci sequence.

The programs for A127193, the canonical program `A127193.P18137219135264365321` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127193 has offset 1).

The definition of A127193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127193.P18137219135264365321

`2*a(n-1)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127193

/-- `2*a(n-1)-a(n-10)` -/
def P18137219135264365321.Spec : Prop :=
  ∀ n, P18137219135264365321.a n = A127193 (n + 1)

theorem P18137219135264365321.correct : P18137219135264365321.Spec := by
  intro n
  simp only [A127193, Nat.add_sub_cancel]

end A127193

/-! ## A127193.P14269321985978980016

`A008619(16*A009714(n))`
-/

namespace A127193.P14269321985978980016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (16 * A009714 n).toNat

end

end A127193.P14269321985978980016

namespace A127193

/-- `A008619(16*A009714(n))` -/
def P14269321985978980016.Spec : Prop :=
  ∀ n, P14269321985978980016.a n = A127193 (n + 1)

end A127193

/-! ## A127193.P337189228036110179

`A133310(12*A354600(n+1))`
-/

namespace A127193.P337189228036110179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (12 * A354600 (n + 1)).toNat

end

end A127193.P337189228036110179

namespace A127193

/-- `A133310(12*A354600(n+1))` -/
def P337189228036110179.Spec : Prop :=
  ∀ n, P337189228036110179.a n = A127193 (n + 1)

end A127193

/-! ## A127193.P9113389619777103286

`A138995(2*A163551(n+5))`
-/

namespace A127193.P9113389619777103286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138995 (2 * A163551 (n + 5)).toNat

end

end A127193.P9113389619777103286

namespace A127193

/-- `A138995(2*A163551(n+5))` -/
def P9113389619777103286.Spec : Prop :=
  ∀ n, P9113389619777103286.a n = A127193 (n + 1)

end A127193

/-! ## A127193.P9352098259807269447

`A016813(lcm(A122265(n+2), A122265(n)))`
-/

namespace A127193.P9352098259807269447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (Int.lcm (A122265 (n + 2)) (A122265 n))

end

end A127193.P9352098259807269447

namespace A127193

/-- `A016813(lcm(A122265(n+2), A122265(n)))` -/
def P9352098259807269447.Spec : Prop :=
  ∀ n, P9352098259807269447.a n = A127193 (n + 1)

end A127193

/-!
# A127194: A 10th-order Fibonacci sequence.

The programs for A127194, there is no canonical definition to state claims against.
-/

/-! ## A127194.P4193853493198011548

`A127624(n+2)-A290148(A127624(n+2))`
-/

namespace A127194.P4193853493198011548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127624 (n + 2) - A290148 (A127624 (n + 2)).toNat

end

end A127194.P4193853493198011548

/-! ## A127194.P2224499681930688935

`A081600(A127624(n+2))`
-/

namespace A127194.P2224499681930688935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (A127624 (n + 2)).toNat

end

end A127194.P2224499681930688935

/-! ## A127194.P7351780766226876585

`A163551(n+4)-A002265(A163551(n+4))`
-/

namespace A127194.P7351780766226876585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163551 (n + 4) - A002265 (A163551 (n + 4)).toNat

end

end A127194.P7351780766226876585

/-! ## A127194.P18410579551907936489

`A008620(∑[A193581(n)]*A054842(n))`
-/

namespace A127194.P18410579551907936489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((∑ j ∈ Finset.range (n + 1), f1 j) * A054842 n).toNat

end

end A127194.P18410579551907936489

/-! ## A127194.P5166893496971552387

`A059268(n)*A067168(A098355(n))+1`
-/

namespace A127194.P5166893496971552387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A067168 ((A098355 n).toNat + 10) + 1

end

end A127194.P5166893496971552387

/-!
# A127195: Number of subsets of {1,2,...,n} which contain no three consecutive odd numbers.

The programs for A127195, there is no canonical definition to state claims against.
-/

/-! ## A127195.P13511847247885725823

`A060546(n)*A209439(A008805(n))`
-/

namespace A127195.P13511847247885725823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A209439 (A008805 n).toNat

end

end A127195.P13511847247885725823

/-! ## A127195.P5103145875338619740

`A279312(n)+record[A140648(n)]`
-/

namespace A127195.P5103145875338619740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279312 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127195.P5103145875338619740

/-! ## A127195.P17097748578398120422

`A279312(n)+record[A140692(n+1)]`
-/

namespace A127195.P17097748578398120422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279312 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127195.P17097748578398120422

/-! ## A127195.P1893280445448072933

`A255408(A279312(n)+A000079(n))`
-/

namespace A127195.P1893280445448072933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A279312 n + A000079 n).toNat

end

end A127195.P1893280445448072933

/-! ## A127195.P17145365452268872023

`A255408(A320487(n)+A279312(n))`
-/

namespace A127195.P17145365452268872023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A320487 n + A279312 n).toNat

end

end A127195.P17145365452268872023

/-!
# A127197: a(n) = numerator( pi(n)/2^n ).

The programs for A127197, the canonical program `A127197.P14762613204547967732` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127197 has offset 2).

The definition of A127197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127197.P17371962702376629130

`A000265(A000720(n+2))`
-/

namespace A127197.P17371962702376629130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000720 (n + 2)).toNat

end

end A127197.P17371962702376629130

namespace A127197

/-- `A000265(A000720(n+2))` -/
def P17371962702376629130.Spec : Prop :=
  ∀ n, P17371962702376629130.a n = A127197 (n + 2)

end A127197

/-! ## A127197.P14762613204547967732

`A000265(∑[A010051(n+2)])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127197

/-- `A000265(∑[A010051(n+2)])` -/
def P14762613204547967732.Spec : Prop :=
  ∀ n, P14762613204547967732.a n = A127197 (n + 2)

theorem P14762613204547967732.correct : P14762613204547967732.Spec := by
  intro n
  simp only [A127197, Nat.add_sub_cancel]

end A127197

/-! ## A127197.P7399309786488603171

`A028234(2*A000720(n+2))`
-/

namespace A127197.P7399309786488603171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A000720 (n + 2)).toNat

end

end A127197.P7399309786488603171

namespace A127197

/-- `A028234(2*A000720(n+2))` -/
def P7399309786488603171.Spec : Prop :=
  ∀ n, P7399309786488603171.a n = A127197 (n + 2)

end A127197

/-! ## A127197.P5656462145389032609

`A366789(A073881(n+2))`
-/

namespace A127197.P5656462145389032609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366789 (A073881 (n + 2)).toNat

end

end A127197.P5656462145389032609

namespace A127197

/-- `A366789(A073881(n+2))` -/
def P5656462145389032609.Spec : Prop :=
  ∀ n, P5656462145389032609.a n = A127197 (n + 2)

end A127197

/-! ## A127197.P5867159598847538440

`A366789(A276000(n+2))`
-/

namespace A127197.P5867159598847538440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366789 (A276000 (n + 2)).toNat

end

end A127197.P5867159598847538440

namespace A127197

/-- `A366789(A276000(n+2))` -/
def P5867159598847538440.Spec : Prop :=
  ∀ n, P5867159598847538440.a n = A127197 (n + 2)

end A127197

/-! ## A127197.P4960943102776956935

`A000265(Δ[A046992(n+1)])`
-/

namespace A127197.P4960943102776956935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A127197.P4960943102776956935

namespace A127197

/-- `A000265(Δ[A046992(n+1)])` -/
def P4960943102776956935.Spec : Prop :=
  ∀ n, P4960943102776956935.a n = A127197 (n + 2)

end A127197

/-! ## A127197.P14259879448482838686

`A000265(∑[A080339(n+2)])`
-/

namespace A127197.P14259879448482838686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127197.P14259879448482838686

namespace A127197

/-- `A000265(∑[A080339(n+2)])` -/
def P14259879448482838686.Spec : Prop :=
  ∀ n, P14259879448482838686.a n = A127197 (n + 2)

end A127197

/-! ## A127197.P8818670302899528627

`A000265(A033270(n+2)+1)`
-/

namespace A127197.P8818670302899528627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A033270 (n + 2) + 1).toNat

end

end A127197.P8818670302899528627

namespace A127197

/-- `A000265(A033270(n+2)+1)` -/
def P8818670302899528627.Spec : Prop :=
  ∀ n, P8818670302899528627.a n = A127197 (n + 2)

end A127197

/-! ## A127197.P10422696373785415397

`A000265(A230980(n+2))`
-/

namespace A127197.P10422696373785415397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A230980 (n + 2)).toNat

end

end A127197.P10422696373785415397

namespace A127197

/-- `A000265(A230980(n+2))` -/
def P10422696373785415397.Spec : Prop :=
  ∀ n, P10422696373785415397.a n = A127197 (n + 2)

end A127197

/-!
# A127199: A monotonic doubly-fractal simple sequence. Erase the last (rightmost) digit of every integer: what is left is the sequence itself. The erased digits, one by one, form also the sequence itself.

The programs for A127199, there is no canonical definition to state claims against.
-/

/-! ## A127199.P4560249141002324357

`A089601(A073150(n+1))`
-/

namespace A127199.P4560249141002324357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089601 (A073150 (n + 1)).toNat

end

end A127199.P4560249141002324357

/-! ## A127199.P10939306273271544976

`A376677(A070939((n+1)!))`
-/

namespace A127199.P10939306273271544976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (A070939 (Nat.factorial (n + 1))).toNat

end

end A127199.P10939306273271544976

/-! ## A127199.P5946082694938746873

`A214215(A070939(∏[n+1]))`
-/

namespace A127199.P5946082694938746873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214215 (A070939 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A127199.P5946082694938746873

