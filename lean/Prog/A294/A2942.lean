import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A294200: Primes p such that 2^p - 2 is a practical number.

The programs for A294200, there is no canonical definition to state claims against.
-/

/-! ## A294200.P8461302746950106721

`A000040(comp[A301686(3*n)-A001844(n)])`
-/

namespace A294200.P8461302746950106721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 (3 * n) - A001844 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A294200.P8461302746950106721

/-! ## A294200.P14167288566055090766

`∩[A000040(n+1), A325395(A247812(n+2))]`
-/

namespace A294200.P14167288566055090766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (A247812 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294200.P14167288566055090766

/-! ## A294200.P8283868049808925378

`A000040(lt[A346235(n+1), A321738(3*n+2)])`
-/

namespace A294200.P8283868049808925378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321738 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A294200.P8283868049808925378

/-! ## A294200.P9087206748344069286

`A000040(comp[A066887(3*n+5)-A066869(n+1)])`
-/

namespace A294200.P9087206748344069286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (3 * n + 5) - A066869 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A294200.P9087206748344069286

/-! ## A294200.P3662614897440525715

`eq[A003520(A363946(n)), A032741(n)]`
-/

namespace A294200.P3662614897440525715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (A363946 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294200.P3662614897440525715

/-!
# A294202: The maximal number of partitions of {1..3n} that are invariant under a permutation consisting of n 3-cycles, and which have the same number of nonempty parts.

The programs for A294202, there is no canonical definition to state claims against.
-/

/-! ## A294202.P10840138099674709686

`A248227(2*n*a(n-1))` with `a(0)=1`
-/

namespace A294202.P10840138099674709686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248227 (2 * ((n : ℤ) * a (n - 1))).toNat

end

end A294202.P10840138099674709686

/-! ## A294202.P2246779901920380390

`A020912(n*4*a(n-1))` with `a(0)=1`
-/

namespace A294202.P2246779901920380390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020912 ((n : ℤ) * (4 * a (n - 1))).toNat

end

end A294202.P2246779901920380390

/-!
# A294203: Number of partitions of n into distinct Lucas parts (A000204) greater than 1.

The programs for A294203, there is no canonical definition to state claims against.
-/

/-! ## A294203.P17968571412331423804

`A003263(n)-a(n-1)` with `a(0)=1`
-/

namespace A294203.P17968571412331423804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003263 n - a (n - 1)

end

end A294203.P17968571412331423804

/-! ## A294203.P13335453292436811800

`A294204(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A294203.P13335453292436811800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A294204 n - a (n - 2)

end

end A294203.P13335453292436811800

/-! ## A294203.P4921260005115496530

`A239002(n-∑[A221150(n)])`
-/

namespace A294203.P4921260005115496530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294203.P4921260005115496530

/-! ## A294203.P17599601376042407814

`A287772(n+1)*A294204(n)`
-/

namespace A294203.P17599601376042407814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287772 (n + 1) * A294204 n

end

end A294203.P17599601376042407814

/-! ## A294203.P6096425543482480229

`A294204(gcd(n, Δ[A221150(n)]))`
-/

namespace A294203.P6096425543482480229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294204 (Int.gcd (n : ℤ) (f1 (n + 1) - f1 n))

end

end A294203.P6096425543482480229

/-! ## A294203.P11499330110849651551

`A103344(A287727(n+2)-2)`
-/

namespace A294203.P11499330110849651551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (A287727 (n + 2) - 2).toNat

end

end A294203.P11499330110849651551

/-! ## A294203.P16201675628048178431

`A003263(n+1-A287772(n+2))`
-/

namespace A294203.P16201675628048178431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003263 ((n + 1 : ℤ) - A287772 (n + 2)).toNat

end

end A294203.P16201675628048178431

/-! ## A294203.P10779631696748488875

`∑[A003263(n+1)-A294204(n+1)]`
-/

namespace A294203.P10779631696748488875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003263 (n + 1) - A294204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294203.P10779631696748488875

/-! ## A294203.P15259998170528183078

`A294204(Δ[A221150(n)]²)*A294204(n)`
-/

namespace A294203.P15259998170528183078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294204 ((f1 (n + 1) - f1 n) ^ 2).toNat * A294204 n

end

end A294203.P15259998170528183078

/-! ## A294203.P4513256666551947821

`A104450(A285681(n+2))`
-/

namespace A294203.P4513256666551947821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104450 (A285681 (n + 2)).toNat

end

end A294203.P4513256666551947821

/-!
# A294204: Number of partitions of n into distinct Lucas parts (A000032) greater than 1.

The programs for A294204, there is no canonical definition to state claims against.
-/

/-! ## A294204.P5081014606166055363

`A067595(n)-a(n-1)` with `a(0)=1`
-/

namespace A294204.P5081014606166055363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067595 n - a (n - 1)

end

end A294204.P5081014606166055363

/-! ## A294204.P3792001036694787502

`abs(∑[A033999(n)*A067595(n)])`
-/

namespace A294204.P3792001036694787502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A067595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A294204.P3792001036694787502

/-! ## A294204.P3645001553558740623

`A294203(abs(2-n))+A294203(n)`
-/

namespace A294204.P3645001553558740623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 |2 - (n : ℤ)|.toNat + A294203 n

end

end A294204.P3645001553558740623

/-! ## A294204.P17462909554997943418

`gcd(A294203(abs(n-2)), A294203(n))`
-/

namespace A294204.P17462909554997943418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294203 |(n : ℤ) - 2|.toNat) (A294203 n)

end

end A294204.P17462909554997943418

/-! ## A294204.P10289434965860526498

`abs(∑[A062157(n+1)*A067595(n)])`
-/

namespace A294204.P10289434965860526498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A067595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A294204.P10289434965860526498

/-! ## A294204.P17023090324488412319

`A000194(∑[A033999(n)*A067595(n)]²)`
-/

namespace A294204.P17023090324488412319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A067595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A294204.P17023090324488412319

/-! ## A294204.P8568924861565051505

`A000196(∑[A033999(n)*A067595(n)]²)`
-/

namespace A294204.P8568924861565051505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A067595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A294204.P8568924861565051505

/-! ## A294204.P4985198737729342591

`A000194(∑[A067595(n)/A033999(n)]²)`
-/

namespace A294204.P4985198737729342591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067595 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A294204.P4985198737729342591

/-! ## A294204.P4616213686075374110

`A000196(∑[A067595(n)/A033999(n)]²)`
-/

namespace A294204.P4616213686075374110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067595 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A294204.P4616213686075374110

/-! ## A294204.P6002248372276665608

`∑[A033999(n)*A067595(n)]*A033999(n+2)`
-/

namespace A294204.P6002248372276665608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A067595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 2)

end

end A294204.P6002248372276665608

/-!
# A294206: Triangle read by rows: T(n,k) = number of graphs on n nodes with domatic number k (n >= 1, 1 <= k <= n).

The programs for A294206, there is no canonical definition to state claims against.
-/

/-! ## A294206.P14479182298415600346

`and(A263282(A156764(n)), A263284(n+1))`
-/

namespace A294206.P14479182298415600346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263282 (A156764 n).toNat) (A263284 (n + 1))

end

end A294206.P14479182298415600346

/-! ## A294206.P8232400298721619329

`A332402(n+1)-A339629(A060556(n)+1)`
-/

namespace A294206.P8232400298721619329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332402 (n + 1) - A339629 (A060556 n + 1).toNat

end

end A294206.P8232400298721619329

/-!
# A294208: a(n) = reduced numerator of Sum_{p <= n} Sum_{k=1..floor(log(n)/log(p))} 1/p^k, where p runs over the primes.

The programs for A294208, there is no canonical definition to state claims against.
-/

/-! ## A294208.P15397484745564996827

`A095112(A003418(n))`
-/

namespace A294208.P15397484745564996827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (A003418 n).toNat

end

end A294208.P15397484745564996827

/-! ## A294208.P6606653131801234378

`A095112(A075059(n)-1)`
-/

namespace A294208.P6606653131801234378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (A075059 n - 1).toNat

end

end A294208.P6606653131801234378

/-! ## A294208.P18130940259661598428

`A095112(A139550(2*n))`
-/

namespace A294208.P18130940259661598428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (A139550 (2 * n)).toNat

end

end A294208.P18130940259661598428

/-! ## A294208.P5286730139301170694

`A095112(A139554(4*n))`
-/

namespace A294208.P5286730139301170694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (A139554 (4 * n)).toNat

end

end A294208.P5286730139301170694

/-! ## A294208.P6381809278525703259

`A095112(∏[A014963(∏{p}[n, #])])`
-/

namespace A294208.P6381809278525703259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294208.P6381809278525703259

/-!
# A294209: Sum of the smaller parts in the partitions of n into two squarefree parts or two nonsquarefree parts.

The programs for A294209, there is no canonical definition to state claims against.
-/

/-! ## A294209.P10524225645138533041

`A294210(n+1)-A294104(n+1)`
-/

namespace A294209.P10524225645138533041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294210 (n + 1) - A294104 (n + 1)

end

end A294209.P10524225645138533041

/-! ## A294209.P1645642484966084796

`A294211(n+1)-A294210(n+1)`
-/

namespace A294209.P1645642484966084796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294211 (n + 1) - A294210 (n + 1)

end

end A294209.P1645642484966084796

/-! ## A294209.P12239507905040014121

`(A294211(n+1)-A294104(n+1))/2`
-/

namespace A294209.P12239507905040014121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294211 (n + 1) - A294104 (n + 1) : ℚ) / 2

end

end A294209.P12239507905040014121

/-! ## A294209.P240839272297296137

`(n+1)*A294100(n+1)-A294210(n+1)`
-/

namespace A294209.P240839272297296137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294100 (n + 1) - A294210 (n + 1)

end

end A294209.P240839272297296137

/-! ## A294209.P6158053621377554381

`(n+1)*ceil(n/2-A294101(n+1))-A294210(n+1)`
-/

namespace A294209.P6158053621377554381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(n : ℚ) / 2 - (A294101 (n + 1) : ℚ)⌉ - A294210 (n + 1)

end

end A294209.P6158053621377554381

/-! ## A294209.P4401212985835495405

`abs((n+1)*(A294101(n+1)-A110654(n)))-A294210(n+1)`
-/

namespace A294209.P4401212985835495405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A294101 (n + 1) - A110654 n)| - A294210 (n + 1)

end

end A294209.P4401212985835495405

/-! ## A294209.P1474070663906270798

`A004526(A294211(n+1)-A294104(n+1))`
-/

namespace A294209.P1474070663906270798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A294211 (n + 1) - A294104 (n + 1)).toNat

end

end A294209.P1474070663906270798

/-! ## A294209.P3985827272635817142

`A004526((n+1)*A294100(n+1)-A294104(n+1))`
-/

namespace A294209.P3985827272635817142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) * A294100 (n + 1) - A294104 (n + 1)).toNat

end

end A294209.P3985827272635817142

/-! ## A294209.P16564478130710106420

`A110654((n+1)*A294100(n+1)-A294104(n+1))`
-/

namespace A294209.P16564478130710106420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 1 : ℤ) * A294100 (n + 1) - A294104 (n + 1)).toNat

end

end A294209.P16564478130710106420

/-! ## A294209.P5892006318147722128

`A004526((n+1)*ceil(n/2-A294101(n+1))-A294104(n+1))`
-/

namespace A294209.P5892006318147722128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) * ⌈(n : ℚ) / 2 - (A294101 (n + 1) : ℚ)⌉ - A294104 (n + 1)).toNat

end

end A294209.P5892006318147722128

/-! ## A294209.P17744493063284574561

`A110654((n+1)*ceil(n/2-A294101(n+1))-A294104(n+1))`
-/

namespace A294209.P17744493063284574561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 1 : ℤ) * ⌈(n : ℚ) / 2 - (A294101 (n + 1) : ℚ)⌉ - A294104 (n + 1)).toNat

end

end A294209.P17744493063284574561

/-! ## A294209.P7100467417134723410

`A004526((A282380(n+1)+A071068(n+1))*(n+1)-A294104(n+1))`
-/

namespace A294209.P7100467417134723410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A282380 (n + 1) + A071068 (n + 1)) * (n + 1 : ℤ) - A294104 (n + 1)).toNat

end

end A294209.P7100467417134723410

/-!
# A294210: Sum of the larger parts in the partitions of n into two squarefree parts or two nonsquarefree parts.

The programs for A294210, there is no canonical definition to state claims against.
-/

/-! ## A294210.P971958386650205753

`A294209(n+1)+A294104(n+1)`
-/

namespace A294210.P971958386650205753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294209 (n + 1) + A294104 (n + 1)

end

end A294210.P971958386650205753

/-! ## A294210.P17195407834799114569

`A294211(n+1)-A294209(n+1)`
-/

namespace A294210.P17195407834799114569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294211 (n + 1) - A294209 (n + 1)

end

end A294210.P17195407834799114569

/-! ## A294210.P14445377826211201055

`(A294211(n+1)+A294104(n+1))/2`
-/

namespace A294210.P14445377826211201055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294211 (n + 1) + A294104 (n + 1) : ℚ) / 2

end

end A294210.P14445377826211201055

/-! ## A294210.P12292632262909495366

`(n+1)*A294100(n+1)-A294209(n+1)`
-/

namespace A294210.P12292632262909495366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294100 (n + 1) - A294209 (n + 1)

end

end A294210.P12292632262909495366

/-! ## A294210.P10494163459077702437

`(n+1)*ceil(n/2-A294101(n+1))-A294209(n+1)`
-/

namespace A294210.P10494163459077702437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(n : ℚ) / 2 - (A294101 (n + 1) : ℚ)⌉ - A294209 (n + 1)

end

end A294210.P10494163459077702437

/-! ## A294210.P16739913170667933009

`abs((n+1)*(A294101(n+1)-A110654(n)))-A294209(n+1)`
-/

namespace A294210.P16739913170667933009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A294101 (n + 1) - A110654 n)| - A294209 (n + 1)

end

end A294210.P16739913170667933009

/-! ## A294210.P6920229880746797810

`A004526(A294211(n+1)+A294104(n+1))`
-/

namespace A294210.P6920229880746797810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A294211 (n + 1) + A294104 (n + 1)).toNat

end

end A294210.P6920229880746797810

/-! ## A294210.P4985839522234932107

`A004526(A294104(n+1)+(n+1)*A294100(n+1))`
-/

namespace A294210.P4985839522234932107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A294104 (n + 1) + (n + 1 : ℤ) * A294100 (n + 1)).toNat

end

end A294210.P4985839522234932107

/-! ## A294210.P16198612138766199305

`A110654(A294104(n+1)+(n+1)*A294100(n+1))`
-/

namespace A294210.P16198612138766199305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A294104 (n + 1) + (n + 1 : ℤ) * A294100 (n + 1)).toNat

end

end A294210.P16198612138766199305

/-! ## A294210.P1177403919481381398

`A004526(A294104(n+1)+(n+1)*ceil(n/2-A294101(n+1)))`
-/

namespace A294210.P1177403919481381398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A294104 (n + 1) + (n + 1 : ℤ) * ⌈(n : ℚ) / 2 - (A294101 (n + 1) : ℚ)⌉).toNat

end

end A294210.P1177403919481381398

/-!
# A294211: Sum of the parts in the partitions of n into two squarefree parts or two nonsquarefree parts.

The programs for A294211, there is no canonical definition to state claims against.
-/

/-! ## A294211.P15030019526972708739

`(n+1)*A294100(n+1)`
-/

namespace A294211.P15030019526972708739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294100 (n + 1)

end

end A294211.P15030019526972708739

/-! ## A294211.P5663416253930016066

`(n+1)*ceil(n/2-A294101(n+1))`
-/

namespace A294211.P5663416253930016066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(n : ℚ) / 2 - (A294101 (n + 1) : ℚ)⌉

end

end A294211.P5663416253930016066

/-! ## A294211.P1972804002734423317

`A294210(n+1)+A294209(n+1)`
-/

namespace A294211.P1972804002734423317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294210 (n + 1) + A294209 (n + 1)

end

end A294211.P1972804002734423317

/-! ## A294211.P8400568356047105435

`A294104(n+1)+2*A294209(n+1)`
-/

namespace A294211.P8400568356047105435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294104 (n + 1) + 2 * A294209 (n + 1)

end

end A294211.P8400568356047105435

/-! ## A294211.P3525863022527804419

`2*A294210(n+1)-A294104(n+1)`
-/

namespace A294211.P3525863022527804419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294210 (n + 1) - A294104 (n + 1)

end

end A294211.P3525863022527804419

/-! ## A294211.P6816186660543947884

`abs((n+1)*(A294101(n+1)-A110654(n)))`
-/

namespace A294211.P6816186660543947884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A294101 (n + 1) - A110654 n)|

end

end A294211.P6816186660543947884

/-! ## A294211.P9508406242562529455

`(A282380(n+1)+A071068(n+1))*(n+1)`
-/

namespace A294211.P9508406242562529455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282380 (n + 1) + A071068 (n + 1)) * (n + 1 : ℤ)

end

end A294211.P9508406242562529455

/-!
# A294212: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f.: exp(Product_{j=1..n} 1/(1-x^j) - 1).

The programs for A294212, there is no canonical definition to state claims against.
-/

/-! ## A294212.P6224625635979065036

`A227177(A000217(A276890(n)²))`
-/

namespace A294212.P6224625635979065036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A000217 (A276890 n ^ 2).toNat).toNat

end

end A294212.P6224625635979065036

/-!
# A294213: E.g.f.: exp(1/((1-x)*(1-x^2)) - 1).

The programs for A294213, there is no canonical definition to state claims against.
-/

/-! ## A294213.P2786446995332872459

`A294212(∑[n+3])`
-/

namespace A294213.P2786446995332872459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294213.P2786446995332872459

/-! ## A294213.P12087532324681054262

`or(1, A294212(A027379(n+1)))`
-/

namespace A294213.P12087532324681054262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294212 (A027379 (n + 1)).toNat)

end

end A294213.P12087532324681054262

/-! ## A294213.P7070688186585604713

`or(1, A294212(A055998(n+1)))`
-/

namespace A294213.P7070688186585604713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294212 (A055998 (n + 1)).toNat)

end

end A294213.P7070688186585604713

/-! ## A294213.P13501653975649725075

`and(1, A099393(n))*A294212(A055998(n+1))`
-/

namespace A294213.P13501653975649725075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A099393 n) * A294212 (A055998 (n + 1)).toNat

end

end A294213.P13501653975649725075

/-! ## A294213.P12483179490427341186

`(n-A023443(n))*A294212(A055998(n+1))`
-/

namespace A294213.P12483179490427341186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A023443 n) * A294212 (A055998 (n + 1)).toNat

end

end A294213.P12483179490427341186

/-! ## A294213.P7326119320951015724

`A000040(n+2)%2*A294212(A055998(n+1))`
-/

namespace A294213.P7326119320951015724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A294212 (A055998 (n + 1)).toNat

end

end A294213.P7326119320951015724

/-! ## A294213.P13484484830691214834

`(A000005(n+1)%2)!*A294212(A055998(n+1))`
-/

namespace A294213.P13484484830691214834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000005 (n + 1)) 2).toNat : ℤ) * A294212 (A055998 (n + 1)).toNat

end

end A294213.P13484484830691214834

/-!
# A294214: E.g.f.: exp(1/((1-x)*(1-x^2)*(1-x^3)) - 1).

The programs for A294214, there is no canonical definition to state claims against.
-/

/-! ## A294214.P6921984226185466130

`A294212(C(n+5, 2)-4)`
-/

namespace A294214.P6921984226185466130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (Nat.choose (n + 5) 2 - 4)

end

end A294214.P6921984226185466130

/-! ## A294214.P18393056822199473414

`A294212(∑[n+3]+n+3)`
-/

namespace A294214.P18393056822199473414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A294214.P18393056822199473414

/-! ## A294214.P16763182575229934105

`or(1, A294212(A046691(n+2)))`
-/

namespace A294214.P16763182575229934105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294212 (A046691 (n + 2)).toNat)

end

end A294214.P16763182575229934105

/-! ## A294214.P13837151089941060299

`A294212(A046691(n+2))/(A000027(n+1)-n)`
-/

namespace A294214.P13837151089941060299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294212 (A046691 (n + 2)).toNat : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ)

end

end A294214.P13837151089941060299

/-! ## A294214.P1774112806456966064

`A318880(2^n+1)+A294212(A046691(n+2))`
-/

namespace A294214.P1774112806456966064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (2 ^ n + 1) + A294212 (A046691 (n + 2)).toNat

end

end A294214.P1774112806456966064

/-!
# A294215: E.g.f.: exp(1/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)) - 1).

The programs for A294215, there is no canonical definition to state claims against.
-/

/-! ## A294215.P8140709005395424056

`A294212(C(n+5, 2)+n)`
-/

namespace A294215.P8140709005395424056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (Nat.choose (n + 5) 2 + n)

end

end A294215.P8140709005395424056

/-! ## A294215.P6438348900471675689

`A294212(A052905(n+2))`
-/

namespace A294215.P6438348900471675689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (A052905 (n + 2)).toNat

end

end A294215.P6438348900471675689

/-! ## A294215.P8516794604594892896

`A294212(eq[4, A025581(n)])`
-/

namespace A294215.P8516794604594892896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294215.P8516794604594892896

/-! ## A294215.P15340193128665395589

`A294212(A055999(n+2)+1)`
-/

namespace A294215.P15340193128665395589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (A055999 (n + 2) + 1).toNat

end

end A294215.P15340193128665395589

/-! ## A294215.P6359531353812047815

`A294212(A046691(n+3)-1)`
-/

namespace A294215.P6359531353812047815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (A046691 (n + 3) - 1).toNat

end

end A294215.P6359531353812047815

/-! ## A294215.P152904885652134952

`A294212(A000217(n+5)-5)`
-/

namespace A294215.P152904885652134952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (A000217 (n + 5) - 5).toNat

end

end A294215.P152904885652134952

/-! ## A294215.P12058442119121154301

`A294212(A000124(n+5)-6)`
-/

namespace A294215.P12058442119121154301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (A000124 (n + 5) - 6).toNat

end

end A294215.P12058442119121154301

/-! ## A294215.P3048718344018030227

`A294212(eq[2, A091613(n+1)]-2)`
-/

namespace A294215.P3048718344018030227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2)

end

end A294215.P3048718344018030227

/-!
# A294216: E.g.f.: exp(1/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)*(1-x^5)) - 1).

The programs for A294216, there is no canonical definition to state claims against.
-/

/-! ## A294216.P12624732422366710560

`A294212(eq[5, A025581(n)])`
-/

namespace A294216.P12624732422366710560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294216.P12624732422366710560

/-! ## A294216.P16480661125817815400

`A294212(Δ[A023551(n+1)])`
-/

namespace A294216.P16480661125817815400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (f1 (n + 1) - f1 n).toNat

end

end A294216.P16480661125817815400

/-! ## A294216.P7599735531144017601

`A294212(eq[6, A004736(n+1)])`
-/

namespace A294216.P7599735531144017601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294216.P7599735531144017601

/-! ## A294216.P623559369409163076

`A294212(eq[4, A091613(n+3)])`
-/

namespace A294216.P623559369409163076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294216.P623559369409163076

/-! ## A294216.P7149833965904123751

`A294212(2*n+A155212(n)+13)`
-/

namespace A294216.P7149833965904123751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 ((2 * n : ℤ) + (A155212 n + 13)).toNat

end

end A294216.P7149833965904123751

/-! ## A294216.P16815473505783097572

`A294212(A055999(n+2)+A020715(n))`
-/

namespace A294216.P16815473505783097572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (A055999 (n + 2) + A020715 n).toNat

end

end A294216.P16815473505783097572

/-! ## A294216.P8845721391734503832

`A294212(A000124(n+5)+A004273(n)-n)`
-/

namespace A294216.P8845721391734503832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294212 (A000124 (n + 5) + (A004273 n - (n : ℤ))).toNat

end

end A294216.P8845721391734503832

/-!
# A294217: Triangle read by rows: T(n,k) is the number of graphs with n vertices and minimum vertex degree k, (0 <= k < n).

The programs for A294217, there is no canonical definition to state claims against.
-/

/-! ## A294217.P18378234190700809756

`A263293(∑[char[∑[n]]]²-n)`
-/

namespace A294217.P18378234190700809756
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263293 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A294217.P18378234190700809756

/-! ## A294217.P4341331876943689617

`gcd(A000038(n), A263293(A038722(n+1)))`
-/

namespace A294217.P4341331876943689617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A263293 (A038722 (n + 1)).toNat)

end

end A294217.P4341331876943689617

/-! ## A294217.P13191621988294998377

`lcm(A033999(n), A263293(A038722(n+1)))`
-/

namespace A294217.P13191621988294998377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A263293 (A038722 (n + 1)).toNat)

end

end A294217.P13191621988294998377

/-! ## A294217.P25920834484883492

`A263293(A038722(n+1))+A000038(n+1)`
-/

namespace A294217.P25920834484883492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263293 (A038722 (n + 1)).toNat + A000038 (n + 1)

end

end A294217.P25920834484883492

/-! ## A294217.P2093210311905975746

`A033999(n+1)²*A263293(A038722(n+1))`
-/

namespace A294217.P2093210311905975746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) ^ 2 * A263293 (A038722 (n + 1)).toNat

end

end A294217.P2093210311905975746

/-! ## A294217.P831586899891778273

`A062157(n+1)²*A263293(A038722(n+1))`
-/

namespace A294217.P831586899891778273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) ^ 2 * A263293 (A038722 (n + 1)).toNat

end

end A294217.P831586899891778273

/-! ## A294217.P5126510250654301467

`A263293(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A294217.P5126510250654301467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263293 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A294217.P5126510250654301467

/-! ## A294217.P10916076586348390706

`A263293(A038722(n+1))^A286477(2*(n+1))`
-/

namespace A294217.P10916076586348390706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263293 (A038722 (n + 1)).toNat : ℚ) ^ (A286477 (2 * (n + 1)) : ℤ)

end

end A294217.P10916076586348390706

/-! ## A294217.P8258842500653052810

`A014963(10*(n+1))*A263293(A038722(n+1))`
-/

namespace A294217.P8258842500653052810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A263293 (A038722 (n + 1)).toNat

end

end A294217.P8258842500653052810

/-! ## A294217.P18129638382301055033

`A263293(A038722(n+1))/A014963(A000217(n+6))`
-/

namespace A294217.P18129638382301055033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263293 (A038722 (n + 1)).toNat : ℚ) / (A014963 (A000217 (n + 6)).toNat : ℚ)

end

end A294217.P18129638382301055033

/-!
# A294219: Number T(n,k) of ascent sequences of length n where the maximum of 0 and all letter multiplicities equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A294219, there is no canonical definition to state claims against.
-/

/-! ## A294219.P4060612477637232386

`A274923(A118113(A048993(n)²))`
-/

namespace A294219.P4060612477637232386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A118113 (A048993 n ^ 2).toNat).toNat

end

end A294219.P4060612477637232386

/-! ## A294219.P17653637787979181974

`∑{d}[A058716(n), A000196(A125501(#))]`
-/

namespace A294219.P17653637787979181974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000196 (A125501 d).toNat

end

end A294219.P17653637787979181974

/-! ## A294219.P17045428729294919975

`∑{d}[A058716(n), A000196(A126567(#))]`
-/

namespace A294219.P17045428729294919975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000196 (A126567 d).toNat

end

end A294219.P17045428729294919975

/-! ## A294219.P18052256413554906114

`A244372(n+1)+A108611(A269945(n))`
-/

namespace A294219.P18052256413554906114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (n + 1) + A108611 (A269945 n).toNat

end

end A294219.P18052256413554906114

/-! ## A294219.P4083005664932930106

`A260195(A269945(n))`
-/

namespace A294219.P4083005664932930106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 (A269945 n).toNat

end

end A294219.P4083005664932930106

/-!
# A294220: Number A(n,k) of ascent sequences of length n where no letter multiplicity is larger than k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A294220, there is no canonical definition to state claims against.
-/

/-! ## A294220.P2762402563926777836

`A108611(6*A288942(n))`
-/

namespace A294220.P2762402563926777836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (6 * A288942 n).toNat

end

end A294220.P2762402563926777836

/-! ## A294220.P7157395097810751315

`A056239(A290547(A288942(n)))`
-/

namespace A294220.P7157395097810751315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A290547 (A288942 n).toNat).toNat

end

end A294220.P7157395097810751315

/-! ## A294220.P17216940182795915894

`A108947(A061579(n)%A028764(n+1))`
-/

namespace A294220.P17216940182795915894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (Int.tmod (A061579 n) (A028764 (n + 1))).toNat

end

end A294220.P17216940182795915894

/-! ## A294220.P9628208975005365158

`A117707(A143841(n)*A288942(n))`
-/

namespace A294220.P9628208975005365158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A143841 n * A288942 n).toNat

end

end A294220.P9628208975005365158

/-! ## A294220.P12078185992374946740

`A007093(A240608(n)%A239933(3*(n+1)))`
-/

namespace A294220.P12078185992374946740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A240608 n) (A239933 (3 * (n + 1)))).toNat

