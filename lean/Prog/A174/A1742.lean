import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A174200: The sequence of numbers which, when entered on a standard telephone numeric keypad, produce the letters a thru z. Letters are accessed by one or more presses of a single key.

The programs for A174200, there is no canonical definition to state claims against.
-/

/-! ## A174200.P15024238599332757620

`A000034(A219925(n))*A348871(n+1)`
-/

namespace A174200.P15024238599332757620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A219925 n).toNat * A348871 (n + 1)

end

end A174200.P15024238599332757620

/-! ## A174200.P3548444485408839294

`A316826(A001423(n))*A348871(n+1)`
-/

namespace A174200.P3548444485408839294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A001423 n).toNat * A348871 (n + 1)

end

end A174200.P3548444485408839294

/-!
# A174201: Partial sums of A141034.

The programs for A174201, there is no canonical definition to state claims against.
-/

/-! ## A174201.P3831668330017168353

`∑[A141034(n+1)]`
-/

namespace A174201.P3831668330017168353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174201.P3831668330017168353

/-! ## A174201.P13977149657114197779

`∑[record[A141034(A000174(n))]]`
-/

namespace A174201.P13977149657114197779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141034 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174201.P13977149657114197779

/-! ## A174201.P2684949770958333893

`∑[record[A141034(A033930(n))]]`
-/

namespace A174201.P2684949770958333893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141034 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174201.P2684949770958333893

/-! ## A174201.P2783382453463303537

`∑[record[A141034(A051340(n))]]`
-/

namespace A174201.P2783382453463303537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141034 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174201.P2783382453463303537

/-! ## A174201.P6378688444172100855

`∑[record[A141034(A065648(n))]]`
-/

namespace A174201.P6378688444172100855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141034 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174201.P6378688444172100855

/-!
# A174202: Partial sums of A065641.

The programs for A174202, there is no canonical definition to state claims against.
-/

/-! ## A174202.P2667578097170165283

`∑[A065641(n+1)]`
-/

namespace A174202.P2667578097170165283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174202.P2667578097170165283

/-! ## A174202.P848360484674655866

`∑[record[A065641(A008611(n))]]`
-/

namespace A174202.P848360484674655866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065641 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174202.P848360484674655866

/-! ## A174202.P4029723820762206689

`∑[record[A065641(A008612(n))]]`
-/

namespace A174202.P4029723820762206689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065641 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174202.P4029723820762206689

/-! ## A174202.P16709329057057637008

`∑[record[A065641(A008616(n))]]`
-/

namespace A174202.P16709329057057637008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065641 (A008616 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174202.P16709329057057637008

/-! ## A174202.P8385574423644040077

`∑[record[A065641(A008624(n))]]`
-/

namespace A174202.P8385574423644040077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065641 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174202.P8385574423644040077

/-!
# A174204: Scan the sequence of natural numbers, written in base 2, from left to right, delete each 2nd, 4th, 6th etc occurrence of digit 0 and each 2nd, 4th, 6th etc occurrence of digit 1. The sequence are the base-10 residuals.

The programs for A174204, there is no canonical definition to state claims against.
-/

/-! ## A174204.P17829825132215620231

`gcd(A000196(A092176(n)), A130921(n))`
-/

namespace A174204.P17829825132215620231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (A092176 n).toNat) (A130921 n)

end

end A174204.P17829825132215620231

/-! ## A174204.P9069670227025621425

`A000124(A195092(n+1))%A072649(n+1)`
-/

namespace A174204.P9069670227025621425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 (A195092 (n + 1)).toNat) (A072649 (n + 1))

end

end A174204.P9069670227025621425

/-! ## A174204.P11602419647046605653

`A238950(lt[A360557(2*n+5), A111306(n+3)])`
-/

namespace A174204.P11602419647046605653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360557 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111306 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238950 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174204.P11602419647046605653

/-! ## A174204.P14646321576446847836

`A326622(∑[∑[A126886(3*n+1)]])`
-/

namespace A174204.P14646321576446847836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126886 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174204.P14646321576446847836

/-! ## A174204.P8036618439547261140

`p?[A176654(n+1)]%A072649(n+1)`
-/

namespace A174204.P8036618439547261140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A072649 (n + 1))

end

end A174204.P8036618439547261140

/-!
# A174205: Write natural numbers in base 2 as a stream of digits. Moving left to right, delete odd occurrences of digit 0 and 1.

The programs for A174205, there is no canonical definition to state claims against.
-/

/-! ## A174205.P5947146277656297644

`Δ[floor(A054633(2*n)/2)]`
-/

namespace A174205.P5947146277656297644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054633 (2 * n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174205.P5947146277656297644

/-! ## A174205.P13792861467813311272

`Δ[A004526(A054633(2*n))]`
-/

namespace A174205.P13792861467813311272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054633 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174205.P13792861467813311272

/-! ## A174205.P2553726381402492869

`Δ[A008619(A054633(4*n/2))]`
-/

namespace A174205.P2553726381402492869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A054633 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 2))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174205.P2553726381402492869

/-! ## A174205.P12483091653026912358

`char[A004526(A030303(2*(n+1))-1)]`
-/

namespace A174205.P12483091653026912358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A030303 (2 * (n + 1)) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174205.P12483091653026912358

/-! ## A174205.P16630474301316426737

`char[A123108(A030303(2*(n+1))-1)]`
-/

namespace A174205.P16630474301316426737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A030303 (2 * (n + 1)) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174205.P16630474301316426737

/-! ## A174205.P7371420133640062447

`A054633(Δ[A008619(A054633(2*n))])`
-/

namespace A174205.P7371420133640062447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A054633 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 (f1 (n + 1) - f1 n).toNat

end

end A174205.P7371420133640062447

/-!
# A174206: Write natural numbers in base 2 as a stream of digits. Moving left to right, delete even occurrences of digit 0 and 1.

The programs for A174206, there is no canonical definition to state claims against.
-/

/-! ## A174206.P14678643896265144748

`char[ceil(A030303(2*n+1)/2)]`
-/

namespace A174206.P14678643896265144748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030303 (2 * n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174206.P14678643896265144748

/-! ## A174206.P16919110412530106333

`char[A065033(A030303(2*n+1))]`
-/

namespace A174206.P16919110412530106333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030303 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174206.P16919110412530106333

/-! ## A174206.P8926039074941783474

`char[A004526(A030303(Δ[n²])+1)]`
-/

namespace A174206.P8926039074941783474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A030303 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174206.P8926039074941783474

/-! ## A174206.P849011789000082519

`char[A123108(A030303(2*n+1)+1)]`
-/

namespace A174206.P849011789000082519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A030303 (2 * n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174206.P849011789000082519

/-! ## A174206.P9903556580284723478

`char[A008619(A030303(2*n+1)-1)]`
-/

namespace A174206.P9903556580284723478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A030303 (2 * n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174206.P9903556580284723478

/-!
# A174207: Depleted stream of the natural numbers written in base 2: delete even occurrences of digit 0 and odd occurrences of digit 1.

The programs for A174207, there is no canonical definition to state claims against.
-/

/-! ## A174207.P14493257597346714883

`char[floor(A030303(2*(n+1))/2)]`
-/

namespace A174207.P14493257597346714883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030303 (2 * (n + 1)) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174207.P14493257597346714883

/-! ## A174207.P13665289811640443474

`char[A004526(A030303(2*(n+1)))]`
-/

namespace A174207.P13665289811640443474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A030303 (2 * (n + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174207.P13665289811640443474

/-! ## A174207.P5990229080563695794

`char[A123108(A030303(2*n+2))]`
-/

namespace A174207.P5990229080563695794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A030303 (2 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174207.P5990229080563695794

/-! ## A174207.P644080696717364927

`char[A065033(A030303(2*(n+1))-1)]`
-/

namespace A174207.P644080696717364927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030303 (2 * (n + 1)) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174207.P644080696717364927

/-! ## A174207.P4904824406762095217

`char[A008619(A030303(2*(n+1))-2)]`
-/

namespace A174207.P4904824406762095217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A030303 (2 * (n + 1)) - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174207.P4904824406762095217

/-! ## A174207.P3573660295193589104

`char[A004526(A030303(n+1))^and(1, n)]`
-/

namespace A174207.P3573660295193589104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A030303 (n + 1)).toNat ^ Nat.land 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174207.P3573660295193589104

/-!
# A174208: Write natural numbers in base 2 as a stream of digits. Moving left to right, delete odd occurrences of digit 0 and even occurrences of digit 1.

The programs for A174208, there is no canonical definition to state claims against.
-/

/-! ## A174208.P13352900753531405796

`char[floor(A030303(2*n+1)/2)]`
-/

namespace A174208.P13352900753531405796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030303 (2 * n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174208.P13352900753531405796

/-! ## A174208.P11768398698194623731

`char[A004526(A030303(Δ[n²]))]`
-/

namespace A174208.P11768398698194623731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A030303 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174208.P11768398698194623731

/-! ## A174208.P6707791835160297779

`char[A123108(A030303(2*n+1))]`
-/

namespace A174208.P6707791835160297779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A030303 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174208.P6707791835160297779

/-! ## A174208.P6922868262766942863

`char[A008619(A030303(2*n+1))-A000035(2*n+1)]`
-/

namespace A174208.P6922868262766942863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A030303 (2 * n + 1)).toNat - A000035 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174208.P6922868262766942863

/-! ## A174208.P3002741137626435867

`char[A008619(A030303(2*n+1))-A010169(2*n+1)]`
-/

namespace A174208.P3002741137626435867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A030303 (2 * n + 1)).toNat - A010169 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174208.P3002741137626435867

/-!
# A174212: Ultradoublefactorials: a(n) = (n!!)^(n!!).

The programs for A174212, the canonical program `A174212.P11329962796631262777` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174212 has offset 0).

The definition of A174212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174212.P11329962796631262777

`A006882(n)^A006882(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174212

/-- `A006882(n)^A006882(n)` -/
def P11329962796631262777.Spec : Prop :=
  ∀ n, P11329962796631262777.a n = (A174212 n : ℚ)

end A174212

/-! ## A174212.P3033514172491992952

`∏[n/a(n-1)]^∏[n/a(n-1)]` with `a(0)=1`
-/

namespace A174212.P3033514172491992952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) ^ ((∏ j ∈ Finset.range (n + 1), f2 j : ℚ) : ℝ)

end

end A174212.P3033514172491992952

namespace A174212

/-- `∏[n/a(n-1)]^∏[n/a(n-1)]` -/
def P3033514172491992952.Spec : Prop :=
  ∀ n, P3033514172491992952.a n = (A174212 n : ℝ)

end A174212

/-! ## A174212.P11588158117792990359

`A000312(∏[n/a(n-1)])` with `a(0)=1`
-/

namespace A174212.P11588158117792990359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A174212.P11588158117792990359

namespace A174212

/-- `A000312(∏[n/a(n-1)])` -/
def P11588158117792990359.Spec : Prop :=
  ∀ n, P11588158117792990359.a n = A174212 n

end A174212

/-!
# A174214: a(n) = a(n-1)+1, if the previous term a(n-1) and n-1-(-1)^n are coprime, else a(n)=2*n-4.

The programs for A174214, there is no canonical definition to state claims against.
-/

/-! ## A174214.P5778881820285771510

`lt[A119753(n+1), A074434(A000720(n+3))]`
-/

namespace A174214.P5778881820285771510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074434 (A000720 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174214.P5778881820285771510

/-! ## A174214.P1492679029049200473

`lt[A330137(n+1), A330112(A330081(n+3))]`
-/

namespace A174214.P1492679029049200473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330112 (A330081 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174214.P1492679029049200473

/-! ## A174214.P2788513270011884687

`lt[A001358(2*(n+1)), A359675(A330081(n+3))]`
-/

namespace A174214.P2788513270011884687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359675 (A330081 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174214.P2788513270011884687

/-! ## A174214.P13906759691606346556

`lt[A003961(n+5), A324756(A053645(3*n+2))]`
-/

namespace A174214.P13906759691606346556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324756 (A053645 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174214.P13906759691606346556

/-! ## A174214.P7273690179606806422

`lt[A270339(n+1), A080374(A007359(2*(n+1)))]`
-/

namespace A174214.P7273690179606806422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080374 (A007359 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174214.P7273690179606806422

/-!
# A174215: First differences of A174214.

The programs for A174215, there is no canonical definition to state claims against.
-/

/-! ## A174215.P4034758329886399408

`A174214(n+10)-A174214(n+9)`
-/

namespace A174215.P4034758329886399408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174214 (n + 10) - A174214 (n + 9)

end

end A174215.P4034758329886399408

/-! ## A174215.P5206145560382769263

`Δ[A174214(n+9)]`
-/

namespace A174215.P5206145560382769263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174214 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174215.P5206145560382769263

/-! ## A174215.P16230773326780409652

`A028310(A174214(n+10)%A174214(n+9))`
-/

namespace A174215.P16230773326780409652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A174214 (n + 10)) (A174214 (n + 9))).toNat

end

end A174215.P16230773326780409652

/-! ## A174215.P11376789711036689909

`A174214(A023443(n+2)+9)%A174214(n+9)`
-/

namespace A174215.P11376789711036689909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174214 (A023443 (n + 2) + 9).toNat) (A174214 (n + 9))

end

end A174215.P11376789711036689909

/-!
# A174216: a(1)=15; for n>1, a(n) = the smallest number k >a(n-1) such that 2*A174214(k)= 3*(k-1).

The programs for A174216, there is no canonical definition to state claims against.
-/

/-! ## A174216.P5459895626140627390

`2*A174217(n+1)+1`
-/

namespace A174216.P5459895626140627390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174217 (n + 1) + 1

end

end A174216.P5459895626140627390

/-! ## A174216.P3230937135038757707

`A174217(n+1)+A174217(n+1)+A025443(n)!`
-/

namespace A174216.P3230937135038757707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174217 (n + 1) + (A174217 (n + 1) + (Nat.factorial (A025443 n).toNat : ℤ))

end

end A174216.P3230937135038757707

/-! ## A174216.P807045476850117036

`lcm(A174217(n+1), A241909(A180466(n+1)+1))+1`
-/

namespace A174216.P807045476850117036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174217 (n + 1)) (A241909 (A180466 (n + 1) + 1).toNat) + 1

end

end A174216.P807045476850117036

/-! ## A174216.P5962953040912819975

`A174217(n+1)+A174217(n+1)+A059196(n+1)`
-/

namespace A174216.P5962953040912819975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174217 (n + 1) + (A174217 (n + 1) + A059196 (n + 1))

end

end A174216.P5962953040912819975

/-! ## A174216.P7195242275555574618

`A174217(n+1)+A000027(A174217(n+1)+1)`
-/

namespace A174216.P7195242275555574618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174217 (n + 1) + A000027 (A174217 (n + 1) + 1).toNat

end

end A174216.P7195242275555574618

/-!
# A174217: a(n) = (A174216(n)-1)/2.

The programs for A174217, there is no canonical definition to state claims against.
-/

/-! ## A174217.P10925863005805399495

`(A174216(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174217.P10925863005805399495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174216 (n + 1) - 1 : ℚ) / 2

end

end A174217.P10925863005805399495

/-! ## A174217.P7579861227016082050

`floor(A174216(n+1)/2)`
-/

namespace A174217.P7579861227016082050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174216 (n + 1) : ℚ) / 2⌋

end

end A174217.P7579861227016082050

/-! ## A174217.P8338687466975696861

`A000265(A174216(n+1)-1)`
-/

namespace A174217.P8338687466975696861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A174216 (n + 1) - 1).toNat

end

end A174217.P8338687466975696861

/-! ## A174217.P15729350508288878300

`A006530(A174216(n+1)-1)`
-/

namespace A174217.P15729350508288878300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A174216 (n + 1) - 1).toNat

end

end A174217.P15729350508288878300

/-! ## A174217.P10083169907401815222

`A034699(A174216(n+1)-1)`
-/

namespace A174217.P10083169907401815222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A174216 (n + 1) - 1).toNat

end

end A174217.P10083169907401815222

/-!
# A174219: Integers equal to sqrt of A147846(n) + A147846(n+1).

The programs for A174219, the canonical program `A174219.P9674562942544645615` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174219 has offset 1).

The definition of A174219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174219.P3161715236307415668

`∪[A000040(n+1), A014574(n+1)]`
-/

namespace A174219.P3161715236307415668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P3161715236307415668

namespace A174219

