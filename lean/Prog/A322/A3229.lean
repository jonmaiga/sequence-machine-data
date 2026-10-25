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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B003.C004
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
# A322900: Number of integer partitions of n whose parts are all proper powers of the same number.

The programs for A322900, there is no canonical definition to state claims against.
-/

/-! ## A322900.P1424966908992483029

`A072721(n)+ceil(n/98)`
-/

namespace A322900.P1424966908992483029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n + ⌈(n : ℚ) / 98⌉

end

end A322900.P1424966908992483029

/-! ## A322900.P3751601796661351789

`A072721(round(sqrt(n²+1)))-log2(1/4)-1`
-/

namespace A322900.P3751601796661351789
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A072721 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ) - 1

end

end A322900.P3751601796661351789

/-! ## A322900.P5118796137486389406

`A178334(n)+A072721(n)`
-/

namespace A322900.P5118796137486389406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A072721 n

end

end A322900.P5118796137486389406

/-! ## A322900.P5689424148173857844

`abs(A057428(n)-A072721(n))`
-/

namespace A322900.P5689424148173857844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n - A072721 n|

end

end A322900.P5689424148173857844

/-! ## A322900.P2416243713087476629

`abs(A072721(n)-A134824(n))`
-/

namespace A322900.P2416243713087476629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A072721 n - A134824 n|

end

end A322900.P2416243713087476629

/-! ## A322900.P9026940135778253377

`A211666(n+1)+A072721(n)`
-/

namespace A322900.P9026940135778253377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) + A072721 n

end

end A322900.P9026940135778253377

/-! ## A322900.P10847707486593603599

`1-(A000007(n)-A072721(n))`
-/

namespace A322900.P10847707486593603599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 n - A072721 n)

end

end A322900.P10847707486593603599

/-! ## A322900.P12911662676189207919

`A057427(n)*A072721(n)+1`
-/

namespace A322900.P12911662676189207919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A072721 n + 1

end

end A322900.P12911662676189207919

/-! ## A322900.P17829725865763627737

`A323022(2*n+1)+A072721(n)`
-/

namespace A322900.P17829725865763627737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (2 * n + 1) + A072721 n

end

end A322900.P17829725865763627737

/-!
# A322901: Numbers whose prime indices are all powers of the same number.

The programs for A322901, there is no canonical definition to state claims against.
-/

/-! ## A322901.P8205568932778466171

`∪[A320628(n+1), A320698(n+1)]`
-/

namespace A322901.P8205568932778466171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322901.P8205568932778466171

/-! ## A322901.P7624902066463677005

`∪[A113626(n+1), A322911(n+2)]`
-/

namespace A322901.P7624902066463677005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322911 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322901.P7624902066463677005

/-! ## A322901.P5082226024357591866

`record[1-A104194(A348066(n+1))+n]`
-/

namespace A322901.P5082226024357591866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A104194 (A348066 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322901.P5082226024357591866

/-! ## A322901.P2800807676318427824

`∪[eq[1, A322027(2*(n+1))]+1, A302593(n+1)]`
-/

namespace A322901.P2800807676318427824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A322901.P2800807676318427824

/-! ## A322901.P16417715939414292649

`record[A318991(n+1)%A099652(n+1)]`
-/

namespace A322901.P16417715939414292649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318991 (n + 1)) (A099652 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322901.P16417715939414292649

/-!
# A322902: Numbers whose prime indices are all proper powers of the same number.

The programs for A322902, there is no canonical definition to state claims against.
-/

/-! ## A322902.P331249141660864261

`∪[2^n, A322903(n+2)]`
-/

namespace A322902.P331249141660864261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322902.P331249141660864261

/-! ## A322902.P15309100777754654224

`∪[A322903(n+1), A000079(n)]`
-/

namespace A322902.P15309100777754654224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322902.P15309100777754654224

/-! ## A322902.P1929603890625125513

`∪[A322903(n+1), A008860(n)]`
-/

namespace A322902.P1929603890625125513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322902.P1929603890625125513

/-! ## A322902.P6568250350177533038

`∪[A322903(n+1), A008861(n)]`
-/

namespace A322902.P6568250350177533038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322902.P6568250350177533038

/-! ## A322902.P13448779534303356681

`∪[A322903(n+1), A008862(n)]`
-/

namespace A322902.P13448779534303356681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322902.P13448779534303356681

/-! ## A322902.P9777053597596244077

`∪[A322903(n+1), A008863(n)]`
-/

namespace A322902.P9777053597596244077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322902.P9777053597596244077

/-! ## A322902.P9868618017224537603

`∪[A322903(n+1), A051535(n)]`
-/

namespace A322902.P9868618017224537603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322902.P9868618017224537603

/-! ## A322902.P14067997323940620966

`∪[A322903(n+1), A145114(n)]`
-/

namespace A322902.P14067997323940620966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322902.P14067997323940620966

/-! ## A322902.P5294601191889000255

`∪[A322903(n+1), A145115(n)]`
-/

namespace A322902.P5294601191889000255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145115 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322902.P5294601191889000255

/-! ## A322902.P8111483723533330301

`∪[A322903(n+1), A145116(n)]`
-/

namespace A322902.P8111483723533330301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322902.P8111483723533330301

/-!
# A322903: Odd numbers whose prime indices are all proper powers of the same number.

The programs for A322903, there is no canonical definition to state claims against.
-/

/-! ## A322903.P13155295436896414999

`∪[A320700(n+1), A061345(n)]`
-/

namespace A322903.P13155295436896414999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322903.P13155295436896414999

/-! ## A322903.P2230796991328075686

`∪[A322400(n+1), A061345(n)]`
-/

namespace A322903.P2230796991328075686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322903.P2230796991328075686

/-! ## A322903.P2322971726049274822

`∪[A322553(n+1), A061345(n)]`
-/

namespace A322903.P2322971726049274822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322903.P2322971726049274822

/-! ## A322903.P937894358385885253

`∪[A008365(n+1), A322400(n+1)]`
-/

namespace A322903.P937894358385885253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322903.P937894358385885253

/-! ## A322903.P9831382866127179832

`∪[A008365(n+1), A322553(n+1)]`
-/

namespace A322903.P9831382866127179832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322903.P9831382866127179832

/-! ## A322903.P7604105415990831736

`∪[A050150(n+1), A322553(n+1)]`
-/

namespace A322903.P7604105415990831736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322903.P7604105415990831736

/-! ## A322903.P14473859720194170930

`∪[A062090(n+1), A320700(n+1)]`
-/

namespace A322903.P14473859720194170930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322903.P14473859720194170930

/-! ## A322903.P13175741635093756196

`∪[A062090(n+1), A322400(n+1)]`
-/

namespace A322903.P13175741635093756196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322903.P13175741635093756196

/-! ## A322903.P302331595332877975

`∪[A062090(n+1), A322553(n+1)]`
-/

namespace A322903.P302331595332877975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322903.P302331595332877975

/-! ## A322903.P16601193386391692517

`∩[2*n+1, A322902(n+1)]`
-/

namespace A322903.P16601193386391692517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322903.P16601193386391692517

/-!
# A322904: a(n) = Sum_{k=0..n} binomial(2*n+1,2*k+1)*(n^2-1)^(n-k)*n^(2*k).

The programs for A322904, there is no canonical definition to state claims against.
-/

/-! ## A322904.P16940727548881740622

`A188646(A078721(n))`
-/

namespace A322904.P16940727548881740622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188646 (A078721 n).toNat

end

end A322904.P16940727548881740622

/-!
# A322906: The number of zeros in the fundamental Pisano period of the 3-Fibonacci numbers A006190 modulo n.

The programs for A322906, there is no canonical definition to state claims against.
-/

/-! ## A322906.P17871533189337610729

`A175182(n+1)/A322907(n+1)`
-/

namespace A322906.P17871533189337610729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175182 (n + 1) : ℚ) / (A322907 (n + 1) : ℚ)

end

end A322906.P17871533189337610729

/-! ## A322906.P7647918191725901466

`A175182(n+1)/(A262213(n+1)+a(val(n, n+1)))` with `a(0)=1`
-/

namespace A322906.P7647918191725901466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A175182 (n + 1) : ℚ) / ((A262213 (n + 1) : ℚ) + a (SequenceMachineLib.valuation n (n + 1)))

end

end A322906.P7647918191725901466

/-! ## A322906.P15969069307469936537

`A175182(n+1)/(A262213(abs(1-n)+2)%(n+1)²+1)`
-/

namespace A322906.P15969069307469936537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175182 (n + 1) : ℚ) / (Int.tmod (A262213 (|1 - (n : ℤ)| + 2).toNat) ((n + 1) ^ 2 : ℤ) + 1 : ℚ)

end

end A322906.P15969069307469936537

/-! ## A322906.P13192464913952331483

`A175182(n+1)/(A262213(n+1)+a(A001504(n)%2))` with `a(0)=1`
-/

namespace A322906.P13192464913952331483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A175182 (n + 1) : ℚ) / ((A262213 (n + 1) : ℚ) + a (Int.tmod (A001504 n) 2).toNat)

end

end A322906.P13192464913952331483

/-! ## A322906.P7704721051550475457

`A175182(n+1)/(A262213(n+1)+a(A000027(n)-n))` with `a(0)=1`
-/

namespace A322906.P7704721051550475457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A175182 (n + 1) : ℚ) / ((A262213 (n + 1) : ℚ) + a (A000027 n - (n : ℤ)).toNat)

end

end A322906.P7704721051550475457

/-! ## A322906.P2687929830357314589

`1/(A262213(n+1)+a(n-A028310(n)))*A175182(n+1)` with `a(0)=1`
-/

namespace A322906.P2687929830357314589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 / ((A262213 (n + 1) : ℚ) + a ((n : ℤ) - A028310 n).toNat) * (A175182 (n + 1) : ℚ)

end

end A322906.P2687929830357314589

/-! ## A322906.P12677723147251442645

`A175182(n+1)/(A262213(A028310(n)+1)+A158388(n))`
-/

namespace A322906.P12677723147251442645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175182 (n + 1) : ℚ) / (A262213 (A028310 n + 1).toNat + A158388 n : ℚ)

end

end A322906.P12677723147251442645

/-! ## A322906.P18373196312216814209

`A175182(n+1)/(A262213(A233583(n+2))+A158388(n))`
-/

namespace A322906.P18373196312216814209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175182 (n + 1) : ℚ) / (A262213 (A233583 (n + 2)).toNat + A158388 n : ℚ)

end

end A322906.P18373196312216814209

/-! ## A322906.P16957362398374006071

`A175182(n+1)/(A262213(A233583(n+2))+1-A000038(n))`
-/

namespace A322906.P16957362398374006071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175182 (n + 1) : ℚ) / (A262213 (A233583 (n + 2)).toNat + (1 - A000038 n) : ℚ)

end

end A322906.P16957362398374006071

/-!
# A322907: Entry points for the 3-Fibonacci numbers A006190.

The programs for A322907, there is no canonical definition to state claims against.
-/

/-! ## A322907.P14440897547169387334

`A175182(n+1)/A322906(n+1)`
-/

namespace A322907.P14440897547169387334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175182 (n + 1) : ℚ) / (A322906 (n + 1) : ℚ)

end

end A322907.P14440897547169387334

/-! ## A322907.P4312797801576491042

`A262213(n+1)+a(val(n, n+1))` with `a(0)=1`
-/

namespace A322907.P4312797801576491042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262213 (n + 1) + a (SequenceMachineLib.valuation n (n + 1))

end

end A322907.P4312797801576491042

/-! ## A322907.P16671539364048495326

`A262213(abs(1-n)+2)%(n+1)²+1`
-/

namespace A322907.P16671539364048495326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262213 (|1 - (n : ℤ)| + 2).toNat) ((n + 1) ^ 2 : ℤ) + 1

end

end A322907.P16671539364048495326

/-! ## A322907.P8791763458654334731

`A262213(n+1)+a(A020761(n))` with `a(0)=1`
-/

namespace A322907.P8791763458654334731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262213 (n + 1) + a (A020761 n).toNat

end

end A322907.P8791763458654334731

/-! ## A322907.P14292627340031851184

`A262213(n+1)+a(A057427(n)-1)` with `a(0)=1`
-/

namespace A322907.P14292627340031851184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262213 (n + 1) + a (A057427 n - 1).toNat

end

end A322907.P14292627340031851184

/-! ## A322907.P13087776908370984087

`A262213(n+1)+a(A158388(n)-1)` with `a(0)=1`
-/

namespace A322907.P13087776908370984087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262213 (n + 1) + a (A158388 n - 1).toNat

end

end A322907.P13087776908370984087

/-! ## A322907.P3468786681737206057

`A262213(n+1)+a(A001504(n)%2)` with `a(0)=1`
-/

namespace A322907.P3468786681737206057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262213 (n + 1) + a (Int.tmod (A001504 n) 2).toNat

end

end A322907.P3468786681737206057

/-! ## A322907.P13868387985283560506

`A262213(n+1)+a(A000027(n)-n)` with `a(0)=1`
-/

namespace A322907.P13868387985283560506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262213 (n + 1) + a (A000027 n - (n : ℤ)).toNat

end

end A322907.P13868387985283560506

/-! ## A322907.P2623608531710938706

`A262213(n+1)+a(n-A028310(n))` with `a(0)=1`
-/

namespace A322907.P2623608531710938706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262213 (n + 1) + a ((n : ℤ) - A028310 n).toNat

end

end A322907.P2623608531710938706

/-! ## A322907.P4078426361577562405

`A262213(A028310(n)+1)+A158388(n)`
-/

namespace A322907.P4078426361577562405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262213 (A028310 n + 1).toNat + A158388 n

end

end A322907.P4078426361577562405

/-!
# A322909: The permanent of an n X n Toeplitz matrix M(n) whose first row consists of successive positive integer numbers 1, ..., n and whose first column consists of 1, n + 1, ..., 2*n - 1.

The programs for A322909, there is no canonical definition to state claims against.
-/

/-! ## A322909.P14691522889785660448

`A285667(a(n-1)*∑[∑[n]]+1)` with `a(0)=1, a(1)=1`
-/

namespace A322909.P14691522889785660448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A285667 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A322909.P14691522889785660448

/-!
# A322911: Numbers whose prime indices are all powers of the same squarefree number.

The programs for A322911, there is no canonical definition to state claims against.
-/

/-! ## A322911.P1117297164488141047

`∪[A302593(n+1), A320630(n+1)]`
-/

namespace A322911.P1117297164488141047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322911.P1117297164488141047

/-! ## A322911.P17047508987339810045

`∩[A318991(n+1), A322554(n+1)]`
-/

namespace A322911.P17047508987339810045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322911.P17047508987339810045

/-! ## A322911.P4820430989568755299

`∩[A322554(n+1), A322901(n+1)]`
-/

namespace A322911.P4820430989568755299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322911.P4820430989568755299

/-! ## A322911.P112428034518084660

`∩[A322554(n+1), A331995(n+1)]`
-/

namespace A322911.P112428034518084660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322911.P112428034518084660

/-! ## A322911.P2762338687206112535

`∩[A322554(n+1), A347457(n+1)]`
-/

namespace A322911.P2762338687206112535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322911.P2762338687206112535

/-!
# A322912: Number of integer partitions of n whose parts are all powers of the same squarefree number.

The programs for A322912, there is no canonical definition to state claims against.
-/

/-! ## A322912.P1551034360954952247

`∑[A322968(n)]`
-/

namespace A322912.P1551034360954952247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322912.P1551034360954952247

/-! ## A322912.P8696830430262996585

