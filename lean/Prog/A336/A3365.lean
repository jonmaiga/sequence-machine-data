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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
# A336500: Number of divisors d|n with distinct prime multiplicities such that the quotient n/d also has distinct prime multiplicities.

The programs for A336500, there is no canonical definition to state claims against.
-/

/-! ## A336500.P1078569711544478369

`∑{d}[n+1, A351564(#)*A351564((n+1)/#)]`
-/

namespace A336500.P1078569711544478369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351564 d * A351564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336500.P1078569711544478369

/-! ## A336500.P16074072842214565439

`and(A005187(A046523(n+1)), A085082(n+1))`
-/

namespace A336500.P16074072842214565439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005187 (A046523 (n + 1)).toNat) (A085082 (n + 1))

end

end A336500.P16074072842214565439

/-! ## A336500.P12483445582265457413

`A307296(A336422(n+1))%A087228(n+1)`
-/

namespace A336500.P12483445582265457413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307296 (A336422 (n + 1)).toNat) (A087228 (n + 1))

end

end A336500.P12483445582265457413

/-! ## A336500.P550291065963266786

`A335516(A320389(n+1))-A028422(A292586(n+1))`
-/

namespace A336500.P550291065963266786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 (A320389 (n + 1)).toNat - A028422 (A292586 (n + 1)).toNat

end

end A336500.P550291065963266786

/-! ## A336500.P2766070495270930084

`A307296(A336422(n+1))+A184946(A072405(n))`
-/

namespace A336500.P2766070495270930084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307296 (A336422 (n + 1)).toNat + A184946 (A072405 n).toNat

end

end A336500.P2766070495270930084

/-!
# A336502: Partial sums of A057003.

The programs for A336502, there is no canonical definition to state claims against.
-/

/-! ## A336502.P3868752484244543967

`∑[(n+1)!*C(∑[n+1], n+1)]`
-/

namespace A336502.P3868752484244543967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336502.P3868752484244543967

/-! ## A336502.P1806488047187088049

`∑[C(∑[n+1], n+1)*∏[n+1]]`
-/

namespace A336502.P1806488047187088049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1) * (∏ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336502.P1806488047187088049

/-! ## A336502.P1023244190608996811

`∑[A057003(n+1)]`
-/

namespace A336502.P1023244190608996811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336502.P1023244190608996811

/-! ## A336502.P2202203692745023045

`A227364(∑[n+1])`
-/

namespace A336502.P2202203692745023045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336502.P2202203692745023045

/-! ## A336502.P3244694913546656267

`∑[A061431(n+1)*A093453(n+1)]`
-/

namespace A336502.P3244694913546656267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061431 (n + 1) * A093453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336502.P3244694913546656267

/-!
# A336503: 2-practical numbers: numbers m such that the polynomial x^m - 1 has a divisor of every degree <= m in the prime field F_2[x].

The programs for A336503, there is no canonical definition to state claims against.
-/

/-! ## A336503.P3097350983938376225

`lt[C(A270273(n+1), A323155(n+1)), 1]+1`
-/

namespace A336503.P3097350983938376225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A270273 (n + 1)).toNat (A323155 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336503.P3097350983938376225

/-!
# A336504: 3-practical numbers: numbers m such that the polynomial x^m - 1 has a divisor of every degree <= m in the prime field F_3[x].

The programs for A336504, there is no canonical definition to state claims against.
-/

/-! ## A336504.P6431716045683063957

`lt[A104580(A232989(n)), A143866(2*n+5)]`
-/

namespace A336504.P6431716045683063957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (A232989 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143866 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336504.P6431716045683063957

/-! ## A336504.P3368835323811801060

`A050361(A048578(n))+A014121(n+1)`
-/

namespace A336504.P3368835323811801060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A048578 n).toNat + A014121 (n + 1)

end

end A336504.P3368835323811801060

/-! ## A336504.P7982661263038277811

`eq[A024493(A227083(n+1)), A126760(n)]`
-/

namespace A336504.P7982661263038277811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (A227083 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336504.P7982661263038277811

/-! ## A336504.P13639052112890970760

`lt[A232989(n), A340854(A182801(n+1))]`
-/

namespace A336504.P13639052112890970760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (A182801 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336504.P13639052112890970760

/-! ## A336504.P5285216800395972786

`A382876(A326534(2*(n+2)))+A014121(n+1)`
-/

namespace A336504.P5285216800395972786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382876 (A326534 (2 * (n + 2))).toNat + A014121 (n + 1)

end

end A336504.P5285216800395972786

/-!
# A336505: 5-practical numbers: numbers m such that the polynomial x^m - 1 has a divisor of every degree <= m in the prime field F_5[x].

The programs for A336505, there is no canonical definition to state claims against.
-/

/-! ## A336505.P7270875034415213179

`∩[A064481(n+1), A243903(n+1)]`
-/

namespace A336505.P7270875034415213179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336505.P7270875034415213179

/-! ## A336505.P12756983685787589571

`A343958(A193536(n))+A342726(n+1)`
-/

namespace A336505.P12756983685787589571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343958 (A193536 n).toNat + A342726 (n + 1)

end

end A336505.P12756983685787589571

/-! ## A336505.P1326957109600573492

`A342726(n+1)+A151667(A289218(n+1))`
-/

namespace A336505.P1326957109600573492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342726 (n + 1) + A151667 (A289218 (n + 1)).toNat

end

end A336505.P1326957109600573492

/-!
# A336506: Lambda-practical numbers: numbers that are p-practical for every rational prime p.

The programs for A336506, there is no canonical definition to state claims against.
-/

/-! ## A336506.P18330197072624542600

`∪[A260653(n+1), A336507(n+1)]`
-/

namespace A336506.P18330197072624542600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336506.P18330197072624542600

/-! ## A336506.P14819446275876480550

`A118759(A336508(n+1))`
-/

namespace A336506.P14819446275876480550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A336508 (n + 1)).toNat

end

end A336506.P14819446275876480550

/-!
# A336507: Lambda-practical numbers (A336506) that are not phi-practical (A260653).

The programs for A336507, there is no canonical definition to state claims against.
-/

/-! ## A336507.P9394696867802937833

`A347123(A172344(n+1))`
-/

namespace A336507.P9394696867802937833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347123 (A172344 (n + 1)).toNat

end

end A336507.P9394696867802937833

/-!
# A336508: Numbers m such that every number 1 <= k <= s is the sum of a subset of the set {lambda(d) : d | m}, where s is the total sum of the set and lambda is the Carmichael lambda function (A002322).

The programs for A336508, there is no canonical definition to state claims against.
-/

/-! ## A336508.P9261478162262917458

`∩[A130734(n+1), A336506(n+1)]`
-/

namespace A336508.P9261478162262917458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336508.P9261478162262917458

/-!
# A336509: Even squarefree numbers k such that d_{i+1}/d_i < 2 for all 1 < i < tau(k) - 1, where 1 = d_1 < d_2 < ... < d_tau(k) = k are the divisors of k, and tau(k) is their number (A000005).

The programs for A336509, there is no canonical definition to state claims against.
-/

/-! ## A336509.P5876828147327154291

`∩[A052287(n+1), A265501(n+1)]`
-/

namespace A336509.P5876828147327154291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336509.P5876828147327154291

/-! ## A336509.P17845203755727231885

`∩[A052287(n+1), A380328(n+1)]`
-/

namespace A336509.P17845203755727231885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336509.P17845203755727231885

/-! ## A336509.P3125519169628460923

`∩[A052287(n+1), A381740(n+1)]`
-/

namespace A336509.P3125519169628460923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336509.P3125519169628460923

/-! ## A336509.P15932352945437990559

`∩[A052287(n+1), A389463(n+1)]`
-/

namespace A336509.P15932352945437990559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336509.P15932352945437990559

/-! ## A336509.P4934331110103046342

`∩[A039956(n+1), A052287(n+1)]`
-/

namespace A336509.P4934331110103046342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336509.P4934331110103046342

/-! ## A336509.P8491063947905834944

`∩[A052287(n+1), A392262(n+1)]`
-/

namespace A336509.P8491063947905834944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336509.P8491063947905834944

/-! ## A336509.P13031710514607925023

`∩[A052287(n+1), A395270(n+1)]`
-/

namespace A336509.P13031710514607925023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336509.P13031710514607925023

/-! ## A336509.P7949141066237186568

`∩[A052287(n+1), A068919(n+1)]`
-/

namespace A336509.P7949141066237186568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336509.P7949141066237186568

/-! ## A336509.P5352973570723386871

`∩[A052287(n+1), A324972(n+1)]`
-/

namespace A336509.P5352973570723386871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336509.P5352973570723386871

/-! ## A336509.P11802837996042677294

`∩[A052287(n+1), A072901(n+1)]`
-/

namespace A336509.P11802837996042677294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336509.P11802837996042677294

/-!
# A336510: a(n) = Sum_{p | A055204(n)} 2^(pi(p) - 1).

The programs for A336510, the canonical program `A336510.P14148724725539657442` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336510 has offset 1).

The definition of A336510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336510.P14148724725539657442

`xor(a(n-1), A248663(n+1))` with `a(0)=0`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336510

/-- `xor(a(n-1), A248663(n+1))` -/
def P14148724725539657442.Spec : Prop :=
  ∀ n, P14148724725539657442.a n = A336510 (n + 1)

theorem P14148724725539657442.correct : P14148724725539657442.Spec := by
  intro n
  simp only [A336510, Nat.add_sub_cancel]

end A336510

/-! ## A336510.P1094064052573975388

`xor(a(n-1), A048675(A007913(n+1)))` with `a(0)=0`
-/

namespace A336510.P1094064052573975388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A048675 (A007913 (n + 1)).toNat)

end

end A336510.P1094064052573975388

namespace A336510

/-- `xor(a(n-1), A048675(A007913(n+1)))` -/
def P1094064052573975388.Spec : Prop :=
  ∀ n, P1094064052573975388.a n = A336510 (n + 1)

end A336510

/-! ## A336510.P11225304413832131968

`xor(a(n-1), A334872(2*2*A007913(n+1)))` with `a(0)=0`
-/

namespace A336510.P11225304413832131968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A334872 (2 * (2 * A007913 (n + 1))).toNat)

end

end A336510.P11225304413832131968

namespace A336510

/-- `xor(a(n-1), A334872(2*2*A007913(n+1)))` -/
def P11225304413832131968.Spec : Prop :=
  ∀ n, P11225304413832131968.a n = A336510 (n + 1)

end A336510

/-! ## A336510.P3703600553226336043

`xor(a(n-1), A285330((n+1)/A008833(n+1)))` with `a(0)=0`
-/

namespace A336510.P3703600553226336043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A285330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat)

end

end A336510.P3703600553226336043

namespace A336510

/-- `xor(a(n-1), A285330((n+1)/A008833(n+1)))` -/
def P3703600553226336043.Spec : Prop :=
  ∀ n, P3703600553226336043.a n = A336510 (n + 1)

end A336510

/-! ## A336510.P2130022439019607440

`xor(a(n-1), A331740((n+1)/A008833(n+1)))` with `a(0)=0`
-/

namespace A336510.P2130022439019607440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A331740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat)

end

end A336510.P2130022439019607440

namespace A336510

/-- `xor(a(n-1), A331740((n+1)/A008833(n+1)))` -/
def P2130022439019607440.Spec : Prop :=
  ∀ n, P2130022439019607440.a n = A336510 (n + 1)

end A336510

/-! ## A336510.P14383572929109576720

`xor(a(n-1), A334109(A055491(n+1)))` with `a(0)=0, a(1)=1`
-/

namespace A336510.P14383572929109576720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (a (n - 1)) (A334109 (A055491 (n + 1)).toNat)

end

end A336510.P14383572929109576720

namespace A336510

/-- `xor(a(n-1), A334109(A055491(n+1)))` -/
def P14383572929109576720.Spec : Prop :=
  ∀ n, P14383572929109576720.a n = A336510 (n + 1)

end A336510

/-! ## A336510.P4145809634709849824

`xor(a(n-1), A334109(A007913(n+1)²))` with `a(0)=0`
-/

namespace A336510.P4145809634709849824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A334109 (A007913 (n + 1) ^ 2).toNat)

end

end A336510.P4145809634709849824

namespace A336510

/-- `xor(a(n-1), A334109(A007913(n+1)²))` -/
def P4145809634709849824.Spec : Prop :=
  ∀ n, P4145809634709849824.a n = A336510 (n + 1)

end A336510

/-! ## A336510.P13253033556661384415

`xor(a(n-1), A334109(A328271(n+1)))` with `a(0)=0, a(1)=1`
-/

namespace A336510.P13253033556661384415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (a (n - 1)) (A334109 (A328271 (n + 1)).toNat)

end

end A336510.P13253033556661384415

namespace A336510

/-- `xor(a(n-1), A334109(A328271(n+1)))` -/
def P13253033556661384415.Spec : Prop :=
  ∀ n, P13253033556661384415.a n = A336510 (n + 1)

end A336510

/-!
# A336511: Total sum of the left-to-right maxima in all compositions of n.

The programs for A336511, there is no canonical definition to state claims against.
-/

/-! ## A336511.P17215219659114277176

`∑[∑[A000194(A098520(n))]]`
-/

namespace A336511.P17215219659114277176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A098520 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336511.P17215219659114277176

/-! ## A336511.P10757216924295683106

`A033183(∑[A163705(n+2)])`
-/

namespace A336511.P10757216924295683106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336511.P10757216924295683106

/-! ## A336511.P17989083238730064168

`A172481(n)-A050600(A149352(n))`
-/

namespace A336511.P17989083238730064168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A050600 (A149352 n).toNat

end

end A336511.P17989083238730064168

/-! ## A336511.P452319053493377640

`A018007(n)-A326193(A090936(n+9))`
-/

namespace A336511.P452319053493377640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018007 n - A326193 (A090936 (n + 9)).toNat

end

end A336511.P452319053493377640

/-!
# A336512: Total sum of the left-to-right minima in all compositions of n.

The programs for A336512, there is no canonical definition to state claims against.
-/

/-! ## A336512.P14588200159608770799

`A233864(A148398(n))+A000225(n)`
-/

namespace A336512.P14588200159608770799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233864 (A148398 n).toNat + A000225 n

end

end A336512.P14588200159608770799

/-! ## A336512.P14395734221619934884

`A026644(n)-A172263(A097135(n))`
-/

namespace A336512.P14395734221619934884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 n - A172263 (A097135 n).toNat

end

end A336512.P14395734221619934884

/-! ## A336512.P5194017955202052864

`A348960(A054166(n+1))+A000225(n)`
-/

namespace A336512.P5194017955202052864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A054166 (n + 1)).toNat + A000225 n

end

end A336512.P5194017955202052864

/-! ## A336512.P14712727575461437301

`A172152(A324408(n+2))+A000225(n)`
-/

namespace A336512.P14712727575461437301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172152 (A324408 (n + 2)).toNat + A000225 n

end

end A336512.P14712727575461437301

/-! ## A336512.P11719810415711897396

`A105223(A049138(n+1))+A000225(n)-1`
-/

namespace A336512.P11719810415711897396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A049138 (n + 1)).toNat + (A000225 n - 1)

end

end A336512.P11719810415711897396

/-!
# A336513: a(n) = Sum_{i=1..n} Product_{j=(i-1)*n+1..i*n} j.

The programs for A336513, there is no canonical definition to state claims against.
-/

/-! ## A336513.P12272949378348541045

`(n+1)!*A096131(n+1)`
-/

namespace A336513.P12272949378348541045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A096131 (n + 1)

end

end A336513.P12272949378348541045

/-! ## A336513.P5133649229211957098

`record[A094587(n)]*A096131(n+1)`
-/

namespace A336513.P5133649229211957098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A096131 (n + 1)

end

end A336513.P5133649229211957098

/-! ## A336513.P17397074227621179505

`A000142(n+1)*A096131(n+1)`
-/

namespace A336513.P17397074227621179505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A096131 (n + 1)

end

end A336513.P17397074227621179505

/-! ## A336513.P3438679674882704925

`A096131(n+1)*A333446(A000217(n+1))`
-/

namespace A336513.P3438679674882704925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096131 (n + 1) * A333446 (A000217 (n + 1)).toNat

end

end A336513.P3438679674882704925

/-! ## A336513.P13818374111773572616

`A096131(n+1)/A349470(n+1)*A349480(n+1)`
-/

namespace A336513.P13818374111773572616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096131 (n + 1) : ℚ) / (A349470 (n + 1) : ℚ) * (A349480 (n + 1) : ℚ)

end

end A336513.P13818374111773572616

/-!
# A336514: a(1) = 1, and for any n > 0, a(n+1) is the number of k in the range 1..n such that the decimal representation of a(k) appears as a substring in the decimal representation of a(n).

The programs for A336514, there is no canonical definition to state claims against.
-/

/-! ## A336514.P7369117101487287598

`A080513(n)/A158416(A110548(n+1))`
-/

namespace A336514.P7369117101487287598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 n : ℚ) / (A158416 (A110548 (n + 1)).toNat : ℚ)

end

end A336514.P7369117101487287598

/-! ## A336514.P14520652442678479169

`gcd(A051724(A097331(n)), A157271(n+1))`
-/

namespace A336514.P14520652442678479169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051724 (A097331 n).toNat) (A157271 (n + 1))

end

end A336514.P14520652442678479169

/-! ## A336514.P17823873593130329099

`gcd(A007088(A225346(n+1)), A080513(n))`
-/

namespace A336514.P17823873593130329099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007088 (A225346 (n + 1)).toNat) (A080513 n)

end

end A336514.P17823873593130329099

/-! ## A336514.P1419623452762939409

`A185255(A158416(3*n+1))+A158416(n)`
-/

namespace A336514.P1419623452762939409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A158416 (3 * n + 1)).toNat + A158416 n

end

end A336514.P1419623452762939409

/-! ## A336514.P11895935968533165609

`A322182(n+1)%A328596(3*n+2)`
-/

namespace A336514.P11895935968533165609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322182 (n + 1)) (A328596 (3 * n + 2))

end

end A336514.P11895935968533165609

/-!
# A336516: Sum of parts, counted without multiplicity, in all compositions of n.

The programs for A336516, there is no canonical definition to state claims against.
-/

/-! ## A336516.P7657014235267479562

`A096574(n+1)+A001221(A000272(n))`
-/

namespace A336516.P7657014235267479562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096574 (n + 1) + A001221 (A000272 n).toNat

end

end A336516.P7657014235267479562

/-! ## A336516.P16045812954287658575

`A000294(n)-A262964(A000217(n+1))`
-/

namespace A336516.P16045812954287658575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000294 n - A262964 (A000217 (n + 1)).toNat

end

end A336516.P16045812954287658575

/-! ## A336516.P9168204397935378341

`A006980(n+6)-A319416(A064062(n))`
-/

namespace A336516.P9168204397935378341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006980 (n + 6) - A319416 (A064062 n).toNat

end

end A336516.P9168204397935378341

/-! ## A336516.P1529924478532900671

`A096574(n+1)+A031286(A018315(n+1))`
-/

namespace A336516.P1529924478532900671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096574 (n + 1) + A031286 (A018315 (n + 1)).toNat

end

end A336516.P1529924478532900671

/-!
# A336517: T(n, k) = numerator([x^k] b(n, x)), where b(n, x) = 2^n*Sum_{k=0..n} binomial(n, k) * Bernoulli(k, 1/2) * x^(n-k). Triangle read by rows, for 0 <= k <= n.

The programs for A336517, there is no canonical definition to state claims against.
-/

/-! ## A336517.P13835882240130330712

`2^(n-C(∑[char[∑[n]]], 2))*A335953(n)`
-/

namespace A336517.P13835882240130330712
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A335953 n : ℚ)

end

end A336517.P13835882240130330712

/-! ## A336517.P11679463309289510342

`A059268(n)*A335953(n)`
-/

namespace A336517.P11679463309289510342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A335953 n

end

end A336517.P11679463309289510342

/-! ## A336517.P12448016002373147061

`A130125(n)*A335953(n)`
-/

namespace A336517.P12448016002373147061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n * A335953 n

end

end A336517.P12448016002373147061

/-! ## A336517.P5671576116030278642

`A000079(A002262(n))*A335953(n)`
-/

namespace A336517.P5671576116030278642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A335953 n

end

end A336517.P5671576116030278642

/-! ## A336517.P3450875967454182923

`A054582(A112367(n))*A335953(n)`
-/

namespace A336517.P3450875967454182923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A112367 n).toNat * A335953 n

end

end A336517.P3450875967454182923

/-! ## A336517.P7854742762777144321

`A130321(A061579(n))*A335953(n)`
-/

namespace A336517.P7854742762777144321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A335953 n

end

end A336517.P7854742762777144321

/-! ## A336517.P6271409478887369028

`A011782(A002260(n+1))*A335953(n)`
-/

namespace A336517.P6271409478887369028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A335953 n

end

end A336517.P6271409478887369028

/-! ## A336517.P13469513477769925530

`A000079(A025668(n+1))*A335953(n)`
-/

namespace A336517.P13469513477769925530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025668 (n + 1)).toNat * A335953 n

end

end A336517.P13469513477769925530

/-!
# A336519: Primes in Pi (variant of A336520): a(n) is the smallest prime factor of A090897(n) that does not appear in earlier terms of a, or 1, if no such factor exists.

The programs for A336519, there is no canonical definition to state claims against.
-/

/-! ## A336519.P16151327547194355879

`A336520(n+1)%A168445(A123153(n+1))`
-/

namespace A336519.P16151327547194355879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336520 (n + 1)) (A168445 (A123153 (n + 1)).toNat)

end