/-- `∪[A000040(n+1), A014574(n+1)]` -/
def P3161715236307415668.Spec : Prop :=
  ∀ n, (P3161715236307415668.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P17567736485388532957

`∪[A014574(n+1), A116974(n+1)]`
-/

namespace A174219.P17567736485388532957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P17567736485388532957

namespace A174219

/-- `∪[A014574(n+1), A116974(n+1)]` -/
def P17567736485388532957.Spec : Prop :=
  ∀ n, (P17567736485388532957.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P15727041145286382714

`∪[A000040(n+1), A167706(n+1)]`
-/

namespace A174219.P15727041145286382714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P15727041145286382714

namespace A174219

/-- `∪[A000040(n+1), A167706(n+1)]` -/
def P15727041145286382714.Spec : Prop :=
  ∀ n, (P15727041145286382714.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P2732449437298259416

`∪[A001097(n+1), A167706(n+1)]`
-/

namespace A174219.P2732449437298259416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P2732449437298259416

namespace A174219

/-- `∪[A001097(n+1), A167706(n+1)]` -/
def P2732449437298259416.Spec : Prop :=
  ∀ n, (P2732449437298259416.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P440634692357624529

`∪[A014574(n+1), A175787(n+1)]`
-/

namespace A174219.P440634692357624529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P440634692357624529

namespace A174219

/-- `∪[A014574(n+1), A175787(n+1)]` -/
def P440634692357624529.Spec : Prop :=
  ∀ n, (P440634692357624529.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P10734885070484207197

`∪[A065091(n+1), A167706(n+1)]`
-/

namespace A174219.P10734885070484207197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P10734885070484207197

namespace A174219

/-- `∪[A065091(n+1), A167706(n+1)]` -/
def P10734885070484207197.Spec : Prop :=
  ∀ n, (P10734885070484207197.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P4342467349541201408

`∪[A116974(n+1), A167706(n+1)]`
-/

namespace A174219.P4342467349541201408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P4342467349541201408

namespace A174219

/-- `∪[A116974(n+1), A167706(n+1)]` -/
def P4342467349541201408.Spec : Prop :=
  ∀ n, (P4342467349541201408.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P9674562942544645615

`∩[A093515(n+1)-1, A093515(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A174219

/-- `∩[A093515(n+1)-1, A093515(n+1)]` -/
def P9674562942544645615.Spec : Prop :=
  ∀ n, (P9674562942544645615.a n : ℤ) = A174219 (n + 1)

theorem P9674562942544645615.correct : P9674562942544645615.Spec := by
  intro n
  simp only [A174219, Nat.add_sub_cancel]

end A174219

/-! ## A174219.P6618573810302917840

`eq[0, A292438(n)]`
-/

namespace A174219.P6618573810302917840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174219.P6618573810302917840

namespace A174219

/-- `eq[0, A292438(n)]` -/
def P6618573810302917840.Spec : Prop :=
  ∀ n, (P6618573810302917840.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P17793162314281578039

`lt[A292438(n+1), 1]+1`
-/

namespace A174219.P17793162314281578039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174219.P17793162314281578039

namespace A174219

/-- `lt[A292438(n+1), 1]+1` -/
def P17793162314281578039.Spec : Prop :=
  ∀ n, (P17793162314281578039.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P5020725906158286709

`lt[A072680(n+2), 3]+2`
-/

namespace A174219.P5020725906158286709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A174219.P5020725906158286709

namespace A174219

/-- `lt[A072680(n+2), 3]+2` -/
def P5020725906158286709.Spec : Prop :=
  ∀ n, (P5020725906158286709.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P11923229631997865869

`∩[A063934(n+1), A093515(n+1)]`
-/

namespace A174219.P11923229631997865869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P11923229631997865869

namespace A174219

/-- `∩[A063934(n+1), A093515(n+1)]` -/
def P11923229631997865869.Spec : Prop :=
  ∀ n, (P11923229631997865869.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P15256482413052198902

`∩[A063934(n+1), A173919(n+1)]`
-/

namespace A174219.P15256482413052198902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P15256482413052198902

namespace A174219

/-- `∩[A063934(n+1), A173919(n+1)]` -/
def P15256482413052198902.Spec : Prop :=
  ∀ n, (P15256482413052198902.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P18417322169112496058

`∩[A093515(n+1), A173919(n+1)]`
-/

namespace A174219.P18417322169112496058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P18417322169112496058

namespace A174219

/-- `∩[A093515(n+1), A173919(n+1)]` -/
def P18417322169112496058.Spec : Prop :=
  ∀ n, (P18417322169112496058.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P6566856064478212840

`∩[A063934(n+1), A210940(n+1)]`
-/

namespace A174219.P6566856064478212840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P6566856064478212840

namespace A174219

/-- `∩[A063934(n+1), A210940(n+1)]` -/
def P6566856064478212840.Spec : Prop :=
  ∀ n, (P6566856064478212840.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P1648003283465565675

`eq[1, or(1, A325142(n))]`
-/

namespace A174219.P1648003283465565675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A325142 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174219.P1648003283465565675

namespace A174219

/-- `eq[1, or(1, A325142(n))]` -/
def P1648003283465565675.Spec : Prop :=
  ∀ n, (P1648003283465565675.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P4895946322243542764

`lt[A047160(n+2), 2]+2`
-/

namespace A174219.P4895946322243542764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A174219.P4895946322243542764

namespace A174219

/-- `lt[A047160(n+2), 2]+2` -/
def P4895946322243542764.Spec : Prop :=
  ∀ n, (P4895946322243542764.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P16624085383334263747

`lt[n, A112823(n+2)]+2`
-/

namespace A174219.P16624085383334263747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A174219.P16624085383334263747

namespace A174219

/-- `lt[n, A112823(n+2)]+2` -/
def P16624085383334263747.Spec : Prop :=
  ∀ n, (P16624085383334263747.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P9652461340948783399

`eq[A232991(n), A325142(n)]`
-/

namespace A174219.P9652461340948783399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232991 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174219.P9652461340948783399

namespace A174219

/-- `eq[A232991(n), A325142(n)]` -/
def P9652461340948783399.Spec : Prop :=
  ∀ n, (P9652461340948783399.a n : ℤ) = A174219 (n + 1)

end A174219

/-! ## A174219.P9996117966245676200

`eq[A267043(n), A325142(n)]`
-/

namespace A174219.P9996117966245676200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174219.P9996117966245676200

namespace A174219

/-- `eq[A267043(n), A325142(n)]` -/
def P9996117966245676200.Spec : Prop :=
  ∀ n, (P9996117966245676200.a n : ℤ) = A174219 (n + 1)

end A174219

/-!
# A174223: Add to 2n+1 the next three primes > 2n+1.

The programs for A174223, the canonical program `A174223.P16110964862743191397` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174223 has offset 0).

The definition of A174223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174223.P16110964862743191397

`A034961(A000720(2*n+1)+1)+2*n+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A174223

/-- `A034961(A000720(2*n+1)+1)+2*n+1` -/
def P16110964862743191397.Spec : Prop :=
  ∀ n, P16110964862743191397.a n = A174223 n

theorem P16110964862743191397.correct : P16110964862743191397.Spec := by
  intro n
  simp only [A174223]

end A174223

/-! ## A174223.P15216157744246218115

`A174221(Δ[n²])`
-/

namespace A174223.P15216157744246218115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A174223.P15216157744246218115

namespace A174223

/-- `A174221(Δ[n²])` -/
def P15216157744246218115.Spec : Prop :=
  ∀ n, P15216157744246218115.a n = A174223 n

end A174223

/-! ## A174223.P11693025734305792103

`record[A174221(n+1)]`
-/

namespace A174223.P11693025734305792103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174223.P11693025734305792103

namespace A174223

/-- `record[A174221(n+1)]` -/
def P11693025734305792103.Spec : Prop :=
  ∀ n, P11693025734305792103.a n = A174223 n

end A174223

/-! ## A174223.P3672826508191837838

`A174221(2*n+1)%A226514(n)`
-/

namespace A174223.P3672826508191837838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174221 (2 * n + 1)) (A226514 n)

end

end A174223.P3672826508191837838

namespace A174223

/-- `A174221(2*n+1)%A226514(n)` -/
def P3672826508191837838.Spec : Prop :=
  ∀ n, P3672826508191837838.a n = A174223 n

end A174223

/-! ## A174223.P16804965594571529385

`lcm(A033999(n), A174221(2*n+1))`
-/

namespace A174223.P16804965594571529385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A174221 (2 * n + 1))

end

end A174223.P16804965594571529385

namespace A174223

/-- `lcm(A033999(n), A174221(2*n+1))` -/
def P16804965594571529385.Spec : Prop :=
  ∀ n, (P16804965594571529385.a n : ℤ) = A174223 n

end A174223

/-! ## A174223.P394955385240401680

`filter[A174221(2*n+1), A178226(#)]`
-/

namespace A174223.P394955385240401680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A174223.P394955385240401680

namespace A174223

/-- `filter[A174221(2*n+1), A178226(#)]` -/
def P394955385240401680.Spec : Prop :=
  ∀ n, P394955385240401680.a n = A174223 n

end A174223

/-! ## A174223.P790862280973507865

`A174221(A005408(n))/gcd(n, n+1)`
-/

namespace A174223.P790862280973507865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174221 (A005408 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A174223.P790862280973507865

namespace A174223

/-- `A174221(A005408(n))/gcd(n, n+1)` -/
def P790862280973507865.Spec : Prop :=
  ∀ n, P790862280973507865.a n = (A174223 n : ℚ)

end A174223

/-! ## A174223.P9546752923006212603

`A174221(2*n+1)+A113047(3*n+2)`
-/

namespace A174223.P9546752923006212603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * n + 1) + A113047 (3 * n + 2)

end

end A174223.P9546752923006212603

namespace A174223

/-- `A174221(2*n+1)+A113047(3*n+2)` -/
def P9546752923006212603.Spec : Prop :=
  ∀ n, P9546752923006212603.a n = A174223 n

end A174223

/-! ## A174223.P2022094450109742534

`A174221(A005408(n))%A060232(n+1)`
-/

namespace A174223.P2022094450109742534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174221 (A005408 n).toNat) (A060232 (n + 1))

end

end A174223.P2022094450109742534

namespace A174223

/-- `A174221(A005408(n))%A060232(n+1)` -/
def P2022094450109742534.Spec : Prop :=
  ∀ n, P2022094450109742534.a n = A174223 n

end A174223

/-! ## A174223.P10252043328103871831

`filter[A174221(2*n+1), A093521(#)]`
-/

namespace A174223.P10252043328103871831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A174223.P10252043328103871831

namespace A174223

/-- `filter[A174221(2*n+1), A093521(#)]` -/
def P10252043328103871831.Spec : Prop :=
  ∀ n, P10252043328103871831.a n = A174223 n

end A174223

/-! ## A174223.P5651492495819073587

`filter[A174221(2*n+1), A043545(#)]`
-/

namespace A174223.P5651492495819073587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A174223.P5651492495819073587

namespace A174223

/-- `filter[A174221(2*n+1), A043545(#)]` -/
def P5651492495819073587.Spec : Prop :=
  ∀ n, P5651492495819073587.a n = A174223 n

end A174223

/-! ## A174223.P18226611361595301257

`filter[A174221(2*n+1), A072608(#)]`
-/

namespace A174223.P18226611361595301257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072608 (f1 j).toNat = 1) n)

end

end A174223.P18226611361595301257

namespace A174223

/-- `filter[A174221(2*n+1), A072608(#)]` -/
def P18226611361595301257.Spec : Prop :=
  ∀ n, P18226611361595301257.a n = A174223 n

end A174223

/-! ## A174223.P1407782002866653907

`filter[A174221(2*n+1), A267442(#)]`
-/

namespace A174223.P1407782002866653907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A174223.P1407782002866653907

namespace A174223

/-- `filter[A174221(2*n+1), A267442(#)]` -/
def P1407782002866653907.Spec : Prop :=
  ∀ n, P1407782002866653907.a n = A174223 n

end A174223

/-! ## A174223.P12918887402856447683

`filter[A174221(2*n+1), A267773(#)]`
-/

namespace A174223.P12918887402856447683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A174223.P12918887402856447683

namespace A174223

/-- `filter[A174221(2*n+1), A267773(#)]` -/
def P12918887402856447683.Spec : Prop :=
  ∀ n, P12918887402856447683.a n = A174223 n

end A174223

/-! ## A174223.P16047529936320423571

`filter[A174221(2*n+1), A284893(#)]`
-/

namespace A174223.P16047529936320423571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284893 (f1 j).toNat = 1) n)

end

end A174223.P16047529936320423571

namespace A174223

/-- `filter[A174221(2*n+1), A284893(#)]` -/
def P16047529936320423571.Spec : Prop :=
  ∀ n, P16047529936320423571.a n = A174223 n

end A174223

/-! ## A174223.P10491947941506484012

`filter[A174221(2*n+1), A284939(#)]`
-/

namespace A174223.P10491947941506484012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284939 (f1 j).toNat = 1) n)

end

end A174223.P10491947941506484012

namespace A174223

/-- `filter[A174221(2*n+1), A284939(#)]` -/
def P10491947941506484012.Spec : Prop :=
  ∀ n, P10491947941506484012.a n = A174223 n

end A174223

/-! ## A174223.P7979109954981980585

`filter[A174221(2*n+1), A285668(#)]`
-/

namespace A174223.P7979109954981980585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285668 (f1 j).toNat = 1) n)

end

end A174223.P7979109954981980585

namespace A174223

/-- `filter[A174221(2*n+1), A285668(#)]` -/
def P7979109954981980585.Spec : Prop :=
  ∀ n, P7979109954981980585.a n = A174223 n

end A174223

/-!
# A174224: Number of homeomorphism classes of stable curves in the moduli space of stable curves of genus g.

The programs for A174224, there is no canonical definition to state claims against.
-/

/-! ## A174224.P3870949576020151371

`A039496((10^n+17)/9)%ceil(10^n/9)`
-/

namespace A174224.P3870949576020151371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039496 (SequenceMachineLib.roundAway ((10 ^ n + 17 : ℚ) / 9)).toNat) ⌈(10 ^ n : ℚ) / 9⌉

end

end A174224.P3870949576020151371

/-!
# A174225: Array: row n consists of the positive integers x for which there are exactly n positive integers y such that x+y divides x*y.

The programs for A174225, there is no canonical definition to state claims against.
-/

/-! ## A174225.P3312346372037896208

`A122111(A284457(n+1)%A179919(2*(n+2)))`
-/

namespace A174225.P3312346372037896208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.tmod (A284457 (n + 1)) (A179919 (2 * (n + 2)))).toNat

end

end A174225.P3312346372037896208

/-! ## A174225.P16145174408798245479

`A163511(A191448(n+1)^A351241(n+1))`
-/

namespace A174225.P16145174408798245479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (SequenceMachineLib.roundAway ((A191448 (n + 1) : ℚ) ^ (A351241 (n + 1) : ℤ))).toNat

end

end A174225.P16145174408798245479

/-! ## A174225.P2846049947534208385

`A163511(A191448(n+1)%A133675(n+1))`
-/

namespace A174225.P2846049947534208385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (Int.tmod (A191448 (n + 1)) (A133675 (n + 1))).toNat

end

end A174225.P2846049947534208385

/-! ## A174225.P3665916669487899500

`A163511(A191448(n+1))*A351241(A351241(n+1)²)`
-/

namespace A174225.P3665916669487899500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A191448 (n + 1)).toNat * A351241 (A351241 (n + 1) ^ 2).toNat

end

end A174225.P3665916669487899500

/-! ## A174225.P13647829776539768873

`A122111(A284457(n+1)%A001562(n+1))`
-/

namespace A174225.P13647829776539768873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.tmod (A284457 (n + 1)) (A001562 (n + 1))).toNat

end

end A174225.P13647829776539768873

/-!
# A174226: Partial sums of A034897.

The programs for A174226, there is no canonical definition to state claims against.
-/

/-! ## A174226.P15159008800940564092

`∑[A034897(n+1)]`
-/

namespace A174226.P15159008800940564092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174226.P15159008800940564092

/-! ## A174226.P2732367663397166687

`∑[record[A034897(A065648(n))]]`
-/

namespace A174226.P2732367663397166687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174226.P2732367663397166687

/-! ## A174226.P176453519662164357

`∑[record[A034897(A100727(n))]]`
-/

namespace A174226.P176453519662164357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174226.P176453519662164357

/-! ## A174226.P16177430103654641704

`∑[record[A034897(A109785(n))]]`
-/

namespace A174226.P16177430103654641704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174226.P16177430103654641704

/-! ## A174226.P792950738306806989

`∑[record[A034897(A126759(n))]]`
-/

namespace A174226.P792950738306806989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174226.P792950738306806989

/-! ## A174226.P1938555750031327189

`∑[record[A034897(A141256(n))]]`
-/

namespace A174226.P1938555750031327189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174226.P1938555750031327189

/-! ## A174226.P5021889597390662397

`∑[record[A034897(A152271(n))]]`
-/

namespace A174226.P5021889597390662397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174226.P5021889597390662397

/-! ## A174226.P8949594111101033707

`∑[record[A034897(A193738(n))]]`
-/

namespace A174226.P8949594111101033707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174226.P8949594111101033707

/-! ## A174226.P4832061312781455789

`∑[record[A034897(A246694(n))]]`
-/

namespace A174226.P4832061312781455789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174226.P4832061312781455789

/-! ## A174226.P12752922601556009083

`∑[record[A034897(A263111(n))]]`
-/

namespace A174226.P12752922601556009083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174226.P12752922601556009083

/-!
# A174227: Expansion of -(10*x + sqrt((1-10*x)*(1-14*x)))/(2*x).

The programs for A174227, there is no canonical definition to state claims against.
-/

/-! ## A174227.P1682888271199206915

`A042948(a(n-2)+6*a(n-1)-char[2])` with `a(0)=1, a(1)=1`
-/

namespace A174227.P1682888271199206915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A042948 (a (n - 2) + 6 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A174227.P1682888271199206915

/-!
# A174228: Divisors of 24!.

The programs for A174228, there is no canonical definition to state claims against.
-/

/-! ## A174228.P1627780133999966276

`lt[A139169(n+1), 10]+1`
-/

namespace A174228.P1627780133999966276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174228.P1627780133999966276

/-! ## A174228.P15226087963765675698

`lt[A002034(n+1), 24]+1`
-/

namespace A174228.P15226087963765675698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174228.P15226087963765675698

/-! ## A174228.P11836482533476811635

`lt[A122416(n+1), 25]+1`
-/

namespace A174228.P11836482533476811635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174228.P11836482533476811635

/-! ## A174228.P2745904563813589601

`lt[A139171(n+1), 29]+1`
-/

namespace A174228.P2745904563813589601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174228.P2745904563813589601

/-! ## A174228.P6809534877643774686

`lt[A069797(a(A064989(n))), 15]` with `a(0)=15, a(1)=4, a(2)=1`
-/

namespace A174228.P6809534877643774686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15, 4, 1] fun n f1 =>
  A069797 (f1 (A064989 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A174228.P6809534877643774686

/-! ## A174228.P6315608760884874862

`lt[2*n, A011776(52*(n+1))]+1`
-/

namespace A174228.P6315608760884874862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (52 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A174228.P6315608760884874862

/-!
# A174230: a(n) = product_{i=1..n-1} a(i), with a(1) = 3 and a(2) = 7.

The programs for A174230, there is no canonical definition to state claims against.
-/

/-! ## A174230.P7934763425256369475

`a(n-1)²` with `a(0)=3, a(1)=7, a(2)=21`
-/

namespace A174230.P7934763425256369475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 21] fun n a =>
  a (n - 1) ^ 2

end

end A174230.P7934763425256369475

/-! ## A174230.P16951780513503664533

`a(n-1)*a(n-1)` with `a(0)=3, a(1)=7, a(2)=21`
-/

namespace A174230.P16951780513503664533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 21] fun n a =>
  a (n - 1) * a (n - 1)

end

end A174230.P16951780513503664533

/-!
# A174235: The absolute values of (n-th number k such that k*4-+1 is twin prime pair minus n-th number m such that m*4+2-+1 is twin prime pair).

The programs for A174235, there is no canonical definition to state claims against.
-/

/-! ## A174235.P16045498651726236306

`abs(A045753(n+1)-A123986(n+1))`
-/

namespace A174235.P16045498651726236306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045753 (n + 1) - A123986 (n + 1)|

end

end A174235.P16045498651726236306

/-! ## A174235.P6540014396762756253

`abs(3*A201541(n)+1-A045753(n+1))`
-/

namespace A174235.P6540014396762756253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A201541 n + 1 - A045753 (n + 1)|

end

end A174235.P6540014396762756253

/-! ## A174235.P742249807254737929

`abs(A045753(n+1)-floor(A071695(n+1)/4))`
-/

namespace A174235.P742249807254737929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045753 (n + 1) - ⌊(A071695 (n + 1) : ℚ) / 4⌋|

end

end A174235.P742249807254737929

/-! ## A174235.P15325541488351752484

`abs(A045753(n+1)-floor(A071696(n+1)/4))`
-/

namespace A174235.P15325541488351752484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045753 (n + 1) - ⌊(A071696 (n + 1) : ℚ) / 4⌋|

end

end A174235.P15325541488351752484

/-! ## A174235.P17135679409983296688

`abs(A123986(n+1)-floor(A071699(n+1)/4))`
-/

namespace A174235.P17135679409983296688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123986 (n + 1) - ⌊(A071699 (n + 1) : ℚ) / 4⌋|

end

end A174235.P17135679409983296688

/-! ## A174235.P8900165028342479822

`abs(A123986(n+1)-ceil(A071698(n+1)/4))`
-/

namespace A174235.P8900165028342479822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123986 (n + 1) - ⌈(A071698 (n + 1) : ℚ) / 4⌉|

end

end A174235.P8900165028342479822

/-! ## A174235.P2794419351402532018

`abs(A123986(n+1)-A241557(n+2)/2)`
-/

namespace A174235.P2794419351402532018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A123986 (n + 1) : ℚ) - (A241557 (n + 2) : ℚ) / 2|

