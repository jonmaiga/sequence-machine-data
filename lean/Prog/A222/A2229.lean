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
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A222900: Number of nX2 0..3 arrays with no more than floor(nX2/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222900, there is no canonical definition to state claims against.
-/

/-! ## A222900.P9584961764167950202

`A222372(2*(n+1))`
-/

namespace A222900.P9584961764167950202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222372 (2 * (n + 1))

end

end A222900.P9584961764167950202

/-! ## A222900.P14374114706947605801

`record[A222372(n+1)^and(1, n)]`
-/

namespace A222900.P14374114706947605801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222372 (n + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222900.P14374114706947605801

/-! ## A222900.P6707065134448639334

`record[A222372(A133265(n))]`
-/

namespace A222900.P6707065134448639334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222372 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222900.P6707065134448639334

/-! ## A222900.P1703369692227007973

`record[A222372(A029578(n+2))]`
-/

namespace A222900.P1703369692227007973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222372 (A029578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222900.P1703369692227007973

/-! ## A222900.P13556964289795468190

`record[A222372(n+1)/A040001(n)]`
-/

namespace A222900.P13556964289795468190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222372 (n + 1) : ℚ) / (A040001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222900.P13556964289795468190

/-! ## A222900.P3620337106133872685

`record[A222372(n+2)/A033999(n)]`
-/

namespace A222900.P3620337106133872685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222372 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222900.P3620337106133872685

/-! ## A222900.P2638783014137238921

`record[A222372(n+2)/A091090(n)]`
-/

namespace A222900.P2638783014137238921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222372 (n + 2) : ℚ) / (A091090 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222900.P2638783014137238921

/-! ## A222900.P13069990796619351697

`record[and(A033999(n), A222372(n+1))]`
-/

namespace A222900.P13069990796619351697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A222372 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222900.P13069990796619351697

/-!
# A222901: Number of nX3 0..3 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222901, there is no canonical definition to state claims against.
-/

/-! ## A222901.P11521343086545324137

`A222906(∑[n+3]+1)`
-/

namespace A222901.P11521343086545324137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222901.P11521343086545324137

/-! ## A222901.P13452276384395642497

`record[A222906(A198464(n+1))]`
-/

namespace A222901.P13452276384395642497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222901.P13452276384395642497

/-! ## A222901.P4663491103247471746

`or(1, A222906(A034856(n+2)))`
-/

namespace A222901.P4663491103247471746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A222906 (A034856 (n + 2)).toNat)

end

end A222901.P4663491103247471746

/-! ## A222901.P7478606666837104384

`record[gcd(A222906(n+1), A300184(n))]`
-/

namespace A222901.P7478606666837104384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222906 (n + 1)) (A300184 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222901.P7478606666837104384

/-! ## A222901.P6116876206980121016

`record[A222906(n+1)/A222864(n+4)]`
-/

namespace A222901.P6116876206980121016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222906 (n + 1) : ℚ) / (A222864 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222901.P6116876206980121016

/-!
# A222902: Number of nX4 0..3 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222902, there is no canonical definition to state claims against.
-/

/-! ## A222902.P7812512064236124496

`A222906(A141214(n+1))`
-/

namespace A222902.P7812512064236124496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A141214 (n + 1)).toNat

end

end A222902.P7812512064236124496

/-! ## A222902.P6314883565842683482

`A222906(A155212(n)+5)`
-/

namespace A222902.P6314883565842683482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A155212 n + 5).toNat

end

end A222902.P6314883565842683482

/-! ## A222902.P10130752515719526534

`A222906(A056000(n)+7)`
-/

namespace A222902.P10130752515719526534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A056000 n + 7).toNat

end

end A222902.P10130752515719526534

/-! ## A222902.P17393839035067628047

`A222906(eq[3, A193592(n)])`
-/

namespace A222902.P17393839035067628047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222902.P17393839035067628047

/-! ## A222902.P8718984988148653621

`A222906(eq[4, A140996(n)])`
-/

namespace A222902.P8718984988148653621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222902.P8718984988148653621

/-!
# A222903: Number of nX5 0..3 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222903, there is no canonical definition to state claims against.
-/

/-! ## A222903.P12108415790565502084

`A222906(Δ[A264443(n)])`
-/

namespace A222903.P12108415790565502084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (f1 (n + 1) - f1 n).toNat

end

end A222903.P12108415790565502084

/-! ## A222903.P14203527451914536267

`A222906(eq[4, A193592(n)])`
-/

namespace A222903.P14203527451914536267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222903.P14203527451914536267

/-! ## A222903.P9611255083534470262

`A222906(eq[8, A140996(n)])`
-/

namespace A222903.P9611255083534470262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222903.P9611255083534470262

/-! ## A222903.P6166745530570896784

`A222906(Δ[A023545(n+1)])`
-/

namespace A222903.P6166745530570896784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (f1 (n + 1) - f1 n).toNat

end

end A222903.P6166745530570896784

/-! ## A222903.P16731237098360596153

`A222906(A155212(n+1)+4)`
-/

namespace A222903.P16731237098360596153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A155212 (n + 1) + 4).toNat

end

end A222903.P16731237098360596153

/-!
# A222904: Number of nX6 0..3 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222904, there is no canonical definition to state claims against.
-/

/-! ## A222904.P2352726610488271452

`A222906(eq[3, A219347(n)])`
-/

namespace A222904.P2352726610488271452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222904.P2352726610488271452

/-! ## A222904.P10245009411453466232

`A222906(eq[5, A193592(n)])`
-/

namespace A222904.P10245009411453466232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222904.P10245009411453466232

/-! ## A222904.P7317101735422561396

`A222906(eq[8, A258709(n)])`
-/

namespace A222904.P7317101735422561396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222904.P7317101735422561396

/-! ## A222904.P13479162412163459760

`A222906(eq[6, A200370(n+1)])`
-/

namespace A222904.P13479162412163459760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222904.P13479162412163459760

/-! ## A222904.P8602975110353910167

`A222906(Δ[Δ[A006504(n+1)]])`
-/

namespace A222904.P8602975110353910167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (f1 (n + 1) - f1 n).toNat

end

end A222904.P8602975110353910167

/-!
# A222905: Number of nX7 0..3 arrays with no more than floor(nX7/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222905, there is no canonical definition to state claims against.
-/

/-! ## A222905.P5303551654308688499

`A222906(A055999(n+4))`
-/

namespace A222905.P5303551654308688499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A055999 (n + 4)).toNat

end

end A222905.P5303551654308688499

/-! ## A222905.P18321432718782631722

`A222906(eq[4, A219347(n)])`
-/

namespace A222905.P18321432718782631722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222905.P18321432718782631722

/-! ## A222905.P1723178351434856551

`A222906(eq[6, A193592(n)])`
-/

namespace A222905.P1723178351434856551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222905.P1723178351434856551

/-! ## A222905.P5682878427076158890

`A222906(Δ[A023551(n+2)])`
-/

namespace A222905.P5682878427076158890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (f1 (n + 1) - f1 n).toNat

end

end A222905.P5682878427076158890

/-! ## A222905.P52715618832902773

`A222906(eq[7, A200370(n+1)])`
-/

namespace A222905.P52715618832902773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222905.P52715618832902773

/-!
# A222906: T(n,k)=Number of nXk 0..3 arrays with no more than floor(nXk/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222906, there is no canonical definition to state claims against.
-/

/-! ## A222906.P671840323825080682

`or(dr(A324228(n+1)), A222986(n+1))`
-/

namespace A222906.P671840323825080682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A324228 (n + 1)) : ℤ) (A222986 (n + 1))

end

end A222906.P671840323825080682

/-! ## A222906.P2618549716389576701

`or(A087049(17*2^n-1), A222986(n+1))`
-/

namespace A222906.P2618549716389576701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087049 (17 * 2 ^ n - 1)) (A222986 (n + 1))

end

end A222906.P2618549716389576701

/-! ## A222906.P15464608856271172693

`A222986(n+1)+A025469(A001787(n))`
-/

namespace A222906.P15464608856271172693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (n + 1) + A025469 (A001787 n).toNat

end

end A222906.P15464608856271172693

/-! ## A222906.P15685557424096381829

`A222986(n+1)+A025469(A002523(n))`
-/

namespace A222906.P15685557424096381829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (n + 1) + A025469 (A002523 n).toNat

end

end A222906.P15685557424096381829

/-! ## A222906.P6319707185125084454

`A222986(n+1)+A112765(A001006(n))`
-/

namespace A222906.P6319707185125084454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (n + 1) + A112765 (A001006 n).toNat

end

end A222906.P6319707185125084454

/-!
# A222907: Number of 2 X n 0..3 arrays with no more than floor(2 X n/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222907, there is no canonical definition to state claims against.
-/

/-! ## A222907.P14570715582020993978

`A222906(∑[n+1]+2)`
-/

namespace A222907.P14570715582020993978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222907.P14570715582020993978

/-! ## A222907.P279648061678425086

`record[A222906(A025810(n)+2)]`
-/

namespace A222907.P279648061678425086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A025810 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222907.P279648061678425086

/-! ## A222907.P8482205068346724080

`record[char[A000096(n)]*A222906(n+3)]`
-/

namespace A222907.P8482205068346724080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222906 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222907.P8482205068346724080

/-! ## A222907.P4413137739113758285

`record[A222906(n+3)/A000369(n+1)]`
-/

namespace A222907.P4413137739113758285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222906 (n + 3) : ℚ) / (A000369 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222907.P4413137739113758285

/-! ## A222907.P16910186854289618797

`A014963(A056452(n))*A222906(A000096(n)+3)`
-/

namespace A222907.P16910186854289618797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A056452 n).toNat * A222906 (A000096 n + 3).toNat

end

end A222907.P16910186854289618797

/-!
# A222908: Number of 3Xn 0..3 arrays with no more than floor(3Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222908, there is no canonical definition to state claims against.
-/

/-! ## A222908.P584431770874270245

`A222906(∑[n+2]+4)`
-/

namespace A222908.P584431770874270245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222908.P584431770874270245

/-! ## A222908.P17935827151569165563

`or(A000007(n), A222906(A167614(n+1)))`
-/

namespace A222908.P17935827151569165563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222906 (A167614 (n + 1)).toNat)

end

end A222908.P17935827151569165563

/-! ## A222908.P11151107514114569507

`or(A016389(n), A222906(A167614(n+1)))`
-/

namespace A222908.P11151107514114569507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A222906 (A167614 (n + 1)).toNat)

end

end A222908.P11151107514114569507

/-! ## A222908.P14074121812401235486

`or(A108913(n), A222906(A167614(n+1)))`
-/

namespace A222908.P14074121812401235486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108913 n) (A222906 (A167614 (n + 1)).toNat)

end

end A222908.P14074121812401235486

/-! ## A222908.P13337162787124268387

`A222906(A167614(n+1))+A070090(n+1)`
-/

namespace A222908.P13337162787124268387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A167614 (n + 1)).toNat + A070090 (n + 1)

end

end A222908.P13337162787124268387

/-!
# A222909: Number of 4Xn 0..3 arrays with no more than floor(4Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222909, there is no canonical definition to state claims against.
-/

/-! ## A222909.P4846390461250829896

`A222906(A141214(n)+7)`
-/

namespace A222909.P4846390461250829896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A141214 n + 7).toNat

end

end A222909.P4846390461250829896

/-! ## A222909.P5841057474500637261

`A222906(A052905(n)+9)`
-/

namespace A222909.P5841057474500637261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A052905 n + 9).toNat

end

end A222909.P5841057474500637261

/-! ## A222909.P11027288262014741530

`A222906(A055999(n)+10)`
-/

namespace A222909.P11027288262014741530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A055999 n + 10).toNat

end

end A222909.P11027288262014741530

/-! ## A222909.P4538596908956996758

`A222906(eq[5, A066657(n)])`
-/

namespace A222909.P4538596908956996758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222909.P4538596908956996758

/-! ## A222909.P10058777637278821794

`A222906(A167614(n+2)+1)`
-/

namespace A222909.P10058777637278821794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A167614 (n + 2) + 1).toNat

end

end A222909.P10058777637278821794

/-!
# A222910: Number of 5Xn 0..3 arrays with no more than floor(5Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222910, there is no canonical definition to state claims against.
-/

/-! ## A222910.P16488707135098413668

`A222906(A155212(n)+13)`
-/

namespace A222910.P16488707135098413668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A155212 n + 13).toNat

end

end A222910.P16488707135098413668

/-! ## A222910.P9186750160051882011

`A222906(A056000(n)+15)`
-/

namespace A222910.P9186750160051882011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A056000 n + 15).toNat

end

end A222910.P9186750160051882011

/-! ## A222910.P12127423491807946144

`A222906(eq[7, A066657(n)])`
-/

namespace A222910.P12127423491807946144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222910.P12127423491807946144

/-! ## A222910.P12633531535754426785

`A222906(A052905(n+1)+10)`
-/

namespace A222910.P12633531535754426785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A052905 (n + 1) + 10).toNat

end

end A222910.P12633531535754426785

/-! ## A222910.P4160350394098257824

`A222906(eq[6, A131818(n+1)])`
-/

namespace A222910.P4160350394098257824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222910.P4160350394098257824

/-!
# A222911: Number of 6Xn 0..3 arrays with no more than floor(6Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222911, there is no canonical definition to state claims against.
-/

/-! ## A222911.P10436674892170124809

`A222906(A166136(n+4))`
-/

namespace A222911.P10436674892170124809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A166136 (n + 4)).toNat

end

end A222911.P10436674892170124809

/-! ## A222911.P10626418746611362116

`A222906(A000096(n+4)+7)`
-/

namespace A222911.P10626418746611362116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A000096 (n + 4) + 7).toNat

end

end A222911.P10626418746611362116

/-! ## A222911.P11883469967592514423

`A222906(A056000(n+1)+16)`
-/

namespace A222911.P11883469967592514423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A056000 (n + 1) + 16).toNat

end

end A222911.P11883469967592514423

/-! ## A222911.P3719668419049131283

`A222906(eq[7, A131818(n+1)])`
-/

namespace A222911.P3719668419049131283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222911.P3719668419049131283

/-! ## A222911.P5338168875223799312

`A222906(A055999(n+4)-(2*n+1))`
-/

namespace A222911.P5338168875223799312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A222911.P5338168875223799312

/-!
# A222912: Number of 7Xn 0..3 arrays with no more than floor(7Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222912, there is no canonical definition to state claims against.
-/

/-! ## A222912.P6065870027910075658

`A222906(eq[11, A066657(n)])`
-/

namespace A222912.P6065870027910075658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222912.P6065870027910075658

/-! ## A222912.P9391425162648905350

`A222906(A168106(n)-n)`
-/

namespace A222912.P9391425162648905350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A168106 n - (n : ℤ)).toNat

end

end A222912.P9391425162648905350

/-! ## A222912.P2218340288865510712

`A222906(A000124(n+6)+6)`
-/

namespace A222912.P2218340288865510712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A000124 (n + 6) + 6).toNat

end

end A222912.P2218340288865510712

/-! ## A222912.P8761575190326649798

`A222906(eq[8, A131818(n+1)])`
-/

namespace A222912.P8761575190326649798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222912.P8761575190326649798

/-! ## A222912.P12998232642652621300

`A222906(eq[8, A141169(n)]+1)`
-/

namespace A222912.P12998232642652621300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A222912.P12998232642652621300

/-!
# A222913: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222913, there is no canonical definition to state claims against.
-/

/-! ## A222913.P1742193031194942657

`A222918(∑[n+1]+2)`
-/

namespace A222913.P1742193031194942657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222913.P1742193031194942657

/-! ## A222913.P10798907500037562802

`record[A222918(n+2)/A156916(n)]`
-/

namespace A222913.P10798907500037562802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222918 (n + 2) : ℚ) / (A156916 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222913.P10798907500037562802

/-! ## A222913.P15550065274752731231

`record[A222918(n+2)/A322620(n)]`
-/

namespace A222913.P15550065274752731231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222918 (n + 2) : ℚ) / (A322620 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222913.P15550065274752731231

/-! ## A222913.P1781362262411498786

`record[char[A000124(n)]*A222918(n+1)]`
-/

namespace A222913.P1781362262411498786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222913.P1781362262411498786

/-! ## A222913.P8719301273199067505

`record[A222918(n+2)/A222864(n+1)]`
-/

namespace A222913.P8719301273199067505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222918 (n + 2) : ℚ) / (A222864 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222913.P8719301273199067505

/-!
# A222914: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222914, there is no canonical definition to state claims against.
-/

/-! ## A222914.P4206415148529553561

`A222918(∑[n+2]+4)`
-/

namespace A222914.P4206415148529553561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222914.P4206415148529553561

/-! ## A222914.P17431126549809263824

`and(-1, A222918(A167614(n+1)))`
-/

namespace A222914.P17431126549809263824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222918 (A167614 (n + 1)).toNat)