end A336519.P16151327547194355879

/-!
# A336520: Primes in Pi: a(n) is the smallest prime factor of A090897(n) that does not appear in earlier terms of A090897, or 1, if no such factor exists.

The programs for A336520, there is no canonical definition to state claims against.
-/

/-! ## A336520.P1652687809726937251

`A006530(A127647(n+5)+A090897(n+1))`
-/

namespace A336520.P1652687809726937251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A127647 (n + 5) + A090897 (n + 1)).toNat

end

end A336520.P1652687809726937251

/-!
# A336522: a(n) is the coefficient of x^(n^2) in expansion of ( (1 + x)/(1 - x) )^n.

The programs for A336522, there is no canonical definition to state claims against.
-/

/-! ## A336522.P10172915500214691846

`A336521(∑[4*n])`
-/

namespace A336522.P10172915500214691846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336522.P10172915500214691846

/-! ## A336522.P17691617808644502371

`record[A336521(∑[A186731(n)])]`
-/

namespace A336522.P17691617808644502371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336522.P17691617808644502371

/-! ## A336522.P4130382378108617361

`record[A336521(gcd(n, A049581(n)))]`
-/

namespace A336522.P4130382378108617361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 (Int.gcd (n : ℤ) (A049581 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336522.P4130382378108617361

/-! ## A336522.P15628475059223179496

`record[(1-A049581(n))*A336521(n)]`
-/

namespace A336522.P15628475059223179496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049581 n) * A336521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336522.P15628475059223179496

/-! ## A336522.P5761505397466503010

`or(A000007(n), A336521(A046092(n)))`
-/

namespace A336522.P5761505397466503010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A336521 (A046092 n).toNat)

end

end A336522.P5761505397466503010

/-!
# A336524: Triangular array read by rows. T(n,k) is the number of unlabeled binary trees with n internal nodes and exactly k distinguished external nodes (leaves) for 0 <= k <= n+1 and n >= 0.

The programs for A336524, there is no canonical definition to state claims against.
-/

/-! ## A336524.P3799067334902556234

`A144757(A036561(n+1))`
-/

namespace A336524.P3799067334902556234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144757 (A036561 (n + 1)).toNat

end

end A336524.P3799067334902556234

/-! ## A336524.P18085344776125636685

`A144757(A175840(n+1))`
-/

namespace A336524.P18085344776125636685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144757 (A175840 (n + 1)).toNat

end

end A336524.P18085344776125636685

/-! ## A336524.P14338867820691762452

`A368745(A056943(n+1))`
-/

namespace A336524.P14338867820691762452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368745 (A056943 (n + 1)).toNat

end

end A336524.P14338867820691762452

/-! ## A336524.P9544366268279113811

`A144757(A082234(n+2))`
-/

namespace A336524.P9544366268279113811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144757 (A082234 (n + 2)).toNat

end

end A336524.P9544366268279113811

/-! ## A336524.P8839639125214840310

`A144757(A081954(n+2)/2)`
-/

namespace A336524.P8839639125214840310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144757 (SequenceMachineLib.roundAway ((A081954 (n + 2) : ℚ) / 2)).toNat

end

end A336524.P8839639125214840310

/-!
# A336525: Total number of linear extensions of all n-element posets.

The programs for A336525, there is no canonical definition to state claims against.
-/

/-! ## A336525.P17123115999073247445

`round(sqrt(A327453(2^n*n!)))`
-/

namespace A336525.P17123115999073247445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A327453 (2 ^ n * Nat.factorial n) : ℝ))

end

end A336525.P17123115999073247445

/-! ## A336525.P2808802968709581522

`A035250(abs(∑[(n+1)^n]-2)+2)-1`
-/

namespace A336525.P2808802968709581522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (|((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2| + 2).toNat - 1

end

end A336525.P2808802968709581522

/-!
# A336526: a(n) is the least k > 1 such that A031121(n) = F(k*m)/F(m) for some m.

The programs for A336526, there is no canonical definition to state claims against.
-/

/-! ## A336526.P14119888373374479159

`A142240(A183154(n+2)+A134521(n))`
-/

namespace A336526.P14119888373374479159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142240 (A183154 (n + 2) + A134521 n).toNat

end

end A336526.P14119888373374479159

/-! ## A336526.P6349032440839278618

`A043276(A206946(n+1)^A043280(n+1))`
-/

namespace A336526.P6349032440839278618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (SequenceMachineLib.roundAway ((A206946 (n + 1) : ℚ) ^ (A043280 (n + 1) : ℤ))).toNat

end

end A336526.P6349032440839278618

/-! ## A336526.P9758262598323398350

`A112053(n+1)+A112047(A090745(n+1))`
-/

namespace A336526.P9758262598323398350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (n + 1) + A112047 (A090745 (n + 1)).toNat

end

end A336526.P9758262598323398350

/-! ## A336526.P2706183791105403327

`A368859(A074804(2*n+3)*A202941(n))`
-/

namespace A336526.P2706183791105403327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368859 (A074804 (2 * n + 3) * A202941 n).toNat

end

end A336526.P2706183791105403327

/-! ## A336526.P2271283551585487284

`A335123(A008578(n+1))+A056170(A303804(n+1))!`
-/

namespace A336526.P2271283551585487284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335123 (A008578 (n + 1)).toNat + (Nat.factorial (A056170 (A303804 (n + 1)).toNat).toNat : ℤ)

end

end A336526.P2271283551585487284

/-!
# A336527: a(1) = 1; a(2) = 2; for n > 2, a(n) is the least number > a(n-1) whose binary representation is uniquely the concatenation of the binary representations of two distinct earlier terms.

The programs for A336527, there is no canonical definition to state claims against.
-/

/-! ## A336527.P9697394121652486797

`eq[A239140(A333754(n+5)), A333766(n)]`
-/

namespace A336527.P9697394121652486797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239140 (A333754 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336527.P9697394121652486797

/-!
# A336528: a(1) = 1; a(2) = 2; for n > 2, a(n) is the least number > a(n-1) whose decimal representation is uniquely the concatenation of the decimal representations of two distinct earlier terms.

The programs for A336528, there is no canonical definition to state claims against.
-/

/-! ## A336528.P4784102753070917434

`A007931(A131396(n+1)%A080469(n+1))`
-/

namespace A336528.P4784102753070917434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (Int.tmod (A131396 (n + 1)) (A080469 (n + 1))).toNat

end

end A336528.P4784102753070917434

/-! ## A336528.P12178577759660702747

`A007931(A131391(n+1)%A082719(n+1))`
-/

namespace A336528.P12178577759660702747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (Int.tmod (A131391 (n + 1)) (A082719 (n + 1))).toNat

end

end A336528.P12178577759660702747

/-! ## A336528.P14249474826068060596

`A007931(A131396(n+1))%A256059(3*n+2)`
-/

namespace A336528.P14249474826068060596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007931 (A131396 (n + 1)).toNat) (A256059 (3 * n + 2))

end

end A336528.P14249474826068060596

/-! ## A336528.P3933704916417137350

`∩[A007931(n+1), A101222(n)]`
-/

namespace A336528.P3933704916417137350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336528.P3933704916417137350

/-!
# A336529: a(n) = (n^3+5*n+3)/3 + 2*floor(n/2) + a(n-2), with a(0)=1 and a(1)=3.

The programs for A336529, the canonical program `A336529.P18119921924653539342` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336529 has offset 0).

The definition of A336529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336529.P18119921924653539342

`(n^3+5*n+3)/3+2*floor(n/2)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A336529

/-- `(n^3+5*n+3)/3+2*floor(n/2)+a(n-2)` -/
def P18119921924653539342.Spec : Prop :=
  ∀ n, P18119921924653539342.a n = (A336529 n : ℚ)

end A336529

/-! ## A336529.P5649713903119925583

`∑[∑[A007590(xor(1, n))+1]]`
-/

namespace A336529.P5649713903119925583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (Nat.xor 1 n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336529.P5649713903119925583

namespace A336529

/-- `∑[∑[A007590(xor(1, n))+1]]` -/
def P5649713903119925583.Spec : Prop :=
  ∀ n, P5649713903119925583.a n = A336529 n

end A336529

/-! ## A336529.P16048356100978027756

`∑[∑[A099392(xor(1, n)+1)]]`
-/

namespace A336529.P16048356100978027756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (Nat.xor 1 n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336529.P16048356100978027756

namespace A336529

/-- `∑[∑[A099392(xor(1, n)+1)]]` -/
def P16048356100978027756.Spec : Prop :=
  ∀ n, P16048356100978027756.a n = A336529 n

end A336529

/-! ## A336529.P15570591050099435302

`A213850(n+1)+A038376(n)`
-/

namespace A336529.P15570591050099435302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213850 (n + 1) + A038376 n

end

end A336529.P15570591050099435302

namespace A336529

/-- `A213850(n+1)+A038376(n)` -/
def P15570591050099435302.Spec : Prop :=
  ∀ n, P15570591050099435302.a n = A336529 n

end A336529

/-! ## A336529.P9472177718081100231

`∑[∑[A007590(A004442(n))+1]]`
-/

namespace A336529.P9472177718081100231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A004442 n).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336529.P9472177718081100231

namespace A336529

/-- `∑[∑[A007590(A004442(n))+1]]` -/
def P9472177718081100231.Spec : Prop :=
  ∀ n, P9472177718081100231.a n = A336529 n

end A336529

/-! ## A336529.P3769493598043586611

`∑[∑[A099392(A103889(n+1))]]`
-/

namespace A336529.P3769493598043586611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A103889 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336529.P3769493598043586611

namespace A336529

/-- `∑[∑[A099392(A103889(n+1))]]` -/
def P3769493598043586611.Spec : Prop :=
  ∀ n, P3769493598043586611.a n = A336529 n

end A336529

/-! ## A336529.P10198684659126671125

`∑[∑[A004442(A007590(A004442(n)))]]`
-/

namespace A336529.P10198684659126671125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A007590 (A004442 n).toNat).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336529.P10198684659126671125

namespace A336529

/-- `∑[∑[A004442(A007590(A004442(n)))]]` -/
def P10198684659126671125.Spec : Prop :=
  ∀ n, P10198684659126671125.a n = A336529 n

end A336529

/-! ## A336529.P5588493947441586813

`∑[∑[A008619(A004442(n)²)]]`
-/

namespace A336529.P5588493947441586813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004442 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336529.P5588493947441586813

namespace A336529

/-- `∑[∑[A008619(A004442(n)²)]]` -/
def P5588493947441586813.Spec : Prop :=
  ∀ n, P5588493947441586813.a n = A336529 n

end A336529

/-!
# A336530: Number of triples of divisors d_i < d_j < d_k of n such that gcd(d_i, d_j, d_k) > 1.

The programs for A336530, the canonical program `A336530.P12884130564443516063` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336530 has offset 1).

The definition of A336530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336530.P4777352935371810235

`A338509(A101296(n+1))`
-/

namespace A336530.P4777352935371810235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338509 (A101296 (n + 1)).toNat

end

end A336530.P4777352935371810235

namespace A336530

/-- `A338509(A101296(n+1))` -/
def P4777352935371810235.Spec : Prop :=
  ∀ n, P4777352935371810235.a n = A336530 (n + 1)

end A336530

/-! ## A336530.P12884130564443516063

`A000292(A070824(n+1))-A086165(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336530

/-- `A000292(A070824(n+1))-A086165(n+1)` -/
def P12884130564443516063.Spec : Prop :=
  ∀ n, P12884130564443516063.a n = A336530 (n + 1)

theorem P12884130564443516063.correct : P12884130564443516063.Spec := by
  intro n
  simp only [A336530, Nat.add_sub_cancel]

end A336530

/-! ## A336530.P16303539243928131910

`A122617(n+1)%A010048(A284011(n+1))`
-/

namespace A336530.P16303539243928131910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122617 (n + 1)) (A010048 (A284011 (n + 1)).toNat)

end

end A336530.P16303539243928131910

namespace A336530

/-- `A122617(n+1)%A010048(A284011(n+1))` -/
def P16303539243928131910.Spec : Prop :=
  ∀ n, P16303539243928131910.a n = A336530 (n + 1)

end A336530

/-! ## A336530.P8574338852556502175

`and(5, A106490((n+1)^(∑{e}[n+1, #]-1)))`
-/

namespace A336530.P8574338852556502175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A106490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℤ))).toNat)

end

end A336530.P8574338852556502175

namespace A336530

/-- `and(5, A106490((n+1)^(∑{e}[n+1, #]-1)))` -/
def P8574338852556502175.Spec : Prop :=
  ∀ n, P8574338852556502175.a n = A336530 (n + 1)

end A336530

/-! ## A336530.P11177508331714941237

`A022307(A163820(n+1))`
-/

namespace A336530.P11177508331714941237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A163820 (n + 1)).toNat

end

end A336530.P11177508331714941237

namespace A336530

/-- `A022307(A163820(n+1))` -/
def P11177508331714941237.Spec : Prop :=
  ∀ n, P11177508331714941237.a n = A336530 (n + 1)

end A336530

/-!
# A336531: A sieve: start with the positive integers. Let a(1)=1. Mark out the following numbers: a(1)+1, a(1)+1+2, a(1)+1+2+3, a(1)+1+2+3+4, ... . The next integer in the list not marked out is 3, so a(2)=3. Mark out the following numbers: a(2)+1, a(2)+1+2, a(2)+1+2+3, a(2)+1+2+3+4, ... . Repeat the procedure for a(3), a(4), a(5), ... .

The programs for A336531, there is no canonical definition to state claims against.
-/

/-! ## A336531.P1717031879497220322

`A030194(n)+1`
-/

namespace A336531.P1717031879497220322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030194 n + 1

end

end A336531.P1717031879497220322

/-! ## A336531.P1753369514632979308

`1-A030194(n)*A057428(n)`
-/

namespace A336531.P1753369514632979308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030194 n * A057428 n

end

end A336531.P1753369514632979308

/-! ## A336531.P4212014927343035076

`A030194(n)-(n-1)-A001489(n)`
-/

namespace A336531.P4212014927343035076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030194 n - ((n : ℤ) - 1) - A001489 n

end

end A336531.P4212014927343035076

/-! ## A336531.P18356689096030897314

`A004277(n)-(gcd(n, A008486(n))-(A030194(n)-(n-1)))`
-/

namespace A336531.P18356689096030897314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - ((Int.gcd (n : ℤ) (A008486 n) : ℤ) - (A030194 n - ((n : ℤ) - 1)))

end

end A336531.P18356689096030897314

/-! ## A336531.P9217561585828442013

`eq[1, A019509(n)]`
-/

namespace A336531.P9217561585828442013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336531.P9217561585828442013

/-! ## A336531.P7920393018946295983

`lt[A188468(A019509(n)+1)/ϕ, 2]+1`
-/

namespace A336531.P7920393018946295983
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188468 (A019509 n + 1).toNat : ℝ) / Real.goldenRatio

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A336531.P7920393018946295983

/-! ## A336531.P7026005200513325024

`A028310(A030194(n)-A057428(n))`
-/

namespace A336531.P7026005200513325024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A030194 n - A057428 n).toNat

end

end A336531.P7026005200513325024

/-! ## A336531.P7894446971725324570

`A008619(2*A030194(n))`
-/

namespace A336531.P7894446971725324570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A030194 n).toNat

end

end A336531.P7894446971725324570

/-! ## A336531.P11094307029929875737

`A027656(2*A030194(n))`
-/

namespace A336531.P11094307029929875737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A030194 n).toNat

end

end A336531.P11094307029929875737

/-! ## A336531.P8538819980314142183

`A028242(2*A030194(n))`
-/

namespace A336531.P8538819980314142183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A030194 n).toNat

end

end A336531.P8538819980314142183

/-! ## A336531.P10971230514709154747

`A029579(2*A030194(n))`
-/

namespace A336531.P10971230514709154747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A030194 n).toNat

end

end A336531.P10971230514709154747

/-! ## A336531.P852561872865802032

`A008611(3*A030194(n))`
-/

namespace A336531.P852561872865802032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A030194 n).toNat

end

end A336531.P852561872865802032

/-! ## A336531.P12939103907103982090

`A008620(3*A030194(n))`
-/

namespace A336531.P12939103907103982090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A030194 n).toNat

end

end A336531.P12939103907103982090

/-!
# A336532: Square array read by antidiagonals upwards showing a stained glass windows with two colors and a hidden curve from the toothpick cellular automaton of A139250 (see Comments lines for definition).

The programs for A336532, there is no canonical definition to state claims against.
-/

/-! ## A336532.P8151407367301266986

`gcd(2, A049780(A324429(n)))`
-/

namespace A336532.P8151407367301266986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A049780 (A324429 n).toNat)

end

end A336532.P8151407367301266986

/-! ## A336532.P13111529709179352744

`A000034(A342719(2*(n+3))+A327844(n+1))`
-/

namespace A336532.P13111529709179352744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A342719 (2 * (n + 3)) + A327844 (n + 1)).toNat

end

end A336532.P13111529709179352744

/-! ## A336532.P12945101339762998858

`A026465(A016826(n)-A132749(n))`
-/

namespace A336532.P12945101339762998858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A016826 n - A132749 n).toNat

end

end A336532.P12945101339762998858

/-! ## A336532.P4935330727712637151

`gcd(A000079(n), A164886(A226031(n)))`
-/

namespace A336532.P4935330727712637151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A164886 (A226031 n).toNat)

end

end A336532.P4935330727712637151

/-! ## A336532.P6927461588430723665

`A317960(A153199(n)-A153198(n))`
-/

namespace A336532.P6927461588430723665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317960 (A153199 n - A153198 n).toNat

end

end A336532.P6927461588430723665

/-!
# A336533: Lexicographically earliest sequence of positive terms such that for any n > 0, n = Sum_{k >= 0} b(k)*a(k+1) where Sum_{k >= 0} b(k)*2^k is the binary expansion of a(n).

The programs for A336533, there is no canonical definition to state claims against.
-/

/-! ## A336533.P4351268028176533500

`lt[A318954(n+4), A299260(A000120(n))]`
-/

namespace A336533.P4351268028176533500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318954 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299260 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336533.P4351268028176533500

/-! ## A336533.P4459959140962676574

`lt[A002265(n)+1, A286535(n)]`
-/

namespace A336533.P4459959140962676574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286535 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336533.P4459959140962676574

/-! ## A336533.P1156290666334304832

`record[A227838(A112819(n+1))+n]`
-/

namespace A336533.P1156290666334304832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227838 (A112819 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336533.P1156290666334304832

/-! ## A336533.P16788563515622710028

`record[A330155(A100892(n+1))+n]`
-/

namespace A336533.P16788563515622710028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330155 (A100892 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336533.P16788563515622710028

/-! ## A336533.P15259525193928419200

`lt[A124757(A124773(2*n+1)), A124763(2*n+1)]`
-/

namespace A336533.P15259525193928419200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A124773 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336533.P15259525193928419200

/-!
# A336534: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} binomial(n,j) * binomial(k*n+j+1,n)/(k*n+j+1).

The programs for A336534, there is no canonical definition to state claims against.
-/

/-! ## A336534.P1803781747614055715

`A100144(A336575(n))`
-/

namespace A336534.P1803781747614055715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100144 (A336575 n).toNat

end

end A336534.P1803781747614055715

/-! ## A336534.P12628512733074629872

`(2-char[∑[n]])*A077374(A257493(n))`
-/

namespace A336534.P12628512733074629872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A077374 (A257493 n).toNat

end

end A336534.P12628512733074629872

/-! ## A336534.P8106303498275385159

`A108502(A070939(n)^A280880(n))`
-/

namespace A336534.P8106303498275385159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108502 (SequenceMachineLib.roundAway ((A070939 n : ℚ) ^ (A280880 n : ℤ))).toNat

end

end A336534.P8106303498275385159

/-! ## A336534.P148517473865354995

`A004277(A292717(n)^A324564(n))`
-/

namespace A336534.P148517473865354995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A292717 n : ℚ) ^ (A324564 n : ℤ))).toNat

end

end A336534.P148517473865354995

/-! ## A336534.P976651103594490401

`A334299(A217232(n+1))`
-/

namespace A336534.P976651103594490401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 (A217232 (n + 1)).toNat

end

end A336534.P976651103594490401

/-!
# A336535: a(n) = (m(n)^2 + 3)*(m(n)^2 + 7)/32, where m(n) = 2*n - 1.

The programs for A336535, the canonical program `A336535.P13515679324228440770` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336535 has offset 1).

The definition of A336535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336535.P16301275489651916405

`(1-(n+1)+(n+1)²)*(2-(n+1)+(n+1)²)/2`
-/

namespace A336535.P16301275489651916405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n + 1 : ℤ) + ((n + 1) ^ 2 : ℤ)) * (2 - (n + 1 : ℤ) + ((n + 1) ^ 2 : ℤ)) : ℚ) / 2

end

end A336535.P16301275489651916405

namespace A336535

/-- `(1-(n+1)+(n+1)²)*(2-(n+1)+(n+1)²)/2` -/
def P16301275489651916405.Spec : Prop :=
  ∀ n, P16301275489651916405.a n = (A336535 (n + 1) : ℚ)

theorem P16301275489651916405.correct : P16301275489651916405.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A336535, Nat.add_sub_cancel, A336535.P16301275489651916405.a, A336535.P13515679324228440770.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A336535, Nat.add_sub_cancel, A336535.P16301275489651916405.a, A336535.P13515679324228440770.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A336535