end

end A174235.P2794419351402532018

/-!
# A174236: n-th number k such that k*4-+1 is twin prime pair plus n-th number m such that m*4+2-+1 is twin prime pair.

The programs for A174236, there is no canonical definition to state claims against.
-/

/-! ## A174236.P17425613240463157896

`A045753(n+1)+A123986(n+1)`
-/

namespace A174236.P17425613240463157896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045753 (n + 1) + A123986 (n + 1)

end

end A174236.P17425613240463157896

/-! ## A174236.P4672394945048014470

`A045753(n+1)+3*A201541(n)+1`
-/

namespace A174236.P4672394945048014470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045753 (n + 1) + (3 * A201541 n + 1)

end

end A174236.P4672394945048014470

/-! ## A174236.P13614849465686748591

`(A071698(n+1)+A071695(n+1))/4`
-/

namespace A174236.P13614849465686748591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071698 (n + 1) + A071695 (n + 1) : ℚ) / 4

end

end A174236.P13614849465686748591

/-! ## A174236.P11587557597215815999

`A045753(n+1)+floor(A071695(n+1)/4)`
-/

namespace A174236.P11587557597215815999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045753 (n + 1) + ⌊(A071695 (n + 1) : ℚ) / 4⌋

end

end A174236.P11587557597215815999

/-! ## A174236.P17623199040459008434

`A045753(n+1)+floor(A071696(n+1)/4)`
-/

namespace A174236.P17623199040459008434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045753 (n + 1) + ⌊(A071696 (n + 1) : ℚ) / 4⌋

end

end A174236.P17623199040459008434

/-! ## A174236.P16861099869672786715

`A123986(n+1)+A241557(n+2)/2`
-/

namespace A174236.P16861099869672786715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123986 (n + 1) : ℚ) + (A241557 (n + 2) : ℚ) / 2

end

end A174236.P16861099869672786715

/-! ## A174236.P6045663256249844012

`A045753(n+1)+A016777(A201541(n))`
-/

namespace A174236.P6045663256249844012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045753 (n + 1) + A016777 (A201541 n).toNat

end

end A174236.P6045663256249844012

/-! ## A174236.P11744086001501301082

`A123986(n+1)+A000010(A071699(n+1))/4`
-/

namespace A174236.P11744086001501301082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123986 (n + 1) : ℚ) + (A000010 (A071699 (n + 1)).toNat : ℚ) / 4

end

end A174236.P11744086001501301082

/-! ## A174236.P13670635457398643655

`A123986(n+1)+A000203(A071698(n+1))/4`
-/

namespace A174236.P13670635457398643655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123986 (n + 1) : ℚ) + (A000203 (A071698 (n + 1)).toNat : ℚ) / 4

end

end A174236.P13670635457398643655

/-! ## A174236.P1318709021813073270

`A123986(n+1)+A000203(A122564(Δ[n²]))/4`
-/

namespace A174236.P1318709021813073270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123986 (n + 1) : ℚ) + (A000203 (A122564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / 4

end

end A174236.P1318709021813073270

/-!
# A174237: Numbers n such that 4n-1 and 4n+3 are prime.

The programs for A174237, the canonical program `A174237.P9308172459336184979` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174237 has offset 1).

The definition of A174237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174237.P5578408193950090014

`∩[A005099(n+1), A095278(n+1)]`
-/

namespace A174237.P5578408193950090014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174237.P5578408193950090014

namespace A174237

/-- `∩[A005099(n+1), A095278(n+1)]` -/
def P5578408193950090014.Spec : Prop :=
  ∀ n, (P5578408193950090014.a n : ℤ) = A174237 (n + 1)

end A174237

/-! ## A174237.P10797896212671276094

`record[A005099(n+1)/A082076(n+1)]`
-/

namespace A174237.P10797896212671276094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005099 (n + 1) : ℚ) / (A082076 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P10797896212671276094

namespace A174237

/-- `record[A005099(n+1)/A082076(n+1)]` -/
def P10797896212671276094.Spec : Prop :=
  ∀ n, P10797896212671276094.a n = (A174237 (n + 1) : ℚ)

end A174237

/-! ## A174237.P9308172459336184979

`record[ceil(A002145(n+1)/A082075(n+1))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A174237

/-- `record[ceil(A002145(n+1)/A082075(n+1))]` -/
def P9308172459336184979.Spec : Prop :=
  ∀ n, P9308172459336184979.a n = A174237 (n + 1)

theorem P9308172459336184979.correct : P9308172459336184979.Spec := by
  intro n
  simp only [A174237, Nat.add_sub_cancel]

end A174237

/-! ## A174237.P1388361039297626826

`record[A095278(n+2)%(A095278(n+1)+2)]`
-/

namespace A174237.P1388361039297626826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095278 (n + 2)) (A095278 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P1388361039297626826

namespace A174237

/-- `record[A095278(n+2)%(A095278(n+1)+2)]` -/
def P1388361039297626826.Spec : Prop :=
  ∀ n, P1388361039297626826.a n = A174237 (n + 1)

end A174237

/-! ## A174237.P13903044819018218326

`record[ceil(A002145(n+1)/4)/A082076(n+1)]`
-/

namespace A174237.P13903044819018218326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A002145 (n + 1) : ℚ) / 4⌉ : ℚ) / (A082076 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P13903044819018218326

namespace A174237

/-- `record[ceil(A002145(n+1)/4)/A082076(n+1)]` -/
def P13903044819018218326.Spec : Prop :=
  ∀ n, P13903044819018218326.a n = (A174237 (n + 1) : ℚ)

end A174237

/-! ## A174237.P3642500741672631250

`A005099(eq[1, A005099(n+2)-A005099(n+1)]+1)`
-/

namespace A174237.P3642500741672631250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 2) - A005099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A174237.P3642500741672631250

namespace A174237

/-- `A005099(eq[1, A005099(n+2)-A005099(n+1)]+1)` -/
def P3642500741672631250.Spec : Prop :=
  ∀ n, P3642500741672631250.a n = A174237 (n + 1)

end A174237

/-! ## A174237.P17258677572103378508

`record[(A002145(n+1)-A190105(n+1))/A082076(n+1)]`
-/

namespace A174237.P17258677572103378508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) - A190105 (n + 1) : ℚ) / (A082076 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P17258677572103378508

namespace A174237

/-- `record[(A002145(n+1)-A190105(n+1))/A082076(n+1)]` -/
def P17258677572103378508.Spec : Prop :=
  ∀ n, P17258677572103378508.a n = (A174237 (n + 1) : ℚ)

end A174237

/-! ## A174237.P17735285634267071649

`record[(A190105(n+1)-A104635(n+1))/A082076(n+1)]`
-/

namespace A174237.P17735285634267071649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190105 (n + 1) - A104635 (n + 1) : ℚ) / (A082076 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P17735285634267071649

namespace A174237

/-- `record[(A190105(n+1)-A104635(n+1))/A082076(n+1)]` -/
def P17735285634267071649.Spec : Prop :=
  ∀ n, P17735285634267071649.a n = (A174237 (n + 1) : ℚ)

end A174237

/-! ## A174237.P10310143532701951272

`record[A088762(n+1)/A020639(A088762(n+1))]`
-/

namespace A174237.P10310143532701951272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088762 (n + 1) : ℚ) / (A020639 (A088762 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P10310143532701951272

namespace A174237

/-- `record[A088762(n+1)/A020639(A088762(n+1))]` -/
def P10310143532701951272.Spec : Prop :=
  ∀ n, P10310143532701951272.a n = (A174237 (n + 1) : ℚ)

end A174237

/-! ## A174237.P13470444968990959396

`record[A103391(A046132(n+1))-2]`
-/

namespace A174237.P13470444968990959396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A046132 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P13470444968990959396

namespace A174237

/-- `record[A103391(A046132(n+1))-2]` -/
def P13470444968990959396.Spec : Prop :=
  ∀ n, P13470444968990959396.a n = A174237 (n + 1)

end A174237

/-! ## A174237.P1861938690681018221

`record[A246425(A047847(n+1))]`
-/

namespace A174237.P1861938690681018221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A047847 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P1861938690681018221

namespace A174237

/-- `record[A246425(A047847(n+1))]` -/
def P1861938690681018221.Spec : Prop :=
  ∀ n, P1861938690681018221.a n = A174237 (n + 1)

end A174237

/-! ## A174237.P9211412690467000762

`lt[A245203(n+1), A101264(2*n+1)]+1`
-/

namespace A174237.P9211412690467000762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A174237.P9211412690467000762

namespace A174237

/-- `lt[A245203(n+1), A101264(2*n+1)]+1` -/
def P9211412690467000762.Spec : Prop :=
  ∀ n, (P9211412690467000762.a n : ℤ) = A174237 (n + 1)

end A174237

/-! ## A174237.P11607435748390136486

`record[A278537(A088762(n+1))]`
-/

namespace A174237.P11607435748390136486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A088762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P11607435748390136486

namespace A174237

/-- `record[A278537(A088762(n+1))]` -/
def P11607435748390136486.Spec : Prop :=
  ∀ n, P11607435748390136486.a n = A174237 (n + 1)

end A174237

/-! ## A174237.P14780882141025485924

`record[A025480(A047847(n+1)+1)]`
-/

namespace A174237.P14780882141025485924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A047847 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P14780882141025485924

namespace A174237

/-- `record[A025480(A047847(n+1)+1)]` -/
def P14780882141025485924.Spec : Prop :=
  ∀ n, P14780882141025485924.a n = A174237 (n + 1)

end A174237

/-! ## A174237.P14374847276736221927

`eq[A046067(n+2), A053193(2*n+1)]+1`
-/

namespace A174237.P14374847276736221927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053193 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A174237.P14374847276736221927

namespace A174237

/-- `eq[A046067(n+2), A053193(2*n+1)]+1` -/
def P14374847276736221927.Spec : Prop :=
  ∀ n, (P14374847276736221927.a n : ℤ) = A174237 (n + 1)

end A174237

/-! ## A174237.P12672533231745111893

`eq[A054906(2*(n+1)), A198020(2*n+1)]+1`
-/

namespace A174237.P12672533231745111893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A174237.P12672533231745111893

namespace A174237

/-- `eq[A054906(2*(n+1)), A198020(2*n+1)]+1` -/
def P12672533231745111893.Spec : Prop :=
  ∀ n, (P12672533231745111893.a n : ℤ) = A174237 (n + 1)

end A174237

/-! ## A174237.P8395453961339114903

`eq[A064652(2*n+3), A198020(2*n+1)]+1`
-/

namespace A174237.P8395453961339114903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064652 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A174237.P8395453961339114903

namespace A174237

/-- `eq[A064652(2*n+3), A198020(2*n+1)]+1` -/
def P8395453961339114903.Spec : Prop :=
  ∀ n, (P8395453961339114903.a n : ℤ) = A174237 (n + 1)

end A174237

/-! ## A174237.P12200162677824983486

`record[(n+1)/(A097723(A097723(n))-(n+1))]`
-/

namespace A174237.P12200162677824983486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A097723 (A097723 n).toNat - (n + 1 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P12200162677824983486

namespace A174237

/-- `record[(n+1)/(A097723(A097723(n))-(n+1))]` -/
def P12200162677824983486.Spec : Prop :=
  ∀ n, P12200162677824983486.a n = (A174237 (n + 1) : ℚ)

end A174237

/-! ## A174237.P15462217894123210692

`record[A054576(A087679(n+1)-1)]`
-/

namespace A174237.P15462217894123210692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A087679 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P15462217894123210692

namespace A174237

/-- `record[A054576(A087679(n+1)-1)]` -/
def P15462217894123210692.Spec : Prop :=
  ∀ n, P15462217894123210692.a n = A174237 (n + 1)

end A174237

/-!
# A174238: Inverse Moebius transform of even part of n (A006519).

The programs for A174238, the canonical program `A174238.P14989720794019310350` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174238 has offset 1).

The definition of A174238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174238.P14989720794019310350

`∑{d}[n+1, and(#, -#)]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174238

/-- `∑{d}[n+1, and(#, -#)]` -/
def P14989720794019310350.Spec : Prop :=
  ∀ n, P14989720794019310350.a n = A174238 (n + 1)

theorem P14989720794019310350.correct : P14989720794019310350.Spec := by
  intro n
  simp only [A174238, Nat.add_sub_cancel]

end A174238

/-! ## A174238.P13938267307266332570

`∑{d}[n+1, 2^val(#, 2)]`
-/

namespace A174238.P13938267307266332570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 2 ^ SequenceMachineLib.valuation d 2

end

end A174238.P13938267307266332570

namespace A174238

/-- `∑{d}[n+1, 2^val(#, 2)]` -/
def P13938267307266332570.Spec : Prop :=
  ∀ n, (P13938267307266332570.a n : ℤ) = A174238 (n + 1)

end A174238

/-! ## A174238.P18059632649276267000

`∑{d}[n+1, -or(#, -#)]`
-/

namespace A174238.P18059632649276267000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-Int.lor (d : ℤ) (-(d : ℤ)))

end

end A174238.P18059632649276267000

namespace A174238

/-- `∑{d}[n+1, -or(#, -#)]` -/
def P18059632649276267000.Spec : Prop :=
  ∀ n, P18059632649276267000.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P4177946235513646367

`∑{d}[n+1, gcd(#, (3-n)^10)]`
-/

namespace A174238.P4177946235513646367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) ((3 - (n : ℤ)) ^ 10)

end

end A174238.P4177946235513646367

namespace A174238

/-- `∑{d}[n+1, gcd(#, (3-n)^10)]` -/
def P4177946235513646367.Spec : Prop :=
  ∀ n, (P4177946235513646367.a n : ℤ) = A174238 (n + 1)

end A174238

/-! ## A174238.P6082697425021038995

`∑{d}[n+1, A006519(#)]`
-/

namespace A174238.P6082697425021038995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006519 d

end

end A174238.P6082697425021038995

namespace A174238

/-- `∑{d}[n+1, A006519(#)]` -/
def P6082697425021038995.Spec : Prop :=
  ∀ n, P6082697425021038995.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P9570694986877366818

`∑{d}[n+1, #/A000265(#)]`
-/

namespace A174238.P9570694986877366818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A000265 d : ℚ)

end

end A174238.P9570694986877366818

namespace A174238

/-- `∑{d}[n+1, #/A000265(#)]` -/
def P9570694986877366818.Spec : Prop :=
  ∀ n, P9570694986877366818.a n = (A174238 (n + 1) : ℚ)

end A174238

/-! ## A174238.P10777234779111131222

`A001227(n+1)*A038712(n+1)`
-/

namespace A174238.P10777234779111131222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A038712 (n + 1)

end

end A174238.P10777234779111131222

namespace A174238

/-- `A001227(n+1)*A038712(n+1)` -/
def P10777234779111131222.Spec : Prop :=
  ∀ n, P10777234779111131222.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P8147784673616445444

`A309153(n+1)/A000593(n+1)`
-/

namespace A174238.P8147784673616445444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309153 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ)

end

end A174238.P8147784673616445444

namespace A174238

/-- `A309153(n+1)/A000593(n+1)` -/
def P8147784673616445444.Spec : Prop :=
  ∀ n, P8147784673616445444.a n = (A174238 (n + 1) : ℚ)

end A174238

/-! ## A174238.P4469341294884105533

`A064840(n+1)/A264740(n+1)`
-/

namespace A174238.P4469341294884105533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A264740 (n + 1) : ℚ)

end

end A174238.P4469341294884105533

namespace A174238

/-- `A064840(n+1)/A264740(n+1)` -/
def P4469341294884105533.Spec : Prop :=
  ∀ n, P4469341294884105533.a n = (A174238 (n + 1) : ℚ)

end A174238

/-! ## A174238.P13469708205961835975

`(A171977(n+1)-1)*A001227(n+1)`
-/

namespace A174238.P13469708205961835975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) - 1) * A001227 (n + 1)

end

end A174238.P13469708205961835975

namespace A174238

/-- `(A171977(n+1)-1)*A001227(n+1)` -/
def P13469708205961835975.Spec : Prop :=
  ∀ n, P13469708205961835975.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P7582563870919078981

`xor(n, n+1)*A000005(A336158(n+1))`
-/

namespace A174238.P7582563870919078981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) : ℤ) * A000005 (A336158 (n + 1)).toNat

end

end A174238.P7582563870919078981

namespace A174238

/-- `xor(n, n+1)*A000005(A336158(n+1))` -/
def P7582563870919078981.Spec : Prop :=
  ∀ n, P7582563870919078981.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P2527715001385565335

`∑{d}[n+1, A001227(#)*A048298((n+1)/#)]`
-/

namespace A174238.P2527715001385565335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A048298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174238.P2527715001385565335

namespace A174238

/-- `∑{d}[n+1, A001227(#)*A048298((n+1)/#)]` -/
def P2527715001385565335.Spec : Prop :=
  ∀ n, P2527715001385565335.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P11939154333568637173

`∑{d}[n+1, A001511(#)*A160467((n+1)/#)]`
-/

