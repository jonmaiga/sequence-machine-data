import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A201701: Riordan triangle ((1-x)/(1-2*x), x^2/(1-2*x)).

The programs for A201701, there is no canonical definition to state claims against.
-/

/-! ## A201701.P15563245678362299854

`A124182(A061579(n))`
-/

namespace A201701.P15563245678362299854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (A061579 n).toNat

end

end A201701.P15563245678362299854

/-! ## A201701.P9852563973689760390

`A124182(A114327(n)+n)`
-/

namespace A201701.P9852563973689760390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (A114327 n + (n : ℤ)).toNat

end

end A201701.P9852563973689760390

/-! ## A201701.P17125733153860451147

`A124182(A038722(n+1)-1)`
-/

namespace A201701.P17125733153860451147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (A038722 (n + 1) - 1).toNat

end

end A201701.P17125733153860451147

/-! ## A201701.P18357896738598049339

`A124182(A093995(n+1)-(n+1))`
-/

namespace A201701.P18357896738598049339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A201701.P18357896738598049339

/-! ## A201701.P10086329807065997172

`A124182(A002024(n+1)²-(n+1))`
-/

namespace A201701.P10086329807065997172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A201701.P10086329807065997172

/-! ## A201701.P3292777499236145815

`A124182(A057944(n)+A025581(n))`
-/

namespace A201701.P3292777499236145815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (A057944 n + A025581 n).toNat

end

end A201701.P3292777499236145815

/-! ## A201701.P9115537649512866891

`A124182(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A201701.P9115537649512866891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A201701.P9115537649512866891

/-! ## A201701.P12081746339404939716

`A124182(A088226(A038722(n+1)²))`
-/

namespace A201701.P12081746339404939716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (A088226 (A038722 (n + 1) ^ 2).toNat).toNat

end

end A201701.P12081746339404939716

/-!
# A201702: Number of unlabeled 5-trees on n nodes.

The programs for A201702, there is no canonical definition to state claims against.
-/

/-! ## A201702.P15498190409842250787

`A202037(A043318(n+2))`
-/

namespace A201702.P15498190409842250787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202037 (A043318 (n + 2)).toNat

end

end A201702.P15498190409842250787

/-! ## A201702.P9876987998964426059

`A202037(A044915(n+2))`
-/

namespace A201702.P9876987998964426059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202037 (A044915 (n + 2)).toNat

end

end A201702.P9876987998964426059

/-! ## A201702.P4127800418540858292

`A154470(A202037(n+2))`
-/

namespace A201702.P4127800418540858292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A202037 (n + 2)).toNat

end

end A201702.P4127800418540858292

/-! ## A201702.P3388699205204287562

`A202037(A161951(n+2))`
-/

namespace A201702.P3388699205204287562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202037 (A161951 (n + 2)).toNat

end

end A201702.P3388699205204287562

/-! ## A201702.P5478026680680675648

`A322754(A077168(n+2))`
-/

namespace A201702.P5478026680680675648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322754 (A077168 (n + 2)).toNat

end

end A201702.P5478026680680675648

/-!
# A201703: Triangle read by rows: T(n,m) (0 <= m <= n) = size of smallest set of nodes whose removal from an n-dimensional hypercube leaves no subgraph isomorphic to an m-dimensional Fibonacci cube.

The programs for A201703, there is no canonical definition to state claims against.
-/

/-! ## A201703.P5580703024005266248

`A153281(n)-A300725(A153281(n))`
-/

namespace A201703.P5580703024005266248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153281 n - A300725 (A153281 n).toNat

end

end A201703.P5580703024005266248

/-! ## A201703.P11168424530314180506

`floor(A137688(n)/A003056(A037126(n+1)))`
-/

namespace A201703.P11168424530314180506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137688 n : ℚ) / (A003056 (A037126 (n + 1)).toNat : ℚ)⌋

end

end A201703.P11168424530314180506

/-! ## A201703.P5845430797033671512

`floor(A137688(n)/A051162(A002260(n+1)))`
-/

namespace A201703.P5845430797033671512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137688 n : ℚ) / (A051162 (A002260 (n + 1)).toNat : ℚ)⌋

end

end A201703.P5845430797033671512

/-! ## A201703.P14734511802242894083

`A153281(n)-A060862(A103092(n+11))`
-/

namespace A201703.P14734511802242894083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153281 n - A060862 (A103092 (n + 11)).toNat

end

end A201703.P14734511802242894083

/-!
# A201704: Primes of the form 8*k^2 + 7.

The programs for A201704, there is no canonical definition to state claims against.
-/

/-! ## A201704.P18351606111986718640

`A081585(A121068(n+1))+6`
-/

namespace A201704.P18351606111986718640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 (A121068 (n + 1)).toNat + 6

end

end A201704.P18351606111986718640

/-! ## A201704.P9147600328733141549

`∩[A107163(n+1), A201475(n+1)]`
-/

namespace A201704.P9147600328733141549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201704.P9147600328733141549

/-! ## A201704.P17905047295684579106

`∩[A142102(n+1), A201475(n+1)]`
-/

namespace A201704.P17905047295684579106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201704.P17905047295684579106

/-! ## A201704.P7420253409368556941

`∩[A142102(n+1), A117619(n)+n²]`
-/

namespace A201704.P7420253409368556941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 n + (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201704.P7420253409368556941

/-! ## A201704.P9375045692038741844

`p?[8*n²+7]`
-/

namespace A201704.P9375045692038741844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201704.P9375045692038741844

/-!
# A201705: Primes of the form 8n^2 + 9.

The programs for A201705, there is no canonical definition to state claims against.
-/

/-! ## A201705.P13538271692884262488

`record[A201476(n+2)%xor(2, A201476(n+2))]`
-/

namespace A201705.P13538271692884262488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201476 (n + 2)) (Int.xor 2 (A201476 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201705.P13538271692884262488

/-! ## A201705.P6330332021515819069

`∩[A070183(n+1), A339048(n)]`
-/

namespace A201705.P6330332021515819069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201705.P6330332021515819069

/-! ## A201705.P3420338875607569364

`∩[A070183(n+1), A201476(n+1)]`
-/

namespace A201705.P3420338875607569364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201705.P3420338875607569364

/-! ## A201705.P5510630346558138895

`∩[A107181(n+1), A339048(n)]`
-/

namespace A201705.P5510630346558138895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201705.P5510630346558138895

/-! ## A201705.P12778880507656898839

`∩[A293394(n+1), A339048(n)]`
-/

namespace A201705.P12778880507656898839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201705.P12778880507656898839

/-! ## A201705.P13069283948828102069

`∩[A107181(n+1), A201476(n+1)]`
-/

namespace A201705.P13069283948828102069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201705.P13069283948828102069

/-! ## A201705.P11103779504500880117

`∩[A201476(n+1), A293394(n+1)]`
-/

namespace A201705.P11103779504500880117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201705.P11103779504500880117

/-! ## A201705.P3224929200673638998

`p?[8*n²+9]`
-/

namespace A201705.P3224929200673638998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201705.P3224929200673638998

/-! ## A201705.P6333930693857065277

`∏{p}[p?[(n+2)*8*n+17], #]`
-/

namespace A201705.P6333930693857065277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (8 * n) + 17

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201705.P6333930693857065277

/-! ## A201705.P1312408370670912810

`or(1, p?[A339048(2*n)])`
-/

namespace A201705.P1312408370670912810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339048 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201705.P1312408370670912810

/-!
# A201706: Primes of the form 9n^2 + 4.

The programs for A201706, there is no canonical definition to state claims against.
-/

/-! ## A201706.P576991103169747546

`A098062(eq[3, A020639(A007591(n+1))])`
-/

namespace A201706.P576991103169747546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201706.P576991103169747546

/-! ## A201706.P13546643273759348405

`A144410(A056908(n+1))+5`
-/

namespace A201706.P13546643273759348405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144410 (A056908 (n + 1)).toNat + 5

end

end A201706.P13546643273759348405

/-! ## A201706.P17730635080502425922

`∩[A078370(3*n+1), A005473(n+1)]`
-/

namespace A201706.P17730635080502425922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201706.P17730635080502425922

/-! ## A201706.P17551206465941312184

`∩[A005473(n+1), A078370(A016777(n))]`
-/

namespace A201706.P17551206465941312184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 (A016777 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201706.P17551206465941312184

/-! ## A201706.P7124555168108798822

`∩[A098062(n+1), A078370(A016777(n))]`
-/

namespace A201706.P7124555168108798822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 (A016777 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201706.P7124555168108798822

/-!
# A201707: Primes of the form 9n^2 + 7.

The programs for A201707, there is no canonical definition to state claims against.
-/

/-! ## A201707.P15435107600215516958

`∩[A079138(n+1), A117619(A008588(n))]`
-/

namespace A201707.P15435107600215516958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 (A008588 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201707.P15435107600215516958

/-! ## A201707.P2396510323064064099

`A117619(∩[A114270(n+1), A008588(n)])`
-/

namespace A201707.P2396510323064064099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A201707.P2396510323064064099

/-! ## A201707.P7319238076542056818

`∩[A142102(n+1), A117619(n)]`
-/

namespace A201707.P7319238076542056818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201707.P7319238076542056818

/-! ## A201707.P1954399009830629839

`∩[A079138(n+1), A142102(n+1)]`
-/

namespace A201707.P1954399009830629839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201707.P1954399009830629839

/-! ## A201707.P7424461575899714092

`p?[(3*n)²+7]`
-/

namespace A201707.P7424461575899714092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201707.P7424461575899714092

/-! ## A201707.P16862940176751918054

`or(1, p?[n*9*n+7])`
-/

namespace A201707.P16862940176751918054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (9 * n) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201707.P16862940176751918054

/-! ## A201707.P7050506756044833705

`xor(2, p?[n*9*n+7]-2)`
-/

namespace A201707.P7050506756044833705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (9 * n) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2)

end

end A201707.P7050506756044833705

/-! ## A201707.P13374933257266078293

`∏{p}[p?[A117619(3*n)], #]`
-/

namespace A201707.P13374933257266078293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201707.P13374933257266078293

/-! ## A201707.P9899579499850917263

`∩[A106924(n+1), A117619(n)]`
-/

namespace A201707.P9899579499850917263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201707.P9899579499850917263

/-! ## A201707.P10504132060798610353

`∩[A079138(n+1), A106924(n+1)]`
-/

namespace A201707.P10504132060798610353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201707.P10504132060798610353

/-!
# A201708: Primes of the form 9n^2 + 10.

The programs for A201708, there is no canonical definition to state claims against.
-/

/-! ## A201708.P2468339411102476226

`∩[A107203(n+1), A114948(n)]`
-/

namespace A201708.P2468339411102476226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201708.P2468339411102476226

/-! ## A201708.P8449232290485941530

`∩[A139902(n+1), A114948(n)]`
-/

namespace A201708.P8449232290485941530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201708.P8449232290485941530

/-! ## A201708.P11740374711452534467

`∩[A107203(n+1), A138355(n+1)]`
-/

namespace A201708.P11740374711452534467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201708.P11740374711452534467

/-! ## A201708.P2939836194860875291

`∩[A138355(n+1), A139902(n+1)]`
-/

namespace A201708.P2939836194860875291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201708.P2939836194860875291

/-! ## A201708.P10721584840199762349

`∩[A142106(n+1), A114948(n)]`
-/

namespace A201708.P10721584840199762349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201708.P10721584840199762349

/-!
# A201709: Primes of the form 10n^2 + 1.

The programs for A201709, there is no canonical definition to state claims against.
-/

/-! ## A201709.P391684342642179199

`10*A089767(n+1)+1`
-/

namespace A201709.P391684342642179199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A089767 (n + 1) + 1

end

end A201709.P391684342642179199

/-! ## A201709.P18182203197744545345

`A158187(sqrt(A089767(n+1)))`
-/

namespace A201709.P18182203197744545345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 (SequenceMachineLib.roundAway (Real.sqrt (A089767 (n + 1) : ℝ))).toNat

end

end A201709.P18182203197744545345

/-! ## A201709.P6251971916310346024

`∩[A275058(n+1), A158187(n)]`
-/

namespace A201709.P6251971916310346024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201709.P6251971916310346024

/-! ## A201709.P8532513628373567299

`A033583(sqrt(A089767(n+1)))+1`
-/

namespace A201709.P8532513628373567299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (SequenceMachineLib.roundAway (Real.sqrt (A089767 (n + 1) : ℝ))).toNat + 1

end

end A201709.P8532513628373567299

/-! ## A201709.P6713113575235822701

`A005901(sqrt(A089767(n+1)))-1`
-/

namespace A201709.P6713113575235822701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 (SequenceMachineLib.roundAway (Real.sqrt (A089767 (n + 1) : ℝ))).toNat - 1

end

end A201709.P6713113575235822701

/-! ## A201709.P9977596853393313416

`A010010(sqrt(A089767(n+1)))/2`
-/

namespace A201709.P9977596853393313416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010010 (SequenceMachineLib.roundAway (Real.sqrt (A089767 (n + 1) : ℝ))).toNat : ℚ) / 2

end

end A201709.P9977596853393313416

/-! ## A201709.P13971266915886124991

`A061722(sqrt(A089767(n+1)))-6`
-/

namespace A201709.P13971266915886124991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 (SequenceMachineLib.roundAway (Real.sqrt (A089767 (n + 1) : ℝ))).toNat - 6

end

end A201709.P13971266915886124991

/-! ## A201709.P4759879259237808280

`A158492(sqrt(A089767(n+1)))/10`
-/

namespace A201709.P4759879259237808280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158492 (SequenceMachineLib.roundAway (Real.sqrt (A089767 (n + 1) : ℝ))).toNat : ℚ) / 10

end

end A201709.P4759879259237808280

/-! ## A201709.P2367449911731527079

`A247792(sqrt(A089767(n+1)))+A089767(n+1)`
-/

namespace A201709.P2367449911731527079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 (SequenceMachineLib.roundAway (Real.sqrt (A089767 (n + 1) : ℝ))).toNat + A089767 (n + 1)

end

end A201709.P2367449911731527079

/-! ## A201709.P13589875094516042655

`∩[A121509(n+1), A275058(n+1)]`
-/

namespace A201709.P13589875094516042655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201709.P13589875094516042655

/-! ## A201709.P8246713284270037858

`∩[A068493(n+1), A158187(n)]`
-/

namespace A201709.P8246713284270037858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201709.P8246713284270037858

/-! ## A201709.P5788779727321922779

`∩[A068493(n+1), A121509(n+1)]`
-/

namespace A201709.P5788779727321922779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201709.P5788779727321922779

/-! ## A201709.P3519366163264748935

`∩[A066591(n+1), A158187(n)]`
-/

namespace A201709.P3519366163264748935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201709.P3519366163264748935

/-! ## A201709.P12697237995847367915

`∩[A066591(n+1), A121509(n+1)]`
-/

namespace A201709.P12697237995847367915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201709.P12697237995847367915

/-! ## A201709.P18022688179180010740

`∩[A068493(n+1), A261713(n+1)+1]`
-/

namespace A201709.P18022688179180010740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201709.P18022688179180010740

/-!
# A201710: Primes of the form 10n^2 + 3.

The programs for A201710, there is no canonical definition to state claims against.
-/

/-! ## A201710.P16661037657532218722

`p?[10*n²+3]`
-/

namespace A201710.P16661037657532218722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201710.P16661037657532218722

/-! ## A201710.P7939437164666030426

`∏{d}[p?[5*n*2*n+3], #]`
-/

namespace A201710.P7939437164666030426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n * (2 * n)) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201710.P7939437164666030426