end

end A294220.P12078185992374946740

/-!
# A294221: Exponential transform of the square pyramidal numbers (A000330).

The programs for A294221, there is no canonical definition to state claims against.
-/

/-! ## A294221.P1497062648870016472

`A005185(A000332(n)+A000168(n))`
-/

namespace A294221.P1497062648870016472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A000332 n + A000168 n).toNat

end

end A294221.P1497062648870016472

/-! ## A294221.P17886428554085734768

`A160051(A112242(n))+A137539(n)`
-/

namespace A294221.P17886428554085734768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160051 (A112242 n).toNat + A137539 n

end

end A294221.P17886428554085734768

/-!
# A294222: Exponential transform of the Lucas numbers (A000204).

The programs for A294222, there is no canonical definition to state claims against.
-/

/-! ## A294222.P11895777063030449811

`A256502(A171448(n))`
-/

namespace A294222.P11895777063030449811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A171448 n).toNat

end

end A294222.P11895777063030449811

/-! ## A294222.P17709630986562990465

`A219642(A238866(n²))`
-/

namespace A294222.P17709630986562990465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A238866 (n ^ 2)).toNat

end

end A294222.P17709630986562990465

/-!
# A294226: Length of period of continued fraction expansion of sqrt(3*2^n).

The programs for A294226, there is no canonical definition to state claims against.
-/

/-! ## A294226.P10403880130324804249

`A003285(A007283(n))`
-/

namespace A294226.P10403880130324804249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A007283 n).toNat

end

end A294226.P10403880130324804249

/-! ## A294226.P15651110111644452974

`A097853(A007283(n)%A327322(2*n+5))`
-/

namespace A294226.P15651110111644452974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (Int.tmod (A007283 n) (A327322 (2 * n + 5))).toNat

end

end A294226.P15651110111644452974

/-! ## A294226.P13089031242422926414

`A003285(3*2^n)`
-/

namespace A294226.P13089031242422926414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (3 * 2 ^ n)

end

end A294226.P13089031242422926414

/-! ## A294226.P17706444541217777606

`A097853(3*2^n)`
-/

namespace A294226.P17706444541217777606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (3 * 2 ^ n)

end

end A294226.P17706444541217777606

/-! ## A294226.P2840359568456416466

`A067280(3*2^n)-1`
-/

namespace A294226.P2840359568456416466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (3 * 2 ^ n) - 1

end

end A294226.P2840359568456416466

/-!
# A294232: Number of partitions of n into two parts with smaller part squarefree and larger part nonsquarefree.

The programs for A294232, there is no canonical definition to state claims against.
-/

/-! ## A294232.P8394528443681274084

`A294101(n+1)-A294233(n+1)`
-/

namespace A294232.P8394528443681274084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294101 (n + 1) - A294233 (n + 1)

end

end A294232.P8394528443681274084

/-! ## A294232.P13783471227112007522

`∑[char[2*∏{p}[n, #]-1]]-A071068(n+1)`
-/

namespace A294232.P13783471227112007522
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∏ p ∈ Nat.primeFactors (f3 n), p) : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A071068 (n + 1)

end

end A294232.P13783471227112007522

/-! ## A294232.P5645217228933890279

`∑[char[2*∏{p}[n, #]-1]]-A262351(n+1)/(n+1)`
-/

namespace A294232.P5645217228933890279
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∏ p ∈ Nat.primeFactors (f3 n), p) : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A262351 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A294232.P5645217228933890279

/-! ## A294232.P4361314198152507359

`A262869(n+1)-A071068(n+1)`
-/

namespace A294232.P4361314198152507359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (n + 1) - A071068 (n + 1)

end

end A294232.P4361314198152507359

/-! ## A294232.P9108687695362489270

`A294235(n+1)-A282380(n+1)`
-/

namespace A294232.P9108687695362489270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294235 (n + 1) - A282380 (n + 1)

end

end A294232.P9108687695362489270

/-! ## A294232.P1098791605947888471

`A351833(n+1)-A262868(n+1)`
-/

namespace A294232.P1098791605947888471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351833 (n + 1) - A262868 (n + 1)

end

end A294232.P1098791605947888471

/-! ## A294232.P13569767249794400271

`A262869(n+1)-ceil(A098235(n+1)/2)`
-/

namespace A294232.P13569767249794400271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (n + 1) - ⌈(A098235 (n + 1) : ℚ) / 2⌉

end

end A294232.P13569767249794400271

/-! ## A294232.P13045598257581124524

`A013928(∑[n%2]+1)-A071068(n+1)`
-/

namespace A294232.P13045598257581124524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A071068 (n + 1)

end

end A294232.P13045598257581124524

/-! ## A294232.P13234512213788411790

`∑[char[2*A005117(n+1)-1]]-A071068(n+1)`
-/

namespace A294232.P13234512213788411790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005117 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A071068 (n + 1)

end

end A294232.P13234512213788411790

/-! ## A294232.P13802141040414762445

`∑[char[2*A005117(n+1)-1]]-A262351(n+1)/(n+1)`
-/

namespace A294232.P13802141040414762445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005117 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A262351 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A294232.P13802141040414762445

/-! ## A294232.P6237911646254491808

`A013928(A080513(n))-A071068(n+1)`
-/

namespace A294232.P6237911646254491808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A080513 n).toNat - A071068 (n + 1)

end

end A294232.P6237911646254491808

/-! ## A294232.P540410911691957298

`A262991(n+1)-(A262868(n+1)+A071068(n+1))`
-/

namespace A294232.P540410911691957298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) - (A262868 (n + 1) + A071068 (n + 1))

end

end A294232.P540410911691957298

/-! ## A294232.P5763109334048560359

`A071068(n+1)+A294101(n+1)-A262868(n+1)`
-/

namespace A294232.P5763109334048560359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (n + 1) + (A294101 (n + 1) - A262868 (n + 1))

end

end A294232.P5763109334048560359

/-! ## A294232.P5720365566900038567

`Δ[A294060(n+1)]-A071068(n+1)`
-/

namespace A294232.P5720365566900038567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071068 (n + 1)

end

end A294232.P5720365566900038567

/-! ## A294232.P5870488397945318890

`A294060(n+2)-(A294060(n+1)+A071068(n+1))`
-/

namespace A294232.P5870488397945318890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294060 (n + 2) - (A294060 (n + 1) + A071068 (n + 1))

end

end A294232.P5870488397945318890

/-! ## A294232.P5893182501354076044

`A013928(n+2)-(A262868(n+2)+A071068(n+1))`
-/

namespace A294232.P5893182501354076044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - (A262868 (n + 2) + A071068 (n + 1))

end

end A294232.P5893182501354076044

/-! ## A294232.P6965751716758078800

`A013928(floor(n/2)+1)-A098236(n+1)`
-/

namespace A294232.P6965751716758078800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (⌊(n : ℚ) / 2⌋ + 1).toNat - A098236 (n + 1)

end

end A294232.P6965751716758078800

/-!
# A294233: Number of partitions of n into two parts with smaller part nonsquarefree and larger part squarefree.

The programs for A294233, there is no canonical definition to state claims against.
-/

/-! ## A294233.P7423952719130444441

`A294101(n+1)-A294232(n+1)`
-/

namespace A294233.P7423952719130444441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294101 (n + 1) - A294232 (n + 1)

end

end A294233.P7423952719130444441

/-! ## A294233.P6088439957199539158

`A262868(n+1)-A071068(n+1)`
-/

namespace A294233.P6088439957199539158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) - A071068 (n + 1)

end

end A294233.P6088439957199539158

/-! ## A294233.P4902981575002054005

`A351833(n+1)-A262869(n+1)`
-/

namespace A294233.P4902981575002054005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351833 (n + 1) - A262869 (n + 1)

end

end A294233.P4902981575002054005

/-! ## A294233.P13337058365893849806

`A262868(n+1)-ceil(A098235(n+1)/2)`
-/

namespace A294233.P13337058365893849806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) - ⌈(A098235 (n + 1) : ℚ) / 2⌉

end

end A294233.P13337058365893849806

/-! ## A294233.P11578466292831224326

`A262868(n+1)-A262351(n+1)/(n+1)`
-/

namespace A294233.P11578466292831224326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262868 (n + 1) : ℚ) - (A262351 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A294233.P11578466292831224326

/-! ## A294233.P12327669362614726362

`ceil(n/2-A282380(n+1))-A262869(n+1)`
-/

namespace A294233.P12327669362614726362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A282380 (n + 1) : ℚ)⌉ - A262869 (n + 1)

end

end A294233.P12327669362614726362

/-! ## A294233.P5185343874357247087

`A262868(n+1)-A110654(A098235(n+1))`
-/

namespace A294233.P5185343874357247087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) - A110654 (A098235 (n + 1)).toNat

end

end A294233.P5185343874357247087

/-! ## A294233.P3483610479675107377

`A262868(n+1)-A123108(A098235(n+1)+1)`
-/

namespace A294233.P3483610479675107377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) - A123108 (A098235 (n + 1) + 1).toNat

end

end A294233.P3483610479675107377

/-! ## A294233.P16806841253321459687

`A110654(n)-(A282380(n+1)+A262869(n+1))`
-/

namespace A294233.P16806841253321459687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - (A282380 (n + 1) + A262869 (n + 1))

end

end A294233.P16806841253321459687

/-! ## A294233.P14229890041586725718

`A262991(n+1)-(A262869(n+1)+A071068(n+1))`
-/

namespace A294233.P14229890041586725718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) - (A262869 (n + 1) + A071068 (n + 1))

end

end A294233.P14229890041586725718

/-! ## A294233.P15894539304158081413

`A071068(n+1)+A294101(n+1)-A262869(n+1)`
-/

namespace A294233.P15894539304158081413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (n + 1) + (A294101 (n + 1) - A262869 (n + 1))

end

end A294233.P15894539304158081413

/-! ## A294233.P14728956838643629759

`A262868(n+1)-(2*A262351(n+1))%record[A093178(n)]`
-/

namespace A294233.P14728956838643629759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) - Int.tmod (2 * A262351 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A294233.P14728956838643629759

/-! ## A294233.P15122344300214085473

`A294234(n+1)-A282380(n+1)`
-/

namespace A294233.P15122344300214085473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 (n + 1) - A282380 (n + 1)

end

end A294233.P15122344300214085473

/-! ## A294233.P8017908842188161539

`A262868(n+1)-A002265(2*(A098235(n+1)+1))`
-/

namespace A294233.P8017908842188161539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) - A002265 (2 * (A098235 (n + 1) + 1)).toNat

end

end A294233.P8017908842188161539

/-! ## A294233.P7286171106448792795

`A013928(n+1)-(A262869(n+1)+A098236(n+1))`
-/

namespace A294233.P7286171106448792795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - (A262869 (n + 1) + A098236 (n + 1))

end

end A294233.P7286171106448792795

/-!
# A294234: Number of partitions of n into two parts such that the smaller part is nonsquarefree.

The programs for A294234, the canonical program `A294234.P2149377772881996942` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294234 has offset 0).

The definition of A294234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294234.P9317307907143963393

`∑[char[2*lt[1, ∏{e}[n, #]]]]`
-/

namespace A294234.P9317307907143963393
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294234.P9317307907143963393

namespace A294234

/-- `∑[char[2*lt[1, ∏{e}[n, #]]]]` -/
def P9317307907143963393.Spec : Prop :=
  ∀ n, (P9317307907143963393.a n : ℤ) = A294234 n

end A294234

/-! ## A294234.P8863563651453798301

`∑[char[2*lt[∏{p}[n, #], n]]]`
-/

namespace A294234.P8863563651453798301
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f3 j < f5 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294234.P8863563651453798301

namespace A294234

/-- `∑[char[2*lt[∏{p}[n, #], n]]]` -/
def P8863563651453798301.Spec : Prop :=
  ∀ n, (P8863563651453798301.a n : ℤ) = A294234 n

end A294234

/-! ## A294234.P13082399940508343634

`comp[2*lt[1, ∏{e}[n, #]]+n]-n`
-/

namespace A294234.P13082399940508343634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A294234.P13082399940508343634

namespace A294234

/-- `comp[2*lt[1, ∏{e}[n, #]]+n]-n` -/
def P13082399940508343634.Spec : Prop :=
  ∀ n, P13082399940508343634.a n = A294234 n

end A294234

/-! ## A294234.P12496708529514887021

`floor(n/2-∑[char[2*∏{p}[n, #]]])`
-/

namespace A294234.P12496708529514887021
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f3 n), p)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A294234.P12496708529514887021

namespace A294234

/-- `floor(n/2-∑[char[2*∏{p}[n, #]]])` -/
def P12496708529514887021.Spec : Prop :=
  ∀ n, P12496708529514887021.a n = A294234 n

end A294234

/-! ## A294234.P2149377772881996942

`∑[∏{d}[1-n, #%2]%∏{e}[floor(n/2), #]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294234

/-- `∑[∏{d}[1-n, #%2]%∏{e}[floor(n/2), #]]` -/
def P2149377772881996942.Spec : Prop :=
  ∀ n, (P2149377772881996942.a n : ℤ) = A294234 n

theorem P2149377772881996942.correct : P2149377772881996942.Spec := by
  intro n
  simp only [A294234]

end A294234

/-! ## A294234.P12356093674699191206

`∑[char[2*A013929(n+1)]]`
-/

namespace A294234.P12356093674699191206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013929 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294234.P12356093674699191206

namespace A294234

/-- `∑[char[2*A013929(n+1)]]` -/
def P12356093674699191206.Spec : Prop :=
  ∀ n, (P12356093674699191206.a n : ℤ) = A294234 n

end A294234

/-! ## A294234.P1009452905917180530

`∑[char[2*(eq[0, A008683(n+1)]+1)]]`
-/

namespace A294234.P1009452905917180530
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294234.P1009452905917180530

namespace A294234

/-- `∑[char[2*(eq[0, A008683(n+1)]+1)]]` -/
def P1009452905917180530.Spec : Prop :=
  ∀ n, (P1009452905917180530.a n : ℤ) = A294234 n

end A294234

/-! ## A294234.P13832937789617613594

`A008619(n)-A107079(A008619(n))`
-/

namespace A294234.P13832937789617613594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A107079 (A008619 n).toNat

end

end A294234.P13832937789617613594

namespace A294234

/-- `A008619(n)-A107079(A008619(n))` -/
def P13832937789617613594.Spec : Prop :=
  ∀ n, P13832937789617613594.a n = A294234 n

end A294234

/-! ## A294234.P596866827181508134

`A105588(n)-A347648(n)`
-/

namespace A294234.P596866827181508134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105588 n - A347648 n

end

end A294234.P596866827181508134

namespace A294234

/-- `A105588(n)-A347648(n)` -/
def P596866827181508134.Spec : Prop :=
  ∀ n, P596866827181508134.a n = A294234 n

end A294234

/-!
# A294235: Number of partitions of n into two parts such that the larger part is nonsquarefree.

The programs for A294235, the canonical program `A294235.P12226892777925913484` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294235 has offset 1).

The definition of A294235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294235.P12226892777925913484

`∑[(A007431(n)+n)%2]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A294235

/-- `∑[(A007431(n)+n)%2]` -/
def P12226892777925913484.Spec : Prop :=
  ∀ n, P12226892777925913484.a n = A294235 (n + 1)

theorem P12226892777925913484.correct : P12226892777925913484.Spec := by
  intro n
  simp only [A294235, Nat.add_sub_cancel]

end A294235

/-! ## A294235.P8432108241914896444

`∑[char[comp[A105570(n)+n]]]`
-/

namespace A294235.P8432108241914896444
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294235.P8432108241914896444

namespace A294235

/-- `∑[char[comp[A105570(n)+n]]]` -/
def P8432108241914896444.Spec : Prop :=
  ∀ n, (P8432108241914896444.a n : ℤ) = A294235 (n + 1)

end A294235

/-! ## A294235.P17939738616401857240

`A294239(n+1)/(n+1)`
-/

namespace A294235.P17939738616401857240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294239 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A294235.P17939738616401857240

namespace A294235

/-- `A294239(n+1)/(n+1)` -/
def P17939738616401857240.Spec : Prop :=
  ∀ n, P17939738616401857240.a n = (A294235 (n + 1) : ℚ)

end A294235

/-! ## A294235.P6500918821765430727

`ceil(n/2-A262868(n+1))`
-/

namespace A294235.P6500918821765430727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A262868 (n + 1) : ℚ)⌉

end

end A294235.P6500918821765430727

namespace A294235

/-- `ceil(n/2-A262868(n+1))` -/
def P6500918821765430727.Spec : Prop :=
  ∀ n, P6500918821765430727.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P11649866045116060362

`∑[1-char[A105570(abs(1-n)+1)+n]]`
-/

namespace A294235.P11649866045116060362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294235.P11649866045116060362

namespace A294235

/-- `∑[1-char[A105570(abs(1-n)+1)+n]]` -/
def P11649866045116060362.Spec : Prop :=
  ∀ n, P11649866045116060362.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P5690745353005818612

`∑[A000035(n-A007431(n))]`
-/

namespace A294235.P5690745353005818612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A007431 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294235.P5690745353005818612

namespace A294235

/-- `∑[A000035(n-A007431(n))]` -/
def P5690745353005818612.Spec : Prop :=
  ∀ n, P5690745353005818612.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P7405473144266113511

`A110654(n)-A262868(n+1)`
-/

namespace A294235.P7405473144266113511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A262868 (n + 1)

end

end A294235.P7405473144266113511

namespace A294235

/-- `A110654(n)-A262868(n+1)` -/
def P7405473144266113511.Spec : Prop :=
  ∀ n, P7405473144266113511.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P14995140236299616852

`A294239(n+1)%A028310(n)`
-/

namespace A294235.P14995140236299616852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294239 (n + 1)) (A028310 n)

end

end A294235.P14995140236299616852

namespace A294235

/-- `A294239(n+1)%A028310(n)` -/
def P14995140236299616852.Spec : Prop :=
  ∀ n, P14995140236299616852.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P4246269591830156473

`∑[A000035(n)]-A262868(n+1)`
-/

namespace A294235.P4246269591830156473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A262868 (n + 1)

end

end A294235.P4246269591830156473

namespace A294235

/-- `∑[A000035(n)]-A262868(n+1)` -/
def P4246269591830156473.Spec : Prop :=
  ∀ n, P4246269591830156473.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P15705606258531927019

`A294232(n+1)+A282380(n+1)`
-/

namespace A294235.P15705606258531927019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294232 (n + 1) + A282380 (n + 1)

end

end A294235.P15705606258531927019

namespace A294235

/-- `A294232(n+1)+A282380(n+1)` -/
def P15705606258531927019.Spec : Prop :=
  ∀ n, P15705606258531927019.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P17084653843775299243

`n-(A262868(n+1)+A004526(n))`
-/

namespace A294235.P17084653843775299243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A262868 (n + 1) + A004526 n)

end

end A294235.P17084653843775299243

namespace A294235

/-- `n-(A262868(n+1)+A004526(n))` -/
def P17084653843775299243.Spec : Prop :=
  ∀ n, P17084653843775299243.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P9431249734808005396

`∑[A000035(A007431(n)+A000035(n))]`
-/

namespace A294235.P9431249734808005396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007431 n + A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294235.P9431249734808005396

namespace A294235

/-- `∑[A000035(A007431(n)+A000035(n))]` -/
def P9431249734808005396.Spec : Prop :=
  ∀ n, P9431249734808005396.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P8634866349342434335

`A065033(n)-(A262868(n+1)+A000007(n))`
-/

namespace A294235.P8634866349342434335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - (A262868 (n + 1) + A000007 n)

end

end A294235.P8634866349342434335

namespace A294235

/-- `A065033(n)-(A262868(n+1)+A000007(n))` -/
def P8634866349342434335.Spec : Prop :=
  ∀ n, P8634866349342434335.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P15968000792247033456

`A057427(n)*A065033(n)-A262868(n+1)`
-/

namespace A294235.P15968000792247033456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A065033 n - A262868 (n + 1)

end

end A294235.P15968000792247033456

namespace A294235

/-- `A057427(n)*A065033(n)-A262868(n+1)` -/
def P15968000792247033456.Spec : Prop :=
  ∀ n, P15968000792247033456.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P14737877068846142223

`A294100(n+1)+A294232(n+1)-A071068(n+1)`
-/

namespace A294235.P14737877068846142223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294100 (n + 1) + (A294232 (n + 1) - A071068 (n + 1))

end

end A294235.P14737877068846142223

namespace A294235

/-- `A294100(n+1)+A294232(n+1)-A071068(n+1)` -/
def P14737877068846142223.Spec : Prop :=
  ∀ n, P14737877068846142223.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P16007341665644467863

`A294100(n+1)+A294101(n+1)-A262868(n+1)`
-/

namespace A294235.P16007341665644467863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294100 (n + 1) + (A294101 (n + 1) - A262868 (n + 1))

end

end A294235.P16007341665644467863

namespace A294235

/-- `A294100(n+1)+A294101(n+1)-A262868(n+1)` -/
def P16007341665644467863.Spec : Prop :=
  ∀ n, P16007341665644467863.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P11357877524877607137

`A294234(n+1)+A295284(n+1)-A294234(n)`
-/

namespace A294235.P11357877524877607137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 (n + 1) + (A295284 (n + 1) - A294234 n)

end

end A294235.P11357877524877607137

namespace A294235

/-- `A294234(n+1)+A295284(n+1)-A294234(n)` -/
def P11357877524877607137.Spec : Prop :=
  ∀ n, P11357877524877607137.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P10603530536993779290

`∑[A000035(xor(n, A007431(n)))]`
-/

namespace A294235.P10603530536993779290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.xor (n : ℤ) (A007431 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294235.P10603530536993779290

namespace A294235

/-- `∑[A000035(xor(n, A007431(n)))]` -/
def P10603530536993779290.Spec : Prop :=
  ∀ n, P10603530536993779290.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P9587604667932918432

`∑[A000035(A007431(n)+n)]`
-/

namespace A294235.P9587604667932918432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007431 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294235.P9587604667932918432

namespace A294235

/-- `∑[A000035(A007431(n)+n)]` -/
def P9587604667932918432.Spec : Prop :=
  ∀ n, P9587604667932918432.a n = A294235 (n + 1)

end A294235

/-! ## A294235.P11942601758269487490

`A294234(2*n)-A294234(n)`
-/

namespace A294235.P11942601758269487490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 (2 * n) - A294234 n

end

end A294235.P11942601758269487490

namespace A294235

/-- `A294234(2*n)-A294234(n)` -/
def P11942601758269487490.Spec : Prop :=
  ∀ n, P11942601758269487490.a n = A294235 (n + 1)

end A294235

/-!
# A294236: Sum of the smaller parts of the partitions of n into two parts with larger part nonsquarefree.

The programs for A294236, the canonical program `A294236.P17835350661961876971` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294236 has offset 1).

The definition of A294236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294236.P17835350661961876971

`∑[∑[n]%(n+1)]-A294145(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A294236

/-- `∑[∑[n]%(n+1)]-A294145(n+1)` -/
def P17835350661961876971.Spec : Prop :=
  ∀ n, P17835350661961876971.a n = A294236 (n + 1)

theorem P17835350661961876971.correct : P17835350661961876971.Spec := by
  intro n
  simp only [A294236, Nat.add_sub_cancel]

end A294236

/-! ## A294236.P8285999212357651932

`A008795(xor(1, n))-A294145(n+1)`
-/

namespace A294236.P8285999212357651932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (Nat.xor 1 n) - A294145 (n + 1)

end

end A294236.P8285999212357651932

namespace A294236

/-- `A008795(xor(1, n))-A294145(n+1)` -/
def P8285999212357651932.Spec : Prop :=
  ∀ n, P8285999212357651932.a n = A294236 (n + 1)

end A294236

/-! ## A294236.P2733234609307710209

`∑[∑[A001057(n)]]-A294145(n+1)`
-/

namespace A294236.P2733234609307710209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294145 (n + 1)

end

end A294236.P2733234609307710209

namespace A294236

/-- `∑[∑[A001057(n)]]-A294145(n+1)` -/
def P2733234609307710209.Spec : Prop :=
  ∀ n, P2733234609307710209.a n = A294236 (n + 1)

end A294236

/-! ## A294236.P2381082352963350816

`∑[n]-(A294145(n+1)+A211539(n))`
-/

namespace A294236.P2381082352963350816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A294145 (n + 1) + A211539 n)

end

end A294236.P2381082352963350816

namespace A294236

/-- `∑[n]-(A294145(n+1)+A211539(n))` -/
def P2381082352963350816.Spec : Prop :=
  ∀ n, P2381082352963350816.a n = A294236 (n + 1)

end A294236

/-! ## A294236.P16413187747156977252

`A008795(A004442(n))-A294145(n+1)`
-/

namespace A294236.P16413187747156977252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A004442 n).toNat - A294145 (n + 1)

end

end A294236.P16413187747156977252

namespace A294236

/-- `A008795(A004442(n))-A294145(n+1)` -/
def P16413187747156977252.Spec : Prop :=
  ∀ n, P16413187747156977252.a n = A294236 (n + 1)

end A294236

/-! ## A294236.P7200042767883019259

`A000217(A110654(n))-A294145(n+1)`
-/

namespace A294236.P7200042767883019259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A110654 n).toNat - A294145 (n + 1)

end

end A294236.P7200042767883019259

namespace A294236

/-- `A000217(A110654(n))-A294145(n+1)` -/
def P7200042767883019259.Spec : Prop :=
  ∀ n, P7200042767883019259.a n = A294236 (n + 1)

end A294236

/-! ## A294236.P8389522572933551327

`A161680(A080513(n))-A294145(n+1)`
-/

namespace A294236.P8389522572933551327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A080513 n).toNat - A294145 (n + 1)

end

end A294236.P8389522572933551327

namespace A294236

/-- `A161680(A080513(n))-A294145(n+1)` -/
def P8389522572933551327.Spec : Prop :=
  ∀ n, P8389522572933551327.a n = A294236 (n + 1)

end A294236

/-! ## A294236.P17617316568983422441

`A000217(∑[A000035(n)])-A294145(n+1)`
-/

namespace A294236.P17617316568983422441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A294145 (n + 1)

end

end A294236.P17617316568983422441