namespace A174238.P11939154333568637173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A160467 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174238.P11939154333568637173

namespace A174238

/-- `∑{d}[n+1, A001511(#)*A160467((n+1)/#)]` -/
def P11939154333568637173.Spec : Prop :=
  ∀ n, P11939154333568637173.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P14916140185208907370

`∑{d}[n+1, A067856(#)*A133700((n+1)/#)]`
-/

namespace A174238.P14916140185208907370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A133700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174238.P14916140185208907370

namespace A174238

/-- `∑{d}[n+1, A067856(#)*A133700((n+1)/#)]` -/
def P14916140185208907370.Spec : Prop :=
  ∀ n, P14916140185208907370.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P12154826819743405539

`∑{d}[n+1, A056832(#)*A234957((n+1)/#)]`
-/

namespace A174238.P12154826819743405539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056832 d * A234957 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174238.P12154826819743405539

namespace A174238

/-- `∑{d}[n+1, A056832(#)*A234957((n+1)/#)]` -/
def P12154826819743405539.Spec : Prop :=
  ∀ n, P12154826819743405539.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P15750951144353153673

`∑{d}[n+1, A007429(#)*A326937((n+1)/#)]`
-/

namespace A174238.P15750951144353153673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A326937 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174238.P15750951144353153673

namespace A174238

/-- `∑{d}[n+1, A007429(#)*A326937((n+1)/#)]` -/
def P15750951144353153673.Spec : Prop :=
  ∀ n, P15750951144353153673.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P3911948023705335262

`∑{d}[n+1, A007425(#)*A361984((n+1)/#)]`
-/

namespace A174238.P3911948023705335262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174238.P3911948023705335262

namespace A174238

/-- `∑{d}[n+1, A007425(#)*A361984((n+1)/#)]` -/
def P3911948023705335262.Spec : Prop :=
  ∀ n, P3911948023705335262.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P17620910102585412176

`∑{d}[n+1, A130054(#)*A267092((n+1)/#)]`
-/

namespace A174238.P17620910102585412176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A267092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174238.P17620910102585412176

namespace A174238

/-- `∑{d}[n+1, A130054(#)*A267092((n+1)/#)]` -/
def P17620910102585412176.Spec : Prop :=
  ∀ n, P17620910102585412176.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P5002936436737610497

`∑{d}[n+1, A118827(#)*A296306((n+1)/#)]`
-/

namespace A174238.P5002936436737610497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118827 d * A296306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174238.P5002936436737610497

namespace A174238

/-- `∑{d}[n+1, A118827(#)*A296306((n+1)/#)]` -/
def P5002936436737610497.Spec : Prop :=
  ∀ n, P5002936436737610497.a n = A174238 (n + 1)

end A174238

/-! ## A174238.P1390023219219682407

`∑{d}[n+1, A326417(#)*A327274((n+1)/#)]`
-/

namespace A174238.P1390023219219682407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326417 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174238.P1390023219219682407

namespace A174238

/-- `∑{d}[n+1, A326417(#)*A327274((n+1)/#)]` -/
def P1390023219219682407.Spec : Prop :=
  ∀ n, P1390023219219682407.a n = A174238 (n + 1)

end A174238

/-!
# A174239: a(n) = (3*n + 1 + (-1)^n*(n+3))/4.

The programs for A174239, the canonical program `A174239.P4184978328632838699` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174239 has offset 0).

The definition of A174239 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1+(-1)^n*(n+3))/4` (program `A174239.P4857583187837294475`, by `A174239.P4857583187837294475.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174239.P4184978328632838699

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174239

/-- `2*a(n-2)-a(n-4)` -/
def P4184978328632838699.Spec : Prop :=
  ∀ n, P4184978328632838699.a n = A174239 n

theorem P4184978328632838699.correct : P4184978328632838699.Spec := by
  intro n
  simp only [A174239]

end A174239

/-! ## A174239.P4857583187837294475

`(3*n+1+(-1)^n*(n+3))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174239.P4857583187837294475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1 : ℤ) + (-1) ^ n * (n + 3 : ℤ) : ℚ) / 4

end

end A174239.P4857583187837294475

namespace A174239

/-- `(3*n+1+(-1)^n*(n+3))/4` -/
def P4857583187837294475.Spec : Prop :=
  ∀ n, P4857583187837294475.a n = (A174239 n : ℚ)

theorem P4857583187837294475.correct : P4857583187837294475.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A174239, Nat.add_sub_cancel, A174239.P4857583187837294475.a, A174239.P4184978328632838699.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A174239, Nat.add_sub_cancel, A174239.P4857583187837294475.a, A174239.P4184978328632838699.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A174239

/-! ## A174239.P12703555779245458127

`(∑[n+2]-1)%(n+3)`
-/

namespace A174239.P12703555779245458127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 3 : ℤ)

end

end A174239.P12703555779245458127

namespace A174239

/-- `(∑[n+2]-1)%(n+3)` -/
def P12703555779245458127.Spec : Prop :=
  ∀ n, P12703555779245458127.a n = A174239 n

end A174239

/-! ## A174239.P12063518021438743671

`gcd(n+3, 3-∑[n])-2`
-/

namespace A174239.P12063518021438743671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 3 : ℤ) (3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℤ) - 2

end

end A174239.P12063518021438743671

namespace A174239

/-- `gcd(n+3, 3-∑[n])-2` -/
def P12063518021438743671.Spec : Prop :=
  ∀ n, P12063518021438743671.a n = A174239 n

end A174239

/-! ## A174239.P10198162446286837977

`(n+3)/(and(1, n)+1)-2`
-/

namespace A174239.P10198162446286837977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Nat.land 1 n + 1 : ℚ) - 2

end

end A174239.P10198162446286837977

namespace A174239

/-- `(n+3)/(and(1, n)+1)-2` -/
def P10198162446286837977.Spec : Prop :=
  ∀ n, P10198162446286837977.a n = (A174239 n : ℚ)

end A174239

/-! ## A174239.P16116360059642207913

`a(n-2)-or(n, -2)` with `a(0)=1, a(1)=0`
-/

namespace A174239.P16116360059642207913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - Int.lor (n : ℤ) (-2)

end

end A174239.P16116360059642207913

namespace A174239

/-- `a(n-2)-or(n, -2)` -/
def P16116360059642207913.Spec : Prop :=
  ∀ n, P16116360059642207913.a n = A174239 n

end A174239

/-! ## A174239.P15645899953070504571

`floor(∑[n]/(a(n-1)+1))` with `a(0)=1`
-/

namespace A174239.P15645899953070504571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) + 1 : ℚ)⌋

end

end A174239.P15645899953070504571

namespace A174239

/-- `floor(∑[n]/(a(n-1)+1))` -/
def P15645899953070504571.Spec : Prop :=
  ∀ n, P15645899953070504571.a n = A174239 n

end A174239

/-! ## A174239.P3425475394933592058

`ogf((1+x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A174239.P3425475394933592058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 1] [1, 0, -2, 0, 1] n

end

end A174239.P3425475394933592058

namespace A174239

/-- `ogf((1+x^2+x^3)/(1-2x^2+x^4))` -/
def P3425475394933592058.Spec : Prop :=
  ∀ n, P3425475394933592058.a n = A174239 n

end A174239

/-! ## A174239.P6872068819409287559

`floor(3*n/2-a(n-1))` with `a(0)=1`
-/

namespace A174239.P6872068819409287559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊3 * ((n : ℚ) / 2) - (a (n - 1) : ℚ)⌋

end

end A174239.P6872068819409287559

namespace A174239

/-- `floor(3*n/2-a(n-1))` -/
def P6872068819409287559.Spec : Prop :=
  ∀ n, P6872068819409287559.a n = A174239 n

end A174239

/-! ## A174239.P3597076423263371642

`floor(n/2-a(n-1)+n)` with `a(0)=1`
-/

namespace A174239.P3597076423263371642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / 2 - (a (n - 1) : ℚ) + (n : ℚ)⌋

end

end A174239.P3597076423263371642

namespace A174239

/-- `floor(n/2-a(n-1)+n)` -/
def P3597076423263371642.Spec : Prop :=
  ∀ n, P3597076423263371642.a n = A174239 n

end A174239

/-! ## A174239.P1831137041617712458

`floor(n/2-(a(n-1)-n))` with `a(0)=1`
-/

namespace A174239.P1831137041617712458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / 2 - (a (n - 1) - (n : ℤ) : ℚ)⌋

end

end A174239.P1831137041617712458

namespace A174239

/-- `floor(n/2-(a(n-1)-n))` -/
def P1831137041617712458.Spec : Prop :=
  ∀ n, P1831137041617712458.a n = A174239 n

end A174239

/-! ## A174239.P8804813642465974702

`A026741(xor(1, n))`
-/

namespace A174239.P8804813642465974702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Nat.xor 1 n)

end

end A174239.P8804813642465974702

namespace A174239

/-- `A026741(xor(1, n))` -/
def P8804813642465974702.Spec : Prop :=
  ∀ n, P8804813642465974702.a n = A174239 n

end A174239

/-!
# A174240: The multiplicative order of 2 mod n, where n an odd squarefree semiprime (A046388).

The programs for A174240, there is no canonical definition to state claims against.
-/

/-! ## A174240.P11605421595520571635

`A002326(eq[9, A158315(n)])`
-/

namespace A174240.P11605421595520571635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174240.P11605421595520571635

/-! ## A174240.P8695460307953598404

`A002326(eq[6, A278223(n+1)])`
-/

namespace A174240.P8695460307953598404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174240.P8695460307953598404

/-! ## A174240.P297683843657324129

`A002326((A046388(n+1)-1)/2)`
-/

namespace A174240.P297683843657324129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A046388 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A174240.P297683843657324129

/-! ## A174240.P3888852728378803442

`A002326(eq[1, A353481(2*n+1)])`
-/

namespace A174240.P3888852728378803442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174240.P3888852728378803442

/-! ## A174240.P15016950354053427981

`A002326(eq[1, A353481(n+1)]/2)`
-/

namespace A174240.P15016950354053427981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2)).toNat

end

end A174240.P15016950354053427981

/-! ## A174240.P1370015645841174551

`A002326(eq[4, A101296(2*n+1)])`
-/

namespace A174240.P1370015645841174551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174240.P1370015645841174551

/-! ## A174240.P4744910850835470184

`A007733(A046388(n+1))`
-/

namespace A174240.P4744910850835470184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A046388 (n + 1)).toNat

end

end A174240.P4744910850835470184

/-! ## A174240.P15478606044755065437

`A002326(eq[3, A002033(2*n)])`
-/

namespace A174240.P15478606044755065437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174240.P15478606044755065437

/-! ## A174240.P12331646001976108336

`A007733(eq[1, A353481(n+1)]+1)`
-/

namespace A174240.P12331646001976108336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A174240.P12331646001976108336

/-! ## A174240.P14240480705643767177

`A002322(A046388(n+1))/A174435(n+1)`
-/

namespace A174240.P14240480705643767177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (A046388 (n + 1)).toNat : ℚ) / (A174435 (n + 1) : ℚ)

end

end A174240.P14240480705643767177

/-! ## A174240.P11971380853696272253

`A002326(A234093(n+1))`
-/

namespace A174240.P11971380853696272253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A234093 (n + 1)).toNat

end

end A174240.P11971380853696272253

/-!
# A174241: Primes p such that 2*p-3 and 4*p-5 are also prime.

The programs for A174241, the canonical program `A174241.P13758903175279605930` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174241 has offset 1).

The definition of A174241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174241.P13758903175279605930

`p?[A124485(n+1)+1]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A174241

/-- `p?[A124485(n+1)+1]` -/
def P13758903175279605930.Spec : Prop :=
  ∀ n, P13758903175279605930.a n = A174241 (n + 1)

theorem P13758903175279605930.correct : P13758903175279605930.Spec := by
  intro n
  simp only [A174241, Nat.add_sub_cancel]

end A174241

/-! ## A174241.P17352316463895957314

`p?[A152843(n+1)+3]`
-/

namespace A174241.P17352316463895957314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152843 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174241.P17352316463895957314

namespace A174241

/-- `p?[A152843(n+1)+3]` -/
def P17352316463895957314.Spec : Prop :=
  ∀ n, P17352316463895957314.a n = A174241 (n + 1)

end A174241

/-! ## A174241.P2667712063279871043

`∩[A063908(n+1), A156300(n+1)]`
-/

namespace A174241.P2667712063279871043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174241.P2667712063279871043

namespace A174241

/-- `∩[A063908(n+1), A156300(n+1)]` -/
def P2667712063279871043.Spec : Prop :=
  ∀ n, (P2667712063279871043.a n : ℤ) = A174241 (n + 1)

end A174241

/-! ## A174241.P9694731797513895599

`∩[A090670(n+1), A156300(n+1)]`
-/

namespace A174241.P9694731797513895599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174241.P9694731797513895599

namespace A174241

/-- `∩[A090670(n+1), A156300(n+1)]` -/
def P9694731797513895599.Spec : Prop :=
  ∀ n, (P9694731797513895599.a n : ℤ) = A174241 (n + 1)

end A174241

/-! ## A174241.P166851107848673075

`∩[A063908(n+1), A156287(n+1)]`
-/

namespace A174241.P166851107848673075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174241.P166851107848673075

namespace A174241

/-- `∩[A063908(n+1), A156287(n+1)]` -/
def P166851107848673075.Spec : Prop :=
  ∀ n, (P166851107848673075.a n : ℤ) = A174241 (n + 1)

end A174241

/-! ## A174241.P14038303749845210372

`∩[A098090(n+1), A156300(n+1)]`
-/

namespace A174241.P14038303749845210372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174241.P14038303749845210372

namespace A174241

/-- `∩[A098090(n+1), A156300(n+1)]` -/
def P14038303749845210372.Spec : Prop :=
  ∀ n, (P14038303749845210372.a n : ℤ) = A174241 (n + 1)

end A174241

/-! ## A174241.P18358952495627310944

`record[A006530(A002515(n+1)+3)]`
-/

namespace A174241.P18358952495627310944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002515 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174241.P18358952495627310944

namespace A174241

/-- `record[A006530(A002515(n+1)+3)]` -/
def P18358952495627310944.Spec : Prop :=
  ∀ n, P18358952495627310944.a n = A174241 (n + 1)

end A174241

/-! ## A174241.P15874933907033782824

`p?[A000265(A002515(n+1)+3)]`
-/

namespace A174241.P15874933907033782824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002515 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174241.P15874933907033782824

namespace A174241

/-- `p?[A000265(A002515(n+1)+3)]` -/
def P15874933907033782824.Spec : Prop :=
  ∀ n, P15874933907033782824.a n = A174241 (n + 1)

end A174241

/-! ## A174241.P5352707896452924811

`record[A006530(A005384(n+2)+3)]`
-/

namespace A174241.P5352707896452924811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005384 (n + 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174241.P5352707896452924811

namespace A174241

/-- `record[A006530(A005384(n+2)+3)]` -/
def P5352707896452924811.Spec : Prop :=
  ∀ n, P5352707896452924811.a n = A174241 (n + 1)

end A174241

/-! ## A174241.P4829543533198991755

`p?[A000265(A158034(n+1)+3)]`
-/

namespace A174241.P4829543533198991755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A158034 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174241.P4829543533198991755

namespace A174241

/-- `p?[A000265(A158034(n+1)+3)]` -/
def P4829543533198991755.Spec : Prop :=
  ∀ n, P4829543533198991755.a n = A174241 (n + 1)

end A174241

/-! ## A174241.P1858923894985892008

`p?[A000265(p?[A163780(n+1)]+3)]`
-/

namespace A174241.P1858923894985892008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163780 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174241.P1858923894985892008

namespace A174241

/-- `p?[A000265(p?[A163780(n+1)]+3)]` -/
def P1858923894985892008.Spec : Prop :=
  ∀ n, P1858923894985892008.a n = A174241 (n + 1)

end A174241

/-! ## A174241.P14453207477478428073

`record[A006530(A005385(n+2)+5)]`
-/

namespace A174241.P14453207477478428073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005385 (n + 2) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174241.P14453207477478428073

namespace A174241

/-- `record[A006530(A005385(n+2)+5)]` -/
def P14453207477478428073.Spec : Prop :=
  ∀ n, P14453207477478428073.a n = A174241 (n + 1)

end A174241

/-!
# A174242: Least of 3 consecutive integers such that product of them is average of twin prime pairs.

The programs for A174242, there is no canonical definition to state claims against.
-/

/-! ## A174242.P1816676295950831703

`A236524(n+1)-1`
-/

namespace A174242.P1816676295950831703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236524 (n + 1) - 1

end

end A174242.P1816676295950831703

/-! ## A174242.P13254246215667749372

`abs(1-A236524(abs(Δ[n²]-n)))`
-/

namespace A174242.P13254246215667749372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A236524 |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)|.toNat)|

end

end A174242.P13254246215667749372

/-! ## A174242.P6012315904374091585

`A023443(A236524(n+1))`
-/

namespace A174242.P6012315904374091585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A236524 (n + 1)).toNat

end

end A174242.P6012315904374091585

/-! ## A174242.P11095693853117446904

`record[A236524(A291766(n))-1]`
-/

namespace A174242.P11095693853117446904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236524 (A291766 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174242.P11095693853117446904

/-! ## A174242.P16409961118297497103

`record[A236524(A324343(n))-1]`
-/

namespace A174242.P16409961118297497103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236524 (A324343 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174242.P16409961118297497103

/-! ## A174242.P457801060379738499

`A023444(A236524(n+1)+1)`
-/

namespace A174242.P457801060379738499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A236524 (n + 1) + 1).toNat

end

end A174242.P457801060379738499

/-! ## A174242.P3160459247419439187

`A289207(A236524(n+1)+1)`
-/

namespace A174242.P3160459247419439187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A236524 (n + 1) + 1).toNat

end

end A174242.P3160459247419439187

/-! ## A174242.P17306731039067354165

`A023445(A236524(n+1)+2)`
-/

namespace A174242.P17306731039067354165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A236524 (n + 1) + 2).toNat

end

end A174242.P17306731039067354165

/-! ## A174242.P17240336167867450276

`A023446(A236524(n+1)+3)`
-/

namespace A174242.P17240336167867450276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A236524 (n + 1) + 3).toNat

end

end A174242.P17240336167867450276

/-! ## A174242.P13342011413555452286

`A140106(2*A236524(n+1))`
-/

namespace A174242.P13342011413555452286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A236524 (n + 1)).toNat

end

end A174242.P13342011413555452286

/-!
# A174244: Least of 4 consecutive integers such that their product +-5 are primes.

The programs for A174244, there is no canonical definition to state claims against.
-/

/-! ## A174244.P12427961649487702966

`∩[A265640(A325328(2*n+1)), A016861(n)]`
-/

namespace A174244.P12427961649487702966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (A325328 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174244.P12427961649487702966

/-!
# A174246: Number of primes of the form x^2 + 1 < 2^n.

The programs for A174246, there is no canonical definition to state claims against.
-/

/-! ## A174246.P17711224169530981825

`A083847(n+1)%(2^n)`
-/

namespace A174246.P17711224169530981825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083847 (n + 1)) (2 ^ n : ℤ)

end

end A174246.P17711224169530981825

/-! ## A174246.P2126619143548086526

`Δ[A083847(n)+a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A174246.P2126619143548086526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A083847 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174246.P2126619143548086526

/-! ## A174246.P18370334752955776897

`A083847(ceil(sqrt(n²+4)))-char[n^6]`
-/

namespace A174246.P18370334752955776897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083847 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A174246.P18370334752955776897

/-! ## A174246.P2988973020725872468

`A057427(n)*A083847(n+1)`
-/

namespace A174246.P2988973020725872468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A083847 (n + 1)

end

end A174246.P2988973020725872468

/-! ## A174246.P17432823750858074219

`A083847(n+1)*A178334(n)`
-/

namespace A174246.P17432823750858074219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083847 (n + 1) * A178334 n

end

end A174246.P17432823750858074219

/-!
# A174247: Number of words of length n composed of the letters a, b, and c with at least as many a's as b's, and at least as many b's as c's, and no a's adjacent.

The programs for A174247, there is no canonical definition to state claims against.
-/

/-! ## A174247.P15866595097735077240

`A078743(n+1)-A085058(A323631(n))`
-/

namespace A174247.P15866595097735077240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078743 (n + 1) - A085058 (A323631 n).toNat

end

end A174247.P15866595097735077240

/-!
# A174248: Number of tilings of a 4 X n rectangle with n tetrominoes of any shape.

The programs for A174248, there is no canonical definition to state claims against.
-/

/-! ## A174248.P1936354642402563574

`A230031(C(n+5, 2)+4)`
-/

namespace A174248.P1936354642402563574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (Nat.choose (n + 5) 2 + 4)

end

end A174248.P1936354642402563574

/-! ## A174248.P12150436447725981189

`A230031(A155212(n)+12)`
-/

namespace A174248.P12150436447725981189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (A155212 n + 12).toNat

end

end A174248.P12150436447725981189

/-! ## A174248.P14317763555523887206

`A230031(A056000(n)+14)`
-/

namespace A174248.P14317763555523887206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (A056000 n + 14).toNat

end

end A174248.P14317763555523887206

/-! ## A174248.P12589664886888658766

`A230031(eq[3, A141169(n)])`
-/

namespace A174248.P12589664886888658766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174248.P12589664886888658766

/-! ## A174248.P13862689011823467210

`A230031(eq[4, A002262(n)])`
-/

namespace A174248.P13862689011823467210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174248.P13862689011823467210

/-!
# A174249: Number of tilings of a 5 X n rectangle with n pentominoes of any shape.

The programs for A174249, there is no canonical definition to state claims against.
-/

/-! ## A174249.P18030366482337333831

`A233427(record[a(n-1)-1+n])` with `a(0)=20, a(1)=5`
-/

namespace A174249.P18030366482337333831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20, 5] fun n f1 =>
  f1 (n - 1) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A174249.P18030366482337333831

