import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

/-!
# A320300: Positions of 0's in binary expansion of Pi/4.

The programs for A320300, there is no canonical definition to state claims against.
-/

/-! ## A320300.P2370310516837401609

`A354482(n+1)+2`
-/

namespace A320300.P2370310516837401609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354482 (n + 1) + 2

end

end A320300.P2370310516837401609

/-! ## A320300.P9888659966196336738

`comp[A256108(n+1)]+2`
-/

namespace A320300.P9888659966196336738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A320300.P9888659966196336738

/-! ## A320300.P14819412886693736365

`A320301(n)+a(n-1)` with `a(0)=3`
-/

namespace A320300.P14819412886693736365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A320301 n + a (n - 1)

end

end A320300.P14819412886693736365

/-! ## A320300.P13146391086454460012

`comp[A004711(n+1)-1]+1`
-/

namespace A320300.P13146391086454460012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A320300.P13146391086454460012

/-! ## A320300.P4314921871768951268

`∪[A293828(n+1), A293829(n+1)]`
-/

namespace A320300.P4314921871768951268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320300.P4314921871768951268

/-! ## A320300.P11383923847727878521

`∪[A293828(n+1), A293830(n+1)]+1`
-/

namespace A320300.P11383923847727878521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A320300.P11383923847727878521

/-! ## A320300.P6036867131615245552

`A009056(A354482(n+1))`
-/

namespace A320300.P6036867131615245552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A354482 (n + 1)).toNat

end

end A320300.P6036867131615245552

/-! ## A320300.P10126487545526816395

`filter[n+1, A180433(#)]`
-/

namespace A320300.P10126487545526816395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A180433 (f1 j) = 1) n)

end

end A320300.P10126487545526816395

/-! ## A320300.P14416743978058512525

`lt[∑[A155482(n)], 1]+1`
-/

namespace A320300.P14416743978058512525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A320300.P14416743978058512525

/-! ## A320300.P11010793156732255245

`eq[0, A004601(n+2)]+1`
-/

namespace A320300.P11010793156732255245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320300.P11010793156732255245

/-! ## A320300.P3222066358975432772

`lt[0, A180433(n+1)]+1`
-/

namespace A320300.P3222066358975432772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A320300.P3222066358975432772

/-! ## A320300.P5691406146634289176

`eq[1, A180433(n+2)]+2`
-/

namespace A320300.P5691406146634289176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A320300.P5691406146634289176

/-! ## A320300.P12057602918379848326

`lt[Δ[A166006(n+1)], 1]+2`
-/

namespace A320300.P12057602918379848326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A320300.P12057602918379848326

/-! ## A320300.P18432477562446489810

`lt[A004601(A233583(n+2)), 1]`
-/

namespace A320300.P18432477562446489810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (A233583 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320300.P18432477562446489810

/-! ## A320300.P273719083247046782

`eq[1, ∑[A155996(n)]%2+1]+1`
-/

namespace A320300.P273719083247046782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320300.P273719083247046782

/-!
# A320301: Differences between positions of 0's in binary expansion of Pi.

The programs for A320301, there is no canonical definition to state claims against.
-/

/-! ## A320301.P9463611220329175710

`A320300(n+2)-A320300(n+1)`
-/

namespace A320301.P9463611220329175710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320300 (n + 2) - A320300 (n + 1)

end

end A320301.P9463611220329175710

/-! ## A320301.P3433151628445911695

`Δ[∪[A293828(n+1), A293829(n+1)]]`
-/

namespace A320301.P3433151628445911695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293828 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293829 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A320301.P3433151628445911695

/-! ## A320301.P13646600985401363659

`Δ[∪[A293828(n+1), A293830(n+1)]]`
-/

namespace A320301.P13646600985401363659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293828 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293830 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A320301.P13646600985401363659

/-! ## A320301.P2807698198791773913

`Δ[A320300(n+1)]`
-/

namespace A320301.P2807698198791773913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320301.P2807698198791773913

/-! ## A320301.P15371915645634826754

`Δ[A354482(n+1)]`
-/

namespace A320301.P15371915645634826754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320301.P15371915645634826754

/-! ## A320301.P6948868181480788247

`A354482(n+2)-A354482(n+1)`
-/

namespace A320301.P6948868181480788247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354482 (n + 2) - A354482 (n + 1)

end

end A320301.P6948868181480788247

/-! ## A320301.P6529340576254996358

`Δ[eq[0, A004601(n+2)]]`
-/

namespace A320301.P6529340576254996358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A320301.P6529340576254996358

/-! ## A320301.P14727784488646171682

`Δ[eq[1, A180433(n+1)]]`
-/

namespace A320301.P14727784488646171682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A320301.P14727784488646171682

/-! ## A320301.P2394709910134209987

`Δ[lt[∑[A155996(n)]%2, 1]]`
-/

namespace A320301.P2394709910134209987
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A320301.P2394709910134209987

/-! ## A320301.P4599686853586219408

`A320302(n+1)+1`
-/

namespace A320301.P4599686853586219408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320302 (n + 1) + 1

end

end A320301.P4599686853586219408

/-!
# A320302: Number of consecutive ones in binary expansion of Pi.

The programs for A320302, there is no canonical definition to state claims against.
-/

/-! ## A320302.P7275052500500899238

`A320301(n+1)-1`
-/

namespace A320302.P7275052500500899238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320301 (n + 1) - 1

end

end A320302.P7275052500500899238

/-! ## A320302.P9716047885097112726

`A320300(n+2)-A320300(n+1)-1`
-/

namespace A320302.P9716047885097112726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320300 (n + 2) - A320300 (n + 1) - 1

end

end A320302.P9716047885097112726

/-! ## A320302.P9584237004953217480

`Δ[A320300(n+1)]-1`
-/

namespace A320302.P9584237004953217480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A320302.P9584237004953217480

/-! ## A320302.P16630880436062053408

`Δ[A354482(n+1)]-1`
-/

namespace A320302.P16630880436062053408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A320302.P16630880436062053408

/-! ## A320302.P15455140051493826472

`Δ[eq[1, A180433(n+1)]]-1`
-/

namespace A320302.P15455140051493826472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A320302.P15455140051493826472

/-! ## A320302.P9789591560922718631

`A000378(A320301(n+1))`
-/

namespace A320302.P9789591560922718631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (A320301 (n + 1)).toNat

end

end A320302.P9789591560922718631

/-! ## A320302.P11259698865911417369

`A059400(n)%A320301(n+1)`
-/

namespace A320302.P11259698865911417369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059400 n) (A320301 (n + 1))

end

end A320302.P11259698865911417369

/-! ## A320302.P14406533075788312100

`A065532(n)%A320301(n+1)`
-/

namespace A320302.P14406533075788312100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065532 n) (A320301 (n + 1))

end

end A320302.P14406533075788312100

/-! ## A320302.P13701202353356168343

`A070198(n)%A320301(n+1)`
-/

namespace A320302.P13701202353356168343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A320301 (n + 1))

end

end A320302.P13701202353356168343

/-! ## A320302.P16702298698484086172

`A158463(n)%A320301(n+1)`
-/

namespace A320302.P16702298698484086172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158463 n) (A320301 (n + 1))

end

end A320302.P16702298698484086172

/-! ## A320302.P2893142015252190380

`A171389(n)%A320301(n+1)`
-/

namespace A320302.P2893142015252190380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171389 n) (A320301 (n + 1))

end

end A320302.P2893142015252190380

/-! ## A320302.P11981765591889377539

`A183010(n)%A320301(n+1)`
-/

namespace A320302.P11981765591889377539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183010 n) (A320301 (n + 1))

end

end A320302.P11981765591889377539

/-! ## A320302.P11521542489611812360

`A198277(n)%A320301(n+1)`
-/

namespace A320302.P11521542489611812360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A320301 (n + 1))

end

end A320302.P11521542489611812360

/-! ## A320302.P14544900213632849553

`record[A002148(n)]%A320301(n+1)`
-/

namespace A320302.P14544900213632849553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A320301 (n + 1))

end

end A320302.P14544900213632849553

/-! ## A320302.P9377154132826987320

`A002148(n+1)%A320301(n+1)`
-/

namespace A320302.P9377154132826987320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 (n + 1)) (A320301 (n + 1))

end

end A320302.P9377154132826987320

/-! ## A320302.P3335807786076795542

`A079782(n+1)%A320301(n+1)`
-/

namespace A320302.P3335807786076795542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A320301 (n + 1))

end

end A320302.P3335807786076795542

/-! ## A320302.P12243507690018499010

`A083685(n+1)%A320301(n+1)`
-/

namespace A320302.P12243507690018499010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A320301 (n + 1))

end

end A320302.P12243507690018499010

/-! ## A320302.P10519771224134917059

`A121934(n+1)%A320301(n+1)`
-/

namespace A320302.P10519771224134917059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A320301 (n + 1))

end

end A320302.P10519771224134917059

/-!
# A320303: a(n)/2^n is the expected value of the length of the longest palindromic suffix of a random length-n binary string.

The programs for A320303, there is no canonical definition to state claims against.
-/

/-! ## A320303.P3116386289879138680

`A330225(A088209(n))+1`
-/

namespace A320303.P3116386289879138680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330225 (A088209 n).toNat + 1

end

end A320303.P3116386289879138680

/-! ## A320303.P955232549046400970

`A367291(A228396(n))+A005894(n)`
-/

namespace A320303.P955232549046400970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367291 (A228396 n).toNat + A005894 n

end

end A320303.P955232549046400970

/-!
# A320304: a(n) is the frequency of MIDI note number n in Hertz, rounded to the nearest integer.

The programs for A320304, there is no canonical definition to state claims against.
-/

/-! ## A320304.P747355656179151266

`round(A214832(n+4)/4)`
-/

namespace A320304.P747355656179151266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A214832 (n + 4) : ℚ) / 4)

end

end A320304.P747355656179151266

/-! ## A320304.P14206520668936563718

`A108611(A293392(n+3))+8`
-/

namespace A320304.P14206520668936563718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A293392 (n + 3)).toNat + 8

end

end A320304.P14206520668936563718

/-!
# A320310: (1/4) * number of ways to select 3 distinct points forming a triangle of unsigned area = n/2 from a square of grid points with side length n.

The programs for A320310, there is no canonical definition to state claims against.
-/

/-! ## A320310.P291158213025079726

`A123578(∑[ceil((lcm(2, n)+1+n)/2)^5])`
-/

namespace A320310.P291158213025079726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 n + 1 + n : ℚ) / 2⌉ ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320310.P291158213025079726

/-!
# A320311: Number of ways to write n as the sum of 4 positive integers a, b, c, d such that 1 - a/c = (1 - b/d)^2.

The programs for A320311, there is no canonical definition to state claims against.
-/

/-! ## A320311.P10988155082694230

`A320312(n+1)+A142150(xor(1, n))`
-/

namespace A320311.P10988155082694230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (n + 1) + A142150 (Nat.xor 1 n)

end

end A320311.P10988155082694230

/-! ## A320311.P13778708461767124984

`A320312(n+1)+n%A065033(n)`
-/

namespace A320311.P13778708461767124984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (n + 1) + Int.tmod (n : ℤ) (A065033 n)

end

end A320311.P13778708461767124984

/-! ## A320311.P12183744908502419597

`A320312(n+1)+A002620(n)-floor(n/2)²`
-/

namespace A320311.P12183744908502419597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (n + 1) + A002620 n - ⌊(n : ℚ) / 2⌋ ^ 2

end

end A320311.P12183744908502419597

/-! ## A320311.P4555306908119651820

`A053186(A320312(n+1)+A002620(n))`
-/

namespace A320311.P4555306908119651820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A320312 (n + 1) + A002620 n).toNat

end

end A320311.P4555306908119651820

/-! ## A320311.P1950490387508157131

`A320312(n+1)+A004526(A093178(n))`
-/

namespace A320311.P1950490387508157131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (n + 1) + A004526 (A093178 n).toNat

end

end A320311.P1950490387508157131

/-! ## A320311.P1226920976523568146

`A320312(n+1)+A004526(A124625(n))`
-/

namespace A320311.P1226920976523568146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (n + 1) + A004526 (A124625 n).toNat

end

end A320311.P1226920976523568146

/-! ## A320311.P16324148292525013486

`A320312(n+1)+A142150(A004442(n))`
-/

namespace A320311.P16324148292525013486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (n + 1) + A142150 (A004442 n).toNat

end

end A320311.P16324148292525013486

/-! ## A320311.P1873180207474872875

`A320312(n+1)+A004526(n*A000035(n))`
-/

namespace A320311.P1873180207474872875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (n + 1) + A004526 ((n : ℤ) * A000035 n).toNat

end

end A320311.P1873180207474872875

/-! ## A320311.P13573974077074827385

`A320312(n+1)+A007590(n)%A093178(n)`
-/

namespace A320311.P13573974077074827385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (n + 1) + Int.tmod (A007590 n) (A093178 n)

end

end A320311.P13573974077074827385

/-!
# A320312: Number of ways to write n as the sum of 4 positive integers a, b, c, d such that b != d and a/b - c/d = (a - c)/(b - d).

The programs for A320312, there is no canonical definition to state claims against.
-/

/-! ## A320312.P9010573592474174692

`A320311(n+1)-A028242(A093178(n))`
-/

namespace A320312.P9010573592474174692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320311 (n + 1) - A028242 (A093178 n).toNat

end

end A320312.P9010573592474174692

/-! ## A320312.P1082695043889288181

`A320311(n+1)-A004525(A093178(n)+1)+1`
-/

namespace A320312.P1082695043889288181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320311 (n + 1) - A004525 (A093178 n + 1).toNat + 1

end

end A320312.P1082695043889288181

/-! ## A320312.P972605912098983596

`A124763(A261610(n))`
-/

namespace A320312.P972605912098983596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A261610 n).toNat

end

end A320312.P972605912098983596

/-! ## A320312.P14904539314124456387

`A089048(∑{e}[A174297(n), #])`
-/