end

end A222914.P17431126549809263824

/-! ## A222914.P13753684418297680256

`record[A010054(n)*A222918(n+3)]`
-/

namespace A222914.P13753684418297680256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222918 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222914.P13753684418297680256

/-! ## A222914.P280019428326729478

`record[char[A000124(n+1)]*A222918(n+2)]`
-/

namespace A222914.P280019428326729478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222918 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222914.P280019428326729478

/-! ## A222914.P14857278017584903042

`A222918(A167614(n+1))+A011731(n)`
-/

namespace A222914.P14857278017584903042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (A167614 (n + 1)).toNat + A011731 n

end

end A222914.P14857278017584903042

/-!
# A222915: Number of n X 4 0..2 arrays with exactly floor(n X 4/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222915, there is no canonical definition to state claims against.
-/

/-! ## A222915.P11844492699575913727

`A222918(∑[n+3]+7)`
-/

namespace A222915.P11844492699575913727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222915.P11844492699575913727

/-!
# A222916: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222916, there is no canonical definition to state claims against.
-/

/-! ## A222916.P16464423114354667138

`A222918(A374005(n+1))`
-/

namespace A222916.P16464423114354667138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (A374005 (n + 1)).toNat

end

end A222916.P16464423114354667138

/-! ## A222916.P3170539599950080445

`A222918(A167499(n+3))`
-/

namespace A222916.P3170539599950080445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (A167499 (n + 3)).toNat

end

end A222916.P3170539599950080445

/-! ## A222916.P1986503995761606248

`A222918(A155212(n)+13)`
-/

namespace A222916.P1986503995761606248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (A155212 n + 13).toNat

end

end A222916.P1986503995761606248

/-! ## A222916.P7133457623356291953

`A222918(A056000(n)+15)`
-/

namespace A222916.P7133457623356291953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (A056000 n + 15).toNat

end

end A222916.P7133457623356291953

/-! ## A222916.P4479969002785223231

`A222918(eq[7, A066657(n)])`
-/

namespace A222916.P4479969002785223231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222916.P4479969002785223231

/-!
# A222917: Number of nX6 0..2 arrays with exactly floor(nX6/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222917, there is no canonical definition to state claims against.
-/

/-! ## A222917.P6009086909661413452

`A222918(C(n+7, 2)-n)`
-/

namespace A222917.P6009086909661413452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (Nat.choose (n + 7) 2 - n)

end

end A222917.P6009086909661413452

/-! ## A222917.P789948990279527777

`A222918(A374007(n+1))`
-/

namespace A222917.P789948990279527777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (A374007 (n + 1)).toNat

end

end A222917.P789948990279527777

/-! ## A222917.P2888092580771976990

`A222918(A166136(n+4))`
-/

namespace A222917.P2888092580771976990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (A166136 (n + 4)).toNat

end

end A222917.P2888092580771976990

/-! ## A222917.P15442437348202003926

`A222918(A056115(n)+21)`
-/

namespace A222917.P15442437348202003926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (A056115 n + 21).toNat

end

end A222917.P15442437348202003926

/-!
# A222919: Number of n X 1 0..4 arrays with no three equal values in a row horizontally or vertically, and new values 0..4 introduced in row major order.

The programs for A222919, there is no canonical definition to state claims against.
-/

/-! ## A222919.P193450867573608791

`A222924(∑[n]+1)`
-/

namespace A222919.P193450867573608791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222924 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222919.P193450867573608791

/-! ## A222919.P2373252181196114469

`record[gcd(A002262(n), A222924(n+1))]`
-/

namespace A222919.P2373252181196114469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A222924 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222919.P2373252181196114469

/-! ## A222919.P18277046930039454341

`record[lcm(A106459(n), A222924(n+1))]`
-/

namespace A222919.P18277046930039454341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106459 n) (A222924 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222919.P18277046930039454341

/-! ## A222919.P13893804794273028094

`record[A185917(n+1)*A222924(n+1)]`
-/

namespace A222919.P13893804794273028094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (n + 1) * A222924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222919.P13893804794273028094

/-! ## A222919.P17090543358647819992

`gcd(A000038(n), A222924(A000124(n)))`
-/

namespace A222919.P17090543358647819992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222924 (A000124 n).toNat)

end

end A222919.P17090543358647819992

/-!
# A222920: Number of nX2 0..4 arrays with no three equal values in a row horizontally or vertically, and new values 0..4 introduced in row major order.

The programs for A222920, there is no canonical definition to state claims against.
-/

/-! ## A222920.P6622676730134763479

`A222924(∑[n+1]+2)`
-/

namespace A222920.P6622676730134763479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222924 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222920.P6622676730134763479

/-! ## A222920.P11950410611148846659

`record[A023531(n)*A222924(n+3)]`
-/

namespace A222920.P11950410611148846659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A222924 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222920.P11950410611148846659

/-! ## A222920.P7267854340946656194

`record[gcd(A002262(n), A222924(n+2))]`
-/

namespace A222920.P7267854340946656194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A222924 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222920.P7267854340946656194

/-! ## A222920.P3005147059676521201

`record[lcm(A106459(n), A222924(n+2))]`
-/

namespace A222920.P3005147059676521201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106459 n) (A222924 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222920.P3005147059676521201

/-!
# A222921: Number of nX3 0..4 arrays with no three equal values in a row horizontally or vertically, and new values 0..4 introduced in row major order.

The programs for A222921, there is no canonical definition to state claims against.
-/

/-! ## A222921.P3480028189111130679

`A222924(∑[n+2]+4)`
-/

namespace A222921.P3480028189111130679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222924 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222921.P3480028189111130679

/-! ## A222921.P14232341993865058033

`A222924(A167614(n+1))+A059995(n)`
-/

namespace A222921.P14232341993865058033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222924 (A167614 (n + 1)).toNat + A059995 n

end

end A222921.P14232341993865058033

/-! ## A222921.P14924042088910632080

`A222924(A167614(n+1))%A290009(n)`
-/

namespace A222921.P14924042088910632080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222924 (A167614 (n + 1)).toNat) (A290009 n)

end

end A222921.P14924042088910632080

/-! ## A222921.P900549060511572674

`or(A006926(n), A222924(A167614(n+1)))`
-/

namespace A222921.P900549060511572674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006926 n) (A222924 (A167614 (n + 1)).toNat)

end

end A222921.P900549060511572674

/-! ## A222921.P12560954046092542720

`A222924(A167614(n+1))+A004216(n+1)`
-/

namespace A222921.P12560954046092542720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222924 (A167614 (n + 1)).toNat + A004216 (n + 1)

end

end A222921.P12560954046092542720

/-!
# A222922: Number of nX4 0..4 arrays with no three equal values in a row horizontally or vertically, and new values 0..4 introduced in row major order.

The programs for A222922, there is no canonical definition to state claims against.
-/

/-! ## A222922.P18346040111697419364

`A222924(A052905(n)+9)`
-/

namespace A222922.P18346040111697419364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222924 (A052905 n + 9).toNat

end

end A222922.P18346040111697419364

/-! ## A222922.P7107171240633716333

`A222924(A167614(n+2)+1)`
-/

namespace A222922.P7107171240633716333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222924 (A167614 (n + 2) + 1).toNat

end

end A222922.P7107171240633716333

/-!
# A222923: Number of nX5 0..4 arrays with no three equal values in a row horizontally or vertically, and new values 0..4 introduced in row major order.

The programs for A222923, there is no canonical definition to state claims against.
-/

/-! ## A222923.P16151503038398036450

`A222924(A374005(n+1))`
-/

namespace A222923.P16151503038398036450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222924 (A374005 (n + 1)).toNat

end

end A222923.P16151503038398036450

/-! ## A222923.P390668328094056837

`A222924(eq[6, A131818(n+1)])`
-/

namespace A222923.P390668328094056837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222923.P390668328094056837

/-!
# A222924: T(n,k)=Number of nXk 0..4 arrays with no three equal values in a row horizontally or vertically, and new values 0..4 introduced in row major order.

The programs for A222924, there is no canonical definition to state claims against.
-/

/-! ## A222924.P17134110793515078496

`A225783((n+3)²)+A205161(n+1)`
-/

namespace A222924.P17134110793515078496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225783 ((n + 3) ^ 2) + A205161 (n + 1)

end

end A222924.P17134110793515078496

/-! ## A222924.P11382184597161906857

`A241119(n+1)-A037860(A206981(n+1))`
-/

namespace A222924.P11382184597161906857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (n + 1) - A037860 (A206981 (n + 1)).toNat

end

end A222924.P11382184597161906857

/-!
# A222925: Number of (n+1)X2 0..3 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222925, there is no canonical definition to state claims against.
-/

/-! ## A222925.P891200412305647030

`A222926(n+1)/A223752(n+1)`
-/

namespace A222925.P891200412305647030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222926 (n + 1) : ℚ) / (A223752 (n + 1) : ℚ)

end

end A222925.P891200412305647030

/-! ## A222925.P15565852294716235946

`A222929(∑[n]+1)`
-/

namespace A222925.P15565852294716235946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222929 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222925.P15565852294716235946

/-! ## A222925.P15493142171880614481

`A223311(n+1)/A223310(n+1)`
-/

namespace A222925.P15493142171880614481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223311 (n + 1) : ℚ) / (A223310 (n + 1) : ℚ)

end

end A222925.P15493142171880614481

/-! ## A222925.P12140394843249107373

`A223311(n+1)/A223309(∑[n]+1)`
-/

namespace A222925.P12140394843249107373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223311 (n + 1) : ℚ) / (A223309 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A222925.P12140394843249107373

/-! ## A222925.P3521773419511759558

`A222926(n+1)/A223751(∑[n]+1)`
-/

namespace A222925.P3521773419511759558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222926 (n + 1) : ℚ) / (A223751 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A222925.P3521773419511759558

/-!
# A222926: Number of (n+1)X3 0..3 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222926, there is no canonical definition to state claims against.
-/

/-! ## A222926.P4384158873574333557

`A222925(n+1)*A223752(n+1)`
-/

namespace A222926.P4384158873574333557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222925 (n + 1) * A223752 (n + 1)

end

end A222926.P4384158873574333557

/-! ## A222926.P17935050977923015968

`A222925(n+1)/A223753(n+1)*A223754(n+1)`
-/

namespace A222926.P17935050977923015968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222925 (n + 1) : ℚ) / (A223753 (n + 1) : ℚ) * (A223754 (n + 1) : ℚ)

end

end A222926.P17935050977923015968

/-! ## A222926.P9595227505289835223

`A222925(n+1)*A223751(∑[n]+1)`
-/

namespace A222926.P9595227505289835223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222925 (n + 1) * A223751 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222926.P9595227505289835223

/-! ## A222926.P16927904414761450958

`A223751(A000124(n))*A222925(n+1)`
-/

namespace A222926.P16927904414761450958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223751 (A000124 n).toNat * A222925 (n + 1)

end

end A222926.P16927904414761450958

/-! ## A222926.P1996026902229726651

`record[A010054(n)*A223751(n+1)]*A222925(n+1)`
-/

namespace A222926.P1996026902229726651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A222925 (n + 1)

end

end A222926.P1996026902229726651

/-!
# A222927: Number of (n+1)X4 0..3 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222927, there is no canonical definition to state claims against.
-/

/-! ## A222927.P17580819253057294229

`A222929(∑[n+2]+4)`
-/

namespace A222927.P17580819253057294229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222929 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222927.P17580819253057294229

/-! ## A222927.P2749781593446847989

`A222929(A167614(n+1))+A011730(n)`
-/

namespace A222927.P2749781593446847989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222929 (A167614 (n + 1)).toNat + A011730 n

end

end A222927.P2749781593446847989

/-! ## A222927.P17297409021287685498

`A222929(A167614(n+1))+A011731(n)`
-/

namespace A222927.P17297409021287685498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222929 (A167614 (n + 1)).toNat + A011731 n

end

end A222927.P17297409021287685498

/-! ## A222927.P6373026246855906764

`A222929(A167614(n+1))+A011739(n)`
-/

namespace A222927.P6373026246855906764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222929 (A167614 (n + 1)).toNat + A011739 n

end

end A222927.P6373026246855906764

/-!
# A222928: Number of (n+1)X5 0..3 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222928, there is no canonical definition to state claims against.
-/

/-! ## A222928.P18176614802093255545

`A222929(A055999(n)+10)`
-/

namespace A222928.P18176614802093255545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222929 (A055999 n + 10).toNat

end

end A222928.P18176614802093255545

/-! ## A222928.P12900020054330058305

`A222929(A167614(n+2)+1)`
-/

namespace A222928.P12900020054330058305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222929 (A167614 (n + 2) + 1).toNat

end

end A222928.P12900020054330058305

/-!
# A222929: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222929, there is no canonical definition to state claims against.
-/

/-! ## A222929.P17404138000386050133

`A255295(ceil(2^(n-1)*∑[n+1])*A255295(n))`
-/

namespace A222929.P17404138000386050133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255295 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉ * A255295 n).toNat

end

end A222929.P17404138000386050133

/-!
# A222930: Number of n X n 0..3 arrays with successive rows and columns fitting to straight lines with strictly increasing slope, with a single point array taken as having zero slope.

The programs for A222930, there is no canonical definition to state claims against.
-/

/-! ## A222930.P11494914327871026124

`A222931((n+1)²+n²)`
-/

namespace A222930.P11494914327871026124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222931 ((n + 1) ^ 2 + n ^ 2)

end

end A222930.P11494914327871026124

/-!
# A222931: T(n,k)=Number of nXk 0..3 arrays with successive rows and columns fitting to straight lines with strictly increasing slope, with a single point array taken as having zero slope.

The programs for A222931, there is no canonical definition to state claims against.
-/

/-! ## A222931.P11296782338776613088

`A222953(n+1)/A095955(A092867(n+1))`
-/

namespace A222931.P11296782338776613088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222953 (n + 1) : ℚ) / (A095955 (A092867 (n + 1)).toNat : ℚ)

end

end A222931.P11296782338776613088

/-! ## A222931.P11126509922804935029

`A222953(n+1)/A096825(A248763(2*n+3))`
-/

namespace A222931.P11126509922804935029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222953 (n + 1) : ℚ) / (A096825 (A248763 (2 * n + 3)).toNat : ℚ)

end

end A222931.P11126509922804935029

/-! ## A222931.P15511579985256443243

`A222953(n+1)/A005811(A000142(n))`
-/

namespace A222931.P15511579985256443243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222953 (n + 1) : ℚ) / (A005811 (A000142 n).toNat : ℚ)

end

end A222931.P15511579985256443243

/-! ## A222931.P6923525479753069095

`A222953(n+1)/A096825(A026991(n))`
-/

namespace A222931.P6923525479753069095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222953 (n + 1) : ℚ) / (A096825 (A026991 n).toNat : ℚ)

end

end A222931.P6923525479753069095

/-!
# A222932: Sum of neighbor maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A222932, there is no canonical definition to state claims against.
-/

/-! ## A222932.P5468294539929268048

`A222935(∑[n+4]+3)`
-/

namespace A222932.P5468294539929268048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222932.P5468294539929268048

/-!
# A222933: Sum of neighbor maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A222933, there is no canonical definition to state claims against.
-/

/-! ## A222933.P11481888213573451906

`A222935(Δ[A264443(n)])`
-/

namespace A222933.P11481888213573451906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (f1 (n + 1) - f1 n).toNat

end

end A222933.P11481888213573451906

/-! ## A222933.P15447409304434449381

`A222935(A046691(n+3))`
-/

namespace A222933.P15447409304434449381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A046691 (n + 3)).toNat

end

end A222933.P15447409304434449381

/-! ## A222933.P1777018144468136952

`A222935(A056115(n)+11)`
-/

namespace A222933.P1777018144468136952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A056115 n + 11).toNat

end

end A222933.P1777018144468136952

/-!
# A222934: Sum of neighbor maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and antidiagonal neighbors in a random 0..3 nX6 array.

The programs for A222934, there is no canonical definition to state claims against.
-/

/-! ## A222934.P9607476657040008195

`A222935(A052905(n+3))`
-/

namespace A222934.P9607476657040008195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A052905 (n + 3)).toNat

end

end A222934.P9607476657040008195

/-! ## A222934.P10301177725233522158

`A222935(A056119(n)+16)`
-/

namespace A222934.P10301177725233522158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A056119 n + 16).toNat

end

end A222934.P10301177725233522158

/-!
# A222935: T(n,k)=Sum of neighbor maps: number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and antidiagonal neighbors in a random 0..3 nXk array.