`A322968(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A322912.P8696830430262996585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322968 n + a (A023443 n).toNat

end

end A322912.P8696830430262996585

/-! ## A322912.P11171437446958502415

`A322968(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A322912.P11171437446958502415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322968 (A028310 n).toNat + a (n - 1)

end

end A322912.P11171437446958502415

/-! ## A322912.P1301989722692645164

`A322968(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A322912.P1301989722692645164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322968 n + a (A004273 n - (n : ℤ)).toNat

end

end A322912.P1301989722692645164

/-! ## A322912.P14553798768796156134

`A322968(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A322912.P14553798768796156134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322968 n + a ((n : ℤ) - A057427 n).toNat

end

end A322912.P14553798768796156134

/-! ## A322912.P3752354899479694962

`A322968(A000196(n²))+a(n-1)` with `a(0)=1`
-/

namespace A322912.P3752354899479694962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322968 (A000196 (n ^ 2)).toNat + a (n - 1)

end

end A322912.P3752354899479694962

/-! ## A322912.P7114695772618781473

`A322968(n)+a(n-1)%A303438(n)` with `a(0)=1`
-/

namespace A322912.P7114695772618781473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322968 n + Int.tmod (a (n - 1)) (A303438 n)

end

end A322912.P7114695772618781473

/-! ## A322912.P5682428639040133726

`A322968(n%A006093(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A322912.P5682428639040133726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322968 (Int.tmod (n : ℤ) (A006093 (n + 1))).toNat + a (n - 1)

end

end A322912.P5682428639040133726

/-! ## A322912.P917987426590703976

`a(n-1)+A322968(n)%A125767(n+1)` with `a(0)=1`
-/

namespace A322912.P917987426590703976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A322968 n) (A125767 (n + 1))

end

end A322912.P917987426590703976

/-!
# A322913: Inverse Moebius transform of the sequence (n*A032173(n+2): n >= 1).

The programs for A322913, there is no canonical definition to state claims against.
-/

/-! ## A322913.P9887527552097288494

`∑{d}[n+1, #*A032173(#+2)]`
-/

namespace A322913.P9887527552097288494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A032173 (d + 2)

end

end A322913.P9887527552097288494

/-! ## A322913.P14197604713888986063

`∑[A123229(∑[A124535(n)])]`
-/

namespace A322913.P14197604713888986063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124535 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322913.P14197604713888986063

/-! ## A322913.P3461460841441405729

`∑[∑[A288529(A208453(n))]]`
-/

namespace A322913.P3461460841441405729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288529 (A208453 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322913.P3461460841441405729

/-!
# A322914: a(0)=0; for n>0, a(n) is the number of rooted 4-regular maps on the torus having n vertices.

The programs for A322914, there is no canonical definition to state claims against.
-/

/-! ## A322914.P9491742346708730883

`A068551(n)/2*3^(n-1)`
-/

namespace A322914.P9491742346708730883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068551 n : ℚ) / 2 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A322914.P9491742346708730883

/-! ## A322914.P13610758384948695765

`A140429(n)*A191391(2*n)`
-/

namespace A322914.P13610758384948695765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n * A191391 (2 * n)

end

end A322914.P13610758384948695765

/-! ## A322914.P9351964323472195610

`A058622(2*n)/6*A025192(n+1)`
-/

namespace A322914.P9351964323472195610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058622 (2 * n) : ℚ) / 6 * (A025192 (n + 1) : ℚ)

end

end A322914.P9351964323472195610

/-! ## A322914.P3419640235399468437

`A045621(A004273(n))*A140429(n)`
-/

namespace A322914.P3419640235399468437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (A004273 n).toNat * A140429 n

end

end A322914.P3419640235399468437

/-! ## A322914.P17830521189163233045

`(A094555(n+1)-A094554(n))*A187926(A000124(n))`
-/

namespace A322914.P17830521189163233045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094555 (n + 1) - A094554 n) * A187926 (A000124 n).toNat

end

end A322914.P17830521189163233045

/-!
# A322915: Numbers k such that 301*2^k+1 is prime.

The programs for A322915, there is no canonical definition to state claims against.
-/

/-! ## A322915.P4513817498771595798

`A325990(A054286(n+1))%A054324(n)`
-/

namespace A322915.P4513817498771595798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325990 (A054286 (n + 1)).toNat) (A054324 n)

end

end A322915.P4513817498771595798

/-!
# A322918: a(n) is the number of rooted 6-regular maps with n vertices on the torus.

The programs for A322918, there is no canonical definition to state claims against.
-/

/-! ## A322918.P6085547444394590500

`A000027(A062236(n+1))*A125858(n+1)`
-/

namespace A322918.P6085547444394590500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A062236 (n + 1)).toNat * A125858 (n + 1)

end

end A322918.P6085547444394590500

/-!
# A322921: From Goldbach's conjecture: a(n) is the number of decompositions of 6n into a sum of two primes.

The programs for A322921, there is no canonical definition to state claims against.
-/

/-! ## A322921.P17338696888102081217

`A002375(3*(n+1))`
-/

namespace A322921.P17338696888102081217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (3 * (n + 1))

end

end A322921.P17338696888102081217

/-! ## A322921.P5123213407508654060

`A045917(3*(n+1))`
-/

namespace A322921.P5123213407508654060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (3 * (n + 1))

end

end A322921.P5123213407508654060

/-! ## A322921.P12806373980613518008

`A068307(A016933(n+1))`
-/

namespace A322921.P12806373980613518008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A016933 (n + 1)).toNat

end

end A322921.P12806373980613518008

/-! ## A322921.P2340602706265850345

`A068307(A016921(n+1)+1)`
-/

namespace A322921.P2340602706265850345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A016921 (n + 1) + 1).toNat

end

end A322921.P2340602706265850345

/-! ## A322921.P1206194690568616643

`A190353(6*(n+1))`
-/

namespace A322921.P1206194690568616643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (6 * (n + 1))

end

end A322921.P1206194690568616643

/-! ## A322921.P11841342826905029470

`A061358(6*(n+1))`
-/

namespace A322921.P11841342826905029470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (6 * (n + 1))

end

end A322921.P11841342826905029470

/-! ## A322921.P7929986636084610598

`A083338(6*(n+1))`
-/

namespace A322921.P7929986636084610598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (6 * (n + 1))

end

end A322921.P7929986636084610598

/-! ## A322921.P2744151338992375533

`A117929(A103517(2*n)+A103517(n+1))`
-/

namespace A322921.P2744151338992375533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (A103517 (2 * n) + A103517 (n + 1)).toNat

end

end A322921.P2744151338992375533

/-!
# A322923: Primes of the form 3*p + 4, where p is a prime.

The programs for A322923, there is no canonical definition to state claims against.
-/

/-! ## A322923.P17580985117719536610

`3*A023209(n+1)+4`
-/

namespace A322923.P17580985117719536610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023209 (n + 1) + 4

end

end A322923.P17580985117719536610

/-! ## A322923.P11193883206675666298

`p?[A001748(n+2)+4]`
-/

namespace A322923.P11193883206675666298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322923.P11193883206675666298

/-! ## A322923.P56844302077702193

`p?[A129075(n+1)]`
-/

namespace A322923.P56844302077702193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322923.P56844302077702193

/-! ## A322923.P17648277009021083902

`p?[3*A008864(n+1)+1]`
-/

namespace A322923.P17648277009021083902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008864 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322923.P17648277009021083902

/-! ## A322923.P8082200147482346229

`p?[3*A000040(n+1)+4]`
-/

namespace A322923.P8082200147482346229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322923.P8082200147482346229

/-! ## A322923.P11100405282640149370

`p?[A008864(n+1)+A072055(n+1)+2]`
-/

namespace A322923.P11100405282640149370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A072055 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322923.P11100405282640149370

/-! ## A322923.P9213962398060086744

`p?[A000040(n+1)+A089241(n+1)+2]`
-/

namespace A322923.P9213962398060086744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A089241 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322923.P9213962398060086744

/-! ## A322923.P11881929138761355243

`p?[A055670(n+1)+A072055(n+1)+2]`
-/

namespace A322923.P11881929138761355243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) + (A072055 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322923.P11881929138761355243

/-! ## A322923.P11039289373862671650

`3*p?[A034936(n+1)]+4`
-/

namespace A322923.P11039289373862671650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A322923.P11039289373862671650

/-! ## A322923.P5467226968388351917

`∩[A002476(n+1), A129075(n+1)]`
-/

namespace A322923.P5467226968388351917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322923.P5467226968388351917

/-! ## A322923.P10788205372849857792

`∩[A007645(n+1), A129075(n+1)]`
-/

namespace A322923.P10788205372849857792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322923.P10788205372849857792

/-! ## A322923.P17883435977559794144

`∩[A045331(n+1), A129075(n+1)]`
-/

namespace A322923.P17883435977559794144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322923.P17883435977559794144

/-! ## A322923.P4403725326933078522

`∩[A045375(n+1), A129075(n+1)]`
-/

namespace A322923.P4403725326933078522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322923.P4403725326933078522

/-! ## A322923.P15975679610489782461

`∩[A129075(n+1), A380468(n+1)]`
-/

namespace A322923.P15975679610489782461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322923.P15975679610489782461

/-! ## A322923.P12964165210599852831

`p?[A000203(A100484(n+1))+1]`
-/

namespace A322923.P12964165210599852831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A100484 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322923.P12964165210599852831

/-! ## A322923.P7396683443540880064

`∩[A040116(n+1), A129075(n+1)]`
-/

namespace A322923.P7396683443540880064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322923.P7396683443540880064

/-! ## A322923.P9290006354515124722

`∩[A059500(n+1), A129075(n+1)]`
-/

namespace A322923.P9290006354515124722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322923.P9290006354515124722

/-! ## A322923.P18143510367955056584

`∩[A129075(n+1), A042990(n)]`
-/

namespace A322923.P18143510367955056584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322923.P18143510367955056584

/-! ## A322923.P15457805510951402331

`∩[A045311(n+1), A129075(n+1)]`
-/

namespace A322923.P15457805510951402331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322923.P15457805510951402331

/-! ## A322923.P6246538978541110119

`∩[A129075(n+1), A167464(n+1)]`
-/

namespace A322923.P6246538978541110119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322923.P6246538978541110119

/-!
# A322924: Sum of n-th Bell number and n-th Bell number written backwards.

The programs for A322924, there is no canonical definition to state claims against.
-/

/-! ## A322924.P8800978058809834461

`A000110(n)+A004098(n)`
-/

namespace A322924.P8800978058809834461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + A004098 n

end

end A322924.P8800978058809834461

/-! ## A322924.P9442329246281704679

`A011971(∑[n])+A004098(n)`
-/

namespace A322924.P9442329246281704679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) + A004098 n

end

end A322924.P9442329246281704679

/-! ## A322924.P4630524400104530316

`A095149(∑[n])+A004098(n)`
-/

namespace A322924.P4630524400104530316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) + A004098 n

end

end A322924.P4630524400104530316

/-! ## A322924.P10737530645351734418

`A123081(∑[n])+A004098(n)`
-/

namespace A322924.P10737530645351734418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (∑ j ∈ Finset.range (n + 1), f1 j) + A004098 n

end

end A322924.P10737530645351734418

/-! ## A322924.P8804199452555411699

`A186020(∑[n])+A004098(n)`
-/

namespace A322924.P8804199452555411699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) + A004098 n

end

end A322924.P8804199452555411699

/-! ## A322924.P13458810826688032929

`A004098(n)+Δ[A005001(n)]`
-/

namespace A322924.P13458810826688032929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004098 n + (f1 (n + 1) - f1 n)

end

end A322924.P13458810826688032929

/-! ## A322924.P14304185208033516579

`A056857(A000124(n))+A004098(n)`
-/

namespace A322924.P14304185208033516579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A000124 n).toNat + A004098 n

end

end A322924.P14304185208033516579

/-! ## A322924.P11212486269058734025

`A085838(A000096(n))+A004098(n)`
-/

namespace A322924.P11212486269058734025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085838 (A000096 n).toNat + A004098 n

end

end A322924.P11212486269058734025

/-! ## A322924.P10471033710683678272

`A000110(n)+A302092(n)/A000110(n)`
-/

namespace A322924.P10471033710683678272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 n : ℚ) + (A302092 n : ℚ) / (A000110 n : ℚ)

end

end A322924.P10471033710683678272

/-!
# A322925: Expansion of x*(1 + 2*x + 10*x^2)/((1 - x^2)*(1 - 10*x^2)).

The programs for A322925, the canonical program `A322925.P17865531283267094280` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322925 has offset 0).

The definition of A322925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2+10x^3)/(1-11x^2+10x^4))` (program `A322925.P17865531283267094280`, by `A322925.P17865531283267094280.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322925.P17865531283267094280

