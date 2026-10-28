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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
# A071302: a(n) = (1/2) * (number of n X n 0..2 matrices M with MM' mod 3 = I, where M' is the transpose of M and I is the n X n identity matrix).

The programs for A071302, there is no canonical definition to state claims against.
-/

/-! ## A071302.P14831176575343162277

`∏[A318609(n+1)]/2`
-/

namespace A071302.P14831176575343162277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318609 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A071302.P14831176575343162277

/-! ## A071302.P7528424309799682618

`∏[A292491(n+2)/4]/2`
-/

namespace A071302.P7528424309799682618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292491 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A071302.P7528424309799682618

/-! ## A071302.P11459099120015633431

`(3^n+(-3)^A004526(n))*a(n-1)` with `a(0)=1`
-/

namespace A071302.P11459099120015633431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((3 ^ n : ℚ) + (-3 : ℚ) ^ (A004526 n : ℤ)) * a (n - 1)

end

end A071302.P11459099120015633431

/-! ## A071302.P12808485655832566114

`A071305(n+1)/A003053(n+1)`
-/

namespace A071302.P12808485655832566114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071305 (n + 1) : ℚ) / (A003053 (n + 1) : ℚ)

end

end A071302.P12808485655832566114

/-! ## A071302.P15264441900225472850

`∏[gcd(A071305(n+1), A318609(n+1))]`
-/

namespace A071302.P15264441900225472850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071305 (n + 1)) (A318609 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071302.P15264441900225472850

/-!
# A071303: 1/2 times the number of n X n 0..3 matrices M with MM' mod 4 = I, where M' is the transpose of M and I is the n X n identity matrix.

The programs for A071303, there is no canonical definition to state claims against.
-/

/-! ## A071303.P16441717157001647666

`4^n*∏[A068786(n+1)]`
-/

namespace A071303.P16441717157001647666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A071303.P16441717157001647666

/-! ## A071303.P12356005227780677376

`A071310(n+1)/A071302(n+1)`
-/

namespace A071303.P12356005227780677376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071310 (n + 1) : ℚ) / (A071302 (n + 1) : ℚ)

end

end A071303.P12356005227780677376

/-!
# A071304: a(n) = (1/2) * (number of n X n 0..4 matrices M with MM' mod 5 = I, where M' is the transpose of M and I is the n X n identity matrix).

The programs for A071304, there is no canonical definition to state claims against.
-/

/-! ## A071304.P6317746710496451305

`A071308(n+1)/A003053(n+1)`
-/

namespace A071304.P6317746710496451305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071308 (n + 1) : ℚ) / (A003053 (n + 1) : ℚ)

end

end A071304.P6317746710496451305

/-! ## A071304.P12126418351849867529

`A071302(n+1)/A071305(n+1)*A071308(n+1)`
-/

namespace A071304.P12126418351849867529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071302 (n + 1) : ℚ) / (A071305 (n + 1) : ℚ) * (A071308 (n + 1) : ℚ)

end

end A071304.P12126418351849867529

/-!
# A071305: a(n) = (1/2) * (number of n X n 0..5 matrices M with MM' mod 6 = I, where M' is the transpose of M and I is the n X n identity matrix).

The programs for A071305, there is no canonical definition to state claims against.
-/

/-! ## A071305.P5053070352933136609

`A003053(n+1)*A071302(n+1)`
-/

namespace A071305.P5053070352933136609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003053 (n + 1) * A071302 (n + 1)

end

end A071305.P5053070352933136609

/-! ## A071305.P18205169682761229906

`∏[A141729(2^n)]*A071302(n+1)`
-/

namespace A071305.P18205169682761229906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141729 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A071302 (n + 1)

end

end A071305.P18205169682761229906

/-!
# A071307: 1/2 number of n X n 0..8 matrices with MM' mod 9 = I.

The programs for A071307, there is no canonical definition to state claims against.
-/

/-! ## A071307.P13790864540472829161

`∏[3^n]*A071302(n+1)`
-/

namespace A071307.P13790864540472829161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A071302 (n + 1)

end

end A071307.P13790864540472829161

/-!
# A071308: a(n) = (1/2) * (number of n X n 0..9 matrices with MM' mod 10 = I).

The programs for A071308, there is no canonical definition to state claims against.
-/

/-! ## A071308.P5105736293438364013

`A003053(n+1)*A071304(n+1)`
-/

namespace A071308.P5105736293438364013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003053 (n + 1) * A071304 (n + 1)

end

end A071308.P5105736293438364013

/-!
# A071310: a(n) = (1/4) * (number of n X n 0..11 matrices with MM' mod 12 = I).

The programs for A071310, there is no canonical definition to state claims against.
-/

/-! ## A071310.P2821936438832231293

`A071302(n+1)*A071303(n+1)`
-/

namespace A071310.P2821936438832231293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071302 (n + 1) * A071303 (n + 1)

end

end A071310.P2821936438832231293

/-!
# A071311: Squarefree numbers k with largest prime factor = floor(sqrt(k)).

The programs for A071311, there is no canonical definition to state claims against.
-/

/-! ## A071311.P10277585850428587577

`∩[A295102(n+1), A079142(n)]`
-/

namespace A071311.P10277585850428587577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071311.P10277585850428587577

/-! ## A071311.P6078284155550529781

`∩[A071835(n+1), A295102(n+1)]`
-/

namespace A071311.P6078284155550529781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071311.P6078284155550529781

/-! ## A071311.P5575026804385011324

`∩[A081807(n+1), A295102(n+1)]`
-/

namespace A071311.P5575026804385011324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071311.P5575026804385011324

/-! ## A071311.P12398037375931130243

`filter[A071835(n+1), A008966(#)]`
-/

namespace A071311.P12398037375931130243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A071311.P12398037375931130243

/-! ## A071311.P10265862184897522768

`filter[A081807(n+1), A008966(#)]`
-/

namespace A071311.P10265862184897522768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A071311.P10265862184897522768

/-!
# A071312: Squarefree numbers k such that the largest prime factor of k is equal to the sum of the other prime factors of k.

The programs for A071312, there is no canonical definition to state claims against.
-/

/-! ## A071312.P240966842521022802

`∩[A071141(n+1), A112343(n+1)]`
-/

namespace A071312.P240966842521022802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P240966842521022802

/-! ## A071312.P9889175267143937343

`∩[A071141(n+1), A232241(n+1)]`
-/

namespace A071312.P9889175267143937343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P9889175267143937343

/-! ## A071312.P2781353278187223941

`∩[A071141(n+1), A163836(n+1)]`
-/

namespace A071312.P2781353278187223941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P2781353278187223941

/-! ## A071312.P1290541999486061181

`∩[A071141(n+1), A384498(n+1)]`
-/

namespace A071312.P1290541999486061181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P1290541999486061181

/-! ## A071312.P1972198384897629007

`∩[A163836(n+1), A384498(n+1)]`
-/

namespace A071312.P1972198384897629007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P1972198384897629007

/-! ## A071312.P3021911348885563930

`∩[A232241(n+1), A384498(n+1)]`
-/

namespace A071312.P3021911348885563930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P3021911348885563930

/-! ## A071312.P3497559596813821843

`∩[A071140(n+1), A163836(n+1)]`
-/

namespace A071312.P3497559596813821843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P3497559596813821843

/-! ## A071312.P10970016590601307311

`∩[A071140(n+1), A232241(n+1)]`
-/

namespace A071312.P10970016590601307311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P10970016590601307311

/-! ## A071312.P4314423650775143634

`∩[A071140(n+1), A384498(n+1)]`
-/

namespace A071312.P4314423650775143634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P4314423650775143634

/-! ## A071312.P14955465893456836347

`∩[A071141(n+1), A392780(n+1)]`
-/

namespace A071312.P14955465893456836347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P14955465893456836347

/-! ## A071312.P15887606442291655558

`∩[A071141(n+1), A221054(n+1)]`
-/

namespace A071312.P15887606442291655558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P15887606442291655558

/-! ## A071312.P8373742253549832540

`∩[A163836(n+1), A221054(n+1)]`
-/

namespace A071312.P8373742253549832540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P8373742253549832540

/-! ## A071312.P14766304719658771829

`∩[A221054(n+1), A232241(n+1)]`
-/

namespace A071312.P14766304719658771829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071312.P14766304719658771829

/-!
# A071314: a(n) is the smallest number that cannot be obtained from the numbers {2^0,2^1,...,2^n} using each number at most once and the operators +, -, *, /. Parentheses are allowed, intermediate fractions are not allowed.

The programs for A071314, there is no canonical definition to state claims against.
-/

/-! ## A071314.P5394589199856019310

`A309886(n+1)-A275962(A000217(n))`
-/

namespace A071314.P5394589199856019310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309886 (n + 1) - A275962 (A000217 n).toNat

end

end A071314.P5394589199856019310

/-! ## A071314.P11286260274926740366

`A309886(n+1)-A036239(A274888(n))`
-/

namespace A071314.P11286260274926740366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309886 (n + 1) - A036239 (A274888 n).toNat

end

end A071314.P11286260274926740366

/-! ## A071314.P1655135169015979235

`A309886(n+1)-A275962(A211024(n))`
-/

namespace A071314.P1655135169015979235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309886 (n + 1) - A275962 (A211024 n).toNat

end

end A071314.P1655135169015979235

/-! ## A071314.P9292569982535115327

`A309886(n+1)-A309953(A309800(n))`
-/

namespace A071314.P9292569982535115327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309886 (n + 1) - A309953 (A309800 n).toNat

end

end A071314.P9292569982535115327

/-!
# A071315: Number of terms in the continued fraction of frac((3/2)^n).

The programs for A071315, there is no canonical definition to state claims against.
-/

/-! ## A071315.P14454721681150697395

`A090397(n+1)-1`
-/

namespace A071315.P14454721681150697395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090397 (n + 1) - 1

end

end A071315.P14454721681150697395

/-! ## A071315.P17910001407402575589

`A023443(A090397(n+1))`
-/

namespace A071315.P17910001407402575589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A090397 (n + 1)).toNat

end

end A071315.P17910001407402575589

/-! ## A071315.P16487404168090915933

`∑[A090397(-xor(n, -1))-A090397(n)]`
-/

namespace A071315.P16487404168090915933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090397 (-Int.xor (n : ℤ) (-1)).toNat - A090397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071315.P16487404168090915933

/-! ## A071315.P7201915535032608448

`A189675(A007491(gcd(n, n+1)))+A090397(n+1)`
-/

namespace A071315.P7201915535032608448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189675 (A007491 (Nat.gcd n (n + 1))).toNat + A090397 (n + 1)

end

end A071315.P7201915535032608448

/-! ## A071315.P8891681274404270703

`A112207(val(A117863(n+2), 2))+A090397(n+1)`
-/

namespace A071315.P8891681274404270703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 (SequenceMachineLib.valuation (A117863 (n + 2)).toNat 2) + A090397 (n + 1)

end

end A071315.P8891681274404270703

/-! ## A071315.P6411126200234042272

`A025581(2*A090397(n+1)²)`
-/

namespace A071315.P6411126200234042272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A090397 (n + 1) ^ 2).toNat

end

end A071315.P6411126200234042272

/-! ## A071315.P15996176746667674792

`A309873(A335273(n+1))+A090397(n+1)`
-/

namespace A071315.P15996176746667674792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A335273 (n + 1)).toNat + A090397 (n + 1)

end

end A071315.P15996176746667674792

/-!
# A071317: a(n) = a(n-1) + sum of digits of n^2.

The programs for A071317, the canonical program `A071317.P5540191964969439295` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071317 has offset 0).

The definition of A071317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071317.P5540191964969439295

`∑[∑{digits}[n², #]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071317

/-- `∑[∑{digits}[n², #]]` -/
def P5540191964969439295.Spec : Prop :=
  ∀ n, (P5540191964969439295.a n : ℤ) = A071317 n

theorem P5540191964969439295.correct : P5540191964969439295.Spec := by
  intro n
  simp only [A071317]

end A071317

/-! ## A071317.P8137164474430479770

`∑[log2(∏{digits}[n², 2^#])]`
-/

namespace A071317.P8137164474430479770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071317.P8137164474430479770

namespace A071317

/-- `∑[log2(∏{digits}[n², 2^#])]` -/
def P8137164474430479770.Spec : Prop :=
  ∀ n, P8137164474430479770.a n = (A071317 n : ℝ)

end A071317

/-! ## A071317.P17310493882591258498

`∑{digits}[n², #]+a(n-1)` with `a(0)=0`
-/

namespace A071317.P17310493882591258498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A071317.P17310493882591258498

namespace A071317

/-- `∑{digits}[n², #]+a(n-1)` -/
def P17310493882591258498.Spec : Prop :=
  ∀ n, (P17310493882591258498.a n : ℤ) = A071317 n

end A071317

/-! ## A071317.P6832282911022309564

`∑[A004159(n)]`
-/

namespace A071317.P6832282911022309564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071317.P6832282911022309564

namespace A071317

/-- `∑[A004159(n)]` -/
def P6832282911022309564.Spec : Prop :=
  ∀ n, P6832282911022309564.a n = A071317 n

end A071317

/-! ## A071317.P10968921648377715445

`∑[A171613(n)-n²]`
-/

namespace A071317.P10968921648377715445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171613 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071317.P10968921648377715445

namespace A071317

/-- `∑[A171613(n)-n²]` -/
def P10968921648377715445.Spec : Prop :=
  ∀ n, P10968921648377715445.a n = A071317 n

theorem P10968921648377715445.correct : P10968921648377715445.Spec := by
  intro n
  simp only [A071317, Nat.add_sub_cancel, A071317.P10968921648377715445.f1, A071317.P10968921648377715445.a, A071317.P5540191964969439295.f2, A071317.P5540191964969439295.f1, A071317.P5540191964969439295.a, A171613, A171613.P13040255884319598005.f1, A171613.P13040255884319598005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071317

/-! ## A071317.P4547012694557683896

`∑[n²-A224977(n)]`
-/

namespace A071317.P4547012694557683896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A224977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071317.P4547012694557683896

namespace A071317

/-- `∑[n²-A224977(n)]` -/
def P4547012694557683896.Spec : Prop :=
  ∀ n, P4547012694557683896.a n = A071317 n

end A071317

/-! ## A071317.P5750736521743382493

`∑[∑[A240752(n+1)]-A240752(n+1)]`
-/

namespace A071317.P5750736521743382493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A240752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071317.P5750736521743382493

namespace A071317

/-- `∑[∑[A240752(n+1)]-A240752(n+1)]` -/
def P5750736521743382493.Spec : Prop :=
  ∀ n, P5750736521743382493.a n = A071317 n

end A071317

/-! ## A071317.P11949383827876327366

`∑[A268227(5*n)]`
-/

namespace A071317.P11949383827876327366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268227 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071317.P11949383827876327366

namespace A071317

/-- `∑[A268227(5*n)]` -/
def P11949383827876327366.Spec : Prop :=
  ∀ n, P11949383827876327366.a n = A071317 n

end A071317

/-! ## A071317.P9791493960276731619

`∑[A007953(n²)]`
-/

namespace A071317.P9791493960276731619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071317.P9791493960276731619

namespace A071317

/-- `∑[A007953(n²)]` -/
def P9791493960276731619.Spec : Prop :=
  ∀ n, P9791493960276731619.a n = A071317 n

end A071317

/-! ## A071317.P9043460593046872844

`∑[sqrt(A118881(n²))]`
-/

namespace A071317.P9043460593046872844
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (n ^ 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071317.P9043460593046872844

namespace A071317

/-- `∑[sqrt(A118881(n²))]` -/
def P9043460593046872844.Spec : Prop :=
  ∀ n, P9043460593046872844.a n = (A071317 n : ℝ)

end A071317

/-! ## A071317.P10048936685499987483

`∑[log2(A329562(n²))]`
-/

namespace A071317.P10048936685499987483
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (n ^ 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071317.P10048936685499987483

namespace A071317

/-- `∑[log2(A329562(n²))]` -/
def P10048936685499987483.Spec : Prop :=
  ∀ n, P10048936685499987483.a n = (A071317 n : ℝ)

end A071317

/-! ## A071317.P1597173344207859748

`A007953(n*n)+a(n-1)` with `a(0)=0`
-/

namespace A071317.P1597173344207859748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007953 (n * n) + a (n - 1)

end

end A071317.P1597173344207859748

namespace A071317

/-- `A007953(n*n)+a(n-1)` -/
def P1597173344207859748.Spec : Prop :=
  ∀ n, P1597173344207859748.a n = A071317 n

end A071317

/-! ## A071317.P1066348193714688160

`∑[A169805(n²)/2]`
-/

namespace A071317.P1066348193714688160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (n ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071317.P1066348193714688160

namespace A071317

/-- `∑[A169805(n²)/2]` -/
def P1066348193714688160.Spec : Prop :=
  ∀ n, P1066348193714688160.a n = (A071317 n : ℚ)

end A071317

/-! ## A071317.P9290228694420284807

`A006370(∑[A169805(n²)])`
-/

namespace A071317.P9290228694420284807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071317.P9290228694420284807

namespace A071317

/-- `A006370(∑[A169805(n²)])` -/
def P9290228694420284807.Spec : Prop :=
  ∀ n, P9290228694420284807.a n = A071317 n

end A071317

/-!
# A071318: Lesser of 2 consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that both k and k+1 are in A067259.

The programs for A071318, the canonical program `A071318.P4179928839339890454` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071318 has offset 1).

The definition of A071318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071318.P9888744874692084723

`∩[A067259(n+1)-1, A067259(n+1)]`
-/

namespace A071318.P9888744874692084723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071318.P9888744874692084723

namespace A071318

/-- `∩[A067259(n+1)-1, A067259(n+1)]` -/
def P9888744874692084723.Spec : Prop :=
  ∀ n, (P9888744874692084723.a n : ℤ) = A071318 (n + 1)

end A071318

/-! ## A071318.P4179928839339890454

`A067259(eq[1, A067259(n+2)-A067259(n+1)]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071318

/-- `A067259(eq[1, A067259(n+2)-A067259(n+1)]+1)` -/
def P4179928839339890454.Spec : Prop :=
  ∀ n, P4179928839339890454.a n = A071318 (n + 1)

theorem P4179928839339890454.correct : P4179928839339890454.Spec := by
  intro n
  simp only [A071318, Nat.add_sub_cancel]

end A071318

/-! ## A071318.P6085696360584773383

`filter[A369020(n+1), A359429(#)]`
-/

namespace A071318.P6085696360584773383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A071318.P6085696360584773383

namespace A071318

/-- `filter[A369020(n+1), A359429(#)]` -/
def P6085696360584773383.Spec : Prop :=
  ∀ n, P6085696360584773383.a n = A071318 (n + 1)

end A071318

/-! ## A071318.P1646052520868850979

`∩[A067259(n+1), A369020(n+1)]`
-/

namespace A071318.P1646052520868850979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071318.P1646052520868850979

namespace A071318

/-- `∩[A067259(n+1), A369020(n+1)]` -/
def P1646052520868850979.Spec : Prop :=
  ∀ n, (P1646052520868850979.a n : ℤ) = A071318 (n + 1)

end A071318

/-! ## A071318.P14296243102468468126

`∩[A336594(n+1), A369020(n+1)]`
-/

namespace A071318.P14296243102468468126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071318.P14296243102468468126

namespace A071318

/-- `∩[A336594(n+1), A369020(n+1)]` -/
def P14296243102468468126.Spec : Prop :=
  ∀ n, (P14296243102468468126.a n : ℤ) = A071318 (n + 1)

end A071318

/-! ## A071318.P10190564425793959557

`∩[A068781(n+1), A340152(n+1)]`
-/

namespace A071318.P10190564425793959557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071318.P10190564425793959557

namespace A071318

/-- `∩[A068781(n+1), A340152(n+1)]` -/
def P10190564425793959557.Spec : Prop :=
  ∀ n, (P10190564425793959557.a n : ℤ) = A071318 (n + 1)

end A071318

/-! ## A071318.P947972993581390112

`∩[A340152(n+1), A342187(n+1)]`
-/

namespace A071318.P947972993581390112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071318.P947972993581390112

namespace A071318

/-- `∩[A340152(n+1), A342187(n+1)]` -/
def P947972993581390112.Spec : Prop :=
  ∀ n, (P947972993581390112.a n : ℤ) = A071318 (n + 1)

end A071318

/-! ## A071318.P15214045497852453927

`∩[A340152(n+1), A398821(n+1)]`
-/

namespace A071318.P15214045497852453927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071318.P15214045497852453927

namespace A071318

/-- `∩[A340152(n+1), A398821(n+1)]` -/
def P15214045497852453927.Spec : Prop :=
  ∀ n, (P15214045497852453927.a n : ℤ) = A071318 (n + 1)

end A071318

/-!
# A071319: First of 3 consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that {k, k+1, k+2} are in A067259.

The programs for A071319, the canonical program `A071319.P13411586007084234983` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071319 has offset 1).

The definition of A071319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071319.P10259525573301235671

`∩[A071318(n+1)-1, A071318(n+1)]`
-/

namespace A071319.P10259525573301235671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P10259525573301235671

namespace A071319

/-- `∩[A071318(n+1)-1, A071318(n+1)]` -/
def P10259525573301235671.Spec : Prop :=
  ∀ n, (P10259525573301235671.a n : ℤ) = A071319 (n + 1)

end A071319

/-! ## A071319.P13411586007084234983

`A071318(eq[1, A071318(n+2)-A071318(n+1)]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071319

/-- `A071318(eq[1, A071318(n+2)-A071318(n+1)]+1)` -/
def P13411586007084234983.Spec : Prop :=
  ∀ n, P13411586007084234983.a n = A071319 (n + 1)

theorem P13411586007084234983.correct : P13411586007084234983.Spec := by
  intro n
  simp only [A071319, Nat.add_sub_cancel]

end A071319

/-! ## A071319.P679118256353980097

`A071318(eq[1, A071318(n+2)%A071318(n+1)]+1)`
-/

namespace A071319.P679118256353980097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071318 (n + 2)) (A071318 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071319.P679118256353980097

namespace A071319

/-- `A071318(eq[1, A071318(n+2)%A071318(n+1)]+1)` -/
def P679118256353980097.Spec : Prop :=
  ∀ n, P679118256353980097.a n = A071319 (n + 1)

end A071319

/-! ## A071319.P12223879452959322442

`filter[A369021(n+1), A359429(#)]`
-/

namespace A071319.P12223879452959322442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A071319.P12223879452959322442

namespace A071319

/-- `filter[A369021(n+1), A359429(#)]` -/
def P12223879452959322442.Spec : Prop :=
  ∀ n, P12223879452959322442.a n = A071319 (n + 1)

end A071319

/-! ## A071319.P11583678818244332643

`∩[A071318(n+1), A369021(n+1)]`
-/

namespace A071319.P11583678818244332643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P11583678818244332643

namespace A071319

/-- `∩[A071318(n+1), A369021(n+1)]` -/
def P11583678818244332643.Spec : Prop :=
  ∀ n, (P11583678818244332643.a n : ℤ) = A071319 (n + 1)

end A071319

/-! ## A071319.P10849521549308962279

`∩[A342187(n+1), A369021(n+1)]`
-/

namespace A071319.P10849521549308962279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P10849521549308962279

namespace A071319

/-- `∩[A342187(n+1), A369021(n+1)]` -/
def P10849521549308962279.Spec : Prop :=
  ∀ n, (P10849521549308962279.a n : ℤ) = A071319 (n + 1)

end A071319

/-! ## A071319.P7329633434499180431

`∩[A369021(n+1), A398821(n+1)]`
-/

namespace A071319.P7329633434499180431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P7329633434499180431

namespace A071319

/-- `∩[A369021(n+1), A398821(n+1)]` -/
def P7329633434499180431.Spec : Prop :=
  ∀ n, (P7329633434499180431.a n : ℤ) = A071319 (n + 1)

end A071319

/-! ## A071319.P8899541623343911902

`filter[A369021(n+1), A353470(#)]`
-/

namespace A071319.P8899541623343911902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A071319.P8899541623343911902

namespace A071319

/-- `filter[A369021(n+1), A353470(#)]` -/
def P8899541623343911902.Spec : Prop :=
  ∀ n, P8899541623343911902.a n = A071319 (n + 1)

end A071319

/-! ## A071319.P8182698570058360283

`∩[A067259(n+1), A369021(n+1)]`
-/

namespace A071319.P8182698570058360283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P8182698570058360283

namespace A071319

/-- `∩[A067259(n+1), A369021(n+1)]` -/
def P8182698570058360283.Spec : Prop :=
  ∀ n, (P8182698570058360283.a n : ℤ) = A071319 (n + 1)

end A071319

/-! ## A071319.P13466825855494917900

`∩[A038109(n+1), A369021(n+1)]`
-/

namespace A071319.P13466825855494917900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P13466825855494917900

namespace A071319

/-- `∩[A038109(n+1), A369021(n+1)]` -/
def P13466825855494917900.Spec : Prop :=
  ∀ n, (P13466825855494917900.a n : ℤ) = A071319 (n + 1)

end A071319

/-! ## A071319.P4836446445613327881

`∩[A048944(n+1), A369021(n+1)]`
-/

namespace A071319.P4836446445613327881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P4836446445613327881

namespace A071319

/-- `∩[A048944(n+1), A369021(n+1)]` -/
def P4836446445613327881.Spec : Prop :=
  ∀ n, (P4836446445613327881.a n : ℤ) = A071319 (n + 1)

end A071319

/-! ## A071319.P6666286102509969642

`∩[A059269(n+1), A369021(n+1)]`
-/

namespace A071319.P6666286102509969642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P6666286102509969642

namespace A071319

/-- `∩[A059269(n+1), A369021(n+1)]` -/
def P6666286102509969642.Spec : Prop :=
  ∀ n, (P6666286102509969642.a n : ℤ) = A071319 (n + 1)

end A071319

/-! ## A071319.P12505505016528614801

`∩[A177880(n+1), A369021(n+1)]`
-/

namespace A071319.P12505505016528614801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P12505505016528614801

namespace A071319

/-- `∩[A177880(n+1), A369021(n+1)]` -/
def P12505505016528614801.Spec : Prop :=
  ∀ n, (P12505505016528614801.a n : ℤ) = A071319 (n + 1)

end A071319

/-! ## A071319.P2085656890814775897

`∩[A240112(n+1), A369021(n+1)]`
-/

namespace A071319.P2085656890814775897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P2085656890814775897

namespace A071319

/-- `∩[A240112(n+1), A369021(n+1)]` -/
def P2085656890814775897.Spec : Prop :=
  ∀ n, (P2085656890814775897.a n : ℤ) = A071319 (n + 1)

end A071319

/-! ## A071319.P3330356583722284833

`∩[A072587(n+1), A369021(n+1)]`
-/

namespace A071319.P3330356583722284833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071319.P3330356583722284833

namespace A071319

/-- `∩[A072587(n+1), A369021(n+1)]` -/
def P3330356583722284833.Spec : Prop :=
  ∀ n, (P3330356583722284833.a n : ℤ) = A071319 (n + 1)

end A071319

/-!
# A071320: Least of four consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that {k, k+1, k+2, k+3} are in A067259.

The programs for A071320, the canonical program `A071320.P16588707936141343234` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071320 has offset 1).

The definition of A071320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071320.P16588707936141343234

`∩[A071319(n+1)-1, A071319(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071320

/-- `∩[A071319(n+1)-1, A071319(n+1)]` -/
def P16588707936141343234.Spec : Prop :=
  ∀ n, (P16588707936141343234.a n : ℤ) = A071320 (n + 1)

theorem P16588707936141343234.correct : P16588707936141343234.Spec := by
  intro n
  simp only [A071320, Nat.add_sub_cancel]

end A071320

/-! ## A071320.P10557307878219800008

`∩[A071318(n+2)-2, A071318(n+2)]`
-/

namespace A071320.P10557307878219800008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071320.P10557307878219800008

namespace A071320

/-- `∩[A071318(n+2)-2, A071318(n+2)]` -/
def P10557307878219800008.Spec : Prop :=
  ∀ n, (P10557307878219800008.a n : ℤ) = A071320 (n + 1)

end A071320

/-!
# A071321: Alternating sum of all prime factors of n; primes nondecreasing, starting with the least prime factor: A020639(n).

The programs for A071321, the canonical program `A071321.P4620044531280838043` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071321 has offset 1).

The definition of A071321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071321.P4620044531280838043

`A071322(n+1)*A344617(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A071321

/-- `A071322(n+1)*A344617(n+1)` -/
def P4620044531280838043.Spec : Prop :=
  ∀ n, P4620044531280838043.a n = A071321 (n + 1)

theorem P4620044531280838043.correct : P4620044531280838043.Spec := by
  intro n
  simp only [A071321, Nat.add_sub_cancel]

end A071321

/-! ## A071321.P5778790361412299505

`-(A008836(n+1)*A071322(n+1))`
-/

namespace A071321.P5778790361412299505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008836 (n + 1) * A071322 (n + 1))

end

end A071321.P5778790361412299505

namespace A071321

/-- `-(A008836(n+1)*A071322(n+1))` -/
def P5778790361412299505.Spec : Prop :=
  ∀ n, P5778790361412299505.a n = A071321 (n + 1)

end A071321

/-! ## A071321.P3769629014527685896

`A071322(n+1)*A113447(A055076(n+1))`
-/

namespace A071321.P3769629014527685896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071322 (n + 1) * A113447 (A055076 (n + 1)).toNat

end

end A071321.P3769629014527685896

namespace A071321

/-- `A071322(n+1)*A113447(A055076(n+1))` -/
def P3769629014527685896.Spec : Prop :=
  ∀ n, P3769629014527685896.a n = A071321 (n + 1)

end A071321

/-! ## A071321.P5818677967631871457

`-(A033999(A001222(n+1))*A071322(n+1))`
-/

namespace A071321.P5818677967631871457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (A001222 (n + 1)).toNat * A071322 (n + 1))

end

end A071321.P5818677967631871457

namespace A071321

/-- `-(A033999(A001222(n+1))*A071322(n+1))` -/
def P5818677967631871457.Spec : Prop :=
  ∀ n, P5818677967631871457.a n = A071321 (n + 1)

end A071321

/-! ## A071321.P8552049061625897386

`A033999(A001222(n+1)+1)*A071322(n+1)`
-/

namespace A071321.P8552049061625897386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001222 (n + 1) + 1).toNat * A071322 (n + 1)

end

end A071321.P8552049061625897386

namespace A071321

/-- `A033999(A001222(n+1)+1)*A071322(n+1)` -/
def P8552049061625897386.Spec : Prop :=
  ∀ n, P8552049061625897386.a n = A071321 (n + 1)

end A071321

/-! ## A071321.P1444695571123254433

`A008836(2*(n+1))*A071322(n+1)`
-/

namespace A071321.P1444695571123254433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1)) * A071322 (n + 1)

end

end A071321.P1444695571123254433

namespace A071321

/-- `A008836(2*(n+1))*A071322(n+1)` -/
def P1444695571123254433.Spec : Prop :=
  ∀ n, P1444695571123254433.a n = A071321 (n + 1)

end A071321

/-! ## A071321.P17691135887691106034

`A001414(n+1)-A001414(A346704(n+1)²)`
-/

namespace A071321.P17691135887691106034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001414 (A346704 (n + 1) ^ 2).toNat

end

end A071321.P17691135887691106034

namespace A071321

/-- `A001414(n+1)-A001414(A346704(n+1)²)` -/
def P17691135887691106034.Spec : Prop :=
  ∀ n, P17691135887691106034.a n = A071321 (n + 1)

end A071321

/-! ## A071321.P12749174151720922339

`A316524(A064988(n+1))`
-/

namespace A071321.P12749174151720922339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A064988 (n + 1)).toNat

end

end A071321.P12749174151720922339

namespace A071321

/-- `A316524(A064988(n+1))` -/
def P12749174151720922339.Spec : Prop :=
  ∀ n, P12749174151720922339.a n = A071321 (n + 1)

end A071321

/-! ## A071321.P2214417005506045617

`A001414(A346703(n+1)²)-A001414(n+1)`
-/

namespace A071321.P2214417005506045617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A346703 (n + 1) ^ 2).toNat - A001414 (n + 1)

end

end A071321.P2214417005506045617

namespace A071321

/-- `A001414(A346703(n+1)²)-A001414(n+1)` -/
def P2214417005506045617.Spec : Prop :=
  ∀ n, P2214417005506045617.a n = A071321 (n + 1)

end A071321

/-!
# A071322: Alternating sum of all prime factors of n; primes nonincreasing, starting with the largest prime factor: A006530(n).

The programs for A071322, the canonical program `A071322.P2138605109902860041` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071322 has offset 1).