/-! ## A336535.P13515679324228440770

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=28, a(3)=91, a(4)=231`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A336535

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13515679324228440770.Spec : Prop :=
  ∀ n, P13515679324228440770.a n = A336535 (n + 1)

theorem P13515679324228440770.correct : P13515679324228440770.Spec := by
  intro n
  simp only [A336535, Nat.add_sub_cancel]

end A336535

/-! ## A336535.P6831560382394445946

`(A000217(n)+1)*(2*A000217(n)+1)`
-/

namespace A336535.P6831560382394445946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) * (2 * A000217 n + 1)

end

end A336535.P6831560382394445946

namespace A336535

/-- `(A000217(n)+1)*(2*A000217(n)+1)` -/
def P6831560382394445946.Spec : Prop :=
  ∀ n, P6831560382394445946.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P3728563612315747682

`C(2*(∑[n]+1), 2)`
-/

namespace A336535.P3728563612315747682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 2

end

end A336535.P3728563612315747682

namespace A336535

/-- `C(2*(∑[n]+1), 2)` -/
def P3728563612315747682.Spec : Prop :=
  ∀ n, (P3728563612315747682.a n : ℤ) = A336535 (n + 1)

end A336535

/-! ## A336535.P14512210273572230691

`lcm(∑[2*n]+1, ∑[n]+1)`
-/

namespace A336535.P14512210273572230691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A336535.P14512210273572230691

namespace A336535

/-- `lcm(∑[2*n]+1, ∑[n]+1)` -/
def P14512210273572230691.Spec : Prop :=
  ∀ n, (P14512210273572230691.a n : ℤ) = A336535 (n + 1)

end A336535

/-! ## A336535.P14637070183528743270

`(∑[n]+1)*or(1, ∑[2*n])`
-/

namespace A336535.P14637070183528743270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A336535.P14637070183528743270

namespace A336535

/-- `(∑[n]+1)*or(1, ∑[2*n])` -/
def P14637070183528743270.Spec : Prop :=
  ∀ n, (P14637070183528743270.a n : ℤ) = A336535 (n + 1)

end A336535

/-! ## A336535.P11790895486652206721

`(∑[n]+1)*xor(1, n²+n)`
-/

namespace A336535.P11790895486652206721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * Nat.xor 1 (n ^ 2 + n)

end

end A336535.P11790895486652206721

namespace A336535

/-- `(∑[n]+1)*xor(1, n²+n)` -/
def P11790895486652206721.Spec : Prop :=
  ∀ n, (P11790895486652206721.a n : ℤ) = A336535 (n + 1)

end A336535

/-! ## A336535.P13142054125213829823

`(n²+2)²-(a(n-1)+2)` with `a(0)=1`
-/

namespace A336535.P13142054125213829823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n ^ 2 + 2) ^ 2 : ℤ) - (a (n - 1) + 2)

end

end A336535.P13142054125213829823

namespace A336535

/-- `(n²+2)²-(a(n-1)+2)` -/
def P13142054125213829823.Spec : Prop :=
  ∀ n, P13142054125213829823.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P8887637391890026234

`∑[A288534(n)]`
-/

namespace A336535.P8887637391890026234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336535.P8887637391890026234

namespace A336535

/-- `∑[A288534(n)]` -/
def P8887637391890026234.Spec : Prop :=
  ∀ n, P8887637391890026234.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P99075312136202006

`round(A072025(n)/2)`
-/

namespace A336535.P99075312136202006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072025 n : ℚ) / 2)

end

end A336535.P99075312136202006

namespace A336535

/-- `round(A072025(n)/2)` -/
def P99075312136202006.Spec : Prop :=
  ∀ n, P99075312136202006.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P10219270414597245302

`A383834(n)-∑[n]`
-/

namespace A336535.P10219270414597245302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383834 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A336535.P10219270414597245302

namespace A336535

/-- `A383834(n)-∑[n]` -/
def P10219270414597245302.Spec : Prop :=
  ∀ n, P10219270414597245302.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P1405409004303583569

`∑[n]*A027688(n)+1`
-/

namespace A336535.P1405409004303583569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A027688 n + 1

end

end A336535.P1405409004303583569

namespace A336535

/-- `∑[n]*A027688(n)+1` -/
def P1405409004303583569.Spec : Prop :=
  ∀ n, P1405409004303583569.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P11968007834285970768

`∑[A079908(n)]+∑[n]²`
-/

namespace A336535.P11968007834285970768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A336535.P11968007834285970768

namespace A336535

/-- `∑[A079908(n)]+∑[n]²` -/
def P11968007834285970768.Spec : Prop :=
  ∀ n, P11968007834285970768.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P7158646366699436607

`A082106(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A336535.P7158646366699436607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082106 n + (1 - a (n - 1))

end

end A336535.P7158646366699436607

namespace A336535

/-- `A082106(n)+1-a(n-1)` -/
def P7158646366699436607.Spec : Prop :=
  ∀ n, P7158646366699436607.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P8120612580014657597

`A062392(n)+A001844(n)`
-/

namespace A336535.P8120612580014657597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n + A001844 n

end

end A336535.P8120612580014657597

namespace A336535

/-- `A062392(n)+A001844(n)` -/
def P8120612580014657597.Spec : Prop :=
  ∀ n, P8120612580014657597.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P8027354248882694179

`A086601(n)+A001621(n)`
-/

namespace A336535.P8027354248882694179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086601 n + A001621 n

end

end A336535.P8027354248882694179

namespace A336535

/-- `A086601(n)+A001621(n)` -/
def P8027354248882694179.Spec : Prop :=
  ∀ n, P8027354248882694179.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P32421284631278989

`A081435(n)+A037270(n)`
-/

namespace A336535.P32421284631278989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 n + A037270 n

end

end A336535.P32421284631278989

namespace A336535

/-- `A081435(n)+A037270(n)` -/
def P32421284631278989.Spec : Prop :=
  ∀ n, P32421284631278989.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P3607246789769433015

`A171129(n)+A143690(n)`
-/

namespace A336535.P3607246789769433015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + A143690 n

end

end A336535.P3607246789769433015

namespace A336535

/-- `A171129(n)+A143690(n)` -/
def P3607246789769433015.Spec : Prop :=
  ∀ n, P3607246789769433015.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P8282883744713847952

`A082106(n)-A349919(n)`
-/

namespace A336535.P8282883744713847952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082106 n - A349919 n

end

end A336535.P8282883744713847952

namespace A336535

/-- `A082106(n)-A349919(n)` -/
def P8282883744713847952.Spec : Prop :=
  ∀ n, P8282883744713847952.a n = A336535 (n + 1)

end A336535

/-! ## A336535.P14070547990149056403

`A160765(n)-A384288(n)`
-/

namespace A336535.P14070547990149056403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160765 n - A384288 n

end

end A336535.P14070547990149056403

namespace A336535

/-- `A160765(n)-A384288(n)` -/
def P14070547990149056403.Spec : Prop :=
  ∀ n, P14070547990149056403.a n = A336535 (n + 1)

end A336535

/-!
# A336536: Numbers n that can be written as both the sum of two nonzero fourth powers and the sum of three nonzero fourth powers.

The programs for A336536, there is no canonical definition to state claims against.
-/

/-! ## A336536.P5350720569185418200

`2*A349151(A085803(n+1))²`
-/

namespace A336536.P5350720569185418200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349151 (A085803 (n + 1)).toNat ^ 2

end

end A336536.P5350720569185418200

/-!
# A336537: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n^2+k+1,n)/(n^2+k+1).

The programs for A336537, there is no canonical definition to state claims against.
-/

/-! ## A336537.P14900760270496652389

`A336534(∑[4*n])`
-/

namespace A336537.P14900760270496652389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336537.P14900760270496652389

/-! ## A336537.P14451123195598870797

`record[A336534(∑[A186731(n)])]`
-/

namespace A336537.P14451123195598870797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336537.P14451123195598870797

/-! ## A336537.P3048219859350990840

`record[A336534(A226725(n+1))]`
-/

namespace A336537.P3048219859350990840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336537.P3048219859350990840

/-! ## A336537.P5010757314178840791

`record[A336534(n*A028242(n))]`
-/

namespace A336537.P5010757314178840791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336537.P5010757314178840791

/-! ## A336537.P13048442957550451639

`record[A336534(gcd(n, A049581(n)))]`
-/

namespace A336537.P13048442957550451639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (Int.gcd (n : ℤ) (A049581 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336537.P13048442957550451639

/-!
# A336538: G.f. A(x) satisfies A(x) = 1 + x * A(x)^3 * (2 + A(x)).

The programs for A336538, there is no canonical definition to state claims against.
-/

/-! ## A336538.P9968608254513449695

`A336575(∑[n+3]+n+3)`
-/

namespace A336538.P9968608254513449695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A336538.P9968608254513449695

/-! ## A336538.P10589365926761695914

`record[A336575(A060577(n))]`
-/

namespace A336538.P10589365926761695914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336538.P10589365926761695914

/-! ## A336538.P14797324933226979126

`record[A336575(abs(A046691(n)))]`
-/

namespace A336538.P14797324933226979126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336538.P14797324933226979126

/-! ## A336538.P867983571657755741

`record[A336575(A027379(n)-1)]`
-/

namespace A336538.P867983571657755741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336538.P867983571657755741

/-! ## A336538.P5884814049200533734

`record[root(A336575(n), A336575(n+4))]`
-/

namespace A336538.P5884814049200533734
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A336575 n : ℝ) ^ (1 / (A336575 (n + 4) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336538.P5884814049200533734

/-! ## A336538.P5031716705400989928

`record[gcd(A316101(n+4), A336575(n))]`
-/

namespace A336538.P5031716705400989928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A316101 (n + 4)) (A336575 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336538.P5031716705400989928

/-!
# A336539: G.f. A(x) satisfies A(x) = 1 + x * A(x)^3 * (1 + 2 * A(x)).

The programs for A336539, there is no canonical definition to state claims against.
-/

/-! ## A336539.P10266234277039964560

`A336574(∑[n+3]+n+3)`
-/

namespace A336539.P10266234277039964560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A336539.P10266234277039964560

/-! ## A336539.P11348509453805703291

`record[A336574(A060577(n))]`
-/

namespace A336539.P11348509453805703291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336539.P11348509453805703291

/-! ## A336539.P8083124906814585789

`record[A336574(abs(A046691(n)))]`
-/

namespace A336539.P8083124906814585789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336539.P8083124906814585789

/-! ## A336539.P4228273973644879032

`record[A336574(A027379(n)-1)]`
-/

namespace A336539.P4228273973644879032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336539.P4228273973644879032

/-! ## A336539.P3678707464524039576

`record[root(A336574(n), A125693(n+3))]`
-/

namespace A336539.P3678707464524039576
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A336574 n : ℝ) ^ (1 / (A125693 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336539.P3678707464524039576

/-! ## A336539.P1600396263693792973

`record[root(A336574(n), A336574(n+4))]`
-/

namespace A336539.P1600396263693792973
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A336574 n : ℝ) ^ (1 / (A336574 (n + 4) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336539.P1600396263693792973

/-!
# A336540: G.f. A(x) satisfies A(x) = 1 + x * A(x)^4 * (2 + A(x)).

The programs for A336540, there is no canonical definition to state claims against.
-/

/-! ## A336540.P4218564412942468090

`record[A336575(A052905(n))]`
-/

namespace A336540.P4218564412942468090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336540.P4218564412942468090

/-! ## A336540.P2731800523889304258

`A336575(A052905(n+2))`
-/

namespace A336540.P2731800523889304258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A052905 (n + 2)).toNat

end

end A336540.P2731800523889304258

/-! ## A336540.P5927305609847417799

`A336575(A056115(n)+10)`
-/

namespace A336540.P5927305609847417799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A056115 n + 10).toNat

end

end A336540.P5927305609847417799

/-! ## A336540.P17271616083328402281

`A336575(eq[4, A025581(n)])`
-/

namespace A336540.P17271616083328402281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336540.P17271616083328402281

/-! ## A336540.P8898064241049424269

`record[A336575(A055999(n)+1)]`
-/

namespace A336540.P8898064241049424269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336540.P8898064241049424269

/-! ## A336540.P14318215531277151793

`record[A336575(A060577(n)-1)]`
-/

namespace A336540.P14318215531277151793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A060577 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336540.P14318215531277151793

/-! ## A336540.P12103526661575163742

`A336575(eq[5, A004736(n+1)])`
-/

namespace A336540.P12103526661575163742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336540.P12103526661575163742

/-! ## A336540.P5699941256169538822

`record[A336575(abs(A046691(n))-1)]`
-/

namespace A336540.P5699941256169538822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336540.P5699941256169538822

/-! ## A336540.P7482471270192468105

`record[A336575(A046691(n+1)-1)]`
-/

namespace A336540.P7482471270192468105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336540.P7482471270192468105

/-! ## A336540.P17446411724505172033

`record[A336575(A027379(n+1)-2)]`
-/

namespace A336540.P17446411724505172033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336540.P17446411724505172033

/-!
# A336541: Expansion of (2*x)/(sqrt((1-x)^2-4*x^2*y)+3*x-1).

The programs for A336541, there is no canonical definition to state claims against.
-/

/-! ## A336541.P15385596836117706813

`and(A085791(n), A228850(n+4))`
-/

namespace A336541.P15385596836117706813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085791 n) (A228850 (n + 4))

end

end A336541.P15385596836117706813

/-! ## A336541.P17990723158308834603

`A291883(n)+A117054(A102480(n))`
-/

namespace A336541.P17990723158308834603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 n + A117054 (A102480 n).toNat

end

end A336541.P17990723158308834603

/-! ## A336541.P9836388194963399994

`and(A003538(A313887(n)), A085791(n))`
-/

namespace A336541.P9836388194963399994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003538 (A313887 n).toNat) (A085791 n)

end

end A336541.P9836388194963399994

/-! ## A336541.P6514893389435364441

`A285189(2*A362868(n+1))`
-/

namespace A336541.P6514893389435364441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (2 * A362868 (n + 1)).toNat

end

end A336541.P6514893389435364441

/-! ## A336541.P4160964609775302411

`A090181(n)-A025465(A007053(n))`
-/

namespace A336541.P4160964609775302411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n - A025465 (A007053 n).toNat

end

end A336541.P4160964609775302411

/-!
# A336542: Primitive integers for the number of ways k to write as a sum of two squares.

The programs for A336542, there is no canonical definition to state claims against.
-/

/-! ## A336542.P10687304845690105462

`∩[A008784(n+1), A097752(n+1)]`
-/

namespace A336542.P10687304845690105462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336542.P10687304845690105462

/-! ## A336542.P6693129566223081678

`∩[A097752(n+1), A103215(n+1)]`
-/

namespace A336542.P6693129566223081678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336542.P6693129566223081678

/-! ## A336542.P5431572974773233012

`∩[A097752(n+1), A259749(n+1)]`
-/

namespace A336542.P5431572974773233012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336542.P5431572974773233012

/-! ## A336542.P1057017812594305517

`∩[A097752(n+1), A099477(n+1)]`
-/

namespace A336542.P1057017812594305517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336542.P1057017812594305517

/-! ## A336542.P3450299494154268263

`∩[A097752(n+1), A108118(n+1)]`
-/

namespace A336542.P3450299494154268263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336542.P3450299494154268263

/-!
# A336543: a(n) is the number of ways to write A336542(n) as a sum of two nonzero squares.

The programs for A336543, there is no canonical definition to state claims against.
-/

/-! ## A336543.P9251541638796393886

`A025426(A336542(n+1))`
-/

namespace A336543.P9251541638796393886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A336542 (n + 1)).toNat

end

end A336543.P9251541638796393886

/-! ## A336543.P11148136875026376947

`A025435(2*A336542(n+1))`
-/

namespace A336543.P11148136875026376947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (2 * A336542 (n + 1)).toNat

end

end A336543.P11148136875026376947

/-! ## A336543.P12306021646866787470

`A025435(A336542(n+1)+A336542(n+1))`
-/

namespace A336543.P12306021646866787470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A336542 (n + 1) + A336542 (n + 1)).toNat

end

end A336543.P12306021646866787470

/-! ## A336543.P17379290301625602337

`A001221(lcm(A120170(3*n+4), A120170(n+1)))`
-/

namespace A336543.P17379290301625602337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A120170 (3 * n + 4)) (A120170 (n + 1)))

end

end A336543.P17379290301625602337

/-!
# A336545: Sum over all unlabeled connected graphs of order n, of the number of connected graphs obtainable by deletion of a single vertex in the graph.

The programs for A336545, there is no canonical definition to state claims against.
-/

/-! ## A336545.P1481655930566088084

`A004184(A126101(n+1))`
-/

namespace A336545.P1481655930566088084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A126101 (n + 1)).toNat

end

end A336545.P1481655930566088084

/-! ## A336545.P8455175903049042222

`A126101(A024641(n)+1)`
-/

namespace A336545.P8455175903049042222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126101 (A024641 n + 1).toNat

end

end A336545.P8455175903049042222

/-! ## A336545.P13482692388449012124

`A126101(∑[A271424(n)!])`
-/

namespace A336545.P13482692388449012124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A271424 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336545.P13482692388449012124

/-!
# A336546: a(n) = 1 if for 1 <= i < j <= h, all sigma(p_i^e_i), sigma(p_j^e_j) are pairwise coprime, otherwise 0. Here n = p_1^e_1 * ... * p_h^e_h, where each p_i^e_i is the maximal power of prime p_i dividing n.

The programs for A336546, there is no canonical definition to state claims against.
-/

/-! ## A336546.P3652153840538821557

`C(2, A353803(n+1))`
-/

namespace A336546.P3652153840538821557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A353803 (n + 1)).toNat

end

end A336546.P3652153840538821557

/-! ## A336546.P12179274790315210663

`floor(1/A353755(n+1))`
-/

namespace A336546.P12179274790315210663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A353755 (n + 1) : ℚ)⌋

end

end A336546.P12179274790315210663

/-! ## A336546.P17217592835836286234

`floor(1/A353784(n+1))`
-/

namespace A336546.P17217592835836286234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A353784 (n + 1) : ℚ)⌋

end

end A336546.P17217592835836286234

/-! ## A336546.P17373137169774198237

`floor(1/A353806(n+1))`
-/

namespace A336546.P17373137169774198237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A353806 (n + 1) : ℚ)⌋

end

end A336546.P17373137169774198237

/-! ## A336546.P8795390138243491723

`char[A336547(n+1)-1]`
-/

namespace A336546.P8795390138243491723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336546.P8795390138243491723

/-! ## A336546.P11659303574845493212

`char[lt[A336562(n+1), 1]]`
-/

namespace A336546.P11659303574845493212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336562 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A336546.P11659303574845493212

/-! ## A336546.P13320692959662128381

`∏{p}[A353753(n+1), 2-#]`
-/

namespace A336546.P13320692959662128381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (p : ℤ))

end

end A336546.P13320692959662128381

/-! ## A336546.P17022677622175245538

`A000007(A336562(n+1))`
-/

namespace A336546.P17022677622175245538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A336562 (n + 1)).toNat

end

end A336546.P17022677622175245538

/-! ## A336546.P5026496897150845939

`A000007(A353753(n+1))`
-/

namespace A336546.P5026496897150845939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A353753 (n + 1)).toNat

end

end A336546.P5026496897150845939

/-! ## A336546.P1687378625608095073

`A353766(A353753(n+1)+1)`
-/

namespace A336546.P1687378625608095073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353766 (A353753 (n + 1) + 1).toNat

end

end A336546.P1687378625608095073

/-! ## A336546.P8303256468460005357

`and(A340372(n+1), A353756(n+1))`
-/

namespace A336546.P8303256468460005357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A340372 (n + 1)) (A353756 (n + 1))

end

end A336546.P8303256468460005357

/-! ## A336546.P2655433645840026590

`A336562(a(n-1)+1)^A336562(n+1)` with `a(0)=1`
-/

namespace A336546.P2655433645840026590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A336562 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (A336562 (n + 1) : ℤ)

end

end A336546.P2655433645840026590

/-! ## A336546.P2151320653257308355

`A353766((A353784(n+1)+1)²)`
-/

namespace A336546.P2151320653257308355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353766 ((A353784 (n + 1) + 1) ^ 2).toNat

end

end A336546.P2151320653257308355

/-! ## A336546.P5286989726302914908

`A000007(A353803(n+1))`
-/

namespace A336546.P5286989726302914908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A353803 (n + 1)).toNat

end

end A336546.P5286989726302914908

/-! ## A336546.P15605342674893346300

`A192280(2*A353806(n+1))`
-/

namespace A336546.P15605342674893346300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (2 * A353806 (n + 1)).toNat

end

end A336546.P15605342674893346300

/-! ## A336546.P14077880263337607900

`A353766(A353784(n+1)²²)`
-/

namespace A336546.P14077880263337607900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353766 ((A353784 (n + 1) ^ 2) ^ 2).toNat

end

end A336546.P14077880263337607900

/-!
# A336547: Numbers k such that for 1 <= i < j <= h, all sigma(p_i^e_i), sigma(p_j^e_j) are pairwise coprime, when k = p_1^e_1 * ... * p_h^e_h, where each p_i^e_i is the maximal power of prime p_i dividing k.

The programs for A336547, there is no canonical definition to state claims against.
-/

/-! ## A336547.P1580660540462855205

`eq[0, A353753(n+1)]+1`
-/

namespace A336547.P1580660540462855205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336547.P1580660540462855205

/-! ## A336547.P3234629036977729721

`eq[1, A336546(n+1)]+1`
-/

namespace A336547.P3234629036977729721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336547.P3234629036977729721

/-! ## A336547.P16907363247478931445

`lt[A336562(n+1), 1]+1`
-/

namespace A336547.P16907363247478931445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336562 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336547.P16907363247478931445

/-! ## A336547.P9662114301574590900