namespace A320312.P14904539314124456387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089048 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A320312.P14904539314124456387

/-! ## A320312.P16674976591551711051

`A194591(A308952(n)+A000930(n))`
-/

namespace A320312.P16674976591551711051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A308952 n + A000930 n).toNat

end

end A320312.P16674976591551711051

/-!
# A320313: Number of ways to write n as the sum of 4 positive integers a, b, c, d such that d < b and a/b - c/d = (a - c)/(b - d).

The programs for A320313, there is no canonical definition to state claims against.
-/

/-! ## A320313.P1894368696113229047

`A000045(A358008(A055215((n+1)²)))`
-/

namespace A320313.P1894368696113229047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A358008 ((A055215 ((n + 1) ^ 2)).toNat + 87)).toNat

end

end A320313.P1894368696113229047

/-! ## A320313.P7455774811992354046

`A262324(A036853(n+1))%A124501(n)`
-/

namespace A320313.P7455774811992354046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262324 (A036853 (n + 1)).toNat) (A124501 n)

end

end A320313.P7455774811992354046

/-! ## A320313.P16896293718792752077

`A005245(n+1)%A325358(A337031(2*(n+1))%A302779(n+3))`
-/

namespace A320313.P16896293718792752077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005245 (n + 1)) (A325358 (Int.tmod (A337031 (2 * (n + 1))) (A302779 (n + 3))).toNat)

end

end A320313.P16896293718792752077

/-! ## A320313.P11875682827258908598

`and(record[A322900(n)], A105517(2*n+3))`
-/

namespace A320313.P11875682827258908598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A105517 (2 * n + 3))

end

end A320313.P11875682827258908598

/-! ## A320313.P3049952715902336512

`and(floor(n/10), A242031(A033493(2*(n+2))))`
-/

namespace A320313.P3049952715902336512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 10⌋ (A242031 (A033493 (2 * (n + 2))).toNat)

end

end A320313.P3049952715902336512

/-!
# A320314: a(n) is the number of symmetric domino towers with n bricks.

The programs for A320314, there is no canonical definition to state claims against.
-/

/-! ## A320314.P5273993878343606163

`2*(A264746(n+1)-A003462(n))-1`
-/

namespace A320314.P5273993878343606163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A264746 (n + 1) - A003462 n) - 1

end

end A320314.P5273993878343606163

/-! ## A320314.P11134278666858033380

`2*A264746(n+1)-A000244(n)`
-/

namespace A320314.P11134278666858033380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264746 (n + 1) - A000244 n

end

end A320314.P11134278666858033380

/-! ## A320314.P14990145924538275249

`2*A264746(n+1)-∑[A025192(n)]`
-/

namespace A320314.P14990145924538275249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264746 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320314.P14990145924538275249

/-! ## A320314.P15591187648622792040

`2*A264746(n+1)-A175840(∑[n])`
-/

namespace A320314.P15591187648622792040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264746 (n + 1) - A175840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320314.P15591187648622792040

/-! ## A320314.P15248005321052055820

`2*A264746(n+1)-record[A106516(n)]`
-/

namespace A320314.P15248005321052055820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264746 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320314.P15248005321052055820

/-!
# A320323: Numbers whose product of prime indices (A003963) is a perfect power and where each prime index has the same number of prime factors, counted with multiplicity.

The programs for A320323, there is no canonical definition to state claims against.
-/

/-! ## A320323.P16881081294095602006

`∩[A082916(n+1), A320325(n+1)]`
-/

namespace A320323.P16881081294095602006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320323.P16881081294095602006

/-! ## A320323.P11209494012466415822

`∩[A144711(n+1), A320325(n+1)]`
-/

namespace A320323.P11209494012466415822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320323.P11209494012466415822

/-! ## A320323.P13601910767205588239

`∩[A160822(n+1), A320325(n+1)]`
-/

namespace A320323.P13601910767205588239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320323.P13601910767205588239

/-! ## A320323.P5697944807678143128

`∩[A320325(n+1), A321698(n+2)]`
-/

namespace A320323.P5697944807678143128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320323.P5697944807678143128

/-! ## A320323.P5954468858396680125

`∩[A268082(n+1), A320325(n+1)]`
-/

namespace A320323.P5954468858396680125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320323.P5954468858396680125

/-!
# A320324: Numbers of which each prime index has the same number of prime factors, counted with multiplicity.

The programs for A320324, there is no canonical definition to state claims against.
-/

/-! ## A320324.P11846893924281454453

`eq[A340691(n+1), A340928(n+1)]+1`
-/

namespace A320324.P11846893924281454453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320324.P11846893924281454453

/-! ## A320324.P16554408599791534026

`∩[comp[A356736(3*n+2)], A328674(n+1)]`
-/

namespace A320324.P16554408599791534026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A320324.P16554408599791534026

/-! ## A320324.P10896640502855036338

`record[A327393(n+1)%A124785(n+1)]`
-/

namespace A320324.P10896640502855036338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327393 (n + 1)) (A124785 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320324.P10896640502855036338

/-! ## A320324.P15255102650603836633

`lt[A001221(A347123(n+1)%A195941(n+1)), 2]+1`
-/

namespace A320324.P15255102650603836633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A347123 (n + 1)) (A195941 (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320324.P15255102650603836633

/-!
# A320325: Numbers whose product of prime indices is a perfect power.

The programs for A320325, there is no canonical definition to state claims against.
-/

/-! ## A320325.P9422447161478453149

`∪[A320699(n+1), A319877(n+2)]`
-/

namespace A320325.P9422447161478453149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319877 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320325.P9422447161478453149

/-! ## A320325.P12844561444902654748

`lt[0, A056674(A003963(n+1))%2]+1`
-/

namespace A320325.P12844561444902654748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056674 (A003963 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A320325.P12844561444902654748

/-! ## A320325.P3275855009771041866

`∪[A320323(n+1), A320699(n+1)]%A353399(n+4)`
-/

namespace A320325.P3275855009771041866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320699 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A353399 (n + 4))

end

end A320325.P3275855009771041866

/-! ## A320325.P12671630982955274750

`record[A320699(n+1)%A204581(n)]`
-/

namespace A320325.P12671630982955274750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320699 (n + 1)) (A204581 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320325.P12671630982955274750

/-! ## A320325.P14185392484341830951

`A320699(n+1)+A000007(A008279(n))`
-/

namespace A320325.P14185392484341830951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320699 (n + 1) + A000007 (A008279 n).toNat

end

end A320325.P14185392484341830951

/-!
# A320326: a(n) = Sum_{i=0..n} binomial(2*i-1,i)*binomial(2*i,n-i).

The programs for A320326, there is no canonical definition to state claims against.
-/

/-! ## A320326.P11844527771221752903

`ceil(A137635(n)/2)`
-/

namespace A320326.P11844527771221752903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137635 n : ℚ) / 2⌉

end

end A320326.P11844527771221752903

/-! ## A320326.P10389584093146529134

`A137635(A028310(n))/2`
-/

namespace A320326.P10389584093146529134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137635 (A028310 n).toNat : ℚ) / 2

end

end A320326.P10389584093146529134

/-! ## A320326.P12593600905277399232

`A137635(n)/A036453(n+1)`
-/

namespace A320326.P12593600905277399232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137635 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A320326.P12593600905277399232

/-! ## A320326.P8748735557165852029

`A137635(n)/A020639(A008574(n))`
-/

namespace A320326.P8748735557165852029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137635 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A320326.P8748735557165852029

/-! ## A320326.P15330418315165812974

`A137635(n)/A020639(A111284(n+1))`
-/

namespace A320326.P15330418315165812974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137635 n : ℚ) / (A020639 (A111284 (n + 1)).toNat : ℚ)

end

end A320326.P15330418315165812974

/-!
# A320327: Triangle T(n,m) = C(2*n,m)*C(2*n-1,n), 0 <= m <= 2*n, n >= 0.

The programs for A320327, there is no canonical definition to state claims against.
-/

/-! ## A320327.P13188461030377259048

`A034870(n)*A088218(floor(sqrt(n)))`
-/

namespace A320327.P13188461030377259048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 n * A088218 (Nat.sqrt n)

end

end A320327.P13188461030377259048

/-! ## A320327.P3073836175409397647

`A034870(n)*A034871(floor(sqrt(n))²)`
-/

namespace A320327.P3073836175409397647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 n * A034871 (Nat.sqrt n ^ 2)

end

end A320327.P3073836175409397647

/-! ## A320327.P17382477643317943395

`A034869(A048760(n))*A034870(n)`
-/

namespace A320327.P17382477643317943395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 (A048760 n).toNat * A034870 n

end

end A320327.P17382477643317943395

/-!
# A320328: Number of square multiset partitions of integer partitions of n.

The programs for A320328, there is no canonical definition to state claims against.
-/

/-! ## A320328.P122802811779587087

`A073188(A151425(n))`
-/

namespace A320328.P122802811779587087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A151425 n).toNat

end

end A320328.P122802811779587087

/-! ## A320328.P11233502438147570800

`A023193(A083579(n+1))`
-/

namespace A320328.P11233502438147570800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A083579 (n + 1)).toNat

end

end A320328.P11233502438147570800

/-! ## A320328.P7787714053436126436

`A023193(A023105(n+3))-1`
-/

namespace A320328.P7787714053436126436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A023105 (n + 3)).toNat - 1

end

end A320328.P7787714053436126436

/-! ## A320328.P3789585516012437913

`A000006(floor(sqrt(A007552(n+1))))`
-/

namespace A320328.P3789585516012437913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (Int.sqrt (A007552 (n + 1))).toNat

end

end A320328.P3789585516012437913

/-! ## A320328.P1360761347651451108

`A000006(round(sqrt(A007552(n+1))))`
-/

namespace A320328.P1360761347651451108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (SequenceMachineLib.roundAway (Real.sqrt (A007552 (n + 1) : ℝ))).toNat

end

end A320328.P1360761347651451108

/-!
# A320329: Row sums of A174790.

The programs for A320329, there is no canonical definition to state claims against.
-/

/-! ## A320329.P16292908884527908841

`A001813(n)+1-A000165(n)+n`
-/

namespace A320329.P16292908884527908841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n + (1 - A000165 n + (n : ℤ))

end

end A320329.P16292908884527908841

/-!
# A320331: Number of strict T_0 multiset partitions of integer partitions of n.

The programs for A320331, there is no canonical definition to state claims against.
-/

/-! ## A320331.P5712535996076692713

`A198315(A000045(n))+A027423(n)`
-/

namespace A320331.P5712535996076692713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198315 (A000045 n).toNat + A027423 n

end

end A320331.P5712535996076692713

/-! ## A320331.P5816235950702841310

`or(A000005(A000142(n)), A374699(n))`
-/

namespace A320331.P5816235950702841310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A000142 n).toNat) (A374699 n)

end

end A320331.P5816235950702841310

/-! ## A320331.P6255915784473874583

`A172471(A096607(n+1)*A343937(n+1))`
-/

namespace A320331.P6255915784473874583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A096607 (n + 1) * A343937 (n + 1)).toNat

end

end A320331.P6255915784473874583

/-!
# A320332: Expansion of Product_{0 < i < j < k} (1 + x^(i^2 + j^2 + k^2)).

The programs for A320332, there is no canonical definition to state claims against.
-/

/-! ## A320332.P15176938927569252364

`and(A050376(A201451(n+1)), A321448(n))`
-/

namespace A320332.P15176938927569252364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050376 (A201451 (n + 1)).toNat) (A321448 n)

end

end A320332.P15176938927569252364

/-! ## A320332.P12157307246868054483

`gcd(A321471(n+1)%A321455(n+1), A321447(n))`
-/

namespace A320332.P12157307246868054483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A321471 (n + 1)) (A321455 (n + 1))) (A321447 n)

end

end A320332.P12157307246868054483

/-! ## A320332.P13204762836644196378

`and(A255404(A000124(n)), A321448(n))`
-/

namespace A320332.P13204762836644196378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255404 (A000124 n).toNat) (A321448 n)

end

end A320332.P13204762836644196378

/-! ## A320332.P4989285933420033861

`and(A116015(n+1), A321448(n))`
-/

namespace A320332.P4989285933420033861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116015 (n + 1)) (A321448 n)

end

end A320332.P4989285933420033861

/-! ## A320332.P14031968401114927000

`and(A105990(n+1), A321448(n))`
-/

namespace A320332.P14031968401114927000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105990 (n + 1)) (A321448 n)

end

end A320332.P14031968401114927000

/-!
# A320337: a(n) = A271697(2*n, n).

The programs for A320337, there is no canonical definition to state claims against.
-/

/-! ## A320337.P14773462346108528254

`A271697(∑[4*n])`
-/

namespace A320337.P14773462346108528254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320337.P14773462346108528254

/-! ## A320337.P5082954980586130819

`A046739(xor(1, 4*C(n, 2))+1)`
-/

namespace A320337.P5082954980586130819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046739 (Nat.xor 1 (4 * Nat.choose n 2) + 1)

end

end A320337.P5082954980586130819

/-! ## A320337.P9275137053646168481

`A046739(A051890(n))`
-/

namespace A320337.P9275137053646168481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046739 (A051890 n).toNat

end

end A320337.P9275137053646168481

/-! ## A320337.P16710922126412616732

`A046739(2*A002061(n))`
-/

namespace A320337.P16710922126412616732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046739 (2 * A002061 n).toNat

end

end A320337.P16710922126412616732

/-! ## A320337.P1903909119353164512

`A046739(lcm(2, A002061(n)))`
-/

namespace A320337.P1903909119353164512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046739 (Int.lcm 2 (A002061 n))

end

end A320337.P1903909119353164512

/-!
# A320340: Heinz numbers of double-free integer partitions.

The programs for A320340, there is no canonical definition to state claims against.
-/

/-! ## A320340.P5203922494307446132

`eq[1, gcd(n+1, A297002(n+1))]+1`
-/

namespace A320340.P5203922494307446132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A297002 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320340.P5203922494307446132

/-! ## A320340.P1845370017237836957