The definition of A071322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071322.P8035616114318862342

`abs(A071321(n+1))`
-/

namespace A071322.P8035616114318862342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071321 (n + 1)|

end

end A071322.P8035616114318862342

namespace A071322

/-- `abs(A071321(n+1))` -/
def P8035616114318862342.Spec : Prop :=
  ∀ n, P8035616114318862342.a n = A071322 (n + 1)

end A071322

/-! ## A071322.P1391096571318600912

`lcm(Δ[A008611(n)], A071321(n+1))`
-/

namespace A071322.P1391096571318600912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A071321 (n + 1))

end

end A071322.P1391096571318600912

namespace A071322

/-- `lcm(Δ[A008611(n)], A071321(n+1))` -/
def P1391096571318600912.Spec : Prop :=
  ∀ n, (P1391096571318600912.a n : ℤ) = A071322 (n + 1)

end A071322

/-! ## A071322.P3172080591726122528

`A071321(n+1)*A344617(n+1)`
-/

namespace A071322.P3172080591726122528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (n + 1) * A344617 (n + 1)

end

end A071322.P3172080591726122528

namespace A071322

/-- `A071321(n+1)*A344617(n+1)` -/
def P3172080591726122528.Spec : Prop :=
  ∀ n, P3172080591726122528.a n = A071322 (n + 1)

end A071322

/-! ## A071322.P5553063777634257324

`gcd(A061397(n+1), A071321(n+1))`
-/

namespace A071322.P5553063777634257324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061397 (n + 1)) (A071321 (n + 1))

end

end A071322.P5553063777634257324

namespace A071322

/-- `gcd(A061397(n+1), A071321(n+1))` -/
def P5553063777634257324.Spec : Prop :=
  ∀ n, (P5553063777634257324.a n : ℤ) = A071322 (n + 1)

end A071322

/-! ## A071322.P1873666780380654720

`-(A071321(n+1)/A008836(n+1))`
-/

namespace A071322.P1873666780380654720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A071321 (n + 1) : ℚ) / (A008836 (n + 1) : ℚ))

end

end A071322.P1873666780380654720

namespace A071322

/-- `-(A071321(n+1)/A008836(n+1))` -/
def P1873666780380654720.Spec : Prop :=
  ∀ n, P1873666780380654720.a n = (A071322 (n + 1) : ℚ)

end A071322

/-! ## A071322.P2138605109902860041

`A001414(n+1)-A001414(A329888(n+1)²)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A071322

/-- `A001414(n+1)-A001414(A329888(n+1)²)` -/
def P2138605109902860041.Spec : Prop :=
  ∀ n, P2138605109902860041.a n = A071322 (n + 1)

theorem P2138605109902860041.correct : P2138605109902860041.Spec := by
  intro n
  simp only [A071322, Nat.add_sub_cancel]

end A071322

/-! ## A071322.P1951246911618643658

`A008836(2*(n+1))*A071321(n+1)`
-/

namespace A071322.P1951246911618643658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1)) * A071321 (n + 1)

end

end A071322.P1951246911618643658

namespace A071322

/-- `A008836(2*(n+1))*A071321(n+1)` -/
def P1951246911618643658.Spec : Prop :=
  ∀ n, P1951246911618643658.a n = A071322 (n + 1)

end A071322

/-! ## A071322.P17226302572333431962

`A344616(A064988(n+1))`
-/

namespace A071322.P17226302572333431962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A064988 (n + 1)).toNat

end

end A071322.P17226302572333431962

namespace A071322

/-- `A344616(A064988(n+1))` -/
def P17226302572333431962.Spec : Prop :=
  ∀ n, P17226302572333431962.a n = A071322 (n + 1)

end A071322

/-!
# A071323: Alternating sum of all divisors of n; divisors nondecreasing, starting with 1.

The programs for A071323, there is no canonical definition to state claims against.
-/

/-! ## A071323.P16080684532345998714

`A086988(n+1)-A086989(n+1)`
-/

namespace A071323.P16080684532345998714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086988 (n + 1) - A086989 (n + 1)

end

end A071323.P16080684532345998714

/-! ## A071323.P1970619197854413830

`-(A071324(n+1)*A158387(n+1))`
-/

namespace A071323.P1970619197854413830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A071324 (n + 1) * A158387 (n + 1))

end

end A071323.P1970619197854413830

/-! ## A071323.P9287779424015802191

`2*A086988(n+1)-Δ[A160664(n)]`
-/

namespace A071323.P9287779424015802191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086988 (n + 1) - (f1 (n + 1) - f1 n)

end

end A071323.P9287779424015802191

/-! ## A071323.P12293415289456720938

`2*A086988(n+1)-A000203(n+1)`
-/

namespace A071323.P12293415289456720938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086988 (n + 1) - A000203 (n + 1)

end

end A071323.P12293415289456720938

/-! ## A071323.P15601115976751374045

`A062157(A000005(n+1))*A071324(n+1)`
-/

namespace A071323.P15601115976751374045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000005 (n + 1)).toNat * A071324 (n + 1)

end

end A071323.P15601115976751374045

/-! ## A071323.P6088032202029902401

`A062157(A055076(n+1))*A071324(n+1)`
-/

namespace A071323.P6088032202029902401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A055076 (n + 1)).toNat * A071324 (n + 1)

end

end A071323.P6088032202029902401

/-! ## A071323.P14678909670782499772

`A071324(n+1)*A165326(A071187(n+1))`
-/

namespace A071323.P14678909670782499772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1) * A165326 (A071187 (n + 1)).toNat

end

end A071323.P14678909670782499772

/-! ## A071323.P12853438759621766236

`A062157(A293442(n+1))*A071324(n+1)`
-/

namespace A071323.P12853438759621766236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A293442 (n + 1)).toNat * A071324 (n + 1)

end

end A071323.P12853438759621766236

/-! ## A071323.P1564288044937985512

`A000203(n+1)-(A086989(n+1)+A086989(n+1))`
-/

namespace A071323.P1564288044937985512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A086989 (n + 1) + A086989 (n + 1))

end

end A071323.P1564288044937985512

/-! ## A071323.P8368567037431283829

`A005843(A086988(n+1))-Δ[A160664(n)]`
-/

namespace A071323.P8368567037431283829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A086988 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A071323.P8368567037431283829

/-! ## A071323.P5911190387424930108

`A005843(A086988(n+1))-A000203(n+1)`
-/

namespace A071323.P5911190387424930108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A086988 (n + 1)).toNat - A000203 (n + 1)

end

end A071323.P5911190387424930108

/-!
# A071324: Alternating sum of all divisors of n; divisors nonincreasing, starting with n.

The programs for A071324, there is no canonical definition to state claims against.
-/

/-! ## A071324.P2885056342026793541

`abs(A071323(n+1))`
-/

namespace A071324.P2885056342026793541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071323 (n + 1)|

end

end A071324.P2885056342026793541

/-! ## A071324.P10721840463131338896

`gcd(A000038(n), A071323(n+1))`
-/

namespace A071324.P10721840463131338896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A071323 (n + 1))

end

end A071324.P10721840463131338896

/-! ## A071324.P18172126756741197269

`lcm(A014709(n), A071323(n+1))`
-/

namespace A071324.P18172126756741197269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A071323 (n + 1))

end

end A071324.P18172126756741197269

/-! ## A071324.P15797235398397408874

`∑{d}[A071323(n+1), A000010(#)]`
-/

namespace A071324.P15797235398397408874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A071324.P15797235398397408874

/-! ## A071324.P1345653054328756194

`A382545(n+1)+A000010(n+1)`
-/

namespace A071324.P1345653054328756194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382545 (n + 1) + A000010 (n + 1)

end

end A071324.P1345653054328756194

/-! ## A071324.P4965852264944338628

`A345060(n+1)+A206369(n+1)`
-/

namespace A071324.P4965852264944338628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345060 (n + 1) + A206369 (n + 1)

end

end A071324.P4965852264944338628

/-! ## A071324.P12717130795414396896

`A345061(n+1)*A345062(n+1)`
-/

namespace A071324.P12717130795414396896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345061 (n + 1) * A345062 (n + 1)

end

end A071324.P12717130795414396896

/-! ## A071324.P16512655787729993662

`A345060(n+1)+1-A344439(n+1)+n`
-/

namespace A071324.P16512655787729993662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345060 (n + 1) + (1 - A344439 (n + 1) + (n : ℤ))

end

end A071324.P16512655787729993662

/-! ## A071324.P11902837643141539117

`A344441(n+1)+A345060(n+1)-A061020(n+1)`
-/

namespace A071324.P11902837643141539117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344441 (n + 1) + (A345060 (n + 1) - A061020 (n + 1))

end

end A071324.P11902837643141539117

/-! ## A071324.P674211675382108322

`A345060(n+1)+A345061(n+1)*A345063(n+1)`
-/

namespace A071324.P674211675382108322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345060 (n + 1) + A345061 (n + 1) * A345063 (n + 1)

end

end A071324.P674211675382108322

/-! ## A071324.P10878805256481641173

`A206369(n+1)*A345062(n+1)/A345063(n+1)`
-/

namespace A071324.P10878805256481641173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (n + 1) * A345062 (n + 1) : ℚ) / (A345063 (n + 1) : ℚ)

end

end A071324.P10878805256481641173

/-!
# A071325: Number of squares > 1 dividing n.

The programs for A071325, the canonical program `A071325.P10142503002015730220` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071325 has offset 1).

The definition of A071325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071325.P10142503002015730220

`A046951(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071325

/-- `A046951(n+1)-1` -/
def P10142503002015730220.Spec : Prop :=
  ∀ n, P10142503002015730220.a n = A071325 (n + 1)

theorem P10142503002015730220.correct : P10142503002015730220.Spec := by
  intro n
  simp only [A071325, Nat.add_sub_cancel]

end A071325

/-! ## A071325.P13649316225888128082

`∏{e}[n+1, floor(#/2)+1]-1`
-/

namespace A071325.P13649316225888128082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) - 1

end

end A071325.P13649316225888128082

namespace A071325

/-- `∏{e}[n+1, floor(#/2)+1]-1` -/
def P13649316225888128082.Spec : Prop :=
  ∀ n, P13649316225888128082.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P16009349418144854027

`n-A338228(n+1)`
-/

namespace A071325.P16009349418144854027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A338228 (n + 1)

end

end A071325.P16009349418144854027

namespace A071325

/-- `n-A338228(n+1)` -/
def P16009349418144854027.Spec : Prop :=
  ∀ n, P16009349418144854027.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P4418714447423565821

`∑{e}[A293515(n+1), #]`
-/

namespace A071325.P4418714447423565821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A071325.P4418714447423565821

namespace A071325

/-- `∑{e}[A293515(n+1), #]` -/
def P4418714447423565821.Spec : Prop :=
  ∀ n, (P4418714447423565821.a n : ℤ) = A071325 (n + 1)

end A071325

/-! ## A071325.P5702568565926219473

`∑{e}[A294874(n+1), #]`
-/

namespace A071325.P5702568565926219473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A071325.P5702568565926219473

namespace A071325

/-- `∑{e}[A294874(n+1), #]` -/
def P5702568565926219473.Spec : Prop :=
  ∀ n, (P5702568565926219473.a n : ℤ) = A071325 (n + 1)

end A071325

/-! ## A071325.P13697689954152988354

`∑{d}[n+1, A000005(#)%2]-1`
-/

namespace A071325.P13697689954152988354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000005 d) 2 - 1

end

end A071325.P13697689954152988354

namespace A071325

/-- `∑{d}[n+1, A000005(#)%2]-1` -/
def P13697689954152988354.Spec : Prop :=
  ∀ n, P13697689954152988354.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P16061522332108447730

`A000005(∏{p}[n+1, #^val(n+1, #²)])-1`
-/

namespace A071325.P16061522332108447730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) - 1

end

end A071325.P16061522332108447730

namespace A071325

/-- `A000005(∏{p}[n+1, #^val(n+1, #²)])-1` -/
def P16061522332108447730.Spec : Prop :=
  ∀ n, P16061522332108447730.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P18175663224728310523

`A032741(A000188(n+1))`
-/

namespace A071325.P18175663224728310523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000188 (n + 1)).toNat

end

end A071325.P18175663224728310523

namespace A071325

/-- `A032741(A000188(n+1))` -/
def P18175663224728310523.Spec : Prop :=
  ∀ n, P18175663224728310523.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P4035184417938218285

`A057918(A046951(n+1)²)`
-/

namespace A071325.P4035184417938218285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A046951 (n + 1) ^ 2).toNat

end

end A071325.P4035184417938218285

namespace A071325

/-- `A057918(A046951(n+1)²)` -/
def P4035184417938218285.Spec : Prop :=
  ∀ n, P4035184417938218285.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P18191964330239486941

`A072670(n)-A262202(n+1)`
-/

namespace A071325.P18191964330239486941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n - A262202 (n + 1)

end

end A071325.P18191964330239486941

namespace A071325

/-- `A072670(n)-A262202(n+1)` -/
def P18191964330239486941.Spec : Prop :=
  ∀ n, P18191964330239486941.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P16507850038077711214

`A004873(∏{e}[n+1, A008619(#)])`
-/

namespace A071325.P16507850038077711214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (∏ p ∈ Nat.primeFactors (f1 n), A008619 (Nat.factorization (f1 n) p)).toNat

end

end A071325.P16507850038077711214

namespace A071325

/-- `A004873(∏{e}[n+1, A008619(#)])` -/
def P16507850038077711214.Spec : Prop :=
  ∀ n, P16507850038077711214.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P16574540633751257968

`A000005(sqrt(A008833(n+1)))-1`
-/

namespace A071325.P16574540633751257968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat - 1

end

end A071325.P16574540633751257968

namespace A071325

/-- `A000005(sqrt(A008833(n+1)))-1` -/
def P16574540633751257968.Spec : Prop :=
  ∀ n, P16574540633751257968.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P5268031584229699542

`∑{d}[A000188(n+1), A107078(#²)]`
-/

namespace A071325.P5268031584229699542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A107078 (d ^ 2)

end

end A071325.P5268031584229699542

namespace A071325

/-- `∑{d}[A000188(n+1), A107078(#²)]` -/
def P5268031584229699542.Spec : Prop :=
  ∀ n, P5268031584229699542.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P9068081782728447439

`A000005(A057918(n+1)+1)-1`
-/

namespace A071325.P9068081782728447439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057918 (n + 1) + 1).toNat - 1

end

end A071325.P9068081782728447439

namespace A071325

/-- `A000005(A057918(n+1)+1)-1` -/
def P9068081782728447439.Spec : Prop :=
  ∀ n, P9068081782728447439.a n = A071325 (n + 1)

theorem P9068081782728447439.correct : P9068081782728447439.Spec := by
  intro n
  simp only [A071325, Nat.add_sub_cancel, A071325.P9068081782728447439.a, A071325.P10142503002015730220.a, A000005, A000005.P16091521709108585461.a, A046951, A046951.P12586408086602964063.a, A057918, A057918.P8779601029509101892.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071325

/-! ## A071325.P6050010631712652428

`A000005(A337101(2*(n+1)))-1`
-/

namespace A071325.P6050010631712652428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A337101 (2 * (n + 1))).toNat - 1

end

end A071325.P6050010631712652428

namespace A071325

/-- `A000005(A337101(2*(n+1)))-1` -/
def P6050010631712652428.Spec : Prop :=
  ∀ n, P6050010631712652428.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P10301600211356666630

`A347992(n+1)+A293575(n+1)`
-/

namespace A071325.P10301600211356666630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347992 (n + 1) + A293575 (n + 1)

end

end A071325.P10301600211356666630

namespace A071325

/-- `A347992(n+1)+A293575(n+1)` -/
def P10301600211356666630.Spec : Prop :=
  ∀ n, P10301600211356666630.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P7410507560239594661

`A032741(n+1)-A056595(n+1)`
-/

namespace A071325.P7410507560239594661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A056595 (n + 1)

end

end A071325.P7410507560239594661

namespace A071325

/-- `A032741(n+1)-A056595(n+1)` -/
def P7410507560239594661.Spec : Prop :=
  ∀ n, P7410507560239594661.a n = A071325 (n + 1)

theorem P7410507560239594661.correct : P7410507560239594661.Spec := by
  intro n
  simp only [A071325, Nat.add_sub_cancel, A071325.P7410507560239594661.a, A071325.P10142503002015730220.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A046951, A046951.P12586408086602964063.a, A056595, A056595.P14242287842452137538.a, A000005, A000005.P16091521709108585461.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071325

/-! ## A071325.P2621425160897411066

`A293234(n+1)-A049240(n+1)`
-/

namespace A071325.P2621425160897411066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (n + 1) - A049240 (n + 1)

end

end A071325.P2621425160897411066

namespace A071325

/-- `A293234(n+1)-A049240(n+1)` -/
def P2621425160897411066.Spec : Prop :=
  ∀ n, P2621425160897411066.a n = A071325 (n + 1)

end A071325

/-! ## A071325.P2108315193591135069

`A000005(n+1)-(A056595(n+1)+1)`
-/

namespace A071325.P2108315193591135069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A056595 (n + 1) + 1)