/-! ## A201710.P10261580352500950911

`or(1, p?[A005901(n)+1])`
-/

namespace A201710.P10261580352500950911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201710.P10261580352500950911

/-! ## A201710.P1939701975435176112

`or(1, p?[A158187(n)+2])`
-/

namespace A201710.P1939701975435176112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201710.P1939701975435176112

/-! ## A201710.P2677119228835335444

`or(1, p?[A033583(n)+3])`
-/

namespace A201710.P2677119228835335444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201710.P2677119228835335444

/-! ## A201710.P2869737195761354486

`A007318(C(2, n))*p?[A158187(n)+2]`
-/

namespace A201710.P2869737195761354486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201710.P2869737195761354486

/-! ## A201710.P15764857603337611499

`(A000041(n)%2)!*p?[A158187(n)+2]`
-/

namespace A201710.P15764857603337611499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201710.P15764857603337611499

/-! ## A201710.P11953117444823337828

`p?[A158187(n)+2]+A008683(4*(n+1))`
-/

namespace A201710.P11953117444823337828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201710.P11953117444823337828

/-! ## A201710.P13672371291002784902

`p?[A158187(n)+2]+A001222(gcd(n, n+1))`
-/

namespace A201710.P13672371291002784902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A001222 (Nat.gcd n (n + 1))

end

end A201710.P13672371291002784902

/-! ## A201710.P191184252097206254

`(A000040(n+1)%2)!*p?[A158187(n)+2]`
-/

namespace A201710.P191184252097206254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201710.P191184252097206254

/-!
# A201711: Primes of the form 10n^2 + 9.

The programs for A201711, there is no canonical definition to state claims against.
-/

/-! ## A201711.P9251516910599197710

`∩[A107203(n+1), A275058(n+1)]`
-/

namespace A201711.P9251516910599197710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201711.P9251516910599197710

/-! ## A201711.P5321489127546760293

`p?[10*n²+9]`
-/

namespace A201711.P5321489127546760293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 2 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201711.P5321489127546760293

/-! ## A201711.P1459746480164447217

`or(1, p?[A005901(n)+7])`
-/

namespace A201711.P1459746480164447217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201711.P1459746480164447217

/-! ## A201711.P10296023600504774575

`∩[A132234(n+1), A275058(n+1)]`
-/

namespace A201711.P10296023600504774575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201711.P10296023600504774575

/-! ## A201711.P947954172822263151

`A007318(∑[n])*p?[A005901(n)+7]`
-/

namespace A201711.P947954172822263151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201711.P947954172822263151

/-!
# A201712: Primes of the form 2n^2 - 3.

The programs for A201712, the canonical program `A201712.P13264653286749342928` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201712 has offset 1).

The definition of A201712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201712.P13264653286749342928

`p?[2*n²-3]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201712

/-- `p?[2*n²-3]` -/
def P13264653286749342928.Spec : Prop :=
  ∀ n, P13264653286749342928.a n = A201712 (n + 1)

theorem P13264653286749342928.correct : P13264653286749342928.Spec := by
  intro n
  simp only [A201712, Nat.add_sub_cancel]

end A201712

/-! ## A201712.P13034415402587948111

`or(1, p?[n*2*n-3])`
-/

namespace A201712.P13034415402587948111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201712.P13034415402587948111

namespace A201712

/-- `or(1, p?[n*2*n-3])` -/
def P13034415402587948111.Spec : Prop :=
  ∀ n, P13034415402587948111.a n = A201712 (n + 1)

end A201712

/-! ## A201712.P5298240566320330934

`∏{d}[p?[n*2*n-3], #]`
-/

namespace A201712.P5298240566320330934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201712.P5298240566320330934

namespace A201712

/-- `∏{d}[p?[n*2*n-3], #]` -/
def P5298240566320330934.Spec : Prop :=
  ∀ n, (P5298240566320330934.a n : ℤ) = A201712 (n + 1)

end A201712

/-! ## A201712.P10660620685409783595

`∑{p}[p?[n*2*n-3], #]`
-/

namespace A201712.P10660620685409783595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201712.P10660620685409783595

namespace A201712

/-- `∑{p}[p?[n*2*n-3], #]` -/
def P10660620685409783595.Spec : Prop :=
  ∀ n, (P10660620685409783595.a n : ℤ) = A201712 (n + 1)

end A201712

/-! ## A201712.P6104273092448388906

`∏{p}[p?[n*2*n-3], #]`
-/

namespace A201712.P6104273092448388906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201712.P6104273092448388906

namespace A201712

/-- `∏{p}[p?[n*2*n-3], #]` -/
def P6104273092448388906.Spec : Prop :=
  ∀ n, (P6104273092448388906.a n : ℤ) = A201712 (n + 1)

end A201712

/-! ## A201712.P10781183089956545273

`∑{d}[p?[n*2*n-3], #]-1`
-/

namespace A201712.P10781183089956545273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A201712.P10781183089956545273

namespace A201712

/-- `∑{d}[p?[n*2*n-3], #]-1` -/
def P10781183089956545273.Spec : Prop :=
  ∀ n, P10781183089956545273.a n = A201712 (n + 1)

end A201712

/-! ## A201712.P11099862781726298958

`lcm((-1)^n, p?[n*2*n-3])`
-/

namespace A201712.P11099862781726298958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201712.P11099862781726298958

namespace A201712

/-- `lcm((-1)^n, p?[n*2*n-3])` -/
def P11099862781726298958.Spec : Prop :=
  ∀ n, (P11099862781726298958.a n : ℤ) = A201712 (n + 1)

end A201712

/-! ## A201712.P5612641336661586738

`p?[n*2*n-3]+C(n, n+1)`
-/

namespace A201712.P5612641336661586738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.choose n (n + 1) : ℤ)

end

end A201712.P5612641336661586738

namespace A201712

/-- `p?[n*2*n-3]+C(n, n+1)` -/
def P5612641336661586738.Spec : Prop :=
  ∀ n, P5612641336661586738.a n = A201712 (n + 1)

theorem P5612641336661586738.correct : P5612641336661586738.Spec := by
  intro n
  simp only [A201712, Nat.add_sub_cancel, A201712.P5612641336661586738.f1, A201712.P5612641336661586738.a, A201712.P13264653286749342928.f1, A201712.P13264653286749342928.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A201712

/-! ## A201712.P13564513891653242710

`record[p?[Δ[A093916(n+1)]]]`
-/

namespace A201712.P13564513891653242710
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201712.P13564513891653242710

namespace A201712

/-- `record[p?[Δ[A093916(n+1)]]]` -/
def P13564513891653242710.Spec : Prop :=
  ∀ n, P13564513891653242710.a n = A201712 (n + 1)

end A201712

/-! ## A201712.P7360343576903506597

`record[p?[Δ[A093918(n+1)-n]]]`
-/

namespace A201712.P7360343576903506597
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093918 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201712.P7360343576903506597

namespace A201712

/-- `record[p?[Δ[A093918(n+1)-n]]]` -/
def P7360343576903506597.Spec : Prop :=
  ∀ n, P7360343576903506597.a n = A201712 (n + 1)

end A201712

/-! ## A201712.P9351412658132572320

`record[p?[A268581(A028242(n))]]`
-/

namespace A201712.P9351412658132572320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201712.P9351412658132572320

namespace A201712

/-- `record[p?[A268581(A028242(n))]]` -/
def P9351412658132572320.Spec : Prop :=
  ∀ n, P9351412658132572320.a n = A201712 (n + 1)

end A201712

/-! ## A201712.P11802480102969803873

`p?[A268581(n)]%A017438(n)`
-/

namespace A201712.P11802480102969803873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017438 n)

end

end A201712.P11802480102969803873

namespace A201712

/-- `p?[A268581(n)]%A017438(n)` -/
def P11802480102969803873.Spec : Prop :=
  ∀ n, P11802480102969803873.a n = A201712 (n + 1)

end A201712

/-! ## A201712.P15467758258473441525

`lcm(p?[A268581(n)], A033999(n))`
-/

namespace A201712.P15467758258473441525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A201712.P15467758258473441525

namespace A201712

/-- `lcm(p?[A268581(n)], A033999(n))` -/
def P15467758258473441525.Spec : Prop :=
  ∀ n, (P15467758258473441525.a n : ℤ) = A201712 (n + 1)

end A201712

/-! ## A201712.P1706623539979431623

`or(p?[A268581(n)], A038189(n))`
-/

namespace A201712.P1706623539979431623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A038189 n)

end

end A201712.P1706623539979431623

namespace A201712

/-- `or(p?[A268581(n)], A038189(n))` -/
def P1706623539979431623.Spec : Prop :=
  ∀ n, P1706623539979431623.a n = A201712 (n + 1)

end A201712

/-! ## A201712.P5917653748201346533

`A285476(n+3)+p?[A268581(n)]`
-/

namespace A201712.P5917653748201346533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 (n + 3) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201712.P5917653748201346533

namespace A201712

/-- `A285476(n+3)+p?[A268581(n)]` -/
def P5917653748201346533.Spec : Prop :=
  ∀ n, P5917653748201346533.a n = A201712 (n + 1)

end A201712

/-! ## A201712.P3168117960255806212

`p?[A004277(n)*A028310(n)-3]%A004634(n+2)`
-/

namespace A201712.P3168117960255806212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A028310 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A004634 (n + 2))

end

end A201712.P3168117960255806212

namespace A201712

/-- `p?[A004277(n)*A028310(n)-3]%A004634(n+2)` -/
def P3168117960255806212.Spec : Prop :=
  ∀ n, P3168117960255806212.a n = A201712 (n + 1)

end A201712

/-!
# A201713: Primes of the form 2n^2 - 5.

The programs for A201713, there is no canonical definition to state claims against.
-/

/-! ## A201713.P2623112955730875449

`∩[A107136(n+1), A271625(n+1)]`
-/

namespace A201713.P2623112955730875449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201713.P2623112955730875449

/-! ## A201713.P7577132953710642916

`p?[2*n²-5]`
-/

namespace A201713.P7577132953710642916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201713.P7577132953710642916

/-! ## A201713.P580511874647123235

`or(1, p?[n*2*n-5])`
-/

namespace A201713.P580511874647123235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201713.P580511874647123235

/-! ## A201713.P5192813121775131733

`∏{d}[p?[n*2*n-5], #]`
-/

namespace A201713.P5192813121775131733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201713.P5192813121775131733

/-! ## A201713.P17527043193433206223

`∑{p}[p?[n*2*n-5], #]`
-/

namespace A201713.P17527043193433206223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201713.P17527043193433206223

/-! ## A201713.P12672024153553086687

`∏{p}[p?[n*2*n-5], #]`
-/

namespace A201713.P12672024153553086687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201713.P12672024153553086687

/-! ## A201713.P3273932889445911107

`record[∑{p}[3-2*n*(n+2), #]]`
-/

namespace A201713.P3273932889445911107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 * (n * (n + 2)) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201713.P3273932889445911107

/-! ## A201713.P16594264584006013269

`lcm(2, p?[(n+2)*2*n-3])/2`
-/

namespace A201713.P16594264584006013269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (2 * n) : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / 2

end

end A201713.P16594264584006013269

/-! ## A201713.P14457942709490135199

`abs(2-p?[(n+2)*2*n-3])+2`
-/

namespace A201713.P14457942709490135199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (2 * n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 2

end

end A201713.P14457942709490135199

/-! ## A201713.P18357704657412799526

`∑{d}[p?[(n-1)*2*(n+1)-3], #]-1`
-/

namespace A201713.P18357704657412799526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 * (n + 1) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A201713.P18357704657412799526

/-!
# A201714: Primes of the form 2n^2 - 7.

The programs for A201714, the canonical program `A201714.P16069665242124546805` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201714 has offset 1).

The definition of A201714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201714.P16069665242124546805