The programs for A222935, there is no canonical definition to state claims against.
-/

/-! ## A222935.P15256062579991152823

`A350786(A222386(n+1))`
-/

namespace A222935.P15256062579991152823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A222386 (n + 1)).toNat

end

end A222935.P15256062579991152823

/-! ## A222935.P18105058406934581367

`A222386(lcm(n+1, A091491(n)))`
-/

namespace A222935.P18105058406934581367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (Int.lcm (n + 1 : ℤ) (A091491 n))

end

end A222935.P18105058406934581367

/-! ## A222935.P16471426511097159852

`A256974(A221072(n+1))+A222386(n+1)`
-/

namespace A222935.P16471426511097159852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A221072 (n + 1)).toNat + A222386 (n + 1)

end

end A222935.P16471426511097159852

/-! ## A222935.P3264888974358485494

`A304589(A034523(3*n+4))+A222386(n+1)`
-/

namespace A222935.P3264888974358485494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304589 (A034523 (3 * n + 4)).toNat + A222386 (n + 1)

end

end A222935.P3264888974358485494

/-!
# A222936: Sum of neighbor maps: number of 2Xn binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and antidiagonal neighbors in a random 0..3 2Xn array.

The programs for A222936, there is no canonical definition to state claims against.
-/

/-! ## A222936.P3520809977928569213

`A222935(∑[n+1]+2)`
-/

namespace A222936.P3520809977928569213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222936.P3520809977928569213

/-! ## A222936.P7485097415822723819

`record[root(A222935(n+3), A140303(n))]`
-/

namespace A222936.P7485097415822723819
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222935 (n + 3) : ℝ) ^ (1 / (A140303 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222936.P7485097415822723819

/-! ## A222936.P3292100169295582647

`record[gcd(A122287(n), A222935(n+3))]`
-/

namespace A222936.P3292100169295582647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122287 n) (A222935 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222936.P3292100169295582647

/-! ## A222936.P5382230909858375056

`record[A222935(n+3)/A221035(n+1)]`
-/

namespace A222936.P5382230909858375056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222935 (n + 3) : ℚ) / (A221035 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222936.P5382230909858375056

/-! ## A222936.P246244401392767213

`record[A222935(n+3)/A222969(n+1)]`
-/

namespace A222936.P246244401392767213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222935 (n + 3) : ℚ) / (A222969 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222936.P246244401392767213

/-!
# A222937: Sum of neighbor maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and antidiagonal neighbors in a random 0..3 3Xn array.

The programs for A222937, there is no canonical definition to state claims against.
-/

/-! ## A222937.P10708727411055069310

`A222935(∑[n+2]+4)`
-/

namespace A222937.P10708727411055069310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222937.P10708727411055069310

/-! ## A222937.P1740341823515121235

`lcm(2, A222935(A167614(n+1)))`
-/

namespace A222937.P1740341823515121235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222935 (A167614 (n + 1)).toNat)

end

end A222937.P1740341823515121235

/-! ## A222937.P8828159790790288777

`record[A222935(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A222937.P8828159790790288777
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222937.P8828159790790288777

/-! ## A222937.P16322578271990121596

`A222935(A167614(n+1))+A011731(n)`
-/

namespace A222937.P16322578271990121596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A167614 (n + 1)).toNat + A011731 n

end

end A222937.P16322578271990121596

/-! ## A222937.P12527154325138552300

`A222935(A167614(n+1))+A025439(n)`
-/

namespace A222937.P12527154325138552300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A167614 (n + 1)).toNat + A025439 n

end

end A222937.P12527154325138552300

/-!
# A222938: Sum of neighbor maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and antidiagonal neighbors in a random 0..3 4Xn array.

The programs for A222938, there is no canonical definition to state claims against.
-/

/-! ## A222938.P12205780763977367866

`A222935(A141214(n)+7)`
-/

namespace A222938.P12205780763977367866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A141214 n + 7).toNat

end

end A222938.P12205780763977367866

/-! ## A222938.P18421742671705466576

`A222935(A052905(n)+9)`
-/

namespace A222938.P18421742671705466576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A052905 n + 9).toNat

end

end A222938.P18421742671705466576

/-! ## A222938.P512731851008324910

`A222935(A055999(n)+10)`
-/

namespace A222938.P512731851008324910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A055999 n + 10).toNat

end

end A222938.P512731851008324910

/-! ## A222938.P11784543950495289854

`A222935(eq[5, A066657(n)])`
-/

namespace A222938.P11784543950495289854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222938.P11784543950495289854

/-! ## A222938.P7379360317856093948

`A222935(A167614(n+2)+1)`
-/

namespace A222938.P7379360317856093948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A167614 (n + 2) + 1).toNat

end

end A222938.P7379360317856093948

/-!
# A222939: Number of n X 1 0..4 arrays with no element equal to another at a city block distance of exactly two, and new values 0..4 introduced in row major order.

The programs for A222939, the canonical program `A222939.P2381887297888790042` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222939 has offset 1).

The definition of A222939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222939.P14930170664493334292

`∑[A087440(floor(n-atan(n)))]`
-/

namespace A222939.P14930170664493334292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087440 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222939.P14930170664493334292

namespace A222939

/-- `∑[A087440(floor(n-atan(n)))]` -/
def P14930170664493334292.Spec : Prop :=
  ∀ n, P14930170664493334292.a n = A222939 (n + 1)

end A222939

/-! ## A222939.P2381887297888790042

`A087440(n-2)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A222939

/-- `A087440(n-2)+a(n-1)` -/
def P2381887297888790042.Spec : Prop :=
  ∀ n, P2381887297888790042.a n = A222939 (n + 1)

theorem P2381887297888790042.correct : P2381887297888790042.Spec := by
  intro n
  simp only [A222939, Nat.add_sub_cancel]

end A222939

/-! ## A222939.P6983928475770428564

`∑[A087440(A289207(n))]`
-/

namespace A222939.P6983928475770428564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087440 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222939.P6983928475770428564

namespace A222939

/-- `∑[A087440(A289207(n))]` -/
def P6983928475770428564.Spec : Prop :=
  ∀ n, P6983928475770428564.a n = A222939 (n + 1)

end A222939

/-! ## A222939.P6567723396001692800

`∑[A087440(A004274(n+1)-(n+1))]`
-/

namespace A222939.P6567723396001692800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087440 (A004274 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222939.P6567723396001692800

namespace A222939

/-- `∑[A087440(A004274(n+1)-(n+1))]` -/
def P6567723396001692800.Spec : Prop :=
  ∀ n, P6567723396001692800.a n = A222939 (n + 1)

end A222939

/-! ## A222939.P7029292261008620476

`∑[A087440(A004280(n+1)-(n+1))]`
-/

namespace A222939.P7029292261008620476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087440 (A004280 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222939.P7029292261008620476

namespace A222939

/-- `∑[A087440(A004280(n+1)-(n+1))]` -/
def P7029292261008620476.Spec : Prop :=
  ∀ n, P7029292261008620476.a n = A222939 (n + 1)

end A222939

/-! ## A222939.P11598939342675315659

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=20`
-/

namespace A222939.P11598939342675315659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 7, 20] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A222939.P11598939342675315659

namespace A222939

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P11598939342675315659.Spec : Prop :=
  ∀ n, P11598939342675315659.a n = A222939 (n + 1)

end A222939

/-!
# A222940: Number of n X 2 0..4 arrays with no element equal to another at a city block distance of exactly two, and new values 0..4 introduced in row major order.

The programs for A222940, the canonical program `A222940.P4802757642696615580` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222940 has offset 1).

The definition of A222940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222940.P4802757642696615580

`10*a(n-1)-9*a(n-2)` with `a(0)=2, a(1)=7, a(2)=33, a(3)=273`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222940

/-- `10*a(n-1)-9*a(n-2)` -/
def P4802757642696615580.Spec : Prop :=
  ∀ n, P4802757642696615580.a n = A222940 (n + 1)

theorem P4802757642696615580.correct : P4802757642696615580.Spec := by
  intro n
  simp only [A222940, Nat.add_sub_cancel]

end A222940

/-! ## A222940.P4895868138368996257

`A222944(∑[n+1]+2)`
-/

namespace A222940.P4895868138368996257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222940.P4895868138368996257

namespace A222940

/-- `A222944(∑[n+1]+2)` -/
def P4895868138368996257.Spec : Prop :=
  ∀ n, P4895868138368996257.a n = A222940 (n + 1)

end A222940

/-! ## A222940.P9381927426977138356

`record[A222944(n+2)/A163626(n)]`
-/

namespace A222940.P9381927426977138356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222944 (n + 2) : ℚ) / (A163626 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222940.P9381927426977138356

namespace A222940

/-- `record[A222944(n+2)/A163626(n)]` -/
def P9381927426977138356.Spec : Prop :=
  ∀ n, P9381927426977138356.a n = (A222940 (n + 1) : ℚ)

end A222940

/-! ## A222940.P10536293811509479060

`record[gcd(A222944(n+2), A244124(n))]`
-/

namespace A222940.P10536293811509479060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222944 (n + 2)) (A244124 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222940.P10536293811509479060

namespace A222940

/-- `record[gcd(A222944(n+2), A244124(n))]` -/
def P10536293811509479060.Spec : Prop :=
  ∀ n, (P10536293811509479060.a n : ℤ) = A222940 (n + 1)

end A222940

/-! ## A222940.P15540024735988450057

`record[A222944(n+3)/A222969(n+1)]`
-/

namespace A222940.P15540024735988450057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222944 (n + 3) : ℚ) / (A222969 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222940.P15540024735988450057

namespace A222940

/-- `record[A222944(n+3)/A222969(n+1)]` -/
def P15540024735988450057.Spec : Prop :=
  ∀ n, P15540024735988450057.a n = (A222940 (n + 1) : ℚ)

end A222940

/-!
# A222941: Number of nX3 0..4 arrays with no element equal to another at a city block distance of exactly two, and new values 0..4 introduced in row major order.

The programs for A222941, there is no canonical definition to state claims against.
-/

/-! ## A222941.P6958943675328546129

`14*a(n-1)` with `a(0)=3, a(1)=33, a(2)=420`
-/

namespace A222941.P6958943675328546129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 33, 420] fun n a =>
  14 * a (n - 1)

end

end A222941.P6958943675328546129

/-! ## A222941.P10503349670413836312

`A222944(∑[n+2]+4)`
-/

namespace A222941.P10503349670413836312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222941.P10503349670413836312

/-! ## A222941.P5793409551052419816

`lcm(3, A222944(A167614(n+1)))`
-/

namespace A222941.P5793409551052419816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A222944 (A167614 (n + 1)).toNat)

end

end A222941.P5793409551052419816

/-! ## A222941.P6291813226313309432

`A222944(A167614(n+1))+A025469(n)`
-/

namespace A222941.P6291813226313309432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (A167614 (n + 1)).toNat + A025469 n

end

end A222941.P6291813226313309432

/-! ## A222941.P8355519034838491462

`A222944(A167614(n+1))+A055963(n)`
-/

namespace A222941.P8355519034838491462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (A167614 (n + 1)).toNat + A055963 n

end

end A222941.P8355519034838491462

/-!
# A222942: Number of n X 4 0..4 arrays with no element equal to another at a city block distance of exactly two, and new values 0..4 introduced in row major order.

The programs for A222942, there is no canonical definition to state claims against.
-/

/-! ## A222942.P621710567889943938

`A222944(A374004(n+1))`
-/

namespace A222942.P621710567889943938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (A374004 (n + 1)).toNat

end

end A222942.P621710567889943938

/-! ## A222942.P8114576801593964949

`A222944(A141214(n)+7)`
-/

namespace A222942.P8114576801593964949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (A141214 n + 7).toNat

end

end A222942.P8114576801593964949

/-! ## A222942.P6451029115065428795

`A222944(A052905(n)+9)`
-/

namespace A222942.P6451029115065428795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (A052905 n + 9).toNat

end

end A222942.P6451029115065428795

/-! ## A222942.P10210368476167167755

`A222944(A055999(n)+10)`
-/

namespace A222942.P10210368476167167755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (A055999 n + 10).toNat

end

end A222942.P10210368476167167755

/-! ## A222942.P7221858644410379042

`A222944(eq[5, A066657(n)])`
-/

namespace A222942.P7221858644410379042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222942.P7221858644410379042

/-!
# A222943: Number of nX5 0..4 arrays with no element equal to another at a city block distance of exactly two, and new values 0..4 introduced in row major order.

The programs for A222943, there is no canonical definition to state claims against.
-/

/-! ## A222943.P1173959688208557074

`A222944(A374005(n+1))`
-/

namespace A222943.P1173959688208557074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (A374005 (n + 1)).toNat

end

end A222943.P1173959688208557074

/-! ## A222943.P2905544593219305074

`A222944(A155212(n)+13)`
-/

namespace A222943.P2905544593219305074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (A155212 n + 13).toNat

end

end A222943.P2905544593219305074

/-! ## A222943.P5487862969541238464

`A222944(A056000(n)+15)`
-/

namespace A222943.P5487862969541238464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (A056000 n + 15).toNat

end

end A222943.P5487862969541238464

/-! ## A222943.P16865374143122219540

`A222944(eq[7, A066657(n)])`
-/

namespace A222943.P16865374143122219540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222943.P16865374143122219540

/-! ## A222943.P1489723078556672834

`A222944(A167614(n+3)+2)`
-/

namespace A222943.P1489723078556672834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (A167614 (n + 3) + 2).toNat

end

end A222943.P1489723078556672834

/-!
# A222944: T(n,k) = Number of n X k 0..4 arrays with no element equal to another at a city block distance of exactly two, and new values 0..4 introduced in row major order.

The programs for A222944, there is no canonical definition to state claims against.
-/

/-! ## A222944.P7525328088533660569

`A004026(∑[A256269(2*n)+2]-n)`
-/

namespace A222944.P7525328088533660569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256269 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004026 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A222944.P7525328088533660569

/-! ## A222944.P3500192392831249814

`A261423(A287378(n)+A229479(n+1))`
-/

namespace A222944.P3500192392831249814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A287378 n + A229479 (n + 1)).toNat

end

end A222944.P3500192392831249814

/-! ## A222944.P9179281945373515735

`A116694(n+1)-A011655(A002807(n))`
-/

namespace A222944.P9179281945373515735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (n + 1) - A011655 (A002807 n).toNat

end

end A222944.P9179281945373515735

/-! ## A222944.P3853729167629784016

`A116694(n+1)-A046080(A000110(n))`
-/

namespace A222944.P3853729167629784016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (n + 1) - A046080 (A000110 n).toNat

end

end A222944.P3853729167629784016

/-! ## A222944.P11951537781758290070

`A116694(n+1)-A066247(A000142(n))`
-/

namespace A222944.P11951537781758290070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (n + 1) - A066247 (A000142 n).toNat

end

end A222944.P11951537781758290070

/-!
# A222945: Number of distinct sums i+j+k with |i|, |j|, |k|, |i*j*k| <= n.

The programs for A222945, the canonical program `A222945.P6602744326663127496` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222945 has offset 0).

The definition of A222945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222945.P6602744326663127496

`a(n-1)+4` with `a(0)=1, a(1)=7, a(2)=9`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222945

/-- `a(n-1)+4` -/
def P6602744326663127496.Spec : Prop :=
  ∀ n, (P6602744326663127496.a n : ℤ) = A222945 n

theorem P6602744326663127496.correct : P6602744326663127496.Spec := by
  intro n
  simp only [A222945]

end A222945

/-!
# A222946: Triangle for hypotenuses of primitive Pythagorean triangles.

The programs for A222946, the canonical program `A222946.P18161529280472622073` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222946 has offset 2).

The definition of A222946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222946.P12876504953666088560

`A055096(n+2)*A249866(n+2)`
-/

namespace A222946.P12876504953666088560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) * A249866 (n + 2)

end

end A222946.P12876504953666088560

namespace A222946

/-- `A055096(n+2)*A249866(n+2)` -/
def P12876504953666088560.Spec : Prop :=
  ∀ n, P12876504953666088560.a n = A222946 (n + 2)

end A222946

/-! ## A222946.P18161529280472622073

`and(A054431(n+1), A103217(n))*A055096(n+2)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A222946

/-- `and(A054431(n+1), A103217(n))*A055096(n+2)` -/
def P18161529280472622073.Spec : Prop :=
  ∀ n, P18161529280472622073.a n = A222946 (n + 2)

theorem P18161529280472622073.correct : P18161529280472622073.Spec := by
  intro n
  simp only [A222946, Nat.add_sub_cancel]

end A222946

/-! ## A222946.P16975851308831091401

`(A341741(n+1)/2)%2*A055096(n+2)`
-/

namespace A222946.P16975851308831091401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A341741 (n + 1) : ℚ) / 2)) 2 * A055096 (n + 2)