`comp[A350845(n+1)-1]-A008683(A109833(n+2))`
-/

namespace A320340.P1845370017237836957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350845 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A008683 (A109833 (n + 2)).toNat

end

end A320340.P1845370017237836957

/-! ## A320340.P1503861021073776156

`A000122(A116940(2*n+1))+comp[A350845(n+1)-1]+1`
-/

namespace A320340.P1503861021073776156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350845 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A116940 (2 * n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A320340.P1503861021073776156

/-! ## A320340.P15662052542934027849

`A235145(A007318(2*(n+2)))+comp[A350845(n+1)-1]+1`
-/

namespace A320340.P15662052542934027849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350845 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A007318 (2 * (n + 2))).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A320340.P15662052542934027849

/-! ## A320340.P1147110220647440524

`A000122(A047838(2*n+5))+comp[A350845(n+1)-1]+1`
-/

namespace A320340.P1147110220647440524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350845 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A047838 (2 * n + 5)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A320340.P1147110220647440524

/-! ## A320340.P2575064348506027994

`A350838(n+1)`
-/

namespace A320340.P2575064348506027994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350838 (n + 1)

end

end A320340.P2575064348506027994

/-! ## A320340.P3832935564906100801

`record[A350838(A109785(n))]`
-/

namespace A320340.P3832935564906100801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350838 (A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320340.P3832935564906100801

/-! ## A320340.P18185342918823126934

`record[A350838(A117910(n))]`
-/

namespace A320340.P18185342918823126934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350838 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320340.P18185342918823126934

/-!
# A320341: Triangle read by rows: T(n,k) is the number of unmarked circular binary words (necklaces) of length n having k occurrences of the pattern 00 (n >= 0 and 0 <= k <= n).

The programs for A320341, there is no canonical definition to state claims against.
-/

/-! ## A320341.P9960806888347486999

`A116598(n)+A010893(A130167(n))`
-/

namespace A320341.P9960806888347486999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n + A010893 ((A130167 n).toNat + 13)

end

end A320341.P9960806888347486999

/-! ## A320341.P17876964567409546030

`A116598(n)+A094544(A132062(n))`
-/

namespace A320341.P17876964567409546030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n + A094544 (A132062 n).toNat

end

end A320341.P17876964567409546030

/-! ## A320341.P7225364616497452800

`A151933(A085771(n))+A116598(n)`
-/

namespace A320341.P7225364616497452800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A085771 n).toNat + A116598 n

end

end A320341.P7225364616497452800

/-! ## A320341.P293070806060065096

`A116598(n)+A000007(A241981(n))`
-/

namespace A320341.P293070806060065096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n + A000007 (A241981 n).toNat

end

end A320341.P293070806060065096

/-! ## A320341.P11909914259266252485

`A116598(n)+A000007(A281446(n))`
-/

namespace A320341.P11909914259266252485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n + A000007 (A281446 n).toNat

end

end A320341.P11909914259266252485

/-!
# A320342: Maximum term in Cunningham chain of the first kind generated by the n-th prime.

The programs for A320342, there is no canonical definition to state claims against.
-/

/-! ## A320342.P6623568175923356831

`A068640(A054977(n)*A130290(n+1))`
-/

namespace A320342.P6623568175923356831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068640 (A054977 n * A130290 (n + 1)).toNat

end

end A320342.P6623568175923356831

/-! ## A320342.P9548896227599952900

`A068640(lcm(A054977(n), A130290(n+1)))`
-/

namespace A320342.P9548896227599952900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068640 (Int.lcm (A054977 n) (A130290 (n + 1)))

end

end A320342.P9548896227599952900

/-! ## A320342.P17939073007548666306

`A089725(A054977(n)*A130290(n+1))`
-/

namespace A320342.P17939073007548666306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089725 (A054977 n * A130290 (n + 1)).toNat

end

end A320342.P17939073007548666306

/-!
# A320343: Expansion of e.g.f. 1/sqrt(1 - 2*log(1 + x)).

The programs for A320343, there is no canonical definition to state claims against.
-/

/-! ## A320343.P14023332275035634054

`A004526(A020098(n)+A000670(n))`
-/

namespace A320343.P14023332275035634054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020098 n + A000670 n).toNat

end

end A320343.P14023332275035634054

/-! ## A320343.P14172735116628553259

`A065033(A154921(∑[n])+A020053(n))`
-/

namespace A320343.P14172735116628553259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A154921 (∑ j ∈ Finset.range (n + 1), f1 j) + A020053 n).toNat

end

end A320343.P14172735116628553259

/-! ## A320343.P15856353663227773826

`A065033(A020053(n)+A019472(n)+n!)`
-/

namespace A320343.P15856353663227773826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A020053 n + (A019472 n + (Nat.factorial n : ℤ))).toNat

end

end A320343.P15856353663227773826

/-!
# A320344: Expansion of e.g.f. log(1 + x)/(1 - log(1 + x))^2.

The programs for A320344, there is no canonical definition to state claims against.
-/

/-! ## A320344.P13488515297425280582

`A317280(n)-A006252(n)`
-/

namespace A320344.P13488515297425280582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317280 n - A006252 n

end

end A320344.P13488515297425280582

/-! ## A320344.P3104376820347577400

`A306038(n+1)-2*A006252(n)`
-/

namespace A320344.P3104376820347577400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 (n + 1) - 2 * A006252 n

end

end A320344.P3104376820347577400

/-! ## A320344.P14156136945875754555

`A108125(n)+A317280(n)-A306038(n)`
-/

namespace A320344.P14156136945875754555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108125 n + (A317280 n - A306038 n)

end

end A320344.P14156136945875754555

/-! ## A320344.P2485439422828566355

`A108125(n)+Δ[A306038(n)]-A006252(n)`
-/

namespace A320344.P2485439422828566355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108125 n + (f1 (n + 1) - f1 n) - A006252 n

end

end A320344.P2485439422828566355

/-! ## A320344.P9919265229646061663

`A317280(n)-(A306038(n+1)-A317280(n))`
-/

namespace A320344.P9919265229646061663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317280 n - (A306038 (n + 1) - A317280 n)

end

end A320344.P9919265229646061663

/-! ## A320344.P9968510299209887910

`A317280(n)-A108125(n+1)/(n+1)`
-/

namespace A320344.P9968510299209887910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317280 n : ℚ) - (A108125 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A320344.P9968510299209887910

/-!
# A320346: a(n) is the number of perfect matchings in the graph with vertices labeled 1 to 2n with edges {i,j} for 1<=|i-j|<=4.

The programs for A320346, there is no canonical definition to state claims against.
-/

/-! ## A320346.P12486606654205430534

`A360335(∑[n+3])`
-/

namespace A320346.P12486606654205430534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320346.P12486606654205430534

/-! ## A320346.P5197559222074261101

`A360335(A141214(n))+A185284(n)`
-/

namespace A320346.P5197559222074261101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360335 (A141214 n).toNat + A185284 n

end

end A320346.P5197559222074261101

/-! ## A320346.P10578789211455531775

`A360335(A141214(n))%A128655(n+1)`
-/

namespace A320346.P10578789211455531775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360335 (A141214 n).toNat) (A128655 (n + 1))

end

end A320346.P10578789211455531775

/-! ## A320346.P10619693549310348942

`A360335(A055998(n+1))+A002324(3*n+2)`
-/

namespace A320346.P10619693549310348942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360335 (A055998 (n + 1)).toNat + A002324 (3 * n + 2)

end

end A320346.P10619693549310348942

/-! ## A320346.P9827051490140838585

`A360335(A055998(n+1))+A010054(3*n+2)`
-/

namespace A320346.P9827051490140838585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360335 (A055998 (n + 1)).toNat + A010054 (3 * n + 2)

end

end A320346.P9827051490140838585

/-!
# A320347: Number of partitions of n into distinct parts (a_1, a_2, ... , a_m) (a_1 > a_2 > ... > a_m and Sum_{k=1..m} a_k = n) such that a1 - a2, a2 - a3, ..., a_{m-1} - a_m are different.

The programs for A320347, there is no canonical definition to state claims against.
-/

/-! ## A320347.P13090131937980808580

`A325468(n+1)+A025441(A133425(n+1))`
-/

namespace A320347.P13090131937980808580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325468 (n + 1) + A025441 (A133425 (n + 1)).toNat

end

end A320347.P13090131937980808580

/-! ## A320347.P12523169256515837724

`A325468(n+1)+A185708(A185691(n+1))`
-/

namespace A320347.P12523169256515837724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325468 (n + 1) + A185708 (A185691 (n + 1)).toNat

end

end A320347.P12523169256515837724

/-! ## A320347.P4643345137446784767

`A316313(n+1)+A102683(A011782(n))`
-/

namespace A320347.P4643345137446784767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (n + 1) + A102683 (A011782 n).toNat

end

end A320347.P4643345137446784767

/-! ## A320347.P12829595883008339798

`A316313(n+1)+A102683(A056469(n))`
-/

namespace A320347.P12829595883008339798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (n + 1) + A102683 (A056469 n).toNat

end

end A320347.P12829595883008339798

/-! ## A320347.P15281144755079593608

`A316313(n+1)-∑[A178798(A006456(n))]`
-/

namespace A320347.P15281144755079593608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A006456 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320347.P15281144755079593608

/-!
# A320349: Expansion of e.g.f. Product_{k>=1} 1/(1 - log(1/(1 - x))^k).

The programs for A320349, there is no canonical definition to state claims against.
-/

/-! ## A320349.P1759533873637824059

`A028310(A354013(n)-A052769(n))`
-/

namespace A320349.P1759533873637824059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A354013 n - A052769 n).toNat

end

end A320349.P1759533873637824059

/-! ## A320349.P17666864172321708985

`A144792(n)-A059169(A261005(n))`
-/

namespace A320349.P17666864172321708985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144792 n - A059169 (A261005 n).toNat

end

end A320349.P17666864172321708985

/-!
# A320350: Expansion of e.g.f. Product_{k>=1} (1 + log(1/(1 - x))^k).

The programs for A320350, there is no canonical definition to state claims against.
-/

/-! ## A320350.P14548207421726532535

`A330677(n+1)+A002051(n+1)`
-/

namespace A320350.P14548207421726532535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330677 (n + 1) + A002051 (n + 1)

end

end A320350.P14548207421726532535

/-! ## A320350.P16684460735350579037

`A305536(n)+A048050(A001147(n))`
-/

namespace A320350.P16684460735350579037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305536 n + A048050 (A001147 n).toNat

end

end A320350.P16684460735350579037

/-!
# A320351: Number of connected multiset partitions of integer partitions of n.

The programs for A320351, there is no canonical definition to state claims against.
-/

/-! ## A320351.P1620188098584548183

`A030435(n)-A286361(A216078(n+1))`
-/

namespace A320351.P1620188098584548183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030435 n - A286361 (A216078 (n + 1)).toNat

end

end A320351.P1620188098584548183

/-! ## A320351.P12356249722713014217

`2*A030436(n)-A286361(A216078(n+1))`
-/

namespace A320351.P12356249722713014217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030436 n - A286361 (A216078 (n + 1)).toNat

end

end A320351.P12356249722713014217

/-! ## A320351.P15674469841637661535

`A004277(A030436(n))-A286361(A216078(n+1))`
-/

namespace A320351.P15674469841637661535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A030436 n).toNat - A286361 (A216078 (n + 1)).toNat

end

end A320351.P15674469841637661535

/-! ## A320351.P7028824690566827871

`2*A216210(A194274(n))-A286361(A216078(n+1))`
-/

namespace A320351.P7028824690566827871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216210 (A194274 n).toNat - A286361 (A216078 (n + 1)).toNat

end

end A320351.P7028824690566827871

/-! ## A320351.P10817053099623473104

`2*A216210(A007590(n+1))-A286361(A216078(n+1))`
-/

namespace A320351.P10817053099623473104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216210 (A007590 (n + 1)).toNat - A286361 (A216078 (n + 1)).toNat

end

end A320351.P10817053099623473104

/-!
# A320352: Expansion of e.g.f. (exp(x) - 1)/(exp(x) - exp(2*x) + 1).

The programs for A320352, there is no canonical definition to state claims against.
-/

/-! ## A320352.P7681031471170311036

`A000557(n)-A000556(n)`
-/

namespace A320352.P7681031471170311036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n - A000556 n

end

end A320352.P7681031471170311036

/-! ## A320352.P11178725146738502184

`A245155(n)-A005923(n)`
-/

namespace A320352.P11178725146738502184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245155 n - A005923 n

end

end A320352.P11178725146738502184

/-! ## A320352.P2536363091668517929

`(2*A000557(n))%A005923(n)`
-/

namespace A320352.P2536363091668517929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000557 n) (A005923 n)

end

end A320352.P2536363091668517929

/-! ## A320352.P12072487743532077271

`ceil(A245155(n)/2)-A000556(n)`
-/

namespace A320352.P12072487743532077271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245155 n : ℚ) / 2⌉ - A000556 n

end

end A320352.P12072487743532077271

/-! ## A320352.P6366701981954129557

`A245155(A254667(n))%A005923(n)`
-/

namespace A320352.P6366701981954129557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245155 (A254667 n).toNat) (A005923 n)

end

end A320352.P6366701981954129557

/-! ## A320352.P2467016287917107144

`(A245155(n)%A005923(n))%A000557(n)`
-/

namespace A320352.P2467016287917107144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A245155 n) (A005923 n)) (A000557 n)

end

end A320352.P2467016287917107144

/-!
# A320353: Number of antichains of multisets whose multiset union is an integer partition of n.

The programs for A320353, there is no canonical definition to state claims against.
-/

/-! ## A320353.P11845364686390185867

`A351290(A206100(n))+A206100(n)`
-/

namespace A320353.P11845364686390185867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (A206100 n).toNat + A206100 n

end

end A320353.P11845364686390185867

/-! ## A320353.P8966144931708090717

`A003056(A026521(n+1)*A052816(n))`
-/

namespace A320353.P8966144931708090717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A026521 (n + 1) * A052816 n).toNat