`ogf((x+2x^2+10x^3)/(1-11x^2+10x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322925

/-- `ogf((x+2x^2+10x^3)/(1-11x^2+10x^4))` -/
def P17865531283267094280.Spec : Prop :=
  ∀ n, P17865531283267094280.a n = A322925 n

theorem P17865531283267094280.correct : P17865531283267094280.Spec := by
  intro n
  simp only [A322925]

end A322925

/-! ## A322925.P7227582995115555446

`11*a(n-2)-10*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=21`
-/

namespace A322925.P7227582995115555446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 21] fun n a =>
  11 * a (n - 2) - 10 * a (n - 4)

end

end A322925.P7227582995115555446

namespace A322925

/-- `11*a(n-2)-10*a(n-4)` -/
def P7227582995115555446.Spec : Prop :=
  ∀ n, P7227582995115555446.a n = A322925 n

end A322925

/-! ## A322925.P11418363300464973168

`2/9*10^floor((n+1)/2)+(-1)^n/2-13/18`
-/

namespace A322925.P11418363300464973168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 9 * (10 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) + ((-1) ^ n : ℚ) / 2 - (13 : ℚ) / 18

end

end A322925.P11418363300464973168

namespace A322925

/-- `2/9*10^floor((n+1)/2)+(-1)^n/2-13/18` -/
def P11418363300464973168.Spec : Prop :=
  ∀ n, P11418363300464973168.a n = (A322925 n : ℚ)

end A322925

/-! ## A322925.P10095668189490825326

`A094623(n)%A256162(n+1)`
-/

namespace A322925.P10095668189490825326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094623 n) (A256162 (n + 1))

end

end A322925.P10095668189490825326

namespace A322925

/-- `A094623(n)%A256162(n+1)` -/
def P10095668189490825326.Spec : Prop :=
  ∀ n, P10095668189490825326.a n = A322925 n

end A322925

/-! ## A322925.P17136704382101997836

`A094620(n)%A328332(n)`
-/

namespace A322925.P17136704382101997836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094620 n) (A328332 n)

end

end A322925.P17136704382101997836

namespace A322925

/-- `A094620(n)%A328332(n)` -/
def P17136704382101997836.Spec : Prop :=
  ∀ n, P17136704382101997836.a n = A322925 n

end A322925

/-!
# A322926: The successive approximations up to 2^n for 2-adic integer 5^(1/3).

The programs for A322926, there is no canonical definition to state claims against.
-/

/-! ## A322926.P1493186482697756385

`A085027(A305750(n))%A000079(n)`
-/

namespace A322926.P1493186482697756385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085027 (A305750 n).toNat) (A000079 n)

end

end A322926.P1493186482697756385

/-! ## A322926.P8711598360040526753

`and(A000225(n), A085027(A305750(n)))`
-/

namespace A322926.P8711598360040526753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A085027 (A305750 n).toNat)

end

end A322926.P8711598360040526753

/-! ## A322926.P18120236436286515720

`and(A085027(A305750(n)), A178854(n))`
-/

namespace A322926.P18120236436286515720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085027 (A305750 n).toNat) (A178854 n)

end

end A322926.P18120236436286515720

/-! ## A322926.P1044325354977999060

`∑[and(floor(2^(n-1)), A053914(n+1))]`
-/

namespace A322926.P1044325354977999060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A053914 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322926.P1044325354977999060

/-! ## A322926.P421526489445963871

`∑[and(A053914(n+1), A131577(n))]`
-/

namespace A322926.P421526489445963871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053914 (n + 1)) (A131577 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322926.P421526489445963871

/-!
# A322927: Expansion of x*(1 + 5*x + 40*x^2)/((1 - x^2)*(1 - 10*x^2)).

The programs for A322927, the canonical program `A322927.P8022655591787721998` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322927 has offset 0).

The definition of A322927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+5x^2+40x^3)/(1-11x^2+10x^4))` (program `A322927.P8022655591787721998`, by `A322927.P8022655591787721998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322927.P8022655591787721998

`ogf((x+5x^2+40x^3)/(1-11x^2+10x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322927

/-- `ogf((x+5x^2+40x^3)/(1-11x^2+10x^4))` -/
def P8022655591787721998.Spec : Prop :=
  ∀ n, P8022655591787721998.a n = A322927 n

theorem P8022655591787721998.correct : P8022655591787721998.Spec := by
  intro n
  simp only [A322927]

end A322927

/-! ## A322927.P12422569682911982284

`11*a(n-2)-10*a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=51`
-/

namespace A322927.P12422569682911982284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 51] fun n a =>
  11 * a (n - 2) - 10 * a (n - 4)

end

end A322927.P12422569682911982284

namespace A322927

/-- `11*a(n-2)-10*a(n-4)` -/
def P12422569682911982284.Spec : Prop :=
  ∀ n, P12422569682911982284.a n = A322927 n

end A322927

/-! ## A322927.P10241834277976537393

`∪[∑[5*10^n]-4, A093142(n)-1]`
-/

namespace A322927.P10241834277976537393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 10 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093142 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A322927.P10241834277976537393

namespace A322927

/-- `∪[∑[5*10^n]-4, A093142(n)-1]` -/
def P10241834277976537393.Spec : Prop :=
  ∀ n, (P10241834277976537393.a n : ℤ) = A322927 n

end A322927

/-! ## A322927.P15984252570185160907

`∪[∑[5*10^n]-4, A178769(n)-2]`
-/

namespace A322927.P15984252570185160907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 10 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178769 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A322927.P15984252570185160907

namespace A322927

/-- `∪[∑[5*10^n]-4, A178769(n)-2]` -/
def P15984252570185160907.Spec : Prop :=
  ∀ n, (P15984252570185160907.a n : ℤ) = A322927 n

end A322927

/-! ## A322927.P14488086836011284443

`∑[lcm(2, A286508(n))/2-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A322927.P14488086836011284443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (Int.lcm 2 (A286508 n) : ℚ) / 2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322927.P14488086836011284443

namespace A322927

/-- `∑[lcm(2, A286508(n))/2-a(n-1)]` -/
def P14488086836011284443.Spec : Prop :=
  ∀ n, P14488086836011284443.a n = (A322927 n : ℚ)

end A322927

/-! ## A322927.P16053329108198204785

`∪[A002279(n+1)-4, 10*a(n-1)+5]` with `a(0)=0`
-/

namespace A322927.P16053329108198204785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) - 4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  10 * f2 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A322927.P16053329108198204785

namespace A322927

/-- `∪[A002279(n+1)-4, 10*a(n-1)+5]` -/
def P16053329108198204785.Spec : Prop :=
  ∀ n, (P16053329108198204785.a n : ℤ) = A322927 n

end A322927

/-!
# A322928: a(0)=1; for n>0, a(n) is the number of rooted 3-regular maps with 2n vertices on the projective plane.

The programs for A322928, there is no canonical definition to state claims against.
-/

/-! ## A322928.P16798584537164352308

`A058893(∑[n+1])`
-/

namespace A322928.P16798584537164352308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058893 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322928.P16798584537164352308

/-! ## A322928.P9261511352318497152

`record[A058893(A342511(n))]`
-/

namespace A322928.P9261511352318497152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058893 (A342511 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322928.P9261511352318497152

/-!
# A322934: The successive approximations up to 2^n for 2-adic integer 7^(1/3).

The programs for A322934, there is no canonical definition to state claims against.
-/

/-! ## A322934.P14686567491201366174

`∑[and(A011782(n), A096572(3*(n+1)))]`
-/

namespace A322934.P14686567491201366174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011782 n) (A096572 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322934.P14686567491201366174

/-! ## A322934.P13697291840673831794

`∑[2^(-1%(n+1)+n)*A285383(A026547(n+3))]`
-/

namespace A322934.P13697291840673831794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (-1) (n + 1 : ℤ) + (n : ℤ) : ℤ) * (A285383 (A026547 (n + 3)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322934.P13697291840673831794

/-! ## A322934.P587617187038158040

`∑[A011782(n)*A285383(A026547(n+3))]`
-/

namespace A322934.P587617187038158040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A285383 (A026547 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322934.P587617187038158040

/-! ## A322934.P6772852338453740201

`∑[and(ceil(2^(n-1)), A098621(n+1))]`
-/

namespace A322934.P6772852338453740201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A098621 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322934.P6772852338453740201

/-! ## A322934.P696647656028090877

`∑[and(ceil(2^(n-1)), A103062(n+1))]`
-/

namespace A322934.P696647656028090877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A103062 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322934.P696647656028090877

/-!
# A322938: a(n) = binomial(2*n + 2, n + 2) - 1.

The programs for A322938, the canonical program `A322938.P7898125035169023575` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322938 has offset 0).

The definition of A322938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+2, n+2)-1` (program `A322938.P7898125035169023575`, by `A322938.P7898125035169023575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322938.P744095592749368515

`A001791(n+1)-1`
-/

namespace A322938.P744095592749368515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) - 1

end

end A322938.P744095592749368515

namespace A322938

/-- `A001791(n+1)-1` -/
def P744095592749368515.Spec : Prop :=
  ∀ n, P744095592749368515.a n = A322938 n

end A322938

/-! ## A322938.P7898125035169023575

`C(2*n+2, n+2)-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322938

/-- `C(2*n+2, n+2)-1` -/
def P7898125035169023575.Spec : Prop :=
  ∀ n, P7898125035169023575.a n = A322938 n

theorem P7898125035169023575.correct : P7898125035169023575.Spec := by
  intro n
  simp only [A322938]

end A322938

/-! ## A322938.P14192612278872622580

`A323229(n+1)-2`
-/

namespace A322938.P14192612278872622580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323229 (n + 1) - 2

end

end A322938.P14192612278872622580

namespace A322938

/-- `A323229(n+1)-2` -/
def P14192612278872622580.Spec : Prop :=
  ∀ n, P14192612278872622580.a n = A322938 n

theorem P14192612278872622580.correct : P14192612278872622580.Spec := by
  intro n
  simp only [A322938, Nat.add_sub_cancel, A322938.P14192612278872622580.a, A322938.P7898125035169023575.a, A323229, A323229.P2576164808709639097.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A322938

/-! ## A322938.P10935322862243743870

`A047171(2*(n+1))`
-/

namespace A322938.P10935322862243743870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (2 * (n + 1))

end

end A322938.P10935322862243743870

namespace A322938

/-- `A047171(2*(n+1))` -/
def P10935322862243743870.Spec : Prop :=
  ∀ n, P10935322862243743870.a n = A322938 n

end A322938

/-! ## A322938.P2242346975665304391

`A047182(2*(n+1))`
-/

namespace A322938.P2242346975665304391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047182 (2 * (n + 1))

end

end A322938.P2242346975665304391

namespace A322938

/-- `A047182(2*(n+1))` -/
def P2242346975665304391.Spec : Prop :=
  ∀ n, P2242346975665304391.a n = A322938 n

end A322938

/-! ## A322938.P7527304291656696558

`A026023(2*n)-1`
-/

namespace A322938.P7527304291656696558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 (2 * n) - 1

end

end A322938.P7527304291656696558

namespace A322938

/-- `A026023(2*n)-1` -/
def P7527304291656696558.Spec : Prop :=
  ∀ n, P7527304291656696558.a n = A322938 n

end A322938

/-! ## A322938.P7679691385443295698

`A117187(2*n)-1`
-/

namespace A322938.P7679691385443295698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117187 (2 * n) - 1

end

end A322938.P7679691385443295698

namespace A322938

/-- `A117187(2*n)-1` -/
def P7679691385443295698.Spec : Prop :=
  ∀ n, P7679691385443295698.a n = A322938 n

end A322938

/-! ## A322938.P5302138037004848964

`A350653(n+2)+n`
-/

namespace A322938.P5302138037004848964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350653 (n + 2) + (n : ℤ)

end

end A322938.P5302138037004848964

namespace A322938

/-- `A350653(n+2)+n` -/
def P5302138037004848964.Spec : Prop :=
  ∀ n, P5302138037004848964.a n = A322938 n

end A322938

/-! ## A322938.P1941365608311758554

`∑[∑[A073663(n)]]-1`
-/

namespace A322938.P1941365608311758554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073663 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A322938.P1941365608311758554

namespace A322938

/-- `∑[∑[A073663(n)]]-1` -/
def P1941365608311758554.Spec : Prop :=
  ∀ n, P1941365608311758554.a n = A322938 n

end A322938

/-! ## A322938.P3086261873005438817

`∑[A076540(n+1)]-1`
-/

namespace A322938.P3086261873005438817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A322938.P3086261873005438817

namespace A322938

/-- `∑[A076540(n+1)]-1` -/
def P3086261873005438817.Spec : Prop :=
  ∀ n, P3086261873005438817.a n = A322938 n

end A322938

/-! ## A322938.P504747091616310584

`Δ[A279561(n+1)]-1`
-/

namespace A322938.P504747091616310584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A322938.P504747091616310584

namespace A322938

/-- `Δ[A279561(n+1)]-1` -/
def P504747091616310584.Spec : Prop :=
  ∀ n, P504747091616310584.a n = A322938 n

end A322938

/-! ## A322938.P6851912319482017803

`A007007(2*(n+1))-1`
-/

namespace A322938.P6851912319482017803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 (2 * (n + 1)) - 1

end

end A322938.P6851912319482017803

namespace A322938

/-- `A007007(2*(n+1))-1` -/
def P6851912319482017803.Spec : Prop :=
  ∀ n, P6851912319482017803.a n = A322938 n

end A322938

/-! ## A322938.P5270303542246070990

`A037952(2*(n+1))-1`
-/

namespace A322938.P5270303542246070990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * (n + 1)) - 1

end

end A322938.P5270303542246070990

namespace A322938

/-- `A037952(2*(n+1))-1` -/
def P5270303542246070990.Spec : Prop :=
  ∀ n, P5270303542246070990.a n = A322938 n

end A322938

/-! ## A322938.P9049959062112105074

`A037955(2*(n+1))-1`
-/

namespace A322938.P9049959062112105074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * (n + 1)) - 1

end

end A322938.P9049959062112105074

namespace A322938

/-- `A037955(2*(n+1))-1` -/
def P9049959062112105074.Spec : Prop :=
  ∀ n, P9049959062112105074.a n = A322938 n

end A322938

/-! ## A322938.P5641052554947331869

`Δ[A332754(2*(n+1))]-1`
-/

namespace A322938.P5641052554947331869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A322938.P5641052554947331869

namespace A322938

/-- `Δ[A332754(2*(n+1))]-1` -/
def P5641052554947331869.Spec : Prop :=
  ∀ n, P5641052554947331869.a n = A322938 n

end A322938

/-! ## A322938.P5414375819096896885

`(n+1)*A000108(n+1)-1`
-/

namespace A322938.P5414375819096896885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 (n + 1) - 1

end

end A322938.P5414375819096896885

namespace A322938

/-- `(n+1)*A000108(n+1)-1` -/
def P5414375819096896885.Spec : Prop :=
  ∀ n, P5414375819096896885.a n = A322938 n

end A322938

/-! ## A322938.P17948317334535036757

`(n+1)*A141364(n+1)+n`
-/

namespace A322938.P17948317334535036757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A141364 (n + 1) + (n : ℤ)

end

end A322938.P17948317334535036757

namespace A322938

/-- `(n+1)*A141364(n+1)+n` -/
def P17948317334535036757.Spec : Prop :=
  ∀ n, P17948317334535036757.a n = A322938 n

end A322938

/-! ## A322938.P1171977335610061555

`A274104(n)-A014137(n+1)`
-/

namespace A322938.P1171977335610061555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274104 n - A014137 (n + 1)

end

end A322938.P1171977335610061555

namespace A322938

/-- `A274104(n)-A014137(n+1)` -/
def P1171977335610061555.Spec : Prop :=
  ∀ n, P1171977335610061555.a n = A322938 n

end A322938

/-! ## A322938.P12739494771217989348

`A057552(n)-A279561(n+1)`
-/

namespace A322938.P12739494771217989348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057552 n - A279561 (n + 1)

end

end A322938.P12739494771217989348

namespace A322938

/-- `A057552(n)-A279561(n+1)` -/
def P12739494771217989348.Spec : Prop :=
  ∀ n, P12739494771217989348.a n = A322938 n

end A322938

/-! ## A322938.P10509657826012937048

`A246434(n+1)+A007851(n+1)`
-/

namespace A322938.P10509657826012937048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246434 (n + 1) + A007851 (n + 1)

end

end A322938.P10509657826012937048

namespace A322938

/-- `A246434(n+1)+A007851(n+1)` -/
def P10509657826012937048.Spec : Prop :=
  ∀ n, P10509657826012937048.a n = A322938 n

end A322938

/-!
# A322939: a(n) = [x^n] (4*x^2 + x - 1)/(4*x^3 + 3*x^2 + 2*x - 1).

The programs for A322939, the canonical program `A322939.P7680653730143909228` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322939 has offset 0).

The definition of A322939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322939.P7680653730143909228

`4*a(n-3)+3*a(n-2)+2*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322939

/-- `4*a(n-3)+3*a(n-2)+2*a(n-1)` -/
def P7680653730143909228.Spec : Prop :=
  ∀ n, (P7680653730143909228.a n : ℤ) = A322939 n

theorem P7680653730143909228.correct : P7680653730143909228.Spec := by
  intro n
  simp only [A322939]

end A322939

/-! ## A322939.P17554791924794220005

`ogf((-1+x+4x^2)/(-1+2x+3x^2+4x^3))`
-/

namespace A322939.P17554791924794220005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4] [1, -2, -3, -4] n

end

end A322939.P17554791924794220005

namespace A322939

/-- `ogf((-1+x+4x^2)/(-1+2x+3x^2+4x^3))` -/
def P17554791924794220005.Spec : Prop :=
  ∀ n, P17554791924794220005.a n = A322939 n

end A322939

/-! ## A322939.P5226573977236740330

`A219931(A394941(n))`
-/

namespace A322939.P5226573977236740330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219931 (A394941 n).toNat

end

end A322939.P5226573977236740330

namespace A322939

/-- `A219931(A394941(n))` -/
def P5226573977236740330.Spec : Prop :=
  ∀ n, P5226573977236740330.a n = A322939 n

end A322939

/-!
# A322940: a(n) = [x^n] (4*x^2 + x - 1)/(2*x^2 + 3*x - 1).

The programs for A322940, the canonical program `A322940.P10617762001897037796` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322940 has offset 0).

The definition of A322940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322940.P10617762001897037796

`3*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322940

/-- `3*a(n-1)+2*a(n-2)` -/
def P10617762001897037796.Spec : Prop :=
  ∀ n, (P10617762001897037796.a n : ℤ) = A322940 n

theorem P10617762001897037796.correct : P10617762001897037796.Spec := by
  intro n
  simp only [A322940]

end A322940

/-! ## A322940.P3517364509592918214

`ogf((-1+x+4x^2)/(-1+3x+2x^2))`
-/

namespace A322940.P3517364509592918214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4] [1, -3, -2] n

end

end A322940.P3517364509592918214

namespace A322940

/-- `ogf((-1+x+4x^2)/(-1+3x+2x^2))` -/
def P3517364509592918214.Spec : Prop :=
  ∀ n, P3517364509592918214.a n = A322940 n

end A322940

/-! ## A322940.P13507788231113408723

`3*a(n-1)-2*xor(1, 1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A322940.P13507788231113408723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - 2 * Int.xor 1 (1 - a (n - 2))

end

end A322940.P13507788231113408723

namespace A322940

/-- `3*a(n-1)-2*xor(1, 1-a(n-2))` -/
def P13507788231113408723.Spec : Prop :=
  ∀ n, P13507788231113408723.a n = A322940 n

end A322940

/-! ## A322940.P13784103824574625618

`a(n-2)+a(n-2)+lcm(3, a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A322940.P13784103824574625618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + (a (n - 2) + Nat.lcm 3 (a (n - 1)))

end

end A322940.P13784103824574625618

namespace A322940

/-- `a(n-2)+a(n-2)+lcm(3, a(n-1))` -/
def P13784103824574625618.Spec : Prop :=
  ∀ n, (P13784103824574625618.a n : ℤ) = A322940 n

end A322940

/-! ## A322940.P9551199281388278768

`2*a(n-2)-(a(n-1)-4*a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A322940.P9551199281388278768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 2) - (a (n - 1) - 4 * a (n - 1))

end

end A322940.P9551199281388278768

namespace A322940

/-- `2*a(n-2)-(a(n-1)-4*a(n-1))` -/
def P9551199281388278768.Spec : Prop :=
  ∀ n, P9551199281388278768.a n = A322940 n

end A322940

/-! ## A322940.P9581586346092149952

`A189736(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A322940.P9581586346092149952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A189736 n + a (n - 1)

end

end A322940.P9581586346092149952

namespace A322940

/-- `A189736(n)+a(n-1)` -/
def P9581586346092149952.Spec : Prop :=
  ∀ n, P9581586346092149952.a n = A322940 n

end A322940

/-! ## A322940.P11032535718922804297

`A189604(n)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A322940.P11032535718922804297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A189604 n - a (n - 1)

end

end A322940.P11032535718922804297

namespace A322940

/-- `A189604(n)-a(n-1)` -/
def P11032535718922804297.Spec : Prop :=
  ∀ n, P11032535718922804297.a n = A322940 n

end A322940

/-! ## A322940.P10200708852391537842

`A007483(n)%A206776(n)`
-/

namespace A322940.P10200708852391537842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007483 n) (A206776 n)

end

end A322940.P10200708852391537842

namespace A322940

/-- `A007483(n)%A206776(n)` -/
def P10200708852391537842.Spec : Prop :=
  ∀ n, P10200708852391537842.a n = A322940 n

end A322940

/-! ## A322940.P8273077926773558042

`(A007483(n)-A206776(n))^A135517(A008864(n+1))`
-/

namespace A322940.P8273077926773558042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007483 n - A206776 n : ℚ) ^ (A135517 (A008864 (n + 1)).toNat : ℤ)

end

end A322940.P8273077926773558042

namespace A322940

/-- `(A007483(n)-A206776(n))^A135517(A008864(n+1))` -/
def P8273077926773558042.Spec : Prop :=
  ∀ n, P8273077926773558042.a n = (A322940 n : ℚ)

end A322940

/-! ## A322940.P8112757422660926564

`Δ[A052986(n)]%A206776(n)`
-/

namespace A322940.P8112757422660926564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A206776 n)

end

end A322940.P8112757422660926564

namespace A322940

/-- `Δ[A052986(n)]%A206776(n)` -/
def P8112757422660926564.Spec : Prop :=
  ∀ n, P8112757422660926564.a n = A322940 n

end A322940

/-! ## A322940.P10425109732385650581

`A007484(n+3)%A007484(n)`
-/

namespace A322940.P10425109732385650581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007484 (n + 3)) (A007484 n)

end

end A322940.P10425109732385650581

namespace A322940

/-- `A007484(n+3)%A007484(n)` -/
def P10425109732385650581.Spec : Prop :=
  ∀ n, P10425109732385650581.a n = A322940 n

end A322940

/-!
# A322942: Jacobsthal triangle, coefficients of orthogonal polynomials J(n, x) where J(n, 0) are the Jacobsthal numbers (A001045 with a(0) = 1). Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A322942, there is no canonical definition to state claims against.
-/

/-! ## A322942.P7344088320720128801

`A226764(A318397(n)+4)`
-/

namespace A322942.P7344088320720128801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (A318397 n + 4).toNat

end

end A322942.P7344088320720128801

/-! ## A322942.P1568729742217782546

`A285189(A112519(n)+A110877(n))`
-/

namespace A322942.P1568729742217782546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A112519 n + A110877 n).toNat

end

end A322942.P1568729742217782546

/-! ## A322942.P18443071480859599512

`A285189(A206474(n)+A110877(n))`
-/

namespace A322942.P18443071480859599512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A206474 n + A110877 n).toNat

end

end A322942.P18443071480859599512

/-! ## A322942.P8994005955982693781

`A285189(A238342(n)+A110877(n))`
-/

namespace A322942.P8994005955982693781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A238342 n + A110877 n).toNat

end

end A322942.P8994005955982693781

/-! ## A322942.P11213394976442733007

`A285189(A277149(n)+A110877(n))`
-/

namespace A322942.P11213394976442733007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A277149 n + A110877 n).toNat

end

end A322942.P11213394976442733007

/-!
# A322943: a(n) = n! [x^n] -exp(-1/(3*(x - 1)^3) - 1/3)/(x - 1).

The programs for A322943, there is no canonical definition to state claims against.
-/

/-! ## A322943.P6019188777270854863

`A049377(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A322943.P6019188777270854863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049377 n + (n : ℤ) * a (n - 1)

end

end A322943.P6019188777270854863

/-! ## A322943.P12470343833778262250

`A291709(A052905(n+2))+n*a(n-1)` with `a(0)=1`
-/

namespace A322943.P12470343833778262250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291709 (A052905 (n + 2)).toNat + (n : ℤ) * a (n - 1)

end

end A322943.P12470343833778262250

/-!
# A322945: Numbers k such that 307*2^k+1 is prime.

The programs for A322945, there is no canonical definition to state claims against.
-/

/-! ## A322945.P8443231890348872663

`Δ[A082720(A181408(n+1))]`
-/

namespace A322945.P8443231890348872663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082720 (A181408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322945.P8443231890348872663

/-! ## A322945.P12549064260010482117

`2*eq[A027300(n+1), A246694(n)]`
-/

namespace A322945.P12549064260010482117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322945.P12549064260010482117

/-!
# A322946: Numbers k such that 311*2^k+1 is prime.

The programs for A322946, there is no canonical definition to state claims against.
-/

/-! ## A322946.P229596990772237260

`xor(12, A024351(A035258(n+1)))`
-/

namespace A322946.P229596990772237260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 12 (A024351 (A035258 (n + 1)).toNat)

end

end A322946.P229596990772237260

/-!
# A322947: Numbers k such that 2k + 1 is a palindromic prime.

The programs for A322947, there is no canonical definition to state claims against.
-/

/-! ## A322947.P1546632081293176088

`(A002385(n+2)-1)/2`
-/

namespace A322947.P1546632081293176088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002385 (n + 2) - 1 : ℚ) / 2

end

end A322947.P1546632081293176088

/-! ## A322947.P6390176023440426233

`floor(A002385(n+2)/2)`
-/

namespace A322947.P6390176023440426233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002385 (n + 2) : ℚ) / 2⌋

end

end A322947.P6390176023440426233

/-! ## A322947.P13051974621026082159

`∑[round(A037010(n+1)/2)]`
-/

namespace A322947.P13051974621026082159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037010 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322947.P13051974621026082159

/-! ## A322947.P13239796786132789310

`∑[ceil(Δ[A002385(n+1)/2])]`
-/

namespace A322947.P13239796786132789310
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002385 (n + 1) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322947.P13239796786132789310

/-! ## A322947.P8747361338348811026

`floor(Δ[A046485(n+1)/2])`
-/

namespace A322947.P8747361338348811026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046485 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A322947.P8747361338348811026

/-! ## A322947.P1584310691068623772

`xor(A002385(n+2), A010051(A006093(n+1)+1))/2`
-/

namespace A322947.P1584310691068623772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A002385 (n + 2)) (A010051 (A006093 (n + 1) + 1).toNat) : ℚ) / 2