`p?[2*n²-7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201714

/-- `p?[2*n²-7]` -/
def P16069665242124546805.Spec : Prop :=
  ∀ n, P16069665242124546805.a n = A201714 (n + 1)

theorem P16069665242124546805.correct : P16069665242124546805.Spec := by
  intro n
  simp only [A201714, Nat.add_sub_cancel]

end A201714

/-! ## A201714.P840948415822102411

`or(1, p?[n*2*n-7])`
-/

namespace A201714.P840948415822102411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201714.P840948415822102411

namespace A201714

/-- `or(1, p?[n*2*n-7])` -/
def P840948415822102411.Spec : Prop :=
  ∀ n, P840948415822102411.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P3396318634483386595

`∏{d}[p?[n*2*n-7], #]`
-/

namespace A201714.P3396318634483386595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201714.P3396318634483386595

namespace A201714

/-- `∏{d}[p?[n*2*n-7], #]` -/
def P3396318634483386595.Spec : Prop :=
  ∀ n, (P3396318634483386595.a n : ℤ) = A201714 (n + 1)

end A201714

/-! ## A201714.P2284373452695105268

`∑{p}[p?[n*2*n-7], #]`
-/

namespace A201714.P2284373452695105268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201714.P2284373452695105268

namespace A201714

/-- `∑{p}[p?[n*2*n-7], #]` -/
def P2284373452695105268.Spec : Prop :=
  ∀ n, (P2284373452695105268.a n : ℤ) = A201714 (n + 1)

end A201714

/-! ## A201714.P5430955684215268669

`∏{p}[p?[n*2*n-7], #]`
-/

namespace A201714.P5430955684215268669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201714.P5430955684215268669

namespace A201714

/-- `∏{p}[p?[n*2*n-7], #]` -/
def P5430955684215268669.Spec : Prop :=
  ∀ n, (P5430955684215268669.a n : ℤ) = A201714 (n + 1)

end A201714

/-! ## A201714.P2557017674341158127

`xor(1, p?[n*2*n-7])+1`
-/

namespace A201714.P2557017674341158127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A201714.P2557017674341158127

namespace A201714

/-- `xor(1, p?[n*2*n-7])+1` -/
def P2557017674341158127.Spec : Prop :=
  ∀ n, P2557017674341158127.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P18445716504333242409

`xor(1, p?[n*2*n-7]-1)`
-/

namespace A201714.P18445716504333242409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A201714.P18445716504333242409

namespace A201714

/-- `xor(1, p?[n*2*n-7]-1)` -/
def P18445716504333242409.Spec : Prop :=
  ∀ n, P18445716504333242409.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P7577193135561248968

`record[p?[n*A057979(n+1)-7]]`
-/

namespace A201714.P7577193135561248968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057979 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201714.P7577193135561248968

namespace A201714

/-- `record[p?[n*A057979(n+1)-7]]` -/
def P7577193135561248968.Spec : Prop :=
  ∀ n, P7577193135561248968.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P72133504691379866

`record[p?[A161532(A057979(n))]]`
-/

namespace A201714.P72133504691379866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 (A057979 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201714.P72133504691379866

namespace A201714

/-- `record[p?[A161532(A057979(n))]]` -/
def P72133504691379866.Spec : Prop :=
  ∀ n, P72133504691379866.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P12394714007250394416

`record[p?[A161532(A324344(n))]]`
-/

namespace A201714.P12394714007250394416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201714.P12394714007250394416

namespace A201714

/-- `record[p?[A161532(A324344(n))]]` -/
def P12394714007250394416.Spec : Prop :=
  ∀ n, P12394714007250394416.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P1606273595830501847

`p?[A161532(n)]%A017223(n)`
-/

namespace A201714.P1606273595830501847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017223 n)

end

end A201714.P1606273595830501847

namespace A201714

/-- `p?[A161532(n)]%A017223(n)` -/
def P1606273595830501847.Spec : Prop :=
  ∀ n, P1606273595830501847.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P9416092286021111724

`lcm(p?[A161532(n)], A020985(n))`
-/

namespace A201714.P9416092286021111724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A020985 n)

end

end A201714.P9416092286021111724

namespace A201714

/-- `lcm(p?[A161532(n)], A020985(n))` -/
def P9416092286021111724.Spec : Prop :=
  ∀ n, (P9416092286021111724.a n : ℤ) = A201714 (n + 1)

end A201714

/-! ## A201714.P1424015742300117933

`record[p?[A161532(A003963(n+1))]]`
-/

namespace A201714.P1424015742300117933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 (A003963 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201714.P1424015742300117933

namespace A201714

/-- `record[p?[A161532(A003963(n+1))]]` -/
def P1424015742300117933.Spec : Prop :=
  ∀ n, P1424015742300117933.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P5897720759385582456

`A000007(n+1)+p?[A161532(n)]`
-/

namespace A201714.P5897720759385582456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201714.P5897720759385582456

namespace A201714

/-- `A000007(n+1)+p?[A161532(n)]` -/
def P5897720759385582456.Spec : Prop :=
  ∀ n, P5897720759385582456.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P13674606283533602100

`p?[A161532(n)]*A057427(n+1)`
-/

namespace A201714.P13674606283533602100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057427 (n + 1)

end

end A201714.P13674606283533602100

namespace A201714

/-- `p?[A161532(n)]*A057427(n+1)` -/
def P13674606283533602100.Spec : Prop :=
  ∀ n, P13674606283533602100.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P9591798773651444814

`A000035(2*n)+p?[A161532(n)]`
-/

namespace A201714.P9591798773651444814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201714.P9591798773651444814

namespace A201714

/-- `A000035(2*n)+p?[A161532(n)]` -/
def P9591798773651444814.Spec : Prop :=
  ∀ n, P9591798773651444814.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P10930599549717266600

`p?[A161532(n)]+A139592(n)%2`
-/

namespace A201714.P10930599549717266600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A139592 n) 2

end

end A201714.P10930599549717266600

namespace A201714

/-- `p?[A161532(n)]+A139592(n)%2` -/
def P10930599549717266600.Spec : Prop :=
  ∀ n, P10930599549717266600.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P15567210196661053727

`p?[A161532(n)]+A008683(4*(n+1))`
-/

namespace A201714.P15567210196661053727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201714.P15567210196661053727

namespace A201714

/-- `p?[A161532(n)]+A008683(4*(n+1))` -/
def P15567210196661053727.Spec : Prop :=
  ∀ n, P15567210196661053727.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P10992406123425496456

`(A000005(A304875(n+2))-1)*p?[A161532(n)]`
-/

namespace A201714.P10992406123425496456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (A304875 (n + 2)).toNat - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201714.P10992406123425496456

namespace A201714

/-- `(A000005(A304875(n+2))-1)*p?[A161532(n)]` -/
def P10992406123425496456.Spec : Prop :=
  ∀ n, P10992406123425496456.a n = A201714 (n + 1)

end A201714

/-! ## A201714.P13760181352470455676

`∩[A141190(n+1), A161532(n)]`
-/

namespace A201714.P13760181352470455676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201714.P13760181352470455676

namespace A201714

/-- `∩[A141190(n+1), A161532(n)]` -/
def P13760181352470455676.Spec : Prop :=
  ∀ n, (P13760181352470455676.a n : ℤ) = A201714 (n + 1)

end A201714

/-!
# A201715: Primes of the form 3*m^2 - 2.

The programs for A201715, there is no canonical definition to state claims against.
-/

/-! ## A201715.P5138732325719736506

`∩[A107008(n+1), A195143(n)]`
-/

namespace A201715.P5138732325719736506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201715.P5138732325719736506

/-! ## A201715.P2296550016586858545

`∩[A069190(n+1), A107008(n+1)]`
-/

namespace A201715.P2296550016586858545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201715.P2296550016586858545

/-! ## A201715.P17478065630490460312

`∩[A071408(n+1), A107008(n+1)]`
-/

namespace A201715.P17478065630490460312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201715.P17478065630490460312

/-! ## A201715.P12977452123985461678

`∩[A100536(n+1), A107008(n+1)]`
-/

namespace A201715.P12977452123985461678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201715.P12977452123985461678

/-! ## A201715.P17341666459592088502

`∩[A107008(n+1), A276382(n+1)]`
-/

namespace A201715.P17341666459592088502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201715.P17341666459592088502

/-! ## A201715.P2005718945532724464

`p?[3*n²-2]`
-/

namespace A201715.P2005718945532724464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201715.P2005718945532724464

/-! ## A201715.P2710941841435040690

`or(1, p?[∑[24*n]+1])`
-/

namespace A201715.P2710941841435040690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201715.P2710941841435040690

/-! ## A201715.P3626038994418203182

`∑{p}[p?[∑[24*n]+1], #]`
-/

namespace A201715.P3626038994418203182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A201715.P3626038994418203182

/-! ## A201715.P5080031192020009657

`∏{d}[p?[n*3*n-2], #]`
-/

namespace A201715.P5080031192020009657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201715.P5080031192020009657

/-! ## A201715.P16296448852964957798

`∏{p}[p?[n*3*n-2], #]`
-/

namespace A201715.P16296448852964957798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201715.P16296448852964957798

/-!
# A201716: Primes of the form 3*m^2 - 4.

The programs for A201716, the canonical program `A201716.P13219196250872832578` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201716 has offset 1).

The definition of A201716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201716.P13219196250872832578

`p?[3*n²-4]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201716

/-- `p?[3*n²-4]` -/
def P13219196250872832578.Spec : Prop :=
  ∀ n, P13219196250872832578.a n = A201716 (n + 1)

theorem P13219196250872832578.correct : P13219196250872832578.Spec := by
  intro n
  simp only [A201716, Nat.add_sub_cancel]

end A201716

/-! ## A201716.P18275846974422414863

`or(1, p?[3*n*n-4])`
-/

namespace A201716.P18275846974422414863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n * n) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201716.P18275846974422414863

namespace A201716

/-- `or(1, p?[3*n*n-4])` -/
def P18275846974422414863.Spec : Prop :=
  ∀ n, P18275846974422414863.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P548155783234660099

`∏{p}[p?[24*C(n, 2)-1], #]`
-/

namespace A201716.P548155783234660099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * Nat.choose n 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201716.P548155783234660099

namespace A201716

/-- `∏{p}[p?[24*C(n, 2)-1], #]` -/
def P548155783234660099.Spec : Prop :=
  ∀ n, (P548155783234660099.a n : ℤ) = A201716 (n + 1)

end A201716

/-! ## A201716.P2181554211689911732

`∑{p}[p?[3*n*(n+2)-1], #]`
-/

namespace A201716.P2181554211689911732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n * (n + 2)) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201716.P2181554211689911732

namespace A201716

/-- `∑{p}[p?[3*n*(n+2)-1], #]` -/
def P2181554211689911732.Spec : Prop :=
  ∀ n, (P2181554211689911732.a n : ℤ) = A201716 (n + 1)

end A201716

/-! ## A201716.P521019055470582631

`∏{p}[p?[(n+2)*3*n-1], #]`
-/

namespace A201716.P521019055470582631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (3 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201716.P521019055470582631

namespace A201716

/-- `∏{p}[p?[(n+2)*3*n-1], #]` -/
def P521019055470582631.Spec : Prop :=
  ∀ n, (P521019055470582631.a n : ℤ) = A201716 (n + 1)

end A201716

/-! ## A201716.P10778657689024614479

`abs(1-p?[abs((n+2)*3*n-1)])+1`
-/

namespace A201716.P10778657689024614479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 2) * (3 * n) : ℤ) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1

end

end A201716.P10778657689024614479

namespace A201716

/-- `abs(1-p?[abs((n+2)*3*n-1)])+1` -/
def P10778657689024614479.Spec : Prop :=
  ∀ n, P10778657689024614479.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P1190402930114019178

`∏{d}[p?[A064200(n)-1], #]`
-/

namespace A201716.P1190402930114019178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201716.P1190402930114019178

namespace A201716

/-- `∏{d}[p?[A064200(n)-1], #]` -/
def P1190402930114019178.Spec : Prop :=
  ∀ n, (P1190402930114019178.a n : ℤ) = A201716 (n + 1)

end A201716

/-! ## A201716.P11469495454591032475

`∏{d}[p?[A255185(n)-(n+1)], #]`
-/

namespace A201716.P11469495454591032475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201716.P11469495454591032475

namespace A201716

/-- `∏{d}[p?[A255185(n)-(n+1)], #]` -/
def P11469495454591032475.Spec : Prop :=
  ∀ n, (P11469495454591032475.a n : ℤ) = A201716 (n + 1)

end A201716

/-! ## A201716.P9984301952270953956

`abs(p?[3*A005563(2*n)-1]-2)+2`
-/

namespace A201716.P9984301952270953956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005563 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2| + 2

end

end A201716.P9984301952270953956

namespace A201716

/-- `abs(p?[3*A005563(2*n)-1]-2)+2` -/
def P9984301952270953956.Spec : Prop :=
  ∀ n, P9984301952270953956.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P559640084985446909

`A007318(C(2, n))*p?[A064200(n)-1]`
-/

namespace A201716.P559640084985446909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201716.P559640084985446909

namespace A201716

/-- `A007318(C(2, n))*p?[A064200(n)-1]` -/
def P559640084985446909.Spec : Prop :=
  ∀ n, P559640084985446909.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P16415160341658413202

`or(p?[A255185(n)-(n+1)], A000007(n))`
-/

namespace A201716.P16415160341658413202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A201716.P16415160341658413202

namespace A201716

/-- `or(p?[A255185(n)-(n+1)], A000007(n))` -/
def P16415160341658413202.Spec : Prop :=
  ∀ n, P16415160341658413202.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P5269587188491559339

`or(p?[A255185(n)-(n+1)], A000038(n))`
-/

namespace A201716.P5269587188491559339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000038 n)

end

end A201716.P5269587188491559339

namespace A201716

/-- `or(p?[A255185(n)-(n+1)], A000038(n))` -/
def P5269587188491559339.Spec : Prop :=
  ∀ n, P5269587188491559339.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P16690656368587247093

`A000038(n+1)+p?[A255185(n)-(n+1)]`
-/

namespace A201716.P16690656368587247093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201716.P16690656368587247093

namespace A201716

/-- `A000038(n+1)+p?[A255185(n)-(n+1)]` -/
def P16690656368587247093.Spec : Prop :=
  ∀ n, P16690656368587247093.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P2631816628142206670

`A007318(A000217(n))*p?[3*n*n-4]`
-/

namespace A201716.P2631816628142206670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n * n) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201716.P2631816628142206670

namespace A201716

/-- `A007318(A000217(n))*p?[3*n*n-4]` -/
def P2631816628142206670.Spec : Prop :=
  ∀ n, P2631816628142206670.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P9678494039717400913

`or(p?[A255185(n)-(n+1)], A001511(n+1))`
-/

namespace A201716.P9678494039717400913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001511 (n + 1))

end

end A201716.P9678494039717400913

namespace A201716

/-- `or(p?[A255185(n)-(n+1)], A001511(n+1))` -/
def P9678494039717400913.Spec : Prop :=
  ∀ n, P9678494039717400913.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P12209402925990779445

`A007318(C(2, n))*p?[A255185(n)-(n+1)]`
-/

namespace A201716.P12209402925990779445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201716.P12209402925990779445

namespace A201716