namespace A294236

/-- `A000217(∑[A000035(n)])-A294145(n+1)` -/
def P17617316568983422441.Spec : Prop :=
  ∀ n, P17617316568983422441.a n = A294236 (n + 1)

end A294236

/-!
# A294237: Sum of the larger parts of the partitions of n into two parts with smaller part nonsquarefree.

The programs for A294237, the canonical program `A294237.P9254304307185982450` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294237 has offset 1).

The definition of A294237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294237.P16926021070763601208

`∑[gcd(n, ∑[n])]-A294146(n+1)`
-/

namespace A294237.P16926021070763601208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A294146 (n + 1)

end

end A294237.P16926021070763601208

namespace A294237

/-- `∑[gcd(n, ∑[n])]-A294146(n+1)` -/
def P16926021070763601208.Spec : Prop :=
  ∀ n, P16926021070763601208.a n = A294237 (n + 1)

end A294237

/-! ## A294237.P9397980033117694206

`A001318(n)-A294146(n+1)`
-/

namespace A294237.P9397980033117694206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A294146 (n + 1)

end

end A294237.P9397980033117694206

namespace A294237

/-- `A001318(n)-A294146(n+1)` -/
def P9397980033117694206.Spec : Prop :=
  ∀ n, P9397980033117694206.a n = A294237 (n + 1)

end A294237

/-! ## A294237.P16920501809966867052

`A001318(n)-(A294060(n+1)+A262871(n+1))`
-/

namespace A294237.P16920501809966867052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - (A294060 (n + 1) + A262871 (n + 1))

end

end A294237.P16920501809966867052

namespace A294237

/-- `A001318(n)-(A294060(n+1)+A262871(n+1))` -/
def P16920501809966867052.Spec : Prop :=
  ∀ n, P16920501809966867052.a n = A294237 (n + 1)

end A294237

/-! ## A294237.P9254304307185982450

`Δ[n/2*∑[A294234(n)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294237

/-- `Δ[n/2*∑[A294234(n)]]` -/
def P9254304307185982450.Spec : Prop :=
  ∀ n, P9254304307185982450.a n = (A294237 (n + 1) : ℚ)

end A294237

/-! ## A294237.P16147797261926517304

`∑[A026741(n)]-Δ[n/2*A294060(n+1)]`
-/

namespace A294237.P16147797261926517304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A294060 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (f2 (n + 1) - f2 n)

end

end A294237.P16147797261926517304

namespace A294237

/-- `∑[A026741(n)]-Δ[n/2*A294060(n+1)]` -/
def P16147797261926517304.Spec : Prop :=
  ∀ n, P16147797261926517304.a n = (A294237 (n + 1) : ℚ)

end A294237

/-! ## A294237.P1081735600157966155

`A001318(n)-A004525(Δ[n*A294060(n+1)])`
-/

namespace A294237.P1081735600157966155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A004525 (f1 (n + 1) - f1 n).toNat

end

end A294237.P1081735600157966155

namespace A294237

/-- `A001318(n)-A004525(Δ[n*A294060(n+1)])` -/
def P1081735600157966155.Spec : Prop :=
  ∀ n, P1081735600157966155.a n = A294237 (n + 1)

end A294237

/-! ## A294237.P8139826054524070660

`A001318(n)-A004526(Δ[n*A294060(n+1)])`
-/

namespace A294237.P8139826054524070660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A004526 (f1 (n + 1) - f1 n).toNat

end

end A294237.P8139826054524070660

namespace A294237

/-- `A001318(n)-A004526(Δ[n*A294060(n+1)])` -/
def P8139826054524070660.Spec : Prop :=
  ∀ n, P8139826054524070660.a n = A294237 (n + 1)

end A294237

/-! ## A294237.P11624728089796027858

`A001318(n)-A025480(Δ[n*A294060(n+1)])`
-/

namespace A294237.P11624728089796027858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A025480 (f1 (n + 1) - f1 n).toNat

end

end A294237.P11624728089796027858

namespace A294237

/-- `A001318(n)-A025480(Δ[n*A294060(n+1)])` -/
def P11624728089796027858.Spec : Prop :=
  ∀ n, P11624728089796027858.a n = A294237 (n + 1)

end A294237

/-! ## A294237.P2407223056339887527

`A001318(n)-A026741(Δ[n*A294060(n+1)])`
-/

namespace A294237.P2407223056339887527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A026741 (f1 (n + 1) - f1 n).toNat

end

end A294237.P2407223056339887527

namespace A294237

/-- `A001318(n)-A026741(Δ[n*A294060(n+1)])` -/
def P2407223056339887527.Spec : Prop :=
  ∀ n, P2407223056339887527.a n = A294237 (n + 1)

end A294237

/-!
# A294238: Sum of the parts in the partitions of n into two parts with smaller part nonsquarefree.

The programs for A294238, the canonical program `A294238.P15813330204626195893` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294238 has offset 1).

The definition of A294238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294238.P15813330204626195893

`∑[abs(Δ[n*A294234(n)])]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294238

/-- `∑[abs(Δ[n*A294234(n)])]` -/
def P15813330204626195893.Spec : Prop :=
  ∀ n, P15813330204626195893.a n = A294238 (n + 1)

theorem P15813330204626195893.correct : P15813330204626195893.Spec := by
  intro n
  simp only [A294238, Nat.add_sub_cancel]

end A294238

/-! ## A294238.P15482101837175462804

`(n+1)*A294234(n+1)`
-/

namespace A294238.P15482101837175462804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294234 (n + 1)

end

end A294238.P15482101837175462804

namespace A294238

/-- `(n+1)*A294234(n+1)` -/
def P15482101837175462804.Spec : Prop :=
  ∀ n, P15482101837175462804.a n = A294238 (n + 1)

end A294238

/-! ## A294238.P4022879358756407559

`A294234(n+1)*A326178(n)`
-/

namespace A294238.P4022879358756407559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 (n + 1) * A326178 n

end

end A294238.P4022879358756407559

namespace A294238

/-- `A294234(n+1)*A326178(n)` -/
def P4022879358756407559.Spec : Prop :=
  ∀ n, P4022879358756407559.a n = A294238 (n + 1)

end A294238

/-! ## A294238.P4269502328026052339

`A057627(A065033(n))*A065033(2*n+1)`
-/

namespace A294238.P4269502328026052339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A065033 n).toNat * A065033 (2 * n + 1)

end

end A294238.P4269502328026052339

namespace A294238

/-- `A057627(A065033(n))*A065033(2*n+1)` -/
def P4269502328026052339.Spec : Prop :=
  ∀ n, P4269502328026052339.a n = A294238 (n + 1)

end A294238

/-! ## A294238.P4882337018442407095

`∑[Δ[n*A294234(n)]%A000044(n)]`
-/

namespace A294238.P4882337018442407095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294234 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000044 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294238.P4882337018442407095

namespace A294238

/-- `∑[Δ[n*A294234(n)]%A000044(n)]` -/
def P4882337018442407095.Spec : Prop :=
  ∀ n, P4882337018442407095.a n = A294238 (n + 1)

end A294238

/-! ## A294238.P18103229304702083406

`∑[A000196(Δ[n*A294234(n)]²)]`
-/

namespace A294238.P18103229304702083406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294234 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294238.P18103229304702083406

namespace A294238

/-- `∑[A000196(Δ[n*A294234(n)]²)]` -/
def P18103229304702083406.Spec : Prop :=
  ∀ n, P18103229304702083406.a n = A294238 (n + 1)

end A294238

/-! ## A294238.P3844623751167707140

`A057627(A065033(n))*A131209(n)`
-/

namespace A294238.P3844623751167707140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A065033 n).toNat * A131209 n

end

end A294238.P3844623751167707140

namespace A294238

/-- `A057627(A065033(n))*A131209(n)` -/
def P3844623751167707140.Spec : Prop :=
  ∀ n, P3844623751167707140.a n = A294238 (n + 1)

end A294238

/-!
# A294239: Sum of the parts in the partitions of n into two parts with larger part nonsquarefree.

The programs for A294239, the canonical program `A294239.P5796757410913678531` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294239 has offset 1).

The definition of A294239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294239.P5796757410913678531

`(n+1)*A294235(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A294239

/-- `(n+1)*A294235(n+1)` -/
def P5796757410913678531.Spec : Prop :=
  ∀ n, P5796757410913678531.a n = A294239 (n + 1)

theorem P5796757410913678531.correct : P5796757410913678531.Spec := by
  intro n
  simp only [A294239, Nat.add_sub_cancel]

end A294239

/-! ## A294239.P4263917483505834023

`(n+1)*∑[(A007431(n)+n)%2]`
-/

namespace A294239.P4263917483505834023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007431 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294239.P4263917483505834023

namespace A294239

/-- `(n+1)*∑[(A007431(n)+n)%2]` -/
def P4263917483505834023.Spec : Prop :=
  ∀ n, P4263917483505834023.a n = A294239 (n + 1)

end A294239

/-! ## A294239.P2144735814977245612

`(n+1)*∑[1-char[A105570(n)+n]]`
-/

namespace A294239.P2144735814977245612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294239.P2144735814977245612

namespace A294239

/-- `(n+1)*∑[1-char[A105570(n)+n]]` -/
def P2144735814977245612.Spec : Prop :=
  ∀ n, P2144735814977245612.a n = A294239 (n + 1)

end A294239

/-! ## A294239.P17596337199577631143

`A294235(n+1)*A326178(n)`
-/

namespace A294239.P17596337199577631143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294235 (n + 1) * A326178 n

end

end A294239.P17596337199577631143

namespace A294239

/-- `A294235(n+1)*A326178(n)` -/
def P17596337199577631143.Spec : Prop :=
  ∀ n, P17596337199577631143.a n = A294239 (n + 1)

end A294239

/-! ## A294239.P10743231549371004575

`(n+1)*(A110654(n)-A262868(n+1))`
-/

namespace A294239.P10743231549371004575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A110654 n - A262868 (n + 1))

end

end A294239.P10743231549371004575

namespace A294239

/-- `(n+1)*(A110654(n)-A262868(n+1))` -/
def P10743231549371004575.Spec : Prop :=
  ∀ n, P10743231549371004575.a n = A294239 (n + 1)

end A294239

/-! ## A294239.P7306087831147009599

`(n+1)*(A004526(n+1)-A262868(n+1))`
-/

namespace A294239.P7306087831147009599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004526 (n + 1) - A262868 (n + 1))

end

end A294239.P7306087831147009599

namespace A294239

/-- `(n+1)*(A004526(n+1)-A262868(n+1))` -/
def P7306087831147009599.Spec : Prop :=
  ∀ n, P7306087831147009599.a n = A294239 (n + 1)

end A294239

/-! ## A294239.P2271144803087187425

`(n+1)*∑[A000035(A007431(n)+n)]`
-/

namespace A294239.P2271144803087187425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007431 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294239.P2271144803087187425

namespace A294239

/-- `(n+1)*∑[A000035(A007431(n)+n)]` -/
def P2271144803087187425.Spec : Prop :=
  ∀ n, P2271144803087187425.a n = A294239 (n + 1)

end A294239

/-!
# A294240: The number of possible ways in which 2*n^2 black pawns and 2*n^2 white pawns can be arranged on a 2n X 2n chessboard such that no pawn attacks another.

The programs for A294240, there is no canonical definition to state claims against.
-/

/-! ## A294240.P10981003280358493370

`A376214(A034000(n+1)-A347789(n+1))`
-/

namespace A294240.P10981003280358493370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A034000 (n + 1) - A347789 (n + 1)).toNat

end

end A294240.P10981003280358493370

/-!
# A294242: Number of partitions of 2n into two parts with the larger part nonsquarefree.

The programs for A294242, the canonical program `A294242.P17936846053533156002` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294242 has offset 1).

The definition of A294242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294242.P17936846053533156002

`1-A077641(n+1)+n`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A294242

/-- `1-A077641(n+1)+n` -/
def P17936846053533156002.Spec : Prop :=
  ∀ n, P17936846053533156002.a n = A294242 (n + 1)

theorem P17936846053533156002.correct : P17936846053533156002.Spec := by
  intro n
  simp only [A294242, Nat.add_sub_cancel]

end A294242

/-! ## A294242.P15676229781085320086

`1-(A077641(ϕ²-(ϕ-n))-n)`
-/

namespace A294242.P15676229781085320086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A077641 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - (n : ℤ))

end

end A294242.P15676229781085320086

namespace A294242

/-- `1-(A077641(ϕ²-(ϕ-n))-n)` -/
def P15676229781085320086.Spec : Prop :=
  ∀ n, P15676229781085320086.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P2618705687052021510

`A000027(n+1)%A077641(n+1)`
-/

namespace A294242.P2618705687052021510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A077641 (n + 1))

end

end A294242.P2618705687052021510

namespace A294242

/-- `A000027(n+1)%A077641(n+1)` -/
def P2618705687052021510.Spec : Prop :=
  ∀ n, P2618705687052021510.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P616215735333077804

`A087156(n+1)%A077641(n+1)`
-/

namespace A294242.P616215735333077804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A077641 (n + 1))

end

end A294242.P616215735333077804

namespace A294242

/-- `A087156(n+1)%A077641(n+1)` -/
def P616215735333077804.Spec : Prop :=
  ∀ n, P616215735333077804.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P10956262505697427201

`A178915(n+1)%A077641(n+1)`
-/

namespace A294242.P10956262505697427201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178915 (n + 1)) (A077641 (n + 1))

end

end A294242.P10956262505697427201

namespace A294242

/-- `A178915(n+1)%A077641(n+1)` -/
def P10956262505697427201.Spec : Prop :=
  ∀ n, P10956262505697427201.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P14733677906477774979

`A294235(2*(n+1))`
-/

namespace A294242.P14733677906477774979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294235 (2 * (n + 1))

end

end A294242.P14733677906477774979

namespace A294242

/-- `A294235(2*(n+1))` -/
def P14733677906477774979.Spec : Prop :=
  ∀ n, P14733677906477774979.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P18316295802861516660

`1-A262868(2*(n+1))+n`
-/

namespace A294242.P18316295802861516660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A262868 (2 * (n + 1)) + (n : ℤ)

end

end A294242.P18316295802861516660

namespace A294242

/-- `1-A262868(2*(n+1))+n` -/
def P18316295802861516660.Spec : Prop :=
  ∀ n, P18316295802861516660.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P7713050472439789459

`(n+1)%A262868(2*n+2)`
-/

namespace A294242.P7713050472439789459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A262868 (2 * n + 2))

end

end A294242.P7713050472439789459

namespace A294242

/-- `(n+1)%A262868(2*n+2)` -/
def P7713050472439789459.Spec : Prop :=
  ∀ n, P7713050472439789459.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P2706565026255672641

`n+1-A262868(n+2+n)`
-/

namespace A294242.P2706565026255672641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A262868 (n + 2 + n)

end

end A294242.P2706565026255672641

namespace A294242

/-- `n+1-A262868(n+2+n)` -/
def P2706565026255672641.Spec : Prop :=
  ∀ n, P2706565026255672641.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P2483906361876447850

`A294239(2*(n+1))%Δ[n²]`
-/

namespace A294242.P2483906361876447850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294239 (2 * (n + 1))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A294242.P2483906361876447850

namespace A294242

/-- `A294239(2*(n+1))%Δ[n²]` -/
def P2483906361876447850.Spec : Prop :=
  ∀ n, P2483906361876447850.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P17125078644516198362

`A294232(2*(n+1))+A282380(2*(n+1))`
-/

namespace A294242.P17125078644516198362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294232 (2 * (n + 1)) + A282380 (2 * (n + 1))

end

end A294242.P17125078644516198362

namespace A294242

/-- `A294232(2*(n+1))+A282380(2*(n+1))` -/
def P17125078644516198362.Spec : Prop :=
  ∀ n, P17125078644516198362.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P7629745755726000430

`A294236(2*(n+1))-A294236(2*n+1)`
-/

namespace A294242.P7629745755726000430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294236 (2 * (n + 1)) - A294236 (2 * n + 1)

end

end A294242.P7629745755726000430

namespace A294242

/-- `A294236(2*(n+1))-A294236(2*n+1)` -/
def P7629745755726000430.Spec : Prop :=
  ∀ n, P7629745755726000430.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P17028589433914615286

`A057627(2*n+1)-A057627(A065033(2*n))`
-/

namespace A294242.P17028589433914615286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (2 * n + 1) - A057627 (A065033 (2 * n)).toNat

end

end A294242.P17028589433914615286

namespace A294242

/-- `A057627(2*n+1)-A057627(A065033(2*n))` -/
def P17028589433914615286.Spec : Prop :=
  ∀ n, P17028589433914615286.a n = A294242 (n + 1)

end A294242

/-! ## A294242.P9273184236904768844

`A060401(n+1)%A077641(n+1)`
-/

namespace A294242.P9273184236904768844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A077641 (n + 1))

end

end A294242.P9273184236904768844

namespace A294242

/-- `A060401(n+1)%A077641(n+1)` -/
def P9273184236904768844.Spec : Prop :=
  ∀ n, P9273184236904768844.a n = A294242 (n + 1)

end A294242

/-!
# A294243: Sum of the larger parts of the partitions of 2n into two parts with smaller part nonsquarefree.

The programs for A294243, the canonical program `A294243.P16303316000835451096` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294243 has offset 1).

The definition of A294243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294243.P16303316000835451096

`∑[3*n+1]-A294143(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A294243

/-- `∑[3*n+1]-A294143(n+1)` -/
def P16303316000835451096.Spec : Prop :=
  ∀ n, P16303316000835451096.a n = A294243 (n + 1)

theorem P16303316000835451096.correct : P16303316000835451096.Spec := by
  intro n
  simp only [A294243, Nat.add_sub_cancel]

end A294243

/-! ## A294243.P15022537863404151796

`∑[A016777(n)]%A294143(n+1)`
-/

namespace A294243.P15022537863404151796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A294143 (n + 1))

end

end A294243.P15022537863404151796

namespace A294243

/-- `∑[A016777(n)]%A294143(n+1)` -/
def P15022537863404151796.Spec : Prop :=
  ∀ n, P15022537863404151796.a n = A294243 (n + 1)

end A294243

/-! ## A294243.P228036747766382140

`∑[A057627(n+1)]+n*A057627(n+1)`
-/

namespace A294243.P228036747766382140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A057627 (n + 1)

end

end A294243.P228036747766382140

namespace A294243

/-- `∑[A057627(n+1)]+n*A057627(n+1)` -/
def P228036747766382140.Spec : Prop :=
  ∀ n, P228036747766382140.a n = A294243 (n + 1)

end A294243

/-! ## A294243.P10029818496703465826

`Δ[n*∑[n-A013928(n+1)]]`
-/

namespace A294243.P10029818496703465826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A013928 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294243.P10029818496703465826

namespace A294243

/-- `Δ[n*∑[n-A013928(n+1)]]` -/
def P10029818496703465826.Spec : Prop :=
  ∀ n, P10029818496703465826.a n = A294243 (n + 1)

end A294243

/-! ## A294243.P3298525945326344664

`Δ[n*∑[n+1-A107079(n+1)]]`
-/

namespace A294243.P3298525945326344664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A107079 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294243.P3298525945326344664

namespace A294243

/-- `Δ[n*∑[n+1-A107079(n+1)]]` -/
def P3298525945326344664.Spec : Prop :=
  ∀ n, P3298525945326344664.a n = A294243 (n + 1)

end A294243

/-! ## A294243.P6583171524056622001

`∑[A016777(n)]-Δ[n/2*A294062(n+1)]`
-/

namespace A294243.P6583171524056622001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A294062 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (f2 (n + 1) - f2 n)

end

end A294243.P6583171524056622001

namespace A294243

/-- `∑[A016777(n)]-Δ[n/2*A294062(n+1)]` -/
def P6583171524056622001.Spec : Prop :=
  ∀ n, P6583171524056622001.a n = (A294243 (n + 1) : ℚ)

end A294243

/-! ## A294243.P3857731499801545739

`Δ[A002411(n)]-Δ[n/2*A294062(n+1)]`
-/

namespace A294243.P3857731499801545739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A294062 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (f2 (n + 1) - f2 n)

end

end A294243.P3857731499801545739

namespace A294243

/-- `Δ[A002411(n)]-Δ[n/2*A294062(n+1)]` -/
def P3857731499801545739.Spec : Prop :=
  ∀ n, P3857731499801545739.a n = (A294243 (n + 1) : ℚ)

end A294243

/-! ## A294243.P11280192245763855287

`A294237(2*(n+1))`
-/

namespace A294243.P11280192245763855287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294237 (2 * (n + 1))

end

end A294243.P11280192245763855287

namespace A294243

/-- `A294237(2*(n+1))` -/
def P11280192245763855287.Spec : Prop :=
  ∀ n, P11280192245763855287.a n = A294243 (n + 1)

end A294243

/-! ## A294243.P6548742413136913222

`∑[3*n+1]-A294146(2*(n+1))`
-/

namespace A294243.P6548742413136913222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A294146 (2 * (n + 1))

end

end A294243.P6548742413136913222

namespace A294243

/-- `∑[3*n+1]-A294146(2*(n+1))` -/
def P6548742413136913222.Spec : Prop :=
  ∀ n, P6548742413136913222.a n = A294243 (n + 1)

end A294243

/-! ## A294243.P8729059139571197863

`A000326(n+1)-A000027(A294146(2*(n+1)))`
-/

namespace A294243.P8729059139571197863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) - A000027 (A294146 (2 * (n + 1))).toNat

end

end A294243.P8729059139571197863

namespace A294243

/-- `A000326(n+1)-A000027(A294146(2*(n+1)))` -/
def P8729059139571197863.Spec : Prop :=
  ∀ n, P8729059139571197863.a n = A294243 (n + 1)

end A294243

/-!
# A294244: Sum of the smaller parts of the partitions of 2n into two parts with larger part nonsquarefree.

The programs for A294244, the canonical program `A294244.P14142542812315842556` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294244 has offset 1).

The definition of A294244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294244.P15183181203666554094

`∑[n+1]-A294144(n+1)`
-/

namespace A294244.P15183181203666554094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A294144 (n + 1)

end

end A294244.P15183181203666554094

namespace A294244

/-- `∑[n+1]-A294144(n+1)` -/
def P15183181203666554094.Spec : Prop :=
  ∀ n, P15183181203666554094.a n = A294244 (n + 1)

end A294244

/-! ## A294244.P12435194519160316753

`A000096(n)+1-A294144(n+1)`
-/

namespace A294244.P12435194519160316753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A294144 (n + 1))

end

end A294244.P12435194519160316753

namespace A294244

/-- `A000096(n)+1-A294144(n+1)` -/
def P12435194519160316753.Spec : Prop :=
  ∀ n, P12435194519160316753.a n = A294244 (n + 1)

end A294244

/-! ## A294244.P13585763347267869324

`1-A294144(n+1)+A000217(n)+n`
-/

namespace A294244.P13585763347267869324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294144 (n + 1) + (A000217 n + (n : ℤ))

end

end A294244.P13585763347267869324

namespace A294244

/-- `1-A294144(n+1)+A000217(n)+n` -/
def P13585763347267869324.Spec : Prop :=
  ∀ n, P13585763347267869324.a n = A294244 (n + 1)

end A294244

/-! ## A294244.P3727890478426685223

`A034856(n+1)-(A294144(n+1)+n)`
-/

namespace A294244.P3727890478426685223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - (A294144 (n + 1) + (n : ℤ))

end

end A294244.P3727890478426685223

namespace A294244

/-- `A034856(n+1)-(A294144(n+1)+n)` -/
def P3727890478426685223.Spec : Prop :=
  ∀ n, P3727890478426685223.a n = A294244 (n + 1)

end A294244

/-! ## A294244.P12867691244552005256

`A052905(n)-(A294144(n+1)+2*n)`
-/

namespace A294244.P12867691244552005256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n - (A294144 (n + 1) + (2 * n : ℤ))

end

end A294244.P12867691244552005256

namespace A294244

/-- `A052905(n)-(A294144(n+1)+2*n)` -/
def P12867691244552005256.Spec : Prop :=
  ∀ n, P12867691244552005256.a n = A294244 (n + 1)

end A294244

/-! ## A294244.P14142542812315842556