`∪[A000961(n+1), A336549(n+1)]`
-/

namespace A336547.P9662114301574590900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336547.P9662114301574590900

/-! ## A336547.P10998072715141824627

`∪[A225657(n+1), A336549(n+1)]`
-/

namespace A336547.P10998072715141824627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336547.P10998072715141824627

/-! ## A336547.P14561612461551672882

`eq[1, A027379(A336562(n+1)²)]+1`
-/

namespace A336547.P14561612461551672882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (A336562 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336547.P14561612461551672882

/-! ## A336547.P4972611846857848251

`eq[1, A047268(A336562(n+1)²+1)]+1`
-/

namespace A336547.P4972611846857848251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (A336562 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336547.P4972611846857848251

/-! ## A336547.P8847463842559637728

`filter[A285801(n+1), A336546(#)]`
-/

namespace A336547.P8847463842559637728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336546 (f1 j).toNat = 1) n)

end

end A336547.P8847463842559637728

/-! ## A336547.P9087758194520698558

`filter[A336557(n+1), A336546(#)]`
-/

namespace A336547.P9087758194520698558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336546 (f1 j).toNat = 1) n)

end

end A336547.P9087758194520698558

/-! ## A336547.P17297675684265193576

`lt[A353803(n+1), 1]+1`
-/

namespace A336547.P17297675684265193576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336547.P17297675684265193576

/-! ## A336547.P12851754193790908092

`lt[A353806(n+1), 2]+1`
-/

namespace A336547.P12851754193790908092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353806 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336547.P12851754193790908092

/-! ## A336547.P11242350753277910915

`filter[A028964(n+2), A336546(#)]`
-/

namespace A336547.P11242350753277910915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336546 (f1 j).toNat = 1) n)

end

end A336547.P11242350753277910915

/-! ## A336547.P6611996826693601521

`eq[1, A353784(n+1)]+1`
-/

namespace A336547.P6611996826693601521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353784 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336547.P6611996826693601521

/-! ## A336547.P4881507023880134270

`record[n+1-A109613(n)*A336562(n+1)]`
-/

namespace A336547.P4881507023880134270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A109613 n * A336562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336547.P4881507023880134270

/-! ## A336547.P16946909300138430070

`record[n+1-A079000(n+1)*A336562(n+1)]`
-/

namespace A336547.P16946909300138430070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A079000 (n + 1) * A336562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336547.P16946909300138430070

/-! ## A336547.P12580821005780104136

`∪[A336549(n+1), A383099(n+1)]`
-/

namespace A336547.P12580821005780104136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336547.P12580821005780104136

/-!
# A336548: Numbers k such that at least one pair sigma(p_i^e_i), sigma(p_j^e_j) [with i != j] share a prime factor, when k = p_1^e_1 * ... * p_h^e_h, where each p_i^e_i is the maximal power of prime p_i dividing k.

The programs for A336548, there is no canonical definition to state claims against.
-/

/-! ## A336548.P9839252350785407173

`lt[0, A353753(n+1)]+1`
-/

namespace A336548.P9839252350785407173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336548.P9839252350785407173

/-! ## A336548.P5508180399346501232

`lt[0, A353803(n+1)]+1`
-/

namespace A336548.P5508180399346501232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336548.P5508180399346501232

/-! ## A336548.P17560147238077237773

`eq[0, A336546(n+2)]+2`
-/

namespace A336548.P17560147238077237773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A336548.P17560147238077237773

/-! ## A336548.P895188179192330944

`lt[A336546(n+1), 1]+1`
-/

namespace A336548.P895188179192330944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336548.P895188179192330944

/-! ## A336548.P13431044719076481815

`lt[1, A353806(n+1)]+1`
-/

namespace A336548.P13431044719076481815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336548.P13431044719076481815

/-! ## A336548.P8244243599693617369

`comp[A336547(n+1)-1]+1`
-/

namespace A336548.P8244243599693617369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A336548.P8244243599693617369

/-! ## A336548.P1822559066381743999

`∪[A336558(n+1), A336560(n+1)]`
-/

namespace A336548.P1822559066381743999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336548.P1822559066381743999

/-! ## A336548.P16151834307136930611

`eq[1, A323022(A336562(n+1)+1)]+1`
-/

namespace A336548.P16151834307136930611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A336562 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336548.P16151834307136930611

/-! ## A336548.P12953511125702276704

`A153152(eq[0, A336546(n+1)])`
-/

namespace A336548.P12953511125702276704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336548.P12953511125702276704

/-! ## A336548.P11818091358001069749

`A113484(eq[0, A336546(n+1)])`
-/

namespace A336548.P11818091358001069749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336548.P11818091358001069749

/-! ## A336548.P9928818643971043555

`eq[0, A336546(A233583(n+1))]`
-/

namespace A336548.P9928818643971043555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336548.P9928818643971043555

/-!
# A336549: Numbers k, not powers of primes, such that A051027(k) = Product_{p^e|k} A051027(p^e). Here each p^e is the maximal power of prime p that divides k, and A051027(k) = sigma(sigma(k)).

The programs for A336549, there is no canonical definition to state claims against.
-/

/-! ## A336549.P3638374944406880222

`∩[A336547(n+1), A336559(n+1)]`
-/

namespace A336549.P3638374944406880222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336549.P3638374944406880222

/-! ## A336549.P12179594013727645279

`filter[A336559(n+1), A336546(#)]`
-/

namespace A336549.P12179594013727645279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336546 (f1 j).toNat = 1) n)

end

end A336549.P12179594013727645279

/-! ## A336549.P10132841296060645010

`filter[A024619(n+1), A336546(#)]`
-/

namespace A336549.P10132841296060645010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336546 (f1 j).toNat = 1) n)

end

end A336549.P10132841296060645010

/-! ## A336549.P14629027687547952882

`filter[A361102(n+2), A336546(#)]`
-/

namespace A336549.P14629027687547952882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336546 (f1 j).toNat = 1) n)

end

end A336549.P14629027687547952882

/-! ## A336549.P17199911824185510961

`∩[A024619(n+1), A336547(n+1)]`
-/

namespace A336549.P17199911824185510961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336549.P17199911824185510961

/-! ## A336549.P11618754406903321502

`filter[A336547(n+1), A143731(#)]`
-/

namespace A336549.P11618754406903321502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A336549.P11618754406903321502

/-! ## A336549.P15441081361512855553

`eq[A020500(n+1), A336546(n+1)]+1`
-/

namespace A336549.P15441081361512855553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336549.P15441081361512855553

/-! ## A336549.P8593524344960863861

`eq[A020500(n+1), A353784(n+1)]+1`
-/

namespace A336549.P8593524344960863861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353784 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336549.P8593524344960863861

/-! ## A336549.P12473499165968496785

`eq[A014963(n+2), A336546(n+2)]+2`
-/

namespace A336549.P12473499165968496785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A336549.P12473499165968496785

/-! ## A336549.P18430999832019254279

`A113484(eq[A020500(n+1), A336546(n+1)])`
-/

namespace A336549.P18430999832019254279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A336549.P18430999832019254279

/-! ## A336549.P16155495699162010305

`A113484(eq[A020500(n+1), A353784(n+1)])`
-/

namespace A336549.P16155495699162010305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A336549.P16155495699162010305

/-! ## A336549.P15091456587097904740

`A113484(eq[A020500(n+1), A353805(n+1)])`
-/

namespace A336549.P15091456587097904740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A336549.P15091456587097904740

/-!
# A336550: Numbers k such that A007947(k) divides sigma(k) and A003557(k)-1 either divides A326143(k) [= A001065(k) - A007947(k)], or both are zero.

The programs for A336550, there is no canonical definition to state claims against.
-/

/-! ## A336550.P7479067532757000035

`∩[A175200(n+1), A336552(n+1)]`
-/

namespace A336550.P7479067532757000035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336550.P7479067532757000035

/-!
# A336551: a(n) = A003557(n) - 1.

The programs for A336551, the canonical program `A336551.P8666843674191054020` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336551 has offset 1).

The definition of A336551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336551.P8666843674191054020

`A003557(n+1)-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336551

/-- `A003557(n+1)-1` -/
def P8666843674191054020.Spec : Prop :=
  ∀ n, P8666843674191054020.a n = A336551 (n + 1)

theorem P8666843674191054020.correct : P8666843674191054020.Spec := by
  intro n
  simp only [A336551, Nat.add_sub_cancel]

end A336551

/-! ## A336551.P10615296652235767167

`A066503(n+1)/A007947(n+1)`
-/

namespace A336551.P10615296652235767167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066503 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A336551.P10615296652235767167

namespace A336551

/-- `A066503(n+1)/A007947(n+1)` -/
def P10615296652235767167.Spec : Prop :=
  ∀ n, P10615296652235767167.a n = (A336551 (n + 1) : ℚ)

end A336551

/-! ## A336551.P2248355920509779960

`floor(n/∏{p}[n+1, #])`
-/

namespace A336551.P2248355920509779960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A336551.P2248355920509779960

namespace A336551

/-- `floor(n/∏{p}[n+1, #])` -/
def P2248355920509779960.Spec : Prop :=
  ∀ n, P2248355920509779960.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P17686895370248395861

`(n+1)/∏{p}[n+1, #]-1`
-/

namespace A336551.P17686895370248395861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - 1

end

end A336551.P17686895370248395861

namespace A336551

/-- `(n+1)/∏{p}[n+1, #]-1` -/
def P17686895370248395861.Spec : Prop :=
  ∀ n, P17686895370248395861.a n = (A336551 (n + 1) : ℚ)

end A336551

/-! ## A336551.P1410636224886218428

`n%((n+1)/∏{p}[n+1, #])`
-/

namespace A336551.P1410636224886218428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))

end

end A336551.P1410636224886218428

namespace A336551

/-- `n%((n+1)/∏{p}[n+1, #])` -/
def P1410636224886218428.Spec : Prop :=
  ∀ n, P1410636224886218428.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P130147148135032425

`xor(-((n+1)/∏{p}[n+1, #]), -1)`
-/

namespace A336551.P130147148135032425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))) (-1)

end

end A336551.P130147148135032425

namespace A336551

/-- `xor(-((n+1)/∏{p}[n+1, #]), -1)` -/
def P130147148135032425.Spec : Prop :=
  ∀ n, P130147148135032425.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P4043967681027041199

`n-A010848(n+1)`
-/

namespace A336551.P4043967681027041199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A010848 (n + 1)

end

end A336551.P4043967681027041199

namespace A336551

/-- `n-A010848(n+1)` -/
def P4043967681027041199.Spec : Prop :=
  ∀ n, P4043967681027041199.a n = A336551 (n + 1)

theorem P4043967681027041199.correct : P4043967681027041199.Spec := by
  intro n
  simp only [A336551, Nat.add_sub_cancel, A336551.P4043967681027041199.a, A336551.P8666843674191054020.a, A003557, A003557.P6364735403900941810.a, A010848, A010848.P2527659660694357650.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336551

/-! ## A336551.P17967368797124598386

`floor(n/A007947(n+1))`
-/

namespace A336551.P17967368797124598386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A007947 (n + 1) : ℚ)⌋

end

end A336551.P17967368797124598386

namespace A336551

/-- `floor(n/A007947(n+1))` -/
def P17967368797124598386.Spec : Prop :=
  ∀ n, P17967368797124598386.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P205007922577326489

`floor(n/(A076618(n+1)-1))`
-/

namespace A336551.P205007922577326489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A076618 (n + 1) - 1 : ℚ)⌋

end

end A336551.P205007922577326489

namespace A336551

/-- `floor(n/(A076618(n+1)-1))` -/
def P205007922577326489.Spec : Prop :=
  ∀ n, P205007922577326489.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P1286822501710630389

`A102631(n+1)/(n+1)-1`
-/

namespace A336551.P1286822501710630389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A336551.P1286822501710630389

namespace A336551

/-- `A102631(n+1)/(n+1)-1` -/
def P1286822501710630389.Spec : Prop :=
  ∀ n, P1286822501710630389.a n = (A336551 (n + 1) : ℚ)

end A336551

/-! ## A336551.P1613416263843491729

`A065423(A357689(n+1))`
-/

namespace A336551.P1613416263843491729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A357689 (n + 1)).toNat

end

end A336551.P1613416263843491729

namespace A336551

/-- `A065423(A357689(n+1))` -/
def P1613416263843491729.Spec : Prop :=
  ∀ n, P1613416263843491729.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P114784871867835031

`A052126(A217434(n+1))-1`
-/

namespace A336551.P114784871867835031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A217434 (n + 1)).toNat - 1

end

end A336551.P114784871867835031

namespace A336551

/-- `A052126(A217434(n+1))-1` -/
def P114784871867835031.Spec : Prop :=
  ∀ n, P114784871867835031.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P3634030055582897589

`A000096(n)%A003557(n+1)`
-/

namespace A336551.P3634030055582897589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n) (A003557 (n + 1))

end

end A336551.P3634030055582897589

namespace A336551

/-- `A000096(n)%A003557(n+1)` -/
def P3634030055582897589.Spec : Prop :=
  ∀ n, P3634030055582897589.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P16594428413822503968

`A000447(n)%A003557(n+1)`
-/

namespace A336551.P16594428413822503968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000447 n) (A003557 (n + 1))

end

end A336551.P16594428413822503968

namespace A336551

/-- `A000447(n)%A003557(n+1)` -/
def P16594428413822503968.Spec : Prop :=
  ∀ n, P16594428413822503968.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P4950904664827448639

`A000578(n)%A003557(n+1)`
-/

namespace A336551.P4950904664827448639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n) (A003557 (n + 1))

end

end A336551.P4950904664827448639

namespace A336551

/-- `A000578(n)%A003557(n+1)` -/
def P4950904664827448639.Spec : Prop :=
  ∀ n, P4950904664827448639.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P2072903836031784543

`A000584(n)%A003557(n+1)`
-/

namespace A336551.P2072903836031784543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000584 n) (A003557 (n + 1))

end

end A336551.P2072903836031784543

namespace A336551

/-- `A000584(n)%A003557(n+1)` -/
def P2072903836031784543.Spec : Prop :=
  ∀ n, P2072903836031784543.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P2481155238233975778

`A001015(n)%A003557(n+1)`
-/

namespace A336551.P2481155238233975778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001015 n) (A003557 (n + 1))

end

end A336551.P2481155238233975778

namespace A336551

/-- `A001015(n)%A003557(n+1)` -/
def P2481155238233975778.Spec : Prop :=
  ∀ n, P2481155238233975778.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P8157685827214127854

`A001017(n)%A003557(n+1)`
-/

namespace A336551.P8157685827214127854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001017 n) (A003557 (n + 1))

end

end A336551.P8157685827214127854

namespace A336551

/-- `A001017(n)%A003557(n+1)` -/
def P8157685827214127854.Spec : Prop :=
  ∀ n, P8157685827214127854.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P7379697674965188054

`A001845(n)%A003557(n+1)`
-/

namespace A336551.P7379697674965188054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001845 n) (A003557 (n + 1))

end

end A336551.P7379697674965188054

namespace A336551

/-- `A001845(n)%A003557(n+1)` -/
def P7379697674965188054.Spec : Prop :=
  ∀ n, P7379697674965188054.a n = A336551 (n + 1)

end A336551

/-! ## A336551.P16518067324100928361

`A001847(n)%A003557(n+1)`
-/

namespace A336551.P16518067324100928361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001847 n) (A003557 (n + 1))

end

end A336551.P16518067324100928361

namespace A336551

/-- `A001847(n)%A003557(n+1)` -/
def P16518067324100928361.Spec : Prop :=
  ∀ n, P16518067324100928361.a n = A336551 (n + 1)

end A336551

/-!
# A336553: Odd numbers k such that gcd(A336551(k), A326143(k)) is equal to A336551(k).

The programs for A336553, there is no canonical definition to state claims against.
-/

/-! ## A336553.P14202404944684752606

`∩[2*n+1, A336552(n+1)]`
-/

namespace A336553.P14202404944684752606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336553.P14202404944684752606

/-! ## A336553.P8654301197572032966

`filter[A336552(n+1), A324908(#)]`
-/

namespace A336553.P8654301197572032966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A336553.P8654301197572032966

/-! ## A336553.P18330511345012138286

`filter[A336552(n+1), A353569(#)]`
-/

namespace A336553.P18330511345012138286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A336553.P18330511345012138286

/-! ## A336553.P17975716539234771613

`filter[A336552(n+1), A374474(#)]`
-/

namespace A336553.P17975716539234771613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A336553.P17975716539234771613

/-! ## A336553.P6274667394038798953

`∩[A336552(n+1), A360769(n+1)]`
-/

namespace A336553.P6274667394038798953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336553.P6274667394038798953

/-! ## A336553.P15215115213151468623

`∩[A336552(n+1), A374476(n+1)]`
-/

namespace A336553.P15215115213151468623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336553.P15215115213151468623

/-! ## A336553.P16977598809555673814

`∩[A336552(n+1), A374475(n+1)]`
-/

namespace A336553.P16977598809555673814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336553.P16977598809555673814

/-! ## A336553.P5983452301604963732

`filter[A336552(n+1), A000035(#)]`
-/

namespace A336553.P5983452301604963732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A336553.P5983452301604963732

/-! ## A336553.P255916949095946514

`filter[A336552(n+1), A266070(#)]`
-/

namespace A336553.P255916949095946514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A336553.P255916949095946514

/-! ## A336553.P7266650793659885779

`filter[A336552(n+1), A266611(#)]`
-/

namespace A336553.P7266650793659885779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A336553.P7266650793659885779

/-! ## A336553.P5614659742265686221

`filter[A336552(n+1), A266719(#)]`
-/

namespace A336553.P5614659742265686221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A336553.P5614659742265686221

/-! ## A336553.P828321116206643057

`filter[A336552(n+1), A272664(#)]`
-/

namespace A336553.P828321116206643057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A336553.P828321116206643057

/-! ## A336553.P6541267806197636027

`filter[A336552(n+1), A296066(#)]`
-/

namespace A336553.P6541267806197636027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A336553.P6541267806197636027

/-!
# A336554: Odd numbers k such that rad(k) divides sigma(k).

The programs for A336554, there is no canonical definition to state claims against.
-/

/-! ## A336554.P12812148997013648818

`∩[A015706(n+1), A175200(n+1)]`
-/

namespace A336554.P12812148997013648818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336554.P12812148997013648818

/-! ## A336554.P9192050321273390476

`∩[or(1, A011775(n+1)), A175200(n+1)]`
-/

namespace A336554.P9192050321273390476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A011775 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336554.P9192050321273390476

/-! ## A336554.P5601258802951117570

`record[A093178(A175200(n+1))]`
-/

namespace A336554.P5601258802951117570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A175200 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336554.P5601258802951117570

/-!
# A336555: Numbers k for which A326144(k) <> A336566(k).

The programs for A336555, there is no canonical definition to state claims against.
-/

/-! ## A336555.P2337613126470285048

`eq[2, A068385(A297165(n))]`
-/

namespace A336555.P2337613126470285048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068385 (A297165 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336555.P2337613126470285048

/-! ## A336555.P6159555337072243709

`A266531(eq[8, A066657(n)])`
-/

namespace A336555.P6159555337072243709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336555.P6159555337072243709

/-!
# A336556: a(n) = 1 if A336456(n) = Product_{p^e|n} A336456(p^e), and 0 otherwise. Here each p^e is the maximal power of prime p that divides k, and A336456(n) = A335915(sigma(sigma(n))).

The programs for A336556, there is no canonical definition to state claims against.
-/

/-! ## A336556.P1267765998903607137

`char[A336557(n+1)-1]`
-/

namespace A336556.P1267765998903607137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336557 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336556.P1267765998903607137

/-! ## A336556.P3990874240213826685

`1-char[A336558(n+1)-1]`
-/

namespace A336556.P3990874240213826685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336558 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A336556.P3990874240213826685

/-! ## A336556.P18286845405263348883

`char[∪[A000961(n+1), A336559(n+1)]-1]`
-/

namespace A336556.P18286845405263348883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336556.P18286845405263348883

/-! ## A336556.P7413662557565346170

`char[∪[A336547(n+1), A336559(n+1)]-1]`
-/

namespace A336556.P7413662557565346170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336556.P7413662557565346170

/-! ## A336556.P13288817114593797726

`A192280(5*A353806(n+1))`
-/

namespace A336556.P13288817114593797726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (5 * A353806 (n + 1)).toNat

end

end A336556.P13288817114593797726

/-! ## A336556.P923381468500267521

`A000038(n)^A046766(A353805(n+1))`
-/

namespace A336556.P923381468500267521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A046766 (A353805 (n + 1)).toNat : ℤ)

end

end A336556.P923381468500267521

/-! ## A336556.P12418112030692300449

`A248395(2*(n+2))^A046766(A353805(n+1))`
-/

namespace A336556.P12418112030692300449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248395 (2 * (n + 2)) : ℚ) ^ (A046766 (A353805 (n + 1)).toNat : ℤ)

end

end A336556.P12418112030692300449

/-! ## A336556.P12210609568795210598

`A204177(6*(A353805(n+1)+A353803(n+1)/A353804(n+1))+4)`
-/

namespace A336556.P12210609568795210598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204177 (SequenceMachineLib.roundAway (6 * ((A353805 (n + 1) : ℚ) + (A353803 (n + 1) : ℚ) / (A353804 (n + 1) : ℚ)) + 4)).toNat

end

end A336556.P12210609568795210598

/-! ## A336556.P2460989649241904330

`A204177(A353805(n+1)²)`
-/

namespace A336556.P2460989649241904330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204177 (A353805 (n + 1) ^ 2).toNat