/-- `A007318(C(2, n))*p?[A255185(n)-(n+1)]` -/
def P12209402925990779445.Spec : Prop :=
  ∀ n, P12209402925990779445.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P13202552347718549430

`p?[A255185(n)-(n+1)]+A008683(20*(n+1))`
-/

namespace A201716.P13202552347718549430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (20 * (n + 1))

end

end A201716.P13202552347718549430

namespace A201716

/-- `p?[A255185(n)-(n+1)]+A008683(20*(n+1))` -/
def P13202552347718549430.Spec : Prop :=
  ∀ n, P13202552347718549430.a n = A201716 (n + 1)

end A201716

/-! ## A201716.P7626048533272239605

`p?[A255185(n)-(n+1)]^A000041(C(2, n+2))`
-/

namespace A201716.P7626048533272239605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ)

end

end A201716.P7626048533272239605

namespace A201716

/-- `p?[A255185(n)-(n+1)]^A000041(C(2, n+2))` -/
def P7626048533272239605.Spec : Prop :=
  ∀ n, P7626048533272239605.a n = (A201716 (n + 1) : ℚ)

end A201716

/-! ## A201716.P6918851097018060788

`p?[A255185(n)-(n+1)]^A001511(A006005(n+1))`
-/

namespace A201716.P6918851097018060788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A001511 (A006005 (n + 1)).toNat : ℤ)

end

end A201716.P6918851097018060788

namespace A201716

/-- `p?[A255185(n)-(n+1)]^A001511(A006005(n+1))` -/
def P6918851097018060788.Spec : Prop :=
  ∀ n, P6918851097018060788.a n = (A201716 (n + 1) : ℚ)

end A201716

/-! ## A201716.P7341600996628005707

`A000045(A020639(2*(n+2)))*p?[A255185(n)-(n+1)]`
-/

namespace A201716.P7341600996628005707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 2))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201716.P7341600996628005707

namespace A201716

/-- `A000045(A020639(2*(n+2)))*p?[A255185(n)-(n+1)]` -/
def P7341600996628005707.Spec : Prop :=
  ∀ n, P7341600996628005707.a n = A201716 (n + 1)

end A201716

/-!
# A201717: Primes of the form 3*m^2 - 5.

The programs for A201717, there is no canonical definition to state claims against.
-/

/-! ## A201717.P9786344557761148506

`A056107(A268577(n+1))-6`
-/

namespace A201717.P9786344557761148506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 (A268577 (n + 1)).toNat - 6

end

end A201717.P9786344557761148506

/-! ## A201717.P7097026902715694377

`∩[A139832(n+1), A157417(n+1)]`
-/

namespace A201717.P7097026902715694377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201717.P7097026902715694377

/-! ## A201717.P11666609130466016773

`∩[A141304(n+1), A157417(n+1)]`
-/

namespace A201717.P11666609130466016773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201717.P11666609130466016773

/-! ## A201717.P15156867271231051421

`p?[3*n²-5]`
-/

namespace A201717.P15156867271231051421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201717.P15156867271231051421

/-! ## A201717.P4944942041862278573

`or(2, p?[n*3*n-5])`
-/

namespace A201717.P4944942041862278573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201717.P4944942041862278573

/-! ## A201717.P15040787293117897163

`∏{d}[p?[n*3*n-5], #]`
-/

namespace A201717.P15040787293117897163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201717.P15040787293117897163

/-! ## A201717.P720349648031714789

`∏{p}[p?[n*3*n-5], #]`
-/

namespace A201717.P720349648031714789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201717.P720349648031714789

/-! ## A201717.P13136060023336653963

`record[p?[A000212(and(n, n+1))-5]]`
-/

namespace A201717.P13136060023336653963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (Nat.land n (n + 1)) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201717.P13136060023336653963

/-! ## A201717.P13386702486152991342

`A007318(C(2, n))*p?[A067725(n)-2]`
-/

namespace A201717.P13386702486152991342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201717.P13386702486152991342

/-! ## A201717.P11222819344219162243

`A014963(6*(n+1))*p?[A067725(n)-2]`
-/

namespace A201717.P11222819344219162243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201717.P11222819344219162243

/-!
# A201718: Primes of the form 3*m^2 - 7.

The programs for A201718, there is no canonical definition to state claims against.
-/

/-! ## A201718.P5723402738992515459

`p?[3*n²-7]`
-/

namespace A201718.P5723402738992515459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201718.P5723402738992515459

/-! ## A201718.P1917274051172941468

`or(1, p?[n*3*n-7])`
-/

namespace A201718.P1917274051172941468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201718.P1917274051172941468

/-! ## A201718.P8658215715193574860

`abs(p?[n*3*n-7]-1)+1`
-/

namespace A201718.P8658215715193574860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (3 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A201718.P8658215715193574860

/-! ## A201718.P11139533105318168162

`lcm(p?[A256320(n)-7], A033999(n))`
-/

namespace A201718.P11139533105318168162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A201718.P11139533105318168162

/-! ## A201718.P12635801921230321846

`or(p?[A256320(n)-7], A102683(n))`
-/

namespace A201718.P12635801921230321846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A102683 n)

end

end A201718.P12635801921230321846

/-! ## A201718.P3057759062984218225

`p?[A256320(n)-7]%(A000217(n+5)+6)²`
-/

namespace A201718.P3057759062984218225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((A000217 (n + 5) + 6) ^ 2)

end

end A201718.P3057759062984218225

/-! ## A201718.P5260784377856934260

`ceil(1/A000005(n+1))*p?[A256320(n)-7]`
-/

namespace A201718.P5260784377856934260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000005 (n + 1) : ℚ)⌉ * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201718.P5260784377856934260

/-! ## A201718.P9845862222164229383

`A000007(n+1)+p?[A140679(n)-A017113(n)]`
-/

namespace A201718.P9845862222164229383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140679 n - A017113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201718.P9845862222164229383

/-! ## A201718.P15842033567094368463

`p?[A140679(n)-A017113(n)]+A008683(4*(n+1))`
-/

namespace A201718.P15842033567094368463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140679 n - A017113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201718.P15842033567094368463

/-!
# A201719: Primes of the form x^2 + 2y^2 such that y^2 + 2x^2 is also prime.

The programs for A201719, there is no canonical definition to state claims against.
-/

/-! ## A201719.P17005174025805833517

`A007520(lt[A000700(2*(n+1)), A259153(n)])`
-/

namespace A201719.P17005174025805833517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201719.P17005174025805833517

/-! ## A201719.P12612914658983403379

`A163183(comp[A030250(n)²])`
-/

namespace A201719.P12612914658983403379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030250 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A201719.P12612914658983403379

/-! ## A201719.P13812297645015224001

`A294993(∑[A090182(n)!])`
-/

namespace A201719.P13812297645015224001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A090182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201719.P13812297645015224001

/-! ## A201719.P4676190278246887297

`A294993(∑[A219585(n)!])`
-/

namespace A201719.P4676190278246887297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A219585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201719.P4676190278246887297

/-!
# A201720: The total number of components in (A011800) of all labeled forests on n nodes whose components are all paths.

The programs for A201720, there is no canonical definition to state claims against.
-/

/-! ## A201720.P6948160864639696119

`A263270(A336771(∑[n]))`
-/

namespace A201720.P6948160864639696119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A336771 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A201720.P6948160864639696119

/-! ## A201720.P7771044696342316444

`A079708(∑[A374124(n+1)])`
-/

namespace A201720.P7771044696342316444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079708 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201720.P7771044696342316444

/-!
# A201721: Number of n X n 0..4 arrays with rows and columns lexicographically nondecreasing and no element equal to the number of horizontal and vertical neighbors equal to itself.

The programs for A201721, there is no canonical definition to state claims against.
-/

/-! ## A201721.P7114916955336645872

`A201729((n+1)²+n²)`
-/

namespace A201721.P7114916955336645872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 ((n + 1) ^ 2 + n ^ 2)

end

end A201721.P7114916955336645872

/-!
# A201722: Number of n X 1 0..4 arrays with rows and columns lexicographically nondecreasing and no element equal to the number of horizontal and vertical neighbors equal to itself.

The programs for A201722, the canonical program `A201722.P8755741246545386823` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201722 has offset 1).