end

end A320353.P8966144931708090717

/-! ## A320353.P327239493522575817

`A003056(A026521(n+1)*A337334(n))`
-/

namespace A320353.P327239493522575817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A026521 (n + 1) * A337334 n).toNat

end

end A320353.P327239493522575817

/-!
# A320354: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals: A(n,k) = Product_{j=1..n} (k^j - 1).

The programs for A320354, there is no canonical definition to state claims against.
-/

/-! ## A320354.P9227184460376136357

`A003992(n)*A156540(n)`
-/

namespace A320354.P9227184460376136357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A156540 n

end

end A320354.P9227184460376136357

/-! ## A320354.P4514931915110937499

`A004248(A061579(n))*A156540(n)`
-/

namespace A320354.P4514931915110937499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A061579 n).toNat * A156540 n

end

end A320354.P4514931915110937499

/-! ## A320354.P8853362796811237269

`A025581(n)^A002262(n)*A156540(n)`
-/

namespace A320354.P8853362796811237269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A002262 n : ℤ) * (A156540 n : ℚ)

end

end A320354.P8853362796811237269

/-! ## A320354.P10992808038326374798

`A093327(A294046(n))`
-/

namespace A320354.P10992808038326374798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093327 (A294046 n).toNat

end

end A320354.P10992808038326374798

/-! ## A320354.P16106228307484458717

`A007966(A394320(n))`
-/

namespace A320354.P16106228307484458717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A394320 n).toNat

end

end A320354.P16106228307484458717

/-!
# A320355: Number of connected antichains of multisets whose multiset union is an integer partition of n.

The programs for A320355, there is no canonical definition to state claims against.
-/

/-! ## A320355.P389493668164088727

`A005848(A000837(n+1))`
-/

namespace A320355.P389493668164088727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005848 (A000837 (n + 1)).toNat

end

end A320355.P389493668164088727

/-! ## A320355.P17576256320082508791

`A005848(A200144(n+1))`
-/

namespace A320355.P17576256320082508791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005848 (A200144 (n + 1)).toNat

end

end A320355.P17576256320082508791

/-! ## A320355.P14864132505197912456

`A005848(A319811(n+1))`
-/

namespace A320355.P14864132505197912456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005848 (A319811 (n + 1)).toNat

end

end A320355.P14864132505197912456

/-! ## A320355.P15953390996242491997

`A116157(n)+A031286(A000244(n))`
-/

namespace A320355.P15953390996242491997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116157 n + A031286 (A000244 n).toNat

end

end A320355.P15953390996242491997

/-! ## A320355.P7703705015594720605

`A116157(n)+A031286(A152226(n))`
-/

namespace A320355.P7703705015594720605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116157 n + A031286 (A152226 n).toNat

end

end A320355.P7703705015594720605

/-!
# A320356: Number of strict connected antichains of multisets whose multiset union is an integer partition of n.

The programs for A320356, there is no canonical definition to state claims against.
-/

/-! ## A320356.P6306623876449566740

`round((2^n+n²)/log(A079385(n+1)))`
-/

namespace A320356.P6306623876449566740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n + n ^ 2 : ℝ) / Real.log (A079385 (n + 1) : ℝ))

end

end A320356.P6306623876449566740

/-! ## A320356.P16965440814633596497

`A236510(A225393(n))`
-/

namespace A320356.P16965440814633596497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (A225393 n).toNat

end

end A320356.P16965440814633596497

/-! ## A320356.P11640715974605977557

`A368728(A302019(n))`
-/

namespace A320356.P11640715974605977557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (A302019 n).toNat

end

end A320356.P11640715974605977557

/-! ## A320356.P10958980263649447458

`A236510(A060961(n+1))`
-/

namespace A320356.P10958980263649447458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (A060961 (n + 1)).toNat

end

end A320356.P10958980263649447458

/-! ## A320356.P14949585516728165300

`A342526(A107479(n+1))`
-/

namespace A320356.P14949585516728165300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (A107479 (n + 1)).toNat

end

end A320356.P14949585516728165300

/-!
# A320357: a(0)=1; a(1)=1; for n >= 2, a(n) = a(n-1) + a(n-A000005(n)).

The programs for A320357, the canonical program `A320357.P6511477533894783325` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320357 has offset 0).

The definition of A320357 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320357.P6511477533894783325

`a(n-1)+a(n-A000005(n))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A320357

/-- `a(n-1)+a(n-A000005(n))` -/
def P6511477533894783325.Spec : Prop :=
  ∀ n, (P6511477533894783325.a n : ℤ) = A320357 n

theorem P6511477533894783325.correct : P6511477533894783325.Spec := by
  intro n
  simp only [A320357]

end A320357

/-! ## A320357.P12118727258500460488

`a(n-1)+a(A049820(n))` with `a(0)=1, a(1)=1`
-/

namespace A320357.P12118727258500460488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A049820 n).toNat

end

end A320357.P12118727258500460488

namespace A320357

/-- `a(n-1)+a(A049820(n))` -/
def P12118727258500460488.Spec : Prop :=
  ∀ n, (P12118727258500460488.a n : ℤ) = A320357 n

end A320357

/-! ## A320357.P5144654086346693167

`a(n-(A032741(n)+1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A320357.P5144654086346693167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ((n : ℤ) - (A032741 n + 1)).toNat + a (n - 1)

end

end A320357.P5144654086346693167

namespace A320357

/-- `a(n-(A032741(n)+1))+a(n-1)` -/
def P5144654086346693167.Spec : Prop :=
  ∀ n, (P5144654086346693167.a n : ℤ) = A320357 n

end A320357

/-! ## A320357.P14847250944278712694

`a(∑{d}[n, A000010(#)-1])+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A320357.P14847250944278712694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (∑ d ∈ Nat.divisors (f1 n), (A000010 d - 1)).toNat + a (n - 1)

end

end A320357.P14847250944278712694

namespace A320357

/-- `a(∑{d}[n, A000010(#)-1])+a(n-1)` -/
def P14847250944278712694.Spec : Prop :=
  ∀ n, (P14847250944278712694.a n : ℤ) = A320357 n

end A320357

/-! ## A320357.P1366350010238507238

`a(n-1)+a(n-A183063(A004277(n)))` with `a(0)=1, a(1)=1`
-/

namespace A320357.P1366350010238507238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a ((n : ℤ) - A183063 (A004277 n).toNat).toNat

end

end A320357.P1366350010238507238

namespace A320357

/-- `a(n-1)+a(n-A183063(A004277(n)))` -/
def P1366350010238507238.Spec : Prop :=
  ∀ n, (P1366350010238507238.a n : ℤ) = A320357 n

end A320357

/-!
# A320358: Number of n X n 0..1 arrays with every element unequal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320358, there is no canonical definition to state claims against.
-/

/-! ## A320358.P758295024428800914

`A320364(∑[4*n]+1)`
-/

namespace A320358.P758295024428800914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320358.P758295024428800914

/-! ## A320358.P1128789483586866666

`record[A320364(∑[A266981(n)])]`
-/

namespace A320358.P1128789483586866666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320358.P1128789483586866666

/-! ## A320358.P8846240430852192408

`lcm(A131849(n), A320364(A001844(n)))`
-/

namespace A320358.P8846240430852192408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131849 n) (A320364 (A001844 n).toNat)

end

end A320358.P8846240430852192408

/-! ## A320358.P11974793079732439271

`A320364(A001844(n))+A024155(n+1)`
-/

namespace A320358.P11974793079732439271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A001844 n).toNat + A024155 (n + 1)

end

end A320358.P11974793079732439271

/-! ## A320358.P4700681472140688841

`A007318(A346517(n))*A320364(A001844(n))`
-/

namespace A320358.P4700681472140688841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A346517 n).toNat * A320364 (A001844 n).toNat

end

end A320358.P4700681472140688841

/-!
# A320359: Number of nX3 0..1 arrays with every element unequal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320359, there is no canonical definition to state claims against.
-/

/-! ## A320359.P6428211213214168177

`A320364(∑[n+2]+4)`
-/

namespace A320359.P6428211213214168177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A320359.P6428211213214168177

/-! ## A320359.P17220274275635555805

`ceil(acot(n))*A320364(A167614(n+1))`
-/

namespace A320359.P17220274275635555805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A320364 (A167614 (n + 1)).toNat

end

end A320359.P17220274275635555805

/-! ## A320359.P3141287977923633822

`A320364(A167614(n+1))+A011739(n)`
-/

namespace A320359.P3141287977923633822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A167614 (n + 1)).toNat + A011739 n

end

end A320359.P3141287977923633822

/-! ## A320359.P2327209295019173030

`A320364(A167614(n+1))+A185255(n)`
-/

namespace A320359.P2327209295019173030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A167614 (n + 1)).toNat + A185255 n

end

end A320359.P2327209295019173030

/-! ## A320359.P14605555100298336510

`A057427(n)*A320364(A167614(n+1))`
-/

namespace A320359.P14605555100298336510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A320364 (A167614 (n + 1)).toNat

end

end A320359.P14605555100298336510

/-!
# A320360: Number of nX4 0..1 arrays with every element unequal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320360, there is no canonical definition to state claims against.
-/

/-! ## A320360.P11192493443897629857

`A320364(A141214(n)+7)`
-/

namespace A320360.P11192493443897629857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A141214 n + 7).toNat

end

end A320360.P11192493443897629857

/-! ## A320360.P7199942490554511283

`A320364(A052905(n)+9)`
-/

namespace A320360.P7199942490554511283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A052905 n + 9).toNat

end

end A320360.P7199942490554511283

/-! ## A320360.P10230211186174830953

`A320364(A055999(n)+10)`
-/

namespace A320360.P10230211186174830953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A055999 n + 10).toNat

end

end A320360.P10230211186174830953

/-! ## A320360.P15708169141945966333

`A320364(A167614(n+2)+1)`
-/

namespace A320360.P15708169141945966333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A167614 (n + 2) + 1).toNat

end

end A320360.P15708169141945966333

/-! ## A320360.P10345641583682630477

`A320364(A020705(A000217(n+3)))`
-/

namespace A320360.P10345641583682630477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A020705 (A000217 (n + 3)).toNat).toNat

end

end A320360.P10345641583682630477

/-!
# A320361: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320361, there is no canonical definition to state claims against.
-/

/-! ## A320361.P12659707133047707236

`A320364(A167499(n+3))`
-/

namespace A320361.P12659707133047707236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A167499 (n + 3)).toNat

end

end A320361.P12659707133047707236

/-! ## A320361.P12916460665384948833

`A320364(A056000(n)+15)`
-/

namespace A320361.P12916460665384948833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A056000 n + 15).toNat

end

end A320361.P12916460665384948833

/-! ## A320361.P13966105828568077617

`A320364(eq[7, A066657(n)])`
-/

namespace A320361.P13966105828568077617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320361.P13966105828568077617

/-! ## A320361.P14440333454915939860

`A320364(∑[A020705(n)]+11)`
-/

namespace A320361.P14440333454915939860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A320361.P14440333454915939860

/-! ## A320361.P9896340843520612522

`A320364(A052905(n+1)+10)`
-/

namespace A320361.P9896340843520612522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A052905 (n + 1) + 10).toNat

end

end A320361.P9896340843520612522

/-!
# A320362: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320362, there is no canonical definition to state claims against.
-/

/-! ## A320362.P12635330879568418072

`A320364(Δ[A111396(n)]+9)`
-/

namespace A320362.P12635330879568418072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (f1 (n + 1) - f1 n + 9).toNat

end

end A320362.P12635330879568418072

/-! ## A320362.P16731005561019724922

`A320364(A374007(n+1))`
-/

namespace A320362.P16731005561019724922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A374007 (n + 1)).toNat

end

end A320362.P16731005561019724922

/-! ## A320362.P4949737701549884599

`A320364(A052905(n+3))`
-/

namespace A320362.P4949737701549884599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A052905 (n + 3)).toNat

end

end A320362.P4949737701549884599

/-! ## A320362.P14627098043021956921

`A320364(eq[3, A219347(n)])`
-/

namespace A320362.P14627098043021956921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320362.P14627098043021956921

/-! ## A320362.P4687969594406088079

`A320364(Δ[A103145(n)]-n)`
-/

namespace A320362.P4687969594406088079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A320362.P4687969594406088079

/-!
# A320363: Number of n X 7 0..1 arrays with every element unequal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320363, there is no canonical definition to state claims against.
-/

/-! ## A320363.P11969987752702747314

`A320364(A167614(n+5)+4)`
-/

namespace A320363.P11969987752702747314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A167614 (n + 5) + 4).toNat

end

end A320363.P11969987752702747314

/-! ## A320363.P18220955079432843593

`A320364(eq[8, A131818(n+1)])`
-/

namespace A320363.P18220955079432843593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320363.P18220955079432843593

/-! ## A320363.P3711394317702916691

`A320364(A374008(n+1))`
-/

namespace A320363.P3711394317702916691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A374008 (n + 1)).toNat

end

end A320363.P3711394317702916691

/-! ## A320363.P15034138072889311786

`A320364(A055999(n+4))`
-/

namespace A320363.P15034138072889311786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A055999 (n + 4)).toNat

end

end A320363.P15034138072889311786

/-! ## A320363.P1233508903887322376

`A320364(eq[4, A219347(n)])`
-/

namespace A320363.P1233508903887322376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320363.P1233508903887322376

/-!
# A320364: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320364, there is no canonical definition to state claims against.
-/

/-! ## A320364.P18090417986539223260

`A113219(A317896(n+1))`
-/

namespace A320364.P18090417986539223260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A317896 (n + 1)).toNat

end

end A320364.P18090417986539223260

/-! ## A320364.P9174369816635478524

`A317896(n+1)-A178798(A172359(n))`
-/

namespace A320364.P9174369816635478524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (n + 1) - A178798 (A172359 n).toNat

end

end A320364.P9174369816635478524

/-! ## A320364.P17948159636453589452

`A317896(n+1)+A025466(A184761(n+1))`
-/