`A294236(2*(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A294244

/-- `A294236(2*(n+1))` -/
def P14142542812315842556.Spec : Prop :=
  ∀ n, P14142542812315842556.a n = A294244 (n + 1)

theorem P14142542812315842556.correct : P14142542812315842556.Spec := by
  intro n
  simp only [A294244, Nat.add_sub_cancel]

end A294244

/-! ## A294244.P6021507973064140384

`A000217(n+1)-A294145(2*(n+1))`
-/

namespace A294244.P6021507973064140384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A294145 (2 * (n + 1))

end

end A294244.P6021507973064140384

namespace A294244

/-- `A000217(n+1)-A294145(2*(n+1))` -/
def P6021507973064140384.Spec : Prop :=
  ∀ n, P6021507973064140384.a n = A294244 (n + 1)

end A294244

/-! ## A294244.P4246107259569152067

`A008795(2*n)-A294145(2*(n+1))`
-/

namespace A294244.P4246107259569152067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * n) - A294145 (2 * (n + 1))

end

end A294244.P4246107259569152067

namespace A294244

/-- `A008795(2*n)-A294145(2*(n+1))` -/
def P4246107259569152067.Spec : Prop :=
  ∀ n, P4246107259569152067.a n = A294244 (n + 1)

end A294244

/-! ## A294244.P9949022645873611293

`∑[A001057(2*n+1)]-A294145(2*(n+1))`
-/

namespace A294244.P9949022645873611293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294145 (2 * (n + 1))

end

end A294244.P9949022645873611293

namespace A294244

/-- `∑[A001057(2*n+1)]-A294145(2*(n+1))` -/
def P9949022645873611293.Spec : Prop :=
  ∀ n, P9949022645873611293.a n = A294244 (n + 1)

end A294244

/-! ## A294244.P9246360127673500332

`A161680(A080513(2*n+1))-A294145(2*(n+1))`
-/

namespace A294244.P9246360127673500332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A080513 (2 * n + 1)).toNat - A294145 (2 * (n + 1))

end

end A294244.P9246360127673500332

namespace A294244

/-- `A161680(A080513(2*n+1))-A294145(2*(n+1))` -/
def P9246360127673500332.Spec : Prop :=
  ∀ n, P9246360127673500332.a n = A294244 (n + 1)

end A294244

/-! ## A294244.P11603549161661623943

`A000096(n)-A023443(A294144(n+1))`
-/

namespace A294244.P11603549161661623943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A023443 (A294144 (n + 1)).toNat

end

end A294244.P11603549161661623943

namespace A294244

/-- `A000096(n)-A023443(A294144(n+1))` -/
def P11603549161661623943.Spec : Prop :=
  ∀ n, P11603549161661623943.a n = A294244 (n + 1)

end A294244

/-! ## A294244.P17998765387367589288

`record[A061579(n)]+1-A294144(n+1)`
-/

namespace A294244.P17998765387367589288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (1 - A294144 (n + 1))

end

end A294244.P17998765387367589288

namespace A294244

/-- `record[A061579(n)]+1-A294144(n+1)` -/
def P17998765387367589288.Spec : Prop :=
  ∀ n, P17998765387367589288.a n = A294244 (n + 1)

end A294244

/-!
# A294245: Sum of the larger parts of the partitions of 2n into two parts with larger part nonsquarefree.

The programs for A294245, the canonical program `A294245.P1504552052113873009` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294245 has offset 1).

The definition of A294245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294245.P1504552052113873009

`A294246(2*n+1)-∑[lcm(n, -1%∏{e}[n, #])]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294245

/-- `A294246(2*n+1)-∑[lcm(n, -1%∏{e}[n, #])]` -/
def P1504552052113873009.Spec : Prop :=
  ∀ n, P1504552052113873009.a n = A294245 (n + 1)

theorem P1504552052113873009.correct : P1504552052113873009.Spec := by
  intro n
  simp only [A294245, Nat.add_sub_cancel]

end A294245

/-! ## A294245.P15644876793834926993

`∑[A016777(n)]-A262870(2*(n+1))`
-/

namespace A294245.P15644876793834926993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A262870 (2 * (n + 1))

end

end A294245.P15644876793834926993

namespace A294245

/-- `∑[A016777(n)]-A262870(2*(n+1))` -/
def P15644876793834926993.Spec : Prop :=
  ∀ n, P15644876793834926993.a n = A294245 (n + 1)

end A294245

/-! ## A294245.P14499981749051560887

`A294239(2*(n+1))-A294244(n+1)`
-/

namespace A294245.P14499981749051560887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294239 (2 * (n + 1)) - A294244 (n + 1)

end

end A294245.P14499981749051560887

namespace A294245

/-- `A294239(2*(n+1))-A294244(n+1)` -/
def P14499981749051560887.Spec : Prop :=
  ∀ n, P14499981749051560887.a n = A294245 (n + 1)

end A294245

/-! ## A294245.P10919418327705895015

`A294239(2*(n+1))-A294236(2*(n+1))`
-/

namespace A294245.P10919418327705895015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294239 (2 * (n + 1)) - A294236 (2 * (n + 1))

end

end A294245.P10919418327705895015

namespace A294245

/-- `A294239(2*(n+1))-A294236(2*(n+1))` -/
def P10919418327705895015.Spec : Prop :=
  ∀ n, P10919418327705895015.a n = A294245 (n + 1)

end A294245

/-! ## A294245.P8535846004586170846

`A294246(2*n+1)-A294246(A065033(2*n))`
-/

namespace A294245.P8535846004586170846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294246 (2 * n + 1) - A294246 (A065033 (2 * n)).toNat

end

end A294245.P8535846004586170846

namespace A294245

/-- `A294246(2*n+1)-A294246(A065033(2*n))` -/
def P8535846004586170846.Spec : Prop :=
  ∀ n, P8535846004586170846.a n = A294245 (n + 1)

end A294245

/-!
# A294246: Sum of the smaller parts of the partitions of 2n into two parts with smaller part nonsquarefree.

The programs for A294246, the canonical program `A294246.P9003073383543719237` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294246 has offset 1).

The definition of A294246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294246.P9003073383543719237

`∑[(n+1)%(∏{e}[n+1, #]+n)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294246

/-- `∑[(n+1)%(∏{e}[n+1, #]+n)]` -/
def P9003073383543719237.Spec : Prop :=
  ∀ n, (P9003073383543719237.a n : ℤ) = A294246 (n + 1)

theorem P9003073383543719237.correct : P9003073383543719237.Spec := by
  intro n
  simp only [A294246, Nat.add_sub_cancel]

end A294246

/-! ## A294246.P2702074829471392262

`∑[n+1-C(∏{p}[n+1, #], n)]`
-/

namespace A294246.P2702074829471392262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P2702074829471392262

namespace A294246

/-- `∑[n+1-C(∏{p}[n+1, #], n)]` -/
def P2702074829471392262.Spec : Prop :=
  ∀ n, P2702074829471392262.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P12546100656409975006

`∑[xor(n+1, C(∏{p}[n+1, #], n))]`
-/

namespace A294246.P12546100656409975006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P12546100656409975006

namespace A294246

/-- `∑[xor(n+1, C(∏{p}[n+1, #], n))]` -/
def P12546100656409975006.Spec : Prop :=
  ∀ n, (P12546100656409975006.a n : ℤ) = A294246 (n + 1)

end A294246

/-! ## A294246.P4350173727223145991

`∑[(n+1)*floor(atan(∏{e}[n+1, #]))]`
-/

namespace A294246.P4350173727223145991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊Real.arctan ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P4350173727223145991

namespace A294246

/-- `∑[(n+1)*floor(atan(∏{e}[n+1, #]))]` -/
def P4350173727223145991.Spec : Prop :=
  ∀ n, P4350173727223145991.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P3668259025475066709

`∑[lcm(n+1, ∏{p}[n+1, #]%(n+1))]`
-/

namespace A294246.P3668259025475066709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((∏ p ∈ Nat.primeFactors (f2 n), p) % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P3668259025475066709

namespace A294246

/-- `∑[lcm(n+1, ∏{p}[n+1, #]%(n+1))]` -/
def P3668259025475066709.Spec : Prop :=
  ∀ n, (P3668259025475066709.a n : ℤ) = A294246 (n + 1)

end A294246

/-! ## A294246.P15962087601706166821

`∑[C(n+1, n)%((n+1)²/∏{p}[n+1, #])]`
-/

namespace A294246.P15962087601706166821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 1) n : ℤ) (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P15962087601706166821

namespace A294246

/-- `∑[C(n+1, n)%((n+1)²/∏{p}[n+1, #])]` -/
def P15962087601706166821.Spec : Prop :=
  ∀ n, P15962087601706166821.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P13870582208130400649

`∑[(2*n+1)%((n+1)²/∏{p}[n+1, #])-n]`
-/

namespace A294246.P13870582208130400649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P13870582208130400649

namespace A294246

/-- `∑[(2*n+1)%((n+1)²/∏{p}[n+1, #])-n]` -/
def P13870582208130400649.Spec : Prop :=
  ∀ n, P13870582208130400649.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P8739053740460424494

`∑[A105570(n+1)]`
-/

namespace A294246.P8739053740460424494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P8739053740460424494

namespace A294246

/-- `∑[A105570(n+1)]` -/
def P8739053740460424494.Spec : Prop :=
  ∀ n, P8739053740460424494.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P5884548147727041345

`∑[n+1]-A066779(n+1)`
-/

namespace A294246.P5884548147727041345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A066779 (n + 1)

end

end A294246.P5884548147727041345

namespace A294246

/-- `∑[n+1]-A066779(n+1)` -/
def P5884548147727041345.Spec : Prop :=
  ∀ n, P5884548147727041345.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P4013527828743240007

`∑[(n+1)*A107078(n+1)]`
-/

namespace A294246.P4013527828743240007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A107078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P4013527828743240007

namespace A294246

/-- `∑[(n+1)*A107078(n+1)]` -/
def P4013527828743240007.Spec : Prop :=
  ∀ n, P4013527828743240007.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P8768203222431579640

`A253145(n)%A066779(n+1)`
-/

namespace A294246.P8768203222431579640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A066779 (n + 1))

end

end A294246.P8768203222431579640

namespace A294246

/-- `A253145(n)%A066779(n+1)` -/
def P8768203222431579640.Spec : Prop :=
  ∀ n, P8768203222431579640.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P11097293603544872290

`A066779(n+1)-A076543(n+1)`
-/

namespace A294246.P11097293603544872290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (n + 1) - A076543 (n + 1)

end

end A294246.P11097293603544872290

namespace A294246

/-- `A066779(n+1)-A076543(n+1)` -/
def P11097293603544872290.Spec : Prop :=
  ∀ n, P11097293603544872290.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P9023828032336386228

`∑[A110654(2*n+1)]-A262871(2*(n+1))`
-/

namespace A294246.P9023828032336386228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A262871 (2 * (n + 1))

end

end A294246.P9023828032336386228

namespace A294246

/-- `∑[A110654(2*n+1)]-A262871(2*(n+1))` -/
def P9023828032336386228.Spec : Prop :=
  ∀ n, P9023828032336386228.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P2173106997581347216

`∑[(n+1)*A380439((n+1)²)]`
-/

namespace A294246.P2173106997581347216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A380439 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P2173106997581347216

namespace A294246

/-- `∑[(n+1)*A380439((n+1)²)]` -/
def P2173106997581347216.Spec : Prop :=
  ∀ n, P2173106997581347216.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P7407396585991552118

`∑[n+1-A046692((n+1)²)]`
-/

namespace A294246.P7407396585991552118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A046692 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P7407396585991552118

namespace A294246

/-- `∑[n+1-A046692((n+1)²)]` -/
def P7407396585991552118.Spec : Prop :=
  ∀ n, P7407396585991552118.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P1512109029454797505

`∑[n+1-A383717((n+1)²)]`
-/

namespace A294246.P1512109029454797505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A383717 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P1512109029454797505

namespace A294246

/-- `∑[n+1-A383717((n+1)²)]` -/
def P1512109029454797505.Spec : Prop :=
  ∀ n, P1512109029454797505.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P10489094345448699448

`∑[n+1-A397136((n+1)²)]`
-/

namespace A294246.P10489094345448699448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A397136 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P10489094345448699448

namespace A294246

/-- `∑[n+1-A397136((n+1)²)]` -/
def P10489094345448699448.Spec : Prop :=
  ∀ n, P10489094345448699448.a n = A294246 (n + 1)

end A294246

/-! ## A294246.P2820211835576994389

`∑[n+1-A397238((n+1)²)]`
-/

namespace A294246.P2820211835576994389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A397238 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294246.P2820211835576994389

namespace A294246

/-- `∑[n+1-A397238((n+1)²)]` -/
def P2820211835576994389.Spec : Prop :=
  ∀ n, P2820211835576994389.a n = A294246 (n + 1)

end A294246

/-!
# A294247: Sum of the parts in the partitions of n into exactly two distinct squarefree parts.

The programs for A294247, there is no canonical definition to state claims against.
-/

/-! ## A294247.P18394807235673929522

`(n+1)*floor(A098235(n+1)/2)`
-/

namespace A294247.P18394807235673929522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A098235 (n + 1) : ℚ) / 2⌋

end

end A294247.P18394807235673929522

/-! ## A294247.P16497180618950779068

`(n+1)*A004526(A098235(n+1))`
-/

namespace A294247.P16497180618950779068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A098235 (n + 1)).toNat

end

end A294247.P16497180618950779068

/-! ## A294247.P15002852319397864267

`(n+1)*A123108(or(1, A098235(n+1)))`
-/

namespace A294247.P15002852319397864267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123108 (Int.lor 1 (A098235 (n + 1))).toNat

end

end A294247.P15002852319397864267

/-! ## A294247.P7631724604602195377

`(n+1)*(A110654(A098235(n+1)+1)-1)`
-/

namespace A294247.P7631724604602195377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A110654 (A098235 (n + 1) + 1).toNat - 1)

end

end A294247.P7631724604602195377

/-! ## A294247.P721417192287430258

`(n+1)*A098235(n+1)-A262351(n+1)`
-/

namespace A294247.P721417192287430258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A098235 (n + 1) - A262351 (n + 1)

end

end A294247.P721417192287430258

/-! ## A294247.P4759822047519714911

`(n+1)*A002265(2*A098235(n+1))`
-/

namespace A294247.P4759822047519714911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002265 (2 * A098235 (n + 1)).toNat

end

end A294247.P4759822047519714911

/-! ## A294247.P13773416793404977050

`(n+1)*A008615(3*A098235(n+1))`
-/

namespace A294247.P13773416793404977050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008615 (3 * A098235 (n + 1)).toNat

end

end A294247.P13773416793404977050

/-! ## A294247.P8720281640263691150

`(n+1)*A098236(n+1)`
-/

namespace A294247.P8720281640263691150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A098236 (n + 1)

end

end A294247.P8720281640263691150

/-! ## A294247.P5720895936246556865

`(n+1)*val(A000079(or(1, A098235(n+1))), 4)`
-/

namespace A294247.P5720895936246556865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.valuation (A000079 (Int.lor 1 (A098235 (n + 1))).toNat).toNat 4

end

end A294247.P5720895936246556865

/-! ## A294247.P14432420050980564331

`(n+1)*A319571(A098235(n+1)²)`
-/

namespace A294247.P14432420050980564331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A319571 (A098235 (n + 1) ^ 2).toNat

end

end A294247.P14432420050980564331

/-!
# A294248: Number of partitions of 2n into two distinct squarefree parts.

The programs for A294248, there is no canonical definition to state claims against.
-/

/-! ## A294248.P16459922847464566651

`A280226(n+1)-∏{e}[n+1, -floor(1/#)]²`
-/

namespace A294248.P16459922847464566651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280226 (n + 1) - (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)) ^ 2

end

end A294248.P16459922847464566651

/-! ## A294248.P5977535048364497725

`A280226(n+1)-A008966(n+1)`
-/

namespace A294248.P5977535048364497725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280226 (n + 1) - A008966 (n + 1)

end

end A294248.P5977535048364497725

/-! ## A294248.P7195926646680356456

`A280226(n+1)-A008683(n+1)²`
-/

namespace A294248.P7195926646680356456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280226 (n + 1) - A008683 (n + 1) ^ 2

end

end A294248.P7195926646680356456

/-! ## A294248.P10997404141403360050

`floor(A098235(2*(n+1))/2)`
-/

namespace A294248.P10997404141403360050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098235 (2 * (n + 1)) : ℚ) / 2⌋

end

end A294248.P10997404141403360050

/-! ## A294248.P11023250493396887999

`A262351(2*(n+1))/(2*(n+1))-round(∏{e}[n+1, -#^-2])²`
-/

namespace A294248.P11023250493396887999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262351 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ) - (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (-((Nat.factorization (f1 n) p : ℚ) ^ (-2 : ℤ)))) ^ 2 : ℚ)

end

end A294248.P11023250493396887999

/-! ## A294248.P8234657845688229552

`A004526(A098235(2*(n+1)))`
-/

namespace A294248.P8234657845688229552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098235 (2 * (n + 1))).toNat

end

end A294248.P8234657845688229552

/-! ## A294248.P9073397064053668680

`A110654(A098235(2*(n+1))-1)`
-/

namespace A294248.P9073397064053668680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A098235 (2 * (n + 1)) - 1).toNat

end

end A294248.P9073397064053668680

/-! ## A294248.P6986626127266943537

`A140106(A098235(2*(n+1))+2)`
-/

namespace A294248.P6986626127266943537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A098235 (2 * (n + 1)) + 2).toNat

end

end A294248.P6986626127266943537

/-! ## A294248.P6686083545303669184

`A004524(or(1, A098235(2*(n+1))))`
-/

namespace A294248.P6686083545303669184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A098235 (2 * (n + 1)))).toNat

end

end A294248.P6686083545303669184

/-! ## A294248.P7583197632184687370

`A028242(or(1, A098235(2*(n+1))))`
-/

namespace A294248.P7583197632184687370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A098235 (2 * (n + 1)))).toNat

end

end A294248.P7583197632184687370

/-! ## A294248.P12416172481050114094

`A123108(or(1, A098235(2*(n+1))))`
-/

namespace A294248.P12416172481050114094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.lor 1 (A098235 (2 * (n + 1)))).toNat

end

end A294248.P12416172481050114094

/-! ## A294248.P16325452716475066811

`A071068(2*(n+1))-A008966(n+1)`
-/

namespace A294248.P16325452716475066811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (2 * (n + 1)) - A008966 (n + 1)

end

end A294248.P16325452716475066811

/-! ## A294248.P11404340353443585179

`A098235(2*(n+1))-A071068(2*(n+1))`
-/

namespace A294248.P11404340353443585179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098235 (2 * (n + 1)) - A071068 (2 * (n + 1))

end

end A294248.P11404340353443585179

/-! ## A294248.P15526378949828381447

`A013928(2*(n+1))-A351833(2*(n+1))`
-/

namespace A294248.P15526378949828381447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * (n + 1)) - A351833 (2 * (n + 1))

end

end A294248.P15526378949828381447

/-! ## A294248.P3969710956789615924

`A262869(2*n+1)-A294232(2*(n+1))`
-/

namespace A294248.P3969710956789615924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * n + 1) - A294232 (2 * (n + 1))

end

end A294248.P3969710956789615924

/-! ## A294248.P13487536371011415825

`A071068(2*(n+1))-A151934(A285736(2*(n+1)))`
-/

namespace A294248.P13487536371011415825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (2 * (n + 1)) - A151934 (A285736 (2 * (n + 1))).toNat

end

end A294248.P13487536371011415825

/-! ## A294248.P8844373899331964216

`A351834(2*(n+1))-A294101(2*(n+1))`
-/

namespace A294248.P8844373899331964216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351834 (2 * (n + 1)) - A294101 (2 * (n + 1))

end

end A294248.P8844373899331964216

/-! ## A294248.P5472024985104679793

`A002265(2*A098235(2*(n+1)))`
-/

namespace A294248.P5472024985104679793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A098235 (2 * (n + 1))).toNat

end

end A294248.P5472024985104679793

/-! ## A294248.P1952319932361163932

`A098236(2*(n+1))`
-/

namespace A294248.P1952319932361163932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (2 * (n + 1))

end

end A294248.P1952319932361163932

/-! ## A294248.P2275618209335463661

`xor(1, xor(1, A098236(Δ[n²]+1)))`
-/

namespace A294248.P2275618209335463661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A098236 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat))

end

end A294248.P2275618209335463661

/-!
# A294249: Minimum number of matchsticks required to make squares of size 1 X 1, 2 X 2, ..., n X n simultaneously.

The programs for A294249, there is no canonical definition to state claims against.
-/

/-! ## A294249.P12950405604026916315

`A202304(A005915(n))-A037915(n+1)`
-/

namespace A294249.P12950405604026916315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A005915 n).toNat - A037915 (n + 1)

end

end A294249.P12950405604026916315

/-! ## A294249.P6333559213693981490

`A202304(A005915(n))-A195172(n+1)`
-/

namespace A294249.P6333559213693981490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A005915 n).toNat - A195172 (n + 1)

end

end A294249.P6333559213693981490

/-! ## A294249.P1862053065352711010

`A202304(A005915(n))-A000196(A052905(n))`
-/

namespace A294249.P1862053065352711010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A005915 n).toNat - A000196 (A052905 n).toNat

end

end A294249.P1862053065352711010

/-! ## A294249.P6744852398218379482

`A259361(A016755(n)-A268798(n+1))`
-/

namespace A294249.P6744852398218379482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A016755 n - A268798 (n + 1)).toNat

end

end A294249.P6744852398218379482

/-! ## A294249.P5693695269651066535

`A048766(A008383(n))+A046691(n)`
-/

namespace A294249.P5693695269651066535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A008383 n).toNat + A046691 n

end

end A294249.P5693695269651066535

/-!
# A294250: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(Product_{j=1..n} (1+x^j) - 1).

The programs for A294250, there is no canonical definition to state claims against.
-/

/-! ## A294250.P14017439193449839243

`A221490(4^A143841(n))`
-/

namespace A294250.P14017439193449839243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A143841 n : ℤ))).toNat

end

end A294250.P14017439193449839243

/-! ## A294250.P15827839418594723256

`A051855(A293960(n)+1)`
-/

namespace A294250.P15827839418594723256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051855 (A293960 n + 1).toNat

end

end A294250.P15827839418594723256

/-! ## A294250.P17387424845329513770

`A046933(13^A182172(n))`
-/

namespace A294250.P17387424845329513770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A182172 n : ℤ))).toNat

end

end A294250.P17387424845329513770

/-! ## A294250.P15033818034386048482

`A073200(A214015(n)*A267479(n))`
-/

namespace A294250.P15033818034386048482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 (A214015 n * A267479 n).toNat

end

end A294250.P15033818034386048482

/-! ## A294250.P8341660565185508398

`A390031(A289481(n))`
-/

namespace A294250.P8341660565185508398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390031 (A289481 n).toNat

end

end A294250.P8341660565185508398

/-!
# A294251: E.g.f.: exp((1+x)*(1+x^2)*(1+x^3) - 1).

The programs for A294251, there is no canonical definition to state claims against.
-/

/-! ## A294251.P10302901898139293767

`A294250(∑[n+3]+n+3)`
-/

namespace A294251.P10302901898139293767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A294251.P10302901898139293767

/-! ## A294251.P13465864639466629103

`or(1, A294250(A046691(n+2)))`
-/

namespace A294251.P13465864639466629103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294250 (A046691 (n + 2)).toNat)

end

end A294251.P13465864639466629103

/-! ## A294251.P13169272879173319177

`A294250(A046691(n+2))+char[A157620(n+1)+n]`
-/

namespace A294251.P13169272879173319177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157620 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294251.P13169272879173319177

/-! ## A294251.P10313011708843228060

`A294250(A046691(n+2))-A328712(A328712(n+1)+1)`
-/

namespace A294251.P10313011708843228060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A046691 (n + 2)).toNat - A328712 (A328712 (n + 1) + 1).toNat

end

end A294251.P10313011708843228060

/-! ## A294251.P6881564495789753468

`A294250(A046691(n+2))%A056189(A000040(n+1)+1)`
-/

namespace A294251.P6881564495789753468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294250 (A046691 (n + 2)).toNat) (A056189 (A000040 (n + 1) + 1).toNat)

end

end A294251.P6881564495789753468

/-!
# A294252: E.g.f.: exp((1+x)*(1+x^2)*(1+x^3)*(1+x^4) - 1).

The programs for A294252, there is no canonical definition to state claims against.
-/

/-! ## A294252.P3250499994092464981

`A294250(A052905(n+2))`
-/

namespace A294252.P3250499994092464981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A052905 (n + 2)).toNat

end

end A294252.P3250499994092464981

/-! ## A294252.P4116435230502431273

`A294250(A027379(n+3)-2)`
-/

namespace A294252.P4116435230502431273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A027379 (n + 3) - 2).toNat

end

end A294252.P4116435230502431273

/-! ## A294252.P9183973496571857326

`A294250(A000124(n+5)-6)`
-/

namespace A294252.P9183973496571857326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A000124 (n + 5) - 6).toNat

end

end A294252.P9183973496571857326

/-! ## A294252.P17451438392064789340

`A294250(A056000(n+2)-(n+1))`
-/

namespace A294252.P17451438392064789340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A056000 (n + 2) - (n + 1 : ℤ)).toNat

end

end A294252.P17451438392064789340

/-! ## A294252.P16244474880759319370

`A294250(A046691(n+2)+n+4)`
-/

namespace A294252.P16244474880759319370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A046691 (n + 2) + (n + 4 : ℤ)).toNat

end

end A294252.P16244474880759319370

/-! ## A294252.P18053102406237151870

`A294250(A167499(n)+4*(n+1))`
-/

namespace A294252.P18053102406237151870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A167499 n + (4 * (n + 1) : ℤ)).toNat

end

end A294252.P18053102406237151870

/-!
# A294253: E.g.f.: exp((1+x)*(1+x^2)*(1+x^3)*(1+x^4)*(1+x^5) - 1).

The programs for A294253, there is no canonical definition to state claims against.
-/

/-! ## A294253.P6014510623994314892

`A294250(A055999(n+3))`
-/

namespace A294253.P6014510623994314892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A055999 (n + 3)).toNat

end

end A294253.P6014510623994314892

/-! ## A294253.P9506141990943160959

`A294250(A134227(n+4))`
-/

namespace A294253.P9506141990943160959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A134227 (n + 4)).toNat

end

end A294253.P9506141990943160959

/-! ## A294253.P7713954180236241702

`A294250(A056119(n)+15)`
-/

namespace A294253.P7713954180236241702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A056119 n + 15).toNat

end

end A294253.P7713954180236241702

/-! ## A294253.P17965500135820735030

`A294250(Δ[A023551(n+1)])`
-/

namespace A294253.P17965500135820735030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (f1 (n + 1) - f1 n).toNat

end

end A294253.P17965500135820735030

/-! ## A294253.P7520037832018090069

`A294250(A052905(n+3)-1)`
-/

namespace A294253.P7520037832018090069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A052905 (n + 3) - 1).toNat

end

end A294253.P7520037832018090069

/-! ## A294253.P9656007235590624268

`A294250(A056000(n+2)+4)`
-/

namespace A294253.P9656007235590624268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A056000 (n + 2) + 4).toNat

end

end A294253.P9656007235590624268

/-! ## A294253.P5819166606467390111

`A294250(A000217(n+6)-6)`
-/

namespace A294253.P5819166606467390111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (A000217 (n + 6) - 6).toNat

end

end A294253.P5819166606467390111

/-!
# A294254: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(Product_{j=1..n} (1-x^j) - 1).

The programs for A294254, there is no canonical definition to state claims against.
-/

/-! ## A294254.P3199888066688242990

`or(A290217(n), A343678(A099594(n)))`
-/

namespace A294254.P3199888066688242990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290217 n) (A343678 (A099594 n).toNat)

end

end A294254.P3199888066688242990

/-! ## A294254.P9158873891144097677

`or(A293285(n), A343678(A099594(n)))`
-/

namespace A294254.P9158873891144097677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A293285 n) (A343678 (A099594 n).toNat)

end

end A294254.P9158873891144097677

/-! ## A294254.P16670927223014388309

`A293530(n)%A200737(A002445(n))`
-/

namespace A294254.P16670927223014388309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293530 n) (A200737 (A002445 n).toNat)

end

end A294254.P16670927223014388309

/-! ## A294254.P6784989441436299337

`A062157(A278881(n)²)`
-/

namespace A294254.P6784989441436299337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A278881 n ^ 2).toNat

end

end A294254.P6784989441436299337

/-! ## A294254.P13263543919635484106

`A062157(A342202(n+1))`
-/

namespace A294254.P13263543919635484106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A342202 (n + 1)).toNat

end

end A294254.P13263543919635484106

/-!
# A294255: E.g.f.: exp((1-x)*(1-x^2) - 1).

The programs for A294255, there is no canonical definition to state claims against.
-/

/-! ## A294255.P8345899663479526268

`A294254(∑[n+3])`
-/

namespace A294255.P8345899663479526268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294255.P8345899663479526268

/-! ## A294255.P7589521268658635364

`or(1, A294254(A027379(n+1)))`
-/

namespace A294255.P7589521268658635364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294254 (A027379 (n + 1)).toNat)

end

end A294255.P7589521268658635364

/-! ## A294255.P14853446595087881618

`A027926(n²)*A294254(A027379(n+1))`
-/

namespace A294255.P14853446595087881618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (n ^ 2) * A294254 (A027379 (n + 1)).toNat

end

end A294255.P14853446595087881618

/-! ## A294255.P14368783824046253226

`char[A002262(n)]*A294254(A027379(n+1))`
-/

namespace A294255.P14368783824046253226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A294254 (A027379 (n + 1)).toNat

end

end A294255.P14368783824046253226

/-! ## A294255.P14670288909378726931

`A294254(A027379(n+1))+A000007(n+1)`
-/

namespace A294255.P14670288909378726931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A294255.P14670288909378726931

/-! ## A294255.P2811415717903511936

`A153881(n+1)²*A294254(A027379(n+1))`
-/

namespace A294255.P2811415717903511936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) ^ 2 * A294254 (A027379 (n + 1)).toNat

end

end A294255.P2811415717903511936

/-! ## A294255.P5465316512241597080

`A001222(A002385(n+1))*A294254(A027379(n+1))`
-/

namespace A294255.P5465316512241597080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002385 (n + 1)).toNat * A294254 (A027379 (n + 1)).toNat

end

end A294255.P5465316512241597080

/-! ## A294255.P11580987145193162286

`A001221(A002476(n+1))*A294254(A027379(n+1))`
-/

namespace A294255.P11580987145193162286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002476 (n + 1)).toNat * A294254 (A027379 (n + 1)).toNat

end

end A294255.P11580987145193162286

/-!
# A294256: E.g.f.: exp((1-x)*(1-x^2)*(1-x^3) - 1).

The programs for A294256, there is no canonical definition to state claims against.
-/

/-! ## A294256.P7598050713525713070

`A294254(∑[n+3]+n+3)`
-/