The definition of A201722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201722.P8755741246545386823

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=10, a(2)=20, a(3)=35, a(4)=56`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201722

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8755741246545386823.Spec : Prop :=
  ∀ n, P8755741246545386823.a n = A201722 (n + 1)

theorem P8755741246545386823.correct : P8755741246545386823.Spec := by
  intro n
  simp only [A201722, Nat.add_sub_cancel]

end A201722

/-! ## A201722.P15572440446936602254

`floor(3*(sqrt(2)+n*sqrt(n²+3)))`
-/

namespace A201722.P15572440446936602254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (Real.sqrt (2 : ℝ) + (n : ℝ) * Real.sqrt (n ^ 2 + 3 : ℝ))⌋

end

end A201722.P15572440446936602254

namespace A201722

/-- `floor(3*(sqrt(2)+n*sqrt(n²+3)))` -/
def P15572440446936602254.Spec : Prop :=
  ∀ n, P15572440446936602254.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P17728645591485365994

`∑[A189320(n+1)-1]`
-/

namespace A201722.P17728645591485365994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189320 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201722.P17728645591485365994

namespace A201722

/-- `∑[A189320(n+1)-1]` -/
def P17728645591485365994.Spec : Prop :=
  ∀ n, P17728645591485365994.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P11531746289041674988

`∑[a(n-1)+8]-A002522(n)` with `a(0)=5, a(1)=7, a(2)=13, a(3)=20`
-/

namespace A201722.P11531746289041674988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 7, 13, 20] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002522 n

end

end A201722.P11531746289041674988

namespace A201722

/-- `∑[a(n-1)+8]-A002522(n)` -/
def P11531746289041674988.Spec : Prop :=
  ∀ n, P11531746289041674988.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P576334944548364672

`A005893(n+1)+A289207(n)²`
-/

namespace A201722.P576334944548364672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (n + 1) + A289207 n ^ 2

end

end A201722.P576334944548364672

namespace A201722

/-- `A005893(n+1)+A289207(n)²` -/
def P576334944548364672.Spec : Prop :=
  ∀ n, P576334944548364672.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P8954470471434669067

`A115291(A038567(n))+A033428(n)`
-/

namespace A201722.P8954470471434669067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115291 (A038567 n).toNat + A033428 n

end

end A201722.P8954470471434669067

namespace A201722

/-- `A115291(A038567(n))+A033428(n)` -/
def P8954470471434669067.Spec : Prop :=
  ∀ n, P8954470471434669067.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P2246884124042728038

`∑[A004277(n)+A033627(A028310(n))+n+2]`
-/

namespace A201722.P2246884124042728038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A033627 (A028310 n).toNat + (n : ℤ) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201722.P2246884124042728038

namespace A201722

/-- `∑[A004277(n)+A033627(A028310(n))+n+2]` -/
def P2246884124042728038.Spec : Prop :=
  ∀ n, P2246884124042728038.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P12482258712603465262

`A115291(n+1)+A033428(n)`
-/

namespace A201722.P12482258712603465262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115291 (n + 1) + A033428 n

end

end A201722.P12482258712603465262

namespace A201722

/-- `A115291(n+1)+A033428(n)` -/
def P12482258712603465262.Spec : Prop :=
  ∀ n, P12482258712603465262.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P4883678449786916965

`A267884(n+1)+A005918(n)`
-/

namespace A201722.P4883678449786916965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267884 (n + 1) + A005918 n

end

end A201722.P4883678449786916965

namespace A201722

/-- `A267884(n+1)+A005918(n)` -/
def P4883678449786916965.Spec : Prop :=
  ∀ n, P4883678449786916965.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P9023867802159000102

`A005918(n+1)-A270545(n)`
-/

namespace A201722.P9023867802159000102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (n + 1) - A270545 n

end

end A201722.P9023867802159000102

namespace A201722

/-- `A005918(n+1)-A270545(n)` -/
def P9023867802159000102.Spec : Prop :=
  ∀ n, P9023867802159000102.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P15133812987613574428

`∑[Δ[A005918(n)]-A267884(n)]`
-/

namespace A201722.P15133812987613574428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A267884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201722.P15133812987613574428

namespace A201722

/-- `∑[Δ[A005918(n)]-A267884(n)]` -/
def P15133812987613574428.Spec : Prop :=
  ∀ n, P15133812987613574428.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P15920580793403300261

`Δ[A063488(n+1)]-A270545(n)`
-/

namespace A201722.P15920580793403300261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270545 n

end

end A201722.P15920580793403300261

namespace A201722

/-- `Δ[A063488(n+1)]-A270545(n)` -/
def P15920580793403300261.Spec : Prop :=
  ∀ n, P15920580793403300261.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P8123462446185661488

`∑[A004120(n)-∑[n]]+A027379(n+1)-n`
-/

namespace A201722.P8123462446185661488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004120 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A027379 (n + 1) - (n : ℤ))

end

end A201722.P8123462446185661488

namespace A201722

/-- `∑[A004120(n)-∑[n]]+A027379(n+1)-n` -/
def P8123462446185661488.Spec : Prop :=
  ∀ n, P8123462446185661488.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P11996643072821235817

`A158799(n+1)+A158799(n)+A005918(n)`
-/

namespace A201722.P11996643072821235817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 (n + 1) + (A158799 n + A005918 n)

end

end A201722.P11996643072821235817

namespace A201722

/-- `A158799(n+1)+A158799(n)+A005918(n)` -/
def P11996643072821235817.Spec : Prop :=
  ∀ n, P11996643072821235817.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P9237631544106311092

`A000124(n+1)+A016028(n+1)+A005893(n)`
-/

namespace A201722.P9237631544106311092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) + (A016028 (n + 1) + A005893 n)

end

end A201722.P9237631544106311092

namespace A201722

/-- `A000124(n+1)+A016028(n+1)+A005893(n)` -/
def P9237631544106311092.Spec : Prop :=
  ∀ n, P9237631544106311092.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P7178213796680732987

`A016028(n+2)+A016028(n+1)+A001844(n)`
-/

namespace A201722.P7178213796680732987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (n + 2) + (A016028 (n + 1) + A001844 n)

end

end A201722.P7178213796680732987

namespace A201722

/-- `A016028(n+2)+A016028(n+1)+A001844(n)` -/
def P7178213796680732987.Spec : Prop :=
  ∀ n, P7178213796680732987.a n = A201722 (n + 1)

end A201722

/-! ## A201722.P12109319812126659521

`A133146(2*n+1)-A270545(n)`
-/

namespace A201722.P12109319812126659521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133146 (2 * n + 1) - A270545 n

end

end A201722.P12109319812126659521

namespace A201722

/-- `A133146(2*n+1)-A270545(n)` -/
def P12109319812126659521.Spec : Prop :=
  ∀ n, P12109319812126659521.a n = A201722 (n + 1)

end A201722

/-!
# A201723: Number of nX2 0..4 arrays with rows and columns lexicographically nondecreasing and no element equal to the number of horizontal and vertical neighbors equal to itself.

The programs for A201723, there is no canonical definition to state claims against.
-/

/-! ## A201723.P2889443877878903011

`A201729(∑[n+1]+2)`
-/

namespace A201723.P2889443877878903011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201723.P2889443877878903011

/-! ## A201723.P14101209772557359525

`record[A010054(n)*A201729(n+2)]`
-/

namespace A201723.P14101209772557359525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201729 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201723.P14101209772557359525

/-! ## A201723.P7652136854910304617

`record[gcd(A201729(n+2), A318753(n))]`
-/

namespace A201723.P7652136854910304617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201729 (n + 2)) (A318753 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201723.P7652136854910304617

/-! ## A201723.P15826895537703838701

`record[root(A201729(n+2), A133819(n+1))]`
-/

namespace A201723.P15826895537703838701
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201729 (n + 2) : ℝ) ^ (1 / (A133819 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201723.P15826895537703838701

/-! ## A201723.P4031999749470010543

`record[A201729(abs(A201163(n)))]`
-/

namespace A201723.P4031999749470010543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201723.P4031999749470010543

/-!
# A201724: Number of nX3 0..4 arrays with rows and columns lexicographically nondecreasing and no element equal to the number of horizontal and vertical neighbors equal to itself.

The programs for A201724, there is no canonical definition to state claims against.
-/

/-! ## A201724.P16425859450292882913

`A201729(∑[n+2]+4)`
-/

namespace A201724.P16425859450292882913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201724.P16425859450292882913

/-! ## A201724.P11534071166178963914

`A201729(A167614(n+1))+A025444(n)`
-/

namespace A201724.P11534071166178963914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (A167614 (n + 1)).toNat + A025444 n

end

end A201724.P11534071166178963914

/-! ## A201724.P7777602178922817246

`A201729(A167614(n+1))+A138471(n)`
-/

namespace A201724.P7777602178922817246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (A167614 (n + 1)).toNat + A138471 n

end

end A201724.P7777602178922817246

/-! ## A201724.P17098039936544239912

`lcm(A033999(n), A201729(A167614(n+1)))`
-/

namespace A201724.P17098039936544239912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A201729 (A167614 (n + 1)).toNat)

end

end A201724.P17098039936544239912

/-! ## A201724.P15058197787888343780

`or(A063524(n), A201729(A167614(n+1)))`
-/

namespace A201724.P15058197787888343780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A201729 (A167614 (n + 1)).toNat)

end

end A201724.P15058197787888343780

/-!
# A201725: Number of nX4 0..4 arrays with rows and columns lexicographically nondecreasing and no element equal to the number of horizontal and vertical neighbors equal to itself.

The programs for A201725, there is no canonical definition to state claims against.
-/

/-! ## A201725.P1685615484275776118

`A201729(A141214(n)+7)`
-/

namespace A201725.P1685615484275776118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (A141214 n + 7).toNat

end

end A201725.P1685615484275776118

/-! ## A201725.P12571340960773819051

`A201729(A052905(n)+9)`
-/

namespace A201725.P12571340960773819051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (A052905 n + 9).toNat

end

end A201725.P12571340960773819051

/-! ## A201725.P1125244362594173126

`A201729(A055999(n)+10)`
-/

namespace A201725.P1125244362594173126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (A055999 n + 10).toNat

end

end A201725.P1125244362594173126

/-! ## A201725.P13042548549599714342

`A201729(A167614(n+2)+1)`
-/

namespace A201725.P13042548549599714342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (A167614 (n + 2) + 1).toNat

end

end A201725.P13042548549599714342

/-! ## A201725.P7641788637663638146

`A201729(A027379(n+2)-(n-3))`
-/

namespace A201725.P7641788637663638146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (A027379 (n + 2) - ((n : ℤ) - 3)).toNat

end

end A201725.P7641788637663638146

/-!
# A201726: Number of nX5 0..4 arrays with rows and columns lexicographically nondecreasing and no element equal to the number of horizontal and vertical neighbors equal to itself.

The programs for A201726, there is no canonical definition to state claims against.
-/

/-! ## A201726.P17764354407148973794

`A201729(A374005(n+1))`
-/

namespace A201726.P17764354407148973794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (A374005 (n + 1)).toNat

end

end A201726.P17764354407148973794

/-! ## A201726.P14865399642081292091

`A201729(eq[3, A152157(n)])`
-/

namespace A201726.P14865399642081292091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201726.P14865399642081292091

/-!
# A201727: Number of nX6 0..4 arrays with rows and columns lexicographically nondecreasing and no element equal to the number of horizontal and vertical neighbors equal to itself.

The programs for A201727, there is no canonical definition to state claims against.
-/

/-! ## A201727.P11514284839832599195

`A201729(A374007(n+1))`
-/

namespace A201727.P11514284839832599195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (A374007 (n + 1)).toNat

end

end A201727.P11514284839832599195

/-!
# A201728: 

The programs for A201728, there is no canonical definition to state claims against.
-/

/-! ## A201728.P16138737075763414447

`A201729(A056119(n)+28)`
-/

namespace A201728.P16138737075763414447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201729 (A056119 n + 28).toNat

end

end A201728.P16138737075763414447

/-!
# A201730: Triangle T(n,k), read by rows, given by (2,1/2,3/2,0,0,0,0,0,0,0,...) DELTA (0,1/2,-1/2,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A201730, there is no canonical definition to state claims against.
-/

/-! ## A201730.P10182806737132796950

`and(A000267(A280856(n+1)), A257943(n+1))`
-/

namespace A201730.P10182806737132796950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000267 (A280856 (n + 1)).toNat) (A257943 (n + 1))

end

end A201730.P10182806737132796950

/-!
# A201731: a(n) = [x^n/n!] log( (n - (n-1)*exp(x)) / (n+1 - n*exp(x)) ).

The programs for A201731, there is no canonical definition to state claims against.
-/

/-! ## A201731.P967196314817703884

`(n+1)*A201732(n)`
-/

namespace A201731.P967196314817703884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A201732 n

end

end A201731.P967196314817703884

/-! ## A201731.P16100260699579150140

`A201732(n)*A348553(n)`
-/

namespace A201731.P16100260699579150140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201732 n * A348553 n

end

end A201731.P16100260699579150140

/-! ## A201731.P8006621720269207355

`A201732(n)*A353861(A000079(n))`
-/

namespace A201731.P8006621720269207355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201732 n * A353861 (A000079 n).toNat

end

end A201731.P8006621720269207355

/-!
# A201732: a(n) = [x^n/n!] (1/x) * log( (n+1 - n*exp(x)) / (n+2 - (n+1)*exp(x)) ).

The programs for A201732, there is no canonical definition to state claims against.
-/

/-! ## A201732.P14996104009126118098

`A201731(n+1)/(n+1)`
-/

namespace A201732.P14996104009126118098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201731 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A201732.P14996104009126118098

/-!
# A201733: Number of isomorphism classes of polycyclic groups (or solvable groups) of order n.

The programs for A201733, there is no canonical definition to state claims against.
-/

/-! ## A201733.P5711031624564446040

`A000001(n+1)-A185705(A169809(n))`
-/

namespace A201733.P5711031624564446040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - A185705 (A169809 n).toNat

end

end A201733.P5711031624564446040

/-! ## A201733.P16898974094665854557

`A000001(n+1)-A160981(A327391(n+1))`
-/

namespace A201733.P16898974094665854557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - A160981 (A327391 (n + 1)).toNat

end

end A201733.P16898974094665854557

/-! ## A201733.P3872107323947729248

`A000001(n+1)-A280710(gcd(n+1, A153675(n+1))+1)`
-/

namespace A201733.P3872107323947729248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - A280710 (Int.gcd (n + 1 : ℤ) (A153675 (n + 1)) + 1)

end

end A201733.P3872107323947729248

/-!
# A201734: Numbers n such that 90*n + 47 is prime.

The programs for A201734, the canonical program `A201734.P3143725369021031847` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201734 has offset 1).

The definition of A201734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201734.P3143725369021031847

`eq[1, A075743(A128468(n)-2)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A201734

/-- `eq[1, A075743(A128468(n)-2)]` -/
def P3143725369021031847.Spec : Prop :=
  ∀ n, (P3143725369021031847.a n : ℤ) = A201734 (n + 1)

theorem P3143725369021031847.correct : P3143725369021031847.Spec := by
  intro n
  simp only [A201734, Nat.add_sub_cancel]

end A201734

/-! ## A201734.P18308644808880214159

`eq[1, A075743(A082369(n+1)+2)]`
-/

namespace A201734.P18308644808880214159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A082369 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201734.P18308644808880214159

namespace A201734

/-- `eq[1, A075743(A082369(n+1)+2)]` -/
def P18308644808880214159.Spec : Prop :=
  ∀ n, (P18308644808880214159.a n : ℤ) = A201734 (n + 1)

end A201734

/-! ## A201734.P13234334700387543767

`eq[1, A001222(A128468(3*n+1))]`
-/

namespace A201734.P13234334700387543767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A128468 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201734.P13234334700387543767

namespace A201734

/-- `eq[1, A001222(A128468(3*n+1))]` -/
def P13234334700387543767.Spec : Prop :=
  ∀ n, (P13234334700387543767.a n : ℤ) = A201734 (n + 1)

end A201734

/-! ## A201734.P10809500720534240039

`eq[1, A001222(30*A016777(n)+17)]`
-/

namespace A201734.P10809500720534240039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * A016777 n + 17).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201734.P10809500720534240039

namespace A201734

/-- `eq[1, A001222(30*A016777(n)+17)]` -/
def P10809500720534240039.Spec : Prop :=
  ∀ n, (P10809500720534240039.a n : ℤ) = A201734 (n + 1)

end A201734

/-! ## A201734.P1793205031528331715

`eq[1, A001221(A128468(A016777(n)))]`
-/

namespace A201734.P1793205031528331715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A128468 (A016777 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201734.P1793205031528331715

namespace A201734

/-- `eq[1, A001221(A128468(A016777(n)))]` -/
def P1793205031528331715.Spec : Prop :=
  ∀ n, (P1793205031528331715.a n : ℤ) = A201734 (n + 1)

end A201734

/-! ## A201734.P2572224296336940590

`eq[2, A000005(A017353(A017209(n)))]`
-/

namespace A201734.P2572224296336940590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017353 (A017209 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201734.P2572224296336940590

namespace A201734

/-- `eq[2, A000005(A017353(A017209(n)))]` -/
def P2572224296336940590.Spec : Prop :=
  ∀ n, (P2572224296336940590.a n : ℤ) = A201734 (n + 1)

end A201734

/-! ## A201734.P749181968771488230

`record[A005843(n)/A000005(A128468(3*n+1))]`
-/

namespace A201734.P749181968771488230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A000005 (A128468 (3 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201734.P749181968771488230

namespace A201734

/-- `record[A005843(n)/A000005(A128468(3*n+1))]` -/
def P749181968771488230.Spec : Prop :=
  ∀ n, P749181968771488230.a n = (A201734 (n + 1) : ℚ)

end A201734

/-! ## A201734.P3800845645452593515

`eq[2, A000005(A017185(A017329(n)))]`
-/

namespace A201734.P3800845645452593515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017185 (A017329 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201734.P3800845645452593515

namespace A201734

/-- `eq[2, A000005(A017185(A017329(n)))]` -/
def P3800845645452593515.Spec : Prop :=
  ∀ n, (P3800845645452593515.a n : ℤ) = A201734 (n + 1)

end A201734

/-! ## A201734.P5757447892199987923

`eq[1, A206824(9*(10*n+5)+2)]`
-/

namespace A201734.P5757447892199987923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206824 (9 * (10 * n + 5) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201734.P5757447892199987923

namespace A201734

/-- `eq[1, A206824(9*(10*n+5)+2)]` -/
def P5757447892199987923.Spec : Prop :=
  ∀ n, (P5757447892199987923.a n : ℤ) = A201734 (n + 1)

end A201734

/-!
# A201739: Numbers n such that 90*n + 29 is prime.

The programs for A201739, the canonical program `A201739.P6931800238278113142` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201739 has offset 1).

The definition of A201739 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142327, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A201739.P6931800238278113142

`(A142327(n+1)-29)/90`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A201739

/-- `(A142327(n+1)-29)/90` -/
def P6931800238278113142.Spec : Prop :=
  ∀ n, P6931800238278113142.a n = (A201739 (n + 1) : ℚ)

end A201739

/-! ## A201739.P17137027846592121583

`floor(A142327(n+1)/90)`
-/

namespace A201739.P17137027846592121583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142327 (n + 1) : ℚ) / 90⌋

end

end A201739.P17137027846592121583

namespace A201739

/-- `floor(A142327(n+1)/90)` -/
def P17137027846592121583.Spec : Prop :=
  ∀ n, P17137027846592121583.a n = A201739 (n + 1)

end A201739

/-! ## A201739.P15357929083077621574

`round(A142327(n+1)/90)%A001844(n)`
-/

namespace A201739.P15357929083077621574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A142327 (n + 1) : ℚ) / 90)) (A001844 n)

end

end A201739.P15357929083077621574

namespace A201739

/-- `round(A142327(n+1)/90)%A001844(n)` -/
def P15357929083077621574.Spec : Prop :=
  ∀ n, P15357929083077621574.a n = A201739 (n + 1)

end A201739

/-! ## A201739.P3516915633700813429

`∑{d}[round(A142327(n+1)/90), A000010(#)]`
-/

namespace A201739.P3516915633700813429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A142327 (n + 1) : ℚ) / 90)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A201739.P3516915633700813429