namespace A320364.P17948159636453589452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (n + 1) + A025466 (A184761 (n + 1)).toNat

end

end A320364.P17948159636453589452

/-!
# A320365: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320365, there is no canonical definition to state claims against.
-/

/-! ## A320365.P6562088976701016651

`A320371(∑[4*n]+1)`
-/

namespace A320365.P6562088976701016651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320365.P6562088976701016651

/-! ## A320365.P9957450906217987855

`record[gcd(A008482(n), A320371(n+1))]`
-/

namespace A320365.P9957450906217987855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A320371 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320365.P9957450906217987855

/-! ## A320365.P7258434864536807973

`A320371(A001844(n))+A185245(n)`
-/

namespace A320365.P7258434864536807973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A001844 n).toNat + A185245 n

end

end A320365.P7258434864536807973

/-! ## A320365.P11562818939902422073

`A000041(round(n/39))*A320371(A001844(n))`
-/

namespace A320365.P11562818939902422073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat * A320371 (A001844 n).toNat

end

end A320365.P11562818939902422073

/-! ## A320365.P15929813883308521597

`A014963(45*(n+1))*A320371(A001844(n))`
-/

namespace A320365.P15929813883308521597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (45 * (n + 1)) * A320371 (A001844 n).toNat

end

end A320365.P15929813883308521597

/-!
# A320366: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320366, the canonical program `A320366.P3946028879449021247` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320366 has offset 1).

The definition of A320366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320366.P4613892106066658404

`ogf(4/(1-8x+7x^2-3x^3))`
-/

namespace A320366.P4613892106066658404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -8, 7, -3] n

end

end A320366.P4613892106066658404

namespace A320366

/-- `ogf(4/(1-8x+7x^2-3x^3))` -/
def P4613892106066658404.Spec : Prop :=
  ∀ n, P4613892106066658404.a n = A320366 (n + 1)

end A320366

/-! ## A320366.P3946028879449021247

`8*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=4, a(1)=32, a(2)=228`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A320366

/-- `8*a(n-1)-7*a(n-2)+3*a(n-3)` -/
def P3946028879449021247.Spec : Prop :=
  ∀ n, P3946028879449021247.a n = A320366 (n + 1)

theorem P3946028879449021247.correct : P3946028879449021247.Spec := by
  intro n
  simp only [A320366, Nat.add_sub_cancel]

end A320366

/-! ## A320366.P13096763931590776599

`A320371(∑[n+2]+4)`
-/

namespace A320366.P13096763931590776599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A320366.P13096763931590776599

namespace A320366

/-- `A320371(∑[n+2]+4)` -/
def P13096763931590776599.Spec : Prop :=
  ∀ n, P13096763931590776599.a n = A320366 (n + 1)

end A320366

/-! ## A320366.P1858663207081459044

`lcm(2, A320371(A167614(n+1)))`
-/

namespace A320366.P1858663207081459044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A320371 (A167614 (n + 1)).toNat)

end

end A320366.P1858663207081459044

namespace A320366

/-- `lcm(2, A320371(A167614(n+1)))` -/
def P1858663207081459044.Spec : Prop :=
  ∀ n, (P1858663207081459044.a n : ℤ) = A320366 (n + 1)

end A320366

/-! ## A320366.P11692110861671673637

`A320371(A167614(n+1))+A025444(n)`
-/

namespace A320366.P11692110861671673637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A167614 (n + 1)).toNat + A025444 n

end

end A320366.P11692110861671673637

namespace A320366

/-- `A320371(A167614(n+1))+A025444(n)` -/
def P11692110861671673637.Spec : Prop :=
  ∀ n, P11692110861671673637.a n = A320366 (n + 1)

end A320366

/-!
# A320367: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320367, there is no canonical definition to state claims against.
-/

/-! ## A320367.P3806279934475974831

`A320371(A374004(n+1))`
-/

namespace A320367.P3806279934475974831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A374004 (n + 1)).toNat

end

end A320367.P3806279934475974831

/-! ## A320367.P15811594001338809309

`A320371(A141214(n)+7)`
-/

namespace A320367.P15811594001338809309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A141214 n + 7).toNat

end

end A320367.P15811594001338809309

/-! ## A320367.P16273901827634401476

`A320371(A055999(n)+10)`
-/

namespace A320367.P16273901827634401476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A055999 n + 10).toNat

end

end A320367.P16273901827634401476

/-! ## A320367.P5174907417080618454

`A320371(A167614(n+2)+1)`
-/

namespace A320367.P5174907417080618454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A167614 (n + 2) + 1).toNat

end

end A320367.P5174907417080618454

/-! ## A320367.P38795613955389215

`A320371(Δ[A264443(n)-n²])`
-/

namespace A320367.P38795613955389215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (f1 (n + 1) - f1 n).toNat

end

end A320367.P38795613955389215

/-!
# A320368: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320368, there is no canonical definition to state claims against.
-/

/-! ## A320368.P12038312221110842410

`A320371(A374005(n+1))`
-/

namespace A320368.P12038312221110842410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A374005 (n + 1)).toNat

end

end A320368.P12038312221110842410

/-! ## A320368.P3521424490065678175

`A320371(A167499(n+3))`
-/

namespace A320368.P3521424490065678175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A167499 (n + 3)).toNat

end

end A320368.P3521424490065678175

/-! ## A320368.P16164096953125815032

`A320371(A155212(n)+13)`
-/

namespace A320368.P16164096953125815032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A155212 n + 13).toNat

end

end A320368.P16164096953125815032

/-! ## A320368.P3485685190263729980

`A320371(A056000(n)+15)`
-/

namespace A320368.P3485685190263729980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A056000 n + 15).toNat

end

end A320368.P3485685190263729980

/-! ## A320368.P9874770086079881126

`A320371(Δ[A264443(n)])`
-/

namespace A320368.P9874770086079881126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (f1 (n + 1) - f1 n).toNat

end

end A320368.P9874770086079881126

/-!
# A320369: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320369, there is no canonical definition to state claims against.
-/

/-! ## A320369.P3138114381768546080

`A320371(A374007(n+1))`
-/

namespace A320369.P3138114381768546080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A374007 (n + 1)).toNat

end

end A320369.P3138114381768546080

/-! ## A320369.P16399131481286367779

`A320371(A052905(n+3))`
-/

namespace A320369.P16399131481286367779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A052905 (n + 3)).toNat

end

end A320369.P16399131481286367779

/-! ## A320369.P5949511358033053389

`A320371(eq[5, A193592(n)])`
-/

namespace A320369.P5949511358033053389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320369.P5949511358033053389

/-! ## A320369.P6113166553872122595

`A320371(A056000(n+2)+5)`
-/

namespace A320369.P6113166553872122595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A056000 (n + 2) + 5).toNat

end

end A320369.P6113166553872122595

/-! ## A320369.P3240114310477431896

`A320371(eq[6, A200370(n+1)])`
-/

namespace A320369.P3240114310477431896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320369.P3240114310477431896

/-!
# A320370: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320370, there is no canonical definition to state claims against.
-/

/-! ## A320370.P7486079627303039630

`A320371(A374008(n+1))`
-/

namespace A320370.P7486079627303039630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A374008 (n + 1)).toNat

end

end A320370.P7486079627303039630

/-! ## A320370.P1571186231471816225

`A320371(A056119(n)+28)`
-/

namespace A320370.P1571186231471816225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A056119 n + 28).toNat

end

end A320370.P1571186231471816225

/-! ## A320370.P7265202757679576636

`A320371(eq[8, A131818(n+1)])`
-/

namespace A320370.P7265202757679576636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320370.P7265202757679576636

/-! ## A320370.P17585863947705133456

`A320371(eq[6, A193592(n)])`
-/

namespace A320370.P17585863947705133456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320370.P17585863947705133456

/-! ## A320370.P15037272804316959388

`A320371(A052905(n+4)-1)`
-/

namespace A320370.P15037272804316959388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320371 (A052905 (n + 4) - 1).toNat

end

end A320370.P15037272804316959388

/-!
# A320371: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320371, there is no canonical definition to state claims against.
-/

/-! ## A320371.P16249341519093632474

`A317565(n+1)-A309785(A174545(n))`
-/

namespace A320371.P16249341519093632474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (n + 1) - A309785 (A174545 n).toNat

end

end A320371.P16249341519093632474

/-! ## A320371.P12036844100724417469

`A317565(n+1)-A284976(A001263(n+1))`
-/

namespace A320371.P12036844100724417469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (n + 1) - A284976 (A001263 (n + 1)).toNat

end

end A320371.P12036844100724417469

/-! ## A320371.P7090917344844851259

`A317565(n+1)-A309785(A124976(n+1))`
-/

namespace A320371.P7090917344844851259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (n + 1) - A309785 (A124976 (n + 1)).toNat

end

end A320371.P7090917344844851259

/-! ## A320371.P4514462997530900538

`A316815(n+1)+A064559(A300182(n+1))²`
-/

namespace A320371.P4514462997530900538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316815 (n + 1) + A064559 (A300182 (n + 1)).toNat ^ 2

end

end A320371.P4514462997530900538

/-! ## A320371.P14532580074677241086

`A317565(n+1)-A285005(A001263(n+1)+1)`
-/

namespace A320371.P14532580074677241086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (n + 1) - A285005 (A001263 (n + 1) + 1).toNat

end

end A320371.P14532580074677241086

/-!
# A320372: Number of parts in all partitions of n with largest multiplicity two.

The programs for A320372, there is no canonical definition to state claims against.
-/

/-! ## A320372.P744942655736040424

`A185350(n+2)-A015723(n+2)`
-/

namespace A320372.P744942655736040424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185350 (n + 2) - A015723 (n + 2)

end

end A320372.P744942655736040424

/-! ## A320372.P12864848093477249547

`A213177(∑[n+2]+3)`
-/

namespace A320372.P12864848093477249547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A320372.P12864848093477249547

/-! ## A320372.P16990460191044366028

`or(char[2], A213177(A000096(n+1)+3))`
-/

namespace A320372.P16990460191044366028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A213177 (A000096 (n + 1) + 3).toNat)

end

end A320372.P16990460191044366028

/-! ## A320372.P10311131883592837227

`A213177(A152948(n+4))%A015877(n+1)`
-/

namespace A320372.P10311131883592837227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213177 (A152948 (n + 4)).toNat) (A015877 (n + 1))

end

end A320372.P10311131883592837227

/-! ## A320372.P8142149274210218048

`lcm(A033999(n), A213177(A000096(n+1)+3))`
-/

namespace A320372.P8142149274210218048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A213177 (A000096 (n + 1) + 3).toNat)

end

end A320372.P8142149274210218048

/-! ## A320372.P1898647069690542451

`A213177(A000096(n+1)+3)+A000007(n+1)`
-/

namespace A320372.P1898647069690542451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000096 (n + 1) + 3).toNat + A000007 (n + 1)

end

end A320372.P1898647069690542451

/-! ## A320372.P3821888528499290993

`A213177(A000096(n+1)+3)%A000041(n+4)`
-/

namespace A320372.P3821888528499290993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213177 (A000096 (n + 1) + 3).toNat) (A000041 (n + 4))

end

end A320372.P3821888528499290993

/-! ## A320372.P16577780449090527300

`A007913((n+1)²)*A213177(A000096(n+1)+3)`
-/

namespace A320372.P16577780449090527300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1) ^ 2) * A213177 (A000096 (n + 1) + 3).toNat

end

end A320372.P16577780449090527300

/-! ## A320372.P16681986353968909528

`A000041(and(1, -n))*A213177(A000096(n+1)+3)`
-/

namespace A320372.P16681986353968909528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A213177 (A000096 (n + 1) + 3).toNat

end

end A320372.P16681986353968909528

/-! ## A320372.P12554447054625985398

`A007318(C(2, n)!)*A213177(A000096(n+1)+3)`
-/

namespace A320372.P12554447054625985398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (Nat.choose 2 n)) * A213177 (A000096 (n + 1) + 3).toNat

end

end A320372.P12554447054625985398

/-! ## A320372.P2187541296100771789

`A260160(4*(n+1))+A213177(A000096(n+1)+3)`
-/

namespace A320372.P2187541296100771789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260160 (4 * (n + 1)) + A213177 (A000096 (n + 1) + 3).toNat

end

end A320372.P2187541296100771789

/-! ## A320372.P5104476127777565658

`A014963(6*(n+1))*A213177(A000096(n+1)+3)`
-/

namespace A320372.P5104476127777565658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A213177 (A000096 (n + 1) + 3).toNat

end

end A320372.P5104476127777565658

/-! ## A320372.P15991062441180252775

`A007318(C(2, 2*n))*A213177(A000096(n+1)+3)`
-/

namespace A320372.P15991062441180252775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (2 * n)) * A213177 (A000096 (n + 1) + 3).toNat

end

end A320372.P15991062441180252775

/-! ## A320372.P11201436993781296075

`A008683(3*A000040(n+1))*A213177(A000096(n+1)+3)`
-/

namespace A320372.P11201436993781296075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (3 * A000040 (n + 1)).toNat * A213177 (A000096 (n + 1) + 3).toNat

end

end A320372.P11201436993781296075

/-! ## A320372.P85460238936206922

`A213177(A000096(n+1)+3)+A097331(A269360(n+1))`
-/

namespace A320372.P85460238936206922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000096 (n + 1) + 3).toNat + A097331 (A269360 (n + 1)).toNat

end

end A320372.P85460238936206922

/-!
# A320373: Number of parts in all partitions of n with largest multiplicity three.

The programs for A320373, there is no canonical definition to state claims against.
-/

/-! ## A320373.P17061508220384127606

`A117148(n+3)-A185350(n+3)`
-/

namespace A320373.P17061508220384127606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117148 (n + 3) - A185350 (n + 3)

end

end A320373.P17061508220384127606

/-! ## A320373.P7949502117517734940

`A213177(∑[n+3]+6)`
-/

namespace A320373.P7949502117517734940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A320373.P7949502117517734940