end

end A071325.P2108315193591135069

namespace A071325

/-- `A000005(n+1)-(A056595(n+1)+1)` -/
def P2108315193591135069.Spec : Prop :=
  ∀ n, P2108315193591135069.a n = A071325 (n + 1)

theorem P2108315193591135069.correct : P2108315193591135069.Spec := by
  intro n
  simp only [A071325, Nat.add_sub_cancel, A071325.P2108315193591135069.a, A071325.P10142503002015730220.a, A000005, A000005.P16091521709108585461.a, A046951, A046951.P12586408086602964063.a, A056595, A056595.P14242287842452137538.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071325

/-! ## A071325.P6833318083415659108

`∑{d}[n+1, A008836(#)*A048105((n+1)/#)]`
-/

namespace A071325.P6833318083415659108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A048105 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A071325.P6833318083415659108

namespace A071325

/-- `∑{d}[n+1, A008836(#)*A048105((n+1)/#)]` -/
def P6833318083415659108.Spec : Prop :=
  ∀ n, P6833318083415659108.a n = A071325 (n + 1)

end A071325

/-!
# A071326: Sum of squares > 1 dividing n.

The programs for A071326, the canonical program `A071326.P2879098409423793096` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071326 has offset 1).

The definition of A071326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071326.P2879098409423793096

`A035316(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071326

/-- `A035316(n+1)-1` -/
def P2879098409423793096.Spec : Prop :=
  ∀ n, P2879098409423793096.a n = A071326 (n + 1)

theorem P2879098409423793096.correct : P2879098409423793096.Spec := by
  intro n
  simp only [A071326, Nat.add_sub_cancel]

end A071326

/-! ## A071326.P11473519210659216866

`n-A326058(n+1)`
-/

namespace A071326.P11473519210659216866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326058 (n + 1)

end

end A071326.P11473519210659216866

namespace A071326

/-- `n-A326058(n+1)` -/
def P11473519210659216866.Spec : Prop :=
  ∀ n, P11473519210659216866.a n = A071326 (n + 1)

theorem P11473519210659216866.correct : P11473519210659216866.Spec := by
  intro n
  simp only [A071326, Nat.add_sub_cancel, A071326.P11473519210659216866.a, A071326.P2879098409423793096.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326058, A326058.P945554037685919267.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071326

/-! ## A071326.P13155534069514002812

`∑{d}[A000188(n+1), #²]-1`
-/

namespace A071326.P13155534069514002812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℤ) - 1

end

end A071326.P13155534069514002812

namespace A071326

/-- `∑{d}[A000188(n+1), #²]-1` -/
def P13155534069514002812.Spec : Prop :=
  ∀ n, P13155534069514002812.a n = A071326 (n + 1)

end A071326

/-! ## A071326.P3022706178403322182

`∑{d}[n+1, #*A010052(#)]-1`
-/

namespace A071326.P3022706178403322182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010052 d - 1

end

end A071326.P3022706178403322182

namespace A071326

/-- `∑{d}[n+1, #*A010052(#)]-1` -/
def P3022706178403322182.Spec : Prop :=
  ∀ n, P3022706178403322182.a n = A071326 (n + 1)

end A071326

/-! ## A071326.P17005624565046909574

`A053807(A000188(n+1)+1)`
-/

namespace A071326.P17005624565046909574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053807 (A000188 (n + 1) + 1).toNat

end

end A071326.P17005624565046909574

namespace A071326

/-- `A053807(A000188(n+1)+1)` -/
def P17005624565046909574.Spec : Prop :=
  ∀ n, P17005624565046909574.a n = A071326 (n + 1)

end A071326

/-! ## A071326.P15014991023479415654

`A076752(A008833(n+1))-1`
-/

namespace A071326.P15014991023479415654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (A008833 (n + 1)).toNat - 1

end

end A071326.P15014991023479415654

namespace A071326

/-- `A076752(A008833(n+1))-1` -/
def P15014991023479415654.Spec : Prop :=
  ∀ n, P15014991023479415654.a n = A071326 (n + 1)

end A071326

/-! ## A071326.P17238692316342144373

`A001157(A057918(n+1)+1)-1`
-/

namespace A071326.P17238692316342144373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A057918 (n + 1) + 1).toNat - 1

end

end A071326.P17238692316342144373

namespace A071326

/-- `A001157(A057918(n+1)+1)-1` -/
def P17238692316342144373.Spec : Prop :=
  ∀ n, P17238692316342144373.a n = A071326 (n + 1)

end A071326

/-! ## A071326.P17394286977077497660

`A000203(n+1)-(A285309(n+1)+1)`
-/

namespace A071326.P17394286977077497660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A285309 (n + 1) + 1)

end

end A071326.P17394286977077497660

namespace A071326

/-- `A000203(n+1)-(A285309(n+1)+1)` -/
def P17394286977077497660.Spec : Prop :=
  ∀ n, P17394286977077497660.a n = A071326 (n + 1)