namespace A201739

/-- `∑{d}[round(A142327(n+1)/90), A000010(#)]` -/
def P3516915633700813429.Spec : Prop :=
  ∀ n, P3516915633700813429.a n = A201739 (n + 1)

end A201739

/-! ## A201739.P4540777605718307752

`eq[1, A075743(A017377(3*n))]`
-/

namespace A201739.P4540777605718307752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017377 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201739.P4540777605718307752

namespace A201739

/-- `eq[1, A075743(A017377(3*n))]` -/
def P4540777605718307752.Spec : Prop :=
  ∀ n, (P4540777605718307752.a n : ℤ) = A201739 (n + 1)

end A201739

/-! ## A201739.P3356832793005040252

`eq[1, A001221(A139280(n+1)+20)]`
-/

namespace A201739.P3356832793005040252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A139280 (n + 1) + 20).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201739.P3356832793005040252

namespace A201739

/-- `eq[1, A001221(A139280(n+1)+20)]` -/
def P3356832793005040252.Spec : Prop :=
  ∀ n, (P3356832793005040252.a n : ℤ) = A201739 (n + 1)

end A201739

/-! ## A201739.P5279803246011666592

`eq[2, A000005(A139280(n+1)+20)]`
-/

namespace A201739.P5279803246011666592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A139280 (n + 1) + 20).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201739.P5279803246011666592

namespace A201739

/-- `eq[2, A000005(A139280(n+1)+20)]` -/
def P5279803246011666592.Spec : Prop :=
  ∀ n, (P5279803246011666592.a n : ℤ) = A201739 (n + 1)

end A201739

/-! ## A201739.P6911827604996315606

`eq[1, A001222(30*A016777(n)-1)]`
-/

namespace A201739.P6911827604996315606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * A016777 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201739.P6911827604996315606

namespace A201739

/-- `eq[1, A001222(30*A016777(n)-1)]` -/
def P6911827604996315606.Spec : Prop :=
  ∀ n, (P6911827604996315606.a n : ℤ) = A201739 (n + 1)

end A201739

/-! ## A201739.P14004080174836663258

`eq[2, A000005(A017377(A017185(n)))]`
-/

namespace A201739.P14004080174836663258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017377 (A017185 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201739.P14004080174836663258

namespace A201739

/-- `eq[2, A000005(A017377(A017185(n)))]` -/
def P14004080174836663258.Spec : Prop :=
  ∀ n, (P14004080174836663258.a n : ℤ) = A201739 (n + 1)

end A201739

/-! ## A201739.P14829666458549088145

`eq[A139280(n+1)+20, A020639(A139280(n+1)+20)]`
-/

namespace A201739.P14829666458549088145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) + 20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139280 (n + 1) + 20).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201739.P14829666458549088145

namespace A201739

/-- `eq[A139280(n+1)+20, A020639(A139280(n+1)+20)]` -/
def P14829666458549088145.Spec : Prop :=
  ∀ n, (P14829666458549088145.a n : ℤ) = A201739 (n + 1)

end A201739

/-! ## A201739.P6428479266196062078

`eq[1, A001222(A017185(A017305(n)))]`
-/

namespace A201739.P6428479266196062078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017185 (A017305 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201739.P6428479266196062078

namespace A201739

/-- `eq[1, A001222(A017185(A017305(n)))]` -/
def P6428479266196062078.Spec : Prop :=
  ∀ n, (P6428479266196062078.a n : ℤ) = A201739 (n + 1)

end A201739

/-! ## A201739.P5676902338038857148

`eq[1, A167020(A008706(A016777(n)))]`
-/

namespace A201739.P5676902338038857148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A008706 (A016777 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201739.P5676902338038857148

namespace A201739

/-- `eq[1, A167020(A008706(A016777(n)))]` -/
def P5676902338038857148.Spec : Prop :=
  ∀ n, (P5676902338038857148.a n : ℤ) = A201739 (n + 1)

end A201739

/-!
# A201769: Decimal expansion of the number x satisfying x^2+x=e^x.

The programs for A201769, there is no canonical definition to state claims against.
-/

/-! ## A201769.P5013326657692794932

`A105111(2*n+3)+A055396(A026777(n))`
-/

namespace A201769.P5013326657692794932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105111 (2 * n + 3) + A055396 (A026777 n).toNat

end

end A201769.P5013326657692794932

/-!
# A201771: Number of ways to place 9 nonattacking kings on an n X n board.

The programs for A201771, there is no canonical definition to state claims against.
-/

/-! ## A201771.P6848260536912764953

`60^(2*a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A201771.P6848260536912764953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  60 ^ (2 * a (n - 1))

end

end A201771.P6848260536912764953

/-! ## A201771.P13863345661986089032

`60^a(n-1)^2` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A201771.P13863345661986089032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  (60 ^ a (n - 1)) ^ 2

end

end A201771.P13863345661986089032

/-!
# A201774: Decimal expansion of 1/(Pi + 1).

The programs for A201774, there is no canonical definition to state claims against.
-/

/-! ## A201774.P14644943911983378534

`9-A197726(n)`
-/

namespace A201774.P14644943911983378534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A197726 n

end

end A201774.P14644943911983378534

/-!
# A201775: Decimal expansion of 1/(Pi - 1).

The programs for A201775, there is no canonical definition to state claims against.
-/

/-! ## A201775.P9245918818027631619

`A306811(n+1)`
-/

namespace A201775.P9245918818027631619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306811 (n + 1 + 1)

end

end A201775.P9245918818027631619

/-!
# A201776: Decimal expansion of 1/(e+1).

The programs for A201776, there is no canonical definition to state claims against.
-/

/-! ## A201776.P11106780546380269012

`9-A370325(n)`
-/

namespace A201776.P11106780546380269012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A370325 n

end

end A201776.P11106780546380269012

/-!
# A201777: E.g.f. satisfies: A(exp(x) - 1) = x*exp(A(x)).

The programs for A201777, there is no canonical definition to state claims against.
-/

/-! ## A201777.P7832168055584877960

`A340854(A263274(n!))`
-/

namespace A201777.P7832168055584877960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (A263274 (Nat.factorial n)).toNat

end

end A201777.P7832168055584877960

/-! ## A201777.P14679239630162421087

`A018658(∑[A008290(n)])`
-/

namespace A201777.P14679239630162421087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201777.P14679239630162421087

/-! ## A201777.P8862071592472744839

`A317368(A153829(n)-n)`
-/

namespace A201777.P8862071592472744839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317368 (A153829 n - (n : ℤ)).toNat

end

end A201777.P8862071592472744839

/-!
# A201778: G.f. satisfies A(x/(1-x)) = x*(1-sqrt(1-4*A(x)))/(2*A(x)).

The programs for A201778, there is no canonical definition to state claims against.
-/

/-! ## A201778.P13937314374708617088

`A002024((2*a(n-1))²-n+1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A201778.P13937314374708617088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A002024 ((2 * a (n - 1)) ^ 2 - (n : ℤ) + 1).toNat

end

end A201778.P13937314374708617088

/-! ## A201778.P752724640117193746

`A035936(A024419(n))-n`
-/

namespace A201778.P752724640117193746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A024419 n).toNat - (n : ℤ)

end

end A201778.P752724640117193746

/-! ## A201778.P3999822696900674767

`A316355(A112706(n))-n`
-/

namespace A201778.P3999822696900674767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A112706 n).toNat - (n : ℤ)

end

end A201778.P3999822696900674767

/-! ## A201778.P8703141228495486513

`A109613(A193832(n!))-n`
-/

namespace A201778.P8703141228495486513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A193832 (Nat.factorial n)).toNat - (n : ℤ)

end

end A201778.P8703141228495486513

/-!
# A201779: G.f. A(x) satisfies A(x/(1-x))=x*(1+A(x))/(1-A(x)-A(x)^2).

The programs for A201779, there is no canonical definition to state claims against.
-/

/-! ## A201779.P18017920460347318467

`A254948(A129519(n))`
-/

namespace A201779.P18017920460347318467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (A129519 n).toNat

end

end A201779.P18017920460347318467

/-! ## A201779.P10011738237253000351

`A261104(A150148(n))`
-/

namespace A201779.P10011738237253000351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A150148 n).toNat

end

end A201779.P10011738237253000351

/-! ## A201779.P3698695871453467903

`∑[A131209(A174145(n))]`
-/

namespace A201779.P3698695871453467903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A174145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201779.P3698695871453467903

/-! ## A201779.P10021490168434934442

`A254948(A034943(n+1))`
-/

namespace A201779.P10021490168434934442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (A034943 (n + 1)).toNat

end

end A201779.P10021490168434934442

/-!
# A201780: Riordan array ((1-x)^2/(1-2x), x/(1-2x)).

The programs for A201780, there is no canonical definition to state claims against.
-/

/-! ## A201780.P2490045203201490159

`A063967(n)-A097805(A187829(n+1))`
-/

namespace A201780.P2490045203201490159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 n - A097805 (A187829 (n + 1)).toNat

end

end A201780.P2490045203201490159

/-! ## A201780.P1158168425783606528

`A155112(n+1)+A155112(n)-A097805(A187829(n+1))`
-/

namespace A201780.P1158168425783606528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (n + 1) + A155112 n - A097805 (A187829 (n + 1)).toNat

end

end A201780.P1158168425783606528

/-! ## A201780.P8148634490097735575

`A137585(n+1)+A137582(A085478(n))`
-/

namespace A201780.P8148634490097735575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137585 (n + 1) + A137582 (A085478 n).toNat

end

end A201780.P8148634490097735575

/-!
# A201781: Primes of the form 3*m^2 - 8.

The programs for A201781, there is no canonical definition to state claims against.
-/

/-! ## A201781.P8644650473698045241

`p?[3*n²-8]`
-/

namespace A201781.P8644650473698045241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201781.P8644650473698045241

/-! ## A201781.P4660524000224529855

`or(2, p?[(n-2)*3*n-5])`
-/