/-! ## A320373.P1826459312509866655

`or(char[3], A213177(A167614(n+2)))`
-/

namespace A320373.P1826459312509866655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A213177 (A167614 (n + 2)).toNat)

end

end A320373.P1826459312509866655

/-! ## A320373.P3726101959793226736

`A213177(A167614(n+2))%A067981(n)`
-/

namespace A320373.P3726101959793226736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213177 (A167614 (n + 2)).toNat) (A067981 n)

end

end A320373.P3726101959793226736

/-! ## A320373.P8951642845934712429

`A213177(A167614(n+2))+A000007(n+1)`
-/

namespace A320373.P8951642845934712429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167614 (n + 2)).toNat + A000007 (n + 1)

end

end A320373.P8951642845934712429

/-! ## A320373.P1958410882943454684

`A213177(A167614(n+2))+A000038(n+1)`
-/

namespace A320373.P1958410882943454684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167614 (n + 2)).toNat + A000038 (n + 1)

end

end A320373.P1958410882943454684

/-! ## A320373.P11553123560285375578

`A213177(A167614(n+2))+and(1, A002378(n))`
-/

namespace A320373.P11553123560285375578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167614 (n + 2)).toNat + Int.land 1 (A002378 n)

end

end A320373.P11553123560285375578

/-! ## A320373.P5409542741006737346

`A000108(C(2, n))*A213177(A167614(n+2))`
-/

namespace A320373.P5409542741006737346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A213177 (A167614 (n + 2)).toNat

end

end A320373.P5409542741006737346

/-! ## A320373.P11375569695864252170

`A007318(C(2, n))*A213177(A167614(n+2))`
-/

namespace A320373.P11375569695864252170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A213177 (A167614 (n + 2)).toNat

end

end A320373.P11375569695864252170

/-! ## A320373.P7331380262798264515

`A000041(and(1, -n))*A213177(A167614(n+2))`
-/

namespace A320373.P7331380262798264515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A213177 (A167614 (n + 2)).toNat

end

end A320373.P7331380262798264515

/-! ## A320373.P14626409050334933436

`A000010(C(2, n)!)*A213177(A167614(n+2))`
-/

namespace A320373.P14626409050334933436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A213177 (A167614 (n + 2)).toNat

end

end A320373.P14626409050334933436

/-! ## A320373.P17461702528328019608

`A007318(C(3, n))+A213177(A167614(n+2))-1`
-/

namespace A320373.P17461702528328019608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) + (A213177 (A167614 (n + 2)).toNat - 1)

end

end A320373.P17461702528328019608

/-! ## A320373.P13764575655157123673

`A000041(C(2, n+2))*A213177(A167614(n+2))`
-/

namespace A320373.P13764575655157123673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A213177 (A167614 (n + 2)).toNat

end

end A320373.P13764575655157123673

/-! ## A320373.P2713848033144669877

`A014963(C(n+2, 2))*A213177(A167614(n+2))`
-/

namespace A320373.P2713848033144669877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 2) 2) * A213177 (A167614 (n + 2)).toNat

end

end A320373.P2713848033144669877

/-! ## A320373.P13340798833107493903

`A007318(and(2, n-2))*A213177(A167614(n+2))`
-/

namespace A320373.P13340798833107493903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A213177 (A167614 (n + 2)).toNat

end

end A320373.P13340798833107493903

/-! ## A320373.P13517765926612179670

`A007318(val(n+1, 8))*A213177(A167614(n+2))`
-/

namespace A320373.P13517765926612179670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 8) * A213177 (A167614 (n + 2)).toNat

end

end A320373.P13517765926612179670

/-! ## A320373.P12347869891660453131

`A000032(gcd(n, n+1))*A213177(A167614(n+2))`
-/

namespace A320373.P12347869891660453131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.gcd n (n + 1)) * A213177 (A167614 (n + 2)).toNat

end

end A320373.P12347869891660453131

/-! ## A320373.P1510759514918590855

`A007318(ceil(n/(n+1)))*A213177(A167614(n+2))`
-/

namespace A320373.P1510759514918590855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A213177 (A167614 (n + 2)).toNat

end

end A320373.P1510759514918590855

/-! ## A320373.P14734861982281491210

`A213177(A167614(n+2))+A008683(4*(2*n+1))`
-/

namespace A320373.P14734861982281491210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167614 (n + 2)).toNat + A008683 (4 * (2 * n + 1))

end

end A320373.P14734861982281491210

/-!
# A320374: Number of parts in all partitions of n with largest multiplicity four.

The programs for A320374, there is no canonical definition to state claims against.
-/

/-! ## A320374.P6027777284303310506

`A320607(n+4)-A117148(n+4)`
-/

namespace A320374.P6027777284303310506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320607 (n + 4) - A117148 (n + 4)

end

end A320374.P6027777284303310506

/-! ## A320374.P13986999514775786118

`A213177(A155212(n)+12)`
-/

namespace A320374.P13986999514775786118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A155212 n + 12).toNat

end

end A320374.P13986999514775786118

/-! ## A320374.P9933843504694102888

`A213177(A056000(n)+14)`
-/

namespace A320374.P9933843504694102888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A056000 n + 14).toNat

end

end A320374.P9933843504694102888

/-! ## A320374.P15309877673415586236

`A213177(eq[4, A002262(n)])`
-/

namespace A320374.P15309877673415586236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320374.P15309877673415586236

/-! ## A320374.P18295457072964480163

`A213177(A167614(n+3)+1)`
-/

namespace A320374.P18295457072964480163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167614 (n + 3) + 1).toNat

end

end A320374.P18295457072964480163

/-! ## A320374.P6109922601680072298

`A213177(A167499(n+3)-1)`
-/

namespace A320374.P6109922601680072298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167499 (n + 3) - 1).toNat

end

end A320374.P6109922601680072298

/-! ## A320374.P4822369717037922761

`A213177(A000124(n+4)+3)`
-/

namespace A320374.P4822369717037922761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000124 (n + 4) + 3).toNat

end

end A320374.P4822369717037922761

/-! ## A320374.P17965831049699281948

`A213177(A000096(n+3)+5)`
-/

namespace A320374.P17965831049699281948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000096 (n + 3) + 5).toNat

end

end A320374.P17965831049699281948

/-! ## A320374.P7115574978137842543

`A213177(A000217(n+4)+4)`
-/

namespace A320374.P7115574978137842543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000217 (n + 4) + 4).toNat

end

end A320374.P7115574978137842543

/-! ## A320374.P3866823815458440515

`A213177(Δ[A026054(n+3)-n²])`
-/

namespace A320374.P3866823815458440515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (f1 (n + 1) - f1 n).toNat

end

end A320374.P3866823815458440515

/-!
# A320375: Number of parts in all partitions of n with largest multiplicity five.

The programs for A320375, there is no canonical definition to state claims against.
-/

/-! ## A320375.P14473099530243014742

`A320608(n+5)-A320607(n+5)`
-/

namespace A320375.P14473099530243014742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320608 (n + 5) - A320607 (n + 5)

end

end A320375.P14473099530243014742

/-! ## A320375.P7544462420595649954

`A213177(C(n+7, 2)-(n+1))`
-/

namespace A320375.P7544462420595649954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (Nat.choose (n + 7) 2 - (n + 1))

end

end A320375.P7544462420595649954

/-! ## A320375.P7262717963968436256

`A213177(A167499(n+4))`
-/

namespace A320375.P7262717963968436256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167499 (n + 4)).toNat

end

end A320375.P7262717963968436256

/-! ## A320375.P12286700272470440225

`A213177(A056115(n)+20)`
-/

namespace A320375.P12286700272470440225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A056115 n + 20).toNat

end

end A320375.P12286700272470440225

/-! ## A320375.P1709617676899963756

`A213177(A166136(n+4)-1)`
-/

namespace A320375.P1709617676899963756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A166136 (n + 4) - 1).toNat

end

end A320375.P1709617676899963756

/-! ## A320375.P3529825555670849923

`A213177(A167614(n+4)+2)`
-/

namespace A320375.P3529825555670849923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167614 (n + 4) + 2).toNat

end

end A320375.P3529825555670849923

/-! ## A320375.P14597773729157399080

`A213177(A000124(n+5)+4)`
-/

namespace A320375.P14597773729157399080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000124 (n + 5) + 4).toNat

end

end A320375.P14597773729157399080

/-! ## A320375.P4570556092803454045

`A213177(A000096(n+4)+6)`
-/

namespace A320375.P4570556092803454045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000096 (n + 4) + 6).toNat

end

end A320375.P4570556092803454045

/-! ## A320375.P13331610052453715749

`A213177(A000217(n+5)+5)`
-/

namespace A320375.P13331610052453715749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000217 (n + 5) + 5).toNat

end

end A320375.P13331610052453715749

/-! ## A320375.P8520415983126147173

`A213177(Δ[A023545(n+1)]+9)`
-/

namespace A320375.P8520415983126147173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (f1 (n + 1) - f1 n + 9).toNat

end

end A320375.P8520415983126147173

/-! ## A320375.P16263547395157246265

`A213177(Δ[A026054(n+4)]-2*(n+1))`
-/

namespace A320375.P16263547395157246265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (f1 (n + 1) - f1 n - (2 * (n + 1) : ℤ)).toNat

end

end A320375.P16263547395157246265

/-! ## A320375.P13974911141440399890

`A213177(A055998(n+1)+A004273(n+9))`
-/

namespace A320375.P13974911141440399890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A055998 (n + 1) + A004273 (n + 9)).toNat

end

end A320375.P13974911141440399890

/-!
# A320376: Number of parts in all partitions of n with largest multiplicity six.

The programs for A320376, there is no canonical definition to state claims against.
-/

/-! ## A320376.P15907147920082011352

`A320609(n+6)-A320608(n+6)`
-/

namespace A320376.P15907147920082011352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320609 (n + 6) - A320608 (n + 6)

end

end A320376.P15907147920082011352

/-! ## A320376.P1693022236709175338

`A213177(A166136(n+5))`
-/

namespace A320376.P1693022236709175338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A166136 (n + 5)).toNat

end

end A320376.P1693022236709175338

/-! ## A320376.P7083214695372432303

`A213177(eq[6, A002262(n)])`
-/

namespace A320376.P7083214695372432303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320376.P7083214695372432303

/-! ## A320376.P18280273985607369612

`A213177(A167487(n+5)-1)`
-/

namespace A320376.P18280273985607369612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167487 (n + 5) - 1).toNat

end

end A320376.P18280273985607369612

/-! ## A320376.P5121579803293019593

`A213177(A167614(n+5)+3)`
-/

namespace A320376.P5121579803293019593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167614 (n + 5) + 3).toNat

end

end A320376.P5121579803293019593

/-! ## A320376.P2947725412501545113

`A213177(A133263(n+6)+4)`
-/

namespace A320376.P2947725412501545113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A133263 (n + 6) + 4).toNat

end

end A320376.P2947725412501545113

/-! ## A320376.P9052346161995984367

`A213177(A000124(n+6)+5)`
-/

namespace A320376.P9052346161995984367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000124 (n + 6) + 5).toNat

end

end A320376.P9052346161995984367

/-! ## A320376.P2516038739712707542

`A213177(A000096(n+5)+7)`
-/

namespace A320376.P2516038739712707542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000096 (n + 5) + 7).toNat

end

end A320376.P2516038739712707542

/-! ## A320376.P4267224830781828823

`A213177(A000217(n+6)+6)`
-/

namespace A320376.P4267224830781828823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000217 (n + 6) + 6).toNat

end

end A320376.P4267224830781828823

/-! ## A320376.P1581187224538672187

`A213177(A155212(n+2)+14)`
-/

namespace A320376.P1581187224538672187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A155212 (n + 2) + 14).toNat

end

end A320376.P1581187224538672187

/-! ## A320376.P3035054758093139084

`A213177(eq[7, A002260(n+1)])`
-/

namespace A320376.P3035054758093139084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320376.P3035054758093139084

/-!
# A320377: Number of parts in all partitions of n with largest multiplicity seven.

The programs for A320377, there is no canonical definition to state claims against.
-/

/-! ## A320377.P7445516184769370267

`A320610(n+7)-A320609(n+7)`
-/

namespace A320377.P7445516184769370267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320610 (n + 7) - A320609 (n + 7)

end

end A320377.P7445516184769370267

/-! ## A320377.P16346870940189724644

`A213177(A167487(n+6))`
-/

namespace A320377.P16346870940189724644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167487 (n + 6)).toNat

end

end A320377.P16346870940189724644

/-! ## A320377.P8447385586953170388

`A213177(A167499(n+6)+2)`
-/

namespace A320377.P8447385586953170388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167499 (n + 6) + 2).toNat

end

end A320377.P8447385586953170388

/-! ## A320377.P9275358285593790331

`A213177(A000124(n+7)+6)`
-/

namespace A320377.P9275358285593790331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000124 (n + 7) + 6).toNat

end

end A320377.P9275358285593790331

/-! ## A320377.P8415236277810637353

`A213177(A000096(n+6)+8)`
-/

namespace A320377.P8415236277810637353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000096 (n + 6) + 8).toNat

end

end A320377.P8415236277810637353

/-! ## A320377.P4392010114338125085

`A213177(A000217(n+7)+7)`
-/

namespace A320377.P4392010114338125085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000217 (n + 7) + 7).toNat

end

end A320377.P4392010114338125085

/-! ## A320377.P6265182081881123729

`A213177(A055999(n+4)+13)`
-/

namespace A320377.P6265182081881123729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A055999 (n + 4) + 13).toNat

end

end A320377.P6265182081881123729

/-! ## A320377.P378125754741669077

`A213177(eq[8, A002260(n+1)])`
-/

namespace A320377.P378125754741669077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320377.P378125754741669077

/-!
# A320378: Number of parts in all partitions of n with largest multiplicity eight.

The programs for A320378, there is no canonical definition to state claims against.
-/

/-! ## A320378.P5428826466873851436

`A320611(n+8)-A320610(n+8)`
-/