end

end A336556.P2460989649241904330

/-! ## A336556.P13461387291567012958

`A010054(15*A353806(n+1))`
-/

namespace A336556.P13461387291567012958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (15 * A353806 (n + 1)).toNat

end

end A336556.P13461387291567012958

/-!
# A336557: Numbers k such that A336456(n) = Product_{p^e|n} A336456(p^e). Here each p^e is the maximal power of prime p that divides k, and A336456(n) = A335915(sigma(sigma(n))).

The programs for A336557, there is no canonical definition to state claims against.
-/

/-! ## A336557.P9262489740138717643

`1+eq[1, A336556(n+1)]`
-/

namespace A336557.P9262489740138717643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336557.P9262489740138717643

/-! ## A336557.P7543247508403593242

`∪[A000961(n+1), A336559(n+1)]`
-/

namespace A336557.P7543247508403593242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336557.P7543247508403593242

/-! ## A336557.P945155714628152869

`∪[A141807(n+1), A336559(n+1)]`
-/

namespace A336557.P945155714628152869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336557.P945155714628152869

/-! ## A336557.P4625491297452034830

`∪[A225657(n+1), A336559(n+1)]`
-/

namespace A336557.P4625491297452034830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336557.P4625491297452034830

/-! ## A336557.P1588298115451541781

`∪[A336547(n+1), A336559(n+1)]`
-/

namespace A336557.P1588298115451541781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336557.P1588298115451541781

/-! ## A336557.P3136919844025535944

`∪[A336547(n+1), A336560(n+1)]`
-/

namespace A336557.P3136919844025535944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336557.P3136919844025535944

/-! ## A336557.P2910521289876935665

`record[A000027(n+1)*A336556(n+1)]`
-/

namespace A336557.P2910521289876935665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A336556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336557.P2910521289876935665

/-! ## A336557.P9566191940596005168

`record[A038722(A038722(n+1))*A336556(n+1)]`
-/

namespace A336557.P9566191940596005168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A038722 (n + 1)).toNat * A336556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336557.P9566191940596005168

/-! ## A336557.P15284694701945599275

`eq[char[A336558(n+1)], A000007(n)]`
-/

namespace A336557.P15284694701945599275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336558 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A336557.P15284694701945599275

/-! ## A336557.P16488342360049446518

`record[A004525(2*(n+1))*A336556(n+1)]`
-/

namespace A336557.P16488342360049446518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * (n + 1)) * A336556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336557.P16488342360049446518

/-! ## A336557.P10622297098489974290

`record[A008619(n)*A336556(A008619(n))]`
-/

namespace A336557.P10622297098489974290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A336556 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336557.P10622297098489974290

/-! ## A336557.P18261726436078443446

`record[A286477(n+1)*A336556(A286477(n+1))]`
-/

namespace A336557.P18261726436078443446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (n + 1) * A336556 (A286477 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336557.P18261726436078443446

/-!
# A336558: Numbers k such that A336456(n) is not equal to Product_{p^e|n} A336456(p^e). Here each p^e is the maximal power of prime p that divides k, and A336456(n) = A335915(sigma(sigma(n))).

The programs for A336558, there is no canonical definition to state claims against.
-/

/-! ## A336558.P824575006865368769

`eq[0, A336556(n+1)]+1`
-/

namespace A336558.P824575006865368769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336558.P824575006865368769

/-! ## A336558.P4544965421369447963

`comp[A336557(n+1)-1]+1`
-/

namespace A336558.P4544965421369447963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336557 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A336558.P4544965421369447963

/-! ## A336558.P14370573579339471186

`A153152(eq[0, A336556(n+1)])`
-/

namespace A336558.P14370573579339471186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336558.P14370573579339471186

/-! ## A336558.P11812890856024503117

`A113484(eq[0, A336556(n+1)])`
-/

namespace A336558.P11812890856024503117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336558.P11812890856024503117

/-! ## A336558.P13372749335978139555

`eq[0, A336556(A233583(n+1))]`
-/

namespace A336558.P13372749335978139555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336556 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336558.P13372749335978139555

/-! ## A336558.P17460341200503241962

`lt[A000038(n), A046766(A353805(n+1))]+1`
-/

namespace A336558.P17460341200503241962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046766 (A353805 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336558.P17460341200503241962

/-!
# A336559: Numbers k, not powers of primes, such that A336456(k) = Product_{p^e|k} A336456(p^e). Here each p^e is the maximal power of prime p that divides k, and A336456(k) = A335915(sigma(sigma(k))).

The programs for A336559, there is no canonical definition to state claims against.
-/

/-! ## A336559.P4902129778218892077

`∪[A336549(n+1), A336560(n+1)]`
-/

namespace A336559.P4902129778218892077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336559.P4902129778218892077

/-! ## A336559.P4530199120340920472

`filter[A024619(n+1), A336556(#)]`
-/

namespace A336559.P4530199120340920472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336556 (f1 j).toNat = 1) n)

end

end A336559.P4530199120340920472

/-! ## A336559.P4663742325142543935

`filter[A361102(n+2), A336556(#)]`
-/

namespace A336559.P4663742325142543935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336556 (f1 j).toNat = 1) n)

end

end A336559.P4663742325142543935

/-! ## A336559.P17949678909833710644

`∩[A024619(n+1), A336557(n+1)]`
-/

namespace A336559.P17949678909833710644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336559.P17949678909833710644

/-! ## A336559.P15192968597689994236

`filter[A336557(n+1), A143731(#)]`
-/

namespace A336559.P15192968597689994236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A336559.P15192968597689994236

/-! ## A336559.P14623777905924215333

`eq[A020500(n+1), A336556(n+1)]+1`
-/

namespace A336559.P14623777905924215333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336559.P14623777905924215333

/-! ## A336559.P15327659465454295815

`eq[A318475(A119288(n+1)), A336556(n+1)]+1`
-/

namespace A336559.P15327659465454295815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318475 (A119288 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336559.P15327659465454295815

/-! ## A336559.P6356133851063776915

`A113484(eq[A020500(n+1), A336556(n+1)])`
-/

namespace A336559.P6356133851063776915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A336559.P6356133851063776915

/-!
# A336560: Numbers k at which points A336456(k) appears multiplicative, but A051027(k) does not.

The programs for A336560, there is no canonical definition to state claims against.
-/

/-! ## A336560.P17240723254635355221

`filter[A336548(n+1), A336556(#)]`
-/

namespace A336560.P17240723254635355221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336556 (f1 j).toNat = 1) n)

end

end A336560.P17240723254635355221

/-! ## A336560.P1124071757068868351

`∩[A336548(n+1), A336559(n+1)]`
-/

namespace A336560.P1124071757068868351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336560.P1124071757068868351

/-! ## A336560.P11174116799120674137

`record[A336548(n+2)*A336556(A336548(n+2))]`
-/

namespace A336560.P11174116799120674137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336548 (n + 2) * A336556 (A336548 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336560.P11174116799120674137

/-! ## A336560.P2358844011321353367

`∩[A336548(n+1), A336557(n+1)]`
-/

namespace A336560.P2358844011321353367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336560.P2358844011321353367

/-! ## A336560.P18361599287870002016

`∩[comp[A336547(n+1)], A336559(n+1)]`
-/

namespace A336560.P18361599287870002016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A336560.P18361599287870002016

/-! ## A336560.P5621523236363549673

`∩[eq[0, A336546(n+2)]+2, A336559(n+1)]`
-/

namespace A336560.P5621523236363549673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A336560.P5621523236363549673

/-!
# A336562: Number of pairs sigma(p^x), sigma(q^y) that are not coprime, where p^x and q^y are any two maximal prime power divisors of n, with p < q. a(1) = 0.

The programs for A336562, there is no canonical definition to state claims against.
-/

/-! ## A336562.P16072008710233538535

`A011975(A090288(n+3))%A353755(n+1)`
-/

namespace A336562.P16072008710233538535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011975 (A090288 (n + 3)).toNat) (A353755 (n + 1))

end

end A336562.P16072008710233538535

/-! ## A336562.P18067609022122076265

`A353756(A137292(n+4))%A353806(n+1)`
-/

namespace A336562.P18067609022122076265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353756 (A137292 (n + 4)).toNat) (A353806 (n + 1))

end

end A336562.P18067609022122076265

/-! ## A336562.P17352310273317268106

`A249442(n*A353803(n+1))`
-/

namespace A336562.P17352310273317268106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 ((n : ℤ) * A353803 (n + 1)).toNat

end

end A336562.P17352310273317268106

/-! ## A336562.P8279795772588232546

`ceil(A353803(n+1)/A319837(n+1))`
-/

namespace A336562.P8279795772588232546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353803 (n + 1) : ℚ) / (A319837 (n + 1) : ℚ)⌉

end

end A336562.P8279795772588232546

/-! ## A336562.P1737755880028145111

`ceil(A353803(n+1)/A325091(n+1))`
-/

namespace A336562.P1737755880028145111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353803 (n + 1) : ℚ) / (A325091 (n + 1) : ℚ)⌉

end

end A336562.P1737755880028145111

/-! ## A336562.P3696821448299314247

`A109308(A124428(n))%A353755(n+1)`
-/

namespace A336562.P3696821448299314247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109308 (A124428 n).toNat) (A353755 (n + 1))

end

end A336562.P3696821448299314247

/-! ## A336562.P9703299378615936370

`A000104(A362802(n+1))%A353806(n+1)`
-/

namespace A336562.P9703299378615936370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000104 (A362802 (n + 1)).toNat) (A353806 (n + 1))

end

end A336562.P9703299378615936370

/-! ## A336562.P15620424410680305600

`A292582(A064094(n))%A353755(n+1)`
-/

namespace A336562.P15620424410680305600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292582 (A064094 n).toNat) (A353755 (n + 1))

end

end A336562.P15620424410680305600

/-! ## A336562.P7233569619053334037

`A052409(A120906(n))%A353755(n+1)`
-/

namespace A336562.P7233569619053334037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052409 (A120906 n).toNat) (A353755 (n + 1))

end

end A336562.P7233569619053334037

/-! ## A336562.P552665418944401605

`A124010(A136768(n+1))%A353806(n+1)`
-/

namespace A336562.P552665418944401605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124010 (A136768 (n + 1)).toNat) (A353806 (n + 1))

end

end A336562.P552665418944401605

/-!
# A336563: Sum of proper divisors of n that are divisible by every prime that divides n.

The programs for A336563, the canonical program `A336563.P9984757365447373313` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336563 has offset 1).

The definition of A336563 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336567, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336563.P1098058225893454660

`A057723(n+1)-(n+1)`
-/

namespace A336563.P1098058225893454660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - (n + 1 : ℤ)

end

end A336563.P1098058225893454660

namespace A336563

/-- `A057723(n+1)-(n+1)` -/
def P1098058225893454660.Spec : Prop :=
  ∀ n, P1098058225893454660.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P7967570337969375237

`A336564(n+1)-A033879(n+1)`
-/

namespace A336563.P7967570337969375237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) - A033879 (n + 1)

end

end A336563.P7967570337969375237

namespace A336563

/-- `A336564(n+1)-A033879(n+1)` -/
def P7967570337969375237.Spec : Prop :=
  ∀ n, P7967570337969375237.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P9984757365447373313

`A007947(n+1)*A336567(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A336563

/-- `A007947(n+1)*A336567(n+1)` -/
def P9984757365447373313.Spec : Prop :=
  ∀ n, P9984757365447373313.a n = A336563 (n + 1)

theorem P9984757365447373313.correct : P9984757365447373313.Spec := by
  intro n
  simp only [A336563, Nat.add_sub_cancel]

end A336563

/-! ## A336563.P15067034983998385039

`A007947(n+1)*A001065(A003557(n+1))`
-/

namespace A336563.P15067034983998385039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A001065 (A003557 (n + 1)).toNat

end

end A336563.P15067034983998385039

namespace A336563

/-- `A007947(n+1)*A001065(A003557(n+1))` -/
def P15067034983998385039.Spec : Prop :=
  ∀ n, P15067034983998385039.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P27776895341787856

`∏{p}[n+1, #]*A001065((n+1)/∏{p}[n+1, #])`
-/

namespace A336563.P27776895341787856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A001065 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A336563.P27776895341787856

namespace A336563

/-- `∏{p}[n+1, #]*A001065((n+1)/∏{p}[n+1, #])` -/
def P27776895341787856.Spec : Prop :=
  ∀ n, P27776895341787856.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P941693973372802063

`A336564(n+1)+A033880(n+1)`
-/

namespace A336563.P941693973372802063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) + A033880 (n + 1)

end

end A336563.P941693973372802063

namespace A336563

/-- `A336564(n+1)+A033880(n+1)` -/
def P941693973372802063.Spec : Prop :=
  ∀ n, P941693973372802063.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P12003968261789922670

`A396544(n+1)+A126164(n+1)`
-/

namespace A336563.P12003968261789922670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396544 (n + 1) + A126164 (n + 1)

end

end A336563.P12003968261789922670

namespace A336563

/-- `A396544(n+1)+A126164(n+1)` -/
def P12003968261789922670.Spec : Prop :=
  ∀ n, P12003968261789922670.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P11519415855347342105

`A001065(n+1)-A308135(n+1)`
-/

namespace A336563.P11519415855347342105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A308135 (n + 1)

end

end A336563.P11519415855347342105

namespace A336563

/-- `A001065(n+1)-A308135(n+1)` -/
def P11519415855347342105.Spec : Prop :=
  ∀ n, P11519415855347342105.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P14573003163496932173

`A048146(n+1)-A389171(n+1)`
-/

namespace A336563.P14573003163496932173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) - A389171 (n + 1)

end

end A336563.P14573003163496932173

namespace A336563

/-- `A048146(n+1)-A389171(n+1)` -/
def P14573003163496932173.Spec : Prop :=
  ∀ n, P14573003163496932173.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P12593132857212877576

`A336564(n+1)+A001065(n+1)-(n+1)`
-/

namespace A336563.P12593132857212877576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) + (A001065 (n + 1) - (n + 1 : ℤ))

end

end A336563.P12593132857212877576

namespace A336563

/-- `A336564(n+1)+A001065(n+1)-(n+1)` -/
def P12593132857212877576.Spec : Prop :=
  ∀ n, P12593132857212877576.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P10896155048740604259

`A336564(n+1)+A000203(n+1)-2*(n+1)`
-/

namespace A336563.P10896155048740604259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) + (A000203 (n + 1) - (2 * (n + 1) : ℤ))

end

end A336563.P10896155048740604259

namespace A336563

/-- `A336564(n+1)+A000203(n+1)-2*(n+1)` -/
def P10896155048740604259.Spec : Prop :=
  ∀ n, P10896155048740604259.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P1215404195186559769

`A336564(n+1)-(2*(n+1)-(A155085(n+1)-n)+1)`
-/

namespace A336563.P1215404195186559769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) - ((2 * (n + 1) : ℤ) - (A155085 (n + 1) - (n : ℤ)) + 1)

end

end A336563.P1215404195186559769

namespace A336563

/-- `A336564(n+1)-(2*(n+1)-(A155085(n+1)-n)+1)` -/
def P1215404195186559769.Spec : Prop :=
  ∀ n, P1215404195186559769.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P3949988760419401322

`A336564(n+1)-(2*n-A064987(n+1)/(n+1)+2)`
-/

namespace A336563.P3949988760419401322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336564 (n + 1) : ℚ) - ((2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2)

end

end A336563.P3949988760419401322

namespace A336563

/-- `A336564(n+1)-(2*n-A064987(n+1)/(n+1)+2)` -/
def P3949988760419401322.Spec : Prop :=
  ∀ n, P3949988760419401322.a n = (A336563 (n + 1) : ℚ)

end A336563

/-! ## A336563.P4530076864022654836

`A015052(A015052(n+1))*A336567(n+1)`
-/

namespace A336563.P4530076864022654836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat * A336567 (n + 1)

end

end A336563.P4530076864022654836

namespace A336563

/-- `A015052(A015052(n+1))*A336567(n+1)` -/
def P4530076864022654836.Spec : Prop :=
  ∀ n, P4530076864022654836.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P14390306573954904180

`A015053(A015053(n+1))*A336567(n+1)`
-/

namespace A336563.P14390306573954904180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat * A336567 (n + 1)

end

end A336563.P14390306573954904180

namespace A336563

/-- `A015053(A015053(n+1))*A336567(n+1)` -/
def P14390306573954904180.Spec : Prop :=
  ∀ n, P14390306573954904180.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P14615757225468598255

`A001065(A336551(n+1)+1)*A007947(n+1)`
-/

namespace A336563.P14615757225468598255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A336551 (n + 1) + 1).toNat * A007947 (n + 1)

end

end A336563.P14615757225468598255

namespace A336563

/-- `A001065(A336551(n+1)+1)*A007947(n+1)` -/
def P14615757225468598255.Spec : Prop :=
  ∀ n, P14615757225468598255.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P16228725708771012373

`(A335341(n+1)-A003557(n+1))*A007947(n+1)`
-/

namespace A336563.P16228725708771012373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A335341 (n + 1) - A003557 (n + 1)) * A007947 (n + 1)

end

end A336563.P16228725708771012373

namespace A336563

/-- `(A335341(n+1)-A003557(n+1))*A007947(n+1)` -/
def P16228725708771012373.Spec : Prop :=
  ∀ n, P16228725708771012373.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P9093519188246037768

`A057723(n+1)/A335341(n+1)*A336567(n+1)`
-/

namespace A336563.P9093519188246037768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A335341 (n + 1) : ℚ) * (A336567 (n + 1) : ℚ)

end

end A336563.P9093519188246037768

namespace A336563

/-- `A057723(n+1)/A335341(n+1)*A336567(n+1)` -/
def P9093519188246037768.Spec : Prop :=
  ∀ n, P9093519188246037768.a n = (A336563 (n + 1) : ℚ)

end A336563

/-! ## A336563.P14898454877435287497

`A336564(n+1)-(A000027(n+1)-A000203(n+1)+n+1)`
-/

namespace A336563.P14898454877435287497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) - (A000027 (n + 1) - A000203 (n + 1) + (n + 1 : ℤ))

end

end A336563.P14898454877435287497

namespace A336563

/-- `A336564(n+1)-(A000027(n+1)-A000203(n+1)+n+1)` -/
def P14898454877435287497.Spec : Prop :=
  ∀ n, P14898454877435287497.a n = A336563 (n + 1)

end A336563

/-! ## A336563.P17738743716172344169

`A079781(n+1)%A057723(n+1)`
-/

namespace A336563.P17738743716172344169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079781 (n + 1)) (A057723 (n + 1))

end

end A336563.P17738743716172344169

namespace A336563

/-- `A079781(n+1)%A057723(n+1)` -/
def P17738743716172344169.Spec : Prop :=
  ∀ n, P17738743716172344169.a n = A336563 (n + 1)

end A336563

/-!
# A336564: a(n) = n - A308135(n), where A308135(n) is the sum of non-coreful divisors of n.

The programs for A336564, the canonical program `A336564.P7523591857433776956` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336564 has offset 1).

The definition of A336564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336564.P7523591857433776956