end

end A322947.P1584310691068623772

/-! ## A322947.P5875404813009740167

`floor(A069217(n+3)/2)`
-/

namespace A322947.P5875404813009740167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069217 (n + 3) : ℚ) / 2⌋

end

end A322947.P5875404813009740167

/-! ## A322947.P9831736968214339632

`floor(p?[A002113(n+4)]/2)`
-/

namespace A322947.P9831736968214339632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A322947.P9831736968214339632

/-! ## A322947.P12385096211402751683

`A102781(A075807(n+2))`
-/

namespace A322947.P12385096211402751683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (A075807 (n + 2)).toNat

end

end A322947.P12385096211402751683

/-!
# A322948: Numbers k such that 313*2^k+1 is prime.

The programs for A322948, there is no canonical definition to state claims against.
-/

/-! ## A322948.P1978906747423102262

`A225524(n)+A225443(A225380(n))`
-/

namespace A322948.P1978906747423102262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225524 n + A225443 (A225380 n).toNat

end

end A322948.P1978906747423102262

/-! ## A322948.P9208537028779837062

`A284859(A074206(n))+A018321(3*(n+1))`
-/

namespace A322948.P9208537028779837062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284859 (A074206 n).toNat + A018321 (3 * (n + 1))

end

end A322948.P9208537028779837062

/-!
# A322951: Numbers k such that 319*2^k+1 is prime.

The programs for A322951, there is no canonical definition to state claims against.
-/

/-! ## A322951.P13278884454670296935

`A028234(A087316(n+1)+1)+1`
-/

namespace A322951.P13278884454670296935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A087316 (n + 1) + 1).toNat + 1

end

end A322951.P13278884454670296935

/-!
# A322952: Numbers k such that 321*2^k+1 is prime.

The programs for A322952, there is no canonical definition to state claims against.
-/

/-! ## A322952.P13985644493432452518

`A087815(A273683(n))`
-/

namespace A322952.P13985644493432452518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087815 (A273683 n).toNat

end

end A322952.P13985644493432452518

/-!
# A322957: Numbers k such that 329*2^k+1 is prime.

The programs for A322957, there is no canonical definition to state claims against.
-/

/-! ## A322957.P16285004862661301960

`or(A109324(n+1), A262689(A000426(n+1)))`
-/

namespace A322957.P16285004862661301960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109324 (n + 1)) (A262689 (A000426 (n + 1)).toNat)

end

end A322957.P16285004862661301960

/-! ## A322957.P4878560854020735787

`or(A113294(n+1), A178334(A036378(2*n)))`
-/

namespace A322957.P4878560854020735787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113294 (n + 1)) (A178334 (A036378 (2 * n)).toNat)

end

end A322957.P4878560854020735787

/-!
# A322958: Numbers k such that 331*2^k+1 is prime.

The programs for A322958, there is no canonical definition to state claims against.
-/

/-! ## A322958.P9823853724105574634

`A387176(A080137(n+1))`
-/

namespace A322958.P9823853724105574634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387176 (A080137 (n + 1)).toNat

end

end A322958.P9823853724105574634

/-! ## A322958.P6832240139086488766

`4*A193404(A329675(n))`
-/

namespace A322958.P6832240139086488766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A193404 (A329675 n).toNat

end

end A322958.P6832240139086488766

/-!
# A322960: Numbers k such that 335*2^k+1 is prime.

The programs for A322960, there is no canonical definition to state claims against.
-/

/-! ## A322960.P5002254264320259755

`p?[A029022(n)+A000045(n)+17]`
-/

namespace A322960.P5002254264320259755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029022 n + A000045 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322960.P5002254264320259755

/-!
# A322965: Numerator of Sum_{d | n} 1/rad(d).

The programs for A322965, the canonical program `A322965.P7905832375060057443` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322965 has offset 1).

The definition of A322965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322965.P17489648873273206719

`A008473(n+1)/A007947(n+1)*A322966(n+1)`
-/

namespace A322965.P17489648873273206719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008473 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A322966 (n + 1) : ℚ)

end

end A322965.P17489648873273206719

namespace A322965

/-- `A008473(n+1)/A007947(n+1)*A322966(n+1)` -/
def P17489648873273206719.Spec : Prop :=
  ∀ n, P17489648873273206719.a n = (A322965 (n + 1) : ℚ)

end A322965

/-! ## A322965.P7905832375060057443

`A008473(n+1)/gcd(A008473(n+1), A062953(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322965

/-- `A008473(n+1)/gcd(A008473(n+1), A062953(n+1))` -/
def P7905832375060057443.Spec : Prop :=
  ∀ n, P7905832375060057443.a n = (A322965 (n + 1) : ℚ)

end A322965

/-! ## A322965.P11645209408298673754

`A008473(n+1)/A007947(A007947(n+1)/A322966(n+1))`
-/

namespace A322965.P11645209408298673754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008473 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) / (A322966 (n + 1) : ℚ))).toNat : ℚ)

end

end A322965.P11645209408298673754

namespace A322965

/-- `A008473(n+1)/A007947(A007947(n+1)/A322966(n+1))` -/
def P11645209408298673754.Spec : Prop :=
  ∀ n, P11645209408298673754.a n = (A322965 (n + 1) : ℚ)

end A322965

/-!
# A322966: Denominator of Sum_{d | n} 1/rad(d) where rad = A007947.

The programs for A322966, the canonical program `A322966.P13519530522843253695` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322966 has offset 1).

The definition of A322966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322966.P13519530522843253695

`A007947(n+1)/A008473(n+1)*A322965(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A322966

/-- `A007947(n+1)/A008473(n+1)*A322965(n+1)` -/
def P13519530522843253695.Spec : Prop :=
  ∀ n, P13519530522843253695.a n = (A322966 (n + 1) : ℚ)

end A322966

/-! ## A322966.P17438112576442585355

`A007947(n+1)/A000027(A008473(n+1)/A322965(n+1))`
-/

namespace A322966.P17438112576442585355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A008473 (n + 1) : ℚ) / (A322965 (n + 1) : ℚ))).toNat : ℚ)

end

end A322966.P17438112576442585355

namespace A322966

/-- `A007947(n+1)/A000027(A008473(n+1)/A322965(n+1))` -/
def P17438112576442585355.Spec : Prop :=
  ∀ n, P17438112576442585355.a n = (A322966 (n + 1) : ℚ)

end A322966

/-! ## A322966.P2191871047743364436

`A007947(n+1)/A007947(A008473(n+1)/A322965(n+1))`
-/

namespace A322966.P2191871047743364436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A008473 (n + 1) : ℚ) / (A322965 (n + 1) : ℚ))).toNat : ℚ)

end

end A322966.P2191871047743364436

namespace A322966

/-- `A007947(n+1)/A007947(A008473(n+1)/A322965(n+1))` -/
def P2191871047743364436.Spec : Prop :=
  ∀ n, P2191871047743364436.a n = (A322966 (n + 1) : ℚ)

end A322966

/-! ## A322966.P2768954299341155236

`A083346(A083346(n+1)^A009194(n+1))`
-/

namespace A322966.P2768954299341155236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (SequenceMachineLib.roundAway ((A083346 (n + 1) : ℚ) ^ (A009194 (n + 1) : ℤ))).toNat

end

end A322966.P2768954299341155236

namespace A322966

/-- `A083346(A083346(n+1)^A009194(n+1))` -/
def P2768954299341155236.Spec : Prop :=
  ∀ n, P2768954299341155236.a n = A322966 (n + 1)

end A322966

/-! ## A322966.P11792536427572110840

`A083346(A083346(n+1)^A325975(n+1))`
-/

namespace A322966.P11792536427572110840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (SequenceMachineLib.roundAway ((A083346 (n + 1) : ℚ) ^ (A325975 (n + 1) : ℤ))).toNat

end

end A322966.P11792536427572110840

namespace A322966

/-- `A083346(A083346(n+1)^A325975(n+1))` -/
def P11792536427572110840.Spec : Prop :=
  ∀ n, P11792536427572110840.a n = A322966 (n + 1)

end A322966

/-!
# A322967: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals, where A(n,k) is the number of distinct products Product_{j=1..k} b_j with 1 <= b_j<= n.

The programs for A322967, there is no canonical definition to state claims against.
-/

/-! ## A322967.P10183598975153270862

`A074909(n)-A007814(A112492(n))²`
-/

namespace A322967.P10183598975153270862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A007814 (A112492 n).toNat ^ 2

end

end A322967.P10183598975153270862

/-! ## A322967.P15762269928143954880

`A135278(A061579(n))-A007814(A112492(n))²`
-/

namespace A322967.P15762269928143954880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A061579 n).toNat - A007814 (A112492 n).toNat ^ 2

end

end A322967.P15762269928143954880

/-! ## A322967.P5636180072262135347

`A134394(A151838(n)+n)`
-/

namespace A322967.P5636180072262135347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (A151838 n + (n : ℤ)).toNat

end

end A322967.P5636180072262135347

/-! ## A322967.P7016401190565994846

`A134394(or(n, A151838(n)))`
-/

namespace A322967.P7016401190565994846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (Int.lor (n : ℤ) (A151838 n)).toNat

end

end A322967.P7016401190565994846

/-! ## A322967.P1510807391393573376

`A134394(A028310(n))%A345989(3*(n+1))`
-/

namespace A322967.P1510807391393573376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134394 (A028310 n).toNat) (A345989 (3 * (n + 1)))

end

end A322967.P1510807391393573376

/-!
# A322968: Number of integer partitions of n with no ones whose parts are all powers of the same squarefree number.

The programs for A322968, there is no canonical definition to state claims against.
-/

/-! ## A322968.P5153157206907664162

`A072721(n)-A295659(A036592(n))`
-/

namespace A322968.P5153157206907664162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n - A295659 (A036592 n).toNat

end

end A322968.P5153157206907664162

/-! ## A322968.P12499031990684970031

`A072721(n)-A209640(A186745(n))`
-/

namespace A322968.P12499031990684970031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n - A209640 (A186745 n).toNat

end

end A322968.P12499031990684970031

/-! ## A322968.P4123843925931130683

`A072721(n)-A181838(A006702(n+1))`
-/

namespace A322968.P4123843925931130683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n - A181838 (A006702 (n + 1)).toNat

end

end A322968.P4123843925931130683

/-! ## A322968.P1926864252258648248

`A072721(n)-A003982(A306308(n+1))`
-/

namespace A322968.P1926864252258648248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n - A003982 (A306308 (n + 1)).toNat

end

end A322968.P1926864252258648248

/-! ## A322968.P10479054880556282468

`A072721(n)+A014141(A359912(3*(n+1)))`
-/

namespace A322968.P10479054880556282468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n + A014141 (A359912 (3 * (n + 1))).toNat

end

end A322968.P10479054880556282468

/-!
# A322969: Sum of the largest exponents A025479 of the first n perfect powers > 1.

The programs for A322969, there is no canonical definition to state claims against.
-/

/-! ## A322969.P2366668950297727402

`∑[A025479(n+2)]`
-/

namespace A322969.P2366668950297727402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025479 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322969.P2366668950297727402

/-! ## A322969.P11209747785075881628

`∑[abs(A157986(n+2))]`
-/

namespace A322969.P11209747785075881628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157986 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322969.P11209747785075881628

/-! ## A322969.P9598075441144822711

`∑[val(A001597(n+2), A025478(n+2))]`
-/

namespace A322969.P9598075441144822711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001597 (n + 2)).toNat (A025478 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322969.P9598075441144822711

/-! ## A322969.P16272938508306983350

`∑[A052409(A001597(n+2))]`
-/

namespace A322969.P16272938508306983350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A001597 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322969.P16272938508306983350

/-! ## A322969.P16220381874617244857

`∑[A052409(Δ[A076408(n+1)])]`
-/

namespace A322969.P16220381874617244857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322969.P16220381874617244857

/-! ## A322969.P323971205948424289

`∑[A132349(Δ[A076408(n+1)])]`
-/

namespace A322969.P323971205948424289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132349 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322969.P323971205948424289

/-! ## A322969.P18140583784703499618

`∑[A253641(A001597(2*(n+1)-n))]`
-/

namespace A322969.P18140583784703499618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A001597 (2 * (n + 1) - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322969.P18140583784703499618

/-!
# A322970: Coefficient triangle of polynomials recursively defined by P(n,x) = (n+1)*(n+1)! + x*Sum_{k=1..n} k^2*n!/(n+1-k)!*P(n-k,x) with P(0,x) = 1.

The programs for A322970, there is no canonical definition to state claims against.
-/

/-! ## A322970.P7752043708411343853

`abs(A053123(n)*A181511(n+1))`
-/

namespace A322970.P7752043708411343853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053123 n * A181511 (n + 1)|

end

end A322970.P7752043708411343853

/-! ## A322970.P5112029748004877118

`A172431(n+1)*A181511(n+1)`
-/

namespace A322970.P5112029748004877118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1) * A181511 (n + 1)

end

end A322970.P5112029748004877118

/-! ## A322970.P1262314974028765064

`A008279(n)*A084534(comp[∑[n-1]])`
-/

namespace A322970.P1262314974028765064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A084534 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A322970.P1262314974028765064

/-! ## A322970.P5990376260488722441

`A008279(n)*A156308(A038722(n+1))`
-/

namespace A322970.P5990376260488722441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A156308 (A038722 (n + 1)).toNat

end

end A322970.P5990376260488722441

/-! ## A322970.P6669507824948175381

`lcm(A053123(n)*A181511(n+1), A007318(n))`
-/

namespace A322970.P6669507824948175381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053123 n * A181511 (n + 1)) (A007318 n)