/-! ## A174249.P12797537173352796005

`A233427(A055999(n+3))`
-/

namespace A174249.P12797537173352796005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A055999 (n + 3)).toNat

end

end A174249.P12797537173352796005

/-! ## A174249.P8215777605071169343

`A233427(A134227(n+4))`
-/

namespace A174249.P8215777605071169343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A134227 (n + 4)).toNat

end

end A174249.P8215777605071169343

/-! ## A174249.P16348039997390427329

`A233427(A167499(n+4))`
-/

namespace A174249.P16348039997390427329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A167499 (n + 4)).toNat

end

end A174249.P16348039997390427329

/-! ## A174249.P2507557291941807340

`A233427(A077169(n+6))`
-/

namespace A174249.P2507557291941807340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A077169 (n + 6)).toNat

end

end A174249.P2507557291941807340

/-!
# A174250: Number of tilings of a 6 X n rectangle with n hexominoes of any shape.

The programs for A174250, there is no canonical definition to state claims against.
-/

/-! ## A174250.P17567466868415158194

`A352200(comp[2*n+3]^n)`
-/

namespace A174250.P17567466868415158194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352200 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ n)

end

end A174250.P17567466868415158194

/-!
# A174251: Number of tilings of a 7 X n rectangle with n heptominoes of any shape.

The programs for A174251, there is no canonical definition to state claims against.
-/

/-! ## A174251.P9702770357668492776

`and(A036325(n+1), A248219(A000949(n)))`
-/

namespace A174251.P9702770357668492776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036325 (n + 1)) (A248219 (A000949 n).toNat)

end

end A174251.P9702770357668492776

/-!
# A174256: Number of 3 X 3 reduced magic squares with distinct values and maximum value 2n; also, with magic sum 3n.

The programs for A174256, the canonical program `A174256.P1964980402873017546` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174256 has offset 1).

The definition of A174256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174256.P4546712332185101313

`2*(6*(n+1)-13-8*cos(2*(n+1)*π/3)-3*cos((n+1)*π))/3`
-/

namespace A174256.P4546712332185101313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (((6 * (n + 1) : ℤ) - 13 : ℝ) - 8 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) - 3 * Real.cos ((n + 1 : ℝ) * Real.pi)) / 3

end

end A174256.P4546712332185101313

namespace A174256

/-- `2*(6*(n+1)-13-8*cos(2*(n+1)*π/3)-3*cos((n+1)*π))/3` -/
def P4546712332185101313.Spec : Prop :=
  ∀ n, P4546712332185101313.a n = (A174256 (n + 1) : ℝ)

end A174256

/-! ## A174256.P1964980402873017546

`8*A174257(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174256

/-- `8*A174257(n+1)` -/
def P1964980402873017546.Spec : Prop :=
  ∀ n, P1964980402873017546.a n = A174256 (n + 1)

theorem P1964980402873017546.correct : P1964980402873017546.Spec := by
  intro n
  simp only [A174256, Nat.add_sub_cancel]

end A174256

/-! ## A174256.P571798330683185643

`8*ceil((n-gcd(3, n+1))/2)`
-/

namespace A174256.P571798330683185643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ⌈((n : ℤ) - (Nat.gcd 3 (n + 1) : ℤ) : ℚ) / 2⌉

end

end A174256.P571798330683185643

namespace A174256

/-- `8*ceil((n-gcd(3, n+1))/2)` -/
def P571798330683185643.Spec : Prop :=
  ∀ n, P571798330683185643.a n = A174256 (n + 1)

end A174256

/-! ## A174256.P7434356652687275999

`8*(floor(n/2)-Δ[floor(n/3)])`
-/

namespace A174256.P7434356652687275999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (⌊(n : ℚ) / 2⌋ - (f1 (n + 1) - f1 n))

end

end A174256.P7434356652687275999

namespace A174256

/-- `8*(floor(n/2)-Δ[floor(n/3)])` -/
def P7434356652687275999.Spec : Prop :=
  ∀ n, P7434356652687275999.a n = A174256 (n + 1)

end A174256

/-! ## A174256.P1921856257447401009

`a(n-2)+8*(n+1)%3` with `a(0)=0, a(1)=0`
-/

namespace A174256.P1921856257447401009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + 8 * ((n + 1) % 3)

end

end A174256.P1921856257447401009

namespace A174256

/-- `a(n-2)+8*(n+1)%3` -/
def P1921856257447401009.Spec : Prop :=
  ∀ n, (P1921856257447401009.a n : ℤ) = A174256 (n + 1)

end A174256

/-! ## A174256.P8450302005784023335

`A008590(A174257(n+1))`
-/

namespace A174256.P8450302005784023335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A174257 (n + 1)).toNat

end

end A174256.P8450302005784023335

namespace A174256

/-- `A008590(A174257(n+1))` -/
def P8450302005784023335.Spec : Prop :=
  ∀ n, P8450302005784023335.a n = A174256 (n + 1)

end A174256

/-! ## A174256.P4540475518785614729

`Δ[A108578(n+1)]`
-/

namespace A174256.P4540475518785614729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174256.P4540475518785614729

namespace A174256

/-- `Δ[A108578(n+1)]` -/
def P4540475518785614729.Spec : Prop :=
  ∀ n, P4540475518785614729.a n = A174256 (n + 1)

end A174256

/-! ## A174256.P8321664267434717360

`Δ[8*A108579(n+1)]`
-/

namespace A174256.P8321664267434717360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A108579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174256.P8321664267434717360

namespace A174256

/-- `Δ[8*A108579(n+1)]` -/
def P8321664267434717360.Spec : Prop :=
  ∀ n, P8321664267434717360.a n = A174256 (n + 1)

end A174256

/-! ## A174256.P15161702523928460042

`A108578(n+2)-A108578(n+1)`
-/

namespace A174256.P15161702523928460042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108578 (n + 2) - A108578 (n + 1)

end

end A174256.P15161702523928460042

namespace A174256

/-- `A108578(n+2)-A108578(n+1)` -/
def P15161702523928460042.Spec : Prop :=
  ∀ n, P15161702523928460042.a n = A174256 (n + 1)

end A174256

/-!
# A174257: Number of symmetry classes of 3 X 3 reduced magic squares with distinct values and maximum value 2n; also, with magic sum 3n.

The programs for A174257, the canonical program `A174257.P18122782183468705291` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174257 has offset 1).

The definition of A174257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174257.P18122782183468705291

`floor(n/2)+floor(n/3)-floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174257

/-- `floor(n/2)+floor(n/3)-floor((n+1)/3)` -/
def P18122782183468705291.Spec : Prop :=
  ∀ n, P18122782183468705291.a n = A174257 (n + 1)

theorem P18122782183468705291.correct : P18122782183468705291.Spec := by
  intro n
  simp only [A174257, Nat.add_sub_cancel]

end A174257

/-! ## A174257.P14168871330988300655

`(6*(n+1)-13-8*cos(2*(n+1)*π/3)-3*cos((n+1)*π))/12`
-/

namespace A174257.P14168871330988300655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((6 * (n + 1) : ℤ) - 13 : ℝ) - 8 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) - 3 * Real.cos ((n + 1 : ℝ) * Real.pi)) / 12

end

end A174257.P14168871330988300655

namespace A174257

/-- `(6*(n+1)-13-8*cos(2*(n+1)*π/3)-3*cos((n+1)*π))/12` -/
def P14168871330988300655.Spec : Prop :=
  ∀ n, P14168871330988300655.a n = (A174257 (n + 1) : ℝ)

end A174257

/-! ## A174257.P4642995646225575810

`1/8*A174256(n+1)`
-/

namespace A174257.P4642995646225575810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A174256 (n + 1) : ℚ)

end

end A174257.P4642995646225575810

namespace A174257

/-- `1/8*A174256(n+1)` -/
def P4642995646225575810.Spec : Prop :=
  ∀ n, P4642995646225575810.a n = (A174257 (n + 1) : ℚ)

end A174257

/-! ## A174257.P13422576139210440348

`ceil((n-gcd(3, n+1))/2)`
-/

namespace A174257.P13422576139210440348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - (Nat.gcd 3 (n + 1) : ℤ) : ℚ) / 2⌉

end

end A174257.P13422576139210440348

namespace A174257

/-- `ceil((n-gcd(3, n+1))/2)` -/
def P13422576139210440348.Spec : Prop :=
  ∀ n, P13422576139210440348.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P6190837116262001523

`floor((or(1, n)-n%3)/2)`
-/

namespace A174257.P6190837116262001523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lor 1 n : ℤ) - ((n % 3 : ℕ) : ℤ) : ℚ) / 2⌋

end

end A174257.P6190837116262001523

namespace A174257

/-- `floor((or(1, n)-n%3)/2)` -/
def P6190837116262001523.Spec : Prop :=
  ∀ n, P6190837116262001523.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P14983313828202439032

`∑[a(n-3)+(-1)^n]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A174257.P14983313828202439032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 3) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174257.P14983313828202439032

namespace A174257

/-- `∑[a(n-3)+(-1)^n]` -/
def P14983313828202439032.Spec : Prop :=
  ∀ n, P14983313828202439032.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P14212597860993193119

`floor(∑[floor(a(n-3))]/2)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A174257.P14212597860993193119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A174257.P14212597860993193119

namespace A174257

/-- `floor(∑[floor(a(n-3))]/2)` -/
def P14212597860993193119.Spec : Prop :=
  ∀ n, P14212597860993193119.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P14015978180410772433

`A174256(n+1)/8`
-/

namespace A174257.P14015978180410772433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174256 (n + 1) : ℚ) / 8

end

end A174257.P14015978180410772433

namespace A174257

/-- `A174256(n+1)/8` -/
def P14015978180410772433.Spec : Prop :=
  ∀ n, P14015978180410772433.a n = (A174257 (n + 1) : ℚ)

end A174257

/-! ## A174257.P644467812504144379

`floor(n/2-A022003(n))`
-/

namespace A174257.P644467812504144379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (A022003 n : ℚ)⌋

end

end A174257.P644467812504144379

namespace A174257

/-- `floor(n/2-A022003(n))` -/
def P644467812504144379.Spec : Prop :=
  ∀ n, P644467812504144379.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P614658629535863235

`A004526(or(1, n)-n%3)`
-/

namespace A174257.P614658629535863235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.lor 1 n - n % 3)

end

end A174257.P614658629535863235

namespace A174257

/-- `A004526(or(1, n)-n%3)` -/
def P614658629535863235.Spec : Prop :=
  ∀ n, P614658629535863235.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P7095326726659656086

`A105637(A289207(n))`
-/

namespace A174257.P7095326726659656086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 (A289207 n).toNat

end

end A174257.P7095326726659656086

namespace A174257

/-- `A105637(A289207(n))` -/
def P7095326726659656086.Spec : Prop :=
  ∀ n, P7095326726659656086.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P2874233388721725906

`A300293(A085801(n+1))`
-/

namespace A174257.P2874233388721725906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (A085801 (n + 1)).toNat

end

end A174257.P2874233388721725906

namespace A174257

/-- `A300293(A085801(n+1))` -/
def P2874233388721725906.Spec : Prop :=
  ∀ n, P2874233388721725906.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P9635476009780957979

`A064429(n-A105637(n))`
-/

namespace A174257.P9635476009780957979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 ((n : ℤ) - A105637 n).toNat

end

end A174257.P9635476009780957979

namespace A174257

/-- `A064429(n-A105637(n))` -/
def P9635476009780957979.Spec : Prop :=
  ∀ n, P9635476009780957979.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P9224902093491290340

`A004526(n+1-A110269(n))`
-/

namespace A174257.P9224902093491290340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) - A110269 n).toNat

end

end A174257.P9224902093491290340

namespace A174257

/-- `A004526(n+1-A110269(n))` -/
def P9224902093491290340.Spec : Prop :=
  ∀ n, P9224902093491290340.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P10689848599776148851

`A029739(n+1)%A026178(n+1)`
-/

namespace A174257.P10689848599776148851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029739 (n + 1)) (A026178 (n + 1))

end

end A174257.P10689848599776148851

namespace A174257

/-- `A029739(n+1)%A026178(n+1)` -/
def P10689848599776148851.Spec : Prop :=
  ∀ n, P10689848599776148851.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P1728934719420319077

`A047391(n+1)%A106252(n+1)`
-/

namespace A174257.P1728934719420319077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047391 (n + 1)) (A106252 (n + 1))

end

end A174257.P1728934719420319077

namespace A174257

/-- `A047391(n+1)%A106252(n+1)` -/
def P1728934719420319077.Spec : Prop :=
  ∀ n, P1728934719420319077.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P16343444855623325463

`A047838(n+2)%A143101(n+1)`
-/

namespace A174257.P16343444855623325463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047838 (n + 2)) (A143101 (n + 1))

end

end A174257.P16343444855623325463

namespace A174257

/-- `A047838(n+2)%A143101(n+1)` -/
def P16343444855623325463.Spec : Prop :=
  ∀ n, P16343444855623325463.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P14472867708088890767

`Δ[A108579(n+1)]`
-/

namespace A174257.P14472867708088890767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174257.P14472867708088890767

namespace A174257

/-- `Δ[A108579(n+1)]` -/
def P14472867708088890767.Spec : Prop :=
  ∀ n, P14472867708088890767.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P2302044440815571182

`A057360(A131452(n))`
-/

namespace A174257.P2302044440815571182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A131452 n).toNat

end

end A174257.P2302044440815571182

namespace A174257

/-- `A057360(A131452(n))` -/
def P2302044440815571182.Spec : Prop :=
  ∀ n, P2302044440815571182.a n = A174257 (n + 1)

end A174257

/-! ## A174257.P12810636158731755422

`A006085(A174256(n+1))`
-/

namespace A174257.P12810636158731755422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A174256 (n + 1)).toNat

end

end A174257.P12810636158731755422

namespace A174257

/-- `A006085(A174256(n+1))` -/
def P12810636158731755422.Spec : Prop :=
  ∀ n, P12810636158731755422.a n = A174257 (n + 1)

end A174257

/-!
# A174258: Numbers n such that exactly one of 3*prime(n)-4 and 3*prime(n)+4 is prime.

The programs for A174258, there is no canonical definition to state claims against.
-/

/-! ## A174258.P9238227935741801598

`record[A087781(A160461(n))+A032766(n)]`
-/

namespace A174258.P9238227935741801598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087781 (A160461 n).toNat + A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174258.P9238227935741801598

/-! ## A174258.P10195123763208276093

`lt[A020646(3*n+4), A302042(A025335(2*n+5))]`
-/

namespace A174258.P10195123763208276093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020646 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A025335 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174258.P10195123763208276093

/-! ## A174258.P13740483652380814455

`lt[4, a(n-3)²]` with `a(0)=2, a(1)=7, a(2)=0`
-/

namespace A174258.P13740483652380814455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174258.P13740483652380814455

/-! ## A174258.P16416700428876815705

`∏{e}[2*gcd(2, n)*a(n-1), #+2]` with `a(0)=1, a(1)=4`
-/