theorem P17394286977077497660.correct : P17394286977077497660.Spec := by
  intro n
  simp only [A071326, Nat.add_sub_cancel, A071326.P17394286977077497660.a, A071326.P2879098409423793096.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A285309, A285309.P12080858862407877190.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071326

/-! ## A071326.P13230705443143017660

`A001065(n+1)-(A326059(n+1)+1)`
-/

namespace A071326.P13230705443143017660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (A326059 (n + 1) + 1)

end

end A071326.P13230705443143017660

namespace A071326

/-- `A001065(n+1)-(A326059(n+1)+1)` -/
def P13230705443143017660.Spec : Prop :=
  ∀ n, P13230705443143017660.a n = A071326 (n + 1)

theorem P13230705443143017660.correct : P13230705443143017660.Spec := by
  intro n
  simp only [A071326, Nat.add_sub_cancel, A071326.P13230705443143017660.a, A071326.P2879098409423793096.a, A001065, A001065.P4097147489331274860.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326059, A326059.P8887039783102292576.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A285309, A285309.P12080858862407877190.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071326

/-! ## A071326.P6711951057126319070

`A349330(n+1)-(A056595(n+1)+1)`
-/

namespace A071326.P6711951057126319070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349330 (n + 1) - (A056595 (n + 1) + 1)

end

end A071326.P6711951057126319070

namespace A071326

/-- `A349330(n+1)-(A056595(n+1)+1)` -/
def P6711951057126319070.Spec : Prop :=
  ∀ n, P6711951057126319070.a n = A071326 (n + 1)

theorem P6711951057126319070.correct : P6711951057126319070.Spec := by
  intro n
  simp only [A071326, Nat.add_sub_cancel, A071326.P6711951057126319070.a, A071326.P2879098409423793096.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A056595, A056595.P14242287842452137538.a, A349330, A349330.P17425887972492855764.a, A000005, A000005.P16091521709108585461.a, A037213, A037213.P7544062464691828526.a, A046951, A046951.P12586408086602964063.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071326

/-! ## A071326.P11519454230862074781

`A088580(n+1)-(A285309(n+1)+2)`
-/

namespace A071326.P11519454230862074781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A285309 (n + 1) + 2)

end

end A071326.P11519454230862074781

namespace A071326

/-- `A088580(n+1)-(A285309(n+1)+2)` -/
def P11519454230862074781.Spec : Prop :=
  ∀ n, P11519454230862074781.a n = A071326 (n + 1)

theorem P11519454230862074781.correct : P11519454230862074781.Spec := by
  intro n
  simp only [A071326, Nat.add_sub_cancel, A071326.P11519454230862074781.a, A071326.P2879098409423793096.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A088580, A088580.P3089093194242277422.a, A285309, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071326

/-! ## A071326.P4060727296304167848

`A076752(n+1)/A007913(n+1)-1`
-/

namespace A071326.P4060727296304167848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076752 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ) - 1

end

end A071326.P4060727296304167848

namespace A071326

/-- `A076752(n+1)/A007913(n+1)-1` -/
def P4060727296304167848.Spec : Prop :=
  ∀ n, P4060727296304167848.a n = (A071326 (n + 1) : ℚ)

end A071326

/-! ## A071326.P13833047524675251064

`A001065(n+1)-A285309(n+1)+n`
-/

namespace A071326.P13833047524675251064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A285309 (n + 1) + (n : ℤ)

end

end A071326.P13833047524675251064

namespace A071326

/-- `A001065(n+1)-A285309(n+1)+n` -/
def P13833047524675251064.Spec : Prop :=
  ∀ n, P13833047524675251064.a n = A071326 (n + 1)

theorem P13833047524675251064.correct : P13833047524675251064.Spec := by
  intro n
  simp only [A071326, Nat.add_sub_cancel, A071326.P13833047524675251064.a, A071326.P2879098409423793096.a, A001065, A001065.P4097147489331274860.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A285309, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071326

/-! ## A071326.P6622007825657317670

`n-(A326059(n+1)+A033879(n+1))`
-/

namespace A071326.P6622007825657317670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A326059 (n + 1) + A033879 (n + 1))

end

end A071326.P6622007825657317670

namespace A071326

/-- `n-(A326059(n+1)+A033879(n+1))` -/
def P6622007825657317670.Spec : Prop :=
  ∀ n, P6622007825657317670.a n = A071326 (n + 1)

theorem P6622007825657317670.correct : P6622007825657317670.Spec := by
  intro n
  simp only [A071326, Nat.add_sub_cancel, A071326.P6622007825657317670.a, A071326.P2879098409423793096.a, A033879, A033879.P5965131822542929609.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326059, A326059.P8887039783102292576.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A285309, A285309.P12080858862407877190.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071326

/-! ## A071326.P15610834460094848254

`A033880(n+1)-A326059(n+1)+n`
-/

namespace A071326.P15610834460094848254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) - A326059 (n + 1) + (n : ℤ)

end

end A071326.P15610834460094848254

namespace A071326

/-- `A033880(n+1)-A326059(n+1)+n` -/
def P15610834460094848254.Spec : Prop :=
  ∀ n, P15610834460094848254.a n = A071326 (n + 1)

theorem P15610834460094848254.correct : P15610834460094848254.Spec := by
  intro n
  simp only [A071326, Nat.add_sub_cancel, A071326.P15610834460094848254.a, A071326.P2879098409423793096.a, A033880, A033880.P6005875780263802708.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326059, A326059.P8887039783102292576.a, A001065, A001065.P4097147489331274860.a, A037213, A037213.P7544062464691828526.a, A285309, A285309.P12080858862407877190.a, A000196, A000196.P15434771586934192083.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071326

/-! ## A071326.P6898845509289098381

`∑{d}[n+1, A061020(#)*A105570((n+1)/#)]`
-/

namespace A071326.P6898845509289098381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A105570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A071326.P6898845509289098381

namespace A071326

/-- `∑{d}[n+1, A061020(#)*A105570((n+1)/#)]` -/
def P6898845509289098381.Spec : Prop :=
  ∀ n, P6898845509289098381.a n = A071326 (n + 1)

end A071326

/-! ## A071326.P3657493115910960746

`∑{d}[n+1, A061019(#)*A162296((n+1)/#)]`
-/

namespace A071326.P3657493115910960746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A162296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A071326.P3657493115910960746

namespace A071326

/-- `∑{d}[n+1, A061019(#)*A162296((n+1)/#)]` -/
def P3657493115910960746.Spec : Prop :=
  ∀ n, P3657493115910960746.a n = A071326 (n + 1)

end A071326

/-! ## A071326.P7763980608611850615

`2*(n+1)-A033879(n+1)-(A285309(n+1)+1)`
-/

namespace A071326.P7763980608611850615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - (A285309 (n + 1) + 1)

end

end A071326.P7763980608611850615

namespace A071326

/-- `2*(n+1)-A033879(n+1)-(A285309(n+1)+1)` -/
def P7763980608611850615.Spec : Prop :=
  ∀ n, P7763980608611850615.a n = A071326 (n + 1)

theorem P7763980608611850615.correct : P7763980608611850615.Spec := by
  intro n
  simp only [A071326, Nat.add_sub_cancel, A071326.P7763980608611850615.a, A071326.P2879098409423793096.a, A033879, A033879.P5965131822542929609.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A285309, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071326

/-! ## A071326.P9002663194711316319

`A023443(A035316(n+1))`
-/

namespace A071326.P9002663194711316319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A035316 (n + 1)).toNat

end

end A071326.P9002663194711316319

namespace A071326

/-- `A023443(A035316(n+1))` -/
def P9002663194711316319.Spec : Prop :=
  ∀ n, P9002663194711316319.a n = A071326 (n + 1)

end A071326

/-! ## A071326.P6705113670967281030

`A300853(A039956(n+1))+A035316(n+1)`
-/

namespace A071326.P6705113670967281030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300853 (A039956 (n + 1)).toNat + A035316 (n + 1)

end

end A071326.P6705113670967281030

namespace A071326

/-- `A300853(A039956(n+1))+A035316(n+1)` -/
def P6705113670967281030.Spec : Prop :=
  ∀ n, P6705113670967281030.a n = A071326 (n + 1)

end A071326

/-!
# A071327: Sum of the squared primes dividing n.

The programs for A071327, the canonical program `A071327.P169080481369217121` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071327 has offset 1).

The definition of A071327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071327.P169080481369217121

`∑{d}[n+1, A010052(#)*A010051(A000196(#))*#]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071327

/-- `∑{d}[n+1, A010052(#)*A010051(A000196(#))*#]` -/
def P169080481369217121.Spec : Prop :=
  ∀ n, P169080481369217121.a n = A071327 (n + 1)

theorem P169080481369217121.correct : P169080481369217121.Spec := by
  intro n
  simp only [A071327, Nat.add_sub_cancel]

end A071327

/-! ## A071327.P13489380316522062641

`∑{p}[(n+1)/∏{p}[n+1, #], #²]`
-/

namespace A071327.P13489380316522062641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p ^ 2

end

end A071327.P13489380316522062641

namespace A071327

/-- `∑{p}[(n+1)/∏{p}[n+1, #], #²]` -/
def P13489380316522062641.Spec : Prop :=
  ∀ n, (P13489380316522062641.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P8037997289629040388

`∑{p}[∏{p}[n+1, #^val(n+1, #²)], #²]`
-/

namespace A071327.P8037997289629040388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ 2

end

end A071327.P8037997289629040388

namespace A071327

/-- `∑{p}[∏{p}[n+1, #^val(n+1, #²)], #²]` -/
def P8037997289629040388.Spec : Prop :=
  ∀ n, (P8037997289629040388.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P9136906789460523435

`∑{p}[A000188(n+1), #²]`
-/

namespace A071327.P9136906789460523435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P9136906789460523435

namespace A071327

/-- `∑{p}[A000188(n+1), #²]` -/
def P9136906789460523435.Spec : Prop :=
  ∀ n, (P9136906789460523435.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P10842004711608615538

`∑{p}[A000189(n+1), #²]`
-/

namespace A071327.P10842004711608615538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P10842004711608615538

namespace A071327

/-- `∑{p}[A000189(n+1), #²]` -/
def P10842004711608615538.Spec : Prop :=
  ∀ n, (P10842004711608615538.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P526731545219964698

`∑{p}[A000190(n+1), #²]`
-/

namespace A071327.P526731545219964698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P526731545219964698

namespace A071327

/-- `∑{p}[A000190(n+1), #²]` -/
def P526731545219964698.Spec : Prop :=
  ∀ n, (P526731545219964698.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P6827033973915974970

`∑{p}[A003557(n+1), #²]`
-/

namespace A071327.P6827033973915974970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P6827033973915974970

namespace A071327

/-- `∑{p}[A003557(n+1), #²]` -/
def P6827033973915974970.Spec : Prop :=
  ∀ n, (P6827033973915974970.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P15268682115072132223

`∑{p}[A008833(n+1), #²]`
-/

namespace A071327.P15268682115072132223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P15268682115072132223

namespace A071327

/-- `∑{p}[A008833(n+1), #²]` -/
def P15268682115072132223.Spec : Prop :=
  ∀ n, (P15268682115072132223.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P5356811591645964345

`∑{p}[A011264(n+1), #²]`
-/

namespace A071327.P5356811591645964345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P5356811591645964345

namespace A071327

/-- `∑{p}[A011264(n+1), #²]` -/
def P5356811591645964345.Spec : Prop :=
  ∀ n, (P5356811591645964345.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P12333396675878493201

`∑{p}[A057521(n+1), #²]`
-/

namespace A071327.P12333396675878493201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P12333396675878493201

namespace A071327

/-- `∑{p}[A057521(n+1), #²]` -/
def P12333396675878493201.Spec : Prop :=
  ∀ n, (P12333396675878493201.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P11114003882966140043

`∑{p}[A071773(n+1), #²]`
-/

namespace A071327.P11114003882966140043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P11114003882966140043

namespace A071327

/-- `∑{p}[A071773(n+1), #²]` -/
def P11114003882966140043.Spec : Prop :=
  ∀ n, (P11114003882966140043.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P17705416891722713391

`∑{p}[A085731(n+1), #²]`
-/

namespace A071327.P17705416891722713391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P17705416891722713391

namespace A071327

/-- `∑{p}[A085731(n+1), #²]` -/
def P17705416891722713391.Spec : Prop :=
  ∀ n, (P17705416891722713391.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P10265062757410688677

`∑{p}[A308993(n+1), #²]`
-/

namespace A071327.P10265062757410688677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P10265062757410688677

namespace A071327

/-- `∑{p}[A308993(n+1), #²]` -/
def P10265062757410688677.Spec : Prop :=
  ∀ n, (P10265062757410688677.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P2589915177367601297

`∑{p}[A358272(n+1), #²]`
-/

namespace A071327.P2589915177367601297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P2589915177367601297

namespace A071327

/-- `∑{p}[A358272(n+1), #²]` -/
def P2589915177367601297.Spec : Prop :=
  ∀ n, (P2589915177367601297.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P3753149769088779500

`∑{p}[A366993(n+1), #²]`
-/

namespace A071327.P3753149769088779500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P3753149769088779500

namespace A071327

/-- `∑{p}[A366993(n+1), #²]` -/
def P3753149769088779500.Spec : Prop :=
  ∀ n, (P3753149769088779500.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P15400266485602878287

`∑{d}[n+1, #*A302048(#)]`
-/

namespace A071327.P15400266485602878287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A302048 d

end

end A071327.P15400266485602878287

namespace A071327

/-- `∑{d}[n+1, #*A302048(#)]` -/
def P15400266485602878287.Spec : Prop :=
  ∀ n, P15400266485602878287.a n = A071327 (n + 1)

end A071327

/-! ## A071327.P11818544811371040345

`∑{p}[A336551(n+1)+1, #²]`
-/

namespace A071327.P11818544811371040345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P11818544811371040345

namespace A071327

/-- `∑{p}[A336551(n+1)+1, #²]` -/
def P11818544811371040345.Spec : Prop :=
  ∀ n, (P11818544811371040345.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P14553401411192626636

`∑{p}[A337101(2*(n+1)), #²]`
-/

namespace A071327.P14553401411192626636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A071327.P14553401411192626636

namespace A071327

/-- `∑{p}[A337101(2*(n+1)), #²]` -/
def P14553401411192626636.Spec : Prop :=
  ∀ n, (P14553401411192626636.a n : ℤ) = A071327 (n + 1)

end A071327

/-! ## A071327.P5728341324678796563

`∑{p}[gcd(n+1, ∑{p}[n+1, (n+1)/#]), A000290(#)]`
-/

namespace A071327.P5728341324678796563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000290 p

end

end A071327.P5728341324678796563

namespace A071327

/-- `∑{p}[gcd(n+1, ∑{p}[n+1, (n+1)/#]), A000290(#)]` -/
def P5728341324678796563.Spec : Prop :=
  ∀ n, P5728341324678796563.a n = A071327 (n + 1)

end A071327

/-! ## A071327.P13973438908904361651

`A005063(A000188(n+1))`
-/

namespace A071327.P13973438908904361651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A000188 (n + 1)).toNat

end

end A071327.P13973438908904361651

namespace A071327

/-- `A005063(A000188(n+1))` -/
def P13973438908904361651.Spec : Prop :=
  ∀ n, P13973438908904361651.a n = A071327 (n + 1)

end A071327

/-!
# A071328: Smallest prime q such that q - prime(n) >= n.

The programs for A071328, the canonical program `A071328.P14920521615999072632` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071328 has offset 1).

The definition of A071328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071328.P14920521615999072632

`A151800(A095116(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071328

/-- `A151800(A095116(n+1))` -/
def P14920521615999072632.Spec : Prop :=
  ∀ n, P14920521615999072632.a n = A071328 (n + 1)

theorem P14920521615999072632.correct : P14920521615999072632.Spec := by
  intro n
  simp only [A071328, Nat.add_sub_cancel]

end A071328

/-! ## A071328.P9923116256577937777

`A151800(Δ[A007504(n)]+n)`
-/

namespace A071328.P9923116256577937777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A071328.P9923116256577937777

namespace A071328

/-- `A151800(Δ[A007504(n)]+n)` -/
def P9923116256577937777.Spec : Prop :=
  ∀ n, P9923116256577937777.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P1126520661714380471

`A151800(A014688(n+1)-1)`
-/

namespace A071328.P1126520661714380471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A014688 (n + 1) - 1).toNat

end

end A071328.P1126520661714380471

namespace A071328

/-- `A151800(A014688(n+1)-1)` -/
def P1126520661714380471.Spec : Prop :=
  ∀ n, P1126520661714380471.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P2799919488175531219

`A151800(A000040(n+1)+n)`
-/

namespace A071328.P2799919488175531219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000040 (n + 1) + (n : ℤ)).toNat

end

end A071328.P2799919488175531219

namespace A071328

/-- `A151800(A000040(n+1)+n)` -/
def P2799919488175531219.Spec : Prop :=
  ∀ n, P2799919488175531219.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P14396961023929693559

`A151800(A008578(n+2)+n)`
-/

namespace A071328.P14396961023929693559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A008578 (n + 2) + (n : ℤ)).toNat

end

end A071328.P14396961023929693559

namespace A071328

/-- `A151800(A008578(n+2)+n)` -/
def P14396961023929693559.Spec : Prop :=
  ∀ n, P14396961023929693559.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P17798767482602694309

`A151800(A182986(n+2)+n)`
-/

namespace A071328.P17798767482602694309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A182986 (n + 2) + (n : ℤ)).toNat

end

end A071328.P17798767482602694309

namespace A071328

/-- `A151800(A182986(n+2)+n)` -/
def P17798767482602694309.Spec : Prop :=
  ∀ n, P17798767482602694309.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P16826674015852480486

`A151800(record[A006530(n+2)]+n)`
-/

namespace A071328.P16826674015852480486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A071328.P16826674015852480486

namespace A071328

/-- `A151800(record[A006530(n+2)]+n)` -/
def P16826674015852480486.Spec : Prop :=
  ∀ n, P16826674015852480486.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P13565914421997981875

`A151800(record[A020639(n+2)]+n)`
-/

namespace A071328.P13565914421997981875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A071328.P13565914421997981875

namespace A071328

/-- `A151800(record[A020639(n+2)]+n)` -/
def P13565914421997981875.Spec : Prop :=
  ∀ n, P13565914421997981875.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P1550146402749218977

`A151800(A006093(n+1)+1+n)`
-/

namespace A071328.P1550146402749218977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006093 (n + 1) + 1 + (n : ℤ)).toNat

end

end A071328.P1550146402749218977

namespace A071328

/-- `A151800(A006093(n+1)+1+n)` -/
def P1550146402749218977.Spec : Prop :=
  ∀ n, P1550146402749218977.a n = A071328 (n + 1)

theorem P1550146402749218977.correct : P1550146402749218977.Spec := by
  intro n
  simp only [A071328, Nat.add_sub_cancel, A071328.P1550146402749218977.a, A071328.P14920521615999072632.a, A006093, A006093.P2906174024863549003.a, A095116, A095116.P2789422422958858773.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071328

/-! ## A071328.P7252341559979869272

`A151800(A156037(n+1)+1+n)`
-/

namespace A071328.P7252341559979869272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A156037 (n + 1) + 1 + (n : ℤ)).toNat

end

end A071328.P7252341559979869272

namespace A071328

/-- `A151800(A156037(n+1)+1+n)` -/
def P7252341559979869272.Spec : Prop :=
  ∀ n, P7252341559979869272.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P14697815966601610663

`A151800(A008864(n+1)-1+n)`
-/

namespace A071328.P14697815966601610663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A008864 (n + 1) - 1 + (n : ℤ)).toNat

end

end A071328.P14697815966601610663

namespace A071328

/-- `A151800(A008864(n+1)-1+n)` -/
def P14697815966601610663.Spec : Prop :=
  ∀ n, P14697815966601610663.a n = A071328 (n + 1)

theorem P14697815966601610663.correct : P14697815966601610663.Spec := by
  intro n
  simp only [A071328, Nat.add_sub_cancel, A071328.P14697815966601610663.a, A071328.P14920521615999072632.a, A008864, A008864.P9177617808325052279.a, A095116, A095116.P2789422422958858773.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071328

/-! ## A071328.P3540936461903819612

`A151800(A040976(n+1)+n+2)`
-/

namespace A071328.P3540936461903819612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A040976 (n + 1) + (n + 2 : ℤ)).toNat

end

end A071328.P3540936461903819612

namespace A071328

/-- `A151800(A040976(n+1)+n+2)` -/
def P3540936461903819612.Spec : Prop :=
  ∀ n, P3540936461903819612.a n = A071328 (n + 1)

theorem P3540936461903819612.correct : P3540936461903819612.Spec := by
  intro n
  simp only [A071328, Nat.add_sub_cancel, A071328.P3540936461903819612.a, A071328.P14920521615999072632.a, A040976, A040976.P11599754272797435513.a, A095116, A095116.P2789422422958858773.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071328

/-! ## A071328.P10861204473329557398

`A151800(A014692(n+1)+2*n)`
-/

namespace A071328.P10861204473329557398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A014692 (n + 1) + (2 * n : ℤ)).toNat

end

end A071328.P10861204473329557398

namespace A071328

/-- `A151800(A014692(n+1)+2*n)` -/
def P10861204473329557398.Spec : Prop :=
  ∀ n, P10861204473329557398.a n = A071328 (n + 1)

theorem P10861204473329557398.correct : P10861204473329557398.Spec := by
  intro n
  simp only [A071328, Nat.add_sub_cancel, A071328.P10861204473329557398.a, A071328.P14920521615999072632.a, A014692, A014692.P2004927767556050134.a, A095116, A095116.P2789422422958858773.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071328

/-! ## A071328.P14684551700942466107

`A151800(A100484(n+1)/2+n)`
-/

namespace A071328.P14684551700942466107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2 + (n : ℚ))).toNat

end

end A071328.P14684551700942466107

namespace A071328

/-- `A151800(A100484(n+1)/2+n)` -/
def P14684551700942466107.Spec : Prop :=
  ∀ n, P14684551700942466107.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P17607017908277450141

`A151800(A014689(n+1)+2*n+1)`
-/

namespace A071328.P17607017908277450141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A014689 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A071328.P17607017908277450141

namespace A071328

/-- `A151800(A014689(n+1)+2*n+1)` -/
def P17607017908277450141.Spec : Prop :=
  ∀ n, P17607017908277450141.a n = A071328 (n + 1)

theorem P17607017908277450141.correct : P17607017908277450141.Spec := by
  intro n
  simp only [A071328, Nat.add_sub_cancel, A071328.P17607017908277450141.a, A071328.P14920521615999072632.a, A014689, A014689.P6286543075765329050.a, A095116, A095116.P2789422422958858773.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071328

/-! ## A071328.P1760765987886997828

`A065091(A000720(A000040(n+1)+n))`
-/

namespace A071328.P1760765987886997828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A000720 (A000040 (n + 1) + (n : ℤ)).toNat).toNat

end

end A071328.P1760765987886997828

namespace A071328

/-- `A065091(A000720(A000040(n+1)+n))` -/
def P1760765987886997828.Spec : Prop :=
  ∀ n, P1760765987886997828.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P1962528229546824665

`A151800(A151800(A006093(n+1))+n)`
-/

namespace A071328.P1962528229546824665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A006093 (n + 1)).toNat + (n : ℤ)).toNat

end

end A071328.P1962528229546824665

namespace A071328

/-- `A151800(A151800(A006093(n+1))+n)` -/
def P1962528229546824665.Spec : Prop :=
  ∀ n, P1962528229546824665.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P2623442297615465512

`A151800(A151800(A040976(n+1))+n)`
-/

namespace A071328.P2623442297615465512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A040976 (n + 1)).toNat + (n : ℤ)).toNat

end

end A071328.P2623442297615465512

namespace A071328

/-- `A151800(A151800(A040976(n+1))+n)` -/
def P2623442297615465512.Spec : Prop :=
  ∀ n, P2623442297615465512.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P17167912024117631653

`A151800(A151800(A065514(n+1))+n)`
-/

namespace A071328.P17167912024117631653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A065514 (n + 1)).toNat + (n : ℤ)).toNat

end

end A071328.P17167912024117631653

namespace A071328

/-- `A151800(A151800(A065514(n+1))+n)` -/
def P17167912024117631653.Spec : Prop :=
  ∀ n, P17167912024117631653.a n = A071328 (n + 1)

end A071328

/-! ## A071328.P13360551908623470429

`A065091(A000720(A008578(n+2)+n))`
-/

namespace A071328.P13360551908623470429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A000720 (A008578 (n + 2) + (n : ℤ)).toNat).toNat

end

end A071328.P13360551908623470429

namespace A071328

/-- `A065091(A000720(A008578(n+2)+n))` -/
def P13360551908623470429.Spec : Prop :=
  ∀ n, P13360551908623470429.a n = A071328 (n + 1)

end A071328

/-!
# A071329: Largest prime q such that q - prime(n) <= n.

The programs for A071329, the canonical program `A071329.P5834183981238197590` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071329 has offset 1).

The definition of A071329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071329.P14781260848408517520

`A000040(A084294(n+1)+n)`
-/

namespace A071329.P14781260848408517520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084294 (n + 1) + (n : ℤ)).toNat

end

end A071329.P14781260848408517520

namespace A071329

/-- `A000040(A084294(n+1)+n)` -/
def P14781260848408517520.Spec : Prop :=
  ∀ n, P14781260848408517520.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P17619893036126734605

`A000040(A332086(n+1)+n+1)`
-/

namespace A071329.P17619893036126734605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A332086 (n + 1) + (n + 1 : ℤ)).toNat

end

end A071329.P17619893036126734605

namespace A071329

/-- `A000040(A332086(n+1)+n+1)` -/
def P17619893036126734605.Spec : Prop :=
  ∀ n, P17619893036126734605.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P5834183981238197590

`A000040(A000720(A014688(n+1)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071329

/-- `A000040(A000720(A014688(n+1)))` -/
def P5834183981238197590.Spec : Prop :=
  ∀ n, P5834183981238197590.a n = A071329 (n + 1)

theorem P5834183981238197590.correct : P5834183981238197590.Spec := by
  intro n
  simp only [A071329, Nat.add_sub_cancel]

end A071329

/-! ## A071329.P16791565300706371572

`A000040(A000720(A000040(n+1)+n+1))`
-/

namespace A071329.P16791565300706371572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A000040 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A071329.P16791565300706371572

namespace A071329

/-- `A000040(A000720(A000040(n+1)+n+1))` -/
def P16791565300706371572.Spec : Prop :=
  ∀ n, P16791565300706371572.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P13177251155651879197

`A007917(p?[xor(1, n)+1]+1+n)`
-/

namespace A071329.P13177251155651879197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 + n)

end

end A071329.P13177251155651879197

namespace A071329

/-- `A007917(p?[xor(1, n)+1]+1+n)` -/
def P13177251155651879197.Spec : Prop :=
  ∀ n, P13177251155651879197.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P16471185264194952891

`A007917(p?[abs(2*n-3)]+1+n)`
-/

namespace A071329.P16471185264194952891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 + (n : ℤ)).toNat

end

end A071329.P16471185264194952891

namespace A071329

/-- `A007917(p?[abs(2*n-3)]+1+n)` -/
def P16471185264194952891.Spec : Prop :=
  ∀ n, P16471185264194952891.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P3608355791094506124

`A007917(char[1]+n+p?[round(8*n/7)]+1)`
-/

namespace A071329.P3608355791094506124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 ((((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1)).toNat

end

end A071329.P3608355791094506124

namespace A071329

/-- `A007917(char[1]+n+p?[round(8*n/7)]+1)` -/
def P3608355791094506124.Spec : Prop :=
  ∀ n, P3608355791094506124.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P14469110739274931123

`A007917(A014688(n+1))`
-/

namespace A071329.P14469110739274931123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A014688 (n + 1)).toNat

end

end A071329.P14469110739274931123

namespace A071329

/-- `A007917(A014688(n+1))` -/
def P14469110739274931123.Spec : Prop :=
  ∀ n, P14469110739274931123.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P14206149794051266246

`A007917(n+1+A000040(n+1))`
-/

namespace A071329.P14206149794051266246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 ((n + 1 : ℤ) + A000040 (n + 1)).toNat

end

end A071329.P14206149794051266246

namespace A071329

/-- `A007917(n+1+A000040(n+1))` -/
def P14206149794051266246.Spec : Prop :=
  ∀ n, P14206149794051266246.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P6843068209592507105

`A008578(A036234(A000040(n+1)+n+1))`
-/

namespace A071329.P6843068209592507105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A036234 (A000040 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A071329.P6843068209592507105

namespace A071329

/-- `A008578(A036234(A000040(n+1)+n+1))` -/
def P6843068209592507105.Spec : Prop :=
  ∀ n, P6843068209592507105.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P18320316674646458895

`A064989(A104860(n+1))`
-/

namespace A071329.P18320316674646458895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A104860 (n + 1)).toNat

end

end A071329.P18320316674646458895

namespace A071329

/-- `A064989(A104860(n+1))` -/
def P18320316674646458895.Spec : Prop :=
  ∀ n, P18320316674646458895.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P8810717304897938534

`A136548(A090178(n+2))`
-/

namespace A071329.P8810717304897938534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A090178 (n + 2)).toNat

end

end A071329.P8810717304897938534

namespace A071329

/-- `A136548(A090178(n+2))` -/
def P8810717304897938534.Spec : Prop :=
  ∀ n, P8810717304897938534.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P10225507273882867744

`A136548(A008864(n+1)+n+1)`
-/

namespace A071329.P10225507273882867744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A008864 (n + 1) + (n + 1 : ℤ)).toNat

end

end A071329.P10225507273882867744

namespace A071329

/-- `A136548(A008864(n+1)+n+1)` -/
def P10225507273882867744.Spec : Prop :=
  ∀ n, P10225507273882867744.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P17671791589402524951

`A136548(A008578(n+2)+n+2)`
-/

namespace A071329.P17671791589402524951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A008578 (n + 2) + (n + 2 : ℤ)).toNat

end

end A071329.P17671791589402524951

namespace A071329

/-- `A136548(A008578(n+2)+n+2)` -/
def P17671791589402524951.Spec : Prop :=
  ∀ n, P17671791589402524951.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P12694009271134000963

`A098550(A249943(A000040(n+1)+n+1))`
-/

namespace A071329.P12694009271134000963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A249943 (A000040 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A071329.P12694009271134000963

namespace A071329

/-- `A098550(A249943(A000040(n+1)+n+1))` -/
def P12694009271134000963.Spec : Prop :=
  ∀ n, P12694009271134000963.a n = A071329 (n + 1)

end A071329

/-! ## A071329.P17695953015401775936

`A357980(A065995(n+1))`
-/

namespace A071329.P17695953015401775936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357980 (A065995 (n + 1)).toNat

end

end A071329.P17695953015401775936

namespace A071329

/-- `A357980(A065995(n+1))` -/
def P17695953015401775936.Spec : Prop :=
  ∀ n, P17695953015401775936.a n = A071329 (n + 1)

end A071329

/-!
# A071330: Number of decompositions of n into sum of two prime powers.

The programs for A071330, there is no canonical definition to state claims against.
-/

/-! ## A071330.P16824368490167354701

`ceil(A282062(n+1)/2)`
-/

namespace A071330.P16824368490167354701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A282062 (n + 1) : ℚ) / 2⌉

end

end A071330.P16824368490167354701

/-! ## A071330.P5685548081470042026

`A110654(A282062(n+1))`
-/

namespace A071330.P5685548081470042026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A282062 (n + 1)).toNat

end

end A071330.P5685548081470042026

/-! ## A071330.P13721477381970353540

`A004526(A282062(n+1)+1)`
-/

namespace A071330.P13721477381970353540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A282062 (n + 1) + 1).toNat

end

end A071330.P13721477381970353540

/-! ## A071330.P14799515264881079063

`A123108(A282062(n+1)+1)`
-/

namespace A071330.P14799515264881079063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A282062 (n + 1) + 1).toNat

end

end A071330.P14799515264881079063

/-! ## A071330.P3397940947529172611

`A307726(n+1)+char[A000015(n+1)]`
-/

namespace A071330.P3397940947529172611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307726 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A071330.P3397940947529172611

/-! ## A071330.P4975824967466455877

`A307726(n+1)+char[A000961(n+1)]`
-/

namespace A071330.P4975824967466455877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307726 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A071330.P4975824967466455877

/-! ## A071330.P15921181346015996282

`A319571((A282062(n+1)+1)²)`
-/

namespace A071330.P15921181346015996282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 ((A282062 (n + 1) + 1) ^ 2).toNat

end

end A071330.P15921181346015996282

/-! ## A071330.P17898491187893559930

`A347643(n+1)-A010055(n+1)`
-/

namespace A071330.P17898491187893559930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (n + 1) - A010055 (n + 1)

end

end A071330.P17898491187893559930

/-! ## A071330.P16025968840280169297

`A347762(n+1)-A358635(n+1)`
-/

namespace A071330.P16025968840280169297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 (n + 1) - A358635 (n + 1)

end

end A071330.P16025968840280169297

/-! ## A071330.P4816822276959191237

`A004526(A347762(n+1)+n)-A004526(n)`
-/

namespace A071330.P4816822276959191237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A347762 (n + 1) + (n : ℤ)).toNat - A004526 n

end

end A071330.P4816822276959191237

/-!
# A071331: Numbers having no decomposition into a sum of two prime powers.

The programs for A071331, there is no canonical definition to state claims against.
-/

/-! ## A071331.P5058025613094515336

`eq[C(2, n+2), A282062(n)]`
-/

namespace A071331.P5058025613094515336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071331.P5058025613094515336

/-! ## A071331.P11278853469891499444

`eq[A000007(n), A282062(n)]`
-/

namespace A071331.P11278853469891499444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P11278853469891499444

/-! ## A071331.P15858634505387274879

`eq[A000038(n), A282062(n)]`
-/

namespace A071331.P15858634505387274879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P15858634505387274879

/-! ## A071331.P3991954947934054012

`eq[A010673(n+1), A282062(n)]`
-/

namespace A071331.P3991954947934054012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P3991954947934054012

/-! ## A071331.P14953739151496973124

`eq[C(2, n+2), A071330(A028310(n))]`
-/

namespace A071331.P14953739151496973124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071331.P14953739151496973124

/-! ## A071331.P10711619651252978513

`eq[A000034(n), A016789(A282062(n))]`
-/

namespace A071331.P10711619651252978513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A282062 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P10711619651252978513

/-! ## A071331.P3998865377219479174

`eq[A008683(A008574(n)), A282062(n)]`
-/

namespace A071331.P3998865377219479174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P3998865377219479174

/-! ## A071331.P8763498274649572009

`eq[A010673(n), A016789(A282062(n))]`
-/

namespace A071331.P8763498274649572009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A282062 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P8763498274649572009

/-! ## A071331.P4525437253205229347

`eq[A001844(A282062(n)), A057427(n)]`
-/

namespace A071331.P4525437253205229347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A282062 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P4525437253205229347

/-! ## A071331.P16625823449106083359

`eq[A000035(n), A086161(A282062(n))]`
-/

namespace A071331.P16625823449106083359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A282062 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P16625823449106083359

/-! ## A071331.P9635143321750821499

`eq[A038263(A282062(n)), A056926(n)]`
-/

namespace A071331.P9635143321750821499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038263 (A282062 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P9635143321750821499

/-! ## A071331.P18410490348453584455

`eq[A008683(A035116(n+1)), A282062(n)]`
-/

namespace A071331.P18410490348453584455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A035116 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P18410490348453584455

/-! ## A071331.P16889586485059877900

`eq[A000035(A061142(n+1)), A282062(n)]`
-/

namespace A071331.P16889586485059877900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061142 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P16889586485059877900

/-! ## A071331.P4039436274077112940

`eq[A008487(A282062(n)), A055396(n+1)]`
-/

namespace A071331.P4039436274077112940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008487 (A282062 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071331.P4039436274077112940

/-! ## A071331.P1422536757338790946

`lt[A282062(n), A001222(A025473(n+1))]`
-/

namespace A071331.P1422536757338790946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A025473 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071331.P1422536757338790946

/-!
# A071332: Number of polyiamonds with n cells that tile the plane.

The programs for A071332, there is no canonical definition to state claims against.
-/

/-! ## A071332.P7585151326681898384

`A075224(n+1)+A075223(n+1)`
-/

namespace A071332.P7585151326681898384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075224 (n + 1) + A075223 (n + 1)

end

end A071332.P7585151326681898384

/-! ## A071332.P116102947490851994

`A000577(n+1)-A071333(n+1)`
-/

namespace A071332.P116102947490851994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - A071333 (n + 1)

end

end A071332.P116102947490851994

/-! ## A071332.P14001273426320138823

`A070765(n+1)-A071334(n+1)`
-/

namespace A071332.P14001273426320138823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070765 (n + 1) - A071334 (n + 1)

end

end A071332.P14001273426320138823

/-! ## A071332.P3974648392261682922

`A000577(n+1)+A057428(n)*A071333(n+1)`
-/

namespace A071332.P3974648392261682922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) + A057428 n * A071333 (n + 1)

end

end A071332.P3974648392261682922

/-! ## A071332.P6818795309431009276

`A070765(n+1)+A057428(n)*A071334(n+1)`
-/

namespace A071332.P6818795309431009276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070765 (n + 1) + A057428 n * A071334 (n + 1)

end

end A071332.P6818795309431009276

/-!
# A071333: Number of polyiamonds with n cells that do not tile the plane.

The programs for A071333, there is no canonical definition to state claims against.
-/

/-! ## A071333.P15051745709766450687

`A000577(n+1)-A071332(n+1)`
-/

namespace A071333.P15051745709766450687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - A071332 (n + 1)

end

end A071333.P15051745709766450687

/-! ## A071333.P998867249729978741

`A071334(n+1)+A070764(n+1)`
-/

namespace A071333.P998867249729978741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071334 (n + 1) + A070764 (n + 1)

end

end A071333.P998867249729978741

/-! ## A071333.P10511063715430299925

`A119532(n+1)-Δ[A173271(n)]-A071332(n+1)`
-/

namespace A071333.P10511063715430299925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119532 (n + 1) - (f1 (n + 1) - f1 n) - A071332 (n + 1)

end

end A071333.P10511063715430299925

/-! ## A071333.P16914821196974988476

`A030223(n+1)+A030224(n+1)-A071332(n+1)`
-/

namespace A071333.P16914821196974988476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030223 (n + 1) + (A030224 (n + 1) - A071332 (n + 1))

end

end A071333.P16914821196974988476

/-! ## A071333.P9633014291150060261

`A000577(n+1)+A071334(n+1)-A070765(n+1)`
-/

namespace A071333.P9633014291150060261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) + (A071334 (n + 1) - A070765 (n + 1))

end

end A071333.P9633014291150060261

/-!
# A071334: Number of polyiamonds with n cells without holes that do not tile the plane.

The programs for A071334, there is no canonical definition to state claims against.
-/

/-! ## A071334.P1838175483511668120

`A000577(n+1)-A070764(n+1)-A071332(n+1)`
-/

namespace A071334.P1838175483511668120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - A070764 (n + 1) - A071332 (n + 1)

end

end A071334.P1838175483511668120

/-! ## A071334.P12824904991594782698

`A070765(n+1)-A071332(n+1)`
-/

namespace A071334.P12824904991594782698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070765 (n + 1) - A071332 (n + 1)

end

end A071334.P12824904991594782698

/-! ## A071334.P17899733094722549087

`A071333(n+1)-A070764(n+1)`
-/

namespace A071334.P17899733094722549087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071333 (n + 1) - A070764 (n + 1)

end

end A071334.P17899733094722549087

/-! ## A071334.P15285127310322762451

`A071333(n+1)+A057428(n)*A070764(n+1)`
-/

namespace A071334.P15285127310322762451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071333 (n + 1) + A057428 n * A070764 (n + 1)

end

end A071334.P15285127310322762451

/-! ## A071334.P6845223980278518953

`A000577(n+1)-(A071332(n+1)+A070764(n+1))`
-/

namespace A071334.P6845223980278518953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - (A071332 (n + 1) + A070764 (n + 1))

end

end A071334.P6845223980278518953

/-!
# A071335: Number of partitions of n into sum of at most three primes.

The programs for A071335, there is no canonical definition to state claims against.
-/

/-! ## A071335.P13857071510079954336

`A110654(A002126(n+1))+A068307(n+1)`
-/

namespace A071335.P13857071510079954336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002126 (n + 1)).toNat + A068307 (n + 1)

end

end A071335.P13857071510079954336

/-! ## A071335.P10190989880026694496

`A010051(n+1)+A068307(n+1)+A061358(n+1)`
-/

namespace A071335.P10190989880026694496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A068307 (n + 1) + A061358 (n + 1))

end

end A071335.P10190989880026694496

/-! ## A071335.P1431214171160820674

`A010051(n+1)+A110654(A073610(n+1))+A068307(n+1)`
-/

namespace A071335.P1431214171160820674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A110654 (A073610 (n + 1)).toNat + A068307 (n + 1))

end

end A071335.P1431214171160820674

/-! ## A071335.P4671954605233822684

`A218007(n+1)-A347622(n)`
-/

namespace A071335.P4671954605233822684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218007 (n + 1) - A347622 n

end

end A071335.P4671954605233822684

/-! ## A071335.P13434261101842120496

`A347552(n+1)+A068307(n+1)`
-/

namespace A071335.P13434261101842120496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 (n + 1) + A068307 (n + 1)

end

end A071335.P13434261101842120496

/-! ## A071335.P9751695597373822549

`A347552(n+1)+A083338(xor(n, A060576(n)))`
-/

namespace A071335.P9751695597373822549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 (n + 1) + A083338 (Int.xor (n : ℤ) (A060576 n)).toNat

end

end A071335.P9751695597373822549

/-! ## A071335.P1560093925579089970

`A347552(n+1)+A083338(xor(1, A233583(n+1)))`
-/

namespace A071335.P1560093925579089970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 (n + 1) + A083338 (Int.xor 1 (A233583 (n + 1))).toNat

end

end A071335.P1560093925579089970

/-! ## A071335.P15559751510907643969

`A046926(n+1)+A347552(n+1)+A125688(n+1)`
-/

namespace A071335.P15559751510907643969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (n + 1) + (A347552 (n + 1) + A125688 (n + 1))

end

end A071335.P15559751510907643969

/-! ## A071335.P12313238238510160567

`A347552(n+1)+A083338(A004442(A159075(n)+n))`
-/

namespace A071335.P12313238238510160567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 (n + 1) + A083338 (A004442 (A159075 n + (n : ℤ)).toNat).toNat

end

end A071335.P12313238238510160567

/-! ## A071335.P9042561988814648052

`A257177(n+1)+A010051(n+1)`
-/

namespace A071335.P9042561988814648052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257177 (n + 1) + A010051 (n + 1)

end

end A071335.P9042561988814648052

/-!
# A071336: Number of vertices of Goldberg-Casper-Klug pseudo-icosahedra.

The programs for A071336, the canonical program `A071336.P12527414434795799487` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071336 has offset 1).

The definition of A071336 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071336.P12527414434795799487

`10*A003136(n+2)+2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071336

/-- `10*A003136(n+2)+2` -/
def P12527414434795799487.Spec : Prop :=
  ∀ n, P12527414434795799487.a n = A071336 (n + 1)

theorem P12527414434795799487.correct : P12527414434795799487.Spec := by
  intro n
  simp only [A071336, Nat.add_sub_cancel]

end A071336

/-! ## A071336.P9163816508924497235

`A017341(A003136(n+2)-1)+6`
-/

namespace A071336.P9163816508924497235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (A003136 (n + 2) - 1).toNat + 6

end

end A071336.P9163816508924497235

namespace A071336

/-- `A017341(A003136(n+2)-1)+6` -/
def P9163816508924497235.Spec : Prop :=
  ∀ n, P9163816508924497235.a n = A071336 (n + 1)

end A071336

/-! ## A071336.P16325631658407112669

`A017293(A003136(n+2))`
-/

namespace A071336.P16325631658407112669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (A003136 (n + 2)).toNat

end

end A071336.P16325631658407112669

namespace A071336

/-- `A017293(A003136(n+2))` -/
def P16325631658407112669.Spec : Prop :=
  ∀ n, P16325631658407112669.a n = A071336 (n + 1)

end A071336

/-! ## A071336.P15482966894205304138

`A017293(eq[2, A107279(A004016(n))])`
-/

namespace A071336.P15482966894205304138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A004016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071336.P15482966894205304138

namespace A071336

/-- `A017293(eq[2, A107279(A004016(n))])` -/
def P15482966894205304138.Spec : Prop :=
  ∀ n, P15482966894205304138.a n = A071336 (n + 1)

end A071336

/-! ## A071336.P11398914731976241229

`A016873(A270050(n+2))`
-/

namespace A071336.P11398914731976241229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A270050 (n + 2)).toNat

end

end A071336.P11398914731976241229

namespace A071336

/-- `A016873(A270050(n+2))` -/
def P11398914731976241229.Spec : Prop :=
  ∀ n, P11398914731976241229.a n = A071336 (n + 1)

end A071336

/-! ## A071336.P8317382047146490449

`A090772(A270050(n+2)+1)`
-/

namespace A071336.P8317382047146490449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (A270050 (n + 2) + 1).toNat

end

end A071336.P8317382047146490449

namespace A071336

/-- `A090772(A270050(n+2)+1)` -/
def P8317382047146490449.Spec : Prop :=
  ∀ n, P8317382047146490449.a n = A071336 (n + 1)

end A071336

/-! ## A071336.P11941090710762868916

`A168278(A270248(n+2))`
-/

namespace A071336.P11941090710762868916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168278 (A270248 (n + 2)).toNat

end

end A071336.P11941090710762868916

namespace A071336

/-- `A168278(A270248(n+2))` -/
def P11941090710762868916.Spec : Prop :=
  ∀ n, P11941090710762868916.a n = A071336 (n + 1)

end A071336

/-! ## A071336.P583361148874917955

`A075328(A270248(n+2))`
-/

namespace A071336.P583361148874917955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 (A270248 (n + 2)).toNat

end

end A071336.P583361148874917955

namespace A071336

/-- `A075328(A270248(n+2))` -/
def P583361148874917955.Spec : Prop :=
  ∀ n, P583361148874917955.a n = A071336 (n + 1)

end A071336

/-! ## A071336.P13951330006391437461

`A047221(A270248(n+2)+1)`
-/

namespace A071336.P13951330006391437461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (A270248 (n + 2) + 1).toNat

end

end A071336.P13951330006391437461

namespace A071336

/-- `A047221(A270248(n+2)+1)` -/
def P13951330006391437461.Spec : Prop :=
  ∀ n, P13951330006391437461.a n = A071336 (n + 1)

end A071336

/-! ## A071336.P642662442414070064

`A063197(3*A270248(n+2)+1)+2`
-/

namespace A071336.P642662442414070064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063197 (3 * A270248 (n + 2) + 1).toNat + 2

end

end A071336.P642662442414070064

namespace A071336

/-- `A063197(3*A270248(n+2)+1)+2` -/
def P642662442414070064.Spec : Prop :=
  ∀ n, P642662442414070064.a n = A071336 (n + 1)

end A071336

/-! ## A071336.P2126906670707329643

`A297465(A270672(n+2))`
-/

namespace A071336.P2126906670707329643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297465 (A270672 (n + 2)).toNat

end

end A071336.P2126906670707329643

namespace A071336

/-- `A297465(A270672(n+2))` -/
def P2126906670707329643.Spec : Prop :=
  ∀ n, P2126906670707329643.a n = A071336 (n + 1)

end A071336

/-!
# A071339: a(n) = the maximum number of lattice points touched by an origin-centered circle with radius <= n.

The programs for A071339, there is no canonical definition to state claims against.
-/

/-! ## A071339.P9503053961872957440

`A071385(∑[char[A071384(n+1)]])`
-/

namespace A071339.P9503053961872957440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071384 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071385 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071339.P9503053961872957440

/-! ## A071339.P6659811043438592978

`A329883(∑[char[A071384(n+1)]])`
-/

namespace A071339.P6659811043438592978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071384 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071339.P6659811043438592978

/-! ## A071339.P15281728646974468552

`A004018(A071340(n))`
-/

namespace A071339.P15281728646974468552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A071340 n).toNat

end

end A071339.P15281728646974468552

/-! ## A071339.P1052654645855742790

`A145154(A071340(n)%A000079(n))`
-/

namespace A071339.P1052654645855742790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (Int.tmod (A071340 n) (A000079 n)).toNat

end

end A071339.P1052654645855742790

/-! ## A071339.P13820637113324101786

`A145154(A071340(n))%A027689(n)`
-/

namespace A071339.P13820637113324101786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145154 (A071340 n).toNat) (A027689 n)

end

end A071339.P13820637113324101786

/-! ## A071339.P8343447695477931704

`gcd(A000038(n), A145154(A071340(n)))`
-/

namespace A071339.P8343447695477931704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145154 (A071340 n).toNat)

end

end A071339.P8343447695477931704

/-! ## A071339.P10988056777906389463

`lcm(A000034(n), A145154(A071340(n)))`
-/

namespace A071339.P10988056777906389463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A145154 (A071340 n).toNat)

end

end A071339.P10988056777906389463

/-! ## A071339.P2261948296071792846

`A004018(A071341(n))`
-/

namespace A071339.P2261948296071792846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A071341 n).toNat

end

end A071339.P2261948296071792846

/-! ## A071339.P9330611244086677301

`A104794(2*A071340(n))`
-/

namespace A071339.P9330611244086677301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 * A071340 n).toNat

end

end A071339.P9330611244086677301

/-! ## A071339.P9287536923650239224

`A104794(lcm(2, A071340(n)))`
-/

namespace A071339.P9287536923650239224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (Int.lcm 2 (A071340 n))

end

end A071339.P9287536923650239224

/-!
# A071340: a(n) = least positive r <= n such that the origin-centered circle of radius sqrt(r) touches A071339(n) lattice points.

The programs for A071340, there is no canonical definition to state claims against.
-/

/-! ## A071340.P14561488368934491487

`A071383(∑[char[A071384(n+1)]])`
-/

namespace A071340.P14561488368934491487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071384 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071383 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071340.P14561488368934491487

/-! ## A071340.P2313059361373115573

`A071341(A206913(n)%A071371(n+1))`
-/

namespace A071340.P2313059361373115573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071341 (Int.tmod (A206913 n) (A071371 (n + 1))).toNat

end

end A071340.P2313059361373115573

/-! ## A071340.P11185495948280626256

`A113318(A059867(n+1))-2`
-/

namespace A071340.P11185495948280626256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113318 (A059867 (n + 1)).toNat - 2

end

end A071340.P11185495948280626256

/-! ## A071340.P3584589183741161397

`A071383(A000720(n+2)%A102941(2*(n+2)))`
-/

namespace A071340.P3584589183741161397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071383 (Int.tmod (A000720 (n + 2)) (A102941 (2 * (n + 2)))).toNat

end

end A071340.P3584589183741161397

/-!
# A071341: a(n) = greatest positive r <= n, such that the origin-centered circle of radius sqrt(r) touches A071339(n) lattice points.

The programs for A071341, there is no canonical definition to state claims against.
-/

/-! ## A071341.P5887691519108911897

`A052433(n+5)%A004125(A132264(2*n+3))`
-/

namespace A071341.P5887691519108911897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052433 (n + 5)) (A004125 (A132264 (2 * n + 3)).toNat)

end

end A071341.P5887691519108911897

/-!
# A071342: a(n) = the maximum number of lattice points touched by an origin-centered sphere with radius <= n.

The programs for A071342, there is no canonical definition to state claims against.
-/

/-! ## A071342.P5350612474215428885

`A005875(A071343(n+1))`
-/

namespace A071342.P5350612474215428885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A071343 (n + 1)).toNat

end

end A071342.P5350612474215428885

/-! ## A071342.P12222158463922103189

`A005875(A071344(n+1))`
-/

namespace A071342.P12222158463922103189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A071344 (n + 1)).toNat

end

end A071342.P12222158463922103189

/-! ## A071342.P8749434835117386660

`A014455(2*A071343(n+1))`
-/

namespace A071342.P8749434835117386660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * A071343 (n + 1)).toNat

end

end A071342.P8749434835117386660

/-! ## A071342.P14809145684564600341

`A004015(2*A071344(n+1))`
-/

namespace A071342.P14809145684564600341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * A071344 (n + 1)).toNat

end

end A071342.P14809145684564600341

/-! ## A071342.P5411326084753552370

`A014455(2*A071344(n+1))`
-/

namespace A071342.P5411326084753552370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * A071344 (n + 1)).toNat

end

end A071342.P5411326084753552370

/-! ## A071342.P16189687951855394972

`A004013(4*A071344(n+1))`
-/

namespace A071342.P16189687951855394972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (4 * A071344 (n + 1)).toNat

end

end A071342.P16189687951855394972

/-! ## A071342.P3913003922970696905

`A169783(4*A071344(n+1))`
-/

namespace A071342.P3913003922970696905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (4 * A071344 (n + 1)).toNat

end

end A071342.P3913003922970696905

/-!
# A071345: a(n) is the maximum number of lattice points touched by an origin-centered 4d-sphere with radius <= n.

The programs for A071345, there is no canonical definition to state claims against.
-/

/-! ## A071345.P15945260527005995082

`A000118(A071346(n+1))`
-/

namespace A071345.P15945260527005995082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A071346 (n + 1)).toNat

end

end A071345.P15945260527005995082

/-! ## A071345.P16936007723961407183

`A000118(A071347(n+1))`
-/

namespace A071345.P16936007723961407183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A071347 (n + 1)).toNat

end

end A071345.P16936007723961407183

/-! ## A071345.P8609329174718052903

`abs(A096727(A083929(2*(n+1))+A071346(n+1)))`
-/

namespace A071345.P8609329174718052903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096727 (A083929 (2 * (n + 1)) + A071346 (n + 1)).toNat|

end

end A071345.P8609329174718052903

/-! ## A071345.P5047361048429358638

`A097057(2*A071346(n+1))`
-/

namespace A071345.P5047361048429358638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 (2 * A071346 (n + 1)).toNat

end

end A071345.P5047361048429358638

/-! ## A071345.P16648774782022603070

`A097057(2*A071347(n+1))`
-/

namespace A071345.P16648774782022603070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 (2 * A071347 (n + 1)).toNat

end

end A071345.P16648774782022603070

/-!
# A071346: a(n) = least positive r <= n, such that the origin-centered 4d-sphere of radius sqrt(r) touches A071345(n) lattice points.

The programs for A071346, there is no canonical definition to state claims against.
-/

/-! ## A071346.P851529393462049506

`A071347(n+1)-A037213(A285152(n+1))`
-/

namespace A071346.P851529393462049506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071347 (n + 1) - A037213 (A285152 (n + 1)).toNat

end

end A071346.P851529393462049506

/-! ## A071346.P6576116265978438794

`A071347(n+1)-A025456(A007662(n)*A025456(n))`
-/

namespace A071346.P6576116265978438794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071347 (n + 1) - A025456 (A007662 n * A025456 n).toNat

end

end A071346.P6576116265978438794

/-! ## A071346.P12526872956413685013

`A071347(n+1)-A240467(A048833(n))`
-/

namespace A071346.P12526872956413685013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071347 (n + 1) - A240467 (A048833 n).toNat

end

end A071346.P12526872956413685013

/-! ## A071346.P16317470972105472284

`A071347(n+1)-A010054(A256786(n+1))`
-/

namespace A071346.P16317470972105472284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071347 (n + 1) - A010054 (A256786 (n + 1)).toNat

end

end A071346.P16317470972105472284

/-! ## A071346.P6730491601137017432

`A121373(A072332(n+3))+A071347(n+1)`
-/

namespace A071346.P6730491601137017432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A072332 (n + 3)).toNat + A071347 (n + 1)

end

end A071346.P6730491601137017432

/-!
# A071347: a(n) = greatest positive r <= n, such that the origin-centered 4d-sphere of radius sqrt(r) touches A071345(n) lattice points.

The programs for A071347, there is no canonical definition to state claims against.
-/

/-! ## A071347.P219956887079776707

`or(A000007(A000332(n)), A071346(n+1))`
-/

namespace A071347.P219956887079776707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000332 n).toNat) (A071346 (n + 1))

end

end A071347.P219956887079776707

/-! ## A071347.P12542136073858859795

`or(A036987(A089408(n)), A071346(n+1))`
-/

namespace A071347.P12542136073858859795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (A089408 n).toNat) (A071346 (n + 1))

end

end A071347.P12542136073858859795

/-! ## A071347.P7184215297218986907

`A071346(n+1)+A037213(A285152(n+1))`
-/

namespace A071347.P7184215297218986907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071346 (n + 1) + A037213 (A285152 (n + 1)).toNat

end

end A071347.P7184215297218986907

/-! ## A071347.P12969718154212612125

`A071346(n+1)+A036987(A089408(n)+A071346(n+1))`
-/

namespace A071347.P12969718154212612125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071346 (n + 1) + A036987 (A089408 n + A071346 (n + 1)).toNat

end

end A071347.P12969718154212612125

/-! ## A071347.P6014578742777761280

`A071346(n+1)+A010054(A256786(n+1))`
-/

namespace A071347.P6014578742777761280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071346 (n + 1) + A010054 (A256786 (n + 1)).toNat

end

end A071347.P6014578742777761280

/-!
# A071348: Intersection of A068017 and A068019: numbers n such that both sigma(n) and phi(n) are middle terms between (different) twin prime pairs.

The programs for A071348, there is no canonical definition to state claims against.
-/

/-! ## A071348.P15969735375131205859

`∩[A068017(n+1), A068019(n+1)]`
-/

namespace A071348.P15969735375131205859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071348.P15969735375131205859

/-! ## A071348.P13221623344559573676

`∩[A068017(n+1), A072281(n+1)]`
-/

namespace A071348.P13221623344559573676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071348.P13221623344559573676

/-! ## A071348.P13633058449452582380

`∩[A068019(n+1), A072282(n+1)]`
-/

namespace A071348.P13633058449452582380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071348.P13633058449452582380

/-! ## A071348.P7270741684745966022

`∩[A072282(n+1), A072281(n+2)]`
-/

namespace A071348.P7270741684745966022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071348.P7270741684745966022

/-!
# A071349: Numbers k for which the GCD of the k-th primorial number and its totient (A058250) sets record.

The programs for A071349, there is no canonical definition to state claims against.
-/

/-! ## A071349.P12213184385685596918

`record[A132949(A006530(A002326(n)))]`
-/

namespace A071349.P12213184385685596918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A006530 (A002326 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071349.P12213184385685596918

/-! ## A071349.P5441937252535208037

`record[A132949(A006530(A000010(n+1)))]`
-/

namespace A071349.P5441937252535208037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A006530 (A000010 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071349.P5441937252535208037

/-! ## A071349.P16424438917781256526

`record[A132949(A006530(A006093(n+1)))]`
-/

namespace A071349.P16424438917781256526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A006530 (A006093 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071349.P16424438917781256526

/-! ## A071349.P17656855655754949900

`record[A132949(A014963(A132948(n+1)))]`
-/

namespace A071349.P17656855655754949900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A014963 (A132948 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071349.P17656855655754949900

/-! ## A071349.P17742768714415450200

`record[A132949(A006530(A333787(n+1)))]`
-/

namespace A071349.P17742768714415450200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A006530 (A333787 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071349.P17742768714415450200

/-!
# A071350: Distinct values of A058250; these terms appear first at subscripts listed in A071349.

The programs for A071350, there is no canonical definition to state claims against.
-/

/-! ## A071350.P15955001738221103501

`a(n-1)*A112037(n+1)` with `a(0)=1`
-/

namespace A071350.P15955001738221103501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A112037 (n + 1)

end

end A071350.P15955001738221103501

/-! ## A071350.P15522629075181186948

`record[A058250(A008611(n))]`
-/

namespace A071350.P15522629075181186948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071350.P15522629075181186948

/-! ## A071350.P13270113183207638885

`record[A058250(A028242(n))]`
-/

namespace A071350.P13270113183207638885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071350.P13270113183207638885

/-! ## A071350.P18127231060648962960

`record[A058250(A203814(n))]`
-/

namespace A071350.P18127231060648962960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 (A203814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071350.P18127231060648962960

/-! ## A071350.P1254063475735989214

`A058250(A071349(n+1))`
-/

namespace A071350.P1254063475735989214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 (A071349 (n + 1)).toNat

end

end A071350.P1254063475735989214

/-! ## A071350.P7608431644639066652

`record[A058250(A032742(n+1))]`
-/

namespace A071350.P7608431644639066652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071350.P7608431644639066652

/-! ## A071350.P16585696752165150884

`record[A058250(A008620(xor(1, n)))]`
-/

namespace A071350.P16585696752165150884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 (A008620 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071350.P16585696752165150884

/-! ## A071350.P4975790133230739004

`record[A058250(n-A000196(n)²)]`
-/

namespace A071350.P4975790133230739004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 ((n : ℤ) - A000196 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071350.P4975790133230739004

/-! ## A071350.P10445281090068432283

`record[A058250(A065033(n)-A000196(n))]`
-/

namespace A071350.P10445281090068432283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 (A065033 n - A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071350.P10445281090068432283

/-! ## A071350.P4742178896569569835

`record[A058250(A008620(2*n+1)-A008620(n+1))]`
-/

namespace A071350.P4742178896569569835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 (A008620 (2 * n + 1) - A008620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071350.P4742178896569569835

/-!
# A071351: Numbers n such that both n^4 + 2 and n^4 - 2 are prime.

The programs for A071351, there is no canonical definition to state claims against.
-/

/-! ## A071351.P18339922104857517036

`∩[A090122(n+1), A216974(n+1)]`
-/

namespace A071351.P18339922104857517036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P18339922104857517036

/-! ## A071351.P7528830554315845576

`∩[A075192(n+1), A090122(n+1)]`
-/

namespace A071351.P7528830554315845576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P7528830554315845576

/-! ## A071351.P667002188109176164

`∩[A075192(n+1), A216974(n+1)]`
-/

namespace A071351.P667002188109176164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P667002188109176164

/-! ## A071351.P118287884825442669

`∩[A075192(n+1), A154831(n+1)]`
-/

namespace A071351.P118287884825442669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P118287884825442669

/-! ## A071351.P273561721510218873

`∩[A090122(n+1), A154831(n+1)]`
-/

namespace A071351.P273561721510218873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P273561721510218873

/-! ## A071351.P11931352535116085028

`∩[A154831(n+1), A216974(n+1)]`
-/

namespace A071351.P11931352535116085028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P11931352535116085028

/-! ## A071351.P14006231336705769124

`∩[2*n+1, A090122(n+1)]`
-/

namespace A071351.P14006231336705769124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P14006231336705769124

/-! ## A071351.P8780264985046777586

`filter[A090122(n+1), A379952(#)]`
-/

namespace A071351.P8780264985046777586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A071351.P8780264985046777586

/-! ## A071351.P4070917687619853541

`∩[A090122(n+1), A261524(n+1)]`
-/

namespace A071351.P4070917687619853541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P4070917687619853541

/-! ## A071351.P7426505211990293981

`filter[A090122(n+1), A093719(#)]`
-/

namespace A071351.P7426505211990293981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A071351.P7426505211990293981

/-! ## A071351.P14256746920521872786

`filter[A090122(n+1), A323158(#)]`
-/

namespace A071351.P14256746920521872786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A071351.P14256746920521872786

/-! ## A071351.P17767382408090945820

`filter[A090122(n+1), A324908(#)]`
-/

namespace A071351.P17767382408090945820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A071351.P17767382408090945820

/-! ## A071351.P16646444335326490676

`∩[A090122(n+1), A016945(n)]`
-/

namespace A071351.P16646444335326490676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P16646444335326490676

/-! ## A071351.P1373443792427927462

`∩[A090122(n+1), A357779(n+1)]`
-/

namespace A071351.P1373443792427927462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P1373443792427927462

/-! ## A071351.P8294646745298213008

`∩[A090122(n+1), A277569(n+1)]`
-/

namespace A071351.P8294646745298213008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P8294646745298213008

/-! ## A071351.P6139555506941667067

`∩[A090122(n+1), A259754(n+1)]`
-/

namespace A071351.P6139555506941667067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P6139555506941667067

/-! ## A071351.P8581282033392820587

`∩[A090122(n+1), A261871(n+1)]`
-/

namespace A071351.P8581282033392820587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P8581282033392820587

/-! ## A071351.P681938828159861062

`∩[A090122(n+1), A392368(n+1)]`
-/

namespace A071351.P681938828159861062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P681938828159861062

/-! ## A071351.P6046894755896626817

`∩[A090122(n+1), A136290(n)]`
-/

namespace A071351.P6046894755896626817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071351.P6046894755896626817

/-!
# A071353: First term of the continued fraction expansion of (3/2)^n.

The programs for A071353, the canonical program `A071353.P17742407206952160100` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071353 has offset 1).

The definition of A071353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071353.P17742407206952160100

`floor(record[A135530(n)]/A002380(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071353

/-- `floor(record[A135530(n)]/A002380(n+1))` -/
def P17742407206952160100.Spec : Prop :=
  ∀ n, P17742407206952160100.a n = A071353 (n + 1)

theorem P17742407206952160100.correct : P17742407206952160100.Spec := by
  intro n
  simp only [A071353, Nat.add_sub_cancel]

end A071353

/-! ## A071353.P18339859164644768043

`floor(A000079(n+1)/A002380(n+1))`
-/

namespace A071353.P18339859164644768043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (n + 1) : ℚ) / (A002380 (n + 1) : ℚ)⌋

end

end A071353.P18339859164644768043

namespace A071353

/-- `floor(A000079(n+1)/A002380(n+1))` -/
def P18339859164644768043.Spec : Prop :=
  ∀ n, P18339859164644768043.a n = A071353 (n + 1)

end A071353

/-! ## A071353.P2900767391035058776

`floor(A135530(2*n)/A002380(n+1))`
-/

namespace A071353.P2900767391035058776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135530 (2 * n) : ℚ) / (A002380 (n + 1) : ℚ)⌋

end

end A071353.P2900767391035058776

namespace A071353

/-- `floor(A135530(2*n)/A002380(n+1))` -/
def P2900767391035058776.Spec : Prop :=
  ∀ n, P2900767391035058776.a n = A071353 (n + 1)

end A071353

/-! ## A071353.P16405874800573830261

`floor(Δ[A126646(n)]/A002380(n+1))`
-/

namespace A071353.P16405874800573830261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A002380 (n + 1) : ℚ)⌋

end

end A071353.P16405874800573830261

namespace A071353

/-- `floor(Δ[A126646(n)]/A002380(n+1))` -/
def P16405874800573830261.Spec : Prop :=
  ∀ n, P16405874800573830261.a n = A071353 (n + 1)

end A071353

/-! ## A071353.P11711944493049639833

`floor(Δ[A000918(n+1)]/A002380(n+1))`
-/

namespace A071353.P11711944493049639833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A002380 (n + 1) : ℚ)⌋

end

end A071353.P11711944493049639833

namespace A071353

/-- `floor(Δ[A000918(n+1)]/A002380(n+1))` -/
def P11711944493049639833.Spec : Prop :=
  ∀ n, P11711944493049639833.a n = A071353 (n + 1)

end A071353

/-! ## A071353.P16774615353093795041

`floor(A211227(2*n+1)/A002380(n+1))`
-/

namespace A071353.P16774615353093795041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211227 (2 * n + 1) : ℚ) / (A002380 (n + 1) : ℚ)⌋

end

end A071353.P16774615353093795041

namespace A071353

/-- `floor(A211227(2*n+1)/A002380(n+1))` -/
def P16774615353093795041.Spec : Prop :=
  ∀ n, P16774615353093795041.a n = A071353 (n + 1)

end A071353

/-!
# A071354: Floor(2^n/n) is odd.

The programs for A071354, the canonical program `A071354.P4286494807268156885` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071354 has offset 1).

The definition of A071354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071354.P4286494807268156885

`lt[floor(n/2), A062173(round(acot(n)+n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071354

/-- `lt[floor(n/2), A062173(round(acot(n)+n))]` -/
def P4286494807268156885.Spec : Prop :=
  ∀ n, (P4286494807268156885.a n : ℤ) = A071354 (n + 1)

theorem P4286494807268156885.correct : P4286494807268156885.Spec := by
  intro n
  simp only [A071354, Nat.add_sub_cancel]

end A071354

/-! ## A071354.P5255877295497687663

`filter[A089088(n), A323547(#)]`
-/

namespace A071354.P5255877295497687663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P5255877295497687663

namespace A071354

/-- `filter[A089088(n), A323547(#)]` -/
def P5255877295497687663.Spec : Prop :=
  ∀ n, P5255877295497687663.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P14235962977596908977

`filter[A344180(n), A323547(#)]`
-/

namespace A071354.P14235962977596908977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P14235962977596908977

namespace A071354

/-- `filter[A344180(n), A323547(#)]` -/
def P14235962977596908977.Spec : Prop :=
  ∀ n, P14235962977596908977.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P8889066476199170771

`filter[A002808(n+1), A323547(#)]`
-/

namespace A071354.P8889066476199170771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P8889066476199170771

namespace A071354

/-- `filter[A002808(n+1), A323547(#)]` -/
def P8889066476199170771.Spec : Prop :=
  ∀ n, P8889066476199170771.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P5206572853339435546

`filter[A005451(n+1), A323547(#)]`
-/

namespace A071354.P5206572853339435546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P5206572853339435546

namespace A071354

/-- `filter[A005451(n+1), A323547(#)]` -/
def P5206572853339435546.Spec : Prop :=
  ∀ n, P5206572853339435546.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P11014116158343112618

`filter[A009188(n+1), A323547(#)]`
-/

namespace A071354.P11014116158343112618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P11014116158343112618

namespace A071354

/-- `filter[A009188(n+1), A323547(#)]` -/
def P11014116158343112618.Spec : Prop :=
  ∀ n, P11014116158343112618.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P5648261415353030009

`filter[A018252(n+1), A323547(#)]`
-/

namespace A071354.P5648261415353030009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P5648261415353030009

namespace A071354

/-- `filter[A018252(n+1), A323547(#)]` -/
def P5648261415353030009.Spec : Prop :=
  ∀ n, P5648261415353030009.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P2027296503663647699

`filter[A054027(n+1), A323547(#)]`
-/

namespace A071354.P2027296503663647699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P2027296503663647699

namespace A071354

/-- `filter[A054027(n+1), A323547(#)]` -/
def P2027296503663647699.Spec : Prop :=
  ∀ n, P2027296503663647699.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P10724516742797164582

`filter[A056653(n+1), A323547(#)]`
-/

namespace A071354.P10724516742797164582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P10724516742797164582

namespace A071354

/-- `filter[A056653(n+1), A323547(#)]` -/
def P10724516742797164582.Spec : Prop :=
  ∀ n, P10724516742797164582.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P9903372706595945189

`filter[A057716(n+1), A323547(#)]`
-/

namespace A071354.P9903372706595945189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P9903372706595945189

namespace A071354

/-- `filter[A057716(n+1), A323547(#)]` -/
def P9903372706595945189.Spec : Prop :=
  ∀ n, P9903372706595945189.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P4930168356305331564

`filter[A062289(n+1), A323547(#)]`
-/

namespace A071354.P4930168356305331564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P4930168356305331564

namespace A071354

/-- `filter[A062289(n+1), A323547(#)]` -/
def P4930168356305331564.Spec : Prop :=
  ∀ n, P4930168356305331564.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P4244448509352778561

`filter[A065090(n+1), A323547(#)]`
-/

namespace A071354.P4244448509352778561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P4244448509352778561

namespace A071354

/-- `filter[A065090(n+1), A323547(#)]` -/
def P4244448509352778561.Spec : Prop :=
  ∀ n, P4244448509352778561.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P3684835406517227609

`filter[A275974(n+1), A323547(#)]`
-/

namespace A071354.P3684835406517227609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P3684835406517227609

namespace A071354

/-- `filter[A275974(n+1), A323547(#)]` -/
def P3684835406517227609.Spec : Prop :=
  ∀ n, P3684835406517227609.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P4343043586910081479

`filter[A305980(n+1), A323547(#)]`
-/

namespace A071354.P4343043586910081479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P4343043586910081479

namespace A071354

/-- `filter[A305980(n+1), A323547(#)]` -/
def P4343043586910081479.Spec : Prop :=
  ∀ n, P4343043586910081479.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P9649323747941042852

`filter[A319701(n+1), A323547(#)]`
-/

namespace A071354.P9649323747941042852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P9649323747941042852

namespace A071354

/-- `filter[A319701(n+1), A323547(#)]` -/
def P9649323747941042852.Spec : Prop :=
  ∀ n, P9649323747941042852.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P2350676194528808238

`filter[A319702(n+1), A323547(#)]`
-/

namespace A071354.P2350676194528808238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P2350676194528808238

namespace A071354

/-- `filter[A319702(n+1), A323547(#)]` -/
def P2350676194528808238.Spec : Prop :=
  ∀ n, P2350676194528808238.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P3640416124119474347

`filter[A326139(n+1), A323547(#)]`
-/

namespace A071354.P3640416124119474347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323547 (f1 j).toNat = 1) n)

end

end A071354.P3640416124119474347

namespace A071354

/-- `filter[A326139(n+1), A323547(#)]` -/
def P3640416124119474347.Spec : Prop :=
  ∀ n, P3640416124119474347.a n = A071354 (n + 1)

end A071354

/-! ## A071354.P1300714584121597787

`lt[n, 2*A062173(A028310(n))]`
-/

namespace A071354.P1300714584121597787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062173 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071354.P1300714584121597787

namespace A071354

/-- `lt[n, 2*A062173(A028310(n))]` -/
def P1300714584121597787.Spec : Prop :=
  ∀ n, (P1300714584121597787.a n : ℤ) = A071354 (n + 1)

end A071354

/-! ## A071354.P11229904010063763762

`lt[A008619(n), A062173(n+1)]+1`
-/

namespace A071354.P11229904010063763762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A071354.P11229904010063763762

namespace A071354

/-- `lt[A008619(n), A062173(n+1)]+1` -/
def P11229904010063763762.Spec : Prop :=
  ∀ n, (P11229904010063763762.a n : ℤ) = A071354 (n + 1)

end A071354

/-! ## A071354.P13904111093879237033

`lt[A065033(n), A062173(n+1)]+1`
-/

namespace A071354.P13904111093879237033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A071354.P13904111093879237033

namespace A071354

/-- `lt[A065033(n), A062173(n+1)]+1` -/
def P13904111093879237033.Spec : Prop :=
  ∀ n, (P13904111093879237033.a n : ℤ) = A071354 (n + 1)

end A071354

/-!
# A071355: a(n) = 2*n^2 + 11*n + 12.

The programs for A071355, there is no canonical definition to state claims against.
-/

/-! ## A071355.P2158494110760393542

`(n+3)*(2*(n-1)+3)`
-/

namespace A071355.P2158494110760393542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (2 * ((n : ℤ) - 1) + 3)

end

end A071355.P2158494110760393542

/-! ## A071355.P4299931429928277061

`2*(n-1)²+11*(n-1)+12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071355.P4299931429928277061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1) ^ 2 + 11 * ((n : ℤ) - 1) + 12

end

end A071355.P4299931429928277061

/-! ## A071355.P6480812993316458429

`C(2*(n+2), 2)-3`
-/

namespace A071355.P6480812993316458429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) 2 : ℤ) - 3

end

end A071355.P6480812993316458429

/-! ## A071355.P7819065228579889142

`∑[a(n-1)+4]` with `a(0)=3, a(1)=9`
-/

namespace A071355.P7819065228579889142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071355.P7819065228579889142

/-! ## A071355.P10249141466976019645

`∑[ogf((3+3x-2x^2)/(1-2x+x^2))]`
-/

namespace A071355.P10249141466976019645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071355.P10249141466976019645

/-! ## A071355.P5925851302473698859

`ogf((3+3x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A071355.P5925851302473698859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, -2] [1, -3, 3, -1] n

end

end A071355.P5925851302473698859

/-! ## A071355.P8746834654402024545

`∑[or(1, 4*(n+1))]-2`
-/

namespace A071355.P8746834654402024545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A071355.P8746834654402024545

/-! ## A071355.P13603714040648293233

`∑[xor(1, 4*(n+1))]-2`
-/

namespace A071355.P13603714040648293233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A071355.P13603714040648293233

/-! ## A071355.P4299307573231857660

`record[abs(2*n²-(n+3))]`
-/

namespace A071355.P4299307573231857660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n ^ 2 : ℤ) - (n + 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071355.P4299307573231857660

/-! ## A071355.P1835599291871515607

`or(3, (n+3)*2*n)+n`
-/

namespace A071355.P1835599291871515607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 ((n + 3) * (2 * n)) + n

end

end A071355.P1835599291871515607

/-! ## A071355.P7094222346111293837

`xor(3, (n+3)*2*n)+n`
-/

namespace A071355.P7094222346111293837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 ((n + 3) * (2 * n)) + n

end

end A071355.P7094222346111293837

/-! ## A071355.P4428111808938692356

`floor((2*n+1)/acot(n+3))`
-/

namespace A071355.P4428111808938692356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ)⌋

end

end A071355.P4428111808938692356

/-! ## A071355.P17629362789231586932

`(n+3)*record[lcm(2, n+1)]/2`
-/

namespace A071355.P17629362789231586932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A071355.P17629362789231586932

/-! ## A071355.P12734536471621129946

`floor((2*n+1)/cos(atan(n+3)))`
-/

namespace A071355.P12734536471621129946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.cos (Real.arctan (n + 3 : ℝ))⌋

end

end A071355.P12734536471621129946

/-! ## A071355.P15262532176941726232

`∑[(2*n+1)*2%(2*n+1)+3]`
-/

namespace A071355.P15262532176941726232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 % (2 * n + 1)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071355.P15262532176941726232

/-! ## A071355.P12245181953643833819

`floor(a(n-1)+(a(n-1)+a(n-1)+3)/n)` with `a(0)=3`
-/

namespace A071355.P12245181953643833819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) + (a (n - 1) + 3) : ℚ) / (n : ℚ)⌋

end

end A071355.P12245181953643833819

/-! ## A071355.P9983421112757300079

`A279259(n)%A078371(n)`
-/

namespace A071355.P9983421112757300079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279259 n) (A078371 n)

end

end A071355.P9983421112757300079

/-! ## A071355.P14005827012010662557

`A145923(n)%A056237(n+1)`
-/

namespace A071355.P14005827012010662557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145923 n) (A056237 (n + 1))

end

end A071355.P14005827012010662557

/-! ## A071355.P16470305045177131379

`A209646(n+1)%A235332(n)`
-/

namespace A071355.P16470305045177131379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209646 (n + 1)) (A235332 n)

end

end A071355.P16470305045177131379

/-! ## A071355.P1893028234258525388

`A277385(n+1)%A056237(n+1)`
-/

namespace A071355.P1893028234258525388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277385 (n + 1)) (A056237 (n + 1))

end

end A071355.P1893028234258525388

/-!
# A071356: Expansion of (1 - 2*x - sqrt(1 - 4*x - 4*x^2))/(4*x^2).

The programs for A071356, the canonical program `A071356.P8542230297911165253` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071356 has offset 0).

The definition of A071356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071356.P8542230297911165253

`∑{#}[floor(n/2), C(n, #)*C(n-#, #)*2^(n-#)/(#+1)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071356

/-- `∑{#}[floor(n/2), C(n, #)*C(n-#, #)*2^(n-#)/(#+1)]` -/
def P8542230297911165253.Spec : Prop :=
  ∀ n, P8542230297911165253.a n = (A071356 n : ℚ)

end A071356

/-! ## A071356.P1171289853806843464

`A179190(n+2)/4`
-/

namespace A071356.P1171289853806843464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179190 (n + 2) : ℚ) / 4

end

end A071356.P1171289853806843464

namespace A071356

/-- `A179190(n+2)/4` -/
def P1171289853806843464.Spec : Prop :=
  ∀ n, P1171289853806843464.a n = (A071356 n : ℚ)

end A071356

/-! ## A071356.P17324317487758562947

`A025227(n+2)/2`
-/

namespace A071356.P17324317487758562947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025227 (n + 2) : ℚ) / 2

end

end A071356.P17324317487758562947

namespace A071356

/-- `A025227(n+2)/2` -/
def P17324317487758562947.Spec : Prop :=
  ∀ n, P17324317487758562947.a n = (A071356 n : ℚ)

end A071356

/-! ## A071356.P1058380271103033776

`abs(A100238(n+2)/2)`
-/

namespace A071356.P1058380271103033776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A100238 (n + 2) : ℚ) / 2|