end

end A222946.P16975851308831091401

namespace A222946

/-- `(A341741(n+1)/2)%2*A055096(n+2)` -/
def P16975851308831091401.Spec : Prop :=
  ∀ n, P16975851308831091401.a n = A222946 (n + 2)

end A222946

/-! ## A222946.P1770722262097023755

`A000007(val(A341741(n+1), 4))*A055096(n+2)`
-/

namespace A222946.P1770722262097023755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A341741 (n + 1)).toNat 4) * A055096 (n + 2)

end

end A222946.P1770722262097023755

namespace A222946

/-- `A000007(val(A341741(n+1), 4))*A055096(n+2)` -/
def P1770722262097023755.Spec : Prop :=
  ∀ n, P1770722262097023755.a n = A222946 (n + 2)

end A222946

/-! ## A222946.P10856949403801535998

`A225950(n+2)%2*A055096(n+2)`
-/

namespace A222946.P10856949403801535998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225950 (n + 2)) 2 * A055096 (n + 2)

end

end A222946.P10856949403801535998

namespace A222946

/-- `A225950(n+2)%2*A055096(n+2)` -/
def P10856949403801535998.Spec : Prop :=
  ∀ n, P10856949403801535998.a n = A222946 (n + 2)

end A222946

/-! ## A222946.P1299932257460679947

`floor(atan(A278711(n+2)))*A055096(n+2)`
-/

namespace A222946.P1299932257460679947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A278711 (n + 2) : ℝ)⌋ * A055096 (n + 2)

end

end A222946.P1299932257460679947

namespace A222946

/-- `floor(atan(A278711(n+2)))*A055096(n+2)` -/
def P1299932257460679947.Spec : Prop :=
  ∀ n, P1299932257460679947.a n = A222946 (n + 2)

end A222946

/-! ## A222946.P10813443699246904065

`A000035(A225950(n+2))*A055096(n+2)`
-/

namespace A222946.P10813443699246904065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A225950 (n + 2)).toNat * A055096 (n + 2)

end

end A222946.P10813443699246904065

namespace A222946

/-- `A000035(A225950(n+2))*A055096(n+2)` -/
def P10813443699246904065.Spec : Prop :=
  ∀ n, P10813443699246904065.a n = A222946 (n + 2)

end A222946

/-! ## A222946.P11876707529315570274

`A014306(A278711(n+2))*A055096(n+2)`
-/

namespace A222946.P11876707529315570274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A278711 (n + 2)).toNat * A055096 (n + 2)

end

end A222946.P11876707529315570274

namespace A222946

/-- `A014306(A278711(n+2))*A055096(n+2)` -/
def P11876707529315570274.Spec : Prop :=
  ∀ n, P11876707529315570274.a n = A222946 (n + 2)

end A222946

/-! ## A222946.P15596397763000751954

`A055096(n+2)%A000041(A278712(n+2))`
-/

namespace A222946.P15596397763000751954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055096 (n + 2)) (A000041 (A278712 (n + 2)).toNat)

end

end A222946.P15596397763000751954

namespace A222946

/-- `A055096(n+2)%A000041(A278712(n+2))` -/
def P15596397763000751954.Spec : Prop :=
  ∀ n, P15596397763000751954.a n = A222946 (n + 2)

end A222946

/-! ## A222946.P7092963629285995636

`∑{e}[A006530(A278712(n+2)+1), #]*A055096(n+2)`
-/

namespace A222946.P7092963629285995636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A278712 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A055096 (n + 2)

end

end A222946.P7092963629285995636

namespace A222946

/-- `∑{e}[A006530(A278712(n+2)+1), #]*A055096(n+2)` -/
def P7092963629285995636.Spec : Prop :=
  ∀ n, P7092963629285995636.a n = A222946 (n + 2)

end A222946

/-!
# A222947: Number of distinct sums i+j+k with |i|, |j|, |k|, |i*j*k| <= n and gcd(i,j,k) <= 1.

The programs for A222947, the canonical program `A222947.P4168191161214268407` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222947 has offset 0).

The definition of A222947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222947.P4168191161214268407

`2*∑[floor(a(a(n-1)))]-1` with `a(0)=1, a(1)=3, a(2)=1, a(3)=1, a(4)=2, a(5)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222947

/-- `2*∑[floor(a(a(n-1)))]-1` -/
def P4168191161214268407.Spec : Prop :=
  ∀ n, P4168191161214268407.a n = A222947 n

theorem P4168191161214268407.correct : P4168191161214268407.Spec := by
  intro n
  simp only [A222947]

end A222947

/-! ## A222947.P8905871447056275388

`2*A223133(n)-1`
-/

namespace A222947.P8905871447056275388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A223133 n - 1

end

end A222947.P8905871447056275388

namespace A222947

/-- `2*A223133(n)-1` -/
def P8905871447056275388.Spec : Prop :=
  ∀ n, P8905871447056275388.a n = A222947 n

end A222947

/-! ## A222947.P16103301584947689664

`A004273(A223133(n))`
-/

namespace A222947.P16103301584947689664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A223133 n).toNat

end

end A222947.P16103301584947689664

namespace A222947

/-- `A004273(A223133(n))` -/
def P16103301584947689664.Spec : Prop :=
  ∀ n, P16103301584947689664.a n = A222947 n

end A222947

/-! ## A222947.P2752160084709912516

`A005408(A223133(n)-1)`
-/

namespace A222947.P2752160084709912516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A223133 n - 1).toNat

end

end A222947.P2752160084709912516

namespace A222947

/-- `A005408(A223133(n)-1)` -/
def P2752160084709912516.Spec : Prop :=
  ∀ n, P2752160084709912516.a n = A222947 n

end A222947

/-! ## A222947.P15404910750784696270

`A223134(A223133(n)-1)`
-/

namespace A222947.P15404910750784696270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A223133 n - 1).toNat

end

end A222947.P15404910750784696270

namespace A222947

/-- `A223134(A223133(n)-1)` -/
def P15404910750784696270.Spec : Prop :=
  ∀ n, P15404910750784696270.a n = A222947 n

end A222947

/-! ## A222947.P13861245649095605533

`A267872(A223133(n)-1)`
-/

namespace A222947.P13861245649095605533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A223133 n - 1).toNat

end

end A222947.P13861245649095605533

namespace A222947

/-- `A267872(A223133(n)-1)` -/
def P13861245649095605533.Spec : Prop :=
  ∀ n, P13861245649095605533.a n = A222947 n

end A222947

/-! ## A222947.P15726367381819317561

`A014681(2*A223133(n))`
-/

namespace A222947.P15726367381819317561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A223133 n).toNat

end

end A222947.P15726367381819317561

namespace A222947

/-- `A014681(2*A223133(n))` -/
def P15726367381819317561.Spec : Prop :=
  ∀ n, P15726367381819317561.a n = A222947 n

end A222947

/-! ## A222947.P12115907557005835684

`A063196(2*A223133(n))`
-/

namespace A222947.P12115907557005835684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (2 * A223133 n).toNat

end

end A222947.P12115907557005835684

namespace A222947

/-- `A063196(2*A223133(n))` -/
def P12115907557005835684.Spec : Prop :=
  ∀ n, P12115907557005835684.a n = A222947 n

end A222947

/-! ## A222947.P10405082250874952039

`A346468(2*A223133(n))`
-/

namespace A222947.P10405082250874952039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (2 * A223133 n).toNat

end

end A222947.P10405082250874952039

namespace A222947

/-- `A346468(2*A223133(n))` -/
def P10405082250874952039.Spec : Prop :=
  ∀ n, P10405082250874952039.a n = A222947 n

end A222947

/-! ## A222947.P14629715988182449918

`A130823(3*A223133(n))`
-/

namespace A222947.P14629715988182449918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (3 * A223133 n).toNat

end

end A222947.P14629715988182449918

namespace A222947

/-- `A130823(3*A223133(n))` -/
def P14629715988182449918.Spec : Prop :=
  ∀ n, P14629715988182449918.a n = A222947 n

end A222947

/-! ## A222947.P8164767824155137288

`A046667(4*A223133(n))`
-/

namespace A222947.P8164767824155137288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (4 * A223133 n).toNat

end

end A222947.P8164767824155137288

namespace A222947

/-- `A046667(4*A223133(n))` -/
def P8164767824155137288.Spec : Prop :=
  ∀ n, P8164767824155137288.a n = A222947 n

end A222947

/-! ## A222947.P15867572157256558411

`A006083(6*A223133(n))`
-/

namespace A222947.P15867572157256558411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (6 * A223133 n).toNat

end

end A222947.P15867572157256558411

namespace A222947

/-- `A006083(6*A223133(n))` -/
def P15867572157256558411.Spec : Prop :=
  ∀ n, P15867572157256558411.a n = A222947 n

end A222947

/-! ## A222947.P4905992108728236975

`A005843(A223133(n)-1)+1`
-/

namespace A222947.P4905992108728236975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A223133 n - 1).toNat + 1

end

end A222947.P4905992108728236975

namespace A222947

/-- `A005843(A223133(n)-1)+1` -/
def P4905992108728236975.Spec : Prop :=
  ∀ n, P4905992108728236975.a n = A222947 n

end A222947

/-! ## A222947.P12004285286439452185

`A052928(A223133(n)+A223133(n))-1`
-/

namespace A222947.P12004285286439452185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A223133 n + A223133 n).toNat - 1

end

end A222947.P12004285286439452185

namespace A222947

/-- `A052928(A223133(n)+A223133(n))-1` -/
def P12004285286439452185.Spec : Prop :=
  ∀ n, P12004285286439452185.a n = A222947 n

end A222947

/-!
# A222949: Numbers that are a sum of four nonzero squares where the summands have no common square factor > 1.

The programs for A222949, there is no canonical definition to state claims against.
-/

/-! ## A222949.P16208006930514378305

`lt[0, A097203(n+1)]+1`
-/

namespace A222949.P16208006930514378305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A222949.P16208006930514378305

/-! ## A222949.P12827549837800840915

`lt[45, 10*a(A097203(n))]` with `a(0)=1`
-/

namespace A222949.P12827549837800840915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  10 * f2 (A097203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A222949.P12827549837800840915

/-! ## A222949.P6284288291319383461

`∩[round(8*n/7)+4, A000414(n+1)]`
-/

namespace A222949.P6284288291319383461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7)) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222949.P6284288291319383461

/-! ## A222949.P7972718302424590169

`lt[0, A097203(A028310(n))]`
-/

namespace A222949.P7972718302424590169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A222949.P7972718302424590169

/-! ## A222949.P6086632667830442555

`lt[A014017(n), A025428(n)]`
-/

namespace A222949.P6086632667830442555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A222949.P6086632667830442555

/-! ## A222949.P4474649149526237908

`lt[A253513(n), A025428(n)]`
-/

namespace A222949.P4474649149526237908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A222949.P4474649149526237908

/-! ## A222949.P2569725496346470950

`lt[abs(A014025(n)), A025428(n)]`
-/

namespace A222949.P2569725496346470950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014025 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A222949.P2569725496346470950

/-! ## A222949.P11435739601072991105

`lt[A010194(n), exp(A025428(n))]`
-/

namespace A222949.P11435739601072991105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A025428 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A222949.P11435739601072991105

/-! ## A222949.P10205362992000908827

`comp[lt[A063730(n), A010194(n)]]`
-/

namespace A222949.P10205362992000908827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A222949.P10205362992000908827

/-! ## A222949.P2996412724366446267

`A020725(lt[0, A097203(n+1)])`
-/

namespace A222949.P2996412724366446267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222949.P2996412724366446267

/-!
# A222950: Number of nX2 0..3 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A222950, there is no canonical definition to state claims against.
-/

/-! ## A222950.P18296823117262557516

`A222953(∑[n+1]+2)`
-/

namespace A222950.P18296823117262557516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222953 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222950.P18296823117262557516

/-! ## A222950.P11469854334356405056

`record[A222953(A286235(n+1)+1)]`
-/

namespace A222950.P11469854334356405056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222953 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222950.P11469854334356405056

/-! ## A222950.P15315728369354948084

`record[A222953(n+2)/A080249(n)]`
-/

namespace A222950.P15315728369354948084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222953 (n + 2) : ℚ) / (A080249 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222950.P15315728369354948084

/-! ## A222950.P8197770675257404933

`record[A222953(n+2)/A058876(n+1)]`
-/

namespace A222950.P8197770675257404933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222953 (n + 2) : ℚ) / (A058876 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222950.P8197770675257404933

/-! ## A222950.P14476321375350427223

`record[A222953(n+3)/A264313(n+1)]`
-/

namespace A222950.P14476321375350427223
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222953 (n + 3) : ℚ) / (A264313 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222950.P14476321375350427223

/-!
# A222951: Number of nX3 0..3 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A222951, there is no canonical definition to state claims against.
-/

/-! ## A222951.P2646210427428162618

`A222953(∑[n+2]+4)`
-/

namespace A222951.P2646210427428162618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222953 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222951.P2646210427428162618

/-! ## A222951.P10936853707258813586

`lcm(2, A222953(A167614(n+1)))`
-/

namespace A222951.P10936853707258813586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222953 (A167614 (n + 1)).toNat)

end

end A222951.P10936853707258813586

/-! ## A222951.P12357111017728389501

`A222953(A167614(n+1))+A066568(n)`
-/

namespace A222951.P12357111017728389501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222953 (A167614 (n + 1)).toNat + A066568 n

end

end A222951.P12357111017728389501

/-! ## A222951.P491073817851183167

`A222953(A167614(n+1))+A102681(n)`
-/

namespace A222951.P491073817851183167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222953 (A167614 (n + 1)).toNat + A102681 n

end

end A222951.P491073817851183167

/-!
# A222952: Number of nX4 0..3 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A222952, there is no canonical definition to state claims against.
-/

/-! ## A222952.P3952618060348253858

`A222953(A167614(n+2)+1)`
-/

namespace A222952.P3952618060348253858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222953 (A167614 (n + 2) + 1).toNat

end

end A222952.P3952618060348253858

/-! ## A222952.P5813298787633321314

`A222953(A020752(n+1))`
-/

namespace A222952.P5813298787633321314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222953 (A020752 (n + 1)).toNat

end

end A222952.P5813298787633321314

/-!
# A222953: T(n,k)=Number of nXk 0..3 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A222953, there is no canonical definition to state claims against.
-/

/-! ## A222953.P2283833903975202680

`A000120(A004167(n))*A222931(n+1)`
-/

namespace A222953.P2283833903975202680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004167 n).toNat * A222931 (n + 1)

end

end A222953.P2283833903975202680

/-! ## A222953.P15316512072546780867

`A096825(A248763(2*n+3))*A222931(n+1)`
-/

namespace A222953.P15316512072546780867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A248763 (2 * n + 3)).toNat * A222931 (n + 1)

end

end A222953.P15316512072546780867

/-! ## A222953.P6706139741378235133

`A000120(A000142(n))*A222931(n+1)`
-/

namespace A222953.P6706139741378235133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000142 n).toNat * A222931 (n + 1)

end

end A222953.P6706139741378235133

/-! ## A222953.P1176008465059236099

`A104564(A006882(n))*A222931(n+1)`
-/

namespace A222953.P1176008465059236099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104564 (A006882 n).toNat * A222931 (n + 1)

end

end A222953.P1176008465059236099

/-!
# A222954: Number of n X n 0..1 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A222954, there is no canonical definition to state claims against.
-/

/-! ## A222954.P7887415247417129920

`A222959(∑[4*n]+1)`
-/

namespace A222954.P7887415247417129920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222959 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222954.P7887415247417129920

/-! ## A222954.P872510698689137177

`lcm(2, A222959(A001844(n)))`
-/

namespace A222954.P872510698689137177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222959 (A001844 n).toNat)

end

end A222954.P872510698689137177

/-! ## A222954.P3942355994405988800

`A222959(A001844(n))+A151949(n)`
-/

namespace A222954.P3942355994405988800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222959 (A001844 n).toNat + A151949 n

end

end A222954.P3942355994405988800

/-! ## A222954.P6503493042312887406

`A326455(n)+A222959(A001844(n))`
-/

namespace A222954.P6503493042312887406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n + A222959 (A001844 n).toNat

end

end A222954.P6503493042312887406

/-! ## A222954.P7328936575931589558

`A222959(A001844(n))%A323565(n)`
-/

namespace A222954.P7328936575931589558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222959 (A001844 n).toNat) (A323565 n)

end

end A222954.P7328936575931589558

/-!
# A222955: Number of n X 1 0..1 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A222955, there is no canonical definition to state claims against.
-/

/-! ## A222955.P14305218005929400016

`2*A133406(n+1)`
-/

namespace A222955.P14305218005929400016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133406 (n + 1)

end

end A222955.P14305218005929400016

/-! ## A222955.P2004529888245876754

`2*(A222855(n+1)-A000079(n))`
-/

namespace A222955.P2004529888245876754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A222855 (n + 1) - A000079 n)

end

end A222955.P2004529888245876754

/-! ## A222955.P2901584642178692079

`2*xor(A171559(n), A222855(n+1))`
-/

namespace A222955.P2901584642178692079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (A171559 n) (A222855 (n + 1))

end

end A222955.P2901584642178692079

/-! ## A222955.P5143822847183481973

`A245134(∑[n+1])`
-/

namespace A222955.P5143822847183481973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222955.P5143822847183481973

/-! ## A222955.P4467517362939062331

`abs(1-A245134(A000217(n+1)))+1`
-/

namespace A222955.P4467517362939062331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A245134 (A000217 (n + 1)).toNat| + 1

end

end A222955.P4467517362939062331

/-! ## A222955.P4447391282839922678

`sqrt(A222956(n+1))`
-/

namespace A222955.P4447391282839922678
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A222956 (n + 1) : ℝ)

end

end A222955.P4447391282839922678

/-! ## A222955.P9104731262283842208

`root(A222957(n+1), 3)`
-/

namespace A222955.P9104731262283842208
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222957 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A222955.P9104731262283842208

/-! ## A222955.P4083140966957363018

`A222957(n+1)/A222956(n+1)`
-/

namespace A222955.P4083140966957363018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222957 (n + 1) : ℚ) / (A222956 (n + 1) : ℚ)

end

end A222955.P4083140966957363018

/-!
# A222956: Number of nX3 0..1 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A222956, there is no canonical definition to state claims against.
-/

/-! ## A222956.P9224635622362285056

`A222955(n+1)²`
-/

namespace A222956.P9224635622362285056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222955 (n + 1) ^ 2

end

end A222956.P9224635622362285056

/-! ## A222956.P7295302327485779044

`A245134(∑[n+1])²`
-/

namespace A222956.P7295302327485779044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A222956.P7295302327485779044

/-! ## A222956.P6979133910164440969

`(2*A133406(n+1))²`
-/

namespace A222956.P6979133910164440969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A133406 (n + 1)) ^ 2

end

end A222956.P6979133910164440969

/-! ## A222956.P6089729926920039919

`root(A245134(C(n+2, 2)), 1-1/2)`
-/

namespace A222956.P6089729926920039919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A245134 (Nat.choose (n + 2) 2) : ℝ) ^ (1 / (1 - (1 : ℚ) / 2 : ℝ))

end

end A222956.P6089729926920039919

/-! ## A222956.P2140405758677172222

`A222955(n+1)^A141310(or(1, n))`
-/

namespace A222956.P2140405758677172222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222955 (n + 1) : ℚ) ^ (A141310 (Nat.lor 1 n) : ℤ)

end

end A222956.P2140405758677172222

/-! ## A222956.P8961898343033710070

`(2*(A222855(n+1)-A000079(n)))²`
-/

namespace A222956.P8961898343033710070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (A222855 (n + 1) - A000079 n)) ^ 2

end

end A222956.P8961898343033710070

/-! ## A222956.P287451154590720949

`(2*(A222855(n+1)-A171559(n)))²`
-/

namespace A222956.P287451154590720949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (A222855 (n + 1) - A171559 n)) ^ 2

end

end A222956.P287451154590720949

/-! ## A222956.P11753817103743836656

`2*A133406(n+1)*A222955(n+1)`
-/

namespace A222956.P11753817103743836656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133406 (n + 1) * A222955 (n + 1))

end

end A222956.P11753817103743836656

/-! ## A222956.P13119384176211271933

`A222955(A000027(n+1))*A222955(n+1)`
-/

namespace A222956.P13119384176211271933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222955 (A000027 (n + 1)).toNat * A222955 (n + 1)

end

end A222956.P13119384176211271933

/-! ## A222956.P2824132295866398523

`A222955(n+1)^A001105(A133707(n+1))`
-/

namespace A222956.P2824132295866398523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222955 (n + 1) : ℚ) ^ (A001105 (A133707 (n + 1)).toNat : ℤ)

end

end A222956.P2824132295866398523

/-!
# A222957: Number of nX5 0..1 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A222957, there is no canonical definition to state claims against.
-/

/-! ## A222957.P13659563348900120213

`A222955(n+1)^3`
-/

namespace A222957.P13659563348900120213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222955 (n + 1) ^ 3

end

end A222957.P13659563348900120213

/-! ## A222957.P15733076059478728049

`sqrt(A222956(n+1)^3)`
-/

namespace A222957.P15733076059478728049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A222956 (n + 1) ^ 3 : ℝ)

end

end A222957.P15733076059478728049

/-! ## A222957.P12362032398499012575

`A245134(∑[n+1])^3`
-/

namespace A222957.P12362032398499012575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A222957.P12362032398499012575

/-! ## A222957.P18101773784172732768

`(2*A133406(n+1))^3`
-/

namespace A222957.P18101773784172732768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A133406 (n + 1)) ^ 3

end

end A222957.P18101773784172732768

/-! ## A222957.P18107173671016569650

`A222955(n+1)*A222956(n+1)`
-/

namespace A222957.P18107173671016569650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222955 (n + 1) * A222956 (n + 1)

end

end A222957.P18107173671016569650

/-! ## A222957.P10915720616297642259

`A222956(n+1)*A245134(∑[n+1])`
-/

namespace A222957.P10915720616297642259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222956 (n + 1) * A245134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222957.P10915720616297642259

/-! ## A222957.P16903433703604990723

`A222955(A000027(n+1))²*A222955(n+1)`
-/

namespace A222957.P16903433703604990723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222955 (A000027 (n + 1)).toNat ^ 2 * A222955 (n + 1)

end

end A222957.P16903433703604990723

/-!
# A222958: Number of nX7 0..1 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A222958, there is no canonical definition to state claims against.
-/

/-! ## A222958.P7521598864560355283

`A222959(A167487(n+5))`
-/

namespace A222958.P7521598864560355283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222959 (A167487 (n + 5)).toNat

end

end A222958.P7521598864560355283

/-! ## A222958.P15030171375601786248

`A222959(A056119(n)+28)`
-/

namespace A222958.P15030171375601786248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222959 (A056119 n + 28).toNat

end

end A222958.P15030171375601786248

/-! ## A222958.P2218361677480036103

`A222959(eq[11, A066657(n)])`
-/

namespace A222958.P2218361677480036103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222958.P2218361677480036103

/-! ## A222958.P13237209716142461400

`A222959(eq[8, A131818(n+1)])`
-/

namespace A222958.P13237209716142461400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222958.P13237209716142461400

/-! ## A222958.P12295932437793931162

`A222959(A374008(n+1))`
-/

namespace A222958.P12295932437793931162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222959 (A374008 (n + 1)).toNat

end

end A222958.P12295932437793931162

/-!
# A222959: T(n,k)=Number of nXk 0..1 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A222959, there is no canonical definition to state claims against.
-/

/-! ## A222959.P7622854730028771567

`A217871(A223747(n+1))`
-/

namespace A222959.P7622854730028771567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217871 (A223747 (n + 1)).toNat

end

end A222959.P7622854730028771567

/-! ## A222959.P5850614073632243612

`2^A188169(A025622(n+1))`
-/

namespace A222959.P5850614073632243612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A188169 (A025622 (n + 1)).toNat : ℤ)

end

end A222959.P5850614073632243612

/-! ## A222959.P482964751060959874

`A000005(A091203(A263799(n+1))!)`
-/

namespace A222959.P482964751060959874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial (A091203 (A263799 (n + 1)).toNat).toNat)

end

end A222959.P482964751060959874

/-! ## A222959.P4967791272615907442

`A000005(A367003(n+2))^A243866(n+1)`
-/

namespace A222959.P4967791272615907442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A367003 (n + 2)).toNat : ℚ) ^ (A243866 (n + 1) : ℤ)

end

end A222959.P4967791272615907442

/-!
# A222960: Numbers n such that 2*n + {3, 5, 9, 11} are all primes.

The programs for A222960, there is no canonical definition to state claims against.
-/

/-! ## A222960.P3286542888946812261

`(A007530(n+1)-3)/2`
-/

namespace A222960.P3286542888946812261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007530 (n + 1) - 3 : ℚ) / 2

end

end A222960.P3286542888946812261

/-! ## A222960.P16536754084199583996

`A125855(n+1)/2-1`
-/

namespace A222960.P16536754084199583996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125855 (n + 1) : ℚ) / 2 - 1

end

end A222960.P16536754084199583996

/-! ## A222960.P974014201138858233

`(A136720(n+1)-5)/2`
-/

namespace A222960.P974014201138858233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136720 (n + 1) - 5 : ℚ) / 2

end

end A222960.P974014201138858233

/-! ## A222960.P14218448732017675850

`(A064974(n+1)+2)/2-7`
-/

namespace A222960.P14218448732017675850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064974 (n + 1) + 2 : ℚ) / 2 - 7

end

end A222960.P14218448732017675850

/-! ## A222960.P16834584006519082621

`3*(A173092(n+1)-1)/2-2`
-/

namespace A222960.P16834584006519082621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A173092 (n + 1) - 1 : ℚ) / 2) - 2

end

end A222960.P16834584006519082621

/-! ## A222960.P9526504979176317610

`(A136162(A016813(n))-3)/2`
-/

namespace A222960.P9526504979176317610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136162 (A016813 n).toNat - 3 : ℚ) / 2

end

end A222960.P9526504979176317610

/-! ## A222960.P10533425831072504302

`(A136162(A016825(n))-5)/2`
-/

namespace A222960.P10533425831072504302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136162 (A016825 n).toNat - 5 : ℚ) / 2

end

end A222960.P10533425831072504302

/-! ## A222960.P4443565989828343778

`3*A178145(n+1)-2`
-/

namespace A222960.P4443565989828343778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A178145 (n + 1) - 2

end

end A222960.P4443565989828343778

/-!
# A222962: Primes of the form kk*k+k+1, where kk is the concatenation of k with itself.

The programs for A222962, there is no canonical definition to state claims against.
-/

/-! ## A222962.P6736019076738910447

`p?[(n+1)*(A020338(n+1)+1)+1]`
-/

namespace A222962.P6736019076738910447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A020338 (n + 1) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222962.P6736019076738910447

/-! ## A222962.P15069217850135668114

`p?[A239462(n+1)+lcm(n+1, n+2)]`
-/

namespace A222962.P15069217850135668114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239462 (n + 1) + (Nat.lcm (n + 1) (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222962.P15069217850135668114

/-! ## A222962.P7783411573447432963

`p?[A239462(n+1)+A002378(n+1)]`
-/

namespace A222962.P7783411573447432963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239462 (n + 1) + A002378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222962.P7783411573447432963

/-! ## A222962.P3050196240871325304

`p?[A001704(n+1)+(n+1)*A127421(n+1)]`
-/

namespace A222962.P3050196240871325304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (n + 1) + (n + 1 : ℤ) * A127421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222962.P3050196240871325304

/-! ## A222962.P5350738366086664378

`p?[A127421(n+2)+(n+1)*A127421(n+1)]`
-/

namespace A222962.P5350738366086664378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 2) + (n + 1 : ℤ) * A127421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222962.P5350738366086664378

/-!
# A222963: a(n) = (p-3)*(p+3)/4 where p is the n-th prime.

The programs for A222963, the canonical program `A222963.P1582244053247490446` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222963 has offset 2).

The definition of A222963 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166011, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A222963.P1582244053247490446

`A166011(n+2)/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A222963