`n+1-A308135(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336564

/-- `n+1-A308135(n+1)` -/
def P7523591857433776956.Spec : Prop :=
  ∀ n, P7523591857433776956.a n = A336564 (n + 1)

theorem P7523591857433776956.correct : P7523591857433776956.Spec := by
  intro n
  simp only [A336564, Nat.add_sub_cancel]

end A336564

/-! ## A336564.P5928910573233431199

`A336563(n+1)+A033879(n+1)`
-/

namespace A336564.P5928910573233431199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + A033879 (n + 1)

end

end A336564.P5928910573233431199

namespace A336564

/-- `A336563(n+1)+A033879(n+1)` -/
def P5928910573233431199.Spec : Prop :=
  ∀ n, P5928910573233431199.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P11766268026104973756

`n+1-(A000203(n+1)-A057723(n+1))`
-/

namespace A336564.P11766268026104973756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A000203 (n + 1) - A057723 (n + 1))

end

end A336564.P11766268026104973756

namespace A336564

/-- `n+1-(A000203(n+1)-A057723(n+1))` -/
def P11766268026104973756.Spec : Prop :=
  ∀ n, P11766268026104973756.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P7573313826453435567

`A057723(n+1)-A001065(n+1)`
-/

namespace A336564.P7573313826453435567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A001065 (n + 1)

end

end A336564.P7573313826453435567

namespace A336564

/-- `A057723(n+1)-A001065(n+1)` -/
def P7573313826453435567.Spec : Prop :=
  ∀ n, P7573313826453435567.a n = A336564 (n + 1)

theorem P7573313826453435567.correct : P7573313826453435567.Spec := by
  intro n
  simp only [A336564, Nat.add_sub_cancel, A336564.P7573313826453435567.a, A336564.P7523591857433776956.a, A001065, A001065.P4097147489331274860.a, A057723, A057723.P9092718560045484766.a, A308135, A308135.P17632068956087446165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336564

/-! ## A336564.P8327759318017969742

`A336563(n+1)-A033880(n+1)`
-/

namespace A336564.P8327759318017969742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) - A033880 (n + 1)

end

end A336564.P8327759318017969742

namespace A336564

/-- `A336563(n+1)-A033880(n+1)` -/
def P8327759318017969742.Spec : Prop :=
  ∀ n, P8327759318017969742.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P8675749467491847151

`A389170(n+1)-A034460(n+1)`
-/

namespace A336564.P8675749467491847151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389170 (n + 1) - A034460 (n + 1)

end

end A336564.P8675749467491847151

namespace A336564

/-- `A389170(n+1)-A034460(n+1)` -/
def P8675749467491847151.Spec : Prop :=
  ∀ n, P8675749467491847151.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P11504491264743998943

`A336563(n+1)+∑[2-A340793(n+1)]`
-/

namespace A336564.P11504491264743998943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336564.P11504491264743998943

namespace A336564

/-- `A336563(n+1)+∑[2-A340793(n+1)]` -/
def P11504491264743998943.Spec : Prop :=
  ∀ n, P11504491264743998943.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P892276909796878554

`A336563(n+1)+n+1-A001065(n+1)`
-/

namespace A336564.P892276909796878554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + ((n + 1 : ℤ) - A001065 (n + 1))

end

end A336564.P892276909796878554

namespace A336564

/-- `A336563(n+1)+n+1-A001065(n+1)` -/
def P892276909796878554.Spec : Prop :=
  ∀ n, P892276909796878554.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P3905001133170650455

`A336563(n+1)+2*(n+1)-A000203(n+1)`
-/

namespace A336564.P3905001133170650455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + ((2 * (n + 1) : ℤ) - A000203 (n + 1))

end

end A336564.P3905001133170650455

namespace A336564

/-- `A336563(n+1)+2*(n+1)-A000203(n+1)` -/
def P3905001133170650455.Spec : Prop :=
  ∀ n, P3905001133170650455.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P16474892788742404522

`A336563(n+1)+2*(n+1)-(A155085(n+1)-n)+1`
-/

namespace A336564.P16474892788742404522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + ((2 * (n + 1) : ℤ) - (A155085 (n + 1) - (n : ℤ)) + 1)

end

end A336564.P16474892788742404522

namespace A336564

/-- `A336563(n+1)+2*(n+1)-(A155085(n+1)-n)+1` -/
def P16474892788742404522.Spec : Prop :=
  ∀ n, P16474892788742404522.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P10891694157262319445

`A336563(n+1)+2*n-A064987(n+1)/(n+1)+2`
-/

namespace A336564.P10891694157262319445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336563 (n + 1) : ℚ) + ((2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2)

end

end A336564.P10891694157262319445

namespace A336564

/-- `A336563(n+1)+2*n-A064987(n+1)/(n+1)+2` -/
def P10891694157262319445.Spec : Prop :=
  ∀ n, P10891694157262319445.a n = (A336564 (n + 1) : ℚ)

end A336564

/-! ## A336564.P1571128181676069492

`A057723(n+1)-(A326143(n+1)+A007947(n+1))`
-/

namespace A336564.P1571128181676069492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - (A326143 (n + 1) + A007947 (n + 1))

end

end A336564.P1571128181676069492

namespace A336564

/-- `A057723(n+1)-(A326143(n+1)+A007947(n+1))` -/
def P1571128181676069492.Spec : Prop :=
  ∀ n, P1571128181676069492.a n = A336564 (n + 1)

theorem P1571128181676069492.correct : P1571128181676069492.Spec := by
  intro n
  simp only [A336564, Nat.add_sub_cancel, A336564.P1571128181676069492.a, A336564.P7523591857433776956.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A057723, A057723.P9092718560045484766.a, A308135, A308135.P17632068956087446165.a, A326143, A326143.P176859411368788289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A326142, A326142.P15415912859726343761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336564

/-! ## A336564.P14133473558261980400

`A326055(n+1)+A336563(n+1)-A326054(n+1)`
-/

namespace A336564.P14133473558261980400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) + (A336563 (n + 1) - A326054 (n + 1))

end

end A336564.P14133473558261980400

namespace A336564

/-- `A326055(n+1)+A336563(n+1)-A326054(n+1)` -/
def P14133473558261980400.Spec : Prop :=
  ∀ n, P14133473558261980400.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P5258829442020880578

`A326058(n+1)+A336563(n+1)-A326059(n+1)`
-/

namespace A336564.P5258829442020880578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) + (A336563 (n + 1) - A326059 (n + 1))

end

end A336564.P5258829442020880578

namespace A336564

/-- `A326058(n+1)+A336563(n+1)-A326059(n+1)` -/
def P5258829442020880578.Spec : Prop :=
  ∀ n, P5258829442020880578.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P17233644265793811703

`A326128(n+1)+A336563(n+1)-A326127(n+1)`
-/

namespace A336564.P17233644265793811703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) + (A336563 (n + 1) - A326127 (n + 1))

end

end A336564.P17233644265793811703

namespace A336564

/-- `A326128(n+1)+A336563(n+1)-A326127(n+1)` -/
def P17233644265793811703.Spec : Prop :=
  ∀ n, P17233644265793811703.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P5167656750036829215

`A007947(n+1)*A335341(n+1)-A001065(n+1)`
-/

namespace A336564.P5167656750036829215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A335341 (n + 1) - A001065 (n + 1)

end

end A336564.P5167656750036829215

namespace A336564

/-- `A007947(n+1)*A335341(n+1)-A001065(n+1)` -/
def P5167656750036829215.Spec : Prop :=
  ∀ n, P5167656750036829215.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P16823552410667263000

`A336563(n+1)+A004767(n)-(A155085(n+1)+n)`
-/

namespace A336564.P16823552410667263000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + (A004767 n - (A155085 (n + 1) + (n : ℤ)))

end

end A336564.P16823552410667263000

namespace A336564

/-- `A336563(n+1)+A004767(n)-(A155085(n+1)+n)` -/
def P16823552410667263000.Spec : Prop :=
  ∀ n, P16823552410667263000.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P10922563429193585856

`A336563(n+1)+A000027(n+1)-A000203(n+1)+n+1`
-/

namespace A336564.P10922563429193585856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + (A000027 (n + 1) - A000203 (n + 1) + (n + 1 : ℤ))

end

end A336564.P10922563429193585856

namespace A336564

/-- `A336563(n+1)+A000027(n+1)-A000203(n+1)+n+1` -/
def P10922563429193585856.Spec : Prop :=
  ∀ n, P10922563429193585856.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P3065182544108027540

`A336563(n+1)+n+1-(A007503(n+1)-A062249(n+1))`
-/

namespace A336564.P3065182544108027540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + ((n + 1 : ℤ) - (A007503 (n + 1) - A062249 (n + 1)))

end

end A336564.P3065182544108027540

namespace A336564

/-- `A336563(n+1)+n+1-(A007503(n+1)-A062249(n+1))` -/
def P3065182544108027540.Spec : Prop :=
  ∀ n, P3065182544108027540.a n = A336564 (n + 1)

end A336564

/-! ## A336564.P383671653218279143

`A336563(n+1)+n+1-(A326126(n+1)-A326128(n+1))`
-/

namespace A336564.P383671653218279143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + ((n + 1 : ℤ) - (A326126 (n + 1) - A326128 (n + 1)))

end

end A336564.P383671653218279143

namespace A336564

/-- `A336563(n+1)+n+1-(A326126(n+1)-A326128(n+1))` -/
def P383671653218279143.Spec : Prop :=
  ∀ n, P383671653218279143.a n = A336564 (n + 1)

end A336564

/-!
# A336565: Numbers k for which (A057723(k)-k) is equal to gcd(k-A308135(k), A057723(k)-k).

The programs for A336565, there is no canonical definition to state claims against.
-/

/-! ## A336565.P16847069656580275082

`A263928(eq[1, A133034(n)])`
-/

namespace A336565.P16847069656580275082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336565.P16847069656580275082

/-!
# A336566: a(n) = gcd(A336563(n), A336564(n)) = gcd(A057723(n)-n, n-A308135(n)).

The programs for A336566, the canonical program `A336566.P17857455138638732471` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336566 has offset 1).

The definition of A336566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336566.P14925022654842736730

`gcd(A336563(n+1), A336564(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336566.P14925022654842736730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336563 (n + 1)) (A336564 (n + 1))

end

end A336566.P14925022654842736730

namespace A336566

/-- `gcd(A336563(n+1), A336564(n+1))` -/
def P14925022654842736730.Spec : Prop :=
  ∀ n, (P14925022654842736730.a n : ℤ) = A336566 (n + 1)

end A336566

/-! ## A336566.P17857455138638732471

`gcd(A057723(n+1)-(n+1), n+1-A308135(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336566

/-- `gcd(A057723(n+1)-(n+1), n+1-A308135(n+1))` -/
def P17857455138638732471.Spec : Prop :=
  ∀ n, (P17857455138638732471.a n : ℤ) = A336566 (n + 1)

theorem P17857455138638732471.correct : P17857455138638732471.Spec := by
  intro n
  simp only [A336566, Nat.add_sub_cancel]

end A336566

/-! ## A336566.P10355953583416140769

`1-A336647(n+1)+n`
-/

namespace A336566.P10355953583416140769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A336647 (n + 1) + (n : ℤ)

end

end A336566.P10355953583416140769

namespace A336566

/-- `1-A336647(n+1)+n` -/
def P10355953583416140769.Spec : Prop :=
  ∀ n, P10355953583416140769.a n = A336566 (n + 1)

theorem P10355953583416140769.correct : P10355953583416140769.Spec := by
  intro n
  simp only [A336566, Nat.add_sub_cancel, A336566.P10355953583416140769.a, A336566.P17857455138638732471.a, A057723, A057723.P9092718560045484766.a, A308135, A308135.P17632068956087446165.a, A336647, A336647.P1661556818682037462.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336566

/-! ## A336566.P11698460748699600369

`abs(A336647(n+1)+A001478(n+1))`
-/

namespace A336566.P11698460748699600369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A336647 (n + 1) + A001478 (n + 1)|

end

end A336566.P11698460748699600369

namespace A336566

/-- `abs(A336647(n+1)+A001478(n+1))` -/
def P11698460748699600369.Spec : Prop :=
  ∀ n, P11698460748699600369.a n = A336566 (n + 1)

end A336566

/-! ## A336566.P12573614113888501504

`gcd(2*(n+1)-A000203(n+1), -A336564(n+1))`
-/

namespace A336566.P12573614113888501504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 1) : ℤ) - A000203 (n + 1)) (-A336564 (n + 1))

end

end A336566.P12573614113888501504

namespace A336566

/-- `gcd(2*(n+1)-A000203(n+1), -A336564(n+1))` -/
def P12573614113888501504.Spec : Prop :=
  ∀ n, (P12573614113888501504.a n : ℤ) = A336566 (n + 1)

end A336566

/-! ## A336566.P18395704213436907481

`gcd(2*(n+1)-(A155085(n+1)-n)+1, A336564(A000027(n+1)))`
-/

namespace A336566.P18395704213436907481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 1) : ℤ) - (A155085 (n + 1) - (n : ℤ)) + 1) (A336564 (A000027 (n + 1)).toNat)

end

end A336566.P18395704213436907481

namespace A336566

/-- `gcd(2*(n+1)-(A155085(n+1)-n)+1, A336564(A000027(n+1)))` -/
def P18395704213436907481.Spec : Prop :=
  ∀ n, (P18395704213436907481.a n : ℤ) = A336566 (n + 1)

end A336566

/-! ## A336566.P11003162116629351347

`1-(A336647(A143182(∑[n]))-n)`
-/

namespace A336566.P11003162116629351347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A336647 (A143182 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (n : ℤ))

end

end A336566.P11003162116629351347

namespace A336566

/-- `1-(A336647(A143182(∑[n]))-n)` -/
def P11003162116629351347.Spec : Prop :=
  ∀ n, P11003162116629351347.a n = A336566 (n + 1)

end A336566

/-!
# A336567: Sum of proper divisors of {n divided by its largest squarefree divisor}.

The programs for A336567, the canonical program `A336567.P8607660645956000214` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336567 has offset 1).

The definition of A336567 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335341, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336567.P16377504151011776375

`A001065(A003557(n+1))`
-/

namespace A336567.P16377504151011776375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A003557 (n + 1)).toNat

end

end A336567.P16377504151011776375

namespace A336567

/-- `A001065(A003557(n+1))` -/
def P16377504151011776375.Spec : Prop :=
  ∀ n, P16377504151011776375.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P8607660645956000214

`A335341(n+1)-A003557(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336567

/-- `A335341(n+1)-A003557(n+1)` -/
def P8607660645956000214.Spec : Prop :=
  ∀ n, P8607660645956000214.a n = A336567 (n + 1)

theorem P8607660645956000214.correct : P8607660645956000214.Spec := by
  intro n
  simp only [A336567, Nat.add_sub_cancel]

end A336567

/-! ## A336567.P5123321181726951372

`A336563(n+1)/A007947(n+1)`
-/

namespace A336567.P5123321181726951372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336563 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A336567.P5123321181726951372

namespace A336567

/-- `A336563(n+1)/A007947(n+1)` -/
def P5123321181726951372.Spec : Prop :=
  ∀ n, P5123321181726951372.a n = (A336567 (n + 1) : ℚ)

end A336567

/-! ## A336567.P17289820324013513916

`A001065((n+1)/∏{p}[n+1, #])`
-/

namespace A336567.P17289820324013513916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A336567.P17289820324013513916

namespace A336567

/-- `A001065((n+1)/∏{p}[n+1, #])` -/
def P17289820324013513916.Spec : Prop :=
  ∀ n, P17289820324013513916.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P2807435919323670163

`A033880((n+1)/∏{p}[n+1, #])+(n+1)/∏{p}[n+1, #]`
-/

namespace A336567.P2807435919323670163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033880 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A336567.P2807435919323670163

namespace A336567

/-- `A033880((n+1)/∏{p}[n+1, #])+(n+1)/∏{p}[n+1, #]` -/
def P2807435919323670163.Spec : Prop :=
  ∀ n, P2807435919323670163.a n = (A336567 (n + 1) : ℚ)

end A336567

/-! ## A336567.P15690324610248600394

`A000203((n+1)/∏{p}[n+1, #])-(n+1)/∏{p}[n+1, #]`
-/

namespace A336567.P15690324610248600394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A336567.P15690324610248600394

namespace A336567

/-- `A000203((n+1)/∏{p}[n+1, #])-(n+1)/∏{p}[n+1, #]` -/
def P15690324610248600394.Spec : Prop :=
  ∀ n, P15690324610248600394.a n = (A336567 (n + 1) : ℚ)

end A336567

/-! ## A336567.P8995850660956160559

`A001065(A336551(n+1)+1)`
-/

namespace A336567.P8995850660956160559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A336551 (n + 1) + 1).toNat

end

end A336567.P8995850660956160559

namespace A336567

/-- `A001065(A336551(n+1)+1)` -/
def P8995850660956160559.Spec : Prop :=
  ∀ n, P8995850660956160559.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P12599385538975163190

`A001065(1-A010848(n+1)+n)`
-/

namespace A336567.P12599385538975163190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (1 - A010848 (n + 1) + (n : ℤ)).toNat

end

end A336567.P12599385538975163190

namespace A336567

/-- `A001065(1-A010848(n+1)+n)` -/
def P12599385538975163190.Spec : Prop :=
  ∀ n, P12599385538975163190.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P14021867622949398120

`A001065((n+1)/A007947(n+1))`
-/

namespace A336567.P14021867622949398120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A336567.P14021867622949398120

namespace A336567

/-- `A001065((n+1)/A007947(n+1))` -/
def P14021867622949398120.Spec : Prop :=
  ∀ n, P14021867622949398120.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P6527513612801603817

`A001065(A102631(n+1)/(n+1))`
-/

namespace A336567.P6527513612801603817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((A102631 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A336567.P6527513612801603817

namespace A336567

/-- `A001065(A102631(n+1)/(n+1))` -/
def P6527513612801603817.Spec : Prop :=
  ∀ n, P6527513612801603817.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P5337947861654060226

`A336563(n+1)/A089384(n+1)`
-/

namespace A336567.P5337947861654060226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336563 (n + 1) : ℚ) / (A089384 (n + 1) : ℚ)

end

end A336567.P5337947861654060226

namespace A336567

/-- `A336563(n+1)/A089384(n+1)` -/
def P5337947861654060226.Spec : Prop :=
  ∀ n, P5337947861654060226.a n = (A336567 (n + 1) : ℚ)

end A336567

/-! ## A336567.P17565474891720265893

`A336563(n+1)/A334085(n+1)`
-/

namespace A336567.P17565474891720265893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336563 (n + 1) : ℚ) / (A334085 (n + 1) : ℚ)

end

end A336567.P17565474891720265893

namespace A336567

/-- `A336563(n+1)/A334085(n+1)` -/
def P17565474891720265893.Spec : Prop :=
  ∀ n, P17565474891720265893.a n = (A336567 (n + 1) : ℚ)

end A336567

/-! ## A336567.P17758376699775739351

`∑{d}[A003557(n+1), #-A000010(#)]`
-/

namespace A336567.P17758376699775739351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A336567.P17758376699775739351

namespace A336567

/-- `∑{d}[A003557(n+1), #-A000010(#)]` -/
def P17758376699775739351.Spec : Prop :=
  ∀ n, P17758376699775739351.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P14061749150827531467

`A001065(A000203(n+1)-A326187(n+1))`
-/

namespace A336567.P14061749150827531467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000203 (n + 1) - A326187 (n + 1)).toNat

end

end A336567.P14061749150827531467

namespace A336567

/-- `A001065(A000203(n+1)-A326187(n+1))` -/
def P14061749150827531467.Spec : Prop :=
  ∀ n, P14061749150827531467.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P6546464509089228130

`A001065(A001065(n+1)-A326188(n+1))`
-/

namespace A336567.P6546464509089228130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A001065 (n + 1) - A326188 (n + 1)).toNat

end

end A336567.P6546464509089228130

namespace A336567

/-- `A001065(A001065(n+1)-A326188(n+1))` -/
def P6546464509089228130.Spec : Prop :=
  ∀ n, P6546464509089228130.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P8760341208176541137

`A001065(A001615(n+1)/A048250(n+1))`
-/

namespace A336567.P8760341208176541137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ))).toNat

end

end A336567.P8760341208176541137

namespace A336567

/-- `A001065(A001615(n+1)/A048250(n+1))` -/
def P8760341208176541137.Spec : Prop :=
  ∀ n, P8760341208176541137.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P2311290429273576619

`A001065(A000010(n+1)/A173557(n+1))`
-/

namespace A336567.P2311290429273576619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ))).toNat

end

end A336567.P2311290429273576619

namespace A336567

/-- `A001065(A000010(n+1)/A173557(n+1))` -/
def P2311290429273576619.Spec : Prop :=
  ∀ n, P2311290429273576619.a n = A336567 (n + 1)

end A336567

/-! ## A336567.P3682519080488436454

`A336563(n+1)/A015052(A015052(n+1))`
-/

namespace A336567.P3682519080488436454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336563 (n + 1) : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)

end

end A336567.P3682519080488436454

namespace A336567

/-- `A336563(n+1)/A015052(A015052(n+1))` -/
def P3682519080488436454.Spec : Prop :=
  ∀ n, P3682519080488436454.a n = (A336567 (n + 1) : ℚ)

end A336567

/-! ## A336567.P11835464831121313756

`A336563(n+1)/A015053(A015053(n+1))`
-/

namespace A336567.P11835464831121313756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336563 (n + 1) : ℚ) / (A015053 (A015053 (n + 1)).toNat : ℚ)

end

end A336567.P11835464831121313756

namespace A336567

/-- `A336563(n+1)/A015053(A015053(n+1))` -/
def P11835464831121313756.Spec : Prop :=
  ∀ n, P11835464831121313756.a n = (A336567 (n + 1) : ℚ)

end A336567

/-! ## A336567.P9234916013920425238

`A057723(n+1)/A007947(n+1)-A003557(n+1)`
-/

namespace A336567.P9234916013920425238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) - (A003557 (n + 1) : ℚ)

end

end A336567.P9234916013920425238

namespace A336567

/-- `A057723(n+1)/A007947(n+1)-A003557(n+1)` -/
def P9234916013920425238.Spec : Prop :=
  ∀ n, P9234916013920425238.a n = (A336567 (n + 1) : ℚ)

end A336567

/-!
# A336568: Numbers that are not a product of two numbers each having distinct prime multiplicities.

The programs for A336568, there is no canonical definition to state claims against.
-/

/-! ## A336568.P13206654490193546134

`lt[1, A225230(n+1)]+1`
-/

namespace A336568.P13206654490193546134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336568.P13206654490193546134

/-! ## A336568.P15609322605371188924

`lt[1, A231122(n+1)]+1`
-/

namespace A336568.P15609322605371188924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336568.P15609322605371188924

/-! ## A336568.P15306320652253213761

`lt[2, A056169(n+1)]+1`
-/

namespace A336568.P15306320652253213761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336568.P15306320652253213761

/-! ## A336568.P9344425048366485914

`lt[2, A327500(n+1)]+1`
-/

namespace A336568.P9344425048366485914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336568.P9344425048366485914

/-! ## A336568.P7035750062111195624

`lt[2, A361205(n+1)]+1`
-/

namespace A336568.P7035750062111195624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336568.P7035750062111195624

/-! ## A336568.P8896765359104855854

`lt[1, A225230(A028310(n))]`
-/

namespace A336568.P8896765359104855854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336568.P8896765359104855854

/-! ## A336568.P15505444717188235513

`lt[A008619(n), A286852(n)]`
-/

namespace A336568.P15505444717188235513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336568.P15505444717188235513

/-! ## A336568.P493332963414602639

`A020725(lt[1, A225230(n+1)])`
-/

namespace A336568.P493332963414602639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A336568.P493332963414602639

/-!
# A336569: Number of maximal strict chains of divisors from n to 1 using elements of A130091 (numbers with distinct prime multiplicities).

The programs for A336569, there is no canonical definition to state claims against.
-/

/-! ## A336569.P9644473911750628213

`A336570(n+1)*A351564(n+1)`
-/