end

end A071356.P1058380271103033776

namespace A071356

/-- `abs(A100238(n+2)/2)` -/
def P1058380271103033776.Spec : Prop :=
  ∀ n, P1058380271103033776.a n = (A071356 n : ℚ)

end A071356

/-! ## A071356.P2003842387244043154

`∑{#}[floor(n/2), C(n, 2*#)*A000108(#)*2^(n-#)]`
-/

namespace A071356.P2003842387244043154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((Nat.choose n (2 * k) : ℤ) * A000108 k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A071356.P2003842387244043154

namespace A071356

/-- `∑{#}[floor(n/2), C(n, 2*#)*A000108(#)*2^(n-#)]` -/
def P2003842387244043154.Spec : Prop :=
  ∀ n, P2003842387244043154.a n = (A071356 n : ℚ)

end A071356

/-! ## A071356.P7850079526954259305

`A306519(n+1)+A306519(n)`
-/

namespace A071356.P7850079526954259305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306519 (n + 1) + A306519 n

end

end A071356.P7850079526954259305

namespace A071356

/-- `A306519(n+1)+A306519(n)` -/
def P7850079526954259305.Spec : Prop :=
  ∀ n, P7850079526954259305.a n = A071356 n

end A071356

/-! ## A071356.P11328073496879900345

`A110681(∑[n])`
-/

namespace A071356.P11328073496879900345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071356.P11328073496879900345

namespace A071356

/-- `A110681(∑[n])` -/
def P11328073496879900345.Spec : Prop :=
  ∀ n, P11328073496879900345.a n = A071356 n

end A071356

/-! ## A071356.P2402510561132297607

`record[A110681(A000217(A025480(n)))]`
-/

namespace A071356.P2402510561132297607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110681 (A000217 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071356.P2402510561132297607

namespace A071356

/-- `record[A110681(A000217(A025480(n)))]` -/
def P2402510561132297607.Spec : Prop :=
  ∀ n, P2402510561132297607.a n = A071356 n

end A071356

/-! ## A071356.P15704790878179154807

`record[A110681(A161680(A008611(n)))]`
-/

namespace A071356.P15704790878179154807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110681 (A161680 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071356.P15704790878179154807

namespace A071356

/-- `record[A110681(A161680(A008611(n)))]` -/
def P15704790878179154807.Spec : Prop :=
  ∀ n, P15704790878179154807.a n = A071356 n

end A071356

/-! ## A071356.P12927741556623913449

`record[A110681(A161680(A057979(n)))]`
-/

namespace A071356.P12927741556623913449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110681 (A161680 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071356.P12927741556623913449

namespace A071356

/-- `record[A110681(A161680(A057979(n)))]` -/
def P12927741556623913449.Spec : Prop :=
  ∀ n, P12927741556623913449.a n = A071356 n

end A071356

/-! ## A071356.P14450800530670599661

`record[A110681(A161680(A344180(n)))]`
-/

namespace A071356.P14450800530670599661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110681 (A161680 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071356.P14450800530670599661

namespace A071356

/-- `record[A110681(A161680(A344180(n)))]` -/
def P14450800530670599661.Spec : Prop :=
  ∀ n, P14450800530670599661.a n = A071356 n

end A071356

/-! ## A071356.P17112501920138760167

`gcd(A000038(n), A110681(A000217(n)))`
-/

namespace A071356.P17112501920138760167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110681 (A000217 n).toNat)

end

end A071356.P17112501920138760167

namespace A071356

/-- `gcd(A000038(n), A110681(A000217(n)))` -/
def P17112501920138760167.Spec : Prop :=
  ∀ n, (P17112501920138760167.a n : ℤ) = A071356 n

end A071356

/-! ## A071356.P17368527873372621248

`record[A110681(A008611(2*n)*A008611(n+1))]`
-/

namespace A071356.P17368527873372621248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110681 (A008611 (2 * n) * A008611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071356.P17368527873372621248

namespace A071356

/-- `record[A110681(A008611(2*n)*A008611(n+1))]` -/
def P17368527873372621248.Spec : Prop :=
  ∀ n, P17368527873372621248.a n = A071356 n

end A071356

/-! ## A071356.P6980986388088775925

`A387401(n)/(n+1)`
-/

namespace A071356.P6980986388088775925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387401 n : ℚ) / (n + 1 : ℚ)

end

end A071356.P6980986388088775925

namespace A071356

/-- `A387401(n)/(n+1)` -/
def P6980986388088775925.Spec : Prop :=
  ∀ n, P6980986388088775925.a n = (A071356 n : ℚ)

end A071356

/-! ## A071356.P13275197269645236759

`2/(n+2)*A119976(n)`
-/

namespace A071356.P13275197269645236759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A119976 n : ℚ)

end

end A071356.P13275197269645236759

namespace A071356

/-- `2/(n+2)*A119976(n)` -/
def P13275197269645236759.Spec : Prop :=
  ∀ n, P13275197269645236759.a n = (A071356 n : ℚ)

end A071356

/-! ## A071356.P4898186804671775641

`A374497(n)/A008805(2*n)`
-/

namespace A071356.P4898186804671775641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374497 n : ℚ) / (A008805 (2 * n) : ℚ)

end

end A071356.P4898186804671775641

namespace A071356

/-- `A374497(n)/A008805(2*n)` -/
def P4898186804671775641.Spec : Prop :=
  ∀ n, P4898186804671775641.a n = (A071356 n : ℚ)

end A071356

/-!
# A071357: Expansion of (1 - 4*x - (1-2*x)*sqrt(1-4*x-4*x^2))/(8*x^3).

The programs for A071357, the canonical program `A071357.P14620908527479147409` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071357 has offset 0).

The definition of A071357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071357.P18212012735700853232

`and(-3, A110681(A000124(n)))`
-/

namespace A071357.P18212012735700853232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A110681 (A000124 n).toNat)