/-- `A166011(n+2)/2` -/
def P1582244053247490446.Spec : Prop :=
  ∀ n, P1582244053247490446.a n = (A222963 (n + 2) : ℚ)

end A222963

/-! ## A222963.P11294272951020796209

`floor((p?[abs(1-2*n)]/2)²)-2`
-/

namespace A222963.P11294272951020796209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2) ^ 2⌋ - 2

end

end A222963.P11294272951020796209

namespace A222963

/-- `floor((p?[abs(1-2*n)]/2)²)-2` -/
def P11294272951020796209.Spec : Prop :=
  ∀ n, P11294272951020796209.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P17448586682023164851

`∑[A062046(n+1)]`
-/

namespace A222963.P17448586682023164851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222963.P17448586682023164851

namespace A222963

/-- `∑[A062046(n+1)]` -/
def P17448586682023164851.Spec : Prop :=
  ∀ n, P17448586682023164851.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P12733801199698672958

`A074367(n+1)-1`
-/

namespace A222963.P12733801199698672958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074367 (n + 1) - 1

end

end A222963.P12733801199698672958

namespace A222963

/-- `A074367(n+1)-1` -/
def P12733801199698672958.Spec : Prop :=
  ∀ n, P12733801199698672958.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P5222100602021523475

`A024701(n+1)-2`
-/

namespace A222963.P5222100602021523475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 1) - 2

end

end A222963.P5222100602021523475

namespace A222963

/-- `A024701(n+1)-2` -/
def P5222100602021523475.Spec : Prop :=
  ∀ n, P5222100602021523475.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P2065977893744319228

`2*(A061066(n+2)-1)`
-/

namespace A222963.P2065977893744319228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061066 (n + 2) - 1)

end

end A222963.P2065977893744319228

namespace A222963

/-- `2*(A061066(n+2)-1)` -/
def P2065977893744319228.Spec : Prop :=
  ∀ n, P2065977893744319228.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P12047604775591876704

`A216244(n+2)/2-2`
-/

namespace A222963.P12047604775591876704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216244 (n + 2) : ℚ) / 2 - 2

end

end A222963.P12047604775591876704

namespace A222963

/-- `A216244(n+2)/2-2` -/
def P12047604775591876704.Spec : Prop :=
  ∀ n, P12047604775591876704.a n = (A222963 (n + 2) : ℚ)

end A222963

/-! ## A222963.P11395661788205097078

`(A243887(n+1)-3)/2`
-/

namespace A222963.P11395661788205097078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243887 (n + 1) - 3 : ℚ) / 2

end

end A222963.P11395661788205097078

namespace A222963

/-- `(A243887(n+1)-3)/2` -/
def P11395661788205097078.Spec : Prop :=
  ∀ n, P11395661788205097078.a n = (A222963 (n + 2) : ℚ)

end A222963

/-! ## A222963.P18240974068075782329

`(A066885(n+2)-5)/2`
-/

namespace A222963.P18240974068075782329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066885 (n + 2) - 5 : ℚ) / 2

end

end A222963.P18240974068075782329

namespace A222963

/-- `(A066885(n+2)-5)/2` -/
def P18240974068075782329.Spec : Prop :=
  ∀ n, P18240974068075782329.a n = (A222963 (n + 2) : ℚ)

end A222963

/-! ## A222963.P5427583604238380458

`A067076(n+1)*A098090(n+1)`
-/

namespace A222963.P5427583604238380458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) * A098090 (n + 1)

end

end A222963.P5427583604238380458

namespace A222963

/-- `A067076(n+1)*A098090(n+1)` -/
def P5427583604238380458.Spec : Prop :=
  ∀ n, P5427583604238380458.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P10332398530784975119

`A006254(n+1)²-A089253(n+1)`
-/

namespace A222963.P10332398530784975119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) ^ 2 - A089253 (n + 1)

end

end A222963.P10332398530784975119

namespace A222963

/-- `A006254(n+1)²-A089253(n+1)` -/
def P10332398530784975119.Spec : Prop :=
  ∀ n, P10332398530784975119.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P10733880575874223026

`(A006254(n+1)+1)*A067076(n+1)`
-/

namespace A222963.P10733880575874223026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006254 (n + 1) + 1) * A067076 (n + 1)

end

end A222963.P10733880575874223026

namespace A222963

/-- `(A006254(n+1)+1)*A067076(n+1)` -/
def P10733880575874223026.Spec : Prop :=
  ∀ n, P10733880575874223026.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P11583347330867363599

`(A005097(n+1)+2)*A067076(n+1)`
-/

namespace A222963.P11583347330867363599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) + 2) * A067076 (n + 1)

end

end A222963.P11583347330867363599

namespace A222963

/-- `(A005097(n+1)+2)*A067076(n+1)` -/
def P11583347330867363599.Spec : Prop :=
  ∀ n, P11583347330867363599.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P10351521163629096090

`(A005097(n+1)-1)*A098090(n+1)`
-/

namespace A222963.P10351521163629096090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) - 1) * A098090 (n + 1)