namespace A201781.P4660524000224529855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (3 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201781.P4660524000224529855

/-! ## A201781.P9723736702734917948

`∏{d}[p?[(n-2)*3*n-5], #]`
-/

namespace A201781.P9723736702734917948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (3 * n : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201781.P9723736702734917948

/-! ## A201781.P17799269813818903734

`∏{p}[p?[(n+2)*3*n-5], #]`
-/

namespace A201781.P17799269813818903734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (3 * n) : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201781.P17799269813818903734

/-! ## A201781.P6406842529921517380

`abs(1-p?[A049451(n)-(n+8)])+1`
-/

namespace A201781.P6406842529921517380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n - (n + 8 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1

end

end A201781.P6406842529921517380

/-! ## A201781.P12468410817873908223

`A007318(C(2, n))*p?[A064200(n)-5]`
-/

namespace A201781.P12468410817873908223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201781.P12468410817873908223

/-! ## A201781.P6151703266992259644

`A007318(and(1, -n))*p?[A064200(n)-5]`
-/

namespace A201781.P6151703266992259644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201781.P6151703266992259644

/-! ## A201781.P18019964335141730787

`p?[A064200(n)-5]%A000041(n+9)²`
-/

namespace A201781.P18019964335141730787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000041 (n + 9) ^ 2)

end

end A201781.P18019964335141730787

/-! ## A201781.P16280351873525890612

`A000041(C(2, n+2))*p?[A064200(n)-5]`
-/

namespace A201781.P16280351873525890612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201781.P16280351873525890612

/-! ## A201781.P2969418082781121964

`A000108(C(2, n+2))*p?[A064200(n)-5]`
-/

namespace A201781.P2969418082781121964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201781.P2969418082781121964

/-!
# A201782: Primes of the form 3n^2 - 10.

The programs for A201782, there is no canonical definition to state claims against.
-/

/-! ## A201782.P9090087940992086941

`p?[3*n²-10]`
-/

namespace A201782.P9090087940992086941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201782.P9090087940992086941

/-! ## A201782.P1693582119220839082

`∏{d}[p?[3*n*(n+4)+2], #]`
-/

namespace A201782.P1693582119220839082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * (n + 4)) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201782.P1693582119220839082

/-! ## A201782.P1607991221548737655

`abs(p?[(n+2)*3*n-7]-1)+1`
-/

namespace A201782.P1607991221548737655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (3 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A201782.P1607991221548737655

/-! ## A201782.P13271728301341452616

`∏{p}[p?[A067725(n)-7], #]`
-/

namespace A201782.P13271728301341452616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201782.P13271728301341452616

/-! ## A201782.P8574696732976473190

`∏{p}[p?[3*A005563(n)-7], #]`
-/

namespace A201782.P8574696732976473190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005563 n - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201782.P8574696732976473190

/-! ## A201782.P8324673999234992167

`abs(1-p?[A067725(n+1)-7])+1`
-/

namespace A201782.P8324673999234992167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1

end

end A201782.P8324673999234992167

/-! ## A201782.P11941321858175938411

`A007318(C(2, n))*p?[A067725(n)-7]`
-/

namespace A201782.P11941321858175938411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201782.P11941321858175938411

/-! ## A201782.P17484281669685509902

`ceil(1/A000041(n))*p?[A067725(n)-7]`
-/

namespace A201782.P17484281669685509902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201782.P17484281669685509902

/-! ## A201782.P12573037638785475192

`p?[A067725(n)-7]+A000045(val(3*70*n+1, 4))`
-/

namespace A201782.P12573037638785475192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (SequenceMachineLib.valuation (3 * (70 * n) + 1) 4)

end

end A201782.P12573037638785475192

/-! ## A201782.P10889556264065390834

`p?[A067725(n)-7]+A008683(4*A007318(n))`
-/

namespace A201782.P10889556264065390834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * A007318 n).toNat

end

end A201782.P10889556264065390834

/-!
# A201783: Primes of the form 5n^2 - 1.

The programs for A201783, there is no canonical definition to state claims against.
-/

/-! ## A201783.P8293727357855596226

`∩[A134538(n+1), A243009(n+1)]`
-/

namespace A201783.P8293727357855596226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201783.P8293727357855596226

/-! ## A201783.P5740281823970720893

`∩[A158491(n+1), A243009(n+1)]`
-/

namespace A201783.P5740281823970720893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201783.P5740281823970720893

/-! ## A201783.P11359999780397591154

`p?[5*n²-1]`
-/

namespace A201783.P11359999780397591154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201783.P11359999780397591154

/-! ## A201783.P15813220280355742435

`or(1, p?[n*5*n-1])`
-/

namespace A201783.P15813220280355742435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201783.P15813220280355742435

/-! ## A201783.P8681574042704815423

`∑{p}[p?[n*5*n-1], #]`
-/

namespace A201783.P8681574042704815423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201783.P8681574042704815423

/-! ## A201783.P14784653139846367193

`∏{p}[p?[5*n*4*n-1], #]`
-/

namespace A201783.P14784653139846367193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n * (4 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201783.P14784653139846367193

/-! ## A201783.P9637131146739270724

`∏{d}[p?[A134538(n+1)], #]`
-/

namespace A201783.P9637131146739270724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201783.P9637131146739270724

/-! ## A201783.P11039795444259035942

`∏{d}[p?[A158491(n+1)], #]`
-/

namespace A201783.P11039795444259035942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158491 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201783.P11039795444259035942

/-! ## A201783.P6152918425983855576

`∩[A134538(n+1), A141887(n+1)]`
-/

namespace A201783.P6152918425983855576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201783.P6152918425983855576

/-! ## A201783.P1541536773024468413

`∩[A141887(n+1), A158491(n+1)]`
-/

namespace A201783.P1541536773024468413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201783.P1541536773024468413

/-!
# A201784: Primes of the form 5n^2 - 2.

The programs for A201784, there is no canonical definition to state claims against.
-/

/-! ## A201784.P15214771429222282130

`p?[5*n²-2]`
-/

namespace A201784.P15214771429222282130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201784.P15214771429222282130

/-! ## A201784.P5234555735964638673

`or(1, p?[xor(6, 5*n²)])`
-/

namespace A201784.P5234555735964638673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (5 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201784.P5234555735964638673

/-! ## A201784.P17530162249366768718

`∏{p}[p?[xor(6, 5*n²)], #]`
-/

namespace A201784.P17530162249366768718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (5 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201784.P17530162249366768718

/-! ## A201784.P9727484710878712377

`or(1, p?[n*5*n-2])`
-/

namespace A201784.P9727484710878712377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201784.P9727484710878712377

/-! ## A201784.P6606972013203400214

`∏{d}[p?[n*5*n-2], #]`
-/

namespace A201784.P6606972013203400214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201784.P6606972013203400214

/-!
# A201785: Primes of the form 5n^2 - 3.

The programs for A201785, there is no canonical definition to state claims against.
-/

/-! ## A201785.P1996150149512125767

`p?[5*n²-3]`
-/

namespace A201785.P1996150149512125767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201785.P1996150149512125767

/-! ## A201785.P1939072833389279839

`∏{d}[p?[n*5*n-3], #]`
-/

namespace A201785.P1939072833389279839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201785.P1939072833389279839

/-! ## A201785.P16551106773576946007

`∑{p}[p?[n*5*n-3], #]`
-/

namespace A201785.P16551106773576946007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201785.P16551106773576946007

/-! ## A201785.P798451873395170688

`floor(1/acot(p?[n*5*n-3]))`
-/

namespace A201785.P798451873395170688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / SequenceMachineLib.acot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌋

end

end A201785.P798451873395170688

/-! ## A201785.P12762027719571103017

`∏{p}[p?[(n+2)*(5*n+1)-n], #]`
-/

namespace A201785.P12762027719571103017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (5 * n + 1) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201785.P12762027719571103017

/-!
# A201786: Primes of the form 5*k^2 - 4.

The programs for A201786, the canonical program `A201786.P4099425712573629758` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201786 has offset 1).

The definition of A201786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201786.P4099425712573629758

`∩[A142183(n+1), A134593(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A201786

/-- `∩[A142183(n+1), A134593(n)]` -/
def P4099425712573629758.Spec : Prop :=
  ∀ n, (P4099425712573629758.a n : ℤ) = A201786 (n + 1)

theorem P4099425712573629758.correct : P4099425712573629758.Spec := by
  intro n
  simp only [A201786, Nat.add_sub_cancel]

end A201786

/-! ## A201786.P1990937245828545657

`∩[A142183(n+1), A195148(n)]`
-/

namespace A201786.P1990937245828545657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P1990937245828545657

namespace A201786

/-- `∩[A142183(n+1), A195148(n)]` -/
def P1990937245828545657.Spec : Prop :=
  ∀ n, (P1990937245828545657.a n : ℤ) = A201786 (n + 1)

end A201786

/-! ## A201786.P14108112407215000184

`∩[A142183(n+1), A195317(n+1)]`
-/

namespace A201786.P14108112407215000184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P14108112407215000184

namespace A201786

/-- `∩[A142183(n+1), A195317(n+1)]` -/
def P14108112407215000184.Spec : Prop :=
  ∀ n, (P14108112407215000184.a n : ℤ) = A201786 (n + 1)

end A201786

/-! ## A201786.P4523311330075616961

`∩[A107145(n+1), A134593(n)]`
-/

namespace A201786.P4523311330075616961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P4523311330075616961

namespace A201786

/-- `∩[A107145(n+1), A134593(n)]` -/
def P4523311330075616961.Spec : Prop :=
  ∀ n, (P4523311330075616961.a n : ℤ) = A201786 (n + 1)

end A201786

/-! ## A201786.P11320770269816921875

`∩[A107145(n+1), A195148(n)]`
-/

namespace A201786.P11320770269816921875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P11320770269816921875

namespace A201786

/-- `∩[A107145(n+1), A195148(n)]` -/
def P11320770269816921875.Spec : Prop :=
  ∀ n, (P11320770269816921875.a n : ℤ) = A201786 (n + 1)

end A201786

/-! ## A201786.P15093299386532859301

`∩[A107145(n+1), A195317(n+1)]`
-/

namespace A201786.P15093299386532859301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P15093299386532859301

namespace A201786

/-- `∩[A107145(n+1), A195317(n+1)]` -/
def P15093299386532859301.Spec : Prop :=
  ∀ n, (P15093299386532859301.a n : ℤ) = A201786 (n + 1)

end A201786

/-! ## A201786.P15059271088556186538

`∩[A141881(n+1), A134593(n)]`
-/

namespace A201786.P15059271088556186538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P15059271088556186538

namespace A201786

/-- `∩[A141881(n+1), A134593(n)]` -/
def P15059271088556186538.Spec : Prop :=
  ∀ n, (P15059271088556186538.a n : ℤ) = A201786 (n + 1)

end A201786

/-! ## A201786.P2600852672303780524

`∩[A141881(n+1), A195148(n)]`
-/

namespace A201786.P2600852672303780524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P2600852672303780524

namespace A201786

/-- `∩[A141881(n+1), A195148(n)]` -/
def P2600852672303780524.Spec : Prop :=
  ∀ n, (P2600852672303780524.a n : ℤ) = A201786 (n + 1)

end A201786

/-! ## A201786.P12184405928997792764

`∩[A141881(n+1), A195317(n+1)]`
-/

namespace A201786.P12184405928997792764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P12184405928997792764

namespace A201786

/-- `∩[A141881(n+1), A195317(n+1)]` -/
def P12184405928997792764.Spec : Prop :=
  ∀ n, (P12184405928997792764.a n : ℤ) = A201786 (n + 1)

end A201786

/-! ## A201786.P8639056722646488310

`p?[5*n²-4]`
-/

namespace A201786.P8639056722646488310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201786.P8639056722646488310

namespace A201786

/-- `p?[5*n²-4]` -/
def P8639056722646488310.Spec : Prop :=
  ∀ n, P8639056722646488310.a n = A201786 (n + 1)

end A201786

/-!
# A201787: Primes of the form 5n^2 - 6.

The programs for A201787, there is no canonical definition to state claims against.
-/

/-! ## A201787.P18290275410666128214

`p?[5*n²-6]`
-/

namespace A201787.P18290275410666128214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201787.P18290275410666128214

/-! ## A201787.P13495359124215683270

`or(1, p?[(n-2)*5*n-1])`
-/

namespace A201787.P13495359124215683270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (5 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201787.P13495359124215683270

/-! ## A201787.P17505416611685381321

`∑{p}[p?[5*n*(n+2)-1], #]`
-/

namespace A201787.P17505416611685381321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n * (n + 2)) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201787.P17505416611685381321

/-! ## A201787.P15918356759668870171

`A007318(∑[n])*p?[A033429(n)-6]`
-/

namespace A201787.P15918356759668870171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201787.P15918356759668870171

/-! ## A201787.P4533495170728443440

`p?[A008602(n²+n)-1]-A055949(A002265(n))`
-/

namespace A201787.P4533495170728443440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 (n ^ 2 + n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A055949 (A002265 n).toNat

end

end A201787.P4533495170728443440

/-!
# A201788: Primes of the form 5n^2 - 7.

The programs for A201788, there is no canonical definition to state claims against.
-/

/-! ## A201788.P7274558843450109077

`p?[5*n²-7]`
-/

namespace A201788.P7274558843450109077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201788.P7274558843450109077

/-! ## A201788.P13953035491262426102

`or(1, p?[n*5*n-7])`
-/

namespace A201788.P13953035491262426102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201788.P13953035491262426102

/-! ## A201788.P1322025389477327924

`∏{p}[p?[n*5*n-7], #]`
-/

namespace A201788.P1322025389477327924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n) : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201788.P1322025389477327924

/-! ## A201788.P8451770330279941995

`∏{d}[p?[5*n*(n+2)-2], #]`
-/

namespace A201788.P8451770330279941995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n * (n + 2)) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201788.P8451770330279941995

/-! ## A201788.P1133257756350896527

`xor(1, p?[n*A008706(n)-7]-1)`
-/

namespace A201788.P1133257756350896527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008706 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A201788.P1133257756350896527

/-! ## A201788.P556978350283218123

`A007318(C(2, n))*p?[A027578(n)-17]`
-/

namespace A201788.P556978350283218123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 n - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201788.P556978350283218123

/-! ## A201788.P1282232143257759109

`p?[A027578(n)-17]/A000041(C(n, n²))`
-/

namespace A201788.P1282232143257759109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 n - 17

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000041 (Nat.choose n (n ^ 2)) : ℚ)

end

end A201788.P1282232143257759109

/-! ## A201788.P16836542298320632730

`p?[A027578(n)-17]+A008683(4*(n+1))`
-/

namespace A201788.P16836542298320632730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 n - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201788.P16836542298320632730

/-! ## A201788.P17432376434665137926

`A014963(6*(n+2))*p?[A027578(n)-17]`
-/

namespace A201788.P17432376434665137926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 n - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201788.P17432376434665137926

/-! ## A201788.P8507877804191469723

`A000041(C(2, n+2))*p?[A134538(n+1)-6]`
-/

namespace A201788.P8507877804191469723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134538 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201788.P8507877804191469723

/-!
# A201789: Primes of the form 5n^2 - 8.

The programs for A201789, there is no canonical definition to state claims against.
-/

/-! ## A201789.P4533899644382083821

`p?[5*n²-8]`
-/

namespace A201789.P4533899644382083821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201789.P4533899644382083821

/-! ## A201789.P17233657772512616701

`∑{p}[p?[40*C(n+1, 2)-3], #]`
-/

namespace A201789.P17233657772512616701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (40 * Nat.choose (n + 1) 2 : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201789.P17233657772512616701

/-! ## A201789.P5789648893101062572

`∏{d}[p?[(n+2)*5*n-3], #]`
-/

namespace A201789.P5789648893101062572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (5 * n) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201789.P5789648893101062572

/-! ## A201789.P1863143496337665396

`∑{p}[p?[5*n*(n+2)-3], #]`
-/

namespace A201789.P1863143496337665396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n * (n + 2)) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201789.P1863143496337665396

/-! ## A201789.P15055837556936460807

`or(1, p?[A067724(n+1)-3])`
-/

namespace A201789.P15055837556936460807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201789.P15055837556936460807

/-!
# A201790: Primes of the form 5n^2 - 9.

The programs for A201790, there is no canonical definition to state claims against.
-/

/-! ## A201790.P1305993061280197488

`p?[5*n²-9]`
-/

namespace A201790.P1305993061280197488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201790.P1305993061280197488

/-! ## A201790.P16909587832873204771

`or(1, p?[A067724(n+1)-4])`
-/

namespace A201790.P16909587832873204771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201790.P16909587832873204771

/-! ## A201790.P10151986452594066937

`∑{p}[p?[A067724(2*n+1)-4], #]`
-/

namespace A201790.P10151986452594066937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (2 * n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201790.P10151986452594066937

/-! ## A201790.P10706142258547206396

`∏{p}[p?[A067724(n+1+n)-4], #]`
-/

namespace A201790.P10706142258547206396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (n + 1 + n) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201790.P10706142258547206396

/-! ## A201790.P3233404454440501794

`A007318(∑[n])*p?[A067724(n+1)-4]`
-/

namespace A201790.P3233404454440501794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201790.P3233404454440501794

/-! ## A201790.P10694846475923208524

`p?[A067724(n+1)-4]/A007318(C(2, n))`
-/

namespace A201790.P10694846475923208524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (n + 1) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A201790.P10694846475923208524

/-! ## A201790.P10995522181096242301

`lcm((-1)^A007318(n), p?[A067724(n+1)-4])`
-/

namespace A201790.P10995522181096242301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (n + 1) - 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A007318 n : ℤ))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201790.P10995522181096242301

/-! ## A201790.P12901566717431956489

`p?[A067724(n+1)-4]+A008683(4*(n+1))`
-/

namespace A201790.P12901566717431956489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201790.P12901566717431956489

/-! ## A201790.P8463277861846107412

`A014963(6*(n+1))*p?[A067724(n+1)-4]`
-/

namespace A201790.P8463277861846107412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201790.P8463277861846107412

/-! ## A201790.P14179353178607090257

`p?[A067724(n+1)-4]/A008683(C(n, n²)!)`
-/

namespace A201790.P14179353178607090257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (n + 1) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A008683 (Nat.factorial (Nat.choose n (n ^ 2))) : ℚ)

end

end A201790.P14179353178607090257

/-!
# A201791: Primes of the form 6*k^2 - 5.

The programs for A201791, there is no canonical definition to state claims against.
-/