namespace A294256.P7598050713525713070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A294256.P7598050713525713070

/-! ## A294256.P11799921654581007235

`or(1, A294254(A046691(n+2)))`
-/

namespace A294256.P11799921654581007235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294254 (A046691 (n + 2)).toNat)

end

end A294256.P11799921654581007235

/-! ## A294256.P6229077230410549300

`A294254(A000217(n+4)-4)^ceil(acot(n))`
-/

namespace A294256.P6229077230410549300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294254 (A000217 (n + 4) - 4).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A294256.P6229077230410549300

/-! ## A294256.P4682203133941286443

`A294254(A046691(n+2))+A000007(n+1)`
-/

namespace A294256.P4682203133941286443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A294256.P4682203133941286443

/-! ## A294256.P11511401530118733940

`char[A252756(n+1)]*A294254(A046691(n+2))`
-/

namespace A294256.P11511401530118733940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A294254 (A046691 (n + 2)).toNat

end

end A294256.P11511401530118733940

/-! ## A294256.P1908116367690362353

`A000108(A025461(n))*A294254(A046691(n+2))`
-/

namespace A294256.P1908116367690362353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025461 n).toNat * A294254 (A046691 (n + 2)).toNat

end

end A294256.P1908116367690362353

/-! ## A294256.P2934150642008227720

`A007318(A000217(n+1))*A294254(A046691(n+2))`
-/

namespace A294256.P2934150642008227720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 1)).toNat * A294254 (A046691 (n + 2)).toNat

end

end A294256.P2934150642008227720

/-! ## A294256.P5521774552613336282

`A001221(A252734(n+2))*A294254(A046691(n+2))`
-/

namespace A294256.P5521774552613336282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A252734 (n + 2)).toNat * A294254 (A046691 (n + 2)).toNat

end

end A294256.P5521774552613336282

/-! ## A294256.P13680708435171821251

`A001221(A001248(n+1))*A294254(A046691(n+2))`
-/

namespace A294256.P13680708435171821251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A294254 (A046691 (n + 2)).toNat

end

end A294256.P13680708435171821251

/-!
# A294257: E.g.f.: exp((1-x)*(1-x^2)*(1-x^3)*(1-x^4) - 1).

The programs for A294257, there is no canonical definition to state claims against.
-/

/-! ## A294257.P3635600043761764004

`A294254(∑[n+5]+5)`
-/

namespace A294257.P3635600043761764004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A294257.P3635600043761764004

/-! ## A294257.P4531900523844699167

`xor(1, A294254(A052905(n+2)))+1`
-/

namespace A294257.P4531900523844699167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A294254 (A052905 (n + 2)).toNat) + 1

end

end A294257.P4531900523844699167

/-! ## A294257.P5873636167092180119

`A294254(A052905(n+2))+A000007(n+1)`
-/

namespace A294257.P5873636167092180119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A052905 (n + 2)).toNat + A000007 (n + 1)

end

end A294257.P5873636167092180119

/-! ## A294257.P7637869061374826820

`A294254(A052905(n+2))+char[A022151(n+1)]`
-/

namespace A294257.P7637869061374826820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022151 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A052905 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294257.P7637869061374826820

/-! ## A294257.P5143773898970087644

`A294254(A052905(n+2))+char[A022152(n+3)]`
-/

namespace A294257.P5143773898970087644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022152 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A052905 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294257.P5143773898970087644

/-! ## A294257.P1701633105732143092

`A294254(A052905(n+2))+A007531(val(n+1, 10))`
-/

namespace A294257.P1701633105732143092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A052905 (n + 2)).toNat + A007531 (SequenceMachineLib.valuation (n + 1) 10)

end

end A294257.P1701633105732143092

/-! ## A294257.P17665427254600725021

`A294254(A052905(n+2))+A117970(val(n+1, 10))`
-/

namespace A294257.P17665427254600725021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A052905 (n + 2)).toNat + A117970 (SequenceMachineLib.valuation (n + 1) 10)

end

end A294257.P17665427254600725021

/-! ## A294257.P5253599200141443038

`A294254(A052905(n+2))/A007464(val(n+1, 10))`
-/

namespace A294257.P5253599200141443038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294254 (A052905 (n + 2)).toNat : ℚ) / (A007464 (SequenceMachineLib.valuation (n + 1) 10) : ℚ)

end

end A294257.P5253599200141443038

/-!
# A294258: Expansion of e.g.f.: exp((1-x)*(1-x^2)*(1-x^3)*(1-x^4)*(1-x^5) - 1).

The programs for A294258, there is no canonical definition to state claims against.
-/

/-! ## A294258.P13489510297938200730

`A294254(A055999(n+3))`
-/

namespace A294258.P13489510297938200730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A055999 (n + 3)).toNat

end

end A294258.P13489510297938200730

/-! ## A294258.P277026319719788508

`A294254(eq[5, A025581(n)])`
-/

namespace A294258.P277026319719788508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294258.P277026319719788508

/-! ## A294258.P11420663313355143887

`A294254(A000217(n+6)-6)`
-/

namespace A294258.P11420663313355143887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A000217 (n + 6) - 6).toNat

end

end A294258.P11420663313355143887

/-! ## A294258.P496440339478678974

`A294254(eq[6, A004736(n+1)])`
-/

namespace A294258.P496440339478678974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294258.P496440339478678974

/-! ## A294258.P11683496641799359463

`A294254(A133263(n+4)+2*n+3)`
-/

namespace A294258.P11683496641799359463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A133263 (n + 4) + (2 * n + 3 : ℤ)).toNat

end

end A294258.P11683496641799359463

/-!
# A294259: a(n) = n*(n^3 + 2*n^2 - 5*n + 10)/8.

The programs for A294259, the canonical program `A294259.P11016457203520681022` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294259 has offset 0).

The definition of A294259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^3+2*n²-5*n+10)/8` (program `A294259.P7524661317209681353`, by `A294259.P7524661317209681353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294259.P16617811724949507163

`n*(n*(n*(n+2)-5)+10)/8`
-/

namespace A294259.P16617811724949507163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) * ((n * (n + 2) : ℤ) - 5) + 10 : ℚ) / 8)

end

end A294259.P16617811724949507163

namespace A294259

/-- `n*(n*(n*(n+2)-5)+10)/8` -/
def P16617811724949507163.Spec : Prop :=
  ∀ n, P16617811724949507163.a n = (A294259 n : ℚ)

theorem P16617811724949507163.correct : P16617811724949507163.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A294259, Nat.add_sub_cancel, A294259.P16617811724949507163.a, A294259.P11016457203520681022.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A294259, Nat.add_sub_cancel, A294259.P16617811724949507163.a, A294259.P11016457203520681022.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A294259

/-! ## A294259.P7524661317209681353

`n*(n^3+2*n²-5*n+10)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294259.P7524661317209681353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n ^ 3 + 2 * n ^ 2 : ℤ) - (5 * n : ℤ) + 10 : ℚ) / 8)

end

end A294259.P7524661317209681353

namespace A294259

/-- `n*(n^3+2*n²-5*n+10)/8` -/
def P7524661317209681353.Spec : Prop :=
  ∀ n, P7524661317209681353.a n = (A294259 n : ℚ)

theorem P7524661317209681353.correct : P7524661317209681353.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A294259, Nat.add_sub_cancel, A294259.P7524661317209681353.a, A294259.P11016457203520681022.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A294259, Nat.add_sub_cancel, A294259.P7524661317209681353.a, A294259.P11016457203520681022.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A294259

/-! ## A294259.P11016457203520681022

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=15, a(4)=43`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294259

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11016457203520681022.Spec : Prop :=
  ∀ n, P11016457203520681022.a n = A294259 n

theorem P11016457203520681022.correct : P11016457203520681022.Spec := by
  intro n
  simp only [A294259]

end A294259

/-! ## A294259.P14189361934217020486

`C(∑[n], 2)-C(n, 2)+n`
-/

namespace A294259.P14189361934217020486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (Nat.choose n 2 : ℤ) + (n : ℤ)

end

end A294259.P14189361934217020486

namespace A294259

/-- `C(∑[n], 2)-C(n, 2)+n` -/
def P14189361934217020486.Spec : Prop :=
  ∀ n, P14189361934217020486.a n = A294259 n

end A294259

/-! ## A294259.P17887367505935323780

`C(∑[n], 2)-2-∑[n-2]`
-/

namespace A294259.P17887367505935323780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - 2 - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A294259.P17887367505935323780

namespace A294259

/-- `C(∑[n], 2)-2-∑[n-2]` -/
def P17887367505935323780.Spec : Prop :=
  ∀ n, P17887367505935323780.a n = A294259 n

end A294259

/-! ## A294259.P9392743355782803304

`A086602(n)+n`
-/

namespace A294259.P9392743355782803304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 n + (n : ℤ)

end

end A294259.P9392743355782803304

namespace A294259

/-- `A086602(n)+n` -/
def P9392743355782803304.Spec : Prop :=
  ∀ n, P9392743355782803304.a n = A294259 n

end A294259

/-! ## A294259.P16058401294866157925

`A002817(n)+n-n²`
-/

namespace A294259.P16058401294866157925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A294259.P16058401294866157925

namespace A294259

/-- `A002817(n)+n-n²` -/
def P16058401294866157925.Spec : Prop :=
  ∀ n, P16058401294866157925.a n = A294259 n

end A294259

/-! ## A294259.P9894770618254286866

`∑[∑[A143208(n+1)]]-2`
-/

namespace A294259.P9894770618254286866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143208 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A294259.P9894770618254286866

namespace A294259

/-- `∑[∑[A143208(n+1)]]-2` -/
def P9894770618254286866.Spec : Prop :=
  ∀ n, P9894770618254286866.a n = A294259 n

end A294259

/-! ## A294259.P13678502196354557422

`A004255(n+1)-(n²+1)`
-/

namespace A294259.P13678502196354557422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004255 (n + 1) - (n ^ 2 + 1 : ℤ)

end

end A294259.P13678502196354557422

namespace A294259

/-- `A004255(n+1)-(n²+1)` -/
def P13678502196354557422.Spec : Prop :=
  ∀ n, P13678502196354557422.a n = A294259 n

end A294259

/-! ## A294259.P16690525584677378915

`A176145(n+3)+n-∑[n]`
-/

namespace A294259.P16690525584677378915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176145 (n + 3) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A294259.P16690525584677378915

namespace A294259

/-- `A176145(n+3)+n-∑[n]` -/
def P16690525584677378915.Spec : Prop :=
  ∀ n, P16690525584677378915.a n = A294259 n

end A294259

/-! ## A294259.P8990494400806112510

`3*n+1-A110426(n+1)`
-/

namespace A294259.P8990494400806112510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A110426 (n + 1)

end

end A294259.P8990494400806112510

namespace A294259

/-- `3*n+1-A110426(n+1)` -/
def P8990494400806112510.Spec : Prop :=
  ∀ n, P8990494400806112510.a n = A294259 n

end A294259

/-! ## A294259.P8118645270722093581

`A329523(n)-A000332(n)`
-/

namespace A294259.P8118645270722093581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 n - A000332 n

end

end A294259.P8118645270722093581

namespace A294259

/-- `A329523(n)-A000332(n)` -/
def P8118645270722093581.Spec : Prop :=
  ∀ n, P8118645270722093581.a n = A294259 n

end A294259

/-! ## A294259.P5441004187643239621

`A267707(n)-A143689(n)`
-/

namespace A294259.P5441004187643239621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267707 n - A143689 n

end

end A294259.P5441004187643239621

namespace A294259

/-- `A267707(n)-A143689(n)` -/
def P5441004187643239621.Spec : Prop :=
  ∀ n, P5441004187643239621.a n = A294259 n

end A294259

/-! ## A294259.P4113635902599379125

`abs(A001489(n)-A086602(n))`
-/

namespace A294259.P4113635902599379125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A086602 n|

end

end A294259.P4113635902599379125

namespace A294259

/-- `abs(A001489(n)-A086602(n))` -/
def P4113635902599379125.Spec : Prop :=
  ∀ n, P4113635902599379125.a n = A294259 n

end A294259

/-! ## A294259.P3479032854655930561

`A007290(n)+A090809(n)+n`
-/

namespace A294259.P3479032854655930561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + (A090809 n + (n : ℤ))

end

end A294259.P3479032854655930561

namespace A294259

/-- `A007290(n)+A090809(n)+n` -/
def P3479032854655930561.Spec : Prop :=
  ∀ n, P3479032854655930561.a n = A294259 n

end A294259

/-! ## A294259.P17488613294100617179

`A008911(n)+n-A000332(n)`
-/

namespace A294259.P17488613294100617179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n + ((n : ℤ) - A000332 n)

end

end A294259.P17488613294100617179

namespace A294259

/-- `A008911(n)+n-A000332(n)` -/
def P17488613294100617179.Spec : Prop :=
  ∀ n, P17488613294100617179.a n = A294259 n

end A294259

/-! ## A294259.P17428131309312102507

`A006528(n)+n-A037255(n)`
-/

namespace A294259.P17428131309312102507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n + ((n : ℤ) - A037255 n)

end

end A294259.P17428131309312102507

namespace A294259

/-- `A006528(n)+n-A037255(n)` -/
def P17428131309312102507.Spec : Prop :=
  ∀ n, P17428131309312102507.a n = A294259 n

end A294259

/-! ## A294259.P15430266003881266955

`A329523(n)+n-A014626(n)`
-/

namespace A294259.P15430266003881266955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 n + ((n : ℤ) - A014626 n)

end

end A294259.P15430266003881266955

namespace A294259

/-- `A329523(n)+n-A014626(n)` -/
def P15430266003881266955.Spec : Prop :=
  ∀ n, P15430266003881266955.a n = A294259 n

end A294259

/-! ## A294259.P4684357969141893158

`A267707(n)+n-A104249(n)`
-/

namespace A294259.P4684357969141893158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267707 n + ((n : ℤ) - A104249 n)

end

end A294259.P4684357969141893158

namespace A294259

/-- `A267707(n)+n-A104249(n)` -/
def P4684357969141893158.Spec : Prop :=
  ∀ n, P4684357969141893158.a n = A294259 n

end A294259

/-! ## A294259.P10527346311900284789

`A255499(n)+n-A236770(n)`
-/

namespace A294259.P10527346311900284789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n + ((n : ℤ) - A236770 n)

end

end A294259.P10527346311900284789

namespace A294259

/-- `A255499(n)+n-A236770(n)` -/
def P10527346311900284789.Spec : Prop :=
  ∀ n, P10527346311900284789.a n = A294259 n

end A294259

/-!
# A294260: E.g.f.: exp(Sum_{n>=1} A010815(n)*x^n).

The programs for A294260, there is no canonical definition to state claims against.
-/

/-! ## A294260.P15628207461556470560

`A294254(∑[4*n])`
-/

namespace A294260.P15628207461556470560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294260.P15628207461556470560

/-! ## A294260.P17769148271232981182

`or(1, A294254(A046092(n)))`
-/

namespace A294260.P17769148271232981182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294254 (A046092 n).toNat)

end

end A294260.P17769148271232981182

/-! ## A294260.P3013796931110472707

`A294254(A046092(n))+A025444(n)`
-/

namespace A294260.P3013796931110472707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 (A046092 n).toNat + A025444 n

end

end A294260.P3013796931110472707

/-! ## A294260.P5400413202761493970

`A000041(gcd(n, n+1))*A294254(A046092(n))`
-/

namespace A294260.P5400413202761493970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A294254 (A046092 n).toNat

end

end A294260.P5400413202761493970

/-! ## A294260.P16075224489203901819

`A294254(A046092(n))/∑{e}[A000040(n+1), #]`
-/

namespace A294260.P16075224489203901819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294254 (A046092 n).toNat : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A294260.P16075224489203901819

/-!
# A294261: E.g.f.: exp(Sum_{n>=1} A081362(n)*x^n).

The programs for A294261, there is no canonical definition to state claims against.
-/

/-! ## A294261.P14337254038280827755

`A294289(∑[4*n])`
-/

namespace A294261.P14337254038280827755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294261.P14337254038280827755

/-! ## A294261.P16902569980787454511

`or(1, A294289(A046092(n)))`
-/

namespace A294261.P16902569980787454511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294289 (A046092 n).toNat)

end

end A294261.P16902569980787454511

/-! ## A294261.P9044753415735756069

`A294289(A046092(n))%A235218(n+1)`
-/

namespace A294261.P9044753415735756069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294289 (A046092 n).toNat) (A235218 (n + 1))

end

end A294261.P9044753415735756069

/-! ## A294261.P11984279658277774960

`(-1)^n*A033999(n)*A294289(A046092(n))`
-/

namespace A294261.P11984279658277774960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033999 n * A294289 (A046092 n).toNat

end

end A294261.P11984279658277774960

/-! ## A294261.P799152734340443946

`A294289(A046092(n))%A068714(n)`
-/

namespace A294261.P799152734340443946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294289 (A046092 n).toNat) (A068714 n)

end

end A294261.P799152734340443946

/-!
# A294262: a(n) = 3*a(n-1) + 5*a(n-2) + a(n-3), with a(0) = a(1) = 1 and a(2) = 7, a linear recurrence which is a trisection of A005252.

The programs for A294262, the canonical program `A294262.P14315579496599862431` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294262 has offset 0).

The definition of A294262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+5*a(n-2)+a(n-3)` (program `A294262.P14315579496599862431`, by `A294262.P14315579496599862431.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294262.P657801228393285954

`4*a(n-1)+a(n-2)+2*(-1)^n` with `a(0)=1, a(1)=1`
-/

namespace A294262.P657801228393285954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) + a (n - 2) + 2 * (-1) ^ n

end

end A294262.P657801228393285954

namespace A294262

/-- `4*a(n-1)+a(n-2)+2*(-1)^n` -/
def P657801228393285954.Spec : Prop :=
  ∀ n, P657801228393285954.a n = A294262 n

end A294262

/-! ## A294262.P14315579496599862431

`3*a(n-1)+5*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294262

/-- `3*a(n-1)+5*a(n-2)+a(n-3)` -/
def P14315579496599862431.Spec : Prop :=
  ∀ n, (P14315579496599862431.a n : ℤ) = A294262 n

theorem P14315579496599862431.correct : P14315579496599862431.Spec := by
  intro n
  simp only [A294262]

end A294262

/-! ## A294262.P90377551376449274

`A005252(3*n)`
-/

namespace A294262.P90377551376449274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (3 * n)

end

end A294262.P90377551376449274

namespace A294262

/-- `A005252(3*n)` -/
def P90377551376449274.Spec : Prop :=
  ∀ n, P90377551376449274.a n = A294262 n

end A294262

/-! ## A294262.P15143669383432992703

`A110679(n)-A001076(n)`
-/

namespace A294262.P15143669383432992703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110679 n - A001076 n

end

end A294262.P15143669383432992703

namespace A294262

/-- `A110679(n)-A001076(n)` -/
def P15143669383432992703.Spec : Prop :=
  ∀ n, P15143669383432992703.a n = A294262 n

end A294262

/-! ## A294262.P11234797556229172145

`ogf((-1+2x+x^2)/(-1+3x+5x^2+x^3))`
-/

namespace A294262.P11234797556229172145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -3, -5, -1] n

end

end A294262.P11234797556229172145

namespace A294262

/-- `ogf((-1+2x+x^2)/(-1+3x+5x^2+x^3))` -/
def P11234797556229172145.Spec : Prop :=
  ∀ n, P11234797556229172145.a n = A294262 n

end A294262

/-! ## A294262.P13612853990115792443

`or(1, A049651(n))`
-/

namespace A294262.P13612853990115792443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049651 n)

end

end A294262.P13612853990115792443

namespace A294262

/-- `or(1, A049651(n))` -/
def P13612853990115792443.Spec : Prop :=
  ∀ n, P13612853990115792443.a n = A294262 n

end A294262

/-! ## A294262.P12658756299880282873

`Δ[A293552(3*n)]`
-/

namespace A294262.P12658756299880282873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294262.P12658756299880282873

namespace A294262

/-- `Δ[A293552(3*n)]` -/
def P12658756299880282873.Spec : Prop :=
  ∀ n, P12658756299880282873.a n = A294262 n

end A294262

/-! ## A294262.P6952166804564772983

`A174618(6*n+2)`
-/

namespace A294262.P6952166804564772983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (6 * n + 2)

end

end A294262.P6952166804564772983

namespace A294262

/-- `A174618(6*n+2)` -/
def P6952166804564772983.Spec : Prop :=
  ∀ n, P6952166804564772983.a n = A294262 n

end A294262

/-! ## A294262.P3470830416111853116

`or(1, A004695(3*n+1))`
-/

namespace A294262.P3470830416111853116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004695 (3 * n + 1))

end

end A294262.P3470830416111853116

namespace A294262

/-- `or(1, A004695(3*n+1))` -/
def P3470830416111853116.Spec : Prop :=
  ∀ n, P3470830416111853116.a n = A294262 n

end A294262

/-! ## A294262.P2927143104109654879

`A014445(n)-a(n-1)` with `a(0)=1`
-/

namespace A294262.P2927143104109654879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014445 n - a (n - 1)

end

end A294262.P2927143104109654879

namespace A294262

/-- `A014445(n)-a(n-1)` -/
def P2927143104109654879.Spec : Prop :=
  ∀ n, P2927143104109654879.a n = A294262 n

end A294262

/-! ## A294262.P17697452126074693779

`or(1, ∑[A212804(3*n)]-1)`
-/

namespace A294262.P17697452126074693779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294262.P17697452126074693779

namespace A294262

/-- `or(1, ∑[A212804(3*n)]-1)` -/
def P17697452126074693779.Spec : Prop :=
  ∀ n, P17697452126074693779.a n = A294262 n

end A294262

/-! ## A294262.P407772444301011769

`(-1)^n+2*A110526(n)`
-/

namespace A294262.P407772444301011769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 2 * A110526 n

end

end A294262.P407772444301011769

namespace A294262

/-- `(-1)^n+2*A110526(n)` -/
def P407772444301011769.Spec : Prop :=
  ∀ n, P407772444301011769.a n = A294262 n

end A294262

/-! ## A294262.P15464861353307205339

`A107857(2*n+1)-and(1, n)`
-/

namespace A294262.P15464861353307205339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (2 * n + 1) - (Nat.land 1 n : ℤ)

end

end A294262.P15464861353307205339

namespace A294262

/-- `A107857(2*n+1)-and(1, n)` -/
def P15464861353307205339.Spec : Prop :=
  ∀ n, P15464861353307205339.a n = A294262 n

end A294262

/-! ## A294262.P6309465879920975505

`A117647(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A294262.P6309465879920975505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117647 (2 * n) - a (n - 1)

end

end A294262.P6309465879920975505

namespace A294262

/-- `A117647(2*n)-a(n-1)` -/
def P6309465879920975505.Spec : Prop :=
  ∀ n, P6309465879920975505.a n = A294262 n

end A294262

/-! ## A294262.P9989925788441638720

`A000045(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A294262.P9989925788441638720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (3 * n) - a (n - 1)

end

end A294262.P9989925788441638720

namespace A294262

/-- `A000045(3*n)-a(n-1)` -/
def P9989925788441638720.Spec : Prop :=
  ∀ n, P9989925788441638720.a n = A294262 n

end A294262

/-! ## A294262.P5836791878734956699

`A004695(2*n+n+1)+and(1, n+1)`
-/

namespace A294262.P5836791878734956699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (2 * n + (n + 1)) + (Nat.land 1 (n + 1) : ℤ)

end

end A294262.P5836791878734956699

namespace A294262

/-- `A004695(2*n+n+1)+and(1, n+1)` -/
def P5836791878734956699.Spec : Prop :=
  ∀ n, P5836791878734956699.a n = A294262 n

end A294262

/-! ## A294262.P1459488598502492228

`A059841(n)+A049651(n)`
-/

namespace A294262.P1459488598502492228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A049651 n

end

end A294262.P1459488598502492228

namespace A294262

/-- `A059841(n)+A049651(n)` -/
def P1459488598502492228.Spec : Prop :=
  ∀ n, P1459488598502492228.a n = A294262 n

end A294262

/-! ## A294262.P1775309632044628458

`A232970(n)-A000035(n)`
-/

namespace A294262.P1775309632044628458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232970 n - A000035 n

end

end A294262.P1775309632044628458

namespace A294262

/-- `A232970(n)-A000035(n)` -/
def P1775309632044628458.Spec : Prop :=
  ∀ n, P1775309632044628458.a n = A294262 n

end A294262

/-! ## A294262.P4225979074719348561

`A107857(2*n+1)-A000035(n)`
-/

namespace A294262.P4225979074719348561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (2 * n + 1) - A000035 n

end

end A294262.P4225979074719348561

namespace A294262

/-- `A107857(2*n+1)-A000035(n)` -/
def P4225979074719348561.Spec : Prop :=
  ∀ n, P4225979074719348561.a n = A294262 n

end A294262

/-! ## A294262.P7594214745510592646

`A049651(n)+A047355(2*(n+1))%2`
-/

namespace A294262.P7594214745510592646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049651 n + Int.tmod (A047355 (2 * (n + 1))) 2

end

end A294262.P7594214745510592646

namespace A294262

/-- `A049651(n)+A047355(2*(n+1))%2` -/
def P7594214745510592646.Spec : Prop :=
  ∀ n, P7594214745510592646.a n = A294262 n

end A294262

/-!
# A294263: Sum of the larger parts of the partitions of n into two parts with smaller part squarefree > 1.

The programs for A294263, the canonical program `A294263.P10402208649476642177` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294263 has offset 1).

The definition of A294263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294263.P6438432338665902376

`A294146(n+1)-n`
-/

namespace A294263.P6438432338665902376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (n + 1) - (n : ℤ)

end

end A294263.P6438432338665902376

namespace A294263

/-- `A294146(n+1)-n` -/
def P6438432338665902376.Spec : Prop :=
  ∀ n, P6438432338665902376.a n = A294263 (n + 1)

end A294263

/-! ## A294263.P10402208649476642177

`∑[gcd(n, ∑[n])]-(A294237(n+1)+n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A294263

/-- `∑[gcd(n, ∑[n])]-(A294237(n+1)+n)` -/
def P10402208649476642177.Spec : Prop :=
  ∀ n, P10402208649476642177.a n = A294263 (n + 1)

theorem P10402208649476642177.correct : P10402208649476642177.Spec := by
  intro n
  simp only [A294263, Nat.add_sub_cancel]

end A294263

/-! ## A294263.P2659631301396615623

`A262871(n+1)+∑[∑[char[2*∏{p}[n, #]]]]-n`
-/

namespace A294263.P2659631301396615623
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f4 n), p)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262871 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A294263.P2659631301396615623

namespace A294263

/-- `A262871(n+1)+∑[∑[char[2*∏{p}[n, #]]]]-n` -/
def P2659631301396615623.Spec : Prop :=
  ∀ n, P2659631301396615623.a n = A294263 (n + 1)

end A294263

/-! ## A294263.P4529046427845465053

`A001318(n)-(A294237(n+1)+n)`
-/

namespace A294263.P4529046427845465053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - (A294237 (n + 1) + (n : ℤ))

end

end A294263.P4529046427845465053

namespace A294263

/-- `A001318(n)-(A294237(n+1)+n)` -/
def P4529046427845465053.Spec : Prop :=
  ∀ n, P4529046427845465053.a n = A294263 (n + 1)

end A294263

/-! ## A294263.P13263618324977011872

`∑[A026741(n)]-(A294237(n+1)+n)`
-/

namespace A294263.P13263618324977011872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A294237 (n + 1) + (n : ℤ))

end

end A294263.P13263618324977011872

namespace A294263