end

end A222963.P10351521163629096090

namespace A222963

/-- `(A005097(n+1)-1)*A098090(n+1)` -/
def P10351521163629096090.Spec : Prop :=
  ∀ n, P10351521163629096090.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P15278373359984355073

`(A089253(n+1)-1)*A067076(n+1)`
-/

namespace A222963.P15278373359984355073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089253 (n + 1) - 1) * A067076 (n + 1)

end

end A222963.P15278373359984355073

namespace A222963

/-- `(A089253(n+1)-1)*A067076(n+1)` -/
def P15278373359984355073.Spec : Prop :=
  ∀ n, P15278373359984355073.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P15922899868007024304

`A005097(n+1)*A006254(n+1)-2`
-/

namespace A222963.P15922899868007024304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A006254 (n + 1) - 2

end

end A222963.P15922899868007024304

namespace A222963

/-- `A005097(n+1)*A006254(n+1)-2` -/
def P15922899868007024304.Spec : Prop :=
  ∀ n, P15922899868007024304.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P7884379633714036142

`2*(A067076(n+1)+A030005(n+2))`
-/

namespace A222963.P7884379633714036142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A067076 (n + 1) + A030005 (n + 2))

end

end A222963.P7884379633714036142

namespace A222963

/-- `2*(A067076(n+1)+A030005(n+2))` -/
def P7884379633714036142.Spec : Prop :=
  ∀ n, P7884379633714036142.a n = A222963 (n + 2)

end A222963

/-! ## A222963.P392418765099251675

`A098090(n+1)/2*A154115(n+1)`
-/

namespace A222963.P392418765099251675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098090 (n + 1) : ℚ) / 2 * (A154115 (n + 1) : ℚ)

end

end A222963.P392418765099251675

namespace A222963

/-- `A098090(n+1)/2*A154115(n+1)` -/
def P392418765099251675.Spec : Prop :=
  ∀ n, P392418765099251675.a n = (A222963 (n + 2) : ℚ)

end A222963

/-! ## A222963.P3306735820075866842

`A067076(n+1)/2*A298252(n+1)`
-/

namespace A222963.P3306735820075866842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067076 (n + 1) : ℚ) / 2 * (A298252 (n + 1) : ℚ)

end

end A222963.P3306735820075866842

namespace A222963

/-- `A067076(n+1)/2*A298252(n+1)` -/
def P3306735820075866842.Spec : Prop :=
  ∀ n, P3306735820075866842.a n = (A222963 (n + 2) : ℚ)

end A222963

/-! ## A222963.P75167057740950261

`(A065091(n+1)-A067076(n+1))*A067076(n+1)`
-/

namespace A222963.P75167057740950261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - A067076 (n + 1)) * A067076 (n + 1)

end

end A222963.P75167057740950261

namespace A222963

/-- `(A065091(n+1)-A067076(n+1))*A067076(n+1)` -/
def P75167057740950261.Spec : Prop :=
  ∀ n, P75167057740950261.a n = A222963 (n + 2)

end A222963

/-!
# A222964: Numbers k such that 25*k+36 is a square.

The programs for A222964, the canonical program `A222964.P6045454869050380766` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222964 has offset 1).

The definition of A222964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222964.P17720862295721857073

`(50*(n+1)*n+(2*(n+1)-1)*(-1)^(n+1)+1)/8`
-/

namespace A222964.P17720862295721857073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((50 * (n + 1) * n : ℤ) + ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) + 1 : ℚ) / 8

end

end A222964.P17720862295721857073

namespace A222964

/-- `(50*(n+1)*n+(2*(n+1)-1)*(-1)^(n+1)+1)/8` -/
def P17720862295721857073.Spec : Prop :=
  ∀ n, P17720862295721857073.a n = (A222964 (n + 1) : ℚ)

theorem P17720862295721857073.correct : P17720862295721857073.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A222964, Nat.add_sub_cancel, A222964.P17720862295721857073.a, A222964.P6045454869050380766.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A222964, Nat.add_sub_cancel, A222964.P17720862295721857073.a, A222964.P6045454869050380766.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A222964