/-! ## A201791.P17636337153330212851

`p?[6*n²-5]`
-/

namespace A201791.P17636337153330212851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201791.P17636337153330212851

/-! ## A201791.P8756683660505919830

`or(1, p?[(n-2)*6*n+1])`
-/

namespace A201791.P8756683660505919830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (6 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201791.P8756683660505919830

/-! ## A201791.P11270187900562851797

`∏{d}[p?[2*n*3*n-5], #]`
-/

namespace A201791.P11270187900562851797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * (3 * n) : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201791.P11270187900562851797

/-! ## A201791.P4961614914036156665

`∏{p}[p?[2*n*3*n-5], #]`
-/

namespace A201791.P4961614914036156665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * (3 * n) : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201791.P4961614914036156665

/-! ## A201791.P14291633878072198948

`lcm(2, p?[(n+2)*6*n+1])/2`
-/

namespace A201791.P14291633878072198948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (6 * n) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A201791.P14291633878072198948

/-! ## A201791.P12504259916382574162

`xor(1, p?[2*n*3*n-5]-1)`
-/

namespace A201791.P12504259916382574162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * (3 * n) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A201791.P12504259916382574162

/-! ## A201791.P672565709340244212

`A007318(C(2, n))*p?[A140811(n)-4]`
-/

namespace A201791.P672565709340244212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201791.P672565709340244212

/-! ## A201791.P2451721665841376219

`p?[A005897(n)-7]+A008683(4*(n+1))`
-/

namespace A201791.P2451721665841376219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201791.P2451721665841376219

/-!
# A201792: Primes of the form 6n^2 - 7.

The programs for A201792, the canonical program `A201792.P10767721486925243781` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201792 has offset 1).

The definition of A201792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201792.P10767721486925243781

`p?[6*n²-7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201792

/-- `p?[6*n²-7]` -/
def P10767721486925243781.Spec : Prop :=
  ∀ n, P10767721486925243781.a n = A201792 (n + 1)

theorem P10767721486925243781.correct : P10767721486925243781.Spec := by
  intro n
  simp only [A201792, Nat.add_sub_cancel]

end A201792

/-! ## A201792.P2052840867799078285

`∏{p}[p?[(n+2)*6*n-1], #]`
-/

namespace A201792.P2052840867799078285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (6 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201792.P2052840867799078285

namespace A201792

/-- `∏{p}[p?[(n+2)*6*n-1], #]` -/
def P2052840867799078285.Spec : Prop :=
  ∀ n, (P2052840867799078285.a n : ℤ) = A201792 (n + 1)

end A201792

/-! ## A201792.P6868733788488436670

`abs(p?[n*6*n-7]-1)+1`
-/

namespace A201792.P6868733788488436670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (6 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A201792.P6868733788488436670

namespace A201792

/-- `abs(p?[n*6*n-7]-1)+1` -/
def P6868733788488436670.Spec : Prop :=
  ∀ n, P6868733788488436670.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P332723148926660581

`xor(1, p?[floor(3*n*n/2)-7]-1)`
-/

namespace A201792.P332723148926660581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n : ℚ) * ((n : ℚ) / 2)⌋ - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A201792.P332723148926660581

namespace A201792

/-- `xor(1, p?[floor(3*n*n/2)-7]-1)` -/
def P332723148926660581.Spec : Prop :=
  ∀ n, P332723148926660581.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P11937435929619521568

`or(1, p?[A032528(n)-7])`
-/

namespace A201792.P11937435929619521568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201792.P11937435929619521568

namespace A201792

/-- `or(1, p?[A032528(n)-7])` -/
def P11937435929619521568.Spec : Prop :=
  ∀ n, P11937435929619521568.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P9188189671194642947

`or(1, p?[A033581(n)-7])`
-/

namespace A201792.P9188189671194642947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201792.P9188189671194642947

namespace A201792

/-- `or(1, p?[A033581(n)-7])` -/
def P9188189671194642947.Spec : Prop :=
  ∀ n, P9188189671194642947.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P17482901272391039678

`or(1, p?[A097803(n)-10])`
-/

namespace A201792.P17482901272391039678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201792.P17482901272391039678

namespace A201792

/-- `or(1, p?[A097803(n)-10])` -/
def P17482901272391039678.Spec : Prop :=
  ∀ n, P17482901272391039678.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P1179351985590082577

`or(1, p?[A067726(n+1)-1])`
-/

namespace A201792.P1179351985590082577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067726 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201792.P1179351985590082577

namespace A201792

/-- `or(1, p?[A067726(n+1)-1])` -/
def P1179351985590082577.Spec : Prop :=
  ∀ n, P1179351985590082577.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P13309110325255672900

`p?[A033581(n)-7]*char[A004472(n)]`
-/

namespace A201792.P13309110325255672900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004472 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A201792.P13309110325255672900

namespace A201792

/-- `p?[A033581(n)-7]*char[A004472(n)]` -/
def P13309110325255672900.Spec : Prop :=
  ∀ n, P13309110325255672900.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P822897469831962770

`p?[A033581(n)-7]*char[A008612(n)]`
-/

namespace A201792.P822897469831962770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A201792.P822897469831962770

namespace A201792

/-- `p?[A033581(n)-7]*char[A008612(n)]` -/
def P822897469831962770.Spec : Prop :=
  ∀ n, P822897469831962770.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P15550560258121660687

`A000007(n+1)+p?[A033581(n)-7]`
-/

namespace A201792.P15550560258121660687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201792.P15550560258121660687

namespace A201792

/-- `A000007(n+1)+p?[A033581(n)-7]` -/
def P15550560258121660687.Spec : Prop :=
  ∀ n, P15550560258121660687.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P3959678384014841052

`p?[A033581(n)-7]%A007488(n+1)`
-/

namespace A201792.P3959678384014841052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A007488 (n + 1))

end

end A201792.P3959678384014841052

namespace A201792

/-- `p?[A033581(n)-7]%A007488(n+1)` -/
def P3959678384014841052.Spec : Prop :=
  ∀ n, P3959678384014841052.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P15647983729727873502

`p?[A097803(n)-10]%A016792(n+1)`
-/

namespace A201792.P15647983729727873502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016792 (n + 1))

end

end A201792.P15647983729727873502

namespace A201792

/-- `p?[A097803(n)-10]%A016792(n+1)` -/
def P15647983729727873502.Spec : Prop :=
  ∀ n, P15647983729727873502.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P14148372146416875121

`A007318(C(2, n))*p?[A033581(n)-7]`
-/

namespace A201792.P14148372146416875121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201792.P14148372146416875121

namespace A201792

/-- `A007318(C(2, n))*p?[A033581(n)-7]` -/
def P14148372146416875121.Spec : Prop :=
  ∀ n, P14148372146416875121.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P7169363685983272409

`p?[A067726(n+1)-1]%A167736(n+1)`
-/

namespace A201792.P7169363685983272409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067726 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A167736 (n + 1))

end

end A201792.P7169363685983272409

namespace A201792

/-- `p?[A067726(n+1)-1]%A167736(n+1)` -/
def P7169363685983272409.Spec : Prop :=
  ∀ n, P7169363685983272409.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P3109284530597522990

`A014963(4*n+6)*p?[A033581(n)-7]`
-/

namespace A201792.P3109284530597522990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201792.P3109284530597522990

namespace A201792

/-- `A014963(4*n+6)*p?[A033581(n)-7]` -/
def P3109284530597522990.Spec : Prop :=
  ∀ n, P3109284530597522990.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P2574835726013668749

`A002262(C(n+1, 2))+p?[A033581(n)-7]`
-/

namespace A201792.P2574835726013668749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.choose (n + 1) 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201792.P2574835726013668749

namespace A201792

/-- `A002262(C(n+1, 2))+p?[A033581(n)-7]` -/
def P2574835726013668749.Spec : Prop :=
  ∀ n, P2574835726013668749.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P2524622323340622889

`p?[A033581(n)-7]+C(2, A000203(n+2))`
-/

namespace A201792.P2524622323340622889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A201792.P2524622323340622889

namespace A201792

/-- `p?[A033581(n)-7]+C(2, A000203(n+2))` -/
def P2524622323340622889.Spec : Prop :=
  ∀ n, P2524622323340622889.a n = A201792 (n + 1)

end A201792

/-! ## A201792.P18389716347792879357

`A001222(A151800(n))*p?[A033581(n)-7]`
-/

namespace A201792.P18389716347792879357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A151800 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201792.P18389716347792879357

namespace A201792

/-- `A001222(A151800(n))*p?[A033581(n)-7]` -/
def P18389716347792879357.Spec : Prop :=
  ∀ n, P18389716347792879357.a n = A201792 (n + 1)

end A201792

/-!
# A201793: Primes of the form 7n^2 - 1.

The programs for A201793, there is no canonical definition to state claims against.
-/

/-! ## A201793.P1074990121142462844

`∩[A142924(n+1), A158554(n+1)]`
-/

namespace A201793.P1074990121142462844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201793.P1074990121142462844

/-! ## A201793.P12750516035457037564

`∩[A141898(n+1), A158554(n+1)]`
-/

namespace A201793.P12750516035457037564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201793.P12750516035457037564

/-! ## A201793.P5401488624866038934

`p?[7*n²-1]`
-/

namespace A201793.P5401488624866038934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201793.P5401488624866038934

/-! ## A201793.P2028952752871320431

`or(1, p?[n*7*n-1])`
-/

namespace A201793.P2028952752871320431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (7 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201793.P2028952752871320431

/-! ## A201793.P2846244101041335024

`∏{p}[p?[63*n^2-1], #]`
-/

namespace A201793.P2846244101041335024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201793.P2846244101041335024

/-!
# A201794: E.g.f. satisfies: A(x+1/2*x^2)=x*exp(A(x)).

The programs for A201794, there is no canonical definition to state claims against.
-/

/-! ## A201794.P2816901572771044712

`A306242(∑[A192964(n)²])`
-/

namespace A201794.P2816901572771044712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201794.P2816901572771044712

/-! ## A201794.P6020708327141067613

`A328280(n)+A286470(A321798(n))`
-/

namespace A201794.P6020708327141067613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328280 n + A286470 (A321798 n).toNat

end

end A201794.P6020708327141067613

/-! ## A201794.P17623222742433425740

`A334454(A066178(n))+A145324(n+1)`
-/

namespace A201794.P17623222742433425740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334454 (A066178 n).toNat + A145324 (n + 1)

end

end A201794.P17623222742433425740

/-!
# A201795: E.g.f. satisfies: A(x)+1/2*A(x)^2 = x*exp(A(x)).

The programs for A201795, there is no canonical definition to state claims against.
-/

/-! ## A201795.P14603341056975360455

`A130091(A256126(n)+A034852(n))`
-/

namespace A201795.P14603341056975360455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A256126 n + A034852 n).toNat

end

end A201795.P14603341056975360455

/-! ## A201795.P16449044222298053806

`A130091(or(A034852(n), A256126(n)))`
-/

namespace A201795.P16449044222298053806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (Int.lor (A034852 n) (A256126 n)).toNat

end

end A201795.P16449044222298053806

/-! ## A201795.P155938495052690607

`A130091(xor(A034852(n), A256126(n)))`
-/

namespace A201795.P155938495052690607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (Int.xor (A034852 n) (A256126 n)).toNat

end

end A201795.P155938495052690607

/-!
# A201796: Number of zero-sum n X n -2..2 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201796, there is no canonical definition to state claims against.
-/

/-! ## A201796.P12024473050935383625

`A201803(∑[4*n]+1)`
-/

namespace A201796.P12024473050935383625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201803 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201796.P12024473050935383625

/-!
# A201797: Number of zero-sum nX2 -2..2 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201797, there is no canonical definition to state claims against.
-/

/-! ## A201797.P16269898873407369345

`A201803(∑[n+1]+2)`
-/

namespace A201797.P16269898873407369345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201803 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201797.P16269898873407369345

/-! ## A201797.P16080327084684226058

`or(1, A201803(A133263(n+1)))`
-/

namespace A201797.P16080327084684226058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201803 (A133263 (n + 1)).toNat)

end

end A201797.P16080327084684226058

/-! ## A201797.P14873238525918039872

`or(1, A201803(A238531(n+2)))`
-/

namespace A201797.P14873238525918039872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201803 (A238531 (n + 2)).toNat)

end

end A201797.P14873238525918039872

/-! ## A201797.P9257789521923299086

`record[A010054(n)*A201803(n+2)]`
-/

namespace A201797.P9257789521923299086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201803 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201797.P9257789521923299086

/-! ## A201797.P7199208849456989249

`record[gcd(A002262(n), A201803(n+2))]`
-/

namespace A201797.P7199208849456989249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A201803 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201797.P7199208849456989249

/-!
# A201798: Number of zero-sum nX3 -2..2 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201798, there is no canonical definition to state claims against.
-/

/-! ## A201798.P14707572401922701770

`A201803(∑[n+2]+4)`
-/

namespace A201798.P14707572401922701770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201803 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201798.P14707572401922701770

/-! ## A201798.P12131927738683880552

`or(1, A201803(A167614(n+1)))`
-/

namespace A201798.P12131927738683880552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201803 (A167614 (n + 1)).toNat)

end

end A201798.P12131927738683880552

/-! ## A201798.P7868288959836801176

`A201803(A167614(n+1))+A011740(n)`
-/

namespace A201798.P7868288959836801176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201803 (A167614 (n + 1)).toNat + A011740 n

end

end A201798.P7868288959836801176

/-! ## A201798.P1276726273146799072

`A201803(A167614(n+1))+A056965(n)`
-/

namespace A201798.P1276726273146799072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201803 (A167614 (n + 1)).toNat + A056965 n

end

end A201798.P1276726273146799072

/-! ## A201798.P8143722254578591580

`A201803(A167614(n+1))+A084904(n)`
-/

namespace A201798.P8143722254578591580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201803 (A167614 (n + 1)).toNat + A084904 n

end

end A201798.P8143722254578591580

/-!
# A201799: Number of zero-sum nX4 -2..2 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201799, there is no canonical definition to state claims against.
-/

/-! ## A201799.P4541663574869506920

`A201803(∑[n+3]+7)`
-/

namespace A201799.P4541663574869506920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201803 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201799.P4541663574869506920