namespace A320378.P5428826466873851436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320611 (n + 8) - A320610 (n + 8)

end

end A320378.P5428826466873851436

/-! ## A320378.P16704216037681523138

`A213177(A167499(n+7)+3)`
-/

namespace A320378.P16704216037681523138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167499 (n + 7) + 3).toNat

end

end A320378.P16704216037681523138

/-! ## A320378.P894075082826647561

`A213177(A133263(n+8)+6)`
-/

namespace A320378.P894075082826647561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A133263 (n + 8) + 6).toNat

end

end A320378.P894075082826647561

/-! ## A320378.P10267631319785657134

`A213177(A000124(n+8)+7)`
-/

namespace A320378.P10267631319785657134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000124 (n + 8) + 7).toNat

end

end A320378.P10267631319785657134

/-! ## A320378.P2763182286653428552

`A213177(A253145(n+7)+8)`
-/

namespace A320378.P2763182286653428552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A253145 (n + 7) + 8).toNat

end

end A320378.P2763182286653428552

/-! ## A320378.P7671682183252178422

`A213177(A000096(n+7)+9)`
-/

namespace A320378.P7671682183252178422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000096 (n + 7) + 9).toNat

end

end A320378.P7671682183252178422

/-! ## A320378.P12761123701334669233

`A213177(A155212(n+4)+16)`
-/

namespace A320378.P12761123701334669233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A155212 (n + 4) + 16).toNat

end

end A320378.P12761123701334669233

/-! ## A320378.P16347289484142708842

`A213177(A000217(n+9)-(n+1))`
-/

namespace A320378.P16347289484142708842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A320378.P16347289484142708842

/-!
# A320379: Number of parts in all partitions of n with largest multiplicity nine.

The programs for A320379, there is no canonical definition to state claims against.
-/

/-! ## A320379.P13849305063326184555

`A320612(n+9)-A320611(n+9)`
-/

namespace A320379.P13849305063326184555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320612 (n + 9) - A320611 (n + 9)

end

end A320379.P13849305063326184555

/-! ## A320379.P3647733714975803685

`A213177(∑[A020723(n)]+45)`
-/

namespace A320379.P3647733714975803685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (∑ j ∈ Finset.range (n + 1), f1 j + 45).toNat

end

end A320379.P3647733714975803685

/-! ## A320379.P6037062164314424881

`A213177(A167499(n+8)+4)`
-/

namespace A320379.P6037062164314424881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167499 (n + 8) + 4).toNat

end

end A320379.P6037062164314424881

/-! ## A320379.P6182787245506783903

`A213177(A000124(n+9)+8)`
-/

namespace A320379.P6182787245506783903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000124 (n + 9) + 8).toNat

end

end A320379.P6182787245506783903

/-! ## A320379.P11903016138962941739

`A213177(A000096(n+8)+10)`
-/

namespace A320379.P11903016138962941739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000096 (n + 8) + 10).toNat

end

end A320379.P11903016138962941739

/-!
# A320380: Number of parts in all partitions of n with largest multiplicity ten.

The programs for A320380, there is no canonical definition to state claims against.
-/

/-! ## A320380.P6011513363001142675

`A320613(n+10)-A320612(n+10)`
-/

namespace A320380.P6011513363001142675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320613 (n + 10) - A320612 (n + 10)

end

end A320380.P6011513363001142675

/-! ## A320380.P7136685049727352295

`A213177(eq[10, A002262(n)])`
-/

namespace A320380.P7136685049727352295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320380.P7136685049727352295

/-! ## A320380.P12187948912778309456

`A213177(A167499(n+9)+5)`
-/

namespace A320380.P12187948912778309456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A167499 (n + 9) + 5).toNat

end

end A320380.P12187948912778309456

/-! ## A320380.P2180506595811776464

`A213177(eq[11, A002260(n+1)])`
-/

namespace A320380.P2180506595811776464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320380.P2180506595811776464

/-! ## A320380.P125119882009520268

`A213177(A000217(n+11)-(n+1))`
-/

namespace A320380.P125119882009520268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A320380.P125119882009520268

/-!
# A320381: Number of parts in all partitions of 2n with largest multiplicity n.

The programs for A320381, there is no canonical definition to state claims against.
-/

/-! ## A320381.P10799062263465307384

`A213177(∑[4*n])`
-/

namespace A320381.P10799062263465307384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320381.P10799062263465307384

/-! ## A320381.P14212374862239315262

`record[A213177(A265225(n))]`
-/

namespace A320381.P14212374862239315262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320381.P14212374862239315262

/-! ## A320381.P16593624322203530711

`record[A213177(A226725(n+1))]`
-/

namespace A320381.P16593624322203530711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320381.P16593624322203530711

/-! ## A320381.P242067544867908660

`or(char[1], A213177(A046092(n)))`
-/

namespace A320381.P242067544867908660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A213177 (A046092 n).toNat)

end

end A320381.P242067544867908660

/-! ## A320381.P12637684602633351592

`record[A213177(n*A008619(n))]`
-/

namespace A320381.P12637684602633351592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320381.P12637684602633351592

/-! ## A320381.P9511460362936576130

`A213177(A046092(n))%∑[A000032(n)]`
-/

namespace A320381.P9511460362936576130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213177 (A046092 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320381.P9511460362936576130

/-! ## A320381.P15643875414573204738

`A007318(C(2, n))*A213177(A046092(n))`
-/

namespace A320381.P15643875414573204738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A213177 (A046092 n).toNat

end

end A320381.P15643875414573204738

/-! ## A320381.P16518472013225298667

`gcd(2, A000040(n+1))*A213177(A046092(n))`
-/

namespace A320381.P16518472013225298667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A213177 (A046092 n).toNat

end

end A320381.P16518472013225298667

/-! ## A320381.P16946536871634201481

`A014963(12*n+6)*A213177(A046092(n))`
-/

namespace A320381.P16946536871634201481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A213177 (A046092 n).toNat

end

end A320381.P16946536871634201481

/-! ## A320381.P3091029304895195819

`A000108(and(1, n-1))*A213177(A046092(n))`
-/

namespace A320381.P3091029304895195819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 ((n : ℤ) - 1)).toNat * A213177 (A046092 n).toNat

end

end A320381.P3091029304895195819

/-!
# A320382: Number of partitions of n into distinct parts such that the successive differences of consecutive parts are nonincreasing.

The programs for A320382, there is no canonical definition to state claims against.
-/

/-! ## A320382.P16375592005201385519

`A259200(n)-A025443(A097005(n))`
-/

namespace A320382.P16375592005201385519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259200 (n + 18) - A025443 (A097005 n).toNat

end

end A320382.P16375592005201385519

/-! ## A320382.P6235427745918688992

`A259200(n)-A096904(A096937(n+1))`
-/

namespace A320382.P6235427745918688992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259200 (n + 18) - A096904 (A096937 (n + 1)).toNat

end

end A320382.P6235427745918688992

/-! ## A320382.P333627565756867690

`A341719(n+18)-A341951(n+17)-A025443(A097005(n))`
-/

namespace A320382.P333627565756867690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341719 (n + 18) - A341951 (n + 17) - A025443 (A097005 n).toNat

end

end A320382.P333627565756867690

/-!
# A320383: Multiplicative order of 3/2 modulo n-th prime.

The programs for A320383, there is no canonical definition to state claims against.
-/

/-! ## A320383.P4982897534788503144

`A006093(n+3)/A170820(n+3)`
-/

namespace A320383.P4982897534788503144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 3) : ℚ) / (A170820 (n + 3) : ℚ)

end

end A320383.P4982897534788503144

/-! ## A320383.P8455727002643120471

`A001917(n+3)*A014664(n+3)/A170820(n+3)`
-/

namespace A320383.P8455727002643120471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001917 (n + 3) * A014664 (n + 3) : ℚ) / (A170820 (n + 3) : ℚ)

end

end A320383.P8455727002643120471

/-! ## A320383.P4317247198062089430

`A000010(A045344(n+2))/A170820(n+3)`
-/

namespace A320383.P4317247198062089430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A045344 (n + 2)).toNat : ℚ) / (A170820 (n + 3) : ℚ)

end

end A320383.P4317247198062089430

/-! ## A320383.P7593957114935614810

`A000010(A065091(n+2))/A170820(n+3)`
-/

namespace A320383.P7593957114935614810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A065091 (n + 2)).toNat : ℚ) / (A170820 (n + 3) : ℚ)

end

end A320383.P7593957114935614810

/-! ## A320383.P18237097805864320270

`A000010(A008578(n+4))/A170820(n+3)`
-/

namespace A320383.P18237097805864320270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A008578 (n + 4)).toNat : ℚ) / (A170820 (n + 3) : ℚ)

end

end A320383.P18237097805864320270

/-!
# A320384: Primes p such that 3/2 is a primitive root modulo p.

The programs for A320384, there is no canonical definition to state claims against.
-/

/-! ## A320384.P18417122325755427843

`record[A320383(n+4)+1]`
-/

namespace A320384.P18417122325755427843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320383 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320384.P18417122325755427843

/-! ## A320384.P9012975527741447478

`A004442(record[A320383(n+4)])`
-/

namespace A320384.P9012975527741447478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320383 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320384.P9012975527741447478

/-! ## A320384.P7166647675071609209

`A007918(record[A320383(n+4)])`
-/

namespace A320384.P7166647675071609209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320383 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320384.P7166647675071609209

/-! ## A320384.P17049524142971161993

`A020725(record[A320383(n+4)])`
-/

namespace A320384.P17049524142971161993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320383 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320384.P17049524142971161993

/-! ## A320384.P14853777860939073262

`A034694(record[A320383(n+4)])`
-/

namespace A320384.P14853777860939073262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320383 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320384.P14853777860939073262

/-! ## A320384.P8965903014486750925

`A065190(record[A320383(n+4)])`
-/

namespace A320384.P8965903014486750925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320383 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320384.P8965903014486750925

/-! ## A320384.P13288974438240306879

`A076986(record[A320383(n+4)])`
-/

namespace A320384.P13288974438240306879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320383 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076986 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320384.P13288974438240306879

/-! ## A320384.P4049765277514266504

`A079114(record[A320383(n+4)])`
-/

namespace A320384.P4049765277514266504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320383 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320384.P4049765277514266504

/-! ## A320384.P8160796127463134956

`A086507(record[A320383(n+4)])`
-/

namespace A320384.P8160796127463134956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320383 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320384.P8160796127463134956

/-! ## A320384.P1284539221806480202

`A000040(lt[A170820(n+3)-1, 1]+3)`
-/

namespace A320384.P1284539221806480202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170820 (n + 3) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3)

end

end A320384.P1284539221806480202

/-!
# A320385: Number of partitions of n into distinct parts such that the successive differences of consecutive parts are decreasing, and first difference < first part.

The programs for A320385, there is no canonical definition to state claims against.
-/

/-! ## A320385.P11136698643978118789

`A305499(lt[A099239(n+4), A303273(n)])`
-/

namespace A320385.P11136698643978118789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099239 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305499 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320385.P11136698643978118789

/-! ## A320385.P5214453999451829593

`ceil(A288418(n+1)/A077473(3*n+5))`
-/

namespace A320385.P5214453999451829593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A288418 (n + 1) : ℚ) / (A077473 (3 * n + 5) : ℚ)⌉

end

end A320385.P5214453999451829593

/-! ## A320385.P13471619389898988431

`A275806(lcm(A113232(n+1), A116697(n)))`
-/

namespace A320385.P13471619389898988431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (Int.lcm (A113232 (n + 1)) (A116697 n))

end

end A320385.P13471619389898988431

/-!
# A320387: Number of partitions of n into distinct parts such that the successive differences of consecutive parts are nonincreasing, and first difference <= first part.

The programs for A320387, there is no canonical definition to state claims against.
-/

/-! ## A320387.P12143754499574652261

`A304707(n)-A326499(A000068(n+1))`
-/

namespace A320387.P12143754499574652261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304707 n - A326499 ((A000068 (n + 1)).toNat + 50)

end

end A320387.P12143754499574652261

/-! ## A320387.P11401593251303557849

`A304707(n)-A326499(A084345(2*(n+2)))`
-/

namespace A320387.P11401593251303557849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304707 n - A326499 ((A084345 (2 * (n + 2))).toNat + 50)

end

end A320387.P11401593251303557849

/-! ## A320387.P6782676515032476251

`A304707(n)-A055641(A000602(n))`
-/

namespace A320387.P6782676515032476251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304707 n - A055641 (A000602 n).toNat

end

end A320387.P6782676515032476251

/-! ## A320387.P2518798707700062704

`A304707(n)-A316869(A097005(n))`
-/

namespace A320387.P2518798707700062704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304707 n - A316869 (A097005 n).toNat

end

end A320387.P2518798707700062704

/-! ## A320387.P5751033775673432090

`A214973(A107232(n))`
-/

namespace A320387.P5751033775673432090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214973 (A107232 n).toNat

end

end A320387.P5751033775673432090

/-!
# A320388: Number of partitions of n into distinct parts such that the successive differences of consecutive parts are decreasing.

The programs for A320388, there is no canonical definition to state claims against.
-/

/-! ## A320388.P9266186598823271504

`A325393(n)+A055641(∑[A154337(n)])`
-/

namespace A320388.P9266186598823271504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 n + A055641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320388.P9266186598823271504

/-! ## A320388.P4233084894128729406

`A325393(n)+A121373(A001567(n+1))`
-/

namespace A320388.P4233084894128729406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 n + A121373 (A001567 (n + 1)).toNat

end

end A320388.P4233084894128729406

/-! ## A320388.P13810592770379098311

`A325393(n)+A227189(A071148(3*(n+1)))`
-/

namespace A320388.P13810592770379098311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 n + A227189 (A071148 (3 * (n + 1))).toNat

end

end A320388.P13810592770379098311

/-! ## A320388.P13612903921320704210

`A358842(A135892(n))+A325393(n)`
-/

namespace A320388.P13612903921320704210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 (A135892 n).toNat + A325393 n

end