end

end A322970.P6669507824948175381

/-!
# A322971: Numbers k such that 347*2^k+1 is prime.

The programs for A322971, there is no canonical definition to state claims against.
-/

/-! ## A322971.P6495668004675434627

`or(record[A119447(n+3)], A275553(n))`
-/

namespace A322971.P6495668004675434627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119447 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A275553 n)

end

end A322971.P6495668004675434627

/-! ## A322971.P9704568879698784585

`or(A022120(n), A384484(A384481(n)))`
-/

namespace A322971.P9704568879698784585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022120 n) (A384484 (A384481 n).toNat)

end

end A322971.P9704568879698784585

/-!
# A322973: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(1) = 0, f(n) = -1 if n is an odd prime, and f(n) = A006370(n) for all other numbers.

The programs for A322973, there is no canonical definition to state claims against.
-/

/-! ## A322973.P15814711865176202123

`gcd(A163234(A151810(n)), A305801(n+1))`
-/

namespace A322973.P15814711865176202123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163234 (A151810 n).toNat) (A305801 (n + 1))

end

end A322973.P15814711865176202123

/-!
# A322974: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(1) = 0, f(2) = 1, f(n) = 3 if A009191(n) == 1 and f(n) = A049820(n) for all other numbers > 2.

The programs for A322974, there is no canonical definition to state claims against.
-/

/-! ## A322974.P5945891878217655704

`A322872(3^A322024(n+1))`
-/

namespace A322974.P5945891878217655704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322872 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A322024 (n + 1) : ℤ))).toNat

end

end A322974.P5945891878217655704

/-! ## A322974.P1752974989673108461

`A322872(3^A322810(n+1))`
-/

namespace A322974.P1752974989673108461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322872 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A322810 (n + 1) : ℤ))).toNat

end

end A322974.P1752974989673108461

/-! ## A322974.P10166657602464083138

`A305818(3^A305801(n+1))`
-/

namespace A322974.P10166657602464083138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305818 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A305801 (n + 1) : ℤ))).toNat

end

end A322974.P10166657602464083138

/-! ## A322974.P8952155450954907574

`A322872(3^A322824(n+1))`
-/

namespace A322974.P8952155450954907574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322872 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A322824 (n + 1) : ℤ))).toNat

end

end A322974.P8952155450954907574

/-!
# A322975: Number of divisors d of n such that d-2 is prime.

The programs for A322975, there is no canonical definition to state claims against.
-/

/-! ## A322975.P2314881562602685135

`∑{d}[n+1, A046926(A092535(#))]`
-/

namespace A322975.P2314881562602685135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046926 (A092535 d).toNat

end

end A322975.P2314881562602685135

/-! ## A322975.P9866925915895961830

`A024316(lcm(A067004(n+1), A206703(n)))`
-/

namespace A322975.P9866925915895961830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (Int.lcm (A067004 (n + 1)) (A206703 n))

end

end A322975.P9866925915895961830

/-! ## A322975.P9312206181986014830

`A277017(or(n, A273566(n)))`
-/

namespace A322975.P9312206181986014830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 (Int.lor (n : ℤ) (A273566 n)).toNat

end

end A322975.P9312206181986014830

/-! ## A322975.P15512086633294539518

`A024359(A088461(p?[A113218(n)]))`
-/

namespace A322975.P15512086633294539518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A088461 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A322975.P15512086633294539518

/-! ## A322975.P12046912616141254698

`A336835(A000045(n+1)*A290077(n))`
-/

namespace A322975.P12046912616141254698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A000045 (n + 1) * A290077 n).toNat

end

end A322975.P12046912616141254698

/-!
# A322976: Number of divisors d of n such that d+2 is prime.

The programs for A322976, the canonical program `A322976.P11203224560119339199` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322976 has offset 1).

The definition of A322976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322976.P11203224560119339199

`∑{d}[n+1, A010051(#+2)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322976

/-- `∑{d}[n+1, A010051(#+2)]` -/
def P11203224560119339199.Spec : Prop :=
  ∀ n, P11203224560119339199.a n = A322976 (n + 1)

theorem P11203224560119339199.correct : P11203224560119339199.Spec := by
  intro n
  simp only [A322976, Nat.add_sub_cancel]

end A322976

/-! ## A322976.P11078609325984652099

`∑{d}[n+1, A064911(2*(#+2))]`
-/

namespace A322976.P11078609325984652099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064911 (2 * (d + 2))

end

end A322976.P11078609325984652099

namespace A322976

/-- `∑{d}[n+1, A064911(2*(#+2))]` -/
def P11078609325984652099.Spec : Prop :=
  ∀ n, P11078609325984652099.a n = A322976 (n + 1)

end A322976

/-! ## A322976.P1746432795840144402

`∑{d}[n+1, C(2, A000005(#+2))]`
-/

namespace A322976.P1746432795840144402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 (A000005 (d + 2)).toNat

end

end A322976.P1746432795840144402

namespace A322976

/-- `∑{d}[n+1, C(2, A000005(#+2))]` -/
def P1746432795840144402.Spec : Prop :=
  ∀ n, (P1746432795840144402.a n : ℤ) = A322976 (n + 1)

end A322976

/-! ## A322976.P14648907223451322450

`∑{d}[n+1, A166586(A324888(#+2))]`
-/

namespace A322976.P14648907223451322450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166586 (A324888 (d + 2)).toNat

end

end A322976.P14648907223451322450

namespace A322976

/-- `∑{d}[n+1, A166586(A324888(#+2))]` -/
def P14648907223451322450.Spec : Prop :=
  ∀ n, P14648907223451322450.a n = A322976 (n + 1)

end A322976

/-! ## A322976.P16330136414264564561

`∑{d}[n+1, A192280(A001222(#+2)²)]`
-/

namespace A322976.P16330136414264564561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A192280 (A001222 (d + 2) ^ 2).toNat

end

end A322976.P16330136414264564561

namespace A322976

/-- `∑{d}[n+1, A192280(A001222(#+2)²)]` -/
def P16330136414264564561.Spec : Prop :=
  ∀ n, P16330136414264564561.a n = A322976 (n + 1)

end A322976

/-! ## A322976.P13927794545686189938

`∑{e}[A368117(n+1), #]`
-/

namespace A322976.P13927794545686189938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A322976.P13927794545686189938

namespace A322976

/-- `∑{e}[A368117(n+1), #]` -/
def P13927794545686189938.Spec : Prop :=
  ∀ n, (P13927794545686189938.a n : ℤ) = A322976 (n + 1)

end A322976

/-!
# A322977: Number of even divisors d of n such that d-1 is prime.

The programs for A322977, the canonical program `A322977.P5017233657723959374` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322977 has offset 1).

The definition of A322977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322977.P8408479490555468344

`A322978(A152271(n))`
-/

namespace A322977.P8408479490555468344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322978 (A152271 n).toNat

end

end A322977.P8408479490555468344

namespace A322977

/-- `A322978(A152271(n))` -/
def P8408479490555468344.Spec : Prop :=
  ∀ n, P8408479490555468344.a n = A322977 (n + 1)

end A322977

/-! ## A322977.P13141507611950296685

`A072627(n+1)-Δ[A008620(n)]`
-/

namespace A322977.P13141507611950296685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) - (f1 (n + 1) - f1 n)

end

end A322977.P13141507611950296685

namespace A322977

/-- `A072627(n+1)-Δ[A008620(n)]` -/
def P13141507611950296685.Spec : Prop :=
  ∀ n, P13141507611950296685.a n = A322977 (n + 1)

end A322977

/-! ## A322977.P10760101778029270038

`A072627(n+1)+∑[n+1-A143097(n+1)]`
-/

namespace A322977.P10760101778029270038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A143097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322977.P10760101778029270038

namespace A322977

/-- `A072627(n+1)+∑[n+1-A143097(n+1)]` -/
def P10760101778029270038.Spec : Prop :=
  ∀ n, P10760101778029270038.a n = A322977 (n + 1)

end A322977

/-! ## A322977.P1382279618303901454

`∑{d}[n+1, A063524(#-1)*A322978((n+1)/#)]`
-/

namespace A322977.P1382279618303901454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A322978 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322977.P1382279618303901454

namespace A322977

/-- `∑{d}[n+1, A063524(#-1)*A322978((n+1)/#)]` -/
def P1382279618303901454.Spec : Prop :=
  ∀ n, P1382279618303901454.a n = A322977 (n + 1)

end A322977

/-! ## A322977.P5017233657723959374

`∑{d}[n+1, A000035(#-1)*A101264((n+1)/#-1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322977

/-- `∑{d}[n+1, A000035(#-1)*A101264((n+1)/#-1)]` -/
def P5017233657723959374.Spec : Prop :=
  ∀ n, P5017233657723959374.a n = A322977 (n + 1)

theorem P5017233657723959374.correct : P5017233657723959374.Spec := by
  intro n
  simp only [A322977, Nat.add_sub_cancel]

end A322977

/-! ## A322977.P6917228964745981911

`A072627(n+1)-A072627((n+1)/and(n+1, -(n+1)))`
-/

namespace A322977.P6917228964745981911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) - A072627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A322977.P6917228964745981911

namespace A322977

/-- `A072627(n+1)-A072627((n+1)/and(n+1, -(n+1)))` -/
def P6917228964745981911.Spec : Prop :=
  ∀ n, P6917228964745981911.a n = A322977 (n + 1)

end A322977

/-! ## A322977.P17500280186837638435

`A072627(n+1)-A072627(A000265(n+1))`
-/

namespace A322977.P17500280186837638435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) - A072627 (A000265 (n + 1)).toNat

end

end A322977.P17500280186837638435

namespace A322977

/-- `A072627(n+1)-A072627(A000265(n+1))` -/
def P17500280186837638435.Spec : Prop :=
  ∀ n, P17500280186837638435.a n = A322977 (n + 1)

end A322977

/-! ## A322977.P1981363372071883989

`A072627(n+1)-A072627(A322250(n+1)+1)`
-/

namespace A322977.P1981363372071883989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) - A072627 (A322250 (n + 1) + 1).toNat

end

end A322977.P1981363372071883989

namespace A322977

/-- `A072627(n+1)-A072627(A322250(n+1)+1)` -/
def P1981363372071883989.Spec : Prop :=
  ∀ n, P1981363372071883989.a n = A322977 (n + 1)

end A322977

/-! ## A322977.P18385238139126010485

`A072627(n+1)+A008620(n)-A008620(n+1)`
-/

namespace A322977.P18385238139126010485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) + (A008620 n - A008620 (n + 1))

end

end A322977.P18385238139126010485

namespace A322977

/-- `A072627(n+1)+A008620(n)-A008620(n+1)` -/
def P18385238139126010485.Spec : Prop :=
  ∀ n, P18385238139126010485.a n = A322977 (n + 1)

end A322977

/-! ## A322977.P3140456316162940993

`A322978(abs(∑[A130472(n+2)]))`
-/

namespace A322977.P3140456316162940993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322978 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A322977.P3140456316162940993

namespace A322977

/-- `A322978(abs(∑[A130472(n+2)]))` -/
def P3140456316162940993.Spec : Prop :=
  ∀ n, P3140456316162940993.a n = A322977 (n + 1)

end A322977

/-! ## A322977.P17967376322208517077

`∑{d}[n+1, A107279(#-1)%2]`
-/

namespace A322977.P17967376322208517077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A107279 (d - 1)) 2

end

end A322977.P17967376322208517077

namespace A322977

/-- `∑{d}[n+1, A107279(#-1)%2]` -/
def P17967376322208517077.Spec : Prop :=
  ∀ n, P17967376322208517077.a n = A322977 (n + 1)

end A322977

/-! ## A322977.P11470753787180974015

`A072627(n+1)-A072627(4*n+1)`
-/

namespace A322977.P11470753787180974015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) - A072627 (4 * n + 1)

end

end A322977.P11470753787180974015

namespace A322977

/-- `A072627(n+1)-A072627(4*n+1)` -/
def P11470753787180974015.Spec : Prop :=
  ∀ n, P11470753787180974015.a n = A322977 (n + 1)

end A322977

/-!
# A322978: Number of even divisors d of 2n such that d-1 is prime.

The programs for A322978, the canonical program `A322978.P16968695254368812252` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322978 has offset 1).

The definition of A322978 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322977, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322978.P16968695254368812252

`A322977(2*(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A322978

/-- `A322977(2*(n+1))` -/
def P16968695254368812252.Spec : Prop :=
  ∀ n, P16968695254368812252.a n = A322978 (n + 1)

theorem P16968695254368812252.correct : P16968695254368812252.Spec := by
  intro n
  simp only [A322978, Nat.add_sub_cancel]

end A322978

/-! ## A322978.P311704278818418887

`∑{d}[n+1, A101264(#-1)]`
-/

namespace A322978.P311704278818418887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101264 (d - 1)

end

end A322978.P311704278818418887

namespace A322978

/-- `∑{d}[n+1, A101264(#-1)]` -/
def P311704278818418887.Spec : Prop :=
  ∀ n, P311704278818418887.a n = A322978 (n + 1)

end A322978

/-! ## A322978.P6254510333634669097

`∑{d}[n+1, A010051(2*(#-1)+1)]`
-/

namespace A322978.P6254510333634669097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (2 * ((d : ℤ) - 1) + 1).toNat

end

end A322978.P6254510333634669097

namespace A322978

/-- `∑{d}[n+1, A010051(2*(#-1)+1)]` -/
def P6254510333634669097.Spec : Prop :=
  ∀ n, P6254510333634669097.a n = A322978 (n + 1)

end A322978

/-! ## A322978.P7359875795680127311

`∑{d}[n+1, A085887(2*#)%2]`
-/

namespace A322978.P7359875795680127311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A085887 (2 * d)) 2

end

end A322978.P7359875795680127311

namespace A322978

/-- `∑{d}[n+1, A085887(2*#)%2]` -/
def P7359875795680127311.Spec : Prop :=
  ∀ n, P7359875795680127311.a n = A322978 (n + 1)

end A322978

/-! ## A322978.P15110355291358790869

`A072627(2*(n+1))-A072627(A000265(n+1))`
-/

namespace A322978.P15110355291358790869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (2 * (n + 1)) - A072627 (A000265 (n + 1)).toNat

end

end A322978.P15110355291358790869

namespace A322978

/-- `A072627(2*(n+1))-A072627(A000265(n+1))` -/
def P15110355291358790869.Spec : Prop :=
  ∀ n, P15110355291358790869.a n = A322978 (n + 1)

end A322978

/-! ## A322978.P3150405173989595249

`A072627(2*(n+1))-A072627(A267458(2*n))`
-/

namespace A322978.P3150405173989595249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (2 * (n + 1)) - A072627 (A267458 (2 * n)).toNat

end

end A322978.P3150405173989595249

namespace A322978

/-- `A072627(2*(n+1))-A072627(A267458(2*n))` -/
def P3150405173989595249.Spec : Prop :=
  ∀ n, P3150405173989595249.a n = A322978 (n + 1)

end A322978

/-! ## A322978.P3621618344468829553

`A072627(2*(n+1))-A072627(4*n+1)`
-/

namespace A322978.P3621618344468829553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (2 * (n + 1)) - A072627 (4 * n + 1)

end

end A322978.P3621618344468829553

namespace A322978

/-- `A072627(2*(n+1))-A072627(4*n+1)` -/
def P3621618344468829553.Spec : Prop :=
  ∀ n, P3621618344468829553.a n = A322978 (n + 1)

end A322978

/-! ## A322978.P8731017036775472291

`∑{d}[n+1, A002471(#²)]`
-/

namespace A322978.P8731017036775472291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002471 (d ^ 2)

end

end A322978.P8731017036775472291

namespace A322978

/-- `∑{d}[n+1, A002471(#²)]` -/
def P8731017036775472291.Spec : Prop :=
  ∀ n, P8731017036775472291.a n = A322978 (n + 1)

end A322978

/-!
# A322979: a(n) = Sum A009191(d) over the divisors d of n, where A009191(x) = gcd(x, A000005(x)), and A000005(x) gives the number of divisors of x.

The programs for A322979, the canonical program `A322979.P6933631638193226101` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322979 has offset 1).

The definition of A322979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322979.P6933631638193226101

`∑{d}[n+1, A009191(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322979

/-- `∑{d}[n+1, A009191(#)]` -/
def P6933631638193226101.Spec : Prop :=
  ∀ n, P6933631638193226101.a n = A322979 (n + 1)

theorem P6933631638193226101.correct : P6933631638193226101.Spec := by
  intro n
  simp only [A322979, Nat.add_sub_cancel]

end A322979

/-! ## A322979.P10648345474850085819

`∑{d}[n+1, #/A090395(#)]`
-/

namespace A322979.P10648345474850085819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A090395 d : ℚ)

end

end A322979.P10648345474850085819

namespace A322979

/-- `∑{d}[n+1, #/A090395(#)]` -/
def P10648345474850085819.Spec : Prop :=
  ∀ n, P10648345474850085819.a n = (A322979 (n + 1) : ℚ)

end A322979

/-! ## A322979.P11882735893674813895

`∑{d}[n+1, gcd(#, A000005(#))]`
-/

namespace A322979.P11882735893674813895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A000005 d)

end

end A322979.P11882735893674813895

namespace A322979