namespace A336569.P9644473911750628213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336570 (n + 1) * A351564 (n + 1)

end

end A336569.P9644473911750628213

/-! ## A336569.P3558259230241829640

`A340596(n+1)*A351564(n+1)`
-/

namespace A336569.P3558259230241829640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (n + 1) * A351564 (n + 1)

end

end A336569.P3558259230241829640

/-! ## A336569.P16118327633579048043

`A351564(n+1)*A370645(n+1)`
-/

namespace A336569.P16118327633579048043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351564 (n + 1) * A370645 (n + 1)

end

end A336569.P16118327633579048043

/-! ## A336569.P18059024101990765524

`A336570(n+1)*A386575(n+1)`
-/

namespace A336569.P18059024101990765524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336570 (n + 1) * A386575 (n + 1)

end

end A336569.P18059024101990765524

/-! ## A336569.P4349715675501079195

`A340596(n+1)*A386575(n+1)`
-/

namespace A336569.P4349715675501079195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (n + 1) * A386575 (n + 1)

end

end A336569.P4349715675501079195

/-! ## A336569.P8999869399699355647

`A370645(n+1)*A386575(n+1)`
-/

namespace A336569.P8999869399699355647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370645 (n + 1) * A386575 (n + 1)

end

end A336569.P8999869399699355647

/-! ## A336569.P10622830662014136026

`A008966(A181819(n+1))*A340596(n+1)`
-/

namespace A336569.P10622830662014136026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A181819 (n + 1)).toNat * A340596 (n + 1)

end

end A336569.P10622830662014136026

/-! ## A336569.P9428276390853530205

`A074761(A181819(n+1))*A351564(n+1)`
-/

namespace A336569.P9428276390853530205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074761 (A181819 (n + 1)).toNat * A351564 (n + 1)

end

end A336569.P9428276390853530205

/-! ## A336569.P2779898890908225970

`A035222(A335452(n+1))*A336570(n+1)`
-/

namespace A336569.P2779898890908225970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 (A335452 (n + 1)).toNat * A336570 (n + 1)

end

end A336569.P2779898890908225970

/-! ## A336569.P16966576203507851821

`A325794(A046523(n+1))*A351564(n+1)`
-/

namespace A336569.P16966576203507851821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A046523 (n + 1)).toNat * A351564 (n + 1)

end

end A336569.P16966576203507851821

/-!
# A336570: Number of maximal sets of proper divisors d|n, d < n, all belonging to A130091 (numbers with distinct prime multiplicities) and forming a divisibility chain.

The programs for A336570, there is no canonical definition to state claims against.
-/

/-! ## A336570.P7177380069336447246

`A066063(A281116(n+1))`
-/

namespace A336570.P7177380069336447246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066063 (A281116 (n + 1)).toNat

end

end A336570.P7177380069336447246

/-! ## A336570.P16316598543948509829

`dr(A300030(A324837(n+1)))`
-/

namespace A336570.P16316598543948509829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A300030 (A324837 (n + 1)).toNat)

end

end A336570.P16316598543948509829

/-! ## A336570.P4301092660915736949

`A055640(A305566(n+1))+1`
-/

namespace A336570.P4301092660915736949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A305566 (n + 1)).toNat + 1

end

end A336570.P4301092660915736949

/-! ## A336570.P13941493056807281767

`A082447(A281116(n+1)+1)`
-/

namespace A336570.P13941493056807281767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A281116 (n + 1) + 1).toNat

end

end A336570.P13941493056807281767

/-! ## A336570.P11052852231689636716

`A106494(A281116(n+1)+1)`
-/

namespace A336570.P11052852231689636716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106494 (A281116 (n + 1) + 1).toNat

end

end A336570.P11052852231689636716

/-! ## A336570.P5528988919502417040

`A161511(A281116(n+1)+1)`
-/

namespace A336570.P5528988919502417040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A281116 (n + 1) + 1).toNat

end

end A336570.P5528988919502417040

/-! ## A336570.P4865843727979464295

`A179390(A281116(n+1)+1)`
-/

namespace A336570.P4865843727979464295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179390 (A281116 (n + 1) + 1).toNat

end

end A336570.P4865843727979464295

/-! ## A336570.P16179416397119571143

`A239684(A281116(n+1)+1)`
-/

namespace A336570.P16179416397119571143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239684 (A281116 (n + 1) + 1).toNat

end

end A336570.P16179416397119571143

/-! ## A336570.P4138177974876168440

`A000720(A281116(n+1)+2)`
-/

namespace A336570.P4138177974876168440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A281116 (n + 1) + 2).toNat

end

end A336570.P4138177974876168440

/-! ## A336570.P1411352439410819780

`A003313(A281116(n+1)+2)`
-/

namespace A336570.P1411352439410819780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A281116 (n + 1) + 2).toNat

end

end A336570.P1411352439410819780

/-!
# A336571: Number of sets of divisors d|n, 1 < d < n, all belonging to A130091 (numbers with distinct prime multiplicities) and forming a divisibility chain.

The programs for A336571, there is no canonical definition to state claims against.
-/

/-! ## A336571.P2062639892990475415

`A152036(A300831(n+1))+A076277(n+1)`
-/

namespace A336571.P2062639892990475415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152036 (A300831 (n + 1)).toNat + A076277 (n + 1)

end

end A336571.P2062639892990475415

/-! ## A336571.P5519483272588604384

`A308063(n+1)+A295653(A300831(n+1))`
-/

namespace A336571.P5519483272588604384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308063 (n + 1) + A295653 (A300831 (n + 1)).toNat

end

end A336571.P5519483272588604384

/-! ## A336571.P5158968124801664338

`or(A050363(n+1), A347447(A304404(n+1)))`
-/

namespace A336571.P5158968124801664338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050363 (n + 1)) (A347447 (A304404 (n + 1)).toNat)

end

end A336571.P5158968124801664338

/-! ## A336571.P7943821502179326007

`or(A305253(A290480(n+1)), A319002(n+1))`
-/

namespace A336571.P7943821502179326007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305253 (A290480 (n + 1)).toNat) (A319002 (n + 1))

end

end A336571.P7943821502179326007

/-! ## A336571.P6444675183199526721

`A126302(A330773(n))`
-/

namespace A336571.P6444675183199526721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (A330773 n).toNat

end

end A336571.P6444675183199526721

/-!
# A336572: G.f. A(x) satisfies A(x) = 1 + x * A(x)^4 * (1 + 2 * A(x)).

The programs for A336572, there is no canonical definition to state claims against.
-/

/-! ## A336572.P15734710262848702521

`A336574(A056115(n)+10)`
-/

namespace A336572.P15734710262848702521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A056115 n + 10).toNat

end

end A336572.P15734710262848702521

/-! ## A336572.P7681490279243047315

`A336574(eq[4, A025581(n)])`
-/

namespace A336572.P7681490279243047315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336572.P7681490279243047315

/-! ## A336572.P12453269697018763157

`A336574(eq[9, A099375(n)])`
-/

namespace A336572.P12453269697018763157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336572.P12453269697018763157

/-! ## A336572.P3286674280428595937

`A336574(eq[5, A004736(n+1)])`
-/

namespace A336572.P3286674280428595937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336572.P3286674280428595937

/-! ## A336572.P11562338412815251026

`A336574(A055998(n+2)+n+3)`
-/

namespace A336572.P11562338412815251026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A055998 (n + 2) + (n + 3 : ℤ)).toNat

end

end A336572.P11562338412815251026

/-! ## A336572.P15778714684136680206

`A336574(A028552(n+2)-A000096(n))`
-/

namespace A336572.P15778714684136680206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A028552 (n + 2) - A000096 n).toNat

end

end A336572.P15778714684136680206

/-!
# A336573: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = (-1)^n * Sum_{j=0..n} (-2)^j * binomial(n,j) * binomial(k*n+j+1,n)/(k*n+j+1).

The programs for A336573, there is no canonical definition to state claims against.
-/

/-! ## A336573.P12539161054331376160

`A038548(A249027(n+1))`
-/

namespace A336573.P12539161054331376160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A249027 (n + 1)).toNat

end

end A336573.P12539161054331376160

/-! ## A336573.P5886425033896851320

`∏{e}[A005009(n), A271465(#)]`
-/

namespace A336573.P5886425033896851320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A271465 (Nat.factorization (f1 n).natAbs p)

end

end A336573.P5886425033896851320

/-! ## A336573.P2938347397827370745

`A034178(4*A249027(n+1))`
-/

namespace A336573.P2938347397827370745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (4 * A249027 (n + 1)).toNat

end

end A336573.P2938347397827370745

/-! ## A336573.P11561751175806686693

`A271465(A000005(Δ[floor(2^(n-1))]))`
-/

namespace A336573.P11561751175806686693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A000005 (f1 (n + 1) - f1 n).toNat).toNat

end

end A336573.P11561751175806686693

/-! ## A336573.P18024000080258498539

`A271465(A001222(Δ[A004119(n)]))`
-/

namespace A336573.P18024000080258498539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (A001222 (f1 (n + 1) - f1 n).toNat).toNat

end

end A336573.P18024000080258498539

/-!
# A336574: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} 2^j * binomial(n,j) * binomial(k*n+j+1,n)/(k*n+j+1).

The programs for A336574, there is no canonical definition to state claims against.
-/

/-! ## A336574.P13739002503403653586

`A358104(A245049(n)²)`
-/

namespace A336574.P13739002503403653586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358104 (A245049 n ^ 2).toNat

end

end A336574.P13739002503403653586

/-! ## A336574.P18403604236055933787

`A094727(3^A291656(n))`
-/

namespace A336574.P18403604236055933787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A291656 n : ℤ))).toNat

end

end A336574.P18403604236055933787

/-! ## A336574.P11475639426633861060

`A094727(3^A334781(n))`
-/

namespace A336574.P11475639426633861060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A334781 n : ℤ))).toNat

end

end A336574.P11475639426633861060

/-! ## A336574.P11061895672799216896

`A321476(ceil(exp(A291656(n))))`
-/

namespace A336574.P11061895672799216896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321476 ⌈Real.exp (A291656 n : ℝ)⌉.toNat

end

end A336574.P11061895672799216896

/-! ## A336574.P13551109160474708647

`or(A114099(A211135(n+1)), A181843(n+1))`
-/

namespace A336574.P13551109160474708647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A114099 (A211135 (n + 1)).toNat) (A181843 (n + 1))

end

end A336574.P13551109160474708647

/-!
# A336575: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(0,k) = 1 and T(n,k) = (1/n) * Sum_{j=1..n} 3^j * binomial(n,j) * binomial(k*n,j-1) for n > 0.

The programs for A336575, there is no canonical definition to state claims against.
-/

/-! ## A336575.P11164328476907423873

`A339660(7*A336534(n))`
-/

namespace A336575.P11164328476907423873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339660 (7 * A336534 n).toNat

end

end A336575.P11164328476907423873

/-! ## A336575.P8973548084780395797

`A339660(lcm(7, A336534(n)))`
-/

namespace A336575.P8973548084780395797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339660 (Int.lcm 7 (A336534 n))

end

end A336575.P8973548084780395797

/-! ## A336575.P7427708051018852574

`A335465(A215078(n))`
-/

namespace A336575.P7427708051018852574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (A215078 n).toNat

end

end A336575.P7427708051018852574

/-! ## A336575.P6872840189180324865

`A104842(A336534(n)²)`
-/

namespace A336575.P6872840189180324865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104842 (A336534 n ^ 2).toNat

end

end A336575.P6872840189180324865

/-! ## A336575.P153653400762469387

`A034175(A329860(n)!)`
-/

namespace A336575.P153653400762469387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034175 (Nat.factorial (A329860 n).toNat)

end

end A336575.P153653400762469387

/-!
# A336577: a(n) = Sum_{k=0..n} 2^k * binomial(n,k) * binomial(n^2+k+1,n)/(n^2+k+1).

The programs for A336577, there is no canonical definition to state claims against.
-/

/-! ## A336577.P6819856442242488565

`A336574(∑[4*n])`
-/

namespace A336577.P6819856442242488565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336577.P6819856442242488565

/-! ## A336577.P5850331530399003790

`record[A003982(n)*A336574(n)]`
-/

namespace A336577.P5850331530399003790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A336574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336577.P5850331530399003790

/-! ## A336577.P4006525616664649021

`record[gcd(A112467(n), A336574(n))]`
-/

namespace A336577.P4006525616664649021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A336574 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336577.P4006525616664649021

/-! ## A336577.P4866483962361732659

`record[A336574(gcd(n, A114327(n)))]`
-/

namespace A336577.P4866483962361732659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336577.P4866483962361732659

/-! ## A336577.P16617757623439414446

`record[char[A046092(n)]*A336574(n)]`
-/

namespace A336577.P16617757623439414446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A336574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336577.P16617757623439414446

/-!
# A336578: a(0) = 1 and a(n) = (1/n) * Sum_{k=1..n} 3^k * binomial(n,k) * binomial(n^2,k-1) for n > 0.

The programs for A336578, there is no canonical definition to state claims against.
-/

/-! ## A336578.P8433711917704092625

`A336575(∑[4*n])`
-/

namespace A336578.P8433711917704092625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336578.P8433711917704092625

/-! ## A336578.P12235379871070971024

`or(char[1], A336575(A046092(n)))`
-/

namespace A336578.P12235379871070971024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A336575 (A046092 n).toNat)

end

end A336578.P12235379871070971024

/-! ## A336578.P5928436434014405277

`record[A003982(n)*A336575(n)]`
-/

namespace A336578.P5928436434014405277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A336575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336578.P5928436434014405277

/-! ## A336578.P7706572307375213717

`record[A336575(gcd(n, A049581(n)))]`
-/