/-- `∑[A026741(n)]-(A294237(n+1)+n)` -/
def P13263618324977011872.Spec : Prop :=
  ∀ n, P13263618324977011872.a n = A294263 (n + 1)

end A294263

/-! ## A294263.P9964716901572466767

`A262871(n+1)+A294060(n+1)-n`
-/

namespace A294263.P9964716901572466767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262871 (n + 1) + (A294060 (n + 1) - (n : ℤ))

end

end A294263.P9964716901572466767

namespace A294263

/-- `A262871(n+1)+A294060(n+1)-n` -/
def P9964716901572466767.Spec : Prop :=
  ∀ n, P9964716901572466767.a n = A294263 (n + 1)

end A294263

/-! ## A294263.P367188768458561278

`record[A294146(A158416(n))]-n`
-/

namespace A294263.P367188768458561278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A294263.P367188768458561278

namespace A294263

/-- `record[A294146(A158416(n))]-n` -/
def P367188768458561278.Spec : Prop :=
  ∀ n, P367188768458561278.a n = A294263 (n + 1)

end A294263

/-! ## A294263.P70250507533387509

`A014682(Δ[n*A294060(n+1)])-n`
-/

namespace A294263.P70250507533387509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A294263.P70250507533387509

namespace A294263

/-- `A014682(Δ[n*A294060(n+1)])-n` -/
def P70250507533387509.Spec : Prop :=
  ∀ n, P70250507533387509.a n = A294263 (n + 1)

end A294263

/-! ## A294263.P7007754301104005658

`A004525(Δ[n*A294060(n+1)])-n`
-/

namespace A294263.P7007754301104005658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A294263.P7007754301104005658

namespace A294263

/-- `A004525(Δ[n*A294060(n+1)])-n` -/
def P7007754301104005658.Spec : Prop :=
  ∀ n, P7007754301104005658.a n = A294263 (n + 1)

end A294263

/-! ## A294263.P878757015783973652

`A004526(Δ[n*A294060(n+1)])-n`
-/

namespace A294263.P878757015783973652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A294263.P878757015783973652

namespace A294263

/-- `A004526(Δ[n*A294060(n+1)])-n` -/
def P878757015783973652.Spec : Prop :=
  ∀ n, P878757015783973652.a n = A294263 (n + 1)

end A294263

/-!
# A294264: a(n) = (5/128)*n^4*(n mod 2) + (((-5/128)*n^4*(n mod 2) - 26) mod n) + n^3 (n > 0).

The programs for A294264, there is no canonical definition to state claims against.
-/

/-! ## A294264.P16520941589227030958

`A088384(A289931(n+1))`
-/

namespace A294264.P16520941589227030958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088384 (A289931 (n + 1)).toNat

end

end A294264.P16520941589227030958

/-!
# A294265: Number of partitions of n into squares that do not divide n.

The programs for A294265, there is no canonical definition to state claims against.
-/

/-! ## A294265.P582421805513817637

`A340102(A300715(n)²)`
-/

namespace A294265.P582421805513817637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A300715 n ^ 2).toNat

end

end A294265.P582421805513817637

/-! ## A294265.P17890229928685644156

`A340102(7*A300715(n))`
-/

namespace A294265.P17890229928685644156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (7 * A300715 n).toNat

end

end A294265.P17890229928685644156

/-! ## A294265.P8839317066612483028

`A275811(A300715(n)^5)`
-/

namespace A294265.P8839317066612483028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (A300715 n ^ 5).toNat

end

end A294265.P8839317066612483028

/-! ## A294265.P8523585036749611685

`ceil(A126792(A300715(n)²)/4)`
-/

namespace A294265.P8523585036749611685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126792 (A300715 n ^ 2).toNat : ℚ) / 4⌉

end

end A294265.P8523585036749611685

/-! ## A294265.P10599800473488821830

`A284465(A300702(A300715(n))²)`
-/

namespace A294265.P10599800473488821830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284465 (A300702 (A300715 n).toNat ^ 2).toNat

end

end A294265.P10599800473488821830

/-!
# A294266: Number of partitions of n into distinct squares that do not divide n.

The programs for A294266, there is no canonical definition to state claims against.
-/

/-! ## A294266.P13818055671552832706

`val(A319303(A299458(n+1)), A061228(n+1))`
-/

namespace A294266.P13818055671552832706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319303 (A299458 (n + 1)).toNat).toNat (A061228 (n + 1)).toNat

end

end A294266.P13818055671552832706

/-! ## A294266.P6293636056950714169

`A111900(n)*A280596(A307825(2*n+1))`
-/

namespace A294266.P6293636056950714169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 n * A280596 (A307825 (2 * n + 1)).toNat

end

end A294266.P6293636056950714169

/-! ## A294266.P14571586126828710236

`A139351(A111900(n)*A181817(n+1))`
-/

namespace A294266.P14571586126828710236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A111900 n * A181817 (n + 1)).toNat

end

end A294266.P14571586126828710236

/-! ## A294266.P3761080073248421289

`A139351(lcm(A111900(n), A181817(n+1)))`
-/

namespace A294266.P3761080073248421289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.lcm (A111900 n) (A181817 (n + 1)))

end

end A294266.P3761080073248421289

/-! ## A294266.P3824044924154043532

`C(A035187(2*n+3), A002117(A162822(n+1)))`
-/

namespace A294266.P3824044924154043532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035187 (2 * n + 3)).toNat (A002117 (A162822 (n + 1)).toNat).toNat

end

end A294266.P3824044924154043532

/-!
# A294268: Smallest n-digit decimal string that contains each of the first A294267(n) primes as a subsequence.

The programs for A294268, there is no canonical definition to state claims against.
-/

/-! ## A294268.P18058576745404979517

`record[A301339(n+1)]`
-/

namespace A294268.P18058576745404979517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294268.P18058576745404979517

/-!
# A294269: a(n) is the smallest number not already in the sequence which shares a factor with an even number of preceding terms; a(1) = 1.

The programs for A294269, the canonical program `A294269.P1433102188095543390` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294269 has offset 1).

The definition of A294269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294269.P1433102188095543390

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=6, a(5)=4, a(6)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294269

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P1433102188095543390.Spec : Prop :=
  ∀ n, P1433102188095543390.a n = A294269 (n + 1)

theorem P1433102188095543390.correct : P1433102188095543390.Spec := by
  intro n
  simp only [A294269, Nat.add_sub_cancel]

end A294269

/-! ## A294269.P3476826700722255849

`a(n-4)+4` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=6, a(5)=4`
-/

namespace A294269.P3476826700722255849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5, 6, 4] fun n a =>
  a (n - 4) + 4

end

end A294269.P3476826700722255849

namespace A294269

/-- `a(n-4)+4` -/
def P3476826700722255849.Spec : Prop :=
  ∀ n, (P3476826700722255849.a n : ℤ) = A294269 (n + 1)

end A294269

/-! ## A294269.P550880877261359952

`Δ[n²]-or(2, a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A294269.P550880877261359952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - Int.lor 2 (a (n - 2))

end

end A294269.P550880877261359952

namespace A294269

/-- `Δ[n²]-or(2, a(n-2))` -/
def P550880877261359952.Spec : Prop :=
  ∀ n, P550880877261359952.a n = A294269 (n + 1)

end A294269

/-! ## A294269.P8889637056664530921

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=-2, a(6)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A294269.P8889637056664530921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 1, -2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294269.P8889637056664530921

namespace A294269

/-- `∑[floor(a(n-4))]` -/
def P8889637056664530921.Spec : Prop :=
  ∀ n, P8889637056664530921.a n = A294269 (n + 1)

end A294269

/-! ## A294269.P2933851004524935751

`∑[(4-6/a(n-1))%4]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A294269.P2933851004524935751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  Int.tmod (SequenceMachineLib.roundAway (4 - 6 / (f1 (n - 1) : ℚ))) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294269.P2933851004524935751

namespace A294269

/-- `∑[(4-6/a(n-1))%4]` -/
def P2933851004524935751.Spec : Prop :=
  ∀ n, P2933851004524935751.a n = A294269 (n + 1)

end A294269

/-! ## A294269.P2376804772468040364

`1-(or(2, a(n-2))-2*n)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A294269.P2376804772468040364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 - (Int.lor 2 (a (n - 2)) - (2 * n : ℤ))

end

end A294269.P2376804772468040364

namespace A294269

/-- `1-(or(2, a(n-2))-2*n)` -/
def P2376804772468040364.Spec : Prop :=
  ∀ n, P2376804772468040364.a n = A294269 (n + 1)

end A294269

/-! ## A294269.P2454315051433617286

`2-xor(1-n, and(3, a(n-1)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A294269.P2454315051433617286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 - Int.xor (1 - (n : ℤ)) (Int.land 3 (a (n - 1)))

end

end A294269.P2454315051433617286

namespace A294269

/-- `2-xor(1-n, and(3, a(n-1)))` -/
def P2454315051433617286.Spec : Prop :=
  ∀ n, P2454315051433617286.a n = A294269 (n + 1)

end A294269

/-! ## A294269.P6790140422862585650

`1-(or(2, a(n-2))-n-n)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A294269.P6790140422862585650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 - (Int.lor 2 (a (n - 2)) - (n : ℤ) - (n : ℤ))

end

end A294269.P6790140422862585650

namespace A294269

/-- `1-(or(2, a(n-2))-n-n)` -/
def P6790140422862585650.Spec : Prop :=
  ∀ n, P6790140422862585650.a n = A294269 (n + 1)

end A294269

/-! ## A294269.P3384026593506370112

`A298364(A066247(∑[n+1])+n+1)-1`
-/

namespace A294269.P3384026593506370112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298364 (A066247 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)).toNat - 1

end

end A294269.P3384026593506370112

namespace A294269

/-- `A298364(A066247(∑[n+1])+n+1)-1` -/
def P3384026593506370112.Spec : Prop :=
  ∀ n, P3384026593506370112.a n = A294269 (n + 1)

end A294269

/-!
# A294270: Sum of the cubes of the parts in the partitions of n into two parts.

The programs for A294270, the canonical program `A294270.P10723442335007175204` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294270 has offset 1).

The definition of A294270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294270.P10723442335007175204

`(n+1)²*(4*(n+1)²-7*(n+1)+4+(n+1)*(-1)^(n+1))/16`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294270

/-- `(n+1)²*(4*(n+1)²-7*(n+1)+4+(n+1)*(-1)^(n+1))/16` -/
def P10723442335007175204.Spec : Prop :=
  ∀ n, P10723442335007175204.a n = (A294270 (n + 1) : ℚ)

end A294270

/-! ## A294270.P3201588629840666002

`(∑[n]%(n+1))^3+∑[n]²`
-/

namespace A294270.P3201588629840666002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) ^ 3 + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A294270.P3201588629840666002

namespace A294270

/-- `(∑[n]%(n+1))^3+∑[n]²` -/
def P3201588629840666002.Spec : Prop :=
  ∀ n, (P3201588629840666002.a n : ℤ) = A294270 (n + 1)

end A294270

/-! ## A294270.P8554822198623617609

`∑[n+1]²-A309335(n+1)`
-/

namespace A294270.P8554822198623617609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A309335 (n + 1)

end

end A294270.P8554822198623617609

namespace A294270

/-- `∑[n+1]²-A309335(n+1)` -/
def P8554822198623617609.Spec : Prop :=
  ∀ n, P8554822198623617609.a n = A294270 (n + 1)

end A294270

/-! ## A294270.P8469608239565611808

`A163102(n)-A294287(n+1)`
-/

namespace A294270.P8469608239565611808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - A294287 (n + 1)

end

end A294270.P8469608239565611808

namespace A294270

/-- `A163102(n)-A294287(n+1)` -/
def P8469608239565611808.Spec : Prop :=
  ∀ n, P8469608239565611808.a n = A294270 (n + 1)

end A294270

/-! ## A294270.P6626102578005325055

`∑[A000578(n+1)-Δ[A309335(n)]]`
-/

namespace A294270.P6626102578005325055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294270.P6626102578005325055

namespace A294270

/-- `∑[A000578(n+1)-Δ[A309335(n)]]` -/
def P6626102578005325055.Spec : Prop :=
  ∀ n, P6626102578005325055.a n = A294270 (n + 1)

end A294270

/-! ## A294270.P7383842680557810708

`A000578(A142150(n+1))+∑[n]²`
-/

namespace A294270.P7383842680557810708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A142150 (n + 1)).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A294270.P7383842680557810708

namespace A294270

/-- `A000578(A142150(n+1))+∑[n]²` -/
def P7383842680557810708.Spec : Prop :=
  ∀ n, P7383842680557810708.a n = A294270 (n + 1)

end A294270

/-! ## A294270.P3638238453485070208

`A000537(n)+Δ[A000537(A004526(n))]`
-/

namespace A294270.P3638238453485070208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + (f1 (n + 1) - f1 n)

end

end A294270.P3638238453485070208

namespace A294270

/-- `A000537(n)+Δ[A000537(A004526(n))]` -/
def P3638238453485070208.Spec : Prop :=
  ∀ n, P3638238453485070208.a n = A294270 (n + 1)

end A294270

/-! ## A294270.P2778478771283748269

`A105636(n+1)+A105636(n)-A309335(n+1)`
-/

namespace A294270.P2778478771283748269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 (n + 1) + (A105636 n - A309335 (n + 1))

end

end A294270.P2778478771283748269

namespace A294270

/-- `A105636(n+1)+A105636(n)-A309335(n+1)` -/
def P2778478771283748269.Spec : Prop :=
  ∀ n, P2778478771283748269.a n = A294270 (n + 1)

end A294270

/-!
# A294271: Sum of the fourth powers of the parts in the partitions of n into two parts.

The programs for A294271, the canonical program `A294271.P7794211560096555549` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294271 has offset 1).

The definition of A294271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294271.P7794211560096555549

`∑[(n+1)²²-Δ[A309336(n)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294271

/-- `∑[(n+1)²²-Δ[A309336(n)]]` -/
def P7794211560096555549.Spec : Prop :=
  ∀ n, P7794211560096555549.a n = A294271 (n + 1)

theorem P7794211560096555549.correct : P7794211560096555549.Spec := by
  intro n
  simp only [A294271, Nat.add_sub_cancel]

end A294271

/-! ## A294271.P6226294250314484231

`∑[(n+1)²²]-A309336(n+1)`
-/

namespace A294271.P6226294250314484231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A309336 (n + 1)

end

end A294271.P6226294250314484231

namespace A294271

/-- `∑[(n+1)²²]-A309336(n+1)` -/
def P6226294250314484231.Spec : Prop :=
  ∀ n, P6226294250314484231.a n = A294271 (n + 1)

end A294271

/-! ## A294271.P5436956855910401828

`∑[2*n²²]-A294288(n+1)`
-/

namespace A294271.P5436956855910401828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A294288 (n + 1)

end

end A294271.P5436956855910401828

namespace A294271

/-- `∑[2*n²²]-A294288(n+1)` -/
def P5436956855910401828.Spec : Prop :=
  ∀ n, P5436956855910401828.a n = A294271 (n + 1)

end A294271

/-! ## A294271.P5334003608127111109

`A000538(n)+∑[A001057(n)]²²`
-/

namespace A294271.P5334003608127111109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A294271.P5334003608127111109

namespace A294271

/-- `A000538(n)+∑[A001057(n)]²²` -/
def P5334003608127111109.Spec : Prop :=
  ∀ n, P5334003608127111109.a n = A294271 (n + 1)

end A294271

/-! ## A294271.P2958086683770157641

`A000583(∑[n]%(n+1))+A000538(n)`
-/

namespace A294271.P2958086683770157641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A000538 n

end

end A294271.P2958086683770157641

namespace A294271

/-- `A000583(∑[n]%(n+1))+A000538(n)` -/
def P2958086683770157641.Spec : Prop :=
  ∀ n, P2958086683770157641.a n = A294271 (n + 1)

end A294271

/-! ## A294271.P17542682264480019241

`A000583(∑[A001057(n)])+A000538(n)`
-/

namespace A294271.P17542682264480019241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000538 n

end

end A294271.P17542682264480019241

namespace A294271

/-- `A000583(∑[A001057(n)])+A000538(n)` -/
def P17542682264480019241.Spec : Prop :=
  ∀ n, P17542682264480019241.a n = A294271 (n + 1)

end A294271

/-! ## A294271.P18372131948931000169

`A000538(n)+Δ[A000538(A004526(n))]`
-/

namespace A294271.P18372131948931000169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n + (f1 (n + 1) - f1 n)

end

end A294271.P18372131948931000169

namespace A294271

/-- `A000538(n)+Δ[A000538(A004526(n))]` -/
def P18372131948931000169.Spec : Prop :=
  ∀ n, P18372131948931000169.a n = A294271 (n + 1)

end A294271

/-!
# A294272: Sum of the fifth powers of the parts in the partitions of n into two parts.

The programs for A294272, the canonical program `A294272.P4155078698942793880` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294272 has offset 1).

The definition of A294272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294272.P8910755709555838157

`2*A000539(n)-A294300(n+1)`
-/

namespace A294272.P8910755709555838157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000539 n - A294300 (n + 1)

end

end A294272.P8910755709555838157

namespace A294272

/-- `2*A000539(n)-A294300(n+1)` -/
def P8910755709555838157.Spec : Prop :=
  ∀ n, P8910755709555838157.a n = A294272 (n + 1)

end A294272

/-! ## A294272.P4155078698942793880

`A000584(∑[n]%(n+1))+A000539(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294272

/-- `A000584(∑[n]%(n+1))+A000539(n)` -/
def P4155078698942793880.Spec : Prop :=
  ∀ n, P4155078698942793880.a n = A294272 (n + 1)

theorem P4155078698942793880.correct : P4155078698942793880.Spec := by
  intro n
  simp only [A294272, Nat.add_sub_cancel]

end A294272

/-! ## A294272.P15027327193618249900

`A000584(∑[A001057(n)])+A000539(n)`
-/

namespace A294272.P15027327193618249900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000539 n

end

end A294272.P15027327193618249900

namespace A294272

/-- `A000584(∑[A001057(n)])+A000539(n)` -/
def P15027327193618249900.Spec : Prop :=
  ∀ n, P15027327193618249900.a n = A294272 (n + 1)

end A294272

/-! ## A294272.P16294622003968174282

`A000539(n)+Δ[A000539(A004526(n))]`
-/

namespace A294272.P16294622003968174282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n + (f1 (n + 1) - f1 n)

end

end A294272.P16294622003968174282

namespace A294272

/-- `A000539(n)+Δ[A000539(A004526(n))]` -/
def P16294622003968174282.Spec : Prop :=
  ∀ n, P16294622003968174282.a n = A294272 (n + 1)

end A294272

/-! ## A294272.P3359204851691913409

`A000584(A142150(n+1))+∑[A000584(n)]`
-/

namespace A294272.P3359204851691913409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A142150 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294272.P3359204851691913409

namespace A294272

/-- `A000584(A142150(n+1))+∑[A000584(n)]` -/
def P3359204851691913409.Spec : Prop :=
  ∀ n, P3359204851691913409.a n = A294272 (n + 1)

end A294272

/-!
# A294273: Sum of the sixth powers of the parts in the partitions of n into two parts.

The programs for A294273, the canonical program `A294273.P3284638066771822649` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294273 has offset 1).

The definition of A294273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294273.P6011700808017730043

`A259109(n)-A294301(n+1)`
-/

namespace A294273.P6011700808017730043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259109 n - A294301 (n + 1)

end

end A294273.P6011700808017730043

namespace A294273

/-- `A259109(n)-A294301(n+1)` -/
def P6011700808017730043.Spec : Prop :=
  ∀ n, P6011700808017730043.a n = A294273 (n + 1)

end A294273

/-! ## A294273.P3454405788351624736

`2*A000540(n)-A294301(n+1)`
-/

namespace A294273.P3454405788351624736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000540 n - A294301 (n + 1)

end

end A294273.P3454405788351624736

namespace A294273

/-- `2*A000540(n)-A294301(n+1)` -/
def P3454405788351624736.Spec : Prop :=
  ∀ n, P3454405788351624736.a n = A294273 (n + 1)

end A294273

/-! ## A294273.P3284638066771822649

`A001014(∑[n]%(n+1))+A000540(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294273

/-- `A001014(∑[n]%(n+1))+A000540(n)` -/
def P3284638066771822649.Spec : Prop :=
  ∀ n, P3284638066771822649.a n = A294273 (n + 1)

theorem P3284638066771822649.correct : P3284638066771822649.Spec := by
  intro n
  simp only [A294273, Nat.add_sub_cancel]

end A294273

/-! ## A294273.P9215146444933298094

`2*∑[A000578(n)²]-A294301(n+1)`
-/

namespace A294273.P9215146444933298094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - A294301 (n + 1)

end

end A294273.P9215146444933298094

namespace A294273

/-- `2*∑[A000578(n)²]-A294301(n+1)` -/
def P9215146444933298094.Spec : Prop :=
  ∀ n, P9215146444933298094.a n = A294273 (n + 1)

end A294273

/-! ## A294273.P10115798676230081794

`A001014(∑[A001057(n)])+A000540(n)`
-/

namespace A294273.P10115798676230081794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000540 n

end

end A294273.P10115798676230081794

namespace A294273

/-- `A001014(∑[A001057(n)])+A000540(n)` -/
def P10115798676230081794.Spec : Prop :=
  ∀ n, P10115798676230081794.a n = A294273 (n + 1)

end A294273

/-! ## A294273.P3009907711290279564

`∑[A106318(n+1)]-(A294301(n+1)+A106318(n+1))`
-/

namespace A294273.P3009907711290279564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A294301 (n + 1) + A106318 (n + 1))

end

end A294273.P3009907711290279564

namespace A294273

/-- `∑[A106318(n+1)]-(A294301(n+1)+A106318(n+1))` -/
def P3009907711290279564.Spec : Prop :=
  ∀ n, P3009907711290279564.a n = A294273 (n + 1)

end A294273

/-! ## A294273.P17967880630874436780

`A000540(n)+A000540(A005843(n)/2)-A294301(n+1)`
-/

namespace A294273.P17967880630874436780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n + A000540 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat - A294301 (n + 1)

end

end A294273.P17967880630874436780

namespace A294273

/-- `A000540(n)+A000540(A005843(n)/2)-A294301(n+1)` -/
def P17967880630874436780.Spec : Prop :=
  ∀ n, P17967880630874436780.a n = A294273 (n + 1)

end A294273

/-! ## A294273.P8803768122035458988

`A000540(n)+Δ[A000540(A004526(n))]`
-/

namespace A294273.P8803768122035458988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n + (f1 (n + 1) - f1 n)

end

end A294273.P8803768122035458988

namespace A294273

/-- `A000540(n)+Δ[A000540(A004526(n))]` -/
def P8803768122035458988.Spec : Prop :=
  ∀ n, P8803768122035458988.a n = A294273 (n + 1)

end A294273

/-! ## A294273.P8522694136197939439

`∑[A033431(n²)]-A294301(n+1)`
-/

namespace A294273.P8522694136197939439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294301 (n + 1)

end

end A294273.P8522694136197939439

namespace A294273

/-- `∑[A033431(n²)]-A294301(n+1)` -/
def P8522694136197939439.Spec : Prop :=
  ∀ n, P8522694136197939439.a n = A294273 (n + 1)

end A294273

/-!
# A294274: Sum of the seventh powers of the parts in the partitions of n into two parts.

The programs for A294274, the canonical program `A294274.P16034422266987753468` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294274 has offset 1).

The definition of A294274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294274.P11512117012303623496

`2*A000541(n)-A294302(n+1)`
-/

namespace A294274.P11512117012303623496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000541 n - A294302 (n + 1)

end

end A294274.P11512117012303623496

namespace A294274

/-- `2*A000541(n)-A294302(n+1)` -/
def P11512117012303623496.Spec : Prop :=
  ∀ n, P11512117012303623496.a n = A294274 (n + 1)

end A294274

/-! ## A294274.P5265455894229419773

`∑[2*A001015(n)]-A294302(n+1)`
-/

namespace A294274.P5265455894229419773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294302 (n + 1)

end

end A294274.P5265455894229419773

namespace A294274

/-- `∑[2*A001015(n)]-A294302(n+1)` -/
def P5265455894229419773.Spec : Prop :=
  ∀ n, P5265455894229419773.a n = A294274 (n + 1)

end A294274

/-! ## A294274.P16034422266987753468

`A001015(∑[n]%(n+1))+A000541(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294274

/-- `A001015(∑[n]%(n+1))+A000541(n)` -/
def P16034422266987753468.Spec : Prop :=
  ∀ n, P16034422266987753468.a n = A294274 (n + 1)

theorem P16034422266987753468.correct : P16034422266987753468.Spec := by
  intro n
  simp only [A294274, Nat.add_sub_cancel]

end A294274

/-! ## A294274.P12743764777520683727

`A001015(∑[A001057(n)])+A000541(n)`
-/

namespace A294274.P12743764777520683727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000541 n

end

end A294274.P12743764777520683727

namespace A294274

/-- `A001015(∑[A001057(n)])+A000541(n)` -/
def P12743764777520683727.Spec : Prop :=
  ∀ n, P12743764777520683727.a n = A294274 (n + 1)

end A294274

/-! ## A294274.P13813765940144452577

`A000541(n)+∑[A001015(n)]-A294302(n+1)`
-/

namespace A294274.P13813765940144452577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n + (∑ j ∈ Finset.range (n + 1), f1 j - A294302 (n + 1))

end

end A294274.P13813765940144452577

namespace A294274

/-- `A000541(n)+∑[A001015(n)]-A294302(n+1)` -/
def P13813765940144452577.Spec : Prop :=
  ∀ n, P13813765940144452577.a n = A294274 (n + 1)

end A294274

/-! ## A294274.P8509327658851500147

`A000541(n)+Δ[A000541(A004526(n))]`
-/

namespace A294274.P8509327658851500147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n + (f1 (n + 1) - f1 n)

end

end A294274.P8509327658851500147

namespace A294274

/-- `A000541(n)+Δ[A000541(A004526(n))]` -/
def P8509327658851500147.Spec : Prop :=
  ∀ n, P8509327658851500147.a n = A294274 (n + 1)

end A294274

/-!
# A294275: Sum of the eighth powers of the parts in the partitions of n into two parts.

The programs for A294275, the canonical program `A294275.P5436868170071859999` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294275 has offset 1).

The definition of A294275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294275.P12350094545975552561

`2*A000542(n)-A294303(n+1)`
-/

namespace A294275.P12350094545975552561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000542 n - A294303 (n + 1)

end

end A294275.P12350094545975552561

namespace A294275

/-- `2*A000542(n)-A294303(n+1)` -/
def P12350094545975552561.Spec : Prop :=
  ∀ n, P12350094545975552561.a n = A294275 (n + 1)

end A294275

/-! ## A294275.P5436868170071859999

`A001016(∑[n]%(n+1))+A000542(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294275

/-- `A001016(∑[n]%(n+1))+A000542(n)` -/
def P5436868170071859999.Spec : Prop :=
  ∀ n, P5436868170071859999.a n = A294275 (n + 1)

theorem P5436868170071859999.correct : P5436868170071859999.Spec := by
  intro n
  simp only [A294275, Nat.add_sub_cancel]

end A294275

/-! ## A294275.P6384764054504252019

`A000542(n)+Δ[A000542(A004526(n))]`
-/

namespace A294275.P6384764054504252019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 n + (f1 (n + 1) - f1 n)

end

end A294275.P6384764054504252019

namespace A294275

/-- `A000542(n)+Δ[A000542(A004526(n))]` -/
def P6384764054504252019.Spec : Prop :=
  ∀ n, P6384764054504252019.a n = A294275 (n + 1)

end A294275

/-!
# A294276: Sum of the ninth powers of the parts in the partitions of n into two parts.

The programs for A294276, the canonical program `A294276.P11196550552926364073` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294276 has offset 1).

The definition of A294276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294276.P11196550552926364073

`Δ[A007487(floor(n/2))]+∑[n^9]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294276