/-- `∑{d}[n+1, gcd(#, A000005(#))]` -/
def P11882735893674813895.Spec : Prop :=
  ∀ n, (P11882735893674813895.a n : ℤ) = A322979 (n + 1)

end A322979

/-! ## A322979.P2161134300413244759

`or(A083260(n+1), A120614(A036378(n)))`
-/

namespace A322979.P2161134300413244759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083260 (n + 1)) (A120614 (A036378 n).toNat)

end

end A322979.P2161134300413244759

namespace A322979

/-- `or(A083260(n+1), A120614(A036378(n)))` -/
def P2161134300413244759.Spec : Prop :=
  ∀ n, P2161134300413244759.a n = A322979 (n + 1)

end A322979

/-! ## A322979.P1488038164392230805

`A046523(n+1)+A024362(A231829(2*n+3))`
-/

namespace A322979.P1488038164392230805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) + A024362 (A231829 (2 * n + 3)).toNat

end

end A322979.P1488038164392230805

namespace A322979

/-- `A046523(n+1)+A024362(A231829(2*n+3))` -/
def P1488038164392230805.Spec : Prop :=
  ∀ n, P1488038164392230805.a n = A322979 (n + 1)

end A322979

/-!
# A322980: a(n) = 1 if n and d(n) are coprime, 0 otherwise. Here d(n) is the number of divisors of n, A000005.

The programs for A322980, the canonical program `A322980.P7974162186634940196` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322980 has offset 1).

The definition of A322980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322980.P3102719150592838317

`round(acot(A009191(n+1)))`
-/

namespace A322980.P3102719150592838317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A009191 (n + 1) : ℝ))

end

end A322980.P3102719150592838317

namespace A322980

/-- `round(acot(A009191(n+1)))` -/
def P3102719150592838317.Spec : Prop :=
  ∀ n, P3102719150592838317.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P7497612351704320538

`round(acot(A138010(n+1)))`
-/

namespace A322980.P7497612351704320538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A138010 (n + 1) : ℝ))

end

end A322980.P7497612351704320538

namespace A322980

/-- `round(acot(A138010(n+1)))` -/
def P7497612351704320538.Spec : Prop :=
  ∀ n, P7497612351704320538.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P7375254986956662765

`round(acot(A306671(n+1)))`
-/

namespace A322980.P7375254986956662765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A306671 (n + 1) : ℝ))

end

end A322980.P7375254986956662765

namespace A322980

/-- `round(acot(A306671(n+1)))` -/
def P7375254986956662765.Spec : Prop :=
  ∀ n, P7375254986956662765.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P11383270897417832605

`char[A046642(n+1)-1]`
-/

namespace A322980.P11383270897417832605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046642 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322980.P11383270897417832605

namespace A322980

/-- `char[A046642(n+1)-1]` -/
def P11383270897417832605.Spec : Prop :=
  ∀ n, (P11383270897417832605.a n : ℤ) = A322980 (n + 1)

end A322980

/-! ## A322980.P17234690242862272736

`C(A090395(n+1), n+1)`
-/

namespace A322980.P17234690242862272736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090395 (n + 1)).toNat (n + 1)

end

end A322980.P17234690242862272736

namespace A322980

/-- `C(A090395(n+1), n+1)` -/
def P17234690242862272736.Spec : Prop :=
  ∀ n, (P17234690242862272736.a n : ℤ) = A322980 (n + 1)

end A322980

/-! ## A322980.P5174952374460685697

`C(A137926(n+1), n+1)`
-/

namespace A322980.P5174952374460685697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A137926 (n + 1)).toNat (n + 1)

end

end A322980.P5174952374460685697

namespace A322980

/-- `C(A137926(n+1), n+1)` -/
def P5174952374460685697.Spec : Prop :=
  ∀ n, (P5174952374460685697.a n : ℤ) = A322980 (n + 1)

end A322980

/-! ## A322980.P7415207212131078049

`floor(1/gcd(n+1, A000005(n+1)))`
-/

namespace A322980.P7415207212131078049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Int.gcd (n + 1 : ℤ) (A000005 (n + 1)) : ℚ)⌋

end

end A322980.P7415207212131078049

namespace A322980

/-- `floor(1/gcd(n+1, A000005(n+1)))` -/
def P7415207212131078049.Spec : Prop :=
  ∀ n, P7415207212131078049.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P7974162186634940196

`A063524(A009191(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322980

/-- `A063524(A009191(n+1))` -/
def P7974162186634940196.Spec : Prop :=
  ∀ n, P7974162186634940196.a n = A322980 (n + 1)

theorem P7974162186634940196.correct : P7974162186634940196.Spec := by
  intro n
  simp only [A322980, Nat.add_sub_cancel]

end A322980

/-! ## A322980.P3027406595463897404

`A000007(A323073(n+1))`
-/

namespace A322980.P3027406595463897404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A323073 (n + 1)).toNat

end

end A322980.P3027406595463897404

namespace A322980

/-- `A000007(A323073(n+1))` -/
def P3027406595463897404.Spec : Prop :=
  ∀ n, P3027406595463897404.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P13626450532508740353

`A154272(A322974(n+1))`
-/

namespace A322980.P13626450532508740353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (A322974 (n + 1)).toNat

end

end A322980.P13626450532508740353

namespace A322980

/-- `A154272(A322974(n+1))` -/
def P13626450532508740353.Spec : Prop :=
  ∀ n, P13626450532508740353.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P14865981514908852768

`A154272(A326201(n+1))`
-/

namespace A322980.P14865981514908852768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (A326201 (n + 1)).toNat

end

end A322980.P14865981514908852768

namespace A322980

/-- `A154272(A326201(n+1))` -/
def P14865981514908852768.Spec : Prop :=
  ∀ n, P14865981514908852768.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P17240417594551668011

`A036987(A009191(n+1)²)`
-/

namespace A322980.P17240417594551668011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A009191 (n + 1) ^ 2).toNat

end

end A322980.P17240417594551668011

namespace A322980

/-- `A036987(A009191(n+1)²)` -/
def P17240417594551668011.Spec : Prop :=
  ∀ n, P17240417594551668011.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P14707261140570070395

`A157657(A009191(n+1)²)`
-/

namespace A322980.P14707261140570070395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (A009191 (n + 1) ^ 2).toNat

end

end A322980.P14707261140570070395

namespace A322980

/-- `A157657(A009191(n+1)²)` -/
def P14707261140570070395.Spec : Prop :=
  ∀ n, P14707261140570070395.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P4476504041352842267

`A008683(A306671(n+1)²)`
-/

namespace A322980.P4476504041352842267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A306671 (n + 1) ^ 2).toNat

end

end A322980.P4476504041352842267

namespace A322980

/-- `A008683(A306671(n+1)²)` -/
def P4476504041352842267.Spec : Prop :=
  ∀ n, P4476504041352842267.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P7520903320532254772

`A361022(A138010(n+1)²)`
-/

namespace A322980.P7520903320532254772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361022 (A138010 (n + 1) ^ 2).toNat

end

end A322980.P7520903320532254772

namespace A322980

/-- `A361022(A138010(n+1)²)` -/
def P7520903320532254772.Spec : Prop :=
  ∀ n, P7520903320532254772.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P7382167603306878267

`A302050(A306671(n+1)²)`
-/

namespace A322980.P7382167603306878267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A306671 (n + 1) ^ 2).toNat

end

end A322980.P7382167603306878267

namespace A322980

/-- `A302050(A306671(n+1)²)` -/
def P7382167603306878267.Spec : Prop :=
  ∀ n, P7382167603306878267.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P2607053173291805109

`A010051(2*A009191(n+1))`
-/

namespace A322980.P2607053173291805109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A009191 (n + 1)).toNat

end

end A322980.P2607053173291805109

namespace A322980

/-- `A010051(2*A009191(n+1))` -/
def P2607053173291805109.Spec : Prop :=
  ∀ n, P2607053173291805109.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P11812355151799470203

`A361022(2*A138010(n+1))`
-/

namespace A322980.P11812355151799470203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361022 (2 * A138010 (n + 1)).toNat

end

end A322980.P11812355151799470203

namespace A322980

/-- `A361022(2*A138010(n+1))` -/
def P11812355151799470203.Spec : Prop :=
  ∀ n, P11812355151799470203.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P13527596982327690419

`A159075(A009191(n+1)²)²`
-/

namespace A322980.P13527596982327690419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A009191 (n + 1) ^ 2).toNat ^ 2

end

end A322980.P13527596982327690419

namespace A322980

/-- `A159075(A009191(n+1)²)²` -/
def P13527596982327690419.Spec : Prop :=
  ∀ n, P13527596982327690419.a n = A322980 (n + 1)

end A322980

/-! ## A322980.P16294978502566469648

`A359543(A138010(n+1)²²)`
-/

namespace A322980.P16294978502566469648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359543 ((A138010 (n + 1) ^ 2) ^ 2).toNat

end

end A322980.P16294978502566469648

namespace A322980

/-- `A359543(A138010(n+1)²²)` -/
def P16294978502566469648.Spec : Prop :=
  ∀ n, P16294978502566469648.a n = A322980 (n + 1)

end A322980

/-!
# A322981: If n is the k-th prime power > 1, a(n) = k, otherwise a(n) = 0.

The programs for A322981, the canonical program `A322981.P14515204632582934980` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322981 has offset 1).

The definition of A322981 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, A025528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322981.P14515204632582934980

`A010055(n+1)*A025528(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A322981

/-- `A010055(n+1)*A025528(n+1)` -/
def P14515204632582934980.Spec : Prop :=
  ∀ n, P14515204632582934980.a n = A322981 (n + 1)

theorem P14515204632582934980.correct : P14515204632582934980.Spec := by
  intro n
  simp only [A322981, Nat.add_sub_cancel]

end A322981

/-! ## A322981.P14694672451385923153

`A069513(n+1)*A025528(n+1)`
-/

namespace A322981.P14694672451385923153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A025528 (n + 1)

end

end A322981.P14694672451385923153

namespace A322981

/-- `A069513(n+1)*A025528(n+1)` -/
def P14694672451385923153.Spec : Prop :=
  ∀ n, P14694672451385923153.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P14827011430995310918

`A025528(A100994(n+1))`
-/

namespace A322981.P14827011430995310918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A100994 (n + 1)).toNat

end

end A322981.P14827011430995310918

namespace A322981

/-- `A025528(A100994(n+1))` -/
def P14827011430995310918.Spec : Prop :=
  ∀ n, P14827011430995310918.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P10374155220412836992

`A095874(n+1)-A010055(n+1)`
-/

namespace A322981.P10374155220412836992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (n + 1) - A010055 (n + 1)

end

end A322981.P10374155220412836992

namespace A322981

/-- `A095874(n+1)-A010055(n+1)` -/
def P10374155220412836992.Spec : Prop :=
  ∀ n, P10374155220412836992.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P12455934616550760572

`A067003(n+1)*A069513(n+1)`
-/

namespace A322981.P12455934616550760572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067003 (n + 1) * A069513 (n + 1)

end

end A322981.P12455934616550760572

namespace A322981

/-- `A067003(n+1)*A069513(n+1)` -/
def P12455934616550760572.Spec : Prop :=
  ∀ n, P12455934616550760572.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P1770990654371460882

`A010055(n+1)*A141128(n+1)`
-/

namespace A322981.P1770990654371460882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A141128 (n + 1)

end

end A322981.P1770990654371460882

namespace A322981

/-- `A010055(n+1)*A141128(n+1)` -/
def P1770990654371460882.Spec : Prop :=
  ∀ n, P1770990654371460882.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P3857016238689228417

`A069513(n+1)*A141128(n+1)`
-/

namespace A322981.P3857016238689228417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A141128 (n + 1)

end

end A322981.P3857016238689228417

namespace A322981

/-- `A069513(n+1)*A141128(n+1)` -/
def P3857016238689228417.Spec : Prop :=
  ∀ n, P3857016238689228417.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P2373584570758657118

`A010055(n+1)*A330292(n+1)`
-/

namespace A322981.P2373584570758657118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A330292 (n + 1)

end

end A322981.P2373584570758657118

namespace A322981

/-- `A010055(n+1)*A330292(n+1)` -/
def P2373584570758657118.Spec : Prop :=
  ∀ n, P2373584570758657118.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P2751631283112325712

`A069513(n+1)*A330292(n+1)`
-/

namespace A322981.P2751631283112325712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A330292 (n + 1)

end

end A322981.P2751631283112325712

namespace A322981

/-- `A069513(n+1)*A330292(n+1)` -/
def P2751631283112325712.Spec : Prop :=
  ∀ n, P2751631283112325712.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P6584213828865388430

`A069513(n+1)*A333235(n+1)`
-/

namespace A322981.P6584213828865388430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A333235 (n + 1)

end

end A322981.P6584213828865388430

namespace A322981

/-- `A069513(n+1)*A333235(n+1)` -/
def P6584213828865388430.Spec : Prop :=
  ∀ n, P6584213828865388430.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P4256398840247304530

`A067003(n+1)%A100994(n+1)`
-/

namespace A322981.P4256398840247304530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067003 (n + 1)) (A100994 (n + 1))

end

end A322981.P4256398840247304530

namespace A322981

/-- `A067003(n+1)%A100994(n+1)` -/
def P4256398840247304530.Spec : Prop :=
  ∀ n, P4256398840247304530.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P8732227523389266244

`A141128(n+1)%A100994(n+1)`
-/

namespace A322981.P8732227523389266244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141128 (n + 1)) (A100994 (n + 1))

end

end A322981.P8732227523389266244

namespace A322981

/-- `A141128(n+1)%A100994(n+1)` -/
def P8732227523389266244.Spec : Prop :=
  ∀ n, P8732227523389266244.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P7597042436682956002

`A330292(n+1)%A100994(n+1)`
-/

namespace A322981.P7597042436682956002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330292 (n + 1)) (A100994 (n + 1))

end

end A322981.P7597042436682956002

namespace A322981

/-- `A330292(n+1)%A100994(n+1)` -/
def P7597042436682956002.Spec : Prop :=
  ∀ n, P7597042436682956002.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P14007002232684302977

`A333235(n+1)%A100994(n+1)`
-/

namespace A322981.P14007002232684302977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333235 (n + 1)) (A100994 (n + 1))

end

end A322981.P14007002232684302977

namespace A322981

/-- `A333235(n+1)%A100994(n+1)` -/
def P14007002232684302977.Spec : Prop :=
  ∀ n, P14007002232684302977.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P7798852115804903958

`∑[A069513(n+1)]*A010055(n+1)`
-/

namespace A322981.P7798852115804903958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010055 (n + 1)

end

end A322981.P7798852115804903958

namespace A322981

/-- `∑[A069513(n+1)]*A010055(n+1)` -/
def P7798852115804903958.Spec : Prop :=
  ∀ n, P7798852115804903958.a n = A322981 (n + 1)

theorem P7798852115804903958.correct : P7798852115804903958.Spec := by
  intro n
  simp only [A322981, Nat.add_sub_cancel, A322981.P7798852115804903958.f1, A322981.P7798852115804903958.a, A322981.P14515204632582934980.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322981

/-! ## A322981.P15424273406903374784

`∑[A069513(n+1)]%A100994(n+1)`
-/

namespace A322981.P15424273406903374784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A100994 (n + 1))

end

end A322981.P15424273406903374784

namespace A322981

/-- `∑[A069513(n+1)]%A100994(n+1)` -/
def P15424273406903374784.Spec : Prop :=
  ∀ n, P15424273406903374784.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P9786581032862046994

`(A065515(n+1)-1)*A010055(n+1)`
-/

namespace A322981.P9786581032862046994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065515 (n + 1) - 1) * A010055 (n + 1)

end

end A322981.P9786581032862046994

namespace A322981

/-- `(A065515(n+1)-1)*A010055(n+1)` -/
def P9786581032862046994.Spec : Prop :=
  ∀ n, P9786581032862046994.a n = A322981 (n + 1)

theorem P9786581032862046994.correct : P9786581032862046994.Spec := by
  intro n
  simp only [A322981, Nat.add_sub_cancel, A322981.P9786581032862046994.a, A322981.P14515204632582934980.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A065515, A065515.P15129427044826637405.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322981

/-! ## A322981.P1248346779581798229

`(A097621(n+1)-1)*A010055(n+1)`
-/

namespace A322981.P1248346779581798229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097621 (n + 1) - 1) * A010055 (n + 1)

end

end A322981.P1248346779581798229

namespace A322981

/-- `(A097621(n+1)-1)*A010055(n+1)` -/
def P1248346779581798229.Spec : Prop :=
  ∀ n, P1248346779581798229.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P14464984946983382703

`(A065515(n+1)-1)*A069513(n+1)`
-/

namespace A322981.P14464984946983382703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065515 (n + 1) - 1) * A069513 (n + 1)

end

end A322981.P14464984946983382703

namespace A322981

/-- `(A065515(n+1)-1)*A069513(n+1)` -/
def P14464984946983382703.Spec : Prop :=
  ∀ n, P14464984946983382703.a n = A322981 (n + 1)

end A322981

/-! ## A322981.P9231604458578566001

`(A095874(n+1)-1)*A069513(n+1)`
-/

namespace A322981.P9231604458578566001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095874 (n + 1) - 1) * A069513 (n + 1)

end

end A322981.P9231604458578566001

namespace A322981