namespace A174258.P16416700428876815705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * Nat.gcd 2 n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 2)

end

end A174258.P16416700428876815705

/-! ## A174258.P4531293581799484249

`eq[1, Δ[A280952(2*(n+1))]]`
-/

namespace A174258.P4531293581799484249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280952 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174258.P4531293581799484249

/-!
# A174259: Primes p such that (p^2+3*p-3) and (p^3+3*p^2-3) are also prime.

The programs for A174259, there is no canonical definition to state claims against.
-/

/-! ## A174259.P4169814581555133096

`record[A037126(A042561(n))]`
-/

namespace A174259.P4169814581555133096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A042561 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174259.P4169814581555133096

/-! ## A174259.P8808239490667201154

`p?[A004134(n)*A035317(n)]`
-/

namespace A174259.P8808239490667201154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n * A035317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174259.P8808239490667201154

/-!
# A174260: Prime numbers p such that the concatenation p//1331 is a prime number.

The programs for A174260, there is no canonical definition to state claims against.
-/

/-! ## A174260.P17439551430265104860

`p?[A174213(n+1)]`
-/

namespace A174260.P17439551430265104860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174260.P17439551430265104860

/-! ## A174260.P16077166641852800421

`p?[record[A174213(A052938(n))]]`
-/

namespace A174260.P16077166641852800421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174213 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174260.P16077166641852800421

/-! ## A174260.P10449361792249166029

`p?[record[A174213(A065648(n))]]`
-/

namespace A174260.P10449361792249166029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174213 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174260.P10449361792249166029

/-! ## A174260.P6279064177882188079

`p?[record[A174213(A106466(n))]]`
-/

namespace A174260.P6279064177882188079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174213 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174260.P6279064177882188079

/-!
# A174261: Either n*3-+1 is prime.

The programs for A174261, there is no canonical definition to state claims against.
-/

/-! ## A174261.P13949725742609728426

`ceil(A167277(n+1)/3)`
-/

namespace A174261.P13949725742609728426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A167277 (n + 1) : ℚ) / 3⌉

end

end A174261.P13949725742609728426

/-! ## A174261.P16005858025746454741

`round(A007510(n+1)/3)`
-/

namespace A174261.P16005858025746454741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007510 (n + 1) : ℚ) / 3)

end

end A174261.P16005858025746454741

/-! ## A174261.P1115751384964965801

`round(p?[A062729(n+1)]/3)`
-/

namespace A174261.P1115751384964965801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3)

end

end A174261.P1115751384964965801

/-! ## A174261.P1548189970356096551

`round(p?[A167706(n+1)]/3)`
-/

namespace A174261.P1548189970356096551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3)

end

end A174261.P1548189970356096551

/-! ## A174261.P176130303402982540

`A008611(A007510(n+1))`
-/

namespace A174261.P176130303402982540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A007510 (n + 1)).toNat

end

end A174261.P176130303402982540

/-! ## A174261.P897709697803823055

`A103627(A164534(n+1))`
-/

namespace A174261.P897709697803823055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A164534 (n + 1)).toNat

end

end A174261.P897709697803823055

/-! ## A174261.P7157976794452550302

`A123920(A167277(n+1))`
-/

namespace A174261.P7157976794452550302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123920 (A167277 (n + 1)).toNat

end

end A174261.P7157976794452550302

/-! ## A174261.P715641211478628431

`A002264(A007510(n+1)+1)`
-/

namespace A174261.P715641211478628431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A007510 (n + 1) + 1).toNat

end

end A174261.P715641211478628431

/-! ## A174261.P9997152316313975333

`round(A000040(A176656(n+1))/3)`
-/

namespace A174261.P9997152316313975333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (A176656 (n + 1)).toNat : ℚ) / 3)

end

end A174261.P9997152316313975333

/-!
# A174264: Irregular triangle T(n, k) = [x^k]( p(n, x) ), where p(n, x) = (1/x)*(1-x)^(3*n+1)*Sum_{k >= 0} (k*(k+1)*(2*k+1)/6)^n*x^k and p(0, x) = 1, read by rows.

The programs for A174264, there is no canonical definition to state claims against.
-/

/-! ## A174264.P1345778266046271387

`abs(A154284(abs(1-n)+1))`
-/

namespace A174264.P1345778266046271387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A154284 (|1 - (n : ℤ)| + 1).toNat)|

end

end A174264.P1345778266046271387

/-! ## A174264.P5594271608508602290

`gcd(C(2, n), A154284(round(acot(n)+n)))`
-/

namespace A174264.P5594271608508602290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A154284 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A174264.P5594271608508602290

/-! ## A174264.P14075788228446431943

`lcm(A033999(n), A154284(A028310(n)))`
-/

namespace A174264.P14075788228446431943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A154284 (A028310 n).toNat)

end

end A174264.P14075788228446431943

/-! ## A174264.P2936946324879014328

`gcd(A154284(A028310(n)), A184955(n))`
-/

namespace A174264.P2936946324879014328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154284 (A028310 n).toNat) (A184955 n)

end

end A174264.P2936946324879014328

/-! ## A174264.P11177733019284888230

`A157705(A386874(n+1))`
-/

namespace A174264.P11177733019284888230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157705 (A386874 (n + 1)).toNat

end

end A174264.P11177733019284888230

/-!
# A174265: Odd Mersenne exponents.

The programs for A174265, there is no canonical definition to state claims against.
-/

/-! ## A174265.P936572505592762665

`A000043(n+2)`
-/

namespace A174265.P936572505592762665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 2)

end

end A174265.P936572505592762665

/-! ## A174265.P17827363920979353752

`Δ[A109472(n+1)]`
-/

namespace A174265.P17827363920979353752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174265.P17827363920979353752

/-! ## A174265.P8456757237752073698

`A090748(n+2)+1`
-/

namespace A174265.P8456757237752073698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 2) + 1

end

end A174265.P8456757237752073698

/-! ## A174265.P18119217455185864986

`A050475(n+2)-1`
-/

namespace A174265.P18119217455185864986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 (n + 2) - 1

end

end A174265.P18119217455185864986

/-! ## A174265.P8086045129297947289

`A153798(n+2)+2`
-/

namespace A174265.P8086045129297947289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 2) + 2

end

end A174265.P8086045129297947289

/-!
# A174269: Numbers k such that exactly one of 2^k - 1 and 2^k + 1 is a prime.

The programs for A174269, there is no canonical definition to state claims against.
-/

/-! ## A174269.P2033942206612398790

`A285929(n+1)-char[1]`
-/

namespace A174269.P2033942206612398790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285929 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A174269.P2033942206612398790

/-! ## A174269.P8425737343116755307

`A285929(n+1)/A141044(n)`
-/

namespace A174269.P8425737343116755307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285929 (n + 1) : ℚ) / (A141044 n : ℚ)

end

end A174269.P8425737343116755307

/-! ## A174269.P5265346575630987623

`A285929(n+1)/A373565(n)`
-/

namespace A174269.P5265346575630987623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285929 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A174269.P5265346575630987623

/-! ## A174269.P13342009855162875892

`gcd(A285929(n+1), A326168(n))`
-/

namespace A174269.P13342009855162875892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285929 (n + 1)) (A326168 n)

end

end A174269.P13342009855162875892

/-! ## A174269.P16473269472191556727

`abs(A285929(n+1)+A159075(n))`
-/

namespace A174269.P16473269472191556727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285929 (n + 1) + A159075 n|

end

end A174269.P16473269472191556727

/-! ## A174269.P17363879344213582540

`abs(A285929(n+1)-A063524(n))`
-/

namespace A174269.P17363879344213582540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285929 (n + 1) - A063524 n|

end

end A174269.P17363879344213582540

/-! ## A174269.P6074785608226080648

`abs(A285929(n+1)-A178333(n))`
-/

namespace A174269.P6074785608226080648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285929 (n + 1) - A178333 n|

end

end A174269.P6074785608226080648

/-!
# A174273: Inverse Moebius transform of A035263.

The programs for A174273, the canonical program `A174273.P15299041796638196004` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174273 has offset 1).

The definition of A174273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174273.P15299041796638196004

`∑{d}[n+1, A035263(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A174273

/-- `∑{d}[n+1, A035263(#)]` -/
def P15299041796638196004.Spec : Prop :=
  ∀ n, P15299041796638196004.a n = A174273 (n + 1)

theorem P15299041796638196004.correct : P15299041796638196004.Spec := by
  intro n
  simp only [A174273, Nat.add_sub_cancel]

end A174273

/-! ## A174273.P15050617354487112509

`∑{d}[n+1, A029883(#)²]`
-/

namespace A174273.P15050617354487112509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029883 d ^ 2

end

end A174273.P15050617354487112509

namespace A174273

/-- `∑{d}[n+1, A029883(#)²]` -/
def P15050617354487112509.Spec : Prop :=
  ∀ n, P15050617354487112509.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P15010941085612880587

`(val(n+1, 4)+1)*A001227(n+1)`
-/

namespace A174273.P15010941085612880587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 4 + 1 : ℤ) * A001227 (n + 1)

end

end A174273.P15010941085612880587

namespace A174273

/-- `(val(n+1, 4)+1)*A001227(n+1)` -/
def P15010941085612880587.Spec : Prop :=
  ∀ n, P15010941085612880587.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P952625050835531289

`A001227(n+1)*A115362(n)`
-/

namespace A174273.P952625050835531289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A115362 n

end

end A174273.P952625050835531289

namespace A174273

/-- `A001227(n+1)*A115362(n)` -/
def P952625050835531289.Spec : Prop :=
  ∀ n, P952625050835531289.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P2299274185797283591

`A000005(2*A214682(n+1))/2`
-/

namespace A174273.P2299274185797283591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (2 * A214682 (n + 1)).toNat : ℚ) / 2

end

end A174273.P2299274185797283591

namespace A174273

/-- `A000005(2*A214682(n+1))/2` -/
def P2299274185797283591.Spec : Prop :=
  ∀ n, P2299274185797283591.a n = (A174273 (n + 1) : ℚ)

end A174273

/-! ## A174273.P4300866453580684269

`round(A001511(n+1)/2)*A001227(n+1)`
-/

namespace A174273.P4300866453580684269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001511 (n + 1) : ℚ) / 2) * A001227 (n + 1)

end

end A174273.P4300866453580684269

namespace A174273

/-- `round(A001511(n+1)/2)*A001227(n+1)` -/
def P4300866453580684269.Spec : Prop :=
  ∀ n, P4300866453580684269.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P6806470588389063698

`∑{d}[n+1, A010052(#)*A068068((n+1)/#)]`
-/

namespace A174273.P6806470588389063698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A068068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P6806470588389063698

namespace A174273

/-- `∑{d}[n+1, A010052(#)*A068068((n+1)/#)]` -/
def P6806470588389063698.Spec : Prop :=
  ∀ n, P6806470588389063698.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P2186249811343853693

`∑{d}[n+1, A008836(#)*A078644((n+1)/#)]`
-/

namespace A174273.P2186249811343853693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A078644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P2186249811343853693

namespace A174273

/-- `∑{d}[n+1, A008836(#)*A078644((n+1)/#)]` -/
def P2186249811343853693.Spec : Prop :=
  ∀ n, P2186249811343853693.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P12634052660104203411

`∑{d}[n+1, A000005(#)*A154269((n+1)/#)]`
-/

namespace A174273.P12634052660104203411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P12634052660104203411

namespace A174273

/-- `∑{d}[n+1, A000005(#)*A154269((n+1)/#)]` -/
def P12634052660104203411.Spec : Prop :=
  ∀ n, P12634052660104203411.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P625557581431205109

`∑{d}[n+1, A001511(#)*A309873((n+1)/#)]`
-/

namespace A174273.P625557581431205109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A309873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P625557581431205109

namespace A174273

/-- `∑{d}[n+1, A001511(#)*A309873((n+1)/#)]` -/
def P625557581431205109.Spec : Prop :=
  ∀ n, P625557581431205109.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P8741004463267083251

`∑{d}[n+1, A046951(#)*A323239((n+1)/#)]`
-/

namespace A174273.P8741004463267083251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A323239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P8741004463267083251

namespace A174273

/-- `∑{d}[n+1, A046951(#)*A323239((n+1)/#)]` -/
def P8741004463267083251.Spec : Prop :=
  ∀ n, P8741004463267083251.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P8885047500685775696

`∑{d}[n+1, A051064(#)*A373155((n+1)/#)]`
-/

namespace A174273.P8885047500685775696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051064 d * A373155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P8885047500685775696

namespace A174273

/-- `∑{d}[n+1, A051064(#)*A373155((n+1)/#)]` -/
def P8885047500685775696.Spec : Prop :=
  ∀ n, P8885047500685775696.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P1508020615901360253

`∑{d}[n+1, A130054(#)*A335115((n+1)/#)]`
-/

namespace A174273.P1508020615901360253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A335115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P1508020615901360253

namespace A174273

/-- `∑{d}[n+1, A130054(#)*A335115((n+1)/#)]` -/
def P1508020615901360253.Spec : Prop :=
  ∀ n, P1508020615901360253.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P8344342712401294898

`∑{d}[n+1, A124315(#)*A359548((n+1)/#)]`
-/

namespace A174273.P8344342712401294898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P8344342712401294898

namespace A174273

/-- `∑{d}[n+1, A124315(#)*A359548((n+1)/#)]` -/
def P8344342712401294898.Spec : Prop :=
  ∀ n, P8344342712401294898.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P9776678458452497126

`∑{d}[n+1, A133700(#)*A355689((n+1)/#)]`
-/

namespace A174273.P9776678458452497126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133700 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P9776678458452497126

namespace A174273

/-- `∑{d}[n+1, A133700(#)*A355689((n+1)/#)]` -/
def P9776678458452497126.Spec : Prop :=
  ∀ n, P9776678458452497126.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P11827494358109019564

`∑{d}[n+1, A143259(#)*A365207((n+1)/#)]`
-/

namespace A174273.P11827494358109019564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d * A365207 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P11827494358109019564

namespace A174273

/-- `∑{d}[n+1, A143259(#)*A365207((n+1)/#)]` -/
def P11827494358109019564.Spec : Prop :=
  ∀ n, P11827494358109019564.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P8025867198738427927

`∑{d}[n+1, A328372(#)*A353627((n+1)/#)]`
-/

namespace A174273.P8025867198738427927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328372 d * A353627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174273.P8025867198738427927

namespace A174273

/-- `∑{d}[n+1, A328372(#)*A353627((n+1)/#)]` -/
def P8025867198738427927.Spec : Prop :=
  ∀ n, P8025867198738427927.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P16251586157797294976

`∑{d}[n+1, A059841(#-1)*A115362((n+1)/#-1)]`
-/

namespace A174273.P16251586157797294976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A115362 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A174273.P16251586157797294976

namespace A174273

/-- `∑{d}[n+1, A059841(#-1)*A115362((n+1)/#-1)]` -/
def P16251586157797294976.Spec : Prop :=
  ∀ n, P16251586157797294976.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P4116567933371111004

`A001227(n+1)*A001817(A006519(n+1))`
-/

namespace A174273.P4116567933371111004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001817 (A006519 (n + 1)).toNat

end

end A174273.P4116567933371111004

namespace A174273

/-- `A001227(n+1)*A001817(A006519(n+1))` -/
def P4116567933371111004.Spec : Prop :=
  ∀ n, P4116567933371111004.a n = A174273 (n + 1)

end A174273

/-! ## A174273.P10494534188389208631

`A000005(lcm(A000188(n+1), A000265(n+1)))`
-/

namespace A174273.P10494534188389208631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A000188 (n + 1)) (A000265 (n + 1)))

end

end A174273.P10494534188389208631

namespace A174273

/-- `A000005(lcm(A000188(n+1), A000265(n+1)))` -/
def P10494534188389208631.Spec : Prop :=
  ∀ n, P10494534188389208631.a n = A174273 (n + 1)

end A174273

/-!
# A174274: Each pair of adjacent digits of n sums to a square.

The programs for A174274, there is no canonical definition to state claims against.
-/

/-! ## A174274.P14614460138570536206

`A000196(A028839(n+4)²)`
-/

namespace A174274.P14614460138570536206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028839 (n + 4) ^ 2).toNat

end

end A174274.P14614460138570536206

/-! ## A174274.P6915592023179727151

`A028839(n+4)%A055161(n)`
-/

namespace A174274.P6915592023179727151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028839 (n + 4)) (A055161 n)

end

end A174274.P6915592023179727151

/-! ## A174274.P15561015191757735336

`A000194(A028839(n+4)²-1)`
-/

namespace A174274.P15561015191757735336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A028839 (n + 4) ^ 2 - 1).toNat

end

end A174274.P15561015191757735336

/-! ## A174274.P14954476318699054920

`A000194(xor(n, A028839(n+4)²))`
-/

namespace A174274.P14954476318699054920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.xor (n : ℤ) (A028839 (n + 4) ^ 2)).toNat

end

end A174274.P14954476318699054920

/-! ## A174274.P10033021947580892049

`A028839(n+4)+A025441(A001037(n))`
-/

namespace A174274.P10033021947580892049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 4) + A025441 (A001037 n).toNat

end

end A174274.P10033021947580892049

/-!
# A174275: a(n) = 2^(n-1) mod M(n) where M(n) = A014963(n) is the exponential of the Mangoldt function.

The programs for A174275, the canonical program `A174275.P653358463232501852` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174275 has offset 1).

The definition of A174275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174275.P18034369952623332923

`A354981(2*(n+1))`
-/

namespace A174275.P18034369952623332923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354981 (2 * (n + 1))

end

end A174275.P18034369952623332923

namespace A174275

/-- `A354981(2*(n+1))` -/
def P18034369952623332923.Spec : Prop :=
  ∀ n, P18034369952623332923.a n = A174275 (n + 1)

end A174275

/-! ## A174275.P3320056524263220862

`A074639(n+1)%2`
-/

namespace A174275.P3320056524263220862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074639 (n + 1)) 2

end

end A174275.P3320056524263220862

namespace A174275

/-- `A074639(n+1)%2` -/
def P3320056524263220862.Spec : Prop :=
  ∀ n, P3320056524263220862.a n = A174275 (n + 1)

end A174275

/-! ## A174275.P809584575963560874

`A074640(n+1)%2`
-/

namespace A174275.P809584575963560874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074640 (n + 1)) 2

end

end A174275.P809584575963560874

namespace A174275

/-- `A074640(n+1)%2` -/
def P809584575963560874.Spec : Prop :=
  ∀ n, P809584575963560874.a n = A174275 (n + 1)