/-- `Δ[A007487(floor(n/2))]+∑[n^9]` -/
def P11196550552926364073.Spec : Prop :=
  ∀ n, P11196550552926364073.a n = A294276 (n + 1)

theorem P11196550552926364073.correct : P11196550552926364073.Spec := by
  intro n
  simp only [A294276, Nat.add_sub_cancel]

end A294276

/-! ## A294276.P9841376699043101707

`2*A007487(n)-A294304(n+1)`
-/

namespace A294276.P9841376699043101707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007487 n - A294304 (n + 1)

end

end A294276.P9841376699043101707

namespace A294276

/-- `2*A007487(n)-A294304(n+1)` -/
def P9841376699043101707.Spec : Prop :=
  ∀ n, P9841376699043101707.a n = A294276 (n + 1)

end A294276

/-! ## A294276.P15971258600363203013

`A007487(n)+Δ[A007487(floor(n/2))]`
-/

namespace A294276.P15971258600363203013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 n + (f1 (n + 1) - f1 n)

end

end A294276.P15971258600363203013

namespace A294276

/-- `A007487(n)+Δ[A007487(floor(n/2))]` -/
def P15971258600363203013.Spec : Prop :=
  ∀ n, P15971258600363203013.a n = A294276 (n + 1)

end A294276

/-!
# A294277: Numbers k such that omega(k) < omega(k+1) (where omega(m) = A001221(m), the number of distinct primes dividing m).

The programs for A294277, the canonical program `A294277.P10908964768847956680` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294277 has offset 1).

The definition of A294277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294277.P10908964768847956680