end

end A071357.P18212012735700853232

namespace A071357

/-- `and(-3, A110681(A000124(n)))` -/
def P18212012735700853232.Spec : Prop :=
  ∀ n, P18212012735700853232.a n = A071357 n

end A071357

/-! ## A071357.P14620908527479147409

`(Δ[A071356(n)]-A071356(n))/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071357

/-- `(Δ[A071356(n)]-A071356(n))/2` -/
def P14620908527479147409.Spec : Prop :=
  ∀ n, P14620908527479147409.a n = (A071357 n : ℚ)

end A071357

/-! ## A071357.P4966559695821477659

`A110681(A000124(n))-A000038(n)`
-/

namespace A071357.P4966559695821477659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110681 (A000124 n).toNat - A000038 n

end

end A071357.P4966559695821477659

namespace A071357

/-- `A110681(A000124(n))-A000038(n)` -/
def P4966559695821477659.Spec : Prop :=
  ∀ n, P4966559695821477659.a n = A071357 n

end A071357

/-! ## A071357.P1309877733168369869

`A110681(A000217(n)+1)-A000038(n)`
-/

namespace A071357.P1309877733168369869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110681 (A000217 n + 1).toNat - A000038 n

end

end A071357.P1309877733168369869

namespace A071357

/-- `A110681(A000217(n)+1)-A000038(n)` -/
def P1309877733168369869.Spec : Prop :=
  ∀ n, P1309877733168369869.a n = A071357 n

end A071357

/-! ## A071357.P17397856178338033637

`(1-A000007(n))*A110681(A000124(n))`
-/

namespace A071357.P17397856178338033637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A110681 (A000124 n).toNat

end

end A071357.P17397856178338033637

namespace A071357

/-- `(1-A000007(n))*A110681(A000124(n))` -/
def P17397856178338033637.Spec : Prop :=
  ∀ n, P17397856178338033637.a n = A071357 n

end A071357

/-! ## A071357.P571929136915346396

`A110681(A000124(A000007(n)+n))-A000007(n)`
-/

namespace A071357.P571929136915346396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110681 (A000124 (A000007 n + (n : ℤ)).toNat).toNat - A000007 n

end

end A071357.P571929136915346396

namespace A071357

/-- `A110681(A000124(A000007(n)+n))-A000007(n)` -/
def P571929136915346396.Spec : Prop :=
  ∀ n, P571929136915346396.a n = A071357 n

end A071357

/-! ## A071357.P9423859777271508803

`1/(n+3)*((6*n+8)*a(n-1)-4*(n-1)*a(n-2)-8*(n-2)*a(n-3))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A071357.P9423859777271508803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  1 / (n + 3 : ℚ) * ((6 * n + 8 : ℚ) * a (n - 1) - (4 * ((n : ℤ) - 1) : ℚ) * a (n - 2) - (8 * ((n : ℤ) - 2) : ℚ) * a (n - 3))

end

end A071357.P9423859777271508803

namespace A071357

/-- `1/(n+3)*((6*n+8)*a(n-1)-4*(n-1)*a(n-2)-8*(n-2)*a(n-3))` -/
def P9423859777271508803.Spec : Prop :=
  ∀ n, P9423859777271508803.a n = (A071357 n : ℚ)

end A071357

/-! ## A071357.P12483754187392561748

`A110681(A000124(n))%A006318(n)`
-/

namespace A071357.P12483754187392561748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110681 (A000124 n).toNat) (A006318 n)

end

end A071357.P12483754187392561748

namespace A071357

/-- `A110681(A000124(n))%A006318(n)` -/
def P12483754187392561748.Spec : Prop :=
  ∀ n, P12483754187392561748.a n = A071357 n

end A071357

/-!
# A071359: Expansion of (1-x-sqrt(1-2*x-3*x^2-4*x^3))/(2*x*(1+x)).

The programs for A071359, there is no canonical definition to state claims against.
-/

/-! ## A071359.P4897499378542327866

`A190252(A161680(n))-A000007(n)`
-/

namespace A071359.P4897499378542327866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190252 (A161680 n).toNat - A000007 n

end

end A071359.P4897499378542327866

/-! ## A071359.P16365091102443402903

`A000040(n+1)%2*A190252(A161680(n))`
-/

namespace A071359.P16365091102443402903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A190252 (A161680 n).toNat

end

end A071359.P16365091102443402903

/-! ## A071359.P10129286024820671063

`A001844(n)%(n+1)*A190252(A161680(n))`
-/

namespace A071359.P10129286024820671063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001844 n) (n + 1 : ℤ) * A190252 (A161680 n).toNat

end

end A071359.P10129286024820671063

/-! ## A071359.P306671860735839904

`A143013(n)-A190252(∑[n])`
-/

namespace A071359.P306671860735839904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143013 n - A190252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071359.P306671860735839904

/-! ## A071359.P1785234381874422480

`A000040(∑[n+1])%2+A190252(A161680(n))-1`
-/

namespace A071359.P1785234381874422480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (∑ j ∈ Finset.range (n + 1), f1 j)) 2 + (A190252 (A161680 n).toNat - 1)

end

end A071359.P1785234381874422480

/-! ## A071359.P8182916793063279949

`A272981(n+1)%3*A190252(A161680(n))`
-/

namespace A071359.P8182916793063279949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272981 (n + 1)) 3 * A190252 (A161680 n).toNat

end

end A071359.P8182916793063279949

/-!
# A071360: Smallest n-digit prime with strictly decreasing digits.

The programs for A071360, there is no canonical definition to state claims against.
-/

/-! ## A071360.P8474634013154301159

`A108491(record[A108456(n)])`
-/

namespace A071360.P8474634013154301159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071360.P8474634013154301159

/-! ## A071360.P13303477522881977179

`A108491(A007953(n+1))`
-/

namespace A071360.P13303477522881977179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108491 (A007953 (n + 1)).toNat

end

end A071360.P13303477522881977179

/-! ## A071360.P7508495345960474603

`A108491(A154701(n+1))`
-/

namespace A071360.P7508495345960474603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108491 (A154701 (n + 1)).toNat

end

end A071360.P7508495345960474603

/-! ## A071360.P772422381367290209

`A108491(A178878(n+1))`
-/

namespace A071360.P772422381367290209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108491 (A178878 (n + 1)).toNat

end

end A071360.P772422381367290209

/-!
# A071362: Smallest n-digit prime with strictly increasing digits.

The programs for A071362, there is no canonical definition to state claims against.
-/

/-! ## A071362.P10112911737125700881

`A108471(n+1)+char[8]`
-/

namespace A071362.P10112911737125700881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108471 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A071362.P10112911737125700881

/-! ## A071362.P12092975136123872017

`A108471(gcd((n+1)/and(n+1, -(n+1)), ∑{p}[n+1, (n+1)/#])+n)`
-/