end A174275

/-! ## A174275.P653358463232501852

`A120007(n+1)%2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A174275

/-- `A120007(n+1)%2` -/
def P653358463232501852.Spec : Prop :=
  ∀ n, P653358463232501852.a n = A174275 (n + 1)

theorem P653358463232501852.correct : P653358463232501852.Spec := by
  intro n
  simp only [A174275, Nat.add_sub_cancel]

end A174275

/-! ## A174275.P8545306957140452617

`A358770(∏{p}[n+1, #])`
-/

namespace A174275.P8545306957140452617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358770 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A174275.P8545306957140452617

namespace A174275

/-- `A358770(∏{p}[n+1, #])` -/
def P8545306957140452617.Spec : Prop :=
  ∀ n, P8545306957140452617.a n = A174275 (n + 1)

end A174275

/-! ## A174275.P16946235228314159899

`char[record[A345444(n+1)]]`
-/

namespace A174275.P16946235228314159899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345444 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174275.P16946235228314159899

namespace A174275

/-- `char[record[A345444(n+1)]]` -/
def P16946235228314159899.Spec : Prop :=
  ∀ n, (P16946235228314159899.a n : ℤ) = A174275 (n + 1)

end A174275

/-! ## A174275.P15972557504365949250

`char[eq[2, A317528(n+1)]]`
-/

namespace A174275.P15972557504365949250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317528 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A174275.P15972557504365949250

namespace A174275

/-- `char[eq[2, A317528(n+1)]]` -/
def P15972557504365949250.Spec : Prop :=
  ∀ n, (P15972557504365949250.a n : ℤ) = A174275 (n + 1)

end A174275

/-! ## A174275.P12964847806041833234

`n²%A014963(or(1, n))`
-/

namespace A174275.P12964847806041833234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A014963 (Nat.lor 1 n))

end

end A174275.P12964847806041833234

namespace A174275

/-- `n²%A014963(or(1, n))` -/
def P12964847806041833234.Spec : Prop :=
  ∀ n, P12964847806041833234.a n = A174275 (n + 1)

end A174275

/-! ## A174275.P7527734205802477213

`char[eq[n, A011772(n+1)]]`
-/

namespace A174275.P7527734205802477213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A174275.P7527734205802477213

namespace A174275

/-- `char[eq[n, A011772(n+1)]]` -/
def P7527734205802477213.Spec : Prop :=
  ∀ n, (P7527734205802477213.a n : ℤ) = A174275 (n + 1)

end A174275

/-! ## A174275.P6784622132702003149

`1-A354108(2*(n+1))`
-/

namespace A174275.P6784622132702003149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A354108 (2 * (n + 1))

end

end A174275.P6784622132702003149

namespace A174275

/-- `1-A354108(2*(n+1))` -/
def P6784622132702003149.Spec : Prop :=
  ∀ n, P6784622132702003149.a n = A174275 (n + 1)

end A174275

/-! ## A174275.P840496961633722103

`and(1, A122411(2*(n+1)))`
-/

namespace A174275.P840496961633722103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A122411 (2 * (n + 1)))

end

end A174275.P840496961633722103

namespace A174275

/-- `and(1, A122411(2*(n+1)))` -/
def P840496961633722103.Spec : Prop :=
  ∀ n, P840496961633722103.a n = A174275 (n + 1)

end A174275

/-! ## A174275.P5494250631780664849

`and(2, A087784(n+1))/2`
-/

namespace A174275.P5494250631780664849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A087784 (n + 1)) : ℚ) / 2

end

end A174275.P5494250631780664849

namespace A174275

/-- `and(2, A087784(n+1))/2` -/
def P5494250631780664849.Spec : Prop :=
  ∀ n, P5494250631780664849.a n = (A174275 (n + 1) : ℚ)

end A174275

/-! ## A174275.P9129533666828463682

`and(2, A298473(n+1))/2`
-/

namespace A174275.P9129533666828463682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A298473 (n + 1)) : ℚ) / 2

end

end A174275.P9129533666828463682

namespace A174275

/-- `and(2, A298473(n+1))/2` -/
def P9129533666828463682.Spec : Prop :=
  ∀ n, P9129533666828463682.a n = (A174275 (n + 1) : ℚ)

end A174275

/-! ## A174275.P4385648216313665199

`C(C(2, A089631(n+1)), 2)`
-/

namespace A174275.P4385648216313665199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A089631 (n + 1)).toNat) 2

end

end A174275.P4385648216313665199

namespace A174275

/-- `C(C(2, A089631(n+1)), 2)` -/
def P4385648216313665199.Spec : Prop :=
  ∀ n, (P4385648216313665199.a n : ℤ) = A174275 (n + 1)

end A174275

/-! ## A174275.P15056118752259226409

`val(A080982(n+1), n+2)`
-/

namespace A174275.P15056118752259226409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A080982 (n + 1)).toNat (n + 2)

end

end A174275.P15056118752259226409

namespace A174275

/-- `val(A080982(n+1), n+2)` -/
def P15056118752259226409.Spec : Prop :=
  ∀ n, (P15056118752259226409.a n : ℤ) = A174275 (n + 1)

end A174275

/-! ## A174275.P15213471047174568987

`val(A192066(n+1), n+2)`
-/

namespace A174275.P15213471047174568987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A192066 (n + 1)).toNat (n + 2)

end

end A174275.P15213471047174568987

namespace A174275

/-- `val(A192066(n+1), n+2)` -/
def P15213471047174568987.Spec : Prop :=
  ∀ n, (P15213471047174568987.a n : ℤ) = A174275 (n + 1)

end A174275

/-! ## A174275.P15755774703219351764

`and(n+1, A069513(n+1))`
-/

namespace A174275.P15755774703219351764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A069513 (n + 1))

end

end A174275.P15755774703219351764

namespace A174275

/-- `and(n+1, A069513(n+1))` -/
def P15755774703219351764.Spec : Prop :=
  ∀ n, P15755774703219351764.a n = A174275 (n + 1)

end A174275

/-! ## A174275.P7966569342970241300

`char[eq[2, A304182(n+1)]]`
-/

namespace A174275.P7966569342970241300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304182 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A174275.P7966569342970241300

namespace A174275

/-- `char[eq[2, A304182(n+1)]]` -/
def P7966569342970241300.Spec : Prop :=
  ∀ n, (P7966569342970241300.a n : ℤ) = A174275 (n + 1)

end A174275

/-! ## A174275.P10752176699679874933

`char[lt[2, A014963(n+1)]]`
-/

namespace A174275.P10752176699679874933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A174275.P10752176699679874933

namespace A174275

/-- `char[lt[2, A014963(n+1)]]` -/
def P10752176699679874933.Spec : Prop :=
  ∀ n, (P10752176699679874933.a n : ℤ) = A174275 (n + 1)

end A174275

/-! ## A174275.P437600712924182814

`char[eq[n, A344878(n+1)]]`
-/

namespace A174275.P437600712924182814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A174275.P437600712924182814

namespace A174275

/-- `char[eq[n, A344878(n+1)]]` -/
def P437600712924182814.Spec : Prop :=
  ∀ n, (P437600712924182814.a n : ℤ) = A174275 (n + 1)

end A174275

/-!
# A174276: Denominator of the n-th term of the inverse binomial transform of 1, 1/2, B_4, B_6, B_8,..., a modified Bernoulli sequence.

The programs for A174276, there is no canonical definition to state claims against.
-/

/-! ## A174276.P15445901461589444788

`gcd(A002110(n), A174356(n))`
-/

namespace A174276.P15445901461589444788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A174356 n)

end

end A174276.P15445901461589444788

/-! ## A174276.P13464922364678161868

`gcd(A174356(n)², record[A181811(n+1)])`
-/

namespace A174276.P13464922364678161868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174356 n ^ 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A174276.P13464922364678161868

/-! ## A174276.P7123033376416195984

`∏{p}[A174356(n), #]`
-/

namespace A174276.P7123033376416195984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A174276.P7123033376416195984

/-! ## A174276.P17087507567062139954

`∏{p}[A174289(n)-A174290(n), #]`
-/

namespace A174276.P17087507567062139954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174289 n - A174290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A174276.P17087507567062139954

/-!
# A174278: Partial sums of A004123.

The programs for A174278, there is no canonical definition to state claims against.
-/

/-! ## A174278.P6231378631953295817

`∑[A004123(n+1)]`
-/

namespace A174278.P6231378631953295817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174278.P6231378631953295817

/-! ## A174278.P9277629168447322143

`∑[ceil(A027882(n)/3)]`
-/

namespace A174278.P9277629168447322143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027882 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174278.P9277629168447322143

/-! ## A174278.P10801420465498593217

`∑[2*A050351(n)]-1`
-/

namespace A174278.P10801420465498593217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A174278.P10801420465498593217

/-! ## A174278.P1206600979826705035

`∑[floor((2*A201339(n)+1)/3)]`
-/

namespace A174278.P1206600979826705035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A201339 n + 1 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174278.P1206600979826705035

/-! ## A174278.P10148763756278594614

`∑[record[A004123(A152271(n))]]`
-/

namespace A174278.P10148763756278594614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004123 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174278.P10148763756278594614

/-! ## A174278.P7154051193566928723

`∑[record[A004123(A328397(n))]]`
-/

namespace A174278.P7154051193566928723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004123 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174278.P7154051193566928723

/-! ## A174278.P15776654126188198289

`∑[A036453(n+1)*A050351(n)]`
-/

namespace A174278.P15776654126188198289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A050351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174278.P15776654126188198289

/-! ## A174278.P16927336945145101200

`∑[A050351(n)*A127750(2*n)]`
-/

namespace A174278.P16927336945145101200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050351 n * A127750 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174278.P16927336945145101200

/-! ## A174278.P13432249187845117321

`∑[A020639(A001223(n+1))*A050351(n)]`
-/

namespace A174278.P13432249187845117321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A050351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174278.P13432249187845117321

/-!
# A174281: Primes p such that 20*p^2+32*p+13 is also prime.

The programs for A174281, there is no canonical definition to state claims against.
-/

/-! ## A174281.P11649263542438190322

`p?[A006949(A184415(2*(n+1)))]`
-/

namespace A174281.P11649263542438190322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (A184415 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174281.P11649263542438190322

/-! ## A174281.P1931592240263078270

`p?[∑[A073093(A124877(n+1))]]`
-/

namespace A174281.P1931592240263078270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A124877 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174281.P1931592240263078270

/-! ## A174281.P9527625992608396892

`p?[A056734(n+1)-A096578(n+1)]`
-/

namespace A174281.P9527625992608396892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056734 (n + 1) - A096578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174281.P9527625992608396892

/-! ## A174281.P3169228893129931955

`A154363(A306202(n+1)+2^floor(log2(n+1))-1)`
-/

namespace A174281.P3169228893129931955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (A306202 (n + 1) + ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat

end

end A174281.P3169228893129931955

/-!
# A174282: a(n) = 3^n mod M(n) where M(n) = A014963(n) is the exponential of the Mangoldt function.

The programs for A174282, the canonical program `A174282.P4386332101295534443` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174282 has offset 1).

The definition of A174282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174282.P4386332101295534443

`A120007(n+1)²%3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A174282

/-- `A120007(n+1)²%3` -/
def P4386332101295534443.Spec : Prop :=
  ∀ n, P4386332101295534443.a n = A174282 (n + 1)

theorem P4386332101295534443.correct : P4386332101295534443.Spec := by
  intro n
  simp only [A174282, Nat.add_sub_cancel]

end A174282

/-! ## A174282.P4956463660930218056

`(3%A014963(n+1))%2`
-/

namespace A174282.P4956463660930218056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod 3 (A014963 (n + 1))) 2

end

end A174282.P4956463660930218056

namespace A174282

/-- `(3%A014963(n+1))%2` -/
def P4956463660930218056.Spec : Prop :=
  ∀ n, P4956463660930218056.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P7526617088169735258

`char[A034699(or(1, n)+2*n+1)-1]`
-/

namespace A174282.P7526617088169735258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Nat.lor 1 n + (2 * n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A174282.P7526617088169735258

namespace A174282

/-- `char[A034699(or(1, n)+2*n+1)-1]` -/
def P7526617088169735258.Spec : Prop :=
  ∀ n, (P7526617088169735258.a n : ℤ) = A174282 (n + 1)

end A174282

/-! ## A174282.P17741014528805291981

`A062174(A014963(n+1))`
-/

namespace A174282.P17741014528805291981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062174 (A014963 (n + 1)).toNat

end

end A174282.P17741014528805291981

namespace A174282

/-- `A062174(A014963(n+1))` -/
def P17741014528805291981.Spec : Prop :=
  ∀ n, P17741014528805291981.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P7188296918750635798

`A011655(A120007(n+1))`
-/

namespace A174282.P7188296918750635798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A120007 (n + 1)).toNat

end

end A174282.P7188296918750635798

namespace A174282

/-- `A011655(A120007(n+1))` -/
def P7188296918750635798.Spec : Prop :=
  ∀ n, P7188296918750635798.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P11054297008077427226

`A023532(A014963(n+1)-1)`
-/

namespace A174282.P11054297008077427226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A014963 (n + 1) - 1).toNat

end

end A174282.P11054297008077427226

namespace A174282

/-- `A023532(A014963(n+1)-1)` -/
def P11054297008077427226.Spec : Prop :=
  ∀ n, P11054297008077427226.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P15411844260989971149

`A002124(C(4, A014963(n+1)))`
-/

namespace A174282.P15411844260989971149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002124 (Nat.choose 4 (A014963 (n + 1)).toNat)

end

end A174282.P15411844260989971149

namespace A174282

/-- `A002124(C(4, A014963(n+1)))` -/
def P15411844260989971149.Spec : Prop :=
  ∀ n, P15411844260989971149.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P16702792500860452423

`A273711(n+1)%A132708(n)`
-/

namespace A174282.P16702792500860452423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273711 (n + 1)) (A132708 n)

end

end A174282.P16702792500860452423

namespace A174282

/-- `A273711(n+1)%A132708(n)` -/
def P16702792500860452423.Spec : Prop :=
  ∀ n, P16702792500860452423.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P11960312680783764567

`A180593(n)%A287841(n+1)`
-/

namespace A174282.P11960312680783764567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180593 n) (A287841 (n + 1))

end

end A174282.P11960312680783764567

namespace A174282

/-- `A180593(n)%A287841(n+1)` -/
def P11960312680783764567.Spec : Prop :=
  ∀ n, P11960312680783764567.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P11191581059541859025

`and(A003417(n), A010055(n+1))`
-/

namespace A174282.P11191581059541859025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003417 n) (A010055 (n + 1))

end

end A174282.P11191581059541859025

namespace A174282

/-- `and(A003417(n), A010055(n+1))` -/
def P11191581059541859025.Spec : Prop :=
  ∀ n, P11191581059541859025.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P9761842634628459507

`and(A003417(n), A069513(n+1))`
-/

namespace A174282.P9761842634628459507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003417 n) (A069513 (n + 1))

end

end A174282.P9761842634628459507

namespace A174282

/-- `and(A003417(n), A069513(n+1))` -/
def P9761842634628459507.Spec : Prop :=
  ∀ n, P9761842634628459507.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P5437496204193844543

`and(A007306(n), A069513(n+1))`
-/

namespace A174282.P5437496204193844543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007306 n) (A069513 (n + 1))

end

end A174282.P5437496204193844543

namespace A174282

/-- `and(A007306(n), A069513(n+1))` -/
def P5437496204193844543.Spec : Prop :=
  ∀ n, P5437496204193844543.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P17701954933802062462

`and(A008747(n), A069513(n+1))`
-/

namespace A174282.P17701954933802062462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008747 n) (A069513 (n + 1))

end

end A174282.P17701954933802062462

namespace A174282

/-- `and(A008747(n), A069513(n+1))` -/
def P17701954933802062462.Spec : Prop :=
  ∀ n, P17701954933802062462.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P6898822978920032093

`and(A008769(n), A069513(n+1))`
-/

namespace A174282.P6898822978920032093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008769 n) (A069513 (n + 1))

end

end A174282.P6898822978920032093

namespace A174282

/-- `and(A008769(n), A069513(n+1))` -/
def P6898822978920032093.Spec : Prop :=
  ∀ n, P6898822978920032093.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P10242242218840330294

`and(A010892(n), A069513(n+1))`
-/

namespace A174282.P10242242218840330294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 n) (A069513 (n + 1))

end

end A174282.P10242242218840330294

namespace A174282

/-- `and(A010892(n), A069513(n+1))` -/
def P10242242218840330294.Spec : Prop :=
  ∀ n, P10242242218840330294.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P17072377162358598238

`and(A020944(n), A069513(n+1))`
-/

namespace A174282.P17072377162358598238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020944 n) (A069513 (n + 1))

end

end A174282.P17072377162358598238

namespace A174282

/-- `and(A020944(n), A069513(n+1))` -/
def P17072377162358598238.Spec : Prop :=
  ∀ n, P17072377162358598238.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P13092971932322164433

`and(Δ[A069470(n)], A069513(n+1))`
-/

namespace A174282.P13092971932322164433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A069513 (n + 1))

end

end A174282.P13092971932322164433

namespace A174282

/-- `and(Δ[A069470(n)], A069513(n+1))` -/
def P13092971932322164433.Spec : Prop :=
  ∀ n, P13092971932322164433.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P4317208428599951911

`1-A023531(A014963(n+1)-1)`
-/

namespace A174282.P4317208428599951911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A023531 (A014963 (n + 1) - 1).toNat

end

end A174282.P4317208428599951911

namespace A174282

/-- `1-A023531(A014963(n+1)-1)` -/
def P4317208428599951911.Spec : Prop :=
  ∀ n, P4317208428599951911.a n = A174282 (n + 1)

end A174282

/-! ## A174282.P8876814778006552348

`A069513(n+1)-A069513(n+1)*A079978(n+1)`
-/

namespace A174282.P8876814778006552348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) - A069513 (n + 1) * A079978 (n + 1)

end

end A174282.P8876814778006552348

namespace A174282

/-- `A069513(n+1)-A069513(n+1)*A079978(n+1)` -/
def P8876814778006552348.Spec : Prop :=
  ∀ n, P8876814778006552348.a n = A174282 (n + 1)

end A174282

/-!
# A174283: Number of distinct resistances that can be produced using n equal resistors in, series, parallel and/or bridge configurations.

The programs for A174283, there is no canonical definition to state claims against.
-/

/-! ## A174283.P17821372865070319787

`A337516(n+1)-A185236((3-n)²)`
-/

namespace A174283.P17821372865070319787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337516 (n + 1) - A185236 ((3 - (n : ℤ)) ^ 2).toNat

end

end A174283.P17821372865070319787

/-! ## A174283.P12035294939485297108

`A337517(n+1)-A085857(A007299(n))`
-/

namespace A174283.P12035294939485297108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337517 (n + 1) - A085857 (A007299 n).toNat

end

end A174283.P12035294939485297108

/-! ## A174283.P8914912224320574652

`A337516(n+1)-A349797(A000285(n))`
-/

namespace A174283.P8914912224320574652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337516 (n + 1) - A349797 (A000285 n).toNat

end

end A174283.P8914912224320574652

/-! ## A174283.P18432972789036445086

`A337516(n+1)-A174903(A075565(n+1))`
-/

namespace A174283.P18432972789036445086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337516 (n + 1) - A174903 (A075565 (n + 1)).toNat

end

end A174283.P18432972789036445086

/-!
# A174284: Number of distinct finite resistances that can be produced using at most n equal resistors (n or fewer resistors) in series, parallel and/or bridge configurations.

The programs for A174284, there is no canonical definition to state claims against.
-/

/-! ## A174284.P3330323306177422722

`A180414(n)-A126759(A061140(n))`
-/

namespace A174284.P3330323306177422722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180414 n - A126759 (A061140 n).toNat

end

end A174284.P3330323306177422722

/-! ## A174284.P8195557436528988353

`A341536(n)-A165661(A005246(n))`
-/

namespace A174284.P8195557436528988353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341536 n - A165661 (A005246 n).toNat

end

end A174284.P8195557436528988353

/-! ## A174284.P3114835377045052030

`A340921(n)-A126759(A061140(n))`
-/

namespace A174284.P3114835377045052030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340921 n - A126759 (A061140 n).toNat

end

end A174284.P3114835377045052030

/-! ## A174284.P7620069952989911765

`A341536(n)-A146735(A174300(n))`
-/

namespace A174284.P7620069952989911765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341536 n - A146735 (A174300 n).toNat

end

end A174284.P7620069952989911765

/-! ## A174284.P11459170975554458428

`A180414(n)-A195522(A197648(n+4))`
-/

namespace A174284.P11459170975554458428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180414 n - A195522 (A197648 (n + 4)).toNat

end

end A174284.P11459170975554458428

/-!
# A174288: Primes p such that 8*2^(2p)-1 is also prime.

The programs for A174288, there is no canonical definition to state claims against.
-/

/-! ## A174288.P10274507279623662295

`p?[A139481(n+2)]`
-/

namespace A174288.P10274507279623662295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174288.P10274507279623662295

/-! ## A174288.P18297265096966047414

`p?[A138576(n+1)-2]`
-/

namespace A174288.P18297265096966047414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138576 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174288.P18297265096966047414

/-! ## A174288.P4965881719315956656

`filter[A139481(n+2), A358220(#)]`
-/

namespace A174288.P4965881719315956656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A174288.P4965881719315956656

/-! ## A174288.P18410340122754180347

`filter[A139481(n+3), A010051(#)]`
-/

namespace A174288.P18410340122754180347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139481 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A174288.P18410340122754180347

/-! ## A174288.P17673262659749321446

`filter[A139481(n+3), A302777(#)]`
-/

namespace A174288.P17673262659749321446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139481 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A174288.P17673262659749321446

/-!
# A174289: Numerator of the n-th term of the inverse binomial transform of 1, 1/2, B_4, B_6, B_8,..., a modified Bernoulli sequence.

The programs for A174289, there is no canonical definition to state claims against.
-/

/-! ## A174289.P13469720447687259792

`A174356(n)+A174290(n)`
-/

namespace A174289.P13469720447687259792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174356 n + A174290 n

end

end A174289.P13469720447687259792

/-! ## A174289.P18273209316016452969

`A174290(n)+A174276(n)*A181983(n)`
-/

namespace A174289.P18273209316016452969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174290 n + A174276 n * A181983 n

end

end A174289.P18273209316016452969

/-!
# A174290: Numerators of the inverse binomial transform of the sequence of nonzero Bernoulli numbers.

The programs for A174290, there is no canonical definition to state claims against.
-/

/-! ## A174290.P17182355017590041912

`A174289(n)-A174356(n)`
-/

namespace A174290.P17182355017590041912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174289 n - A174356 n

end

end A174290.P17182355017590041912

/-! ## A174290.P9339290233537274470

`A174289(n)+A038608(n)*A174276(n)`
-/

namespace A174290.P9339290233537274470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174289 n + A038608 n * A174276 n

end

end A174290.P9339290233537274470

/-! ## A174290.P1134415177236184586

`A174289(n)-A174276(n)*A181983(n)`
-/

namespace A174290.P1134415177236184586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174289 n - A174276 n * A181983 n

end

end A174290.P1134415177236184586

/-!
# A174291: Numbers n such that bigomega(Fibonacci(n)) is a perfect square.

The programs for A174291, there is no canonical definition to state claims against.
-/

/-! ## A174291.P6860615073876259054

`eq[A000007(n), A007968(A038575(n))]`
-/

namespace A174291.P6860615073876259054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A038575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174291.P6860615073876259054

/-! ## A174291.P5257985634045818172

`eq[A010052(A038575(n)), A057427(n)]`
-/

namespace A174291.P5257985634045818172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A038575 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174291.P5257985634045818172

/-! ## A174291.P6272326965605012099

`eq[A000038(n), A091453(A038575(n))]`
-/

namespace A174291.P6272326965605012099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A038575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174291.P6272326965605012099

/-! ## A174291.P3941992985241522525

`record[A010052(A038575(n))*A028310(n)]`
-/

namespace A174291.P3941992985241522525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A038575 n).toNat * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174291.P3941992985241522525

/-! ## A174291.P12123854061573403626

`eq[A007968(A038575(n)), A163805(2*n)]`
-/

namespace A174291.P12123854061573403626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A038575 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174291.P12123854061573403626

/-! ## A174291.P11148425977298892925

`record[A010052(A038575(n))*A065033(2*n)]`
-/

namespace A174291.P11148425977298892925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A038575 n).toNat * A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174291.P11148425977298892925

/-! ## A174291.P2402994714569724632

`record[(A004273(n)+1-n)*A010052(A038575(n))]`
-/

namespace A174291.P2402994714569724632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + (1 - (n : ℤ))) * A010052 (A038575 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174291.P2402994714569724632

/-! ## A174291.P14839557954467903948

`eq[A169780(n)%2, A010052(A038575(n))]`
-/

namespace A174291.P14839557954467903948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169780 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A038575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174291.P14839557954467903948

/-!
# A174292: Spoof-perfect numbers: Freestyle perfect numbers (A058007) which are not perfect numbers (A000396).

The programs for A174292, there is no canonical definition to state claims against.
-/

/-! ## A174292.P5899521160305665417

`filter[A058007(n+1), A354996(#)]`
-/

namespace A174292.P5899521160305665417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A174292.P5899521160305665417

/-! ## A174292.P15510253753836946804

`filter[A058007(n+1), A379958(#)]`
-/

namespace A174292.P15510253753836946804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A174292.P15510253753836946804

/-! ## A174292.P16541647312518253497

`filter[A058007(n+2), A296210(#)]`
-/

namespace A174292.P16541647312518253497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058007 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A174292.P16541647312518253497

/-! ## A174292.P9938663995374528078

`filter[A058007(n+1), A294937(#)]`
-/

namespace A174292.P9938663995374528078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A174292.P9938663995374528078

/-!
# A174293: A118860/210.

The programs for A174293, there is no canonical definition to state claims against.
-/

/-! ## A174293.P3999288479980729182

`A118860(n+1)/A363500(n+2)*A364263(n+1)`
-/

namespace A174293.P3999288479980729182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118860 (n + 1) : ℚ) / (A363500 (n + 2) : ℚ) * (A364263 (n + 1) : ℚ)