end A320388.P13612903921320704210

/-! ## A320388.P13852437702582087127

`A325393(n)+A058348(A259200(n+2))`
-/

namespace A320388.P13852437702582087127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 n + A058348 (A259200 (n + 2 + 18)).toNat

end

end A320388.P13852437702582087127

/-!
# A320389: Product_i prime(i)^e(i), where e are the nonzero exponents in the prime factorization of n, sorted in increasing order.

The programs for A320389, there is no canonical definition to state claims against.
-/

/-! ## A320389.P12369718597371687231

`A069799(A046523(n+1))`
-/

namespace A320389.P12369718597371687231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A046523 (n + 1)).toNat

end

end A320389.P12369718597371687231

/-! ## A320389.P11477377750675401866

`A085079(A071364(n+1))`
-/

namespace A320389.P11477377750675401866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A071364 (n + 1)).toNat

end

end A320389.P11477377750675401866

/-! ## A320389.P15058777903994921405

`A304660(A181819(n+1))`
-/

namespace A320389.P15058777903994921405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (A181819 (n + 1)).toNat

end

end A320389.P15058777903994921405

/-! ## A320389.P11810704598390940170

`A304660(∏{e}[n+1, A000040(#)])`
-/

namespace A320389.P11810704598390940170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A320389.P11810704598390940170

/-! ## A320389.P14949774301880376770

`A304660(∏{e}[n+1, A171028(#)])`
-/

namespace A320389.P14949774301880376770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (∏ p ∈ Nat.primeFactors (f1 n), A171028 (Nat.factorization (f1 n) p)).toNat

end

end A320389.P14949774301880376770

/-! ## A320389.P2724992582911550022

`A304660(∏{e}[n+1, A219697(#)])`
-/

namespace A320389.P2724992582911550022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (∏ p ∈ Nat.primeFactors (f1 n), A219697 (Nat.factorization (f1 n) p)).toNat

end

end A320389.P2724992582911550022

/-! ## A320389.P9444427350951943263

`A085079(A046523(2*n+1-n))`
-/

namespace A320389.P9444427350951943263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A046523 (2 * n + 1 - n)).toNat

end

end A320389.P9444427350951943263

/-! ## A320389.P14443052394263929996

`A137502(2*A046523(n+1)-A046523(n+1))`
-/

namespace A320389.P14443052394263929996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (2 * A046523 (n + 1) - A046523 (n + 1)).toNat

end

end A320389.P14443052394263929996

/-! ## A320389.P8029191778915252156

`A085079(A278231(A193231(n+1)))`
-/

namespace A320389.P8029191778915252156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A278231 (A193231 (n + 1)).toNat).toNat

end

end A320389.P8029191778915252156

/-! ## A320389.P10249550929795046179

`A137502(A359600(n+1))`
-/

namespace A320389.P10249550929795046179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A359600 (n + 1)).toNat

end

end A320389.P10249550929795046179

/-! ## A320389.P66276491571963687

`A085079(A085079(A046523(A003961(n+1))))`
-/

namespace A320389.P66276491571963687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A085079 (A046523 (A003961 (n + 1)).toNat).toNat).toNat

end

end A320389.P66276491571963687

/-! ## A320389.P4247155189187604740

`A071364(A069799(A089247(n+1)))`
-/

namespace A320389.P4247155189187604740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A069799 (A089247 (n + 1)).toNat).toNat

end

end A320389.P4247155189187604740

/-! ## A320389.P17672725587340020669

`A085079(A085079(A046523(A085079(n+1))))`
-/

namespace A320389.P17672725587340020669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A085079 (A046523 (A085079 (n + 1)).toNat).toNat).toNat

end

end A320389.P17672725587340020669

/-! ## A320389.P12723774656942732544

`A137502(A278525(A241916(A137502(n+1))))`
-/

namespace A320389.P12723774656942732544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A278525 (A241916 (A137502 (n + 1)).toNat).toNat).toNat

end

end A320389.P12723774656942732544

/-! ## A320389.P839491111969524544

`A137502(A046523(n+1)²)/A137502(A046523(n+1))`
-/

namespace A320389.P839491111969524544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137502 (A046523 (n + 1) ^ 2).toNat : ℚ) / (A137502 (A046523 (n + 1)).toNat : ℚ)

end

end A320389.P839491111969524544

/-! ## A320389.P14729542724596235577

`A069799(A278525(A241916(n+1)))`
-/

namespace A320389.P14729542724596235577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A278525 (A241916 (n + 1)).toNat).toNat

end

end A320389.P14729542724596235577

/-!
# A320390: Prime signature of n (sorted in decreasing order), concatenated.

The programs for A320390, there is no canonical definition to state claims against.
-/

/-! ## A320390.P3113517659082435362

`A004186(A037916(n+1))`
-/

namespace A320390.P3113517659082435362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A037916 (n + 1)).toNat

end

end A320390.P3113517659082435362

/-! ## A320390.P7481766360978670923

`A037916(A046523(n+1))`
-/

namespace A320390.P7481766360978670923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A046523 (n + 1)).toNat

end

end A320390.P7481766360978670923

/-! ## A320390.P7584593531325398174

`A037916(A089247(n+1))`
-/

namespace A320390.P7584593531325398174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A089247 (n + 1)).toNat

end

end A320390.P7584593531325398174

/-! ## A320390.P15719830946080937545

`A004086(A139393(n+1))`
-/

namespace A320390.P15719830946080937545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A139393 (n + 1)).toNat

end

end A320390.P15719830946080937545

/-! ## A320390.P15511795241734803486

`A054841(A320389(n+1))`
-/

namespace A320390.P15511795241734803486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A320389 (n + 1)).toNat

end

end A320390.P15511795241734803486

/-! ## A320390.P7978816026433404554

`A037916(A359600(n+1))`
-/

namespace A320390.P7978816026433404554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A359600 (n + 1)).toNat

end

end A320390.P7978816026433404554

/-! ## A320390.P6451923019346359574

`A037916(A278254(n+1))/2`
-/

namespace A320390.P6451923019346359574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037916 (A278254 (n + 1)).toNat : ℚ) / 2

end

end A320390.P6451923019346359574

/-! ## A320390.P6955327606442718485

`A004186(A139393(n+1)%∑[n+3])`
-/

namespace A320390.P6955327606442718485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (Int.tmod (A139393 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A320390.P6955327606442718485

/-! ## A320390.P1992221596579002798

`A037916(A025487(A101296(n+1)))`
-/

namespace A320390.P1992221596579002798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A025487 (A101296 (n + 1)).toNat).toNat

end

end A320390.P1992221596579002798

/-!
# A320391: Numbers k such that phi(k - 2) = phi(k) - 2.

The programs for A320391, there is no canonical definition to state claims against.
-/

/-! ## A320391.P12956663282734353230

`A001838(n+1)+2`
-/

namespace A320391.P12956663282734353230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1) + 2

end

end A320391.P12956663282734353230

/-! ## A320391.P7393720585003885299

`A056853(n+1)+1`
-/

namespace A320391.P7393720585003885299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1) + 1

end

end A320391.P7393720585003885299

/-! ## A320391.P233086595758272529

`∪[A001359(n+1), A056774(n+1)]+2`
-/

namespace A320391.P233086595758272529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A320391.P233086595758272529

/-! ## A320391.P6571480921524452096

`A009056(A001838(n+1))`
-/

namespace A320391.P6571480921524452096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A001838 (n + 1)).toNat

end

end A320391.P6571480921524452096

/-! ## A320391.P15257800751873364204

`A004482(A056853(n+1))`
-/

namespace A320391.P15257800751873364204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A056853 (n + 1)).toNat

end

end A320391.P15257800751873364204

/-! ## A320391.P4046248621433921537

`A175068(eq[A051953(n+3), A051953(n+1)]+1)+2`
-/

namespace A320391.P4046248621433921537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 2

end

end A320391.P4046248621433921537

/-! ## A320391.P5504661372735754511

`A000027(eq[A023022(n+2), A055684(n+4)]+2)+2`
-/

namespace A320391.P5504661372735754511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2) + 2

end

end A320391.P5504661372735754511

/-! ## A320391.P1828206097964344962

`2-A001478(eq[A023022(n+2), A055684(n+4)]+2)`
-/

namespace A320391.P1828206097964344962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001478 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A320391.P1828206097964344962

/-!
# A320393: First members of the Cunningham chains of the first kind whose length is a prime.

The programs for A320393, there is no canonical definition to state claims against.
-/

/-! ## A320393.P2812836118578034632

`eq[1, A032741(A032741(n)*A339579(n+1))]`
-/

namespace A320393.P2812836118578034632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n * A339579 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320393.P2812836118578034632

/-! ## A320393.P2611499579202626678

`eq[2, A286852(n*A339579(n+1))]`
-/

namespace A320393.P2611499579202626678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 ((n : ℤ) * A339579 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320393.P2611499579202626678

/-! ## A320393.P17728705162622790444

`A005384(A183301(n+1)%A109946(2*(n+1)))`
-/

namespace A320393.P17728705162622790444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (Int.tmod (A183301 (n + 1)) (A109946 (2 * (n + 1)))).toNat

end

end A320393.P17728705162622790444

/-! ## A320393.P12175674046419340586

`A005384(A183301(n+1))%A156307(A000041(n))`
-/

namespace A320393.P12175674046419340586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (A183301 (n + 1)).toNat) (A156307 (A000041 n).toNat)

end

end A320393.P12175674046419340586

/-! ## A320393.P16986177105452303190

`A005384(lt[A170956(n), A001498(n)])`
-/

namespace A320393.P16986177105452303190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320393.P16986177105452303190

/-!
# A320396: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320396, there is no canonical definition to state claims against.
-/

/-! ## A320396.P6127640352747361314

`A320402(∑[4*n]+1)`
-/

namespace A320396.P6127640352747361314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320396.P6127640352747361314

/-! ## A320396.P1697945588244083040

`A320402(A001844(n))+floor(n/10)`
-/

namespace A320396.P1697945588244083040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A001844 n).toNat + ⌊(n : ℚ) / 10⌋

end

end A320396.P1697945588244083040

/-! ## A320396.P14468838767715724914

`record[A003982(n)*A320402(n+1)]`
-/

namespace A320396.P14468838767715724914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A320402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320396.P14468838767715724914

/-! ## A320396.P812619030760715098

`A284558(n)*A320402(A001844(n))`
-/

namespace A320396.P812619030760715098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284558 n * A320402 (A001844 n).toNat

end

end A320396.P812619030760715098

/-! ## A320396.P349299712791463796

`A320402(A001844(n))^A178334(n)`
-/

namespace A320396.P349299712791463796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320402 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A320396.P349299712791463796

/-!
# A320397: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320397, there is no canonical definition to state claims against.
-/

/-! ## A320397.P180864635277510048

`A320402(∑[n+2]+4)`
-/

namespace A320397.P180864635277510048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A320397.P180864635277510048

/-! ## A320397.P10651028618020244867

`lcm((-1)^n, A320402(A167614(n+1)))`
-/

namespace A320397.P10651028618020244867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A320402 (A167614 (n + 1)).toNat)

end

end A320397.P10651028618020244867

/-! ## A320397.P13671651707505762257

`A280865(n)*A320402(A167614(n+1))`
-/

namespace A320397.P13671651707505762257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280865 n * A320402 (A167614 (n + 1)).toNat

end

end A320397.P13671651707505762257

/-! ## A320397.P8289841891776983740

`A320402(A167614(n+1))%A291387(n)`
-/

namespace A320397.P8289841891776983740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320402 (A167614 (n + 1)).toNat) (A291387 n)

end

end A320397.P8289841891776983740

/-! ## A320397.P13517624750076622428

`A320402(A167614(n+1))+A076142(n+1)`
-/

namespace A320397.P13517624750076622428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A167614 (n + 1)).toNat + A076142 (n + 1)

end

end A320397.P13517624750076622428

/-!
# A320398: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320398, there is no canonical definition to state claims against.
-/

/-! ## A320398.P6299511415985203837

`A320402(A374004(n+1))`
-/

namespace A320398.P6299511415985203837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A374004 (n + 1)).toNat

end

end A320398.P6299511415985203837

/-! ## A320398.P17602967916925286565

`A320402(A141214(n)+7)`
-/

namespace A320398.P17602967916925286565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A141214 n + 7).toNat

end

end A320398.P17602967916925286565

/-! ## A320398.P4037092269396481428

`A320402(A052905(n)+9)`
-/

namespace A320398.P4037092269396481428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A052905 n + 9).toNat

end

end A320398.P4037092269396481428

/-! ## A320398.P4197376265267140486

`A320402(A055999(n)+10)`
-/

namespace A320398.P4197376265267140486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A055999 n + 10).toNat

end

end A320398.P4197376265267140486

/-! ## A320398.P18313416013871084573

`A320402(A167614(n+2)+1)`
-/

namespace A320398.P18313416013871084573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A167614 (n + 2) + 1).toNat

end

end A320398.P18313416013871084573

/-!
# A320399: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320399, there is no canonical definition to state claims against.
-/

/-! ## A320399.P8333167790119675232

`A320402(A374005(n+1))`
-/

namespace A320399.P8333167790119675232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A374005 (n + 1)).toNat

end

end A320399.P8333167790119675232

/-! ## A320399.P10733333860970328304

`A320402(A046691(n+3))`
-/

namespace A320399.P10733333860970328304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A046691 (n + 3)).toNat

end

end A320399.P10733333860970328304

/-! ## A320399.P11353553382137244601

`A320402(eq[3, A152157(n)])`
-/

namespace A320399.P11353553382137244601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320399.P11353553382137244601

/-! ## A320399.P11966304708960873716

`A320402(eq[4, A193592(n)])`
-/

namespace A320399.P11966304708960873716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320399.P11966304708960873716

/-! ## A320399.P5282697952781191799

`A320402(Δ[A023545(n+1)])`
-/

namespace A320399.P5282697952781191799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (f1 (n + 1) - f1 n).toNat

end

end A320399.P5282697952781191799