/-! ## A222964.P6045454869050380766

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=13, a(2)=37, a(3)=76, a(4)=124`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222964

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6045454869050380766.Spec : Prop :=
  ∀ n, P6045454869050380766.a n = A222964 (n + 1)

theorem P6045454869050380766.correct : P6045454869050380766.Spec := by
  intro n
  simp only [A222964, Nat.add_sub_cancel]

end A222964

/-! ## A222964.P8792420919553200759

`∑[10*n+lcm(2, n)+n]`
-/

namespace A222964.P8792420919553200759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + (Nat.lcm 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222964.P8792420919553200759

namespace A222964

/-- `∑[10*n+lcm(2, n)+n]` -/
def P8792420919553200759.Spec : Prop :=
  ∀ n, (P8792420919553200759.a n : ℤ) = A222964 (n + 1)

end A222964

/-! ## A222964.P17714237886173186800

`∑[n*(∑[2-a(n-1)]-n)]` with `a(0)=5, a(1)=9, a(2)=0`
-/

namespace A222964.P17714237886173186800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 9, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222964.P17714237886173186800

namespace A222964

/-- `∑[n*(∑[2-a(n-1)]-n)]` -/
def P17714237886173186800.Spec : Prop :=
  ∀ n, P17714237886173186800.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P4336333944710343794

`∑[A008593(n)+lcm(2, n)]`
-/

namespace A222964.P4336333944710343794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n + (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222964.P4336333944710343794

namespace A222964

/-- `∑[A008593(n)+lcm(2, n)]` -/
def P4336333944710343794.Spec : Prop :=
  ∀ n, P4336333944710343794.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P5464632060901229580

`∑[14*n]-A001082(n+1)`
-/

namespace A222964.P5464632060901229580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001082 (n + 1)

end

end A222964.P5464632060901229580

namespace A222964

/-- `∑[14*n]-A001082(n+1)` -/
def P5464632060901229580.Spec : Prop :=
  ∀ n, P5464632060901229580.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P18308658115121062580

`A266958(n+1)+Δ[n²]²`
-/

namespace A222964.P18308658115121062580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266958 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A222964.P18308658115121062580

namespace A222964

/-- `A266958(n+1)+Δ[n²]²` -/
def P18308658115121062580.Spec : Prop :=
  ∀ n, P18308658115121062580.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P12456984970093105767

`∑[char[2*n+1]]²+3*A046092(n)`
-/

namespace A222964.P12456984970093105767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + 3 * A046092 n

end

end A222964.P12456984970093105767

namespace A222964

/-- `∑[char[2*n+1]]²+3*A046092(n)` -/
def P12456984970093105767.Spec : Prop :=
  ∀ n, P12456984970093105767.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P17355045683561497603

`A152749(n)+A152740(n)`
-/

namespace A222964.P17355045683561497603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n + A152740 n

end

end A222964.P17355045683561497603

namespace A222964

/-- `A152749(n)+A152740(n)` -/
def P17355045683561497603.Spec : Prop :=
  ∀ n, P17355045683561497603.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P2873544951516628056

`A152741(n)-A110660(n)`
-/

namespace A222964.P2873544951516628056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152741 n - A110660 n

end

end A222964.P2873544951516628056

namespace A222964

/-- `A152741(n)-A110660(n)` -/
def P2873544951516628056.Spec : Prop :=
  ∀ n, P2873544951516628056.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P9750033117069271746

`A124080(n)+A036666(n+1)`
-/

namespace A222964.P9750033117069271746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + A036666 (n + 1)

end

end A222964.P9750033117069271746

namespace A222964

/-- `A124080(n)+A036666(n+1)` -/
def P9750033117069271746.Spec : Prop :=
  ∀ n, P9750033117069271746.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P2974634923079907251

`A185039(n+1)+A033996(n)`
-/

namespace A222964.P2974634923079907251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185039 (n + 1) + A033996 n

end

end A222964.P2974634923079907251

namespace A222964

/-- `A185039(n+1)+A033996(n)` -/
def P2974634923079907251.Spec : Prop :=
  ∀ n, P2974634923079907251.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P11742984060273070343

`A303814(n)+A219390(n+1)`
-/

namespace A222964.P11742984060273070343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303814 n + A219390 (n + 1)

end

end A222964.P11742984060273070343

namespace A222964

/-- `A303814(n)+A219390(n+1)` -/
def P11742984060273070343.Spec : Prop :=
  ∀ n, P11742984060273070343.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P6431576970955523342

`A069129(n+1)-A212965(n)`
-/

namespace A222964.P6431576970955523342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1) - A212965 n

end

end A222964.P6431576970955523342

namespace A222964

/-- `A069129(n+1)-A212965(n)` -/
def P6431576970955523342.Spec : Prop :=
  ∀ n, P6431576970955523342.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P17686162908970885389

`A069128(n+1)-A247643(n)`
-/

namespace A222964.P17686162908970885389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069128 (n + 1) - A247643 n

end

end A222964.P17686162908970885389

namespace A222964

/-- `A069128(n+1)-A247643(n)` -/
def P17686162908970885389.Spec : Prop :=
  ∀ n, P17686162908970885389.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P5263678466855578897

`A069127(n+1)-A257083(n)`
-/

namespace A222964.P5263678466855578897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) - A257083 n

end

end A222964.P5263678466855578897

namespace A222964

/-- `A069127(n+1)-A257083(n)` -/
def P5263678466855578897.Spec : Prop :=
  ∀ n, P5263678466855578897.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P11871134937756565823

`A124080(n)+A273365(n)/2`
-/

namespace A222964.P11871134937756565823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124080 n : ℚ) + (A273365 n : ℚ) / 2

end

end A222964.P11871134937756565823

namespace A222964

/-- `A124080(n)+A273365(n)/2` -/
def P11871134937756565823.Spec : Prop :=
  ∀ n, P11871134937756565823.a n = (A222964 (n + 1) : ℚ)

end A222964

/-! ## A222964.P4661452512600630656

`A049598(n)+(n-A014682(n))²`
-/

namespace A222964.P4661452512600630656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n + ((n : ℤ) - A014682 n) ^ 2

end

end A222964.P4661452512600630656

namespace A222964

/-- `A049598(n)+(n-A014682(n))²` -/
def P4661452512600630656.Spec : Prop :=
  ∀ n, P4661452512600630656.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P13341843867292208567

`A185039(n+1)+A157142(n)²-1`
-/

namespace A222964.P13341843867292208567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185039 (n + 1) + (A157142 n ^ 2 - 1)

end

end A222964.P13341843867292208567

namespace A222964

/-- `A185039(n+1)+A157142(n)²-1` -/
def P13341843867292208567.Spec : Prop :=
  ∀ n, P13341843867292208567.a n = A222964 (n + 1)

end A222964

/-! ## A222964.P7767422113675380087

`A185039(n+1)+A016766(n)-A051624(n)`
-/

namespace A222964.P7767422113675380087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185039 (n + 1) + (A016766 n - A051624 n)

end

end A222964.P7767422113675380087

namespace A222964

/-- `A185039(n+1)+A016766(n)-A051624(n)` -/
def P7767422113675380087.Spec : Prop :=
  ∀ n, P7767422113675380087.a n = A222964 (n + 1)

end A222964

/-!
# A222965: Number of n X 4 0..1 arrays with every row least squares fitting to a positive-slope straight line and every column least squares fitting to a zero- or positive-slope straight line, with a single point array taken as having zero slope.

The programs for A222965, there is no canonical definition to state claims against.
-/

/-! ## A222965.P8998544290963415696

`A222966(n+1)/A222855(n+1)`
-/

namespace A222965.P8998544290963415696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222966 (n + 1) : ℚ) / (A222855 (n + 1) : ℚ)

end

end A222965.P8998544290963415696

/-! ## A222965.P4543267220231764976

`A222966(n+1)/(2^n+A222955(n+1)/2)`
-/

namespace A222965.P4543267220231764976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222966 (n + 1) : ℚ) / ((2 ^ n : ℚ) + (A222955 (n + 1) : ℚ) / 2)

end

end A222965.P4543267220231764976

/-! ## A222965.P8812442521817264193

`A222966(n+1)/(A133406(n+1)+∑[A011782(n)])`
-/

namespace A222965.P8812442521817264193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222966 (n + 1) : ℚ) / ((A133406 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A222965.P8812442521817264193

/-! ## A222965.P4911324730905805832

`A222966(n+1)/ceil(A000079(n)+A222955(n+1)/2)`
-/

namespace A222965.P4911324730905805832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222966 (n + 1) : ℚ) / (⌈(A000079 n : ℚ) + (A222955 (n + 1) : ℚ) / 2⌉ : ℚ)

end

end A222965.P4911324730905805832

/-! ## A222965.P11235139852701376236

`A222966(n+1)/floor((A222955(n+1)+A000079(n+1))/2)`
-/

namespace A222965.P11235139852701376236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222966 (n + 1) : ℚ) / (⌊(A222955 (n + 1) + A000079 (n + 1) : ℚ) / 2⌋ : ℚ)

end

end A222965.P11235139852701376236

/-!
# A222966: Number of n X 5 0..1 arrays with every row least squares fitting to a positive-slope straight line and every column least squares fitting to a zero- or positive-slope straight line, with a single point array taken as having zero slope.

The programs for A222966, there is no canonical definition to state claims against.
-/

/-! ## A222966.P1407984014636168403

`A222855(n+1)*A222965(n+1)`
-/

namespace A222966.P1407984014636168403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222855 (n + 1) * A222965 (n + 1)

end

end A222966.P1407984014636168403

/-! ## A222966.P11253802905547150072

`(2^n+A222955(n+1)/2)*A222965(n+1)`
-/

namespace A222966.P11253802905547150072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) + (A222955 (n + 1) : ℚ) / 2) * (A222965 (n + 1) : ℚ)

end

end A222966.P11253802905547150072

/-! ## A222966.P14293607881043131311

`(A133406(n+1)+∑[A011782(n)])*A222965(n+1)`
-/

namespace A222966.P14293607881043131311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133406 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j) * A222965 (n + 1)

end

end A222966.P14293607881043131311

/-! ## A222966.P18099302815252263641

`ceil(A011782(n+1)+A222955(n+1)/2)*A222965(n+1)`
-/

namespace A222966.P18099302815252263641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011782 (n + 1) : ℚ) + (A222955 (n + 1) : ℚ) / 2⌉ * A222965 (n + 1)

end

end A222966.P18099302815252263641

/-! ## A222966.P6435680786912320146

`A222862(∑[n]+1)*A222965(n+1)`
-/

namespace A222966.P6435680786912320146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A222965 (n + 1)

end

end A222966.P6435680786912320146

/-!
# A222967: Number of n X 6 0..1 arrays with every row least squares fitting to a positive-slope straight line and every column least squares fitting to a zero- or positive-slope straight line, with a single point array taken as having zero slope.

The programs for A222967, there is no canonical definition to state claims against.
-/

/-! ## A222967.P11911325266455144267

`A222969(Δ[A264443(n)])`
-/

namespace A222967.P11911325266455144267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (f1 (n + 1) - f1 n).toNat

end

end A222967.P11911325266455144267

/-! ## A222967.P1030134934109603826

`A222969(A046691(n+3))`
-/

namespace A222967.P1030134934109603826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (A046691 (n + 3)).toNat

end

end A222967.P1030134934109603826

/-! ## A222967.P12870142424790125316

`A222969(A056115(n)+11)`
-/

namespace A222967.P12870142424790125316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (A056115 n + 11).toNat

end

end A222967.P12870142424790125316

/-! ## A222967.P9888179468607496726

`A222969(eq[2, A092921(n)])`
-/

namespace A222967.P9888179468607496726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222967.P9888179468607496726

/-! ## A222967.P12343994139871442991

`A222969(eq[3, A152157(n)])`
-/

namespace A222967.P12343994139871442991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222967.P12343994139871442991

/-!
# A222968: Number of n X 7 0..1 arrays with every row least squares fitting to a positive-slope straight line and every column least squares fitting to a zero- or positive-slope straight line, with a single point array taken as having zero slope.

The programs for A222968, there is no canonical definition to state claims against.
-/

/-! ## A222968.P11143111500196466418

`A222969(A052905(n+3))`
-/

namespace A222968.P11143111500196466418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (A052905 (n + 3)).toNat

end

end A222968.P11143111500196466418

/-! ## A222968.P13576576574460198842

`A222969(A056119(n)+16)`
-/

namespace A222968.P13576576574460198842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (A056119 n + 16).toNat

end

end A222968.P13576576574460198842

/-! ## A222968.P17090422101332721445

`A222969(eq[3, A219347(n)])`
-/

namespace A222968.P17090422101332721445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222968.P17090422101332721445

/-! ## A222968.P5507356073572129623

`A222969(eq[5, A193592(n)])`
-/

namespace A222968.P5507356073572129623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222968.P5507356073572129623

/-! ## A222968.P11926333191969368095

`A222969(eq[8, A258709(n)])`
-/

namespace A222968.P11926333191969368095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222968.P11926333191969368095

/-!
# A222970: Number of 1 X (n+1) 0..1 arrays with every row least squares fitting to a positive-slope straight line and every column least squares fitting to a zero- or positive-slope straight line, with a single point array taken as having zero slope.

The programs for A222970, there is no canonical definition to state claims against.
-/

/-! ## A222970.P1899781263550971722

`A000079(n+1)-A133406(n+2)`
-/

namespace A222970.P1899781263550971722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A133406 (n + 2)

end

end A222970.P1899781263550971722

/-! ## A222970.P12697315703009214205

`A171559(n+1)-A133406(n+2)`
-/

namespace A222970.P12697315703009214205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 (n + 1) - A133406 (n + 2)

end

end A222970.P12697315703009214205

/-! ## A222970.P17844722458555099171

`2^(n+2)-A222855(n+2)`
-/

namespace A222970.P17844722458555099171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A222855 (n + 2)

end

end A222970.P17844722458555099171

/-! ## A222970.P15926984415849057203

`A222855(n+2)-A222955(n+2)`
-/

namespace A222970.P15926984415849057203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222855 (n + 2) - A222955 (n + 2)

end

end A222970.P15926984415849057203

/-! ## A222970.P13157389177790967696

`Δ[A136252(2*n)]%A222855(n+2)`
-/

namespace A222970.P13157389177790967696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A222855 (n + 2))

end

end A222970.P13157389177790967696

/-! ## A222970.P13607048531799892363

`record[A164587(n+1)]%A222855(n+2)`
-/

namespace A222970.P13607048531799892363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A222855 (n + 2))

end

end A222970.P13607048531799892363

/-! ## A222970.P16865997685074446601

`A048578(n+1)-(A222855(n+2)+1)`
-/

namespace A222970.P16865997685074446601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (n + 1) - (A222855 (n + 2) + 1)

end

end A222970.P16865997685074446601

/-! ## A222970.P8475695385578215636

`A000079(n+1)-A222955(n+2)/2`
-/

namespace A222970.P8475695385578215636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) - (A222955 (n + 2) : ℚ) / 2

end

end A222970.P8475695385578215636

/-! ## A222970.P18326081115026961963

`A171559(n+1)-A222955(n+2)/2`
-/

namespace A222970.P18326081115026961963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171559 (n + 1) : ℚ) - (A222955 (n + 2) : ℚ) / 2

end

end A222970.P18326081115026961963

/-! ## A222970.P16437933050619401748

`A158780(2*(n+3))%A222855(n+2)`
-/

namespace A222970.P16437933050619401748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158780 (2 * (n + 3))) (A222855 (n + 2))

end

end A222970.P16437933050619401748

/-!
# A222971: Number of 3 X (n+1) 0..1 arrays with every row least squares fitting to a positive-slope straight line and every column least squares fitting to a zero- or positive-slope straight line, with a single point array taken as having zero slope.

The programs for A222971, there is no canonical definition to state claims against.
-/

/-! ## A222971.P3147804637797197050

`A222843(n+1)*A222970(n+1)`
-/

namespace A222971.P3147804637797197050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222843 (n + 1) * A222970 (n + 1)

end

end A222971.P3147804637797197050

/-! ## A222971.P17065812371654082446

`(2^(n+1)-A133406(n+2))*A222843(n+1)`
-/

namespace A222971.P17065812371654082446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A133406 (n + 2)) * A222843 (n + 1)

end

end A222971.P17065812371654082446

/-! ## A222971.P6669027127415617055

`(2^(n+2)-A222855(n+2))*A222843(n+1)`
-/

namespace A222971.P6669027127415617055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) : ℤ) - A222855 (n + 2)) * A222843 (n + 1)

end

end A222971.P6669027127415617055

/-! ## A222971.P13624290206682660989

`(A222855(n+2)-A222955(n+2))*A222843(n+1)`
-/

namespace A222971.P13624290206682660989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A222855 (n + 2) - A222955 (n + 2)) * A222843 (n + 1)

end

end A222971.P13624290206682660989

/-! ## A222971.P831415410904104609

`A222844(n+1)*A222970(n+1)/A223310(n+1)`
-/

namespace A222971.P831415410904104609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222844 (n + 1) * A222970 (n + 1) : ℚ) / (A223310 (n + 1) : ℚ)

end

end A222971.P831415410904104609

/-!
# A222972: Number of 4 X (n+1) 0..1 arrays with every row least squares fitting to a positive-slope straight line and every column least squares fitting to a zero- or positive-slope straight line, with a single point array taken as having zero slope.

The programs for A222972, there is no canonical definition to state claims against.
-/

/-! ## A222972.P8017739166645557448

`A222973(n+1)/A222970(n+1)`
-/

namespace A222972.P8017739166645557448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222973 (n + 1) : ℚ) / (A222970 (n + 1) : ℚ)

end

end A222972.P8017739166645557448

/-! ## A222972.P12053500711956184330

`A222973(n+1)/A222969(A000124(n))`
-/

namespace A222972.P12053500711956184330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222973 (n + 1) : ℚ) / (A222969 (A000124 n).toNat : ℚ)

end

end A222972.P12053500711956184330

/-! ## A222972.P15001120980469136265

`A222843(n+1)/A222971(n+1)*A222973(n+1)`
-/

namespace A222972.P15001120980469136265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222843 (n + 1) : ℚ) / (A222971 (n + 1) : ℚ) * (A222973 (n + 1) : ℚ)

end

end A222972.P15001120980469136265

/-! ## A222972.P2721163695218228832

`A222969(∑[n+3]+7)`
-/

namespace A222972.P2721163695218228832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222972.P2721163695218228832

/-!
# A222973: Number of 5 X (n+1) 0..1 arrays with every row least squares fitting to a positive-slope straight line and every column least squares fitting to a zero- or positive-slope straight line, with a single point array taken as having zero slope.

The programs for A222973, there is no canonical definition to state claims against.
-/

/-! ## A222973.P17575614300754988174

`A222970(n+1)*A222972(n+1)`
-/

namespace A222973.P17575614300754988174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222970 (n + 1) * A222972 (n + 1)

end

end A222973.P17575614300754988174

/-! ## A222973.P6189161722808499692

`(2^(n+2)-A222855(n+2))*A222972(n+1)`
-/

namespace A222973.P6189161722808499692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) : ℤ) - A222855 (n + 2)) * A222972 (n + 1)

end

end A222973.P6189161722808499692

/-! ## A222973.P12824498309009015935

`A222969(A000124(n))*A222972(n+1)`
-/

namespace A222973.P12824498309009015935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (A000124 n).toNat * A222972 (n + 1)

end

end A222973.P12824498309009015935

/-! ## A222973.P5773557653385868796

`A222971(n+1)/A222843(n+1)*A222972(n+1)`
-/

namespace A222973.P5773557653385868796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222971 (n + 1) : ℚ) / (A222843 (n + 1) : ℚ) * (A222972 (n + 1) : ℚ)

end

end A222973.P5773557653385868796

/-! ## A222973.P7792816084178096077

`A222969(∑[n+3]+7)*A222970(n+1)`
-/

namespace A222973.P7792816084178096077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (∑ j ∈ Finset.range (n + 1), f1 j + 7) * A222970 (n + 1)

end

end A222973.P7792816084178096077

/-!
# A222974: Number of 6 X (n+1) 0..1 arrays with every row least squares fitting to a positive-slope straight line and every column least squares fitting to a zero- or positive-slope straight line, with a single point array taken as having zero slope.

The programs for A222974, there is no canonical definition to state claims against.
-/

/-! ## A222974.P6929436138235708525

`A222969(A056115(n)+21)`
-/

namespace A222974.P6929436138235708525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (A056115 n + 21).toNat

end

end A222974.P6929436138235708525

/-! ## A222974.P8703348254645879593

`A222969(A167614(n+4)+3)`
-/

namespace A222974.P8703348254645879593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (A167614 (n + 4) + 3).toNat

end

end A222974.P8703348254645879593

/-! ## A222974.P1679411220270470478

`A222969(A000096(n+4)+7)`
-/

namespace A222974.P1679411220270470478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (A000096 (n + 4) + 7).toNat

end

end A222974.P1679411220270470478

/-! ## A222974.P5631397068714957107

`A222969(eq[6, A130270(n+1)])`
-/

namespace A222974.P5631397068714957107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222974.P5631397068714957107

/-! ## A222974.P14907451183307146632

`A222969(eq[7, A131818(n+1)])`
-/

namespace A222974.P14907451183307146632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222974.P14907451183307146632

/-!
# A222975: Smallest member of sociable quadruples with signature: abundant, abundant, deficient, deficient.

The programs for A222975, there is no canonical definition to state claims against.
-/

/-! ## A222975.P13553150133764318377

`A090615(lt[A337886(2*(n+1)), A304004(n+1)])`
-/

namespace A222975.P13553150133764318377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337886 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090615 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A222975.P13553150133764318377

/-! ## A222975.P6279397718246192416

`A090615(∑[A233206(2*n+1)!])`
-/

namespace A222975.P6279397718246192416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A233206 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222975.P6279397718246192416

/-!
# A222979: Number of n X n 0..2 arrays with no more than floor(n X n/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222979, there is no canonical definition to state claims against.
-/

/-! ## A222979.P8270028732054338664

`A222986(∑[4*n]+1)`
-/

namespace A222979.P8270028732054338664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222979.P8270028732054338664

/-! ## A222979.P389477313701517356

`record[gcd(A114327(n), A222986(n+1))]`
-/

namespace A222979.P389477313701517356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A222986 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222979.P389477313701517356

/-! ## A222979.P13874825421371182776

`or(A000007(n), A222986(A001844(n)))`
-/

namespace A222979.P13874825421371182776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222986 (A001844 n).toNat)

end

end A222979.P13874825421371182776

/-! ## A222979.P12288680195735808699

`Δ[A007953(n)]*A222986(A001844(n))`
-/

namespace A222979.P12288680195735808699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A222986 (A001844 n).toNat

end

end A222979.P12288680195735808699

/-! ## A222979.P428178534510728327

`A222986(A001844(n))+A000007(n+1)`
-/

namespace A222979.P428178534510728327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A001844 n).toNat + A000007 (n + 1)

end

end A222979.P428178534510728327

/-!
# A222980: Number of nX2 0..2 arrays with no more than floor(nX2/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222980, there is no canonical definition to state claims against.
-/

/-! ## A222980.P5595828223166041859

`A222364(2*(n+1))`
-/

namespace A222980.P5595828223166041859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222364 (2 * (n + 1))

end

end A222980.P5595828223166041859

/-! ## A222980.P14783610634904166078

`record[A222364(A018838(n+1))]`
-/

namespace A222980.P14783610634904166078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222364 (A018838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222980.P14783610634904166078

/-! ## A222980.P16249408609947437852

`record[A222364(n+2)/A033999(n)]`
-/

namespace A222980.P16249408609947437852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222364 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222980.P16249408609947437852

/-! ## A222980.P14663495443141474485

`record[gcd(A079981(n), A222364(n+1))]`
-/

namespace A222980.P14663495443141474485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079981 n) (A222364 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222980.P14663495443141474485

/-! ## A222980.P8704042213339341684

`record[and(A033999(n), A222364(n+1))]`
-/

namespace A222980.P8704042213339341684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A222364 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222980.P8704042213339341684

/-! ## A222980.P2217247881116791840

`record[and(A222364(n+1), A280193(n))]`
-/

namespace A222980.P2217247881116791840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A222364 (n + 1)) (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222980.P2217247881116791840

/-! ## A222980.P15836439176011986300

`A222364(A103517(n))%A222357(n+1)`
-/

namespace A222980.P15836439176011986300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222364 (A103517 n).toNat) (A222357 (n + 1))

end

end A222980.P15836439176011986300

/-!
# A222981: Number of nX3 0..2 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222981, there is no canonical definition to state claims against.
-/

/-! ## A222981.P7130108722995516492

`A222986(∑[n+3]+1)`
-/

namespace A222981.P7130108722995516492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222981.P7130108722995516492

/-! ## A222981.P13679138566843844614

`record[A222986(A130297(n+1))]`
-/

namespace A222981.P13679138566843844614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222981.P13679138566843844614

/-! ## A222981.P439537670487224768

`record[A222986(A198464(n+1))]`
-/

namespace A222981.P439537670487224768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222981.P439537670487224768

/-! ## A222981.P4724258794946735291

`record[gcd(A222986(n+1), A300184(n))]`
-/

namespace A222981.P4724258794946735291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222986 (n + 1)) (A300184 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222981.P4724258794946735291

/-! ## A222981.P7375915742752043730

`record[char[A055998(n)]*A222986(n+1)]`
-/

namespace A222981.P7375915742752043730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222981.P7375915742752043730

/-!
# A222982: Number of nX4 0..2 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222982, there is no canonical definition to state claims against.
-/

/-! ## A222982.P8747453338657377241

`A222986(A141214(n+1))`
-/

namespace A222982.P8747453338657377241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A141214 (n + 1)).toNat

end

end A222982.P8747453338657377241

/-! ## A222982.P951350472992829580

`A222986(A055998(n+2))`
-/

namespace A222982.P951350472992829580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A055998 (n + 2)).toNat

end

end A222982.P951350472992829580

/-! ## A222982.P15566837855323058235

`A222986(A155212(n)+5)`
-/

namespace A222982.P15566837855323058235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A155212 n + 5).toNat

end

end A222982.P15566837855323058235

/-! ## A222982.P5152454834935007513

`A222986(A056000(n)+7)`
-/

namespace A222982.P5152454834935007513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A056000 n + 7).toNat

end

end A222982.P5152454834935007513

/-! ## A222982.P5822615212190760972

`A222986(eq[3, A193592(n)])`
-/

namespace A222982.P5822615212190760972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222982.P5822615212190760972

/-!
# A222983: Number of nX5 0..2 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222983, there is no canonical definition to state claims against.
-/

/-! ## A222983.P14664284343188435080

`A222986(Δ[A264443(n)])`
-/

namespace A222983.P14664284343188435080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (f1 (n + 1) - f1 n).toNat

end

end A222983.P14664284343188435080

/-! ## A222983.P17268543586557193533

`A222986(eq[4, A193592(n)])`
-/

namespace A222983.P17268543586557193533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222983.P17268543586557193533

/-! ## A222983.P15637486801240764290

`A222986(Δ[A023545(n+1)])`
-/

namespace A222983.P15637486801240764290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (f1 (n + 1) - f1 n).toNat

end

end A222983.P15637486801240764290

/-! ## A222983.P6714455116476488483

`A222986(A155212(n+1)+4)`
-/

namespace A222983.P6714455116476488483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A155212 (n + 1) + 4).toNat

end

end A222983.P6714455116476488483

/-! ## A222983.P7776760448225838003

`A222986(eq[5, A194921(n+1)])`
-/

namespace A222983.P7776760448225838003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222983.P7776760448225838003

/-!
# A222984: Number of nX6 0..2 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222984, there is no canonical definition to state claims against.
-/

/-! ## A222984.P3578029460487659011

`A222986(eq[3, A219347(n)])`
-/

namespace A222984.P3578029460487659011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222984.P3578029460487659011

/-! ## A222984.P18073759532666054678

`A222986(eq[5, A193592(n)])`
-/

namespace A222984.P18073759532666054678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222984.P18073759532666054678

/-! ## A222984.P9242565980723786217

`A222986(eq[8, A258709(n)])`
-/

namespace A222984.P9242565980723786217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222984.P9242565980723786217

/-! ## A222984.P7612087391913083278

`A222986(eq[6, A200370(n+1)])`
-/

namespace A222984.P7612087391913083278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222984.P7612087391913083278

/-! ## A222984.P10835367418725671718

`A222986(eq[8, A185782(n+1)])`
-/

namespace A222984.P10835367418725671718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222984.P10835367418725671718

/-!
# A222985: Number of n X 7 0..2 arrays with no more than floor(n*7/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222985, there is no canonical definition to state claims against.
-/

/-! ## A222985.P7376184127614664990

`A222986(eq[4, A219347(n)])`
-/

namespace A222985.P7376184127614664990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222985.P7376184127614664990

/-! ## A222985.P17178126177006105131

`A222986(eq[6, A193592(n)])`
-/

namespace A222985.P17178126177006105131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222985.P17178126177006105131

/-! ## A222985.P13990169096820830988

`A222986(eq[7, A200370(n+1)])`
-/

namespace A222985.P13990169096820830988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222985.P13990169096820830988

/-! ## A222985.P17152374774246797236

`A222986(eq[10, A185782(n+1)])`
-/

namespace A222985.P17152374774246797236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222985.P17152374774246797236

/-! ## A222985.P12800555956921593847

`A222986(A166136(n+4)+2*n+1)`
-/

namespace A222985.P12800555956921593847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A222985.P12800555956921593847

/-!
# A222986: T(n,k)=Number of nXk 0..2 arrays with no more than floor(nXk/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222986, there is no canonical definition to state claims against.
-/

/-! ## A222986.P1014880955126529884

`A222906(n+1)+A178798(A000096(n))`
-/

namespace A222986.P1014880955126529884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (n + 1) + A178798 (A000096 n).toNat

end

end A222986.P1014880955126529884

/-! ## A222986.P17165435900960712374

`A222906(n+1)-A025469(A001787(n))`
-/

namespace A222986.P17165435900960712374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (n + 1) - A025469 (A001787 n).toNat

end

end A222986.P17165435900960712374

/-! ## A222986.P1326938017676477079

`A222906(n+1)-A025469(A002523(n))`
-/

namespace A222986.P1326938017676477079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (n + 1) - A025469 (A002523 n).toNat

end

end A222986.P1326938017676477079

/-! ## A222986.P17752193140136691016

`A222906(n+1)-A112765(A001006(n))`
-/

namespace A222986.P17752193140136691016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (n + 1) - A112765 (A001006 n).toNat

end

end A222986.P17752193140136691016

/-! ## A222986.P11672463928149455692

`A222906(n+1)-A025469(A210344(n))`
-/

namespace A222986.P11672463928149455692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (n + 1) - A025469 (A210344 n).toNat

end

end A222986.P11672463928149455692

/-!
# A222987: Number of 2Xn 0..2 arrays with no more than floor(2Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222987, there is no canonical definition to state claims against.
-/

/-! ## A222987.P8004142252396081533

`A222986(∑[n+1]+2)`
-/

namespace A222987.P8004142252396081533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222987.P8004142252396081533

/-! ## A222987.P830764787820202082

`record[A222986(A025810(n)+2)]`
-/

namespace A222987.P830764787820202082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A025810 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222987.P830764787820202082

/-! ## A222987.P1269760422119773458

`record[A222986(C(A034968(n)+2, 2)+2)]`
-/

namespace A222987.P1269760422119773458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (Nat.choose (A034968 n + 2).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222987.P1269760422119773458

/-! ## A222987.P12877900745971692118

`lcm(A158388(n), A222986(A167499(n)-3))`
-/

namespace A222987.P12877900745971692118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A222986 (A167499 n - 3).toNat)

end

end A222987.P12877900745971692118

/-! ## A222987.P13025146868857788007

`A222986(A133263(n+1))%A222575(n+1)`
-/

namespace A222987.P13025146868857788007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222986 (A133263 (n + 1)).toNat) (A222575 (n + 1))

end

end A222987.P13025146868857788007

/-!
# A222988: Number of 3Xn 0..2 arrays with no more than floor(3Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222988, there is no canonical definition to state claims against.
-/

/-! ## A222988.P2140938637151065021

`A222986(∑[n+2]+4)`
-/

namespace A222988.P2140938637151065021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222988.P2140938637151065021

/-! ## A222988.P9214036266553003451

`lcm((-1)^n, A222986(A167614(n+1)))`
-/

namespace A222988.P9214036266553003451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A222986 (A167614 (n + 1)).toNat)

end

end A222988.P9214036266553003451

/-! ## A222988.P10328394061746978669

`record[A222986(A167614(1-floor(sqrt(n))²+n))]`
-/

namespace A222988.P10328394061746978669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A167614 (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222988.P10328394061746978669

/-! ## A222988.P13383809448645442968

`A222986(A167614(n+1))%A224431(n)`
-/

namespace A222988.P13383809448645442968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222986 (A167614 (n + 1)).toNat) (A224431 n)

end

end A222988.P13383809448645442968

/-! ## A222988.P12962597215755629693

`or(A000007(n), A222986(A167614(n+1)))`
-/

namespace A222988.P12962597215755629693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222986 (A167614 (n + 1)).toNat)

end

end A222988.P12962597215755629693

/-!
# A222989: Number of 4Xn 0..2 arrays with no more than floor(4Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222989, there is no canonical definition to state claims against.
-/

/-! ## A222989.P7956124989201655144

`A222986(A141214(n)+7)`
-/

namespace A222989.P7956124989201655144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A141214 n + 7).toNat

end

end A222989.P7956124989201655144

/-! ## A222989.P5041550472682315487

`A222986(A052905(n)+9)`
-/

namespace A222989.P5041550472682315487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A052905 n + 9).toNat

end

end A222989.P5041550472682315487

/-! ## A222989.P4185196590925943611

`A222986(A055999(n)+10)`
-/

namespace A222989.P4185196590925943611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A055999 n + 10).toNat

end

end A222989.P4185196590925943611

/-! ## A222989.P2596910843552473557

`A222986(A167614(n+2)+1)`
-/

namespace A222989.P2596910843552473557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A167614 (n + 2) + 1).toNat

end

end A222989.P2596910843552473557

/-! ## A222989.P4840677779961720799

`A222986(A166136(n+2)-2)`
-/

namespace A222989.P4840677779961720799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A166136 (n + 2) - 2).toNat

end

end A222989.P4840677779961720799

/-!
# A222990: Number of 5Xn 0..2 arrays with no more than floor(5Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222990, there is no canonical definition to state claims against.
-/

/-! ## A222990.P12406914280181896669

`A222986(A167499(n+3))`
-/

namespace A222990.P12406914280181896669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A167499 (n + 3)).toNat

end

end A222990.P12406914280181896669

/-! ## A222990.P8523832194556741266

`A222986(A155212(n)+13)`
-/

namespace A222990.P8523832194556741266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A155212 n + 13).toNat

end

end A222990.P8523832194556741266

/-! ## A222990.P16841681661523119812

`A222986(A056000(n)+15)`
-/

namespace A222990.P16841681661523119812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A056000 n + 15).toNat

end

end A222990.P16841681661523119812

/-! ## A222990.P7679834040100775851

`A222986(eq[7, A066657(n)])`
-/

namespace A222990.P7679834040100775851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222990.P7679834040100775851

/-! ## A222990.P15900554219416769042

`A222986(A051936(n+4)+14)`
-/

namespace A222990.P15900554219416769042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A051936 (n + 4) + 14).toNat

end

end A222990.P15900554219416769042

/-!
# A222991: Number of 6Xn 0..2 arrays with no more than floor(6Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222991, there is no canonical definition to state claims against.
-/

/-! ## A222991.P10606570373861769902

`A222986(A166136(n+4))`
-/

namespace A222991.P10606570373861769902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A166136 (n + 4)).toNat

end

end A222991.P10606570373861769902

/-! ## A222991.P9695307559947268405

`A222986(A056115(n)+21)`
-/

namespace A222991.P9695307559947268405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A056115 n + 21).toNat

end

end A222991.P9695307559947268405

/-! ## A222991.P2404448950652977798

`A222986(A000124(n+5)+5)`
-/

namespace A222991.P2404448950652977798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A000124 (n + 5) + 5).toNat

end

end A222991.P2404448950652977798

/-! ## A222991.P16744612431688292514

`A222986(A000096(n+4)+7)`
-/

namespace A222991.P16744612431688292514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A000096 (n + 4) + 7).toNat

end

end A222991.P16744612431688292514

/-! ## A222991.P3010485953769994672

`A222986(eq[7, A131818(n+1)])`
-/

namespace A222991.P3010485953769994672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222991.P3010485953769994672

/-!
# A222992: Number of 7Xn 0..2 arrays with no more than floor(7Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222992, there is no canonical definition to state claims against.
-/

/-! ## A222992.P14161849014774971042

`A222986(eq[11, A066657(n)])`
-/

namespace A222992.P14161849014774971042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222992.P14161849014774971042

/-! ## A222992.P15895061366451843693

`A222986(A000124(n+6)+6)`
-/

namespace A222992.P15895061366451843693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A000124 (n + 6) + 6).toNat

end

end A222992.P15895061366451843693

/-! ## A222992.P14612081966740946210

`A222986(A055999(n+3)+13)`
-/

namespace A222992.P14612081966740946210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (A055999 (n + 3) + 13).toNat

end

end A222992.P14612081966740946210

/-! ## A222992.P5177915044302537403

`A222986(eq[6, A002262(n)]+1)`
-/

namespace A222992.P5177915044302537403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A222992.P5177915044302537403

/-! ## A222992.P14462779919438691184

`A222986(eq[8, A131818(n+1)])`
-/

namespace A222992.P14462779919438691184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222992.P14462779919438691184

/-!
# A222993: Number of n X 2 0..2 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A222993, the canonical program `A222993.P8408352810680705070` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222993 has offset 1).

The definition of A222993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222993.P8408352810680705070

`Δ[A112502(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A222993

/-- `Δ[A112502(n)]` -/
def P8408352810680705070.Spec : Prop :=
  ∀ n, P8408352810680705070.a n = A222993 (n + 1)

theorem P8408352810680705070.correct : P8408352810680705070.Spec := by
  intro n
  simp only [A222993, Nat.add_sub_cancel]

end A222993

/-! ## A222993.P9938917442797268046

`A112502(n+1)-A112502(n)`
-/

namespace A222993.P9938917442797268046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112502 (n + 1) - A112502 n

end

end A222993.P9938917442797268046

namespace A222993

/-- `A112502(n+1)-A112502(n)` -/
def P9938917442797268046.Spec : Prop :=
  ∀ n, P9938917442797268046.a n = A222993 (n + 1)

theorem P9938917442797268046.correct : P9938917442797268046.Spec := by
  intro n
  simp only [A222993, Nat.add_sub_cancel, A222993.P9938917442797268046.a, A222993.P8408352810680705070.f1, A222993.P8408352810680705070.a, SequenceMachineLib.memo_apply]

end A222993

/-! ## A222993.P11692039276987809569

`A253742(n+1)/9`
-/

namespace A222993.P11692039276987809569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253742 (n + 1) : ℚ) / 9

end

end A222993.P11692039276987809569

namespace A222993

/-- `A253742(n+1)/9` -/
def P11692039276987809569.Spec : Prop :=
  ∀ n, P11692039276987809569.a n = (A222993 (n + 1) : ℚ)

end A222993

/-! ## A222993.P5917525931662689969

`sqrt(A204223(2*n+1))`
-/

namespace A222993.P5917525931662689969
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204223 (2 * n + 1) : ℝ)