namespace A071362.P12092975136123872017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108471 (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) + n)

end

end A071362.P12092975136123872017

/-! ## A071362.P98036891762385345

`A108471(∑[A364185(n)])`
-/

namespace A071362.P98036891762385345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071362.P98036891762385345

/-! ## A071362.P15241640465904902400

`A108471(record[A108456(n)])`
-/

namespace A071362.P15241640465904902400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108471 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071362.P15241640465904902400

/-!
# A071364: Smallest number with same sequence of exponents in canonical prime factorization as n.

The programs for A071364, there is no canonical definition to state claims against.
-/

/-! ## A071364.P3277670356531621670

`A055932(A077462(n+1))`
-/

namespace A071364.P3277670356531621670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A077462 (n + 1)).toNat

end

end A071364.P3277670356531621670

/-! ## A071364.P11149194428616896748

`A055932(A079616(n+1)+1)`
-/

namespace A071364.P11149194428616896748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A079616 (n + 1) + 1).toNat

end

end A071364.P11149194428616896748

/-! ## A071364.P14450025571874039509

`A292586(n+1)*A396938(n+1)`
-/

namespace A071364.P14450025571874039509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292586 (n + 1) * A396938 (n + 1)

end

end A071364.P14450025571874039509

/-! ## A071364.P16066381602894037832

`A122111(A329607(n+1))`
-/

namespace A071364.P16066381602894037832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A329607 (n + 1)).toNat

end

end A071364.P16066381602894037832

/-! ## A071364.P1634064743301005136

`A279351(A329607(2*n+1-n))`
-/

namespace A071364.P1634064743301005136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279351 (A329607 (2 * n + 1 - n)).toNat

end

end A071364.P1634064743301005136

/-! ## A071364.P14283836623819743544

`A122111(gcd(A086568(n+1), A122111(n+1)))`
-/

namespace A071364.P14283836623819743544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.gcd (A086568 (n + 1)) (A122111 (n + 1)))

end

end A071364.P14283836623819743544

/-! ## A071364.P9439330434140026914

`A238745(A329600(n+1))`
-/

namespace A071364.P9439330434140026914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A329600 (n + 1)).toNat

end

end A071364.P9439330434140026914

/-! ## A071364.P11655376622118513865

`A238745(gcd(A253560(n+1)²², A108951(n+1)))`
-/

namespace A071364.P11655376622118513865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (Int.gcd ((A253560 (n + 1) ^ 2) ^ 2) (A108951 (n + 1)))

end

end A071364.P11655376622118513865

/-! ## A071364.P12496053472352623941

`A137502(A242415(A137502(A242415(n+1))))`
-/

namespace A071364.P12496053472352623941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A242415 (A137502 (A242415 (n + 1)).toNat).toNat).toNat

end

end A071364.P12496053472352623941

/-! ## A071364.P6051761406616758075

`A396938(A064549(n+1))`
-/

namespace A071364.P6051761406616758075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396938 (A064549 (n + 1)).toNat

end

end A071364.P6051761406616758075

/-! ## A071364.P5861649627998393371

`A396938((n+1)*A007947(n+1))`
-/

namespace A071364.P5861649627998393371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396938 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A071364.P5861649627998393371

/-! ## A071364.P16666081942927984686

`A396938((n+1)²)/A396938(n+1)`
-/

namespace A071364.P16666081942927984686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396938 ((n + 1) ^ 2) : ℚ) / (A396938 (n + 1) : ℚ)

end

end A071364.P16666081942927984686

/-!
# A071365: Numbers k such that A071364(k) <> A046523(k).

The programs for A071365, there is no canonical definition to state claims against.
-/

/-! ## A071365.P7565855280435158511

`∪[A056808(n+1), A071366(n+1)]`
-/

namespace A071365.P7565855280435158511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071365.P7565855280435158511

/-! ## A071365.P4270568168697436018

`lt[A089247(n+1), n]+1`
-/

namespace A071365.P4270568168697436018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071365.P4270568168697436018

/-! ## A071365.P12142563362374546799

`A020725(lt[A089247(n+1), n])`
-/

namespace A071365.P12142563362374546799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A071365.P12142563362374546799

/-! ## A071365.P12486344297972125673

`A065475(lt[A089247(n+1), n])`
-/

namespace A071365.P12486344297972125673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A071365.P12486344297972125673

/-! ## A071365.P13621653221707428914

`A153152(lt[A089247(n+1), n])`
-/

namespace A071365.P13621653221707428914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A071365.P13621653221707428914

/-! ## A071365.P15788004353289653348

`lt[A046523(n+1), A071364(n+1)]+1`
-/

namespace A071365.P15788004353289653348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A071365.P15788004353289653348

/-! ## A071365.P11151621201362691279

`∪[A332831(n+1), A360252(n+1)]`
-/

namespace A071365.P11151621201362691279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071365.P11151621201362691279

/-! ## A071365.P756335011671481559

`lt[A089247(A233583(n+1)), n]`
-/

namespace A071365.P756335011671481559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071365.P756335011671481559

/-!
# A071366: Numbers n such that A046523(n) <> A071364(n) and A071364(n) <> n.

The programs for A071366, there is no canonical definition to state claims against.
-/

/-! ## A071366.P6656907464577850092

`∩[A071365(n+1), A368089(n+1)]`
-/

namespace A071366.P6656907464577850092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071366.P6656907464577850092

/-! ## A071366.P11839816475692312886

`∩[A071365(n+1), A080259(n+1)]`
-/

namespace A071366.P11839816475692312886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071366.P11839816475692312886

/-! ## A071366.P12985275769384131736

`∩[A392291(n+1), A398442(n+1)]`
-/

namespace A071366.P12985275769384131736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071366.P12985275769384131736

/-!
# A071367: Numbers n such that n+0, n+1, n+2, n+3 and n+4 are, in some order, 1 * a prime, 2 * a prime, 3 * a prime, 4 * a prime and 5 * a prime.

The programs for A071367, there is no canonical definition to state claims against.
-/

/-! ## A071367.P12848442370566751782

`A350699(n+4)%A350699(A346295(n))`
-/

namespace A071367.P12848442370566751782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350699 (n + 4)) (A350699 (A346295 n).toNat)

end

end A071367.P12848442370566751782

/-!
# A071368: Numbers k such that k+0, k+1, k+2, k+3, k+4, and k+5 are, in some order, 1 * a prime, 2 * a prime, ... and 6 * a prime.

The programs for A071368, there is no canonical definition to state claims against.
-/

/-! ## A071368.P11182072533891695483

`A350769(n+9)`
-/

namespace A071368.P11182072533891695483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350769 (n + 9)

end

end A071368.P11182072533891695483

/-!
# A071369: Numbers n such that n+0, n+1, ... and n+6 are, in some order, 1 * a prime, 2 * a prime, ... and 7 * a prime.

The programs for A071369, there is no canonical definition to state claims against.
-/

/-! ## A071369.P3905571483055512588

`A350773(n+7)`
-/

namespace A071369.P3905571483055512588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350773 (n + 7)

end

end A071369.P3905571483055512588

/-! ## A071369.P2546712286833049639

`record[A350773(A072283(n))]`
-/

namespace A071369.P2546712286833049639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350773 (A072283 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071369.P2546712286833049639

/-!
# A071370: Numbers k such that k+0, k+1, ... and k+7 are, in some order, 1 * a prime, 2 * a prime, ... and 8 * a prime.

The programs for A071370, there is no canonical definition to state claims against.
-/

/-! ## A071370.P10576075585499968057

`A350854(n+8)`
-/

namespace A071370.P10576075585499968057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350854 (n + 8)

end

end A071370.P10576075585499968057

/-!
# A071374: 0 iff n is of the form 4^a*(8k+7), otherwise 1.

The programs for A071374, there is no canonical definition to state claims against.
-/

/-! ## A071374.P453531118986297488

`1-A072401(n)`
-/

namespace A071374.P453531118986297488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072401 n

end

end A071374.P453531118986297488

/-! ## A071374.P8950377705537934522

`char[A000378(n+1)]`
-/

namespace A071374.P8950377705537934522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A071374.P8950377705537934522

/-! ## A071374.P16149062251409925895

`floor(atan(A005875(n)+1))`
-/

namespace A071374.P16149062251409925895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A005875 n + 1 : ℝ)⌋

end

end A071374.P16149062251409925895

/-! ## A071374.P10226271837513177319

`floor(atan(A246631(n)+1))`
-/

namespace A071374.P10226271837513177319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A246631 n + 1 : ℝ)⌋

end

end A071374.P10226271837513177319

/-! ## A071374.P1031292738450525489

`char[comp[A004215(n+1)]]`
-/

namespace A071374.P1031292738450525489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A071374.P1031292738450525489

/-! ## A071374.P5369936427389430458

`A057427(A000164(n))`
-/

namespace A071374.P5369936427389430458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000164 n).toNat

end

end A071374.P5369936427389430458

/-! ## A071374.P5319658413966397014

`A000007(A064873(n))`
-/

namespace A071374.P5319658413966397014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A064873 n).toNat

end

end A071374.P5319658413966397014

/-! ## A071374.P6786856803322779565

`A019425(A387658(n))`
-/

namespace A071374.P6786856803322779565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A387658 n).toNat

end

end A071374.P6786856803322779565

/-! ## A071374.P14260411068365307240

`A229062(A262678(n))`
-/

namespace A071374.P14260411068365307240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A262678 n).toNat

end

end A071374.P14260411068365307240

/-! ## A071374.P3431793859258092802

`A002828(A000164(n)²)`
-/

namespace A071374.P3431793859258092802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A000164 n ^ 2).toNat

end

end A071374.P3431793859258092802

/-! ## A071374.P7708073248326271722

`A062157(A005875(n))²`
-/

namespace A071374.P7708073248326271722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A005875 n).toNat ^ 2

end

end A071374.P7708073248326271722

/-! ## A071374.P2818337237020513562

`A035377(A064873(n)²)`
-/

namespace A071374.P2818337237020513562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (A064873 n ^ 2).toNat

end

end A071374.P2818337237020513562

/-! ## A071374.P899110217243098947

`A057427(A375202(n)+1)`
-/

namespace A071374.P899110217243098947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A375202 n + 1).toNat

end

end A071374.P899110217243098947

/-! ## A071374.P8384671877946579176

`1-A000007(A002102(n))`
-/

namespace A071374.P8384671877946579176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A002102 n).toNat

end

end A071374.P8384671877946579176

/-! ## A071374.P3146205106303262371

`A000164(n*A072401(n))`
-/

namespace A071374.P3146205106303262371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 ((n : ℤ) * A072401 n).toNat

end

end A071374.P3146205106303262371

/-! ## A071374.P8334670632639471282

`A004013(n*A072401(n))`
-/

namespace A071374.P8334670632639471282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 ((n : ℤ) * A072401 n).toNat

end

end A071374.P8334670632639471282

/-! ## A071374.P12152385829815516275

`A010052(n*A072401(n))`
-/

namespace A071374.P12152385829815516275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) * A072401 n).toNat

end

end A071374.P12152385829815516275

/-! ## A071374.P13753747705047986995

`A229062(n*A072401(n))`
-/

namespace A071374.P13753747705047986995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 ((n : ℤ) * A072401 n).toNat

end

end A071374.P13753747705047986995

/-! ## A071374.P8892386321761005629

`A229062(n*A064873(n))`
-/

namespace A071374.P8892386321761005629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 ((n : ℤ) * A064873 n).toNat

end

end A071374.P8892386321761005629

/-! ## A071374.P18175145219228515815

`1-A000007(A004015(2*n))`
-/

namespace A071374.P18175145219228515815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A004015 (2 * n)).toNat

end

end A071374.P18175145219228515815

/-!
# A071375: Smallest m such that sum of squarefree divisors of m equals n; a(n) = 0 if no solution to A048250(x) = n exists.

The programs for A071375, there is no canonical definition to state claims against.
-/

/-! ## A071375.P2916800478796653057

`A051444(n+1)*A294905(A086931(n))`
-/

namespace A071375.P2916800478796653057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1) * A294905 (A086931 n).toNat

end

end A071375.P2916800478796653057

/-! ## A071375.P4185767926891444520

`A051444(n+1)*A121373(A325830(n))`
-/

namespace A071375.P4185767926891444520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1) * A121373 (A325830 n).toNat

end

end A071375.P4185767926891444520

/-! ## A071375.P10667207009266028602

`floor(A051444(n+1)/A344026(A327859(n)))`
-/

namespace A071375.P10667207009266028602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051444 (n + 1) : ℚ) / (A344026 (A327859 n).toNat : ℚ)⌋

end

end A071375.P10667207009266028602

/-! ## A071375.P5845398989426778707

`and(A051444(n+1), A051444(∏{e}[n, n*#+1]))`
-/

namespace A071375.P5845398989426778707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051444 (n + 1)) (A051444 (∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1)))

end

end A071375.P5845398989426778707

/-! ## A071375.P2934108132896565607

`A051444(n+1)*A214263(A337667(n))`
-/

namespace A071375.P2934108132896565607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1) * A214263 (A337667 n).toNat

end

end A071375.P2934108132896565607

/-!
# A071377: Number of positive integers <= n which are the sum of 3 squares.

The programs for A071377, the canonical program `A071377.P2407551919736960090` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071377 has offset 0).

The definition of A071377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071377.P2407551919736960090

`∑[char[lt[((n+1)/4^val(n+1, 4))%8, 7]]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071377

/-- `∑[char[lt[((n+1)/4^val(n+1, 4))%8, 7]]]` -/
def P2407551919736960090.Spec : Prop :=
  ∀ n, (P2407551919736960090.a n : ℤ) = A071377 n

theorem P2407551919736960090.correct : P2407551919736960090.Spec := by
  intro n
  simp only [A071377]

end A071377

/-! ## A071377.P15378166241572777990

`∑[1-A072401(n+1)]`
-/

namespace A071377.P15378166241572777990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071377.P15378166241572777990

namespace A071377

/-- `∑[1-A072401(n+1)]` -/
def P15378166241572777990.Spec : Prop :=
  ∀ n, P15378166241572777990.a n = A071377 n

end A071377

/-! ## A071377.P13770492302655689287

`∑[floor(atan(A005875(n+1)))]`
-/

namespace A071377.P13770492302655689287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A005875 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071377.P13770492302655689287

namespace A071377

/-- `∑[floor(atan(A005875(n+1)))]` -/
def P13770492302655689287.Spec : Prop :=
  ∀ n, P13770492302655689287.a n = A071377 n

end A071377

/-! ## A071377.P6779742118592160625

`∑[char[A000378(n+1)-1]]`
-/

namespace A071377.P6779742118592160625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071377.P6779742118592160625

namespace A071377

/-- `∑[char[A000378(n+1)-1]]` -/
def P6779742118592160625.Spec : Prop :=
  ∀ n, (P6779742118592160625.a n : ℤ) = A071377 n

end A071377

/-! ## A071377.P13944881375674413038

`∑[char[comp[A004215(n+1)]-1]]`
-/

namespace A071377.P13944881375674413038
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071377.P13944881375674413038

namespace A071377

/-- `∑[char[comp[A004215(n+1)]-1]]` -/
def P13944881375674413038.Spec : Prop :=
  ∀ n, (P13944881375674413038.a n : ℤ) = A071377 n

end A071377

/-! ## A071377.P16204328111368456270

`∑[A071374(n+1)]`
-/

namespace A071377.P16204328111368456270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071377.P16204328111368456270

namespace A071377

/-- `∑[A071374(n+1)]` -/
def P16204328111368456270.Spec : Prop :=
  ∀ n, P16204328111368456270.a n = A071377 n

end A071377

/-! ## A071377.P15692485478079831290

`∑[floor(atan(A246631(n+1)))]`
-/

namespace A071377.P15692485478079831290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A246631 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071377.P15692485478079831290

namespace A071377

/-- `∑[floor(atan(A246631(n+1)))]` -/
def P15692485478079831290.Spec : Prop :=
  ∀ n, P15692485478079831290.a n = A071377 n

end A071377

/-! ## A071377.P18437314856556515272

`∑[A099408(n+1)%2]`
-/

namespace A071377.P18437314856556515272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099408 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071377.P18437314856556515272

namespace A071377

/-- `∑[A099408(n+1)%2]` -/
def P18437314856556515272.Spec : Prop :=
  ∀ n, P18437314856556515272.a n = A071377 n

end A071377

/-!
# A071378: Largest proper divisor of n^3.

The programs for A071378, the canonical program `A071378.P3895163893505551730` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071378 has offset 2).

The definition of A071378 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071378.P5139476322771833990

`(n+2)^3/A020639(n+2)`
-/

namespace A071378.P5139476322771833990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℚ) / (A020639 (n + 2) : ℚ)

end

end A071378.P5139476322771833990

namespace A071378

/-- `(n+2)^3/A020639(n+2)` -/
def P5139476322771833990.Spec : Prop :=
  ∀ n, P5139476322771833990.a n = (A071378 (n + 2) : ℚ)

end A071378

/-! ## A071378.P3895163893505551730

`A032742((n+2)^3)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A071378

/-- `A032742((n+2)^3)` -/
def P3895163893505551730.Spec : Prop :=
  ∀ n, P3895163893505551730.a n = A071378 (n + 2)

theorem P3895163893505551730.correct : P3895163893505551730.Spec := by
  intro n
  simp only [A071378, Nat.add_sub_cancel]

end A071378

/-! ## A071378.P17348436649790108619

`(n+2)*A070935(n+2)`
-/

namespace A071378.P17348436649790108619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A070935 (n + 2)

end

end A071378.P17348436649790108619

namespace A071378

/-- `(n+2)*A070935(n+2)` -/
def P17348436649790108619.Spec : Prop :=
  ∀ n, P17348436649790108619.a n = A071378 (n + 2)

end A071378

/-! ## A071378.P5698835658075733703

`(n+2)²*A032742(n+2)`
-/

namespace A071378.P5698835658075733703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A032742 (n + 2)

end

end A071378.P5698835658075733703

namespace A071378

/-- `(n+2)²*A032742(n+2)` -/
def P5698835658075733703.Spec : Prop :=
  ∀ n, P5698835658075733703.a n = A071378 (n + 2)

end A071378

/-! ## A071378.P15652423638847555082

`A032742(n+2)*A032742(n+2)*A285109(n+2)`
-/

namespace A071378.P15652423638847555082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 2) * A032742 (n + 2) * A285109 (n + 2)

end

end A071378.P15652423638847555082

namespace A071378

/-- `A032742(n+2)*A032742(n+2)*A285109(n+2)` -/
def P15652423638847555082.Spec : Prop :=
  ∀ n, P15652423638847555082.a n = A071378 (n + 2)

end A071378

/-! ## A071378.P6206021546164183554

`(n+2)²*A054576(2*(n+2))`
-/

namespace A071378.P6206021546164183554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A054576 (2 * (n + 2))

end

end A071378.P6206021546164183554

namespace A071378

/-- `(n+2)²*A054576(2*(n+2))` -/
def P6206021546164183554.Spec : Prop :=
  ∀ n, P6206021546164183554.a n = A071378 (n + 2)

end A071378

/-! ## A071378.P5879825859302677233

`(n+2)*A063041((n+2)²)`
-/

namespace A071378.P5879825859302677233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A063041 ((n + 2) ^ 2)

end

end A071378.P5879825859302677233

namespace A071378

/-- `(n+2)*A063041((n+2)²)` -/
def P5879825859302677233.Spec : Prop :=
  ∀ n, P5879825859302677233.a n = A071378 (n + 2)

end A071378

/-! ## A071378.P4410473837112272782

`A070935((n+2)²)/(n+2)`
-/

namespace A071378.P4410473837112272782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070935 ((n + 2) ^ 2) : ℚ) / (n + 2 : ℚ)

end

end A071378.P4410473837112272782

namespace A071378

/-- `A070935((n+2)²)/(n+2)` -/
def P4410473837112272782.Spec : Prop :=
  ∀ n, P4410473837112272782.a n = (A071378 (n + 2) : ℚ)

end A071378

/-!
# A071379: a(n) = (1/e) * Sum_{k>=0} ((k+4)!/k!)^(n-1)/k!.

The programs for A071379, there is no canonical definition to state claims against.
-/

/-! ## A071379.P4952024590529915919

`A283153(A028310(n))`
-/

namespace A071379.P4952024590529915919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283153 (A028310 n).toNat

end

end A071379.P4952024590529915919

/-! ## A071379.P15337326651663765558

`A283153(1-A057427(n)+n)`
-/

namespace A071379.P15337326651663765558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283153 (1 - A057427 n + (n : ℤ)).toNat

end

end A071379.P15337326651663765558

/-! ## A071379.P5228811447010714258

`A283153(n^(A053182(n+1)%2))`
-/

namespace A071379.P5228811447010714258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283153 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A053182 (n + 1)) 2 : ℤ))).toNat

end

end A071379.P5228811447010714258

/-! ## A071379.P14373531513142840248

`A283153(n^(A283107(n+1)%2))`
-/

namespace A071379.P14373531513142840248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283153 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A283107 (n + 1)) 2 : ℤ))).toNat

end

end A071379.P14373531513142840248

/-! ## A071379.P4193686175515891160

`A090210(A167614(n+2)+1)`
-/

namespace A071379.P4193686175515891160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090210 (A167614 (n + 2) + 1).toNat

end

end A071379.P4193686175515891160

/-!
# A071383: Squared radii of the circles around (0,0) that contain record numbers of lattice points.

The programs for A071383, there is no canonical definition to state claims against.
-/

/-! ## A071383.P13942578720524316677

`record[A071340(∑{d}[n, #])]`
-/

namespace A071383.P13942578720524316677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071340 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071383.P13942578720524316677

/-! ## A071383.P10651237082606864323

`record[A071340(∑{p}[n, #])]`
-/

namespace A071383.P10651237082606864323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071340 (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071383.P10651237082606864323

/-! ## A071383.P2879067083665458060

`A071340(A071384(n+1))`
-/

namespace A071383.P2879067083665458060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071340 (A071384 (n + 1)).toNat

end

end A071383.P2879067083665458060

/-! ## A071383.P12916834504784914180

`A071340(A019274(n+2))`
-/

namespace A071383.P12916834504784914180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071340 (A019274 (n + 2)).toNat

end

end A071383.P12916834504784914180

/-! ## A071383.P8464338190652340957

`A071340(A094588(n))`
-/

namespace A071383.P8464338190652340957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071340 (A094588 n).toNat

end

end A071383.P8464338190652340957

/-!
# A071384: Radii of the circles around (0,0) that contain record numbers of lattice points, rounded up to the next integer.

The programs for A071384, there is no canonical definition to state claims against.
-/

/-! ## A071384.P9527538847393287114

`ceil(A071383(n+1)^(1/2))`
-/

namespace A071384.P9527538847393287114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071383 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌉

end

end A071384.P9527538847393287114

/-! ## A071384.P842971087483938895

`ceil(sqrt(A071383(n+1)))`
-/

namespace A071384.P842971087483938895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A071383 (n + 1) : ℝ)⌉

end

end A071384.P842971087483938895

/-! ## A071384.P11021221315344902035

`A135034(A071383(n+1))`
-/

namespace A071384.P11021221315344902035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A071383 (n + 1)).toNat

end

end A071384.P11021221315344902035

/-! ## A071384.P14596816578848747903

`A000196(A071383(n+1)+A001891(n))`
-/

namespace A071384.P14596816578848747903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A071383 (n + 1) + A001891 n).toNat

end

end A071384.P14596816578848747903

/-! ## A071384.P17203908603236798680

`A000194(A071383(n+1)+A071341(n))`
-/

namespace A071384.P17203908603236798680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A071383 (n + 1) + A071341 n).toNat

end

end A071384.P17203908603236798680

/-!
# A071385: Number of points (i,j) on the circumference of a circle around (0,0) with squared radius A071383(n).

The programs for A071385, there is no canonical definition to state claims against.
-/

/-! ## A071385.P16484365369644767787

`A004018(A071383(n+1))`
-/

namespace A071385.P16484365369644767787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A071383 (n + 1)).toNat

end

end A071385.P16484365369644767787

/-! ## A071385.P17745967091804859867

`A280560(n)²*A344470(A028310(n))`
-/

namespace A071385.P17745967091804859867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n ^ 2 * A344470 (A028310 n).toNat

end

end A071385.P17745967091804859867

/-! ## A071385.P10301527459088435208

`A040001(2*n)²*A344470(A028310(n))`
-/

namespace A071385.P10301527459088435208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) ^ 2 * A344470 (A028310 n).toNat

end

end A071385.P10301527459088435208

/-! ## A071385.P1918936267661074884

`(char[A062050(n+1)]+1)²*A344470(A028310(n))`
-/