/-- `(A095874(n+1)-1)*A069513(n+1)` -/
def P9231604458578566001.Spec : Prop :=
  ∀ n, P9231604458578566001.a n = A322981 (n + 1)

end A322981

/-!
# A322982: If n is a noncomposite, then a(n) = 2*n - 1, otherwise a(n) = A032742(n), the largest proper divisor of n.

The programs for A322982, there is no canonical definition to state claims against.
-/

/-! ## A322982.P1230379328564285795

`A166260(n+1)+A117818(n+1)`
-/

namespace A322982.P1230379328564285795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (n + 1) + A117818 (n + 1)

end

end A322982.P1230379328564285795

/-! ## A322982.P1489997449051457574

`A032742(n+1)+2*A166260(n+1)`
-/

namespace A322982.P1489997449051457574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + 2 * A166260 (n + 1)

end

end A322982.P1489997449051457574

/-! ## A322982.P13194714262619018376

`2*A117818(n+1)-A032742(n+1)`
-/

namespace A322982.P13194714262619018376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117818 (n + 1) - A032742 (n + 1)

end

end A322982.P13194714262619018376

/-! ## A322982.P6074938566928133472

`A117818(n+1)+n*A010051(n+1)`
-/

namespace A322982.P6074938566928133472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (n + 1) + (n : ℤ) * A010051 (n + 1)

end

end A322982.P6074938566928133472

/-! ## A322982.P10728837116547494532

`A117818(n+1)+n*A080339(n+1)`
-/

namespace A322982.P10728837116547494532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (n + 1) + (n : ℤ) * A080339 (n + 1)

end

end A322982.P10728837116547494532

/-! ## A322982.P14388887862234841171

`2*A117818(n+1)-A117818(A005451(n+1))`
-/

namespace A322982.P14388887862234841171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117818 (n + 1) - A117818 (A005451 (n + 1)).toNat

end

end A322982.P14388887862234841171

/-! ## A322982.P9576654753862606829

`A006530(n+1)+A117818(n+1)-A006530(A032742(n+1))`
-/

namespace A322982.P9576654753862606829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (A117818 (n + 1) - A006530 (A032742 (n + 1)).toNat)

end

end A322982.P9576654753862606829

/-! ## A322982.P9344403314340253359

`2*A032742(A143545(n+1))-A032742(n+1)`
-/

namespace A322982.P9344403314340253359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032742 (A143545 (n + 1)).toNat - A032742 (n + 1)

end

end A322982.P9344403314340253359

/-! ## A322982.P6944421931770551639

`(A089026(n+1)+n)/A089026(A074828(n+1))`
-/

namespace A322982.P6944421931770551639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089026 (n + 1) + (n : ℤ) : ℚ) / (A089026 (A074828 (n + 1)).toNat : ℚ)

end

end A322982.P6944421931770551639

/-! ## A322982.P4100348179698201237

`A066635(A372815(n+1))`
-/

namespace A322982.P4100348179698201237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A372815 (n + 1)).toNat

end

end A322982.P4100348179698201237

/-!
# A322983: Number of iterations of A011371(x) = x - A000120(x) needed to reach an odd number, when starting from x = n.

The programs for A322983, there is no canonical definition to state claims against.
-/

/-! ## A322983.P134008978506192202

`and(1, n)*A322984(A008619(n))`
-/

namespace A322983.P134008978506192202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A322984 (A008619 n).toNat

end

end A322983.P134008978506192202

/-! ## A322983.P7087081171649163312

`∑{d}[n+1, A063524(#-1)*A322984((n+1)/#)]`
-/

namespace A322983.P7087081171649163312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A322984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322983.P7087081171649163312

/-! ## A322983.P3175689639277418118

`A000035(n)*A322984(A008619(n))`
-/

namespace A322983.P3175689639277418118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A322984 (A008619 n).toNat

end

end A322983.P3175689639277418118

/-! ## A322983.P16970912128875557865

`A000035(n)*A322984(A065033(n))`
-/

namespace A322983.P16970912128875557865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A322984 (A065033 n).toNat

end

end A322983.P16970912128875557865

/-! ## A322983.P629693790605469248

`A000035(n)*A322984(A252463(n+1))`
-/

namespace A322983.P629693790605469248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A322984 (A252463 (n + 1)).toNat

end

end A322983.P629693790605469248

/-! ## A322983.P16993376379897410355

`(A000034(n)-1)*A322984(A008619(n))`
-/

namespace A322983.P16993376379897410355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n - 1) * A322984 (A008619 n).toNat

end

end A322983.P16993376379897410355

/-! ## A322983.P5513372342792434857

`Δ[A004526(n)]*A322984(A008619(n))`
-/

namespace A322983.P5513372342792434857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A322984 (A008619 n).toNat

end

end A322983.P5513372342792434857

/-!
# A322984: Number of iterations of A011371(x) = x - A000120(x) needed to reach an odd number, when starting from x = 2n.

The programs for A322984, there is no canonical definition to state claims against.
-/

/-! ## A322984.P94860312260806465

`A322983(2*(n+1))`
-/

namespace A322984.P94860312260806465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322983 (2 * (n + 1))

end

end A322984.P94860312260806465

/-! ## A322984.P8554536950516501931

`dr(A322983(A005843(n+1)))`
-/

namespace A322984.P8554536950516501931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A322983 (A005843 (n + 1)).toNat)

end

end A322984.P8554536950516501931

/-! ## A322984.P14826507124484993468

`A062003(A322983(n+2+n))`
-/

namespace A322984.P14826507124484993468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 (A322983 (n + 2 + n)).toNat

end

end A322984.P14826507124484993468

/-! ## A322984.P4308019650900774875

`A322983(A011371(n+1)+n+1)+1`
-/

namespace A322984.P4308019650900774875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322983 (A011371 (n + 1) + (n + 1 : ℤ)).toNat + 1

end

end A322984.P4308019650900774875

/-! ## A322984.P12425008887040327751

`A322983(n+2+n)+A000007(n+1)`
-/

namespace A322984.P12425008887040327751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322983 (n + 2 + n) + A000007 (n + 1)

end

end A322984.P12425008887040327751

/-! ## A322984.P10465086527967576423

`filter[A322983(n+1), A145568(#)]`
-/

namespace A322984.P10465086527967576423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A322984.P10465086527967576423

/-!
# A322986: Number of distinct values obtained when the pi-based arithmetic derivative (A258851) is applied to the divisors of n.

The programs for A322986, there is no canonical definition to state claims against.
-/

/-! ## A322986.P8236589568682219342

`A054525(A213386(3*(n+1)))+A000005(n+1)`
-/

namespace A322986.P8236589568682219342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (A213386 (3 * (n + 1))).toNat + A000005 (n + 1)

end

end A322986.P8236589568682219342

/-! ## A322986.P17054841618726803242

`A000005(n+1)-A240025(A069105(n+4))`
-/

namespace A322986.P17054841618726803242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A240025 (A069105 (n + 4)).toNat

end

end A322986.P17054841618726803242

/-! ## A322986.P15472073491217677053

`∑{d}[n+1, A132350(A335433(#))]`
-/

namespace A322986.P15472073491217677053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A132350 (A335433 d).toNat

end

end A322986.P15472073491217677053

/-! ## A322986.P7276447908705026458

`A000005(n+1)-A353625(A156552(n+1)+1)`
-/

namespace A322986.P7276447908705026458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353625 (A156552 (n + 1) + 1).toNat

end

end A322986.P7276447908705026458

/-! ## A322986.P5563307034934702503

`A000005(n+1)-A347706(A009194(2*(n+1)))`
-/

namespace A322986.P5563307034934702503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A347706 (A009194 (2 * (n + 1))).toNat

end

end A322986.P5563307034934702503

/-! ## A322986.P4928535004659196649

`∏{e}[n+1, #+1]-A325194(A326698(n+1))`
-/

namespace A322986.P4928535004659196649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A325194 (A326698 (n + 1)).toNat

end

end A322986.P4928535004659196649

/-! ## A322986.P4551546657891713916

`A000005(n+1)-A025468(A317084(n))`
-/

namespace A322986.P4551546657891713916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A025468 (A317084 n).toNat

end

end A322986.P4551546657891713916

/-! ## A322986.P904102087321173285

`A096737(n+1)-A102460(A152451(n+1))`
-/

namespace A322986.P904102087321173285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 1) - A102460 (A152451 (n + 1)).toNat

end

end A322986.P904102087321173285

/-! ## A322986.P3050970543741836681

`A000005(n+1)-A319988(A319991(n+1))`
-/

namespace A322986.P3050970543741836681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A319988 (A319991 (n + 1)).toNat

end

end A322986.P3050970543741836681

/-!
# A322987: Number of iterations of A049820(x) = x - A000005(x) needed to reach a square, when starting from x = n.

The programs for A322987, the canonical program `A322987.P8099168524916604608` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322987 has offset 0).

The definition of A322987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322987.P8099168524916604608

`(a(n-∏{e}[n, #+1])+1)*char[comp[(n+1)²]]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322987

/-- `(a(n-∏{e}[n, #+1])+1)*char[comp[(n+1)²]]` -/
def P8099168524916604608.Spec : Prop :=
  ∀ n, (P8099168524916604608.a n : ℤ) = A322987 n

theorem P8099168524916604608.correct : P8099168524916604608.Spec := by
  intro n
  simp only [A322987]

end A322987

/-! ## A322987.P14314790453965957958

`A087816(n+1)-A194884(A122046(n))`
-/

namespace A322987.P14314790453965957958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087816 (n + 1) - A194884 (A122046 n).toNat

end

end A322987.P14314790453965957958

namespace A322987

/-- `A087816(n+1)-A194884(A122046(n))` -/
def P14314790453965957958.Spec : Prop :=
  ∀ n, P14314790453965957958.a n = A322987 n

end A322987

/-! ## A322987.P11605709698340369587

`A139352(A207879(n+1)*A308110(n))`
-/

namespace A322987.P11605709698340369587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A207879 (n + 1) * A308110 n).toNat

end

end A322987.P11605709698340369587

namespace A322987

/-- `A139352(A207879(n+1)*A308110(n))` -/
def P11605709698340369587.Spec : Prop :=
  ∀ n, P11605709698340369587.a n = A322987 n

end A322987

/-! ## A322987.P4836754497625452161

`lcm(A001221(A296516(n)), A080891(n+1))`
-/

namespace A322987.P4836754497625452161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A296516 n).toNat) (A080891 (n + 1))

end

end A322987.P4836754497625452161

namespace A322987

/-- `lcm(A001221(A296516(n)), A080891(n+1))` -/
def P4836754497625452161.Spec : Prop :=
  ∀ n, (P4836754497625452161.a n : ℤ) = A322987 n

end A322987

/-! ## A322987.P6575160745210503733

`A356676(A048788(n+3)+4)`
-/

namespace A322987.P6575160745210503733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356676 (A048788 (n + 3) + 4).toNat

end

end A322987.P6575160745210503733

namespace A322987

/-- `A356676(A048788(n+3)+4)` -/
def P6575160745210503733.Spec : Prop :=
  ∀ n, P6575160745210503733.a n = A322987 n

end A322987

/-!
# A322988: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(1) = 0 if n is a prime power > 2, f(2) = -1, and f(n) = A322990(n) for all other numbers.

The programs for A322988, there is no canonical definition to state claims against.
-/

/-! ## A322988.P3177175231917442139

`A305976(n+1)+A267043(A348996(n))`
-/

namespace A322988.P3177175231917442139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1) + A267043 (A348996 n).toNat

end

end A322988.P3177175231917442139

/-! ## A322988.P15035260312420084717

`A305976(n+1)-A057428(A113021(n))`
-/

namespace A322988.P15035260312420084717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1) - A057428 (A113021 n).toNat

end

end A322988.P15035260312420084717

/-! ## A322988.P17468992096942396553

`A305974(A290480(n+1))+A072491(A005843(n))`
-/

namespace A322988.P17468992096942396553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A290480 (n + 1)).toNat + A072491 (A005843 n).toNat

end

end A322988.P17468992096942396553

/-! ## A322988.P4057607768017959427

`A305974(A290480(n+1))+A158478(A002088(n))`
-/

namespace A322988.P4057607768017959427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A290480 (n + 1)).toNat + A158478 (A002088 n).toNat

end

end A322988.P4057607768017959427

/-! ## A322988.P15646021585340202108

`A305974(A290480(n+1))+A178334(n)+A157928(n)`
-/

namespace A322988.P15646021585340202108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A290480 (n + 1)).toNat + (A178334 n + A157928 n)

end

end A322988.P15646021585340202108

/-!
# A322989: If n is a power of a prime, then a(n) = 0, otherwise a(n) = 1 + a(A322990(n)).

The programs for A322989, there is no canonical definition to state claims against.
-/

/-! ## A322989.P10917971634565983994

`A240216(A034684(n+1))*A297155(n+1)`
-/

namespace A322989.P10917971634565983994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240216 (A034684 (n + 1)).toNat * A297155 (n + 1)

end

end A322989.P10917971634565983994

/-! ## A322989.P17545296649654620271

`A345994(n+1)-A119288(A183028(2*n+5))`
-/

namespace A322989.P17545296649654620271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 (n + 1) - A119288 (A183028 (2 * n + 5)).toNat

end

end A322989.P17545296649654620271

/-! ## A322989.P1679784334052312906

`A181669(A026098(n+1))%A052128(n+1)`
-/

namespace A322989.P1679784334052312906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181669 (A026098 (n + 1)).toNat) (A052128 (n + 1))

end

end A322989.P1679784334052312906

/-! ## A322989.P6313696998717197034

`A005385(A005385(3*n+4))%A052128(n+1)`
-/

namespace A322989.P6313696998717197034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (A005385 (3 * n + 4)).toNat) (A052128 (n + 1))

end

end A322989.P6313696998717197034

/-! ## A322989.P4648611554066256721

`A191610(A114536(n+1))%A359359(2*(n+1))`
-/

namespace A322989.P4648611554066256721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191610 (A114536 (n + 1)).toNat) (A359359 (2 * (n + 1)))

end

end A322989.P4648611554066256721

/-!
# A322990: a(n) = A289272(floor(A289271(n)/2)).

The programs for A322990, there is no canonical definition to state claims against.
-/

/-! ## A322990.P12165628624993178352