end

end A222993.P5917525931662689969

namespace A222993

/-- `sqrt(A204223(2*n+1))` -/
def P5917525931662689969.Spec : Prop :=
  ∀ n, P5917525931662689969.a n = (A222993 (n + 1) : ℝ)

end A222993

/-! ## A222993.P11331800047343978621

`A253749(A000124(n))/9`
-/

namespace A222993.P11331800047343978621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253749 (A000124 n).toNat : ℚ) / 9

end

end A222993.P11331800047343978621

namespace A222993

/-- `A253749(A000124(n))/9` -/
def P11331800047343978621.Spec : Prop :=
  ∀ n, P11331800047343978621.a n = (A222993 (n + 1) : ℚ)

end A222993

/-!
# A222994: Number of nX3 0..2 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A222994, there is no canonical definition to state claims against.
-/

/-! ## A222994.P4165311904298105575

`A222996(∑[n+2]+4)`
-/

namespace A222994.P4165311904298105575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222996 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222994.P4165311904298105575

/-! ## A222994.P3219542127193632997

`record[gcd(A222996(n+4), A244129(n+1))]`
-/

namespace A222994.P3219542127193632997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222996 (n + 4)) (A244129 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222994.P3219542127193632997

/-! ## A222994.P9010712073669109111

`abs(A222996(A167614(n+1))-n)+n`
-/

namespace A222994.P9010712073669109111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A222996 (A167614 (n + 1)).toNat - (n : ℤ)| + (n : ℤ)

end

end A222994.P9010712073669109111

/-! ## A222994.P10342598263831730117

`A222996(A167614(n+1))+A014083(n)`
-/

namespace A222994.P10342598263831730117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222996 (A167614 (n + 1)).toNat + A014083 n

end

end A222994.P10342598263831730117

/-! ## A222994.P13947138911460148340

`A222996(A167614(n+1))+A031346(n)`
-/

namespace A222994.P13947138911460148340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222996 (A167614 (n + 1)).toNat + A031346 n

end

end A222994.P13947138911460148340

/-!
# A222995: Number of n X 4 0..2 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A222995, there is no canonical definition to state claims against.
-/

/-! ## A222995.P11614895041582082662

`A222996(∑[n+3]+7)`
-/

namespace A222995.P11614895041582082662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222996 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222995.P11614895041582082662

/-! ## A222995.P9502734793625284578

`A066657(A000124(n))*A222996(A141214(n)+7)`
-/

namespace A222995.P9502734793625284578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (A000124 n).toNat * A222996 (A141214 n + 7).toNat

end

end A222995.P9502734793625284578

/-! ## A222995.P12559574127265112861

`A066657(A000124(n))*A222996(A052905(n)+9)`
-/

namespace A222995.P12559574127265112861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (A000124 n).toNat * A222996 (A052905 n + 9).toNat

end

end A222995.P12559574127265112861

/-! ## A222995.P2946815034922467816

`A066657(A000124(n))*A222996(A055999(n)+10)`
-/

namespace A222995.P2946815034922467816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (A000124 n).toNat * A222996 (A055999 n + 10).toNat

end

end A222995.P2946815034922467816

/-!
# A222997: Number of nX3 0..2 arrays with no more than floor(nX3/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222997, there is no canonical definition to state claims against.
-/

/-! ## A222997.P6941715751268152920

`A223000(∑[n+3]+1)`
-/

namespace A222997.P6941715751268152920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222997.P6941715751268152920

/-! ## A222997.P6914690210114227700

`A223000(A052905(n)+3)+A185294(n)`
-/

namespace A222997.P6914690210114227700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A052905 n + 3).toNat + A185294 n

end

end A222997.P6914690210114227700

/-! ## A222997.P3788568954862106360

`A223000(A052905(n)+3)+A034540(n+1)`
-/

namespace A222997.P3788568954862106360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A052905 n + 3).toNat + A034540 (n + 1)

end

end A222997.P3788568954862106360

/-! ## A222997.P9659533256413214891

`A223000(A052905(n)+3)%A222998(n+1)`
-/

namespace A222997.P9659533256413214891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223000 (A052905 n + 3).toNat) (A222998 (n + 1))

end

end A222997.P9659533256413214891

/-! ## A222997.P11154929673680699740

`A007318(A007318(n))*A223000(A052905(n)+3)`
-/

namespace A222997.P11154929673680699740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 n).toNat * A223000 (A052905 n + 3).toNat

end

end A222997.P11154929673680699740

/-!
# A222998: Number of nX4 0..2 arrays with no more than floor(nX4/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222998, there is no canonical definition to state claims against.
-/

/-! ## A222998.P4913979861558388112

`A223000(A141214(n+1))`
-/

namespace A222998.P4913979861558388112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A141214 (n + 1)).toNat

end

end A222998.P4913979861558388112

/-! ## A222998.P14718669354887801762

`A223000(A055998(n+2))`
-/

namespace A222998.P14718669354887801762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A055998 (n + 2)).toNat

end

end A222998.P14718669354887801762

/-! ## A222998.P3784121347875870926

`A223000(A155212(n)+5)`
-/

namespace A222998.P3784121347875870926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A155212 n + 5).toNat

end

end A222998.P3784121347875870926

/-! ## A222998.P6132989741648509824

`A223000(A056000(n)+7)`
-/

namespace A222998.P6132989741648509824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A056000 n + 7).toNat

end

end A222998.P6132989741648509824

/-!
# A222999: Number of nX5 0..2 arrays with no more than floor(nX5/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222999, there is no canonical definition to state claims against.
-/

/-! ## A222999.P13221223653835384935

`A223000(∑[n+5]+6)`
-/

namespace A222999.P13221223653835384935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222999.P13221223653835384935

/-! ## A222999.P13194906728608957844

`A223000(A060577(n+4))+A035584(n)`
-/

namespace A222999.P13194906728608957844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A060577 (n + 4)).toNat + A035584 n

end

end A222999.P13194906728608957844

/-! ## A222999.P12650782792146859399

`A223000(A060577(n+4))+A185264(n)`
-/

namespace A222999.P12650782792146859399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A060577 (n + 4)).toNat + A185264 n

end

end A222999.P12650782792146859399