end

end A174293.P3999288479980729182

/-!
# A174294: Triangle T(n,k), read by rows, T(n,k) = (T(n-1,k-1) + T(n-2,k-1)) - (T(n-1,k) + T(n-2,k)), with T(n, 0) = T(n, k) = 1 and T(n, 1) = (n mod 2).

The programs for A174294, there is no canonical definition to state claims against.
-/

/-! ## A174294.P1910065175598596004

`A309970(A277410(n+1))`
-/

namespace A174294.P1910065175598596004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309970 (A277410 (n + 1)).toNat

end

end A174294.P1910065175598596004

/-! ## A174294.P2473828190411612660

`A016340(A049828(n+1)^3)`
-/

namespace A174294.P2473828190411612660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016340 (A049828 (n + 1) ^ 3).toNat

end

end A174294.P2473828190411612660

/-! ## A174294.P1345836729131826894

`A016352(4^A049828(n+1))`
-/

namespace A174294.P1345836729131826894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016352 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A049828 (n + 1) : ℤ))).toNat

end

end A174294.P1345836729131826894

/-! ## A174294.P7479941509041506941

`A359763(17^A049828(n+1))`
-/

namespace A174294.P7479941509041506941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (SequenceMachineLib.roundAway ((17 : ℚ) ^ (A049828 (n + 1) : ℤ))).toNat

end

end A174294.P7479941509041506941

/-! ## A174294.P15904637110995804923

`A128132(n^A048158(n+1))`
-/

namespace A174294.P15904637110995804923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128132 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A048158 (n + 1) : ℤ))).toNat

end

end A174294.P15904637110995804923

/-!
# A174295: Matrix inverse of A174294.

The programs for A174295, there is no canonical definition to state claims against.
-/

/-! ## A174295.P18340623701677339883

`xor(A054525(n+1), A326291(A311176(n)))`
-/

namespace A174295.P18340623701677339883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054525 (n + 1)) (A326291 (A311176 n).toNat)

end

end A174295.P18340623701677339883

/-! ## A174295.P17180525905458785638

`A054525(n+1)+A054525(A066509(n+1))`
-/

namespace A174295.P17180525905458785638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) + A054525 (A066509 (n + 1)).toNat

end

end A174295.P17180525905458785638

/-! ## A174295.P6183646035101356400

`A054525(n+1)+A016389(A014046(n+2))`
-/

namespace A174295.P6183646035101356400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) + A016389 (A014046 (n + 2)).toNat

end

end A174295.P6183646035101356400

/-! ## A174295.P12831343248349964151

`xor(A054525(n+1), A055641(A322384(n+1)))`
-/

namespace A174295.P12831343248349964151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054525 (n + 1)) (A055641 (A322384 (n + 1)).toNat)

end

end A174295.P12831343248349964151

/-! ## A174295.P16203994870284508174

`xor(A054525(n+1), A185284(A047485(n+1)))`
-/

namespace A174295.P16203994870284508174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054525 (n + 1)) (A185284 (A047485 (n + 1)).toNat)

end

end A174295.P16203994870284508174

/-!
# A174296: Row sums of A174294.

The programs for A174296, the canonical program `A174296.P16336704727504652649` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174296 has offset 0).

The definition of A174296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174296.P16336704727504652649

`a(n-2)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174296

/-- `a(n-2)` -/
def P16336704727504652649.Spec : Prop :=
  ∀ n, (P16336704727504652649.a n : ℤ) = A174296 n

theorem P16336704727504652649.correct : P16336704727504652649.Spec := by
  intro n
  simp only [A174296]

end A174296

/-!
# A174297: First column of A174295.

The programs for A174297, there is no canonical definition to state claims against.
-/

/-! ## A174297.P15616107963850445585

`A174295(∑[n])`
-/

namespace A174297.P15616107963850445585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174295 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174297.P15616107963850445585

/-! ## A174297.P4700123201653421185

`A174295(A000217(n))^A178334(n)`
-/

namespace A174297.P4700123201653421185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174295 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A174297.P4700123201653421185

/-! ## A174297.P2442658476454626480

`A174295(A000217(n))%A041250(n)`
-/

namespace A174297.P2442658476454626480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174295 (A000217 n).toNat) (A041250 n)

end

end A174297.P2442658476454626480

/-! ## A174297.P4329266082130619549

`or(A000007(n), A174295(A000217(n)))`
-/

namespace A174297.P4329266082130619549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A174295 (A000217 n).toNat)

end

end A174297.P4329266082130619549

/-! ## A174297.P18045529938099198610

`or(A010051(n+1), A174295(A000217(n)))`
-/

namespace A174297.P18045529938099198610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A174295 (A000217 n).toNat)

end

end A174297.P18045529938099198610

/-!
# A174298: Triangle T(n, k) = binomial(n, k)*( n!/k! if floor(n/2) >= k otherwise n!/(n-k)! ), read by rows.

The programs for A174298, the canonical program `A174298.P6680327952782887561` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174298 has offset 0).

The definition of A174298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174298.P9367073337021983056

`lcm(A021009(n), A021010(n))`
-/

namespace A174298.P9367073337021983056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A021009 n) (A021010 n)

end

end A174298.P9367073337021983056

namespace A174298

/-- `lcm(A021009(n), A021010(n))` -/
def P9367073337021983056.Spec : Prop :=
  ∀ n, (P9367073337021983056.a n : ℤ) = A174298 n

end A174298

/-! ## A174298.P6680327952782887561

`A003984(n)!*A008459(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A174298

/-- `A003984(n)!*A008459(n)` -/
def P6680327952782887561.Spec : Prop :=
  ∀ n, P6680327952782887561.a n = A174298 n

theorem P6680327952782887561.correct : P6680327952782887561.Spec := by
  intro n
  simp only [A174298]

end A174298

/-! ## A174298.P8025069612977570601

`lcm(-A021009(n), A144084(n))`
-/

namespace A174298.P8025069612977570601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A021009 n) (A144084 n)

end

end A174298.P8025069612977570601

namespace A174298

/-- `lcm(-A021009(n), A144084(n))` -/
def P8025069612977570601.Spec : Prop :=
  ∀ n, (P8025069612977570601.a n : ℤ) = A174298 n

end A174298

/-! ## A174298.P9073227038921166438

`A196347(n)/A004197(n)!`
-/

namespace A174298.P9073227038921166438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196347 n : ℚ) / (Nat.factorial (A004197 n).toNat : ℚ)

end

end A174298.P9073227038921166438

namespace A174298

/-- `A196347(n)/A004197(n)!` -/
def P9073227038921166438.Spec : Prop :=
  ∀ n, P9073227038921166438.a n = (A174298 n : ℚ)

end A174298

/-! ## A174298.P15086565436165923244

`lcm(-A021010(n), A021010(A061579(n)))`
-/

namespace A174298.P15086565436165923244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A021010 n) (A021010 (A061579 n).toNat)

end

end A174298.P15086565436165923244

namespace A174298

/-- `lcm(-A021010(n), A021010(A061579(n)))` -/
def P15086565436165923244.Spec : Prop :=
  ∀ n, (P15086565436165923244.a n : ℤ) = A174298 n

end A174298

/-! ## A174298.P427810745110713968

`lcm(A008279(n), A094587(n))*A007318(n)`
-/

namespace A174298.P427810745110713968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008279 n) (A094587 n) : ℤ) * A007318 n

end

end A174298.P427810745110713968

namespace A174298

/-- `lcm(A008279(n), A094587(n))*A007318(n)` -/
def P427810745110713968.Spec : Prop :=
  ∀ n, P427810745110713968.a n = A174298 n

end A174298

/-! ## A174298.P6356415883481718190

`A196347(n)/A140356(n)`
-/

namespace A174298.P6356415883481718190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196347 n : ℚ) / (A140356 n : ℚ)

end

end A174298.P6356415883481718190

namespace A174298

/-- `A196347(n)/A140356(n)` -/
def P6356415883481718190.Spec : Prop :=
  ∀ n, P6356415883481718190.a n = (A174298 n : ℚ)

end A174298

/-! ## A174298.P1784683718936565849

`A008279(n)*A094587(n)/A140356(n)`
-/

namespace A174298.P1784683718936565849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n * A094587 n : ℚ) / (A140356 n : ℚ)

end

end A174298.P1784683718936565849

namespace A174298

/-- `A008279(n)*A094587(n)/A140356(n)` -/
def P1784683718936565849.Spec : Prop :=
  ∀ n, P1784683718936565849.a n = (A174298 n : ℚ)

end A174298

/-!
# A174299: a(n) = floor(n!*exp(-n)).

The programs for A174299, the canonical program `A174299.P18364569376149999674` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174299 has offset 0).

The definition of A174299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174299.P18364569376149999674

`floor(n!/exp(n))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174299

/-- `floor(n!/exp(n))` -/
def P18364569376149999674.Spec : Prop :=
  ∀ n, P18364569376149999674.a n = A174299 n

theorem P18364569376149999674.correct : P18364569376149999674.Spec := by
  intro n
  simp only [A174299]

end A174299

/-! ## A174299.P12742865112872349140

`floor(n!*exp(-n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174299.P12742865112872349140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) * Real.exp (-(n : ℤ) : ℝ)⌋

end

end A174299.P12742865112872349140

namespace A174299

/-- `floor(n!*exp(-n))` -/
def P12742865112872349140.Spec : Prop :=
  ∀ n, P12742865112872349140.a n = A174299 n

end A174299

/-! ## A174299.P8619643340346049180

`floor(A000142(n)/exp(n))`
-/

namespace A174299.P8619643340346049180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℝ) / Real.exp (n : ℝ)⌋

end

end A174299.P8619643340346049180

namespace A174299

/-- `floor(A000142(n)/exp(n))` -/
def P8619643340346049180.Spec : Prop :=
  ∀ n, P8619643340346049180.a n = A174299 n

end A174299

/-! ## A174299.P14668747664642537814

`floor(A130534(∑[n])/exp(n))`
-/

namespace A174299.P14668747664642537814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130534 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) / Real.exp (n : ℝ)⌋

end

end A174299.P14668747664642537814

namespace A174299

/-- `floor(A130534(∑[n])/exp(n))` -/
def P14668747664642537814.Spec : Prop :=
  ∀ n, P14668747664642537814.a n = A174299 n

end A174299

/-! ## A174299.P2892874665016002395

`floor(∏[A028310(n)]/exp(n))`
-/

namespace A174299.P2892874665016002395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) / Real.exp (n : ℝ)⌋

end

end A174299.P2892874665016002395

namespace A174299

/-- `floor(∏[A028310(n)]/exp(n))` -/
def P2892874665016002395.Spec : Prop :=
  ∀ n, P2892874665016002395.a n = A174299 n

end A174299