`A289272(floor(A289271(n+1)/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322990.P12165628624993178352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289272 ⌊(A289271 (n + 1) : ℚ) / 2⌋.toNat

end

end A322990.P12165628624993178352

/-! ## A322990.P16056584156214634979

`A384053(n+1)-A083894(A004148(n))`
-/

namespace A322990.P16056584156214634979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384053 (n + 1) - A083894 (A004148 n).toNat

end

end A322990.P16056584156214634979

/-! ## A322990.P7313008747914250535

`A120636(n+1)-A014376(A029603(n))`
-/

namespace A322990.P7313008747914250535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120636 (n + 1) - A014376 (A029603 n).toNat

end

end A322990.P7313008747914250535

/-! ## A322990.P4862514643782454729

`A047994(n+1)-A347411(A024723(n+1))`
-/

namespace A322990.P4862514643782454729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - A347411 (A024723 (n + 1)).toNat

end

end A322990.P4862514643782454729

/-! ## A322990.P2744690549288075745

`A121373(A219049(n+2))+A120636(n+1)`
-/

namespace A322990.P2744690549288075745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A219049 (n + 2)).toNat + A120636 (n + 1)

end

end A322990.P2744690549288075745

/-!
# A322991: a(n) = A289272(2*A289271(n)).

The programs for A322991, there is no canonical definition to state claims against.
-/

/-! ## A322991.P9211910898805310631

`A289272(2*A289271(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322991.P9211910898805310631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289272 (2 * A289271 (n + 1)).toNat

end

end A322991.P9211910898805310631

/-! ## A322991.P11244983527409962629

`A289272(A289271(A322992(n+1))-1)`
-/

namespace A322991.P11244983527409962629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289272 (A289271 (A322992 (n + 1)).toNat - 1).toNat

end

end A322991.P11244983527409962629

/-! ## A322991.P8063568673365422734

`A289272(A289271(n+1)+A289271(n+1))`
-/

namespace A322991.P8063568673365422734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289272 (A289271 (n + 1) + A289271 (n + 1)).toNat

end

end A322991.P8063568673365422734

/-!
# A322992: a(n) = A289272(1+(2*A289271(n))).

The programs for A322992, there is no canonical definition to state claims against.
-/

/-! ## A322992.P6264401972582635776

`A289272(1+2*A289271(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322992.P6264401972582635776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289272 (1 + 2 * A289271 (n + 1)).toNat

end

end A322992.P6264401972582635776

/-! ## A322992.P3775054220370382625

`A289272(A289271(A322991(n+1))+1)`
-/

namespace A322992.P3775054220370382625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289272 (A289271 (A322991 (n + 1)).toNat + 1).toNat

end

end A322992.P3775054220370382625

/-! ## A322992.P5107858810189835177

`A289272(A016825(A289271(n+1))/2)`
-/

namespace A322992.P5107858810189835177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289272 (SequenceMachineLib.roundAway ((A016825 (A289271 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A322992.P5107858810189835177

/-! ## A322992.P17314977603738391343

`A289272(A289271(n+1)+A289271(n+1)+1)`
-/

namespace A322992.P17314977603738391343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289272 (A289271 (n + 1) + (A289271 (n + 1) + 1)).toNat

end

end A322992.P17314977603738391343

/-! ## A322992.P464420172622257359

`A322990(A289272(A016825(A289271(n+1))))`
-/

namespace A322992.P464420172622257359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322990 (A289272 (A016825 (A289271 (n + 1)).toNat).toNat).toNat

end

end A322992.P464420172622257359

/-!
# A322993: a(1) = 0; for n > 1, a(n) = A000265(A156552(n)).

The programs for A322993, the canonical program `A322993.P1174729258651699952` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322993 has offset 1).

The definition of A322993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322993.P2128304043409069009

`∑{d}[n+1, A322994(#)]`
-/

namespace A322993.P2128304043409069009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322994 d

end

end A322993.P2128304043409069009

namespace A322993

/-- `∑{d}[n+1, A322994(#)]` -/
def P2128304043409069009.Spec : Prop :=
  ∀ n, P2128304043409069009.a n = A322993 (n + 1)

end A322993

/-! ## A322993.P10193880312202801729

`∑{d}[n+1, A055615(#)*A329373((n+1)/#)]`
-/

namespace A322993.P10193880312202801729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A329373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322993.P10193880312202801729

namespace A322993

/-- `∑{d}[n+1, A055615(#)*A329373((n+1)/#)]` -/
def P10193880312202801729.Spec : Prop :=
  ∀ n, P10193880312202801729.a n = A322993 (n + 1)

end A322993

/-! ## A322993.P1174729258651699952

`A156552(A348717(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A322993

/-- `A156552(A348717(n+1))` -/
def P1174729258651699952.Spec : Prop :=
  ∀ n, P1174729258651699952.a n = A322993 (n + 1)

theorem P1174729258651699952.correct : P1174729258651699952.Spec := by
  intro n
  simp only [A322993, Nat.add_sub_cancel]

end A322993

/-! ## A322993.P17090150642478185386

`A156552(n+1)/A011782(A055396(n+1))`
-/

namespace A322993.P17090150642478185386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156552 (n + 1) : ℚ) / (A011782 (A055396 (n + 1)).toNat : ℚ)

end

end A322993.P17090150642478185386

namespace A322993

/-- `A156552(n+1)/A011782(A055396(n+1))` -/
def P17090150642478185386.Spec : Prop :=
  ∀ n, P17090150642478185386.a n = (A322993 (n + 1) : ℚ)

end A322993

/-! ## A322993.P11581118717416891375

`A156552(A352892(A003961(n+1)))`
-/

namespace A322993.P11581118717416891375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A352892 (A003961 (n + 1)).toNat).toNat

end

end A322993.P11581118717416891375

namespace A322993

/-- `A156552(A352892(A003961(n+1)))` -/
def P11581118717416891375.Spec : Prop :=
  ∀ n, P11581118717416891375.a n = A322993 (n + 1)

end A322993

/-! ## A322993.P5542550807125110094

`A156552(n+1)/gcd(A000079(n), A156552(n+1))`
-/

namespace A322993.P5542550807125110094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156552 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A156552 (n + 1)) : ℚ)

end

end A322993.P5542550807125110094

namespace A322993

/-- `A156552(n+1)/gcd(A000079(n), A156552(n+1))` -/
def P5542550807125110094.Spec : Prop :=
  ∀ n, P5542550807125110094.a n = (A322993 (n + 1) : ℚ)

end A322993

/-! ## A322993.P5742728568595115216

`lcm(A011782(n), A156552(n+1))/A011782(n)`
-/

namespace A322993.P5742728568595115216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A011782 n) (A156552 (n + 1)) : ℚ) / (A011782 n : ℚ)

end

end A322993.P5742728568595115216

namespace A322993

/-- `lcm(A011782(n), A156552(n+1))/A011782(n)` -/
def P5742728568595115216.Spec : Prop :=
  ∀ n, P5742728568595115216.a n = (A322993 (n + 1) : ℚ)

end A322993

/-! ## A322993.P13544775179802173700

`A302787(A302023(n+1))`
-/

namespace A322993.P13544775179802173700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302787 (A302023 (n + 1)).toNat

end

end A322993.P13544775179802173700

namespace A322993

/-- `A302787(A302023(n+1))` -/
def P13544775179802173700.Spec : Prop :=
  ∀ n, P13544775179802173700.a n = A322993 (n + 1)

end A322993

/-! ## A322993.P4862874968308245826

`A322821(A332462(n+1))`
-/

namespace A322993.P4862874968308245826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322821 (A332462 (n + 1)).toNat

end

end A322993.P4862874968308245826

namespace A322993

/-- `A322821(A332462(n+1))` -/
def P4862874968308245826.Spec : Prop :=
  ∀ n, P4862874968308245826.a n = A322993 (n + 1)

end A322993

/-!
# A322994: Möbius transform of A322993.

The programs for A322994, the canonical program `A322994.P15084225456667149428` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322994 has offset 1).

The definition of A322994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322994.P15084225456667149428

`∑{d}[n+1, A008683(#)*A322993((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A322994

/-- `∑{d}[n+1, A008683(#)*A322993((n+1)/#)]` -/
def P15084225456667149428.Spec : Prop :=
  ∀ n, P15084225456667149428.a n = A322994 (n + 1)

theorem P15084225456667149428.correct : P15084225456667149428.Spec := by
  intro n
  simp only [A322994, Nat.add_sub_cancel]

end A322994

/-! ## A322994.P8036462764864238599

`∑{d}[n+1, A046692(#)*A329373((n+1)/#)]`
-/

namespace A322994.P8036462764864238599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A329373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322994.P8036462764864238599

namespace A322994

/-- `∑{d}[n+1, A046692(#)*A329373((n+1)/#)]` -/
def P8036462764864238599.Spec : Prop :=
  ∀ n, P8036462764864238599.a n = A322994 (n + 1)

end A322994

/-! ## A322994.P7111944294460374839

`A354185(n+1)%record[A066010(n+2)]`
-/

namespace A322994.P7111944294460374839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354185 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A322994.P7111944294460374839

namespace A322994

/-- `A354185(n+1)%record[A066010(n+2)]` -/
def P7111944294460374839.Spec : Prop :=
  ∀ n, P7111944294460374839.a n = A322994 (n + 1)

end A322994

/-! ## A322994.P15748955454592151171

`A354185(n+1)-A000035(A026537(n))`
-/

namespace A322994.P15748955454592151171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354185 (n + 1) - A000035 (A026537 n).toNat

end

end A322994.P15748955454592151171

namespace A322994

/-- `A354185(n+1)-A000035(A026537(n))` -/
def P15748955454592151171.Spec : Prop :=
  ∀ n, P15748955454592151171.a n = A322994 (n + 1)

end A322994

/-! ## A322994.P17416384620739309131

`A078349(A051049(n)*A322591(n+1))`
-/

namespace A322994.P17416384620739309131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078349 (A051049 n * A322591 (n + 1)).toNat

end

end A322994.P17416384620739309131

namespace A322994

/-- `A078349(A051049(n)*A322591(n+1))` -/
def P17416384620739309131.Spec : Prop :=
  ∀ n, P17416384620739309131.a n = A322994 (n + 1)

end A322994

/-!
# A322995: a(1) = 0; for n > 1, a(n) = A000265(A289271(n)).

The programs for A322995, there is no canonical definition to state claims against.
-/

/-! ## A322995.P10171376705072556578

`A289271(n+1)/gcd(A011782(n), A289271(n+1))`
-/

namespace A322995.P10171376705072556578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289271 (n + 1) : ℚ) / (Int.gcd (A011782 n) (A289271 (n + 1)) : ℚ)

end

end A322995.P10171376705072556578

/-! ## A322995.P18073751176759465838

`lcm(A000079(n), A289271(n+1))/A000079(n)`
-/

namespace A322995.P18073751176759465838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A289271 (n + 1)) : ℚ) / (A000079 n : ℚ)

end

end A322995.P18073751176759465838

/-! ## A322995.P16512689967156396266

`A325401(gcd(A029834(n+1), A289271(n+1)))`
-/

namespace A322995.P16512689967156396266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.gcd (A029834 (n + 1)) (A289271 (n + 1)))

end

end A322995.P16512689967156396266

/-! ## A322995.P15143076194240374633

`A325401(A289271(n+1)/gcd(2, n))`
-/

namespace A322995.P15143076194240374633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A289271 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A322995.P15143076194240374633

/-! ## A322995.P7313603125272182225

`A325401(A289271(n+1)%A289271(n+2))`
-/

namespace A322995.P7313603125272182225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.tmod (A289271 (n + 1)) (A289271 (n + 2))).toNat

end

end A322995.P7313603125272182225

/-!
# A322996: Number of iterations of A049820(x) = x - A000005(x) needed to reach an odd number or zero, when starting from x = n.

The programs for A322996, the canonical program `A322996.P14040631771689512486` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322996 has offset 0).

The definition of A322996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322996.P4904896489974501808

`A322997(n-gcd(n, ∑[n]))`
-/

namespace A322996.P4904896489974501808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322997 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A322996.P4904896489974501808

namespace A322996

/-- `A322997(n-gcd(n, ∑[n]))` -/
def P4904896489974501808.Spec : Prop :=
  ∀ n, P4904896489974501808.a n = A322996 n

end A322996

/-! ## A322996.P17700512911483253735

`A322997(∑[n]%(abs(1-n)+1))`
-/

namespace A322996.P17700512911483253735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322997 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (|1 - (n : ℤ)| + 1)).toNat

end

end A322996.P17700512911483253735

namespace A322996

/-- `A322997(∑[n]%(abs(1-n)+1))` -/
def P17700512911483253735.Spec : Prop :=
  ∀ n, P17700512911483253735.a n = A322996 n

end A322996

/-! ## A322996.P14040631771689512486

`(a(n-A000005(n))+1)*char[2*n]` with `a(0)=0`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A322996

/-- `(a(n-A000005(n))+1)*char[2*n]` -/
def P14040631771689512486.Spec : Prop :=
  ∀ n, (P14040631771689512486.a n : ℤ) = A322996 n

theorem P14040631771689512486.correct : P14040631771689512486.Spec := by
  intro n
  simp only [A322996]

end A322996

/-! ## A322996.P3381346424927075070

`A322997(A142150(n))`
-/

namespace A322996.P3381346424927075070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322997 (A142150 n).toNat

end

end A322996.P3381346424927075070

namespace A322996

/-- `A322997(A142150(n))` -/
def P3381346424927075070.Spec : Prop :=
  ∀ n, P3381346424927075070.a n = A322996 n

end A322996

/-! ## A322996.P12680670145294643865

`A322997(A158416(n)-1)`
-/

namespace A322996.P12680670145294643865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322997 (A158416 n - 1).toNat

end

end A322996.P12680670145294643865

namespace A322996

/-- `A322997(A158416(n)-1)` -/
def P12680670145294643865.Spec : Prop :=
  ∀ n, P12680670145294643865.a n = A322996 n

end A322996

/-! ## A322996.P6718309088705360398

`A322997(n-A026741(n))`
-/

namespace A322996.P6718309088705360398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322997 ((n : ℤ) - A026741 n).toNat

end

end A322996.P6718309088705360398

namespace A322996

/-- `A322997(n-A026741(n))` -/
def P6718309088705360398.Spec : Prop :=
  ∀ n, P6718309088705360398.a n = A322996 n

end A322996

/-! ## A322996.P15391110668836080377

`A322997(n-n²/A257088(n))`
-/

namespace A322996.P15391110668836080377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322997 (SequenceMachineLib.roundAway ((n : ℚ) - (n ^ 2 : ℚ) / (A257088 n : ℚ))).toNat

end

end A322996.P15391110668836080377

namespace A322996

/-- `A322997(n-n²/A257088(n))` -/
def P15391110668836080377.Spec : Prop :=
  ∀ n, P15391110668836080377.a n = A322996 n

end A322996

/-! ## A322996.P7893696921877286088

`A322997(n-n*n/A257088(n))`
-/

namespace A322996.P7893696921877286088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322997 (SequenceMachineLib.roundAway ((n : ℚ) - (n : ℚ) * ((n : ℚ) / (A257088 n : ℚ)))).toNat

end

end A322996.P7893696921877286088

namespace A322996

/-- `A322997(n-n*n/A257088(n))` -/
def P7893696921877286088.Spec : Prop :=
  ∀ n, P7893696921877286088.a n = A322996 n

end A322996

/-! ## A322996.P10665536530770271361

`A322997(and(A001281(n), A062157(n)))`
-/

namespace A322996.P10665536530770271361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322997 (Int.land (A001281 n) (A062157 n)).toNat

end

end A322996.P10665536530770271361

namespace A322996

/-- `A322997(and(A001281(n), A062157(n)))` -/
def P10665536530770271361.Spec : Prop :=
  ∀ n, P10665536530770271361.a n = A322996 n

end A322996

/-! ## A322996.P8108928879750412697

`A322997(A037213(∑[A004526(n)]))`
-/

namespace A322996.P8108928879750412697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322997 (A037213 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A322996.P8108928879750412697

namespace A322996

/-- `A322997(A037213(∑[A004526(n)]))` -/
def P8108928879750412697.Spec : Prop :=
  ∀ n, P8108928879750412697.a n = A322996 n

end A322996

/-!
# A322997: Number of iterations of A049820(x) = x - A000005(x) needed to reach an odd number or zero, when starting from x = 2n.

The programs for A322997, the canonical program `A322997.P13099986161292464516` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322997 has offset 0).

The definition of A322997 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322996, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322997.P13099986161292464516

`A322996(2*n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322997

/-- `A322996(2*n)` -/
def P13099986161292464516.Spec : Prop :=
  ∀ n, P13099986161292464516.a n = A322997 n

theorem P13099986161292464516.correct : P13099986161292464516.Spec := by
  intro n
  simp only [A322997]

end A322997

/-! ## A322997.P6215830188279094835

`A322996(n+n)%A249356(n+1)`
-/

namespace A322997.P6215830188279094835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322996 (n + n)) (A249356 (n + 1))

end

end A322997.P6215830188279094835

namespace A322997

/-- `A322996(n+n)%A249356(n+1)` -/
def P6215830188279094835.Spec : Prop :=
  ∀ n, P6215830188279094835.a n = A322997 n

end A322997

/-! ## A322997.P4937482863075926657

`A071542(A179016(A322996(n+n)))`
-/

namespace A322997.P4937482863075926657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A179016 (A322996 (n + n)).toNat).toNat

end

end A322997.P4937482863075926657

namespace A322997

/-- `A071542(A179016(A322996(n+n)))` -/
def P4937482863075926657.Spec : Prop :=
  ∀ n, P4937482863075926657.a n = A322997 n

end A322997

/-! ## A322997.P9742807722957388198

`A322996(A145341(n+1))+A322996(n+n)`
-/

namespace A322997.P9742807722957388198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (A145341 (n + 1)).toNat + A322996 (n + n)

end

end A322997.P9742807722957388198

namespace A322997

/-- `A322996(A145341(n+1))+A322996(n+n)` -/
def P9742807722957388198.Spec : Prop :=
  ∀ n, P9742807722957388198.a n = A322997 n

end A322997

/-! ## A322997.P5640055884975781254

`A322996(n+n)+A010052(A000040(n+1))`
-/

namespace A322997.P5640055884975781254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (n + n) + A010052 (A000040 (n + 1)).toNat

end

end A322997.P5640055884975781254

namespace A322997

/-- `A322996(n+n)+A010052(A000040(n+1))` -/
def P5640055884975781254.Spec : Prop :=
  ∀ n, P5640055884975781254.a n = A322997 n

end A322997

/-! ## A322997.P8942650022327476338

`A322996(n+n)+A055671(A055671(n))`
-/

namespace A322997.P8942650022327476338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (n + n) + A055671 (A055671 n).toNat

end

end A322997.P8942650022327476338

namespace A322997

/-- `A322996(n+n)+A055671(A055671(n))` -/
def P8942650022327476338.Spec : Prop :=
  ∀ n, P8942650022327476338.a n = A322997 n

end A322997

/-!
# A322999: The successive approximations up to 2^n for 2-adic integer 9^(1/3).

The programs for A322999, there is no canonical definition to state claims against.
-/

/-! ## A322999.P9558487865456036066

`A322701(n)²%A000079(n)`
-/

namespace A322999.P9558487865456036066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322701 n ^ 2) (A000079 n)

end

end A322999.P9558487865456036066

/-! ## A322999.P7031515156818973602

`and(A322701(n)², A000225(n))`
-/

namespace A322999.P7031515156818973602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322701 n ^ 2) (A000225 n)

end

end A322999.P7031515156818973602

/-! ## A322999.P12670364436821861282

`and(A322701(n)², A036563(n))`
-/

namespace A322999.P12670364436821861282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322701 n ^ 2) (A036563 n)

end

end A322999.P12670364436821861282

/-! ## A322999.P3087831431100337236

`and(A322701(n)², A255047(n))`
-/

namespace A322999.P3087831431100337236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322701 n ^ 2) (A255047 n)

end

end A322999.P3087831431100337236

/-! ## A322999.P15609335219031783671

`∑[and(A322701(n)², A011782(n))]`
-/

namespace A322999.P15609335219031783671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322701 n ^ 2) (A011782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322999.P15609335219031783671