`lt[A001221(n+1), A001221(n+2)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A294277

/-- `lt[A001221(n+1), A001221(n+2)]+1` -/
def P10908964768847956680.Spec : Prop :=
  ∀ n, (P10908964768847956680.a n : ℤ) = A294277 (n + 1)

theorem P10908964768847956680.correct : P10908964768847956680.Spec := by
  intro n
  simp only [A294277, Nat.add_sub_cancel]

end A294277

/-! ## A294277.P17799970892406265704

`lt[1, Δ[A000005(∏{p}[n, #])²]]`
-/

namespace A294277.P17799970892406265704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f4 n), p) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294277.P17799970892406265704

namespace A294277

/-- `lt[1, Δ[A000005(∏{p}[n, #])²]]` -/
def P17799970892406265704.Spec : Prop :=
  ∀ n, (P17799970892406265704.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P3133212480871467615

`lt[1, A248211(n+1)+1]+1`
-/

namespace A294277.P3133212480871467615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248211 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A294277.P3133212480871467615

namespace A294277

/-- `lt[1, A248211(n+1)+1]+1` -/
def P3133212480871467615.Spec : Prop :=
  ∀ n, (P3133212480871467615.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P8550496089417364036

`lt[5/7, Δ[∑{p}[n, A001222(#)]²]]`
-/

namespace A294277.P8550496089417364036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 7

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f4 n), A001222 p) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A294277.P8550496089417364036

namespace A294277

/-- `lt[5/7, Δ[∑{p}[n, A001222(#)]²]]` -/
def P8550496089417364036.Spec : Prop :=
  ∀ n, (P8550496089417364036.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P8495263925496488850

`lt[1, 40*Δ[A001222(∏{p}[n, #])²]]`
-/

namespace A294277.P8495263925496488850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f4 n), p) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * (f3 (n + 1) - f3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294277.P8495263925496488850

namespace A294277

/-- `lt[1, 40*Δ[A001222(∏{p}[n, #])²]]` -/
def P8495263925496488850.Spec : Prop :=
  ∀ n, (P8495263925496488850.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P3358049002155646521

`lt[∑{p}[n, A001221(#)], A001221(n+1)]`
-/

namespace A294277.P3358049002155646521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A001221 p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A294277.P3358049002155646521

namespace A294277

/-- `lt[∑{p}[n, A001221(#)], A001221(n+1)]` -/
def P3358049002155646521.Spec : Prop :=
  ∀ n, (P3358049002155646521.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P7941649674907196985

`lt[A001221(∏{p}[n, #]), A001221(n+1)]`
-/

namespace A294277.P7941649674907196985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f2 n), p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A294277.P7941649674907196985

namespace A294277

/-- `lt[A001221(∏{p}[n, #]), A001221(n+1)]` -/
def P7941649674907196985.Spec : Prop :=
  ∀ n, (P7941649674907196985.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P1008200689759064839

`lt[A001221(A028310(n)), A001221(n+1)]`
-/

namespace A294277.P1008200689759064839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294277.P1008200689759064839

namespace A294277

/-- `lt[A001221(A028310(n)), A001221(n+1)]` -/
def P1008200689759064839.Spec : Prop :=
  ∀ n, (P1008200689759064839.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P2497459474285991315

`lt[A034444(A028310(n)), A034444(n+1)]`
-/

namespace A294277.P2497459474285991315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294277.P2497459474285991315

namespace A294277

/-- `lt[A034444(A028310(n)), A034444(n+1)]` -/
def P2497459474285991315.Spec : Prop :=
  ∀ n, (P2497459474285991315.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P61149576873473122

`lt[A074816(A028310(n)), A074816(n+1)]`
-/

namespace A294277.P61149576873473122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294277.P61149576873473122

namespace A294277

/-- `lt[A074816(A028310(n)), A074816(n+1)]` -/
def P61149576873473122.Spec : Prop :=
  ∀ n, (P61149576873473122.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P3671188846344730481

`lt[A001221(A257088(n)), A001221(n+1)]`
-/

namespace A294277.P3671188846344730481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294277.P3671188846344730481

namespace A294277

/-- `lt[A001221(A257088(n)), A001221(n+1)]` -/
def P3671188846344730481.Spec : Prop :=
  ∀ n, (P3671188846344730481.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P3403023035783219289

`lt[A074816(A257088(n)), A074816(n+1)]`
-/

namespace A294277.P3403023035783219289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294277.P3403023035783219289

namespace A294277

/-- `lt[A074816(A257088(n)), A074816(n+1)]` -/
def P3403023035783219289.Spec : Prop :=
  ∀ n, (P3403023035783219289.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P970252614430709317

`lt[A034444(A257088(n)), A034444(n+1)]`
-/

namespace A294277.P970252614430709317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294277.P970252614430709317

namespace A294277

/-- `lt[A034444(A257088(n)), A034444(n+1)]` -/
def P970252614430709317.Spec : Prop :=
  ∀ n, (P970252614430709317.a n : ℤ) = A294277 (n + 1)

end A294277

/-! ## A294277.P12533939628913020398

`lt[A001221(A253909(n)), A001221(n+1)]`
-/

namespace A294277.P12533939628913020398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A253909 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294277.P12533939628913020398

namespace A294277

/-- `lt[A001221(A253909(n)), A001221(n+1)]` -/
def P12533939628913020398.Spec : Prop :=
  ∀ n, (P12533939628913020398.a n : ℤ) = A294277 (n + 1)

end A294277

/-!
# A294278: Numbers k such that omega(k) > omega(k+1) (where omega(m) = A001221(m), the number of distinct primes dividing m).

The programs for A294278, the canonical program `A294278.P17650262410649944853` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294278 has offset 1).

The definition of A294278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294278.P4393307828471331915

`lt[A001221(n+1), ∑{p}[n, A001221(#)]]`
-/

namespace A294278.P4393307828471331915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A001221 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P4393307828471331915

namespace A294278

/-- `lt[A001221(n+1), ∑{p}[n, A001221(#)]]` -/
def P4393307828471331915.Spec : Prop :=
  ∀ n, (P4393307828471331915.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P13601981197743414254

`lt[A001221(n+1), A001221(∏{p}[n, #])]`
-/

namespace A294278.P13601981197743414254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P13601981197743414254

namespace A294278

/-- `lt[A001221(n+1), A001221(∏{p}[n, #])]` -/
def P13601981197743414254.Spec : Prop :=
  ∀ n, (P13601981197743414254.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P17522521803137850342

`lt[A001221(n+1), A001221(A028310(n))]`
-/

namespace A294278.P17522521803137850342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P17522521803137850342

namespace A294278

/-- `lt[A001221(n+1), A001221(A028310(n))]` -/
def P17522521803137850342.Spec : Prop :=
  ∀ n, (P17522521803137850342.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P17650262410649944853

`lt[A007875(n+1), A007875(A028310(n))]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A294278

/-- `lt[A007875(n+1), A007875(A028310(n))]` -/
def P17650262410649944853.Spec : Prop :=
  ∀ n, (P17650262410649944853.a n : ℤ) = A294278 (n + 1)

theorem P17650262410649944853.correct : P17650262410649944853.Spec := by
  intro n
  simp only [A294278, Nat.add_sub_cancel]

end A294278

/-! ## A294278.P13436736882197243615

`lt[A034444(n+1), A034444(A028310(n))]`
-/

namespace A294278.P13436736882197243615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P13436736882197243615

namespace A294278

/-- `lt[A034444(n+1), A034444(A028310(n))]` -/
def P13436736882197243615.Spec : Prop :=
  ∀ n, (P13436736882197243615.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P13547785015036392634

`lt[A074816(n+1), A074816(A028310(n))]`
-/

namespace A294278.P13547785015036392634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P13547785015036392634

namespace A294278

/-- `lt[A074816(n+1), A074816(A028310(n))]` -/
def P13547785015036392634.Spec : Prop :=
  ∀ n, (P13547785015036392634.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P7394504895085327061

`lt[A001221(n+1), A001221(A257088(n))]`
-/

namespace A294278.P7394504895085327061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P7394504895085327061

namespace A294278

/-- `lt[A001221(n+1), A001221(A257088(n))]` -/
def P7394504895085327061.Spec : Prop :=
  ∀ n, (P7394504895085327061.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P4620678432895870591

`lt[A001221(n+1), A001221(A055456(n+1))]`
-/

namespace A294278.P4620678432895870591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P4620678432895870591

namespace A294278

/-- `lt[A001221(n+1), A001221(A055456(n+1))]` -/
def P4620678432895870591.Spec : Prop :=
  ∀ n, (P4620678432895870591.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P8119465319867535315

`lt[A074816(n+1), A074816(A257088(n))]`
-/

namespace A294278.P8119465319867535315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P8119465319867535315

namespace A294278

/-- `lt[A074816(n+1), A074816(A257088(n))]` -/
def P8119465319867535315.Spec : Prop :=
  ∀ n, (P8119465319867535315.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P14652210672090617866

`lt[A007875(n+1), A007875(A257088(n))]`
-/

namespace A294278.P14652210672090617866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P14652210672090617866

namespace A294278

/-- `lt[A007875(n+1), A007875(A257088(n))]` -/
def P14652210672090617866.Spec : Prop :=
  ∀ n, (P14652210672090617866.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P17386237707489673749

`lt[A034444(n+1), A034444(A257088(n))]`
-/

namespace A294278.P17386237707489673749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P17386237707489673749

namespace A294278

/-- `lt[A034444(n+1), A034444(A257088(n))]` -/
def P17386237707489673749.Spec : Prop :=
  ∀ n, (P17386237707489673749.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P8781092992650175305

`lt[A087802(n+1), A087802(A028310(n))]`
-/

namespace A294278.P8781092992650175305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P8781092992650175305

namespace A294278

/-- `lt[A087802(n+1), A087802(A028310(n))]` -/
def P8781092992650175305.Spec : Prop :=
  ∀ n, (P8781092992650175305.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P3902988245944247116

`lt[A087802(n+1), A087802(A257088(n))]`
-/

namespace A294278.P3902988245944247116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P3902988245944247116

namespace A294278

/-- `lt[A087802(n+1), A087802(A257088(n))]` -/
def P3902988245944247116.Spec : Prop :=
  ∀ n, (P3902988245944247116.a n : ℤ) = A294278 (n + 1)

end A294278

/-! ## A294278.P13681355368807478601

`lt[A001221(n+1), A001221(A253909(n))]`
-/

namespace A294278.P13681355368807478601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P13681355368807478601

namespace A294278

/-- `lt[A001221(n+1), A001221(A253909(n))]` -/
def P13681355368807478601.Spec : Prop :=
  ∀ n, (P13681355368807478601.a n : ℤ) = A294278 (n + 1)

end A294278

/-!
# A294280: a(n) = least positive k such that omega(n+k) > max(omega(n), omega(k)), where omega(m) = A001221(m), the number of distinct primes dividing m.

The programs for A294280, there is no canonical definition to state claims against.
-/

/-! ## A294280.P13141864216984077717

`A079892(n+1)-(n+1)%A137929(A079892(n+2)+1)`
-/

namespace A294280.P13141864216984077717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079892 (n + 1) - Int.tmod (n + 1 : ℤ) (A137929 (A079892 (n + 2) + 1).toNat)

end

end A294280.P13141864216984077717

/-! ## A294280.P14875146281588257190

`A079892(n+1)-(n+1)%A079889(n+1)`
-/

namespace A294280.P14875146281588257190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079892 (n + 1) - Int.tmod (n + 1 : ℤ) (A079889 (n + 1))

end

end A294280.P14875146281588257190

/-! ## A294280.P10050310575718803529

`A079892(n+1)-A135044(A135044(n+1))`
-/

namespace A294280.P10050310575718803529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079892 (n + 1) - A135044 (A135044 (n + 1)).toNat

end

end A294280.P10050310575718803529

/-! ## A294280.P1440803088600987060

`A079892(n+1)-A167662(A328617(n+1))`
-/

namespace A294280.P1440803088600987060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079892 (n + 1) - A167662 (A328617 (n + 1)).toNat

end

end A294280.P1440803088600987060

/-!
# A294281: Number of ascent sequences of length n with alternating ascents and descents (unaffected by level steps).

The programs for A294281, there is no canonical definition to state claims against.
-/

/-! ## A294281.P7001915994077338810

`A058032(A148942(n))`
-/

namespace A294281.P7001915994077338810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058032 (A148942 n).toNat

end

end A294281.P7001915994077338810

/-! ## A294281.P10348592522440255785

`ceil(sqrt(A175540(n!)))`
-/

namespace A294281.P10348592522440255785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A175540 (Nat.factorial n) : ℝ)⌉

end

end A294281.P10348592522440255785

/-! ## A294281.P1718098149424237943

`round(sqrt(A090420(n!)))`
-/

namespace A294281.P1718098149424237943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A090420 (Nat.factorial n) : ℝ))

end

end A294281.P1718098149424237943

/-! ## A294281.P15114455941547746202

`A055086(A008933(n))`
-/

namespace A294281.P15114455941547746202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A008933 n).toNat

end

end A294281.P15114455941547746202

/-!
# A294282: Integers with precisely four partitions into sums of four squares of nonnegative numbers.

The programs for A294282, there is no canonical definition to state claims against.
-/

/-! ## A294282.P12508437849547717342

`eq[4, A002635(n)]`
-/

namespace A294282.P12508437849547717342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294282.P12508437849547717342

/-! ## A294282.P10529504222083422350

`eq[4, A025428(n)+A000164(n)]`
-/

namespace A294282.P10529504222083422350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294282.P10529504222083422350

/-! ## A294282.P2701672695519494737

`eq[A025429(n)+4, A000174(n)]`
-/

namespace A294282.P2701672695519494737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294282.P2701672695519494737

/-! ## A294282.P18175628852015956681

`eq[A000174(n), A020705(A025429(n))]`
-/

namespace A294282.P18175628852015956681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294282.P18175628852015956681

/-! ## A294282.P6610085546653574250

`eq[4, A000161(n)+A025428(n)+A025427(n)]`
-/

namespace A294282.P6610085546653574250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + (A025428 n + A025427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294282.P6610085546653574250

/-!
# A294283: Sum of the larger parts of the partitions of n into two distinct parts with smaller part squarefree.

The programs for A294283, the canonical program `A294283.P1633113175361013834` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294283 has offset 1).

The definition of A294283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294283.P4293883781271533909

`∑[A013928(n+1)]-A294145(n+1)`
-/

namespace A294283.P4293883781271533909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294145 (n + 1)

end

end A294283.P4293883781271533909

namespace A294283

/-- `∑[A013928(n+1)]-A294145(n+1)` -/
def P4293883781271533909.Spec : Prop :=
  ∀ n, P4293883781271533909.a n = A294283 (n + 1)

end A294283

/-! ## A294283.P9341291658768445435

`∑[A107079(n+1)-1]-A294145(n+1)`
-/

namespace A294283.P9341291658768445435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294145 (n + 1)

end

end A294283.P9341291658768445435

namespace A294283

/-- `∑[A107079(n+1)-1]-A294145(n+1)` -/
def P9341291658768445435.Spec : Prop :=
  ∀ n, P9341291658768445435.a n = A294283 (n + 1)

end A294283

/-! ## A294283.P1633113175361013834

`A294060(n+1)+A262871(A028310(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A294283

/-- `A294060(n+1)+A262871(A028310(n))` -/
def P1633113175361013834.Spec : Prop :=
  ∀ n, P1633113175361013834.a n = A294283 (n + 1)

theorem P1633113175361013834.correct : P1633113175361013834.Spec := by
  intro n
  simp only [A294283, Nat.add_sub_cancel]

end A294283

/-! ## A294283.P10992138407125594566

`A294060(n+1)+A262871(A109613(n))`
-/

namespace A294283.P10992138407125594566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294060 (n + 1) + A262871 (A109613 n).toNat

end

end A294283.P10992138407125594566

namespace A294283

/-- `A294060(n+1)+A262871(A109613(n))` -/
def P10992138407125594566.Spec : Prop :=
  ∀ n, P10992138407125594566.a n = A294283 (n + 1)

end A294283

/-! ## A294283.P9628450028311481242

`A294146(n+1)+A294285(n+1)-A262870(n+1)`
-/

namespace A294283.P9628450028311481242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (n + 1) + (A294285 (n + 1) - A262870 (n + 1))

end

end A294283.P9628450028311481242

namespace A294283

/-- `A294146(n+1)+A294285(n+1)-A262870(n+1)` -/
def P9628450028311481242.Spec : Prop :=
  ∀ n, P9628450028311481242.a n = A294283 (n + 1)

end A294283

/-! ## A294283.P2751067900843421879

`A294146(n+1)+A294284(n+1)-A294145(n+1)`
-/

namespace A294283.P2751067900843421879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (n + 1) + (A294284 (n + 1) - A294145 (n + 1))

end

end A294283.P2751067900843421879

namespace A294283

/-- `A294146(n+1)+A294284(n+1)-A294145(n+1)` -/
def P2751067900843421879.Spec : Prop :=
  ∀ n, P2751067900843421879.a n = A294283 (n + 1)

end A294283

/-! ## A294283.P4951607731309510615

`A294146(A028310(n))+A262869(A028310(n))`
-/

namespace A294283.P4951607731309510615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (A028310 n).toNat + A262869 (A028310 n).toNat

end

end A294283.P4951607731309510615

namespace A294283

/-- `A294146(A028310(n))+A262869(A028310(n))` -/
def P4951607731309510615.Spec : Prop :=
  ∀ n, P4951607731309510615.a n = A294283 (n + 1)

end A294283

/-! ## A294283.P5006345678299869167

`∑[A262869(Δ[n²])]-A294145(n+1)`
-/

namespace A294283.P5006345678299869167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294145 (n + 1)

end

end A294283.P5006345678299869167

namespace A294283

/-- `∑[A262869(Δ[n²])]-A294145(n+1)` -/
def P5006345678299869167.Spec : Prop :=
  ∀ n, P5006345678299869167.a n = A294283 (n + 1)

end A294283

/-! ## A294283.P2008435822487978379

`A004525(Δ[(n+1)*A294060(abs(1-n)+1)])`
-/

namespace A294283.P2008435822487978379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294060 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A294283.P2008435822487978379

namespace A294283

/-- `A004525(Δ[(n+1)*A294060(abs(1-n)+1)])` -/
def P2008435822487978379.Spec : Prop :=
  ∀ n, P2008435822487978379.a n = A294283 (n + 1)

end A294283

/-! ## A294283.P8542411296557952900

`A004526(Δ[(n+1)*A294060(abs(1-n)+1)])`
-/

namespace A294283.P8542411296557952900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294060 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A294283.P8542411296557952900

namespace A294283

/-- `A004526(Δ[(n+1)*A294060(abs(1-n)+1)])` -/
def P8542411296557952900.Spec : Prop :=
  ∀ n, P8542411296557952900.a n = A294283 (n + 1)

end A294283

/-!
# A294284: Sum of the smaller parts of the partitions of n into two distinct parts with larger part squarefree.

The programs for A294284, the canonical program `A294284.P6326353456023793442` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294284 has offset 1).

The definition of A294284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294284.P6812891445779430538

`A294285(n+1)-A294061(n+1)`
-/

namespace A294284.P6812891445779430538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294285 (n + 1) - A294061 (n + 1)

end

end A294284.P6812891445779430538

namespace A294284

/-- `A294285(n+1)-A294061(n+1)` -/
def P6812891445779430538.Spec : Prop :=
  ∀ n, P6812891445779430538.a n = A294284 (n + 1)

end A294284

/-! ## A294284.P6326353456023793442

`∑[A013928(n+1)]-A294146(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A294284

/-- `∑[A013928(n+1)]-A294146(n+1)` -/
def P6326353456023793442.Spec : Prop :=
  ∀ n, P6326353456023793442.a n = A294284 (n + 1)

theorem P6326353456023793442.correct : P6326353456023793442.Spec := by
  intro n
  simp only [A294284, Nat.add_sub_cancel]

end A294284

/-! ## A294284.P4100949492514597931

`∑[A262868(n+1)]-A262871(n+1)`
-/

namespace A294284.P4100949492514597931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A262871 (n + 1)

end

end A294284.P4100949492514597931

namespace A294284

/-- `∑[A262868(n+1)]-A262871(n+1)` -/
def P4100949492514597931.Spec : Prop :=
  ∀ n, P4100949492514597931.a n = A294284 (n + 1)

end A294284

/-! ## A294284.P11823147922356487540

`∑[A013928(n+1)]+A294237(n+1)-A001318(n)`
-/

namespace A294284.P11823147922356487540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A294237 (n + 1) - A001318 n)

end

end A294284.P11823147922356487540

namespace A294284

/-- `∑[A013928(n+1)]+A294237(n+1)-A001318(n)` -/
def P11823147922356487540.Spec : Prop :=
  ∀ n, P11823147922356487540.a n = A294284 (n + 1)

end A294284

/-! ## A294284.P15221091275026714886

`A294237(n+1)+∑[A013928(n+1)-A026741(n)]`
-/

namespace A294284.P15221091275026714886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294237 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294284.P15221091275026714886

namespace A294284

/-- `A294237(n+1)+∑[A013928(n+1)-A026741(n)]` -/
def P15221091275026714886.Spec : Prop :=
  ∀ n, P15221091275026714886.a n = A294284 (n + 1)

end A294284

/-! ## A294284.P1943879605106564797

`∑[A110654(n)-A294235(n+1)]-A262871(n+1)`
-/

namespace A294284.P1943879605106564797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A294235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A262871 (n + 1)

end

end A294284.P1943879605106564797

namespace A294284

/-- `∑[A110654(n)-A294235(n+1)]-A262871(n+1)` -/
def P1943879605106564797.Spec : Prop :=
  ∀ n, P1943879605106564797.a n = A294284 (n + 1)

end A294284

/-! ## A294284.P4262632884310397459

`A294145(n+1)+A294283(n+1)-A294146(n+1)`
-/

namespace A294284.P4262632884310397459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294145 (n + 1) + (A294283 (n + 1) - A294146 (n + 1))

end

end A294284.P4262632884310397459

namespace A294284

/-- `A294145(n+1)+A294283(n+1)-A294146(n+1)` -/
def P4262632884310397459.Spec : Prop :=
  ∀ n, P4262632884310397459.a n = A294284 (n + 1)

end A294284

/-! ## A294284.P6660710650407186418

`A294145(n+2)-A262868(n+2)`
-/

namespace A294284.P6660710650407186418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294145 (n + 2) - A262868 (n + 2)

end

end A294284.P6660710650407186418

namespace A294284

/-- `A294145(n+2)-A262868(n+2)` -/
def P6660710650407186418.Spec : Prop :=
  ∀ n, P6660710650407186418.a n = A294284 (n + 1)

end A294284

/-! ## A294284.P8395887375193435661

`∑[A013928(n+1)]-Δ[n/2*A294060(n+1)]`
-/

namespace A294284.P8395887375193435661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A294060 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (f2 (n + 1) - f2 n)

end

end A294284.P8395887375193435661

namespace A294284

/-- `∑[A013928(n+1)]-Δ[n/2*A294060(n+1)]` -/
def P8395887375193435661.Spec : Prop :=
  ∀ n, P8395887375193435661.a n = (A294284 (n + 1) : ℚ)

end A294284

/-! ## A294284.P16886986909850438045

`∑[A262868(n+1)]-∑[A180322(n+1)%(n+1)]`
-/

namespace A294284.P16886986909850438045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180322 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A294284.P16886986909850438045

namespace A294284

/-- `∑[A262868(n+1)]-∑[A180322(n+1)%(n+1)]` -/
def P16886986909850438045.Spec : Prop :=
  ∀ n, P16886986909850438045.a n = A294284 (n + 1)

end A294284

/-! ## A294284.P8726034484244705805

`∑[A013928(n+1)]-A004525(Δ[n*A294060(n+1)])`
-/

namespace A294284.P8726034484244705805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004525 (f2 (n + 1) - f2 n).toNat

end

end A294284.P8726034484244705805

namespace A294284

/-- `∑[A013928(n+1)]-A004525(Δ[n*A294060(n+1)])` -/
def P8726034484244705805.Spec : Prop :=
  ∀ n, P8726034484244705805.a n = A294284 (n + 1)

end A294284

/-! ## A294284.P13650585975272196905

`∑[A013928(n+1)]-A004526(Δ[n*A294060(n+1)])`
-/

namespace A294284.P13650585975272196905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 (f2 (n + 1) - f2 n).toNat

end

end A294284.P13650585975272196905

namespace A294284

/-- `∑[A013928(n+1)]-A004526(Δ[n*A294060(n+1)])` -/
def P13650585975272196905.Spec : Prop :=
  ∀ n, P13650585975272196905.a n = A294284 (n + 1)

end A294284

/-!
# A294285: Sum of the larger parts of the partitions of n into two distinct parts with larger part squarefree.

The programs for A294285, the canonical program `A294285.P4641961170870907035` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294285 has offset 1).

The definition of A294285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294285.P4641961170870907035

`∑[n*char[∏{p}[n, #]]]-A262871(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A294285

/-- `∑[n*char[∏{p}[n, #]]]-A262871(n+1)` -/
def P4641961170870907035.Spec : Prop :=
  ∀ n, P4641961170870907035.a n = A294285 (n + 1)

theorem P4641961170870907035.correct : P4641961170870907035.Spec := by
  intro n
  simp only [A294285, Nat.add_sub_cancel]

end A294285

/-! ## A294285.P6919010921588886898

`A294284(n+1)+A294061(n+1)`
-/

namespace A294285.P6919010921588886898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294284 (n + 1) + A294061 (n + 1)

end

end A294285.P6919010921588886898

namespace A294285

/-- `A294284(n+1)+A294061(n+1)` -/
def P6919010921588886898.Spec : Prop :=
  ∀ n, P6919010921588886898.a n = A294285 (n + 1)

end A294285

/-! ## A294285.P3850800819487898845

`A262870(n+1)+A294283(n+1)-A294146(n+1)`
-/

namespace A294285.P3850800819487898845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (n + 1) + (A294283 (n + 1) - A294146 (n + 1))

end

end A294285.P3850800819487898845

namespace A294285

/-- `A262870(n+1)+A294283(n+1)-A294146(n+1)` -/
def P3850800819487898845.Spec : Prop :=
  ∀ n, P3850800819487898845.a n = A294285 (n + 1)

end A294285

/-! ## A294285.P4207537816017859617

`A262870(n+1)+A294284(n+1)-A294145(n+1)`
-/

namespace A294285.P4207537816017859617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (n + 1) + (A294284 (n + 1) - A294145 (n + 1))

end

end A294285.P4207537816017859617

namespace A294285

/-- `A262870(n+1)+A294284(n+1)-A294145(n+1)` -/
def P4207537816017859617.Spec : Prop :=
  ∀ n, P4207537816017859617.a n = A294285 (n + 1)

end A294285

/-! ## A294285.P12561294348074739091

`∑[A262868(n+1)]+A294061(n+1)-A262871(n+1)`
-/

namespace A294285.P12561294348074739091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A294061 (n + 1) - A262871 (n + 1))

end

end A294285.P12561294348074739091

namespace A294285

/-- `∑[A262868(n+1)]+A294061(n+1)-A262871(n+1)` -/
def P12561294348074739091.Spec : Prop :=
  ∀ n, P12561294348074739091.a n = A294285 (n + 1)

end A294285

/-! ## A294285.P5647938147676639468

`A294284(n+1)+A262870(n+1)+A057428(n)*A294145(n+1)`
-/

namespace A294285.P5647938147676639468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294284 (n + 1) + (A262870 (n + 1) + A057428 n * A294145 (n + 1))

end

end A294285.P5647938147676639468

namespace A294285

/-- `A294284(n+1)+A262870(n+1)+A057428(n)*A294145(n+1)` -/
def P5647938147676639468.Spec : Prop :=
  ∀ n, P5647938147676639468.a n = A294285 (n + 1)

end A294285

/-! ## A294285.P9398023487810503253

`A294284(n+1)+A262992(n+1)-(A294145(n+1)+A262871(n+1))`
-/

namespace A294285.P9398023487810503253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294284 (n + 1) + (A262992 (n + 1) - (A294145 (n + 1) + A262871 (n + 1)))

end

end A294285.P9398023487810503253

namespace A294285

/-- `A294284(n+1)+A262992(n+1)-(A294145(n+1)+A262871(n+1))` -/
def P9398023487810503253.Spec : Prop :=
  ∀ n, P9398023487810503253.a n = A294285 (n + 1)

end A294285

/-! ## A294285.P6760690124816751541

`A262871(Δ[n²])-A262871(n+1)`
-/

namespace A294285.P6760690124816751541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262871 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A262871 (n + 1)

end

end A294285.P6760690124816751541

namespace A294285

/-- `A262871(Δ[n²])-A262871(n+1)` -/
def P6760690124816751541.Spec : Prop :=
  ∀ n, P6760690124816751541.a n = A294285 (n + 1)

end A294285

/-! ## A294285.P116417921333168199

`A262870(n+1)-A056278(n+1)%(n+1)`
-/

namespace A294285.P116417921333168199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (n + 1) - Int.tmod (A056278 (n + 1)) (n + 1 : ℤ)

end

end A294285.P116417921333168199

namespace A294285

/-- `A262870(n+1)-A056278(n+1)%(n+1)` -/
def P116417921333168199.Spec : Prop :=
  ∀ n, P116417921333168199.a n = A294285 (n + 1)

end A294285

/-!
# A294286: Sum of the squares of the parts in the partitions of n into two distinct parts.

The programs for A294286, the canonical program `A294286.P16499664574624147986` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294286 has offset 1).

The definition of A294286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294286.P16499664574624147986

`(n+1)*(2*(n+1)²-3*(n+1)*(5+(-1)^(n+1))/4+1)/6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294286

/-- `(n+1)*(2*(n+1)²-3*(n+1)*(5+(-1)^(n+1))/4+1)/6` -/
def P16499664574624147986.Spec : Prop :=
  ∀ n, P16499664574624147986.a n = (A294286 (n + 1) : ℚ)

end A294286

/-! ## A294286.P17468326990741981154

`∑[n²]-(∑[n]%(n+1))²`
-/

namespace A294286.P17468326990741981154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)) ^ 2 : ℕ) : ℤ)

end

end A294286.P17468326990741981154

namespace A294286

/-- `∑[n²]-(∑[n]%(n+1))²` -/
def P17468326990741981154.Spec : Prop :=
  ∀ n, P17468326990741981154.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P14208737311170478755

`A294473(n+1)/2`
-/

namespace A294286.P14208737311170478755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294473 (n + 1) : ℚ) / 2

end

end A294286.P14208737311170478755

namespace A294286

/-- `A294473(n+1)/2` -/
def P14208737311170478755.Spec : Prop :=
  ∀ n, P14208737311170478755.a n = (A294286 (n + 1) : ℚ)

end A294286

/-! ## A294286.P10548491173142760253

`∑[2*n²]-A226141(n+1)`
-/

namespace A294286.P10548491173142760253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A226141 (n + 1)

end

end A294286.P10548491173142760253

namespace A294286

/-- `∑[2*n²]-A226141(n+1)` -/
def P10548491173142760253.Spec : Prop :=
  ∀ n, P10548491173142760253.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P5752100812469126821

`A367993(n+2)-A002415(n)`
-/

namespace A294286.P5752100812469126821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367993 (n + 2) - A002415 n

end

end A294286.P5752100812469126821

namespace A294286

/-- `A367993(n+2)-A002415(n)` -/
def P5752100812469126821.Spec : Prop :=
  ∀ n, P5752100812469126821.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P17858204792853316277

`A298992(n+1)-A080838(n+1)`
-/

namespace A294286.P17858204792853316277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298992 (n + 1) - A080838 (n + 1)

end

end A294286.P17858204792853316277

namespace A294286

/-- `A298992(n+1)-A080838(n+1)` -/
def P17858204792853316277.Spec : Prop :=
  ∀ n, P17858204792853316277.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P6217702363462193212

`(A024598(n+1)-A179297(n+1))/2`
-/

namespace A294286.P6217702363462193212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024598 (n + 1) - A179297 (n + 1) : ℚ) / 2

end

end A294286.P6217702363462193212

namespace A294286

/-- `(A024598(n+1)-A179297(n+1))/2` -/
def P6217702363462193212.Spec : Prop :=
  ∀ n, P6217702363462193212.a n = (A294286 (n + 1) : ℚ)

end A294286

/-! ## A294286.P1212336654144261477

`A000330(n)-(A000035(n)*A008619(n))²`
-/

namespace A294286.P1212336654144261477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - (A000035 n * A008619 n) ^ 2

end

end A294286.P1212336654144261477

namespace A294286

/-- `A000330(n)-(A000035(n)*A008619(n))²` -/
def P1212336654144261477.Spec : Prop :=
  ∀ n, P1212336654144261477.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P17997522782617581082

`∑[n²]-A142150(n+1)²`
-/

namespace A294286.P17997522782617581082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A142150 (n + 1) ^ 2

end

end A294286.P17997522782617581082

namespace A294286

/-- `∑[n²]-A142150(n+1)²` -/
def P17997522782617581082.Spec : Prop :=
  ∀ n, P17997522782617581082.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P12160006921483613722

`A000330(n)-Δ[A000330(A004526(n))]`
-/

namespace A294286.P12160006921483613722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - (f1 (n + 1) - f1 n)

end

end A294286.P12160006921483613722

namespace A294286

/-- `A000330(n)-Δ[A000330(A004526(n))]` -/
def P12160006921483613722.Spec : Prop :=
  ∀ n, P12160006921483613722.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P12493170522205556677

`A000330(n)-A142150(n+1)*A142150(n+1)`
-/

namespace A294286.P12493170522205556677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - A142150 (n + 1) * A142150 (n + 1)

end

end A294286.P12493170522205556677

namespace A294286

/-- `A000330(n)-A142150(n+1)*A142150(n+1)` -/
def P12493170522205556677.Spec : Prop :=
  ∀ n, P12493170522205556677.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P5696442781958502905

`A295320(A042964(n+1))`
-/

namespace A294286.P5696442781958502905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295320 (A042964 (n + 1)).toNat

end

end A294286.P5696442781958502905

namespace A294286

/-- `A295320(A042964(n+1))` -/
def P5696442781958502905.Spec : Prop :=
  ∀ n, P5696442781958502905.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P8524751740049872462

`A295320(A053438(n+1))`
-/

namespace A294286.P8524751740049872462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295320 (A053438 (n + 1)).toNat

end

end A294286.P8524751740049872462

namespace A294286

/-- `A295320(A053438(n+1))` -/
def P8524751740049872462.Spec : Prop :=
  ∀ n, P8524751740049872462.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P2490998924145994283

`A295320(A042963(n+1)+1)`
-/

namespace A294286.P2490998924145994283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295320 (A042963 (n + 1) + 1).toNat

end

end A294286.P2490998924145994283

namespace A294286

/-- `A295320(A042963(n+1)+1)` -/
def P2490998924145994283.Spec : Prop :=
  ∀ n, P2490998924145994283.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P4393416263610281317

`A295293(A109613(n)+n)+A002620(n)`
-/

namespace A294286.P4393416263610281317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (A109613 n + (n : ℤ)).toNat + A002620 n

end

end A294286.P4393416263610281317

namespace A294286

/-- `A295293(A109613(n)+n)+A002620(n)` -/
def P4393416263610281317.Spec : Prop :=
  ∀ n, P4393416263610281317.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P489346485186418441

`A295320(lt[A295292(n+1), A295293(n+1)])`
-/

namespace A294286.P489346485186418441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295320 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A294286.P489346485186418441

namespace A294286

/-- `A295320(lt[A295292(n+1), A295293(n+1)])` -/
def P489346485186418441.Spec : Prop :=
  ∀ n, P489346485186418441.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P6289538861822890815

`A295320(lt[A295318(n+1), A295293(n+1)])`
-/

namespace A294286.P6289538861822890815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295320 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A294286.P6289538861822890815

namespace A294286

/-- `A295320(lt[A295318(n+1), A295293(n+1)])` -/
def P6289538861822890815.Spec : Prop :=
  ∀ n, P6289538861822890815.a n = A294286 (n + 1)

end A294286

/-! ## A294286.P6308186303507783897

`A394927(A050187(n+1))`
-/

namespace A294286.P6308186303507783897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394927 (A050187 (n + 1)).toNat

end

end A294286.P6308186303507783897

namespace A294286

/-- `A394927(A050187(n+1))` -/
def P6308186303507783897.Spec : Prop :=
  ∀ n, P6308186303507783897.a n = A294286 (n + 1)

end A294286

/-!
# A294287: Sum of the cubes of the parts in the partitions of n into two distinct parts.

The programs for A294287, the canonical program `A294287.P13262746347511189379` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294287 has offset 1).

The definition of A294287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294287.P13262746347511189379

`1/16*(n+1)²*(4-(9+(-1)^(n+1))*(n+1)+4*(n+1)²)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294287

/-- `1/16*(n+1)²*(4-(9+(-1)^(n+1))*(n+1)+4*(n+1)²)` -/
def P13262746347511189379.Spec : Prop :=
  ∀ n, P13262746347511189379.a n = (A294287 (n + 1) : ℚ)

end A294287

/-! ## A294287.P15812836443045341379

`∑[n]²-(∑[n]%(n+1))^3`
-/

namespace A294287.P15812836443045341379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)) ^ 3 : ℕ) : ℤ)

end

end A294287.P15812836443045341379

namespace A294287

/-- `∑[n]²-(∑[n]%(n+1))^3` -/
def P15812836443045341379.Spec : Prop :=
  ∀ n, P15812836443045341379.a n = A294287 (n + 1)

end A294287

/-! ## A294287.P18371017032497307824

`A163102(n)-A294270(n+1)`
-/

namespace A294287.P18371017032497307824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - A294270 (n + 1)

end

end A294287.P18371017032497307824

namespace A294287

/-- `A163102(n)-A294270(n+1)` -/
def P18371017032497307824.Spec : Prop :=
  ∀ n, P18371017032497307824.a n = A294287 (n + 1)

end A294287

/-! ## A294287.P563781546310337581

`A000537(n)-A000578(A000217(n)%(n+1))`
-/

namespace A294287.P563781546310337581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n - A000578 (Int.tmod (A000217 n) (n + 1 : ℤ)).toNat

end

end A294287.P563781546310337581

namespace A294287

/-- `A000537(n)-A000578(A000217(n)%(n+1))` -/
def P563781546310337581.Spec : Prop :=
  ∀ n, P563781546310337581.a n = A294287 (n + 1)

end A294287

/-! ## A294287.P11099951802637880593

`∑[n]²-A142150(n+1)^3`
-/

namespace A294287.P11099951802637880593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A142150 (n + 1) ^ 3

end

end A294287.P11099951802637880593

namespace A294287

/-- `∑[n]²-A142150(n+1)^3` -/
def P11099951802637880593.Spec : Prop :=
  ∀ n, P11099951802637880593.a n = A294287 (n + 1)

end A294287

/-! ## A294287.P11136755590039511321

`A000537(n)-Δ[A000537(A004526(n))]`
-/

namespace A294287.P11136755590039511321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n - (f1 (n + 1) - f1 n)

end

end A294287.P11136755590039511321

namespace A294287

/-- `A000537(n)-Δ[A000537(A004526(n))]` -/
def P11136755590039511321.Spec : Prop :=
  ∀ n, P11136755590039511321.a n = A294287 (n + 1)

end A294287

/-!
# A294288: Sum of the fourth powers of the parts in the partitions of n into two distinct parts.

The programs for A294288, the canonical program `A294288.P18195835425307198976` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294288 has offset 1).

The definition of A294288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294288.P18195835425307198976

`A259108(n)-A294271(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A294288

/-- `A259108(n)-A294271(n+1)` -/
def P18195835425307198976.Spec : Prop :=
  ∀ n, P18195835425307198976.a n = A294288 (n + 1)

theorem P18195835425307198976.correct : P18195835425307198976.Spec := by
  intro n
  simp only [A294288, Nat.add_sub_cancel]

end A294288

/-! ## A294288.P13187637471205952191

`A000538(n)-∑[A001057(n)]²²`
-/

namespace A294288.P13187637471205952191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n - ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A294288.P13187637471205952191

namespace A294288

/-- `A000538(n)-∑[A001057(n)]²²` -/
def P13187637471205952191.Spec : Prop :=
  ∀ n, P13187637471205952191.a n = A294288 (n + 1)

end A294288

/-! ## A294288.P994391470335129734

`A000538(n)-A000583(∑[n]%(n+1))`
-/

namespace A294288.P994391470335129734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n - A000583 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A294288.P994391470335129734

namespace A294288

/-- `A000538(n)-A000583(∑[n]%(n+1))` -/
def P994391470335129734.Spec : Prop :=
  ∀ n, P994391470335129734.a n = A294288 (n + 1)

end A294288

/-! ## A294288.P16625644822098542789

`A000538(n)-A000583(∑[A001057(n)])`
-/

namespace A294288.P16625644822098542789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n - A000583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294288.P16625644822098542789

namespace A294288

/-- `A000538(n)-A000583(∑[A001057(n)])` -/
def P16625644822098542789.Spec : Prop :=
  ∀ n, P16625644822098542789.a n = A294288 (n + 1)

end A294288

/-! ## A294288.P3541121920551267777

`∑[n²²]-A142150(n+1)²²`
-/

namespace A294288.P3541121920551267777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A142150 (n + 1) ^ 2) ^ 2

end

end A294288.P3541121920551267777

namespace A294288

/-- `∑[n²²]-A142150(n+1)²²` -/
def P3541121920551267777.Spec : Prop :=
  ∀ n, P3541121920551267777.a n = A294288 (n + 1)

end A294288

/-! ## A294288.P15319197238803010625

`A000538(n)-Δ[A000538(A004526(n))]`
-/

namespace A294288.P15319197238803010625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n - (f1 (n + 1) - f1 n)

end

end A294288.P15319197238803010625

namespace A294288

/-- `A000538(n)-Δ[A000538(A004526(n))]` -/
def P15319197238803010625.Spec : Prop :=
  ∀ n, P15319197238803010625.a n = A294288 (n + 1)

end A294288

/-!
# A294289: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(Product_{j=1..n} 1/(1+x^j) - 1).

The programs for A294289, there is no canonical definition to state claims against.
-/

/-! ## A294289.P12548516711871370950

`A293530(n)+A016424(A013611(n))`
-/

namespace A294289.P12548516711871370950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293530 n + A016424 (A013611 n).toNat

end

end A294289.P12548516711871370950

/-! ## A294289.P1019916419895595898

`A294254(n)+A016424(A013611(n))`
-/

namespace A294289.P1019916419895595898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 n + A016424 (A013611 n).toNat

end

end A294289.P1019916419895595898

/-! ## A294289.P8736328128096277091

`A295343(n)+A124762(A063007(n))`
-/

namespace A294289.P8736328128096277091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295343 n + A124762 (A063007 n).toNat

end

end A294289.P8736328128096277091

/-! ## A294289.P3060235639671065545

`A302233(n)+A124762(A063007(n))`
-/

namespace A294289.P3060235639671065545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302233 n + A124762 (A063007 n).toNat

end

end A294289.P3060235639671065545

/-! ## A294289.P13018253186924408606

`A294254(n)+A107123(A293669(n))`
-/

namespace A294289.P13018253186924408606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 n + A107123 (A293669 n).toNat

end

end A294289.P13018253186924408606

/-!
# A294290: E.g.f.: exp(1/((1+x)*(1+x^2)) - 1).

The programs for A294290, there is no canonical definition to state claims against.
-/

/-! ## A294290.P2168237382258295905

`A294289(∑[n+3])`
-/

namespace A294290.P2168237382258295905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294290.P2168237382258295905

/-! ## A294290.P912190572682911124

`or(1, A294289(A055998(n+1)))`
-/

namespace A294290.P912190572682911124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294289 (A055998 (n + 1)).toNat)

end

end A294290.P912190572682911124

/-! ## A294290.P3563646206870784743

`A007318(C(2, n))*A294289(A055998(n+1))`
-/

namespace A294290.P3563646206870784743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A294289 (A055998 (n + 1)).toNat

end

end A294290.P3563646206870784743

/-! ## A294290.P4312659761991452807

`A294289(A055998(n+1))-A141310(2*n+3)+2`
-/

namespace A294290.P4312659761991452807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (A055998 (n + 1)).toNat - A141310 (2 * n + 3) + 2

end

end A294290.P4312659761991452807

/-! ## A294290.P1291996782246532031

`A294289(A055998(n+1))+A130020(A141310(2*n+3))`
-/

namespace A294290.P1291996782246532031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (A055998 (n + 1)).toNat + A130020 (A141310 (2 * n + 3)).toNat

end

end A294290.P1291996782246532031

/-!
# A294291: E.g.f.: exp(1/((1+x)*(1+x^2)*(1+x^3)) - 1).

The programs for A294291, there is no canonical definition to state claims against.
-/

/-! ## A294291.P18381215186851696593

`A294289(∑[n+3]+n+3)`
-/

namespace A294291.P18381215186851696593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A294291.P18381215186851696593

/-!
# A294292: Expansion of e.g.f. exp(1/((1+x)*(1+x^2)*(1+x^3)*(1+x^4)) - 1).

The programs for A294292, there is no canonical definition to state claims against.
-/

/-! ## A294292.P16338844291687825749

`A294289(eq[4, A025581(n)])`
-/

namespace A294292.P16338844291687825749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294292.P16338844291687825749

/-! ## A294292.P2954991161601073052

`A294289(eq[9, A099375(n)])`
-/

namespace A294292.P2954991161601073052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294292.P2954991161601073052

/-! ## A294292.P7851179174754875163

`A294289(Δ[A055831(n+4)])`
-/

namespace A294292.P7851179174754875163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (f1 (n + 1) - f1 n).toNat

end

end A294292.P7851179174754875163

/-! ## A294292.P206242902843441576

`A294289(A000124(n+5)-6)`
-/

namespace A294292.P206242902843441576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (A000124 (n + 5) - 6).toNat

end

end A294292.P206242902843441576

/-! ## A294292.P1375253136599967789

`A294289(eq[5, A004736(n+1)])`
-/

namespace A294292.P1375253136599967789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294292.P1375253136599967789

/-! ## A294292.P4196112104130274087

`A294289(A016777(n+1)+A055998(n)+6)`
-/

namespace A294292.P4196112104130274087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (A016777 (n + 1) + (A055998 n + 6)).toNat

end

end A294292.P4196112104130274087

/-!
# A294293: E.g.f.: exp(1/((1+x)*(1+x^2)*(1+x^3)*(1+x^4)*(1+x^5)) - 1).

The programs for A294293, there is no canonical definition to state claims against.
-/

/-! ## A294293.P8084536393249716287

`A294289(eq[5, A025581(n)])`
-/

namespace A294293.P8084536393249716287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294293.P8084536393249716287

/-! ## A294293.P10529566653935657413

`A294289(eq[11, A099375(n)])`
-/

namespace A294293.P10529566653935657413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294293.P10529566653935657413

/-! ## A294293.P11064229709235710309

`A294289(Δ[A023551(n+1)])`
-/

namespace A294293.P11064229709235710309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (f1 (n + 1) - f1 n).toNat

end

end A294293.P11064229709235710309

/-! ## A294293.P12422209161313559776

`A294289(eq[6, A004736(n+1)])`
-/

namespace A294293.P12422209161313559776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294293.P12422209161313559776

/-! ## A294293.P9752034875535058636

`A294289(Δ[A055831(n+5)]-1)`
-/

namespace A294293.P9752034875535058636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (f1 (n + 1) - f1 n - 1).toNat

end

end A294293.P9752034875535058636

/-! ## A294293.P7049446076532932762

`A294289(Δ[A056000(n)+A055831(n+4)])`
-/

namespace A294293.P7049446076532932762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294289 (f1 (n + 1) - f1 n).toNat

end

end A294293.P7049446076532932762

/-!
# A294294: Conjecturally, all odd numbers greater than a(n) can be represented in more ways by the sum of 3 odd primes p+q+r with p<=q<=r than a(n).

The programs for A294294, there is no canonical definition to state claims against.
-/

/-! ## A294294.P7910203167623921193

`A126044(4*(n+1))+4*(n+1)`
-/

namespace A294294.P7910203167623921193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126044 (4 * (n + 1)) + (4 * (n + 1) : ℤ)

end

end A294294.P7910203167623921193

/-! ## A294294.P5458615698982803433

`A005843(2*(n+2))-A115583(A107803(2*n+1))`
-/

namespace A294294.P5458615698982803433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * (n + 2)) - A115583 (A107803 (2 * n + 1)).toNat

end

end A294294.P5458615698982803433

/-! ## A294294.P1328045796880593670

`A163532(A056550(n+3))+A073760(n+1)`
-/

namespace A294294.P1328045796880593670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (A056550 (n + 3)).toNat + A073760 (n + 1)

end

end A294294.P1328045796880593670

/-! ## A294294.P12662268750563548364

`or(A064353(A318338(n+1)), A260484(n+2))`
-/

namespace A294294.P12662268750563548364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064353 (A318338 (n + 1)).toNat) (A260484 (n + 2))

end

end A294294.P12662268750563548364

/-! ## A294294.P11761040107008144699

`lt[A184030(A002322(n+5)), A337560(n+1)]`
-/

namespace A294294.P11761040107008144699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184030 (A002322 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337560 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294294.P11761040107008144699

/-!
# A294295: Number of ways to write A294294(n) as a sum of 3 odd primes p+q+r, with p>=q>=r.

The programs for A294295, there is no canonical definition to state claims against.
-/

/-! ## A294295.P16830306347176217711

`A007963((A294294(n+1)-1)/2)`
-/

namespace A294295.P16830306347176217711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007963 (SequenceMachineLib.roundAway ((A294294 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A294295.P16830306347176217711

/-! ## A294295.P15223395598458253133

`A190353(A294294(n+1))`
-/

namespace A294295.P15223395598458253133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A294294 (n + 1)).toNat

end

end A294295.P15223395598458253133

/-!
# A294297: Integers with precisely five partitions into sums of four squares of nonnegative numbers.

The programs for A294297, there is no canonical definition to state claims against.
-/

/-! ## A294297.P17543669440782504050

`eq[5, A002635(n)]`
-/

namespace A294297.P17543669440782504050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294297.P17543669440782504050

/-! ## A294297.P7093560330710178257

`eq[5, A025428(n)+A000164(n)]`
-/

namespace A294297.P7093560330710178257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294297.P7093560330710178257

/-! ## A294297.P4540240847755464530

`eq[A025429(n)+5, A000174(n)]`
-/

namespace A294297.P4540240847755464530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294297.P4540240847755464530

/-! ## A294297.P6787113039862669192

`eq[A000174(n), A020710(A025429(n))]`
-/

namespace A294297.P6787113039862669192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294297.P6787113039862669192

/-! ## A294297.P18365913041360539742

`eq[4, A233583(A000174(n)-A025429(n))]`
-/

namespace A294297.P18365913041360539742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A000174 n - A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294297.P18365913041360539742

/-! ## A294297.P16725718259949267938

`eq[5, A000161(n)+A025428(n)+A025427(n)]`
-/

namespace A294297.P16725718259949267938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + (A025428 n + A025427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294297.P16725718259949267938

/-! ## A294297.P4715189093346146076

`eq[5, A000177(n)-(A025430(n)+A025429(n))]`
-/

namespace A294297.P4715189093346146076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n - (A025430 n + A025429 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294297.P4715189093346146076

/-! ## A294297.P10978412636383618042

`eq[5, A000045(A000174(n)-A025429(n))]`
-/

namespace A294297.P10978412636383618042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000174 n - A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294297.P10978412636383618042

/-!
# A294298: Sum of products of terms in all partitions of 3*n into powers of 3.

The programs for A294298, there is no canonical definition to state claims against.
-/

/-! ## A294298.P6424166075687608690

`A294316(∑[n+3])`
-/

namespace A294298.P6424166075687608690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294298.P6424166075687608690

/-! ## A294298.P7944624325283310474

`record[A294316(A027379(A025480(n)))]`
-/

namespace A294298.P7944624325283310474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (A027379 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294298.P7944624325283310474

/-! ## A294298.P10636265500952691420

`record[A294316(A055998(A002262(n)))]`
-/

namespace A294298.P10636265500952691420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (A055998 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294298.P10636265500952691420

/-! ## A294298.P10746592391674668349

`record[A294316(A055998(A025581(n)))]`
-/

namespace A294298.P10746592391674668349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (A055998 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294298.P10746592391674668349

/-! ## A294298.P12220474028748182120

`record[A294316(A055998(A028242(n)))]`
-/

namespace A294298.P12220474028748182120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (A055998 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294298.P12220474028748182120

/-! ## A294298.P11577681321051148782

`record[A294316(A055998(A003602(n+1)))]`
-/

namespace A294298.P11577681321051148782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (A055998 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294298.P11577681321051148782

/-! ## A294298.P10343195143681264273

`record[A294316(A055998(A182972(n+1)))]`
-/

namespace A294298.P10343195143681264273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (A055998 (A182972 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294298.P10343195143681264273

/-! ## A294298.P9695118167863291528

`record[A294316(A055998(A234575(n+1)))]`
-/

namespace A294298.P9695118167863291528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (A055998 (A234575 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294298.P9695118167863291528