namespace A336578.P7706572307375213717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (Int.gcd (n : ℤ) (A049581 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336578.P7706572307375213717

/-! ## A336578.P12986893636496141536

`record[A336575(n*A246277(n+2))]`
-/

namespace A336578.P12986893636496141536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 ((n : ℤ) * A246277 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336578.P12986893636496141536

/-!
# A336580: Numbers k such that A334676(k) = 1.

The programs for A336580, there is no canonical definition to state claims against.
-/

/-! ## A336580.P10494879329654934851

`eq[1, A334676(n+1)]+1`
-/

namespace A336580.P10494879329654934851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336580.P10494879329654934851

/-! ## A336580.P14487817283238784492

`record[A000027(n+1)/A334676(n+1)]`
-/

namespace A336580.P14487817283238784492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A334676 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336580.P14487817283238784492

/-! ## A336580.P9376899552804269792

`record[A071786(n+1)/A334676(n+1)]`
-/

namespace A336580.P9376899552804269792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071786 (n + 1) : ℚ) / (A334676 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336580.P9376899552804269792

/-! ## A336580.P16004602083324788649

`record[A262401(n+1)/A334676(n+1)]`
-/

namespace A336580.P16004602083324788649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262401 (n + 1) : ℚ) / (A334676 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336580.P16004602083324788649

/-! ## A336580.P5939388937375847722

`record[A002473(n+1)/A334676(A002473(n+1))]`
-/

namespace A336580.P5939388937375847722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) / (A334676 (A002473 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336580.P5939388937375847722

/-! ## A336580.P100016649410239728

`record[A051038(n+1)/A334676(A051038(n+1))]`
-/

namespace A336580.P100016649410239728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051038 (n + 1) : ℚ) / (A334676 (A051038 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336580.P100016649410239728

/-!
# A336582: Numbers k with a Goldbach partition (p,q) such that k | (p*q - 1).

The programs for A336582, there is no canonical definition to state claims against.
-/

/-! ## A336582.P3326587956141024099

`∩[A175324(n+1), A335495(n+1)]`
-/

namespace A336582.P3326587956141024099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336582.P3326587956141024099

/-! ## A336582.P1616510457018462672

`∩[A299498(n+1), A335495(n+1)]`
-/

namespace A336582.P1616510457018462672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336582.P1616510457018462672

/-!
# A336583: Numbers k with a Goldbach partition (p,q) such that k | (p*q + 1).

The programs for A336583, there is no canonical definition to state claims against.
-/

/-! ## A336583.P12893822026569293705

`record[A348028(A350455(n+4))]`
-/

namespace A336583.P12893822026569293705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348028 (A350455 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336583.P12893822026569293705

/-! ## A336583.P1885937771770277243

`∩[A053030(n+1), A335495(n+1)]`
-/

namespace A336583.P1885937771770277243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336583.P1885937771770277243

/-! ## A336583.P5217869310403741909

`∩[A192450(n+1), A335495(n+1)]`
-/

namespace A336583.P5217869310403741909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336583.P5217869310403741909

/-! ## A336583.P8981322991328607730

`∩[A206587(n+1), A335495(n+1)]`
-/

namespace A336583.P8981322991328607730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336583.P8981322991328607730

/-!
# A336585: Integers m such that (m-d)*(m+d) < (m-1)^2, where d is the smallest number such that both m-d and m+d are primes.

The programs for A336585, there is no canonical definition to state claims against.
-/

/-! ## A336585.P5633297073382757174

`lt[sqrt(2*n), A325142(n)]`
-/

namespace A336585.P5633297073382757174
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A336585.P5633297073382757174

/-! ## A336585.P2729139084660481083

`lt[A004277(n), A325142(n)²]`
-/

namespace A336585.P2729139084660481083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336585.P2729139084660481083

/-! ## A336585.P17418349040114855013

`lt[A004275(n+1), A325142(n)²]`
-/

namespace A336585.P17418349040114855013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336585.P17418349040114855013

/-! ## A336585.P9332249665777339971

`lt[A004276(n+1), A325142(n)²]`
-/

namespace A336585.P9332249665777339971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336585.P9332249665777339971

/-! ## A336585.P6641731925707578671

`lt[A004273(n)+1, A325142(n)²]`
-/

namespace A336585.P6641731925707578671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336585.P6641731925707578671

/-! ## A336585.P18444430741901227051

`lt[1, A325142(n)²-A004275(n)]`
-/

namespace A336585.P18444430741901227051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n ^ 2 - A004275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336585.P18444430741901227051

/-! ## A336585.P9561266760000252666

`lt[1, A325142(n)²-A004276(n)]`
-/

namespace A336585.P9561266760000252666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n ^ 2 - A004276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336585.P9561266760000252666

/-! ## A336585.P8526299725378750287

`lt[A000196(2*n), A325142(n+1)]+1`
-/

namespace A336585.P8526299725378750287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336585.P8526299725378750287

/-!
# A336588: Sum_{n>=0} a(n) * x^n / (n!)^2 = exp(x) * BesselI(0,2*sqrt(exp(x) - 1)).

The programs for A336588, there is no canonical definition to state claims against.
-/

/-! ## A336588.P3520400795745366267

`n*A271078(2*n+3)+1`
-/

namespace A336588.P3520400795745366267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A271078 (2 * n + 3) + 1

end

end A336588.P3520400795745366267

/-!
# A336589: Sum_{n>=0} a(n) * x^n / (n!)^2 = exp(x) * BesselI(0,2*sqrt(1 - exp(x))).

The programs for A336589, there is no canonical definition to state claims against.
-/

/-! ## A336589.P3099917252572598566

`A343259(n)-A136548(A068765(n))`
-/

namespace A336589.P3099917252572598566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343259 n - A136548 (A068765 n).toNat

end

end A336589.P3099917252572598566

/-!
# A336590: Numbers k such that k/A008834(k) is squarefree, where A008834(k) is the largest cube dividing k.

The programs for A336590, the canonical program `A336590.P1238864265551772819` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336590 has offset 1).

The definition of A336590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336590.P1238864265551772819

`eq[1, A299406(n+1)²]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336590

/-- `eq[1, A299406(n+1)²]+1` -/
def P1238864265551772819.Spec : Prop :=
  ∀ n, (P1238864265551772819.a n : ℤ) = A336590 (n + 1)

theorem P1238864265551772819.correct : P1238864265551772819.Spec := by
  intro n
  simp only [A336590, Nat.add_sub_cancel]

end A336590

/-! ## A336590.P13041818784422655888

`eq[1, A353470(n+1)+1]+1`
-/

namespace A336590.P13041818784422655888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353470 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336590.P13041818784422655888

namespace A336590

/-- `eq[1, A353470(n+1)+1]+1` -/
def P13041818784422655888.Spec : Prop :=
  ∀ n, (P13041818784422655888.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P7050817566441853971

`eq[1, gcd(3, A000005(n+1))]+1`
-/

namespace A336590.P7050817566441853971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336590.P7050817566441853971

namespace A336590

/-- `eq[1, gcd(3, A000005(n+1))]+1` -/
def P7050817566441853971.Spec : Prop :=
  ∀ n, (P7050817566441853971.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P552277895565296044

`eq[1, A011655(A000005(n+1))]+1`
-/

namespace A336590.P552277895565296044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336590.P552277895565296044

namespace A336590

/-- `eq[1, A011655(A000005(n+1))]+1` -/
def P552277895565296044.Spec : Prop :=
  ∀ n, (P552277895565296044.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P16137561679011727058

`lt[1, A347633(2*A000005(n+1))]+1`
-/

namespace A336590.P16137561679011727058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (2 * A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336590.P16137561679011727058

namespace A336590

/-- `lt[1, A347633(2*A000005(n+1))]+1` -/
def P16137561679011727058.Spec : Prop :=
  ∀ n, (P16137561679011727058.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P9722752136157752837

`lt[3, A347538(A000005(n+1)+3)]+1`
-/

namespace A336590.P9722752136157752837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347538 (A000005 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336590.P9722752136157752837

namespace A336590

/-- `lt[3, A347538(A000005(n+1)+3)]+1` -/
def P9722752136157752837.Spec : Prop :=
  ∀ n, (P9722752136157752837.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P8414400071475295068

`eq[3, A000051(gcd(a(n-1), A000005(n)))]` with `a(0)=1`
-/

namespace A336590.P8414400071475295068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000051 (Int.gcd (f2 (n - 1)) (A000005 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336590.P8414400071475295068

namespace A336590

/-- `eq[3, A000051(gcd(a(n-1), A000005(n)))]` -/
def P8414400071475295068.Spec : Prop :=
  ∀ n, (P8414400071475295068.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P8903947975855676681

`eq[1, A307421(n+1)]+1`
-/

namespace A336590.P8903947975855676681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336590.P8903947975855676681

namespace A336590

/-- `eq[1, A307421(n+1)]+1` -/
def P8903947975855676681.Spec : Prop :=
  ∀ n, (P8903947975855676681.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P14753896915555458806

`eq[1, A210826(n+1)²]+1`
-/

namespace A336590.P14753896915555458806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336590.P14753896915555458806

namespace A336590

/-- `eq[1, A210826(n+1)²]+1` -/
def P14753896915555458806.Spec : Prop :=
  ∀ n, (P14753896915555458806.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P200230141612243880

`eq[1, A040250(A145154(n))]`
-/

namespace A336590.P200230141612243880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040250 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336590.P200230141612243880

namespace A336590

/-- `eq[1, A040250(A145154(n))]` -/
def P200230141612243880.Spec : Prop :=
  ∀ n, (P200230141612243880.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P2196618788733874956

`lt[A264026(A351219(n+1)), 1]+1`
-/

namespace A336590.P2196618788733874956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264026 (A351219 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336590.P2196618788733874956

namespace A336590

/-- `lt[A264026(A351219(n+1)), 1]+1` -/
def P2196618788733874956.Spec : Prop :=
  ∀ n, (P2196618788733874956.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P13983246350203306652

`eq[A056552(n+1)², A048798(n+1)]+1`
-/

namespace A336590.P13983246350203306652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336590.P13983246350203306652

namespace A336590

/-- `eq[A056552(n+1)², A048798(n+1)]+1` -/
def P13983246350203306652.Spec : Prop :=
  ∀ n, (P13983246350203306652.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P10208735451825066259

`eq[A074943(n+1)!, A074943(n+1)]+1`
-/

namespace A336590.P10208735451825066259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A074943 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336590.P10208735451825066259

namespace A336590

/-- `eq[A074943(n+1)!, A074943(n+1)]+1` -/
def P10208735451825066259.Spec : Prop :=
  ∀ n, (P10208735451825066259.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P15367888808129948463

`record[(n+1)/A034856(A032741(n+1)+1)%3]`
-/

namespace A336590.P15367888808129948463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.tmod (A034856 (A032741 (n + 1) + 1).toNat) 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336590.P15367888808129948463

namespace A336590

/-- `record[(n+1)/A034856(A032741(n+1)+1)%3]` -/
def P15367888808129948463.Spec : Prop :=
  ∀ n, P15367888808129948463.a n = (A336590 (n + 1) : ℚ)

end A336590

/-! ## A336590.P647644666904340173

`eq[A000189(n+1), A008833(A000189(n+1))]+1`
-/

namespace A336590.P647644666904340173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000189 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336590.P647644666904340173

namespace A336590

/-- `eq[A000189(n+1), A008833(A000189(n+1))]+1` -/
def P647644666904340173.Spec : Prop :=
  ∀ n, (P647644666904340173.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P10474861153762320084

`eq[A212181(n+1), A214681(A212181(n+1))]+1`
-/

namespace A336590.P10474861153762320084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (A212181 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336590.P10474861153762320084

namespace A336590

/-- `eq[A212181(n+1), A214681(A212181(n+1))]+1` -/
def P10474861153762320084.Spec : Prop :=
  ∀ n, (P10474861153762320084.a n : ℤ) = A336590 (n + 1)

end A336590

/-! ## A336590.P12555814892014078589

`eq[2, char[(n+1)*A000188(n+1)]+1]`
-/

namespace A336590.P12555814892014078589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000188 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336590.P12555814892014078589

namespace A336590

/-- `eq[2, char[(n+1)*A000188(n+1)]+1]` -/
def P12555814892014078589.Spec : Prop :=
  ∀ n, (P12555814892014078589.a n : ℤ) = A336590 (n + 1)

end A336590

/-!
# A336591: Numbers whose exponents in their prime factorization are either 1, 3, or both.

The programs for A336591, the canonical program `A336591.P6846533338555796771` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336591 has offset 1).

The definition of A336591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336591.P17125576438328444329

`eq[1, A056622(n+1)]+1`
-/

namespace A336591.P17125576438328444329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336591.P17125576438328444329

namespace A336591

/-- `eq[1, A056622(n+1)]+1` -/
def P17125576438328444329.Spec : Prop :=
  ∀ n, (P17125576438328444329.a n : ℤ) = A336591 (n + 1)

end A336591

/-! ## A336591.P1710558165343582535

`eq[1, A056623(n+1)]+1`
-/

namespace A336591.P1710558165343582535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056623 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336591.P1710558165343582535

namespace A336591

/-- `eq[1, A056623(n+1)]+1` -/
def P1710558165343582535.Spec : Prop :=
  ∀ n, (P1710558165343582535.a n : ℤ) = A336591 (n + 1)

end A336591

/-! ## A336591.P2956114171117052885

`eq[1, A318498(n+1)]+1`
-/

namespace A336591.P2956114171117052885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336591.P2956114171117052885

namespace A336591

/-- `eq[1, A318498(n+1)]+1` -/
def P2956114171117052885.Spec : Prop :=
  ∀ n, (P2956114171117052885.a n : ℤ) = A336591 (n + 1)

end A336591

/-! ## A336591.P13555184708857311987

`lt[A318499(n+1), 1]+1`
-/

namespace A336591.P13555184708857311987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318499 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336591.P13555184708857311987

namespace A336591

/-- `lt[A318499(n+1), 1]+1` -/
def P13555184708857311987.Spec : Prop :=
  ∀ n, (P13555184708857311987.a n : ℤ) = A336591 (n + 1)

end A336591

/-! ## A336591.P7899412153414479413

`eq[1, A355824(n+1)²]+1`
-/

namespace A336591.P7899412153414479413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355824 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336591.P7899412153414479413

namespace A336591

/-- `eq[1, A355824(n+1)²]+1` -/
def P7899412153414479413.Spec : Prop :=
  ∀ n, (P7899412153414479413.a n : ℤ) = A336591 (n + 1)

end A336591

/-! ## A336591.P6846533338555796771

`record[lcm(A007913(n+1), A056191(n+1))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336591

/-- `record[lcm(A007913(n+1), A056191(n+1))]` -/
def P6846533338555796771.Spec : Prop :=
  ∀ n, (P6846533338555796771.a n : ℤ) = A336591 (n + 1)

theorem P6846533338555796771.correct : P6846533338555796771.Spec := by
  intro n
  simp only [A336591, Nat.add_sub_cancel]

end A336591

/-! ## A336591.P14853560952139952114

`record[A007913(A057521(n+1))²*A007913(n+1)]`
-/

namespace A336591.P14853560952139952114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A057521 (n + 1)).toNat ^ 2 * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336591.P14853560952139952114

namespace A336591

/-- `record[A007913(A057521(n+1))²*A007913(n+1)]` -/
def P14853560952139952114.Spec : Prop :=
  ∀ n, P14853560952139952114.a n = A336591 (n + 1)

end A336591

/-! ## A336591.P9775349275293035185

`filter[A000452(n+1), A359473(#)]`
-/

namespace A336591.P9775349275293035185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A336591.P9775349275293035185

namespace A336591

/-- `filter[A000452(n+1), A359473(#)]` -/
def P9775349275293035185.Spec : Prop :=
  ∀ n, P9775349275293035185.a n = A336591 (n + 1)

end A336591

/-! ## A336591.P3793032227477355240

`filter[A046100(n+1), A295316(#)]`
-/

namespace A336591.P3793032227477355240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A336591.P3793032227477355240

namespace A336591

/-- `filter[A046100(n+1), A295316(#)]` -/
def P3793032227477355240.Spec : Prop :=
  ∀ n, P3793032227477355240.a n = A336591 (n + 1)

end A336591

/-! ## A336591.P8210898922038829297

`filter[A046100(n+1), A359473(#)]`
-/

namespace A336591.P8210898922038829297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A336591.P8210898922038829297

namespace A336591

/-- `filter[A046100(n+1), A359473(#)]` -/
def P8210898922038829297.Spec : Prop :=
  ∀ n, P8210898922038829297.a n = A336591 (n + 1)

end A336591

/-! ## A336591.P14868614206670202579

`∩[A000452(n+1), A046100(n+1)]`
-/

namespace A336591.P14868614206670202579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336591.P14868614206670202579

namespace A336591

/-- `∩[A000452(n+1), A046100(n+1)]` -/
def P14868614206670202579.Spec : Prop :=
  ∀ n, (P14868614206670202579.a n : ℤ) = A336591 (n + 1)

end A336591

/-! ## A336591.P13217303253481900531

`∩[A046100(n+1), A268335(n+1)]`
-/

namespace A336591.P13217303253481900531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336591.P13217303253481900531

namespace A336591

/-- `∩[A046100(n+1), A268335(n+1)]` -/
def P13217303253481900531.Spec : Prop :=
  ∀ n, (P13217303253481900531.a n : ℤ) = A336591 (n + 1)

end A336591

/-! ## A336591.P11030343186589608546

`∩[A046100(n+1), A336590(n+1)]`
-/

namespace A336591.P11030343186589608546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336591.P11030343186589608546

namespace A336591

/-- `∩[A046100(n+1), A336590(n+1)]` -/
def P11030343186589608546.Spec : Prop :=
  ∀ n, (P11030343186589608546.a n : ℤ) = A336591 (n + 1)

end A336591

/-! ## A336591.P15880362744314457553

`∩[A046100(n+1), A337050(n+1)]`
-/

namespace A336591.P15880362744314457553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336591.P15880362744314457553

namespace A336591

/-- `∩[A046100(n+1), A337050(n+1)]` -/
def P15880362744314457553.Spec : Prop :=
  ∀ n, (P15880362744314457553.a n : ℤ) = A336591 (n + 1)

end A336591

/-! ## A336591.P8534626365172498567

`filter[A115063(n+1), A359473(#)]`
-/

namespace A336591.P8534626365172498567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A336591.P8534626365172498567

namespace A336591

/-- `filter[A115063(n+1), A359473(#)]` -/
def P8534626365172498567.Spec : Prop :=
  ∀ n, P8534626365172498567.a n = A336591 (n + 1)

end A336591

/-! ## A336591.P6759101412728559684

`filter[A144972(n+1), A359473(#)]`
-/

namespace A336591.P6759101412728559684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A336591.P6759101412728559684

namespace A336591

/-- `filter[A144972(n+1), A359473(#)]` -/
def P6759101412728559684.Spec : Prop :=
  ∀ n, P6759101412728559684.a n = A336591 (n + 1)

end A336591

/-! ## A336591.P16427960207178553470

`filter[A000452(n+1), A307430(#)]`
-/

namespace A336591.P16427960207178553470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A336591.P16427960207178553470

namespace A336591

/-- `filter[A000452(n+1), A307430(#)]` -/
def P16427960207178553470.Spec : Prop :=
  ∀ n, P16427960207178553470.a n = A336591 (n + 1)

end A336591

/-! ## A336591.P3666663479023837317

`filter[A046100(n+1), A307421(#)]`
-/

namespace A336591.P3666663479023837317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A336591.P3666663479023837317

namespace A336591

/-- `filter[A046100(n+1), A307421(#)]` -/
def P3666663479023837317.Spec : Prop :=
  ∀ n, P3666663479023837317.a n = A336591 (n + 1)

end A336591

/-! ## A336591.P1146783114265507269

`filter[A268335(n+1), A307430(#)]`
-/

namespace A336591.P1146783114265507269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A336591.P1146783114265507269

namespace A336591

/-- `filter[A268335(n+1), A307430(#)]` -/
def P1146783114265507269.Spec : Prop :=
  ∀ n, P1146783114265507269.a n = A336591 (n + 1)

end A336591

/-! ## A336591.P7888581167707634170

`filter[A336590(n+1), A307430(#)]`
-/

namespace A336591.P7888581167707634170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A336591.P7888581167707634170

namespace A336591

/-- `filter[A336590(n+1), A307430(#)]` -/
def P7888581167707634170.Spec : Prop :=
  ∀ n, P7888581167707634170.a n = A336591 (n + 1)

end A336591

/-!
# A336593: Numbers k such that k/A008835(k) is cubeful (A036966), where A008835(k) is the largest 4th power dividing k.

The programs for A336593, the canonical program `A336593.P5264653991249695499` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336593 has offset 1).

The definition of A336593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336593.P5264653991249695499

`lt[A351219(n+1)%3, 1]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336593

/-- `lt[A351219(n+1)%3, 1]+1` -/
def P5264653991249695499.Spec : Prop :=
  ∀ n, (P5264653991249695499.a n : ℤ) = A336593 (n + 1)

theorem P5264653991249695499.correct : P5264653991249695499.Spec := by
  intro n
  simp only [A336593, Nat.add_sub_cancel]

end A336593

/-! ## A336593.P3462049936340129856

`lt[A351219(A028310(n))%3, 1]`
-/

namespace A336593.P3462049936340129856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351219 (A028310 n).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336593.P3462049936340129856

namespace A336593

/-- `lt[A351219(A028310(n))%3, 1]` -/
def P3462049936340129856.Spec : Prop :=
  ∀ n, (P3462049936340129856.a n : ℤ) = A336593 (n + 1)

end A336593

/-! ## A336593.P18428868090862663224

`lt[A351219(A000007(n)+n)%3, 1]`
-/

namespace A336593.P18428868090862663224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351219 (A000007 n + (n : ℤ)).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336593.P18428868090862663224

namespace A336593

/-- `lt[A351219(A000007(n)+n)%3, 1]` -/
def P18428868090862663224.Spec : Prop :=
  ∀ n, (P18428868090862663224.a n : ℤ) = A336593 (n + 1)

end A336593

/-! ## A336593.P3037362517417753297

`lt[A351219(A000038(n)+n)%3, 1]`
-/

namespace A336593.P3037362517417753297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351219 (A000038 n + (n : ℤ)).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336593.P3037362517417753297

namespace A336593

/-- `lt[A351219(A000038(n)+n)%3, 1]` -/
def P3037362517417753297.Spec : Prop :=
  ∀ n, (P3037362517417753297.a n : ℤ) = A336593 (n + 1)

end A336593

/-! ## A336593.P24616338970726082

`lt[A351219(or(n, A000007(n)))%3, 1]`
-/

namespace A336593.P24616338970726082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351219 (Int.lor (n : ℤ) (A000007 n)).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336593.P24616338970726082

namespace A336593

/-- `lt[A351219(or(n, A000007(n)))%3, 1]` -/
def P24616338970726082.Spec : Prop :=
  ∀ n, (P24616338970726082.a n : ℤ) = A336593 (n + 1)

end A336593

/-! ## A336593.P6734954580525193353

`lt[A351219(xor(n, A000038(n)))%3, 1]`
-/

namespace A336593.P6734954580525193353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351219 (Int.xor (n : ℤ) (A000038 n)).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336593.P6734954580525193353

namespace A336593

/-- `lt[A351219(xor(n, A000038(n)))%3, 1]` -/
def P6734954580525193353.Spec : Prop :=
  ∀ n, (P6734954580525193353.a n : ℤ) = A336593 (n + 1)

end A336593

/-! ## A336593.P3558265085273636545

`lt[1, A295663(A233583(n+1))]`
-/

namespace A336593.P3558265085273636545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336593.P3558265085273636545

namespace A336593

/-- `lt[1, A295663(A233583(n+1))]` -/
def P3558265085273636545.Spec : Prop :=
  ∀ n, (P3558265085273636545.a n : ℤ) = A336593 (n + 1)

end A336593

/-!
# A336594: Numbers k such that k/A008835(k) is cubefree but not squarefree (A067259), where A008835(k) is the largest 4th power dividing k.

The programs for A336594, there is no canonical definition to state claims against.
-/

/-! ## A336594.P11335052374784660349

`∩[A252849(n+1), A336592(n+1)]`
-/

namespace A336594.P11335052374784660349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336594.P11335052374784660349

/-! ## A336594.P18000640877848833532

`eq[1, A174071(A256692(n+1))%2]+1`
-/

namespace A336594.P18000640877848833532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174071 (A256692 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336594.P18000640877848833532

/-! ## A336594.P11896804827936967911

`eq[2, A076316(A104404(n+1)-A104488(n+1))%3]+1`
-/

namespace A336594.P11896804827936967911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076316 (A104404 (n + 1) - A104488 (n + 1)).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336594.P11896804827936967911

/-! ## A336594.P16183338763729719681

`eq[2, A076316(A101113(n+1)/A034444(n+1))%3]+1`
-/

namespace A336594.P16183338763729719681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076316 (SequenceMachineLib.roundAway ((A101113 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ))).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336594.P16183338763729719681

/-! ## A336594.P6753963824096212197

`eq[A001842(A048785(n)), A035214(n²)]`
-/

namespace A336594.P6753963824096212197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A048785 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336594.P6753963824096212197

/-!
# A336595: Numbers whose number of divisors is divisible by 5.

The programs for A336595, the canonical program `A336595.P3949908037576093497` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336595 has offset 1).

The definition of A336595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336595.P3949908037576093497

`lt[A000005(n+1)%5, 1]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336595

/-- `lt[A000005(n+1)%5, 1]+1` -/
def P3949908037576093497.Spec : Prop :=
  ∀ n, (P3949908037576093497.a n : ℤ) = A336595 (n + 1)

theorem P3949908037576093497.correct : P3949908037576093497.Spec := by
  intro n
  simp only [A336595, Nat.add_sub_cancel]

end A336595

/-! ## A336595.P10538087837988850708

`eq[0, A145154(n)%5]`
-/

namespace A336595.P10538087837988850708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145154 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336595.P10538087837988850708

namespace A336595

/-- `eq[0, A145154(n)%5]` -/
def P10538087837988850708.Spec : Prop :=
  ∀ n, (P10538087837988850708.a n : ℤ) = A336595 (n + 1)

end A336595

/-! ## A336595.P1562531831195095319

`eq[4, A032741(n)%5]`
-/

namespace A336595.P1562531831195095319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336595.P1562531831195095319

namespace A336595

/-- `eq[4, A032741(n)%5]` -/
def P1562531831195095319.Spec : Prop :=
  ∀ n, (P1562531831195095319.a n : ℤ) = A336595 (n + 1)

end A336595

/-! ## A336595.P16039746032973100323

`eq[0, A010879(A145154(n))]`
-/

namespace A336595.P16039746032973100323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336595.P16039746032973100323

namespace A336595

/-- `eq[0, A010879(A145154(n))]` -/
def P16039746032973100323.Spec : Prop :=
  ∀ n, (P16039746032973100323.a n : ℤ) = A336595 (n + 1)

end A336595

/-! ## A336595.P13215234003462321477

`eq[4, A010874(A032741(n))]`
-/

namespace A336595.P13215234003462321477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336595.P13215234003462321477

namespace A336595

/-- `eq[4, A010874(A032741(n))]` -/
def P13215234003462321477.Spec : Prop :=
  ∀ n, (P13215234003462321477.a n : ℤ) = A336595 (n + 1)

end A336595

/-!
# A336596: Numbers whose number of divisors is divisible by 7.

The programs for A336596, there is no canonical definition to state claims against.
-/

/-! ## A336596.P12154464751584301193

`eq[6, A010876(A032741(n))]`
-/

namespace A336596.P12154464751584301193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336596.P12154464751584301193

/-! ## A336596.P1485485615532084392

`eq[7, A006530(A145154(n))]`
-/

namespace A336596.P1485485615532084392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336596.P1485485615532084392

/-! ## A336596.P1788467728342764330

`eq[6, A066301(A008458(n))]`
-/

namespace A336596.P1788467728342764330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336596.P1788467728342764330

/-! ## A336596.P5260785549413665051

`A113484(eq[6, A051903(n+1)])`
-/

namespace A336596.P5260785549413665051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336596.P5260785549413665051

/-!
# A336597: a(n) is the least number k of the form (the number of nonnegative bases m < n such that m^k == m (mod n))/(the number of nonnegative bases m < n such that -m^k == m (mod n)) dividing n, or 0 if no such k exists.

The programs for A336597, there is no canonical definition to state claims against.
-/

/-! ## A336597.P10418690365091198148

`A076109(n+1)%A330085(A215653(n+1))`
-/

namespace A336597.P10418690365091198148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076109 (n + 1)) (A330085 (A215653 (n + 1)).toNat)

end

end A336597.P10418690365091198148

/-! ## A336597.P16661607125638775334

`A076109(n+1)%A143182(A095661(n))`
-/

namespace A336597.P16661607125638775334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076109 (n + 1)) (A143182 (A095661 n).toNat)

end

end A336597.P16661607125638775334

/-! ## A336597.P14589883982806983746

`lcm(A049347(A001595(n)), A078701(n+1))`
-/

namespace A336597.P14589883982806983746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049347 (A001595 n).toNat) (A078701 (n + 1))

end

end A336597.P14589883982806983746

/-! ## A336597.P1727467037674865333

`and(A076109(n+1), A321180(A019274(n+1)))`
-/

namespace A336597.P1727467037674865333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076109 (n + 1)) (A321180 (A019274 (n + 1)).toNat)

end

end A336597.P1727467037674865333