namespace A071385.P1918936267661074884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) ^ 2 : ℕ) : ℤ) * A344470 (A028310 n).toNat

end

end A071385.P1918936267661074884

/-! ## A071385.P1791216176887102715

`A088377(A145154(n))*A344470(A028310(n))`
-/

namespace A071385.P1791216176887102715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (A145154 n).toNat * A344470 (A028310 n).toNat

end

end A071385.P1791216176887102715

/-! ## A071385.P4456318258457019769

`A020639(A004277(n))²*A344470(A028310(n))`
-/

namespace A071385.P4456318258457019769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat ^ 2 * A344470 (A028310 n).toNat

end

end A071385.P4456318258457019769

/-! ## A071385.P1141332085474426669

`A088377(A000132(n))*A344470(A028310(n))`
-/

namespace A071385.P1141332085474426669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (A000132 n).toNat * A344470 (A028310 n).toNat

end

end A071385.P1141332085474426669

/-!
# A071386: Numbers k such that the cardinality of the set of solutions to phi(x) = k is odd.

The programs for A071386, there is no canonical definition to state claims against.
-/

/-! ## A071386.P10221598611798183986

`record[A000034(A143422(n+1))*A002202(n+1)]`
-/

namespace A071386.P10221598611798183986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A143422 (n + 1)).toNat * A002202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071386.P10221598611798183986

/-! ## A071386.P5879878461924003029

`record[2*(n+1)*A000035(A032446(n+1))]`
-/

namespace A071386.P5879878461924003029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A000035 (A032446 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071386.P5879878461924003029

/-! ## A071386.P14071290488405974218

`record[A000035(A032446(n+1))*A005843(n+1)]`
-/

namespace A071386.P14071290488405974218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A032446 (n + 1)).toNat * A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071386.P14071290488405974218

/-! ## A071386.P9723665074927169374

`record[A000035(A032446(n+1))*A256420(n+1)]`
-/

namespace A071386.P9723665074927169374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A032446 (n + 1)).toNat * A256420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071386.P9723665074927169374

/-! ## A071386.P16468229027945940770

`eq[1, A014197(n+2)%2]+2`
-/

namespace A071386.P16468229027945940770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014197 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A071386.P16468229027945940770

/-! ## A071386.P7756432593600295851

`eq[1, and(1, A014197(n+1))]+1`
-/

namespace A071386.P7756432593600295851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014197 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071386.P7756432593600295851

/-! ## A071386.P1406833704302948450

`lt[A319308(A014197(n+1)), 1]+1`
-/

namespace A071386.P1406833704302948450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319308 (A014197 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071386.P1406833704302948450

/-! ## A071386.P17674876358606504712

`eq[4, A307853(n+1)%A040013(n)]`
-/

namespace A071386.P17674876358606504712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307853 (n + 1)) (A040013 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071386.P17674876358606504712

/-! ## A071386.P10094511564571748923

`eq[4, gcd(A040063(n), A307853(n+1))]`
-/

namespace A071386.P10094511564571748923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040063 n) (A307853 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071386.P10094511564571748923

/-!
# A071387: Smallest number k for which the set of solutions to phi(x) = k has 2n-1 entries.

The programs for A071387, there is no canonical definition to state claims against.
-/

/-! ## A071387.P8595258959332360898

`A007374(comp[2*(n+1)]+2)%∑{d}[2*(n+1), ((n+1)%#)^9]`
-/

namespace A071387.P8595258959332360898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007374 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)) ((∑ d ∈ Nat.divisors (f2 n), ((n + 1) % d) ^ 9 : ℕ) : ℤ)

end

end A071387.P8595258959332360898

/-! ## A071387.P9779100653360548796

`A014573(Δ[n²])`
-/

namespace A071387.P9779100653360548796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A071387.P9779100653360548796

/-! ## A071387.P12742595778117600523

`lcm(2, A014573(2*n+1))`
-/

namespace A071387.P12742595778117600523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A014573 (2 * n + 1))

end

end A071387.P12742595778117600523

/-! ## A071387.P13180115910746564452

`and(-1, A014573((n+1)²-n²))`
-/

namespace A071387.P13180115910746564452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A014573 ((n + 1) ^ 2 - n ^ 2))

end

end A071387.P13180115910746564452

/-! ## A071387.P6435046349634510085

`A014573(2*n+1)%A209262(n)`
-/

namespace A071387.P6435046349634510085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014573 (2 * n + 1)) (A209262 n)

end

end A071387.P6435046349634510085

/-! ## A071387.P10388803729218766689

`and(A014573(2*n+1), A057428(n))`
-/

namespace A071387.P10388803729218766689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014573 (2 * n + 1)) (A057428 n)

end

end A071387.P10388803729218766689

/-! ## A071387.P206584291039789108

`A014573(2*n+1)+A000007(n+1)`
-/

namespace A071387.P206584291039789108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 (2 * n + 1) + A000007 (n + 1)

end

end A071387.P206584291039789108

/-! ## A071387.P8819268236247585103

`A014573(2*n+1)+A000038(n+1)`
-/

namespace A071387.P8819268236247585103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 (2 * n + 1) + A000038 (n + 1)

end

end A071387.P8819268236247585103

/-! ## A071387.P18259546775403686085

`A014573(2*n+1)*A014573(A319048(2*n+1))`
-/

namespace A071387.P18259546775403686085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 (2 * n + 1) * A014573 (A319048 (2 * n + 1)).toNat

end

end A071387.P18259546775403686085

/-!
# A071388: Numbers k such that the cardinality of the set of solutions to phi(x) = k is a prime.

The programs for A071388, there is no canonical definition to state claims against.
-/

/-! ## A071388.P1088989043117954981

`record[A002202(n+1)*A010051(A058277(n+1))]`
-/

namespace A071388.P1088989043117954981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1) * A010051 (A058277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071388.P1088989043117954981

/-! ## A071388.P13291124818577400866

`eq[1, A105700(A014197(n+1))]+1`
-/

namespace A071388.P13291124818577400866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A014197 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071388.P13291124818577400866

/-! ## A071388.P1974419950569402634

`eq[A093178(n), A220400(A307853(n+1))]`
-/

namespace A071388.P1974419950569402634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A307853 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071388.P1974419950569402634

/-! ## A071388.P15636882353868161651

`eq[A220400(A307853(n+1))², A091090(n)]`
-/

namespace A071388.P15636882353868161651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A307853 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071388.P15636882353868161651

/-! ## A071388.P8713035852502948692

`eq[A057979(n+2), A220400(A307853(n+1))]`
-/

namespace A071388.P8713035852502948692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A307853 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071388.P8713035852502948692

/-!
# A071389: Least number m such that cardinality of InvPhi(m) = prime(n).

The programs for A071389, there is no canonical definition to state claims against.
-/

/-! ## A071389.P12416380727381471034

`A007374(p?[comp[n²]])`
-/

namespace A071389.P12416380727381471034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A071389.P12416380727381471034

/-! ## A071389.P6173434808031823042

`A007374(∑{d}[p?[n%3+n], #]-1)`
-/

namespace A071389.P6173434808031823042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (∑ d ∈ Nat.divisors (f1 n), d - 1)

end

end A071389.P6173434808031823042

/-! ## A071389.P182415658621218177

`∏{p}[4*p?[round(8*n/7)], A007374(#)]`
-/

namespace A071389.P182415658621218177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007374 p

end

end A071389.P182415658621218177

/-! ## A071389.P12629181047584062906

`A007374(A000040(n+1))`
-/

namespace A071389.P12629181047584062906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (A000040 (n + 1)).toNat

end

end A071389.P12629181047584062906

/-! ## A071389.P14883493946455679552

`A007374(A008578(n+2))`
-/

namespace A071389.P14883493946455679552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (A008578 (n + 2)).toNat

end

end A071389.P14883493946455679552

/-! ## A071389.P4267572250404362082

`A007374(A182986(n+2))`
-/

namespace A071389.P4267572250404362082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (A182986 (n + 2)).toNat

end

end A071389.P4267572250404362082

/-! ## A071389.P6602797721890348388

`A007374(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A071389.P6602797721890348388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A071389.P6602797721890348388

/-! ## A071389.P2919944777826218427

`A007374(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A071389.P2919944777826218427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A071389.P2919944777826218427

/-!
# A071390: Least number m such that sigma(m) - phi(m) = n, or 0 if no such m exists.

The programs for A071390, there is no canonical definition to state claims against.
-/

/-! ## A071390.P11533245954608425291

`A007320(3*n+5)*A135993(A075163(2*n+5))`
-/

namespace A071390.P11533245954608425291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007320 (3 * n + 5) * A135993 (A075163 (2 * n + 5)).toNat

end

end A071390.P11533245954608425291

/-!
# A071391: Least number m such that sigma(m) + phi(m) = n or 0 if no such number exists.

The programs for A071391, there is no canonical definition to state claims against.
-/

/-! ## A071391.P11516308869194753516

`A001221(A000079(n))*A029833(A288344(n))`
-/

namespace A071391.P11516308869194753516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 n).toNat * A029833 (A288344 n).toNat

end

end A071391.P11516308869194753516

/-! ## A071391.P17740384860485708501

`A029833(A288344(n))%A000203(A000051(n))`
-/

namespace A071391.P17740384860485708501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029833 (A288344 n).toNat) (A000203 (A000051 n).toNat)

end

end A071391.P17740384860485708501

/-! ## A071391.P10113272579759450404

`A010059(A278627(n+2))*A120565(n)`
-/

namespace A071391.P10113272579759450404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A278627 (n + 2)).toNat * A120565 n

end

end A071391.P10113272579759450404

/-! ## A071391.P5241033493107243619

`A055086(n)*A288640(A117538(n+4))`
-/

namespace A071391.P5241033493107243619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n * A288640 (A117538 (n + 4)).toNat

end

end A071391.P5241033493107243619

/-! ## A071391.P18245552515009280475

`A203945(∑[A144332((26*n-3*(-1)^n+11)/4)])`
-/

namespace A071391.P18245552515009280475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144332 (SequenceMachineLib.roundAway (((26 * n : ℤ) - 3 * (-1) ^ n + 11 : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203945 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071391.P18245552515009280475

/-!
# A071394: Numbers n divisible by pi(n) [A057809] with prime pi(n); i.e., largest prime factor of n equals pi(n).

The programs for A071394, there is no canonical definition to state claims against.
-/

/-! ## A071394.P9494141508012812083

`A068902(A256394(n+1))`
-/

namespace A071394.P9494141508012812083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (A256394 (n + 1)).toNat

end

end A071394.P9494141508012812083

/-! ## A071394.P5488835158152249135

`A068902(p?[record[A087267(n+1)]])`
-/

namespace A071394.P5488835158152249135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071394.P5488835158152249135

/-!
# A071395: Primitive abundant numbers (abundant numbers all of whose proper divisors are deficient numbers).

The programs for A071395, there is no canonical definition to state claims against.
-/

/-! ## A071395.P11086398900616770272

`∪[A002975(n+1), A306987(n+1)]`
-/

namespace A071395.P11086398900616770272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071395.P11086398900616770272

/-! ## A071395.P14993535204456409605

`∩[A006039(n+1), A091191(n+1)]`
-/

namespace A071395.P14993535204456409605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071395.P14993535204456409605

/-! ## A071395.P6133576630555823073

`∩[A006039(n+1), A198471(n+1)]`
-/

namespace A071395.P6133576630555823073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071395.P6133576630555823073

/-! ## A071395.P7566389691338195954

`filter[A006039(n+1), A294930(#)]`
-/

namespace A071395.P7566389691338195954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A071395.P7566389691338195954

/-! ## A071395.P3734990076707147189

`filter[A091191(n+1), A341619(#)]`
-/

namespace A071395.P3734990076707147189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)

end

end A071395.P3734990076707147189

/-! ## A071395.P11310956723384308687

`filter[A181487(n+1), A341619(#)]`
-/

namespace A071395.P11310956723384308687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)

end

end A071395.P11310956723384308687

/-! ## A071395.P13916087804543853374

`filter[A198471(n+1), A341619(#)]`
-/

namespace A071395.P13916087804543853374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)

end

end A071395.P13916087804543853374

/-! ## A071395.P8342674474797387325

`∩[A006039(n+1), A181487(n+1)]`
-/

namespace A071395.P8342674474797387325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071395.P8342674474797387325

/-! ## A071395.P3527722403518404091

`record[A006039(n+2)*A341508(A006039(n+2))]`
-/

namespace A071395.P3527722403518404091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 2) * A341508 (A006039 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071395.P3527722403518404091

/-! ## A071395.P8110966242760856263

`filter[A381546(n+1), A341619(#)]`
-/

namespace A071395.P8110966242760856263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)

end

end A071395.P8110966242760856263

/-! ## A071395.P2726157252827208833

`∩[A006039(n+1), A381546(n+1)]`
-/

namespace A071395.P2726157252827208833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071395.P2726157252827208833

/-! ## A071395.P16230288139579068348

`filter[A204825(n+1), A341619(#)]`
-/

namespace A071395.P16230288139579068348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)

end

end A071395.P16230288139579068348

/-! ## A071395.P9027549919172710867

`∩[A006039(n+1), A204825(n+1)]`
-/

namespace A071395.P9027549919172710867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071395.P9027549919172710867

/-! ## A071395.P10759229915896363013

`filter[A005101(n+1), A341619(#)]`
-/

namespace A071395.P10759229915896363013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)

end

end A071395.P10759229915896363013

/-! ## A071395.P11971517303157804019

`∩[A005101(n+1), A006039(n+1)]`
-/

namespace A071395.P11971517303157804019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071395.P11971517303157804019

/-! ## A071395.P14502836625096899816

`filter[A383488(n+1), A341619(#)]`
-/

namespace A071395.P14502836625096899816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)

end

end A071395.P14502836625096899816

/-! ## A071395.P16141724933987258303

`∩[A006039(n+1), A383488(n+1)]`
-/

namespace A071395.P16141724933987258303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071395.P16141724933987258303

/-! ## A071395.P2848595459153840702

`filter[A006039(n+1), A294937(#)]`
-/

namespace A071395.P2848595459153840702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A071395.P2848595459153840702

/-! ## A071395.P12482710619030086903

`filter[A344980(n+1), A341619(#)]`
-/

namespace A071395.P12482710619030086903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)

end

end A071395.P12482710619030086903

/-! ## A071395.P14096547830380190424

`∩[A006039(n+1), A344980(n+1)]`
-/

namespace A071395.P14096547830380190424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071395.P14096547830380190424

/-!
# A071396: Rounded total surface area of a regular octahedron with edge length n.

The programs for A071396, the canonical program `A071396.P12393238637168195905` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071396 has offset 0).

The definition of A071396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071396.P12393238637168195905

`round(2*n²*sqrt(3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071396

/-- `round(2*n²*sqrt(3))` -/
def P12393238637168195905.Spec : Prop :=
  ∀ n, P12393238637168195905.a n = A071396 n

theorem P12393238637168195905.correct : P12393238637168195905.Spec := by
  intro n
  simp only [A071396]

end A071396

/-! ## A071396.P4526146966983886895

`floor(A293410(2*n)/2)`
-/

namespace A071396.P4526146966983886895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293410 (2 * n) : ℚ) / 2⌋

end

end A071396.P4526146966983886895

namespace A071396

/-- `floor(A293410(2*n)/2)` -/
def P4526146966983886895.Spec : Prop :=
  ∀ n, P4526146966983886895.a n = A071396 n

end A071396

/-! ## A071396.P18147149287557525964

`ceil(A171972(2*n)/2)`
-/

namespace A071396.P18147149287557525964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171972 (2 * n) : ℚ) / 2⌉

end

end A071396.P18147149287557525964

namespace A071396

/-- `ceil(A171972(2*n)/2)` -/
def P18147149287557525964.Spec : Prop :=
  ∀ n, P18147149287557525964.a n = A071396 n

end A071396

/-! ## A071396.P7119598625496996148

`round(A171972(2*n)/2)%A008658(n)`
-/

namespace A071396.P7119598625496996148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A171972 (2 * n) : ℚ) / 2)) (A008658 n)

end

end A071396.P7119598625496996148

namespace A071396

/-- `round(A171972(2*n)/2)%A008658(n)` -/
def P7119598625496996148.Spec : Prop :=
  ∀ n, P7119598625496996148.a n = A071396 n

end A071396

/-! ## A071396.P7412779694385681618

`abs(A009001(2*n))*round(A171972(2*n)/2)`
-/

namespace A071396.P7412779694385681618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009001 (2 * n)| * SequenceMachineLib.roundAway ((A171972 (2 * n) : ℚ) / 2)

end

end A071396.P7412779694385681618

namespace A071396

/-- `abs(A009001(2*n))*round(A171972(2*n)/2)` -/
def P7412779694385681618.Spec : Prop :=
  ∀ n, P7412779694385681618.a n = A071396 n

end A071396

/-! ## A071396.P7031682448551834702

`A010054(A000040(n+3))+round(A171972(2*n)/2)`
-/

namespace A071396.P7031682448551834702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000040 (n + 3)).toNat + SequenceMachineLib.roundAway ((A171972 (2 * n) : ℚ) / 2)

end

end A071396.P7031682448551834702

namespace A071396

/-- `A010054(A000040(n+3))+round(A171972(2*n)/2)` -/
def P7031682448551834702.Spec : Prop :=
  ∀ n, P7031682448551834702.a n = A071396 n

end A071396

/-! ## A071396.P4400703217060259641

`A198268(n²)`
-/

namespace A071396.P4400703217060259641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198268 (n ^ 2)

end

end A071396.P4400703217060259641

namespace A071396

/-- `A198268(n²)` -/
def P4400703217060259641.Spec : Prop :=
  ∀ n, P4400703217060259641.a n = A071396 n

end A071396

/-! ## A071396.P432758303999013904

`or(char[1], A198268(n^2))`
-/

namespace A071396.P432758303999013904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A198268 (n ^ 2))

end

end A071396.P432758303999013904

namespace A071396

/-- `or(char[1], A198268(n^2))` -/
def P432758303999013904.Spec : Prop :=
  ∀ n, P432758303999013904.a n = A071396 n

end A071396

/-! ## A071396.P14084716112064836814

`xor(1, xor(1, A198268(n*n)))`
-/

namespace A071396.P14084716112064836814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A198268 (n * n)))

end

end A071396.P14084716112064836814

namespace A071396

/-- `xor(1, xor(1, A198268(n*n)))` -/
def P14084716112064836814.Spec : Prop :=
  ∀ n, P14084716112064836814.a n = A071396 n

end A071396

/-! ## A071396.P7235323295405144987

`A198268(n^2)%A033575(n)`
-/

namespace A071396.P7235323295405144987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198268 (n ^ 2)) (A033575 n)

end

end A071396.P7235323295405144987

namespace A071396

/-- `A198268(n^2)%A033575(n)` -/
def P7235323295405144987.Spec : Prop :=
  ∀ n, P7235323295405144987.a n = A071396 n

end A071396

/-! ## A071396.P7226009926650373415

`A178334(n)*A198268(A000290(n))`
-/

namespace A071396.P7226009926650373415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A198268 (A000290 n).toNat

end

end A071396.P7226009926650373415

namespace A071396

/-- `A178334(n)*A198268(A000290(n))` -/
def P7226009926650373415.Spec : Prop :=
  ∀ n, P7226009926650373415.a n = A071396 n

end A071396

/-!
# A071397: Rounded total surface area of a regular dodecahedron with edge length n.

The programs for A071397, the canonical program `A071397.P7697405912600638367` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071397 has offset 0).

The definition of A071397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071397.P7697405912600638367

`round(3*n²*sqrt(25+10*sqrt(5)))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071397

/-- `round(3*n²*sqrt(25+10*sqrt(5)))` -/
def P7697405912600638367.Spec : Prop :=
  ∀ n, P7697405912600638367.a n = A071397 n

theorem P7697405912600638367.correct : P7697405912600638367.Spec := by
  intro n
  simp only [A071397]

end A071397

/-! ## A071397.P18429101200604814361

`A060144(A005897(3*n)^A362611(2*n+1))`
-/

namespace A071397.P18429101200604814361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (SequenceMachineLib.roundAway ((A005897 (3 * n) : ℚ) ^ (A362611 (2 * n + 1) : ℤ))).toNat

end

end A071397.P18429101200604814361

namespace A071397

/-- `A060144(A005897(3*n)^A362611(2*n+1))` -/
def P18429101200604814361.Spec : Prop :=
  ∀ n, P18429101200604814361.a n = A071397 n

end A071397

/-!
# A071398: Rounded total surface area of a regular icosahedron with edge length n.

The programs for A071398, the canonical program `A071398.P12537645114860663724` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071398 has offset 0).

The definition of A071398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071398.P12537645114860663724

`round(5*n²*sqrt(3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071398

/-- `round(5*n²*sqrt(3))` -/
def P12537645114860663724.Spec : Prop :=
  ∀ n, P12537645114860663724.a n = A071398 n

theorem P12537645114860663724.correct : P12537645114860663724.Spec := by
  intro n
  simp only [A071398]

end A071398

/-! ## A071398.P14377488079374334705

`A022847(5*n²)`
-/

namespace A071398.P14377488079374334705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (5 * n ^ 2)

end

end A071398.P14377488079374334705

namespace A071398

/-- `A022847(5*n²)` -/
def P14377488079374334705.Spec : Prop :=
  ∀ n, P14377488079374334705.a n = A071398 n

theorem P14377488079374334705.correct : P14377488079374334705.Spec := by
  intro n
  simp only [A071398, Nat.add_sub_cancel, A071398.P14377488079374334705.a, A071398.P12537645114860663724.a, A022847, A022847.P11285214133989731691.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A071398

/-! ## A071398.P3896517574110640657

`ceil(14*n²*A299906(∑[n])/ϕ)`
-/

namespace A071398.P3896517574110640657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((14 * n ^ 2 : ℤ) * A299906 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) / Real.goldenRatio⌉

end

end A071398.P3896517574110640657

namespace A071398

/-- `ceil(14*n²*A299906(∑[n])/ϕ)` -/
def P3896517574110640657.Spec : Prop :=
  ∀ n, P3896517574110640657.a n = A071398 n

end A071398

/-! ## A071398.P13898365801437352145

`A008617(A017390(n)+1+n)`
-/

namespace A071398.P13898365801437352145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A017390 n + 1 + (n : ℤ)).toNat

end

end A071398.P13898365801437352145

namespace A071398

/-- `A008617(A017390(n)+1+n)` -/
def P13898365801437352145.Spec : Prop :=
  ∀ n, P13898365801437352145.a n = A071398 n

end A071398

/-! ## A071398.P18187021352884603473

`A008617(A008593(n)²+n+1)`
-/

namespace A071398.P18187021352884603473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A008593 n ^ 2 + (n + 1 : ℤ)).toNat

end

end A071398.P18187021352884603473

namespace A071398

/-- `A008617(A008593(n)²+n+1)` -/
def P18187021352884603473.Spec : Prop :=
  ∀ n, P18187021352884603473.a n = A071398 n

end A071398

/-!
# A071399: Rounded volume of a regular tetrahedron with edge length n.

The programs for A071399, the canonical program `A071399.P1893784392322432552` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071399 has offset 0).

The definition of A071399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071399.P1893784392322432552

`round(n^3*sqrt(2)/12)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071399

/-- `round(n^3*sqrt(2)/12)` -/
def P1893784392322432552.Spec : Prop :=
  ∀ n, P1893784392322432552.a n = A071399 n

theorem P1893784392322432552.correct : P1893784392322432552.Spec := by
  intro n
  simp only [A071399]

end A071399

/-! ## A071399.P5599199640379632247

`A000194(A008763(n²))`
-/

namespace A071399.P5599199640379632247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A008763 (n ^ 2)).toNat

end

end A071399.P5599199640379632247

namespace A071399

/-- `A000194(A008763(n²))` -/
def P5599199640379632247.Spec : Prop :=
  ∀ n, P5599199640379632247.a n = A071399 n

end A071399

/-! ## A071399.P8285893496909456910

`∑[∑[A283982(A171844(n+1))]]`
-/

namespace A071399.P8285893496909456910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283982 (A171844 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071399.P8285893496909456910

namespace A071399

/-- `∑[∑[A283982(A171844(n+1))]]` -/
def P8285893496909456910.Spec : Prop :=
  ∀ n, P8285893496909456910.a n = A071399 n

end A071399

/-! ## A071399.P2004300759006454859

`∑[∑[A061394(A320951(n))]]`
-/

namespace A071399.P2004300759006454859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (A320951 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071399.P2004300759006454859

namespace A071399

/-- `∑[∑[A061394(A320951(n))]]` -/
def P2004300759006454859.Spec : Prop :=
  ∀ n, P2004300759006454859.a n = A071399 n

end A071399

