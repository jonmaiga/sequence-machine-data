import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A253400: Number of (n+1)X(1+1) 0..2 arrays with every 2X2 subblock diagonal maximum plus antidiagonal minimum unequal to its neighbors horizontally, vertically and ne+sw antidiagonally.

The programs for A253400, there is no canonical definition to state claims against.
-/

/-! ## A253400.P8620487895571087132

`A253407(∑[n]+1)`
-/

namespace A253400.P8620487895571087132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253400.P8620487895571087132

/-! ## A253400.P15125921456660396575

`record[A253407(n+1)/A013612(n)]`
-/

namespace A253400.P15125921456660396575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253407 (n + 1) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253400.P15125921456660396575

/-! ## A253400.P6611116623838285125

`record[A253407(n+1)/A074909(n)]`
-/

namespace A253400.P6611116623838285125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253407 (n + 1) : ℚ) / (A074909 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253400.P6611116623838285125

/-! ## A253400.P1684953376886429209

`record[A253407(n+1)/A254414(n)]`
-/

namespace A253400.P1684953376886429209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253407 (n + 1) : ℚ) / (A254414 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253400.P1684953376886429209

/-! ## A253400.P11964273292059255447

`record[A253407(n+1)/A294761(n)]`
-/

namespace A253400.P11964273292059255447
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253407 (n + 1) : ℚ) / (A294761 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253400.P11964273292059255447

/-!
# A253401: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock diagonal maximum plus antidiagonal minimum unequal to its neighbors horizontally, vertically and ne+sw antidiagonally.

The programs for A253401, there is no canonical definition to state claims against.
-/

/-! ## A253401.P6945133035322592406

`A253407(∑[n+1]+2)`
-/

namespace A253401.P6945133035322592406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253401.P6945133035322592406

/-! ## A253401.P9723641949290538310

`lcm(2, A253407(A000096(n+1)))`
-/

namespace A253401.P9723641949290538310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253407 (A000096 (n + 1)).toNat)

end

end A253401.P9723641949290538310

/-! ## A253401.P7610413634518182663

`char[A018852(n)]*A253407(A000096(n+1))`
-/

namespace A253401.P7610413634518182663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A253407 (A000096 (n + 1)).toNat

end

end A253401.P7610413634518182663

/-! ## A253401.P10345756727153422054

`A253407(A000096(n+1))+A000007(n+1)`
-/

namespace A253401.P10345756727153422054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A253401.P10345756727153422054

/-! ## A253401.P17906030975345373928

`A253407(A000096(n+1))+char[A253407(n+2)]`
-/

namespace A253401.P17906030975345373928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253401.P17906030975345373928

/-!
# A253402: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock diagonal maximum plus antidiagonal minimum unequal to its neighbors horizontally, vertically and ne+sw antidiagonally.

The programs for A253402, there is no canonical definition to state claims against.
-/

/-! ## A253402.P7097697110719931796

`A253407(A167614(n+1))`
-/

namespace A253402.P7097697110719931796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A167614 (n + 1)).toNat

end

end A253402.P7097697110719931796

/-! ## A253402.P1455235232793223358

`A253407(A373663(n+1))`
-/

namespace A253402.P1455235232793223358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A373663 (n + 1)).toNat

end

end A253402.P1455235232793223358

/-! ## A253402.P1419047064297710608

`A253407(A055998(n)+6)`
-/

namespace A253402.P1419047064297710608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A055998 n + 6).toNat

end

end A253402.P1419047064297710608

/-! ## A253402.P2784421243182465651

`A253407(A046691(n)+7)`
-/

namespace A253402.P2784421243182465651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A046691 n + 7).toNat

end

end A253402.P2784421243182465651

/-! ## A253402.P16256827486300221301

`A253407(A167499(n)+n)`
-/

namespace A253402.P16256827486300221301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A167499 n + (n : ℤ)).toNat

end

end A253402.P16256827486300221301

/-!
# A253403: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock diagonal maximum plus antidiagonal minimum unequal to its neighbors horizontally, vertically and ne+sw antidiagonally.

The programs for A253403, there is no canonical definition to state claims against.
-/

/-! ## A253403.P15759793389444028191

`A253407(A374004(n+1))`
-/

namespace A253403.P15759793389444028191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A374004 (n + 1)).toNat

end

end A253403.P15759793389444028191

/-! ## A253403.P14000933000695104527

`A253407(A141214(n)+7)`
-/

namespace A253403.P14000933000695104527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A141214 n + 7).toNat

end

end A253403.P14000933000695104527

/-! ## A253403.P5611665157891049197

`A253407(A055999(n)+10)`
-/

namespace A253403.P5611665157891049197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A055999 n + 10).toNat

end

end A253403.P5611665157891049197

/-! ## A253403.P6222011681013838478

`A253407(A167614(n+2)+1)`
-/

namespace A253403.P6222011681013838478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A167614 (n + 2) + 1).toNat

end

end A253403.P6222011681013838478

/-! ## A253403.P16692032166815001288

`A253407(A055998(n+2))`
-/

namespace A253403.P16692032166815001288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A055998 (n + 2)).toNat

end

end A253403.P16692032166815001288

/-!
# A253404: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock diagonal maximum plus antidiagonal minimum unequal to its neighbors horizontally, vertically and ne+sw antidiagonally.

The programs for A253404, there is no canonical definition to state claims against.
-/

/-! ## A253404.P15495634448323956651

`A253407(A374005(n+1))`
-/

namespace A253404.P15495634448323956651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A374005 (n + 1)).toNat

end

end A253404.P15495634448323956651

/-! ## A253404.P8460250878053357592

`A253407(A167499(n+3))`
-/

namespace A253404.P8460250878053357592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A167499 (n + 3)).toNat

end

end A253404.P8460250878053357592

/-! ## A253404.P15418548607467109353

`A253407(A056000(n)+15)`
-/

namespace A253404.P15418548607467109353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A056000 n + 15).toNat

end

end A253404.P15418548607467109353

/-! ## A253404.P16201241572783234327

`A253407(∑[n+5]+6)`
-/

namespace A253404.P16201241572783234327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A253404.P16201241572783234327

/-!
# A253405: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum plus antidiagonal minimum unequal to its neighbors horizontally, vertically and ne+sw antidiagonally.

The programs for A253405, there is no canonical definition to state claims against.
-/

/-! ## A253405.P14073882567071595797

`A253407(A374007(n+1))`
-/

namespace A253405.P14073882567071595797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A374007 (n + 1)).toNat

end

end A253405.P14073882567071595797

/-! ## A253405.P13693581685874542603

`A253407(A052905(n+3))`
-/

namespace A253405.P13693581685874542603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A052905 (n + 3)).toNat

end

end A253405.P13693581685874542603

/-! ## A253405.P2531173242983362644

`A253407(eq[5, A193592(n)])`
-/

namespace A253405.P2531173242983362644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253405.P2531173242983362644

/-! ## A253405.P16626608605265548573

`A253407(Δ[Δ[A006504(n+1)]])`
-/

namespace A253405.P16626608605265548573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (f1 (n + 1) - f1 n).toNat

end

end A253405.P16626608605265548573

/-! ## A253405.P389759018731921221

`A253407(A005408(n)+A056000(n)+15)`
-/

namespace A253405.P389759018731921221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A005408 n + (A056000 n + 15)).toNat

end

end A253405.P389759018731921221

/-!
# A253406: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock diagonal maximum plus antidiagonal minimum unequal to its neighbors horizontally, vertically and ne+sw antidiagonally.

The programs for A253406, there is no canonical definition to state claims against.
-/

/-! ## A253406.P13118685771728042197

`A253407(A374008(n+1))`
-/

namespace A253406.P13118685771728042197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A374008 (n + 1)).toNat

end

end A253406.P13118685771728042197

/-! ## A253406.P11644759809068303128

`A253407(eq[8, A131818(n+1)])`
-/

namespace A253406.P11644759809068303128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253406.P11644759809068303128

/-! ## A253406.P14029574280787345524

`A253407(A055999(n+4))`
-/

namespace A253406.P14029574280787345524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (A055999 (n + 4)).toNat

end

end A253406.P14029574280787345524

/-! ## A253406.P5477460977191205258

`A253407(eq[6, A193592(n)])`
-/

namespace A253406.P5477460977191205258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253406.P5477460977191205258

/-! ## A253406.P9688230501575944715

`A253407(eq[32, A057728(n+1)])`
-/

namespace A253406.P9688230501575944715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253406.P9688230501575944715

/-!
# A253408: Values of difference z-y that solve equation x^2 + y^2 = z^2 + 2.

The programs for A253408, there is no canonical definition to state claims against.
-/

/-! ## A253408.P6822916342237590094

`Δ[A058529(n-1)+a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A253408.P6822916342237590094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A058529 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253408.P6822916342237590094

/-! ## A253408.P1122423620278817825

`∪[or(1, 2*(n²-1)), A058529(n+1)]`
-/

namespace A253408.P1122423620278817825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * ((n ^ 2 : ℤ) - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253408.P1122423620278817825

/-! ## A253408.P17094850564757987365

`∪[A058529(n+1), A056220(n)]`
-/

namespace A253408.P17094850564757987365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253408.P17094850564757987365

/-! ## A253408.P629504087083036778

`∪[A058529(n+1), A057769(n)]`
-/

namespace A253408.P629504087083036778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253408.P629504087083036778

/-! ## A253408.P12542224247751523907

`∪[A058529(n+1), A165568(n)]`
-/

namespace A253408.P12542224247751523907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165568 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253408.P12542224247751523907

/-! ## A253408.P16950741101257486562

`∪[A058529(n+1), A243132(n)]`
-/

namespace A253408.P16950741101257486562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243132 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253408.P16950741101257486562

/-! ## A253408.P3305761155540051365

`A058529(A028310(n))-floor(acot(n)²)`
-/

namespace A253408.P3305761155540051365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A253408.P3305761155540051365

/-! ## A253408.P7691120248884681335

`∪[A058529(n+1), A093112(n+1)]`
-/

namespace A253408.P7691120248884681335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253408.P7691120248884681335

/-! ## A253408.P1899577032454265936

`∪[A058529(n+1), A345702(n+1)]`
-/

namespace A253408.P1899577032454265936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253408.P1899577032454265936

/-! ## A253408.P3759155578761711356

`record[-A001057(A057126(n+1))]`
-/

namespace A253408.P3759155578761711356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A057126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253408.P3759155578761711356

/-!
# A253409: The number of ways to write an n-bit binary string and then define each run of ones as an element in an equivalence relation, and each run of zeros as an element in a second equivalence relation.

The programs for A253409, there is no canonical definition to state claims against.
-/

/-! ## A253409.P5397719477477584126

`A306671(A000142(n))+A302646(n)`
-/

namespace A253409.P5397719477477584126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (A000142 n).toNat + A302646 n

end

end A253409.P5397719477477584126

/-! ## A253409.P2665064056315192856

`∑[A324695(a(n-1)+1)-1]` with `a(0)=1, a(1)=1`
-/

namespace A253409.P2665064056315192856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A324695 (f1 (n - 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253409.P2665064056315192856

/-! ## A253409.P9114867139660972581

`A344292(ceil(2^(n-1)))+ceil((13*n-6)/47)`
-/

namespace A253409.P9114867139660972581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344292 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ⌈((13 * n : ℤ) - 6 : ℚ) / 47⌉

end

end A253409.P9114867139660972581

/-!
# A253410: Indices of centered pentagonal numbers (A005891) which are also centered octagonal numbers (A016754).

The programs for A253410, there is no canonical definition to state claims against.
-/

/-! ## A253410.P17276557399056786943

`A254332(A014601(n)+1)`
-/

namespace A253410.P17276557399056786943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (A014601 n + 1).toNat

end

end A253410.P17276557399056786943

/-! ## A253410.P13313272703311981529

`A254332(A042948(n+1))`
-/

namespace A253410.P13313272703311981529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (A042948 (n + 1)).toNat

end

end A253410.P13313272703311981529

/-! ## A253410.P1413500558204574088

`A254332(A338062(n+1))`
-/

namespace A253410.P1413500558204574088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (A338062 (n + 1)).toNat

end

end A253410.P1413500558204574088

/-! ## A253410.P8513688858702334749

`A254332(∑[gcd(3, A000051(n))])`
-/

namespace A253410.P8513688858702334749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253410.P8513688858702334749

/-! ## A253410.P10576098507143214671

`A254332(∑[A005408(n)%4])`
-/

namespace A253410.P10576098507143214671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253410.P10576098507143214671

/-! ## A253410.P686419004176758579

`A254332(∑[and(3, A005408(n))])`
-/

namespace A253410.P686419004176758579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253410.P686419004176758579

/-! ## A253410.P8544367709667922804

`A254332(A007310(n+1)-n)`
-/

namespace A253410.P8544367709667922804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (A007310 (n + 1) - (n : ℤ)).toNat

end

end A253410.P8544367709667922804

/-! ## A253410.P14019866221571789084

`A254332(A005408(n)+and(1, n))`
-/

namespace A253410.P14019866221571789084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (A005408 n + (Nat.land 1 n : ℤ)).toNat

end

end A253410.P14019866221571789084

/-! ## A253410.P14882596565890254661

`A254332(A005408(n)+A000035(n))`
-/

namespace A253410.P14882596565890254661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (A005408 n + A000035 n).toNat

end

end A253410.P14882596565890254661

/-! ## A253410.P6799153118490864801

`A254332(A016813(n)-A042948(n))`
-/

namespace A253410.P6799153118490864801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (A016813 n - A042948 n).toNat

end

end A253410.P6799153118490864801

/-!
# A253411: Indices of centered octagonal numbers (A016754) which are also centered pentagonal numbers (A005891).

The programs for A253411, there is no canonical definition to state claims against.
-/

/-! ## A253411.P11832419329299030762

`A078986(ceil(n/2))*A129557(n+1)`
-/

namespace A253411.P11832419329299030762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078986 ⌈(n : ℚ) / 2⌉.toNat * A129557 (n + 1)

end

end A253411.P11832419329299030762

/-! ## A253411.P1836945557318581460

`record[A253920(n+1)-A075836(2*n+1)]`
-/

namespace A253411.P1836945557318581460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253920 (n + 1) - A075836 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253411.P1836945557318581460

/-! ## A253411.P4839935077892514571

`record[ceil(A046196(n+1)/2)-A075836(2*n+1)]`
-/

namespace A253411.P4839935077892514571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046196 (n + 1) : ℚ) / 2⌉ - A075836 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253411.P4839935077892514571

/-! ## A253411.P17086847235817274437

`record[A251927(n+1)/2+1-A075836(2*n+1)]`
-/

namespace A253411.P17086847235817274437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251927 (n + 1) : ℚ) / 2 + 1 - (A075836 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253411.P17086847235817274437

/-! ## A253411.P4609489350791188590

`record[ceil(A075873(2*(n+1))/2)-A075836(2*n+1)]`
-/

namespace A253411.P4609489350791188590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075873 (2 * (n + 1)) : ℚ) / 2⌉ - A075836 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253411.P4609489350791188590

/-! ## A253411.P11995630807504236165

`record[(A046196(n+1)+1)/A020639(2*(n+1))-A075836(2*n+1)]`
-/

namespace A253411.P11995630807504236165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046196 (n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ) - (A075836 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253411.P11995630807504236165

/-!
# A253412: Number of n-bit legal binary words with maximal set of 1s.

The programs for A253412, the canonical program `A253412.P6199097095945039229` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253412 has offset 0).

The definition of A253412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253412.P6199097095945039229

`a(n-2)+a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4, a(5)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253412

/-- `a(n-2)+a(n-3)+a(n-4)-a(n-6)` -/
def P6199097095945039229.Spec : Prop :=
  ∀ n, P6199097095945039229.a n = A253412 n

theorem P6199097095945039229.correct : P6199097095945039229.Spec := by
  intro n
  simp only [A253412]

end A253412

/-! ## A253412.P17260945120596560033

`A143438(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A253412.P17260945120596560033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A143438 n + a (n - 2)

end

end A253412.P17260945120596560033

namespace A253412

/-- `A143438(n)+a(n-2)` -/
def P17260945120596560033.Spec : Prop :=
  ∀ n, P17260945120596560033.a n = A253412 n

end A253412

/-! ## A253412.P11710032299756975704

`A080013(n+1)+A080013(n+3)`
-/

namespace A253412.P11710032299756975704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (n + 1) + A080013 (n + 3)

end

end A253412.P11710032299756975704

namespace A253412

/-- `A080013(n+1)+A080013(n+3)` -/
def P11710032299756975704.Spec : Prop :=
  ∀ n, P11710032299756975704.a n = A253412 n

end A253412

/-! ## A253412.P8411059797561693153

`A080013(n)+Δ[A143438(n+4)]`
-/

namespace A253412.P8411059797561693153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 n + (f1 (n + 1) - f1 n)

end

end A253412.P8411059797561693153

namespace A253412

/-- `A080013(n)+Δ[A143438(n+4)]` -/
def P8411059797561693153.Spec : Prop :=
  ∀ n, P8411059797561693153.a n = A253412 n

end A253412

/-! ## A253412.P13215035655712985367

`A290273(n+1)-A080013(A020705(n))`
-/

namespace A253412.P13215035655712985367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290273 (n + 1) - A080013 (A020705 n).toNat

end

end A253412.P13215035655712985367

namespace A253412

/-- `A290273(n+1)-A080013(A020705(n))` -/
def P13215035655712985367.Spec : Prop :=
  ∀ n, P13215035655712985367.a n = A253412 n

end A253412

/-!
# A253413: Number of n-bit legal circular binary words with maximal set of 1's.

The programs for A253413, the canonical program `A253413.P12360331439079474260` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253413 has offset 0).

The definition of A253413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253413.P12360331439079474260

`a(n-2)+a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=5, a(6)=5, a(7)=14`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253413

/-- `a(n-2)+a(n-3)+a(n-4)-a(n-6)` -/
def P12360331439079474260.Spec : Prop :=
  ∀ n, P12360331439079474260.a n = A253413 n

theorem P12360331439079474260.correct : P12360331439079474260.Spec := by
  intro n
  simp only [A253413]

end A253413

/-!
# A253414: G.f. satisfies (1+x^2)*g(x) = 1 + x*g(x^2).

The programs for A253414, the canonical program `A253414.P8812429951265453479` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253414 has offset 0).

The definition of A253414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253414.P10131675825450005359

`A014577(n)-char[A091072(n+1)+1]`
-/

namespace A253414.P10131675825450005359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253414.P10131675825450005359

namespace A253414

/-- `A014577(n)-char[A091072(n+1)+1]` -/
def P10131675825450005359.Spec : Prop :=
  ∀ n, P10131675825450005359.a n = A253414 n

end A253414

/-! ## A253414.P13728605617514725075

`A014577(n)-A073089(A004280(n+1))`
-/

namespace A253414.P13728605617514725075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n - A073089 (A004280 (n + 1)).toNat

end

end A253414.P13728605617514725075

namespace A253414

/-- `A014577(n)-A073089(A004280(n+1))` -/
def P13728605617514725075.Spec : Prop :=
  ∀ n, P13728605617514725075.a n = A253414 n

end A253414

/-! ## A253414.P16535537330424958532

`A014577(n)-A073089(A014681(n+1))`
-/

namespace A253414.P16535537330424958532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n - A073089 (A014681 (n + 1)).toNat

end

end A253414.P16535537330424958532

namespace A253414

/-- `A014577(n)-A073089(A014681(n+1))` -/
def P16535537330424958532.Spec : Prop :=
  ∀ n, P16535537330424958532.a n = A253414 n

end A253414

/-! ## A253414.P18263756037475425544

`A014577(n)-A073089(A114112(n+1))`
-/

namespace A253414.P18263756037475425544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n - A073089 (A114112 (n + 1)).toNat

end

end A253414.P18263756037475425544

namespace A253414

/-- `A014577(n)-A073089(A114112(n+1))` -/
def P18263756037475425544.Spec : Prop :=
  ∀ n, P18263756037475425544.a n = A253414 n

end A253414

/-! ## A253414.P8812429951265453479

`A073089(2*n+3)-A073089(A014681(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A253414

/-- `A073089(2*n+3)-A073089(A014681(n+1))` -/
def P8812429951265453479.Spec : Prop :=
  ∀ n, P8812429951265453479.a n = A253414 n

theorem P8812429951265453479.correct : P8812429951265453479.Spec := by
  intro n
  simp only [A253414]

end A253414

/-! ## A253414.P12019697996080526620

`Δ[A073089(A004280(n+1))-A089013(n)]`
-/

namespace A253414.P12019697996080526620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A004280 (n + 1)).toNat - A089013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253414.P12019697996080526620

namespace A253414

/-- `Δ[A073089(A004280(n+1))-A089013(n)]` -/
def P12019697996080526620.Spec : Prop :=
  ∀ n, P12019697996080526620.a n = A253414 n

end A253414

/-! ## A253414.P17414913637103228136

`A089013(A165754(n))-A089013(n+1)`
-/

namespace A253414.P17414913637103228136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 (A165754 n).toNat - A089013 (n + 1)

end

end A253414.P17414913637103228136

namespace A253414

/-- `A089013(A165754(n))-A089013(n+1)` -/
def P17414913637103228136.Spec : Prop :=
  ∀ n, P17414913637103228136.a n = A253414 n

end A253414

/-! ## A253414.P15454421240280333662

`char[(n+1)*A089013(n)]-A089013(n+1)`
-/

namespace A253414.P15454421240280333662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089013 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A089013 (n + 1)

end

end A253414.P15454421240280333662

namespace A253414

/-- `char[(n+1)*A089013(n)]-A089013(n+1)` -/
def P15454421240280333662.Spec : Prop :=
  ∀ n, P15454421240280333662.a n = A253414 n

end A253414

/-! ## A253414.P2741740349310330767

`char[1]-A301849(n)`
-/

namespace A253414.P2741740349310330767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A301849 n

end

end A253414.P2741740349310330767

namespace A253414

/-- `char[1]-A301849(n)` -/
def P2741740349310330767.Spec : Prop :=
  ∀ n, P2741740349310330767.a n = A253414 n

end A253414

/-! ## A253414.P14166972880451236271

`or(-A301849(n), A063524(n))`
-/

namespace A253414.P14166972880451236271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A301849 n) (A063524 n)

end

end A253414.P14166972880451236271

namespace A253414

/-- `or(-A301849(n), A063524(n))` -/
def P14166972880451236271.Spec : Prop :=
  ∀ n, P14166972880451236271.a n = A253414 n

end A253414

/-!
# A253416: Number of (n+2)X(n+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 1, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253416, there is no canonical definition to state claims against.
-/

/-! ## A253416.P2282379804109610420

`A253424((n+1)²+n²)`
-/

namespace A253416.P2282379804109610420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 ((n + 1) ^ 2 + n ^ 2)

end

end A253416.P2282379804109610420

/-! ## A253416.P4848391076443250159

`record[gcd(A114327(n), A253424(n+1))]`
-/

namespace A253416.P4848391076443250159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A253424 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253416.P4848391076443250159

/-! ## A253416.P2356331725853524195

`record[A203994(n+1)*A253424(n+1)]`
-/

namespace A253416.P2356331725853524195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A253424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253416.P2356331725853524195

/-! ## A253416.P7363597706934999772

`lcm(A033999(n), A253424(A001844(n)))`
-/

namespace A253416.P7363597706934999772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253424 (A001844 n).toNat)

end

end A253416.P7363597706934999772

/-! ## A253416.P1883376386763771348

`A014963(9*n+6)*A253424(A001844(n))`
-/

namespace A253416.P1883376386763771348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A253424 (A001844 n).toNat

end

end A253416.P1883376386763771348

/-!
# A253417: Number of (n+2)X(1+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 1, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253417, there is no canonical definition to state claims against.
-/

/-! ## A253417.P6282755344319385587

`A253424(∑[n]+1)`
-/

namespace A253417.P6282755344319385587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253417.P6282755344319385587

/-! ## A253417.P3234518914655828248

`record[A010054(n)*A253424(n+1)]`
-/

namespace A253417.P3234518914655828248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253417.P3234518914655828248

/-! ## A253417.P12607901950708326601

`record[A253424(n+1)/A260613(n)]`
-/

namespace A253417.P12607901950708326601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253424 (n + 1) : ℚ) / (A260613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253417.P12607901950708326601

/-! ## A253417.P16376808209445035494

`record[gcd(A002262(n), A253424(n+1))]`
-/

namespace A253417.P16376808209445035494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253424 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253417.P16376808209445035494

/-! ## A253417.P17383249190583604019

`record[(1-A262881(n))*A253424(n+1)]`
-/

namespace A253417.P17383249190583604019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A262881 n) * A253424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253417.P17383249190583604019

/-!
# A253418: Number of (n+2)X(2+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 1, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253418, there is no canonical definition to state claims against.
-/

/-! ## A253418.P11643000808093687708

`A253424(∑[n+1]+2)`
-/

namespace A253418.P11643000808093687708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253418.P11643000808093687708

/-! ## A253418.P7940642495783039757

`record[A010054(n)*A253424(n+2)]`
-/

namespace A253418.P7940642495783039757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253424 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253418.P7940642495783039757

/-! ## A253418.P14479236397792164806

`record[gcd(A002262(n), A253424(n+2))]`
-/

namespace A253418.P14479236397792164806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253424 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253418.P14479236397792164806

/-! ## A253418.P6799846698818651457

`record[A253424(gcd(n+2, A262881(n)))]`
-/

namespace A253418.P6799846698818651457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (Int.gcd (n + 2 : ℤ) (A262881 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253418.P6799846698818651457

/-! ## A253418.P14732513868927665491

`A253424(A000096(n)+3)+A000007(n+1)`
-/

namespace A253418.P14732513868927665491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A000096 n + 3).toNat + A000007 (n + 1)

end

end A253418.P14732513868927665491

/-!
# A253419: Number of (n+2)X(3+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 1, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253419, there is no canonical definition to state claims against.
-/

/-! ## A253419.P2014453966292739823

`A253424(∑[n+2]+4)`
-/

namespace A253419.P2014453966292739823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253419.P2014453966292739823

/-! ## A253419.P16644143999270836927

`lcm((-1)^n, A253424(A000096(n+1)+4))`
-/

namespace A253419.P16644143999270836927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A253424 (A000096 (n + 1) + 4).toNat)

end

end A253419.P16644143999270836927

/-! ## A253419.P11327100121860989234

`or(A000007(n), A253424(A167614(n+1)))`
-/

namespace A253419.P11327100121860989234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A253424 (A167614 (n + 1)).toNat)

end

end A253419.P11327100121860989234

/-! ## A253419.P12049343089611231624

`or(A010052(2*n), A253424(A167614(n+1)))`
-/

namespace A253419.P12049343089611231624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (2 * n)) (A253424 (A167614 (n + 1)).toNat)

end

end A253419.P12049343089611231624

/-! ## A253419.P11775593553687843252

`A253424(A167614(n+1))+A008683(A001248(n+2))`
-/

namespace A253419.P11775593553687843252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A167614 (n + 1)).toNat + A008683 (A001248 (n + 2)).toNat

end

end A253419.P11775593553687843252

/-!
# A253420: Number of (n+2)X(4+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 1, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253420, there is no canonical definition to state claims against.
-/

/-! ## A253420.P11194955000509004952

`A253424(A374004(n+1))`
-/

namespace A253420.P11194955000509004952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A374004 (n + 1)).toNat

end

end A253420.P11194955000509004952

/-! ## A253420.P11646608406683962900

`A253424(A052905(n)+9)`
-/

namespace A253420.P11646608406683962900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A052905 n + 9).toNat

end

end A253420.P11646608406683962900

/-! ## A253420.P817130383145943261

`A253424(A055999(n)+10)`
-/

namespace A253420.P817130383145943261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A055999 n + 10).toNat

end

end A253420.P817130383145943261

/-! ## A253420.P4336429516101568734

`A253424(A167614(n+2)+1)`
-/

namespace A253420.P4336429516101568734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A167614 (n + 2) + 1).toNat

end

end A253420.P4336429516101568734

/-! ## A253420.P16473095799310792188

`A253424(Δ[A023545(n+1)-n²])`
-/

namespace A253420.P16473095799310792188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (f1 (n + 1) - f1 n).toNat

end

end A253420.P16473095799310792188

/-!
# A253421: Number of (n+2)X(5+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 1, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253421, there is no canonical definition to state claims against.
-/

/-! ## A253421.P6481730120813260222

`A253424(A374005(n+1))`
-/

namespace A253421.P6481730120813260222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A374005 (n + 1)).toNat

end

end A253421.P6481730120813260222

/-! ## A253421.P13765878524289452388

`A253424(A167499(n+3))`
-/

namespace A253421.P13765878524289452388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A167499 (n + 3)).toNat

end

end A253421.P13765878524289452388

/-! ## A253421.P15086860948980559891

`A253424(A056000(n)+15)`
-/

namespace A253421.P15086860948980559891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A056000 n + 15).toNat

end

end A253421.P15086860948980559891

/-! ## A253421.P9781039451783274083

`A253424(A133263(n+4)+3)`
-/

namespace A253421.P9781039451783274083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A133263 (n + 4) + 3).toNat

end

end A253421.P9781039451783274083

/-! ## A253421.P6350851843586325716

`A253424(A000217(n+4)+5)`
-/

namespace A253421.P6350851843586325716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A000217 (n + 4) + 5).toNat

end

end A253421.P6350851843586325716

/-!
# A253422: Number of (n+2)X(6+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 1, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253422, there is no canonical definition to state claims against.
-/

/-! ## A253422.P10497452880888578197

`A253424(A374007(n+1))`
-/

namespace A253422.P10497452880888578197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A374007 (n + 1)).toNat

end

end A253422.P10497452880888578197

/-! ## A253422.P15897665340590175748

`A253424(A000217(n+5)+6)`
-/

namespace A253422.P15897665340590175748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A000217 (n + 5) + 6).toNat

end

end A253422.P15897665340590175748

/-! ## A253422.P10798772243754317344

`A253424(Δ[A023545(n+1)]+10)`
-/

namespace A253422.P10798772243754317344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (f1 (n + 1) - f1 n + 10).toNat

end

end A253422.P10798772243754317344

/-! ## A253422.P18424297761925948543

`A253424(A167614(A020705(n))+3)`
-/

namespace A253422.P18424297761925948543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A167614 (A020705 n).toNat + 3).toNat

end

end A253422.P18424297761925948543

/-! ## A253422.P7972186701012891230

`A253424(A052905(n+3))`
-/

namespace A253422.P7972186701012891230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A052905 (n + 3)).toNat

end

end A253422.P7972186701012891230

/-!
# A253423: Number of (n+2)X(7+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 1, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253423, there is no canonical definition to state claims against.
-/

/-! ## A253423.P4830905236579549954

`A253424(A374008(n+1))`
-/

namespace A253423.P4830905236579549954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A374008 (n + 1)).toNat

end

end A253423.P4830905236579549954

/-! ## A253423.P15564544774363314246

`A253424(A077169(n+7)+2)`
-/

namespace A253423.P15564544774363314246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A077169 (n + 7) + 2).toNat

end

end A253423.P15564544774363314246

/-! ## A253423.P12947470739839449070

`A253424(A133263(n+6)+5)`
-/

namespace A253423.P12947470739839449070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A133263 (n + 6) + 5).toNat

end

end A253423.P12947470739839449070

/-! ## A253423.P2277445161762739249

`A253424(A000096(n+5)+8)`
-/

namespace A253423.P2277445161762739249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A000096 (n + 5) + 8).toNat

end

end A253423.P2277445161762739249

/-! ## A253423.P15114252703678344845

`A253424(A000217(n+6)+7)`
-/

namespace A253423.P15114252703678344845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253424 (A000217 (n + 6) + 7).toNat

end

end A253423.P15114252703678344845

/-!
# A253426: Reusable Paper Tape Numbers: Maximum number of symbols that can be encoded on an n-hole paper tape, such that a used paper tape can always be reused at least once.

The programs for A253426, there is no canonical definition to state claims against.
-/

/-! ## A253426.P15517763094614434658

`A035001(A353848(n))`
-/

namespace A253426.P15517763094614434658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035001 (A353848 n).toNat

end

end A253426.P15517763094614434658

/-! ## A253426.P11398051847820788869

`record[A035002(A099627(n))]`
-/

namespace A253426.P11398051847820788869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035002 (A099627 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253426.P11398051847820788869

/-! ## A253426.P4282617098113906563

`record[A050363(A118246(n))]`
-/

namespace A253426.P4282617098113906563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A118246 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253426.P4282617098113906563

/-! ## A253426.P6463037567823167729

`record[A132802(A133280(n))]`
-/

namespace A253426.P6463037567823167729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132802 (A133280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253426.P6463037567823167729

/-! ## A253426.P14481373214977111540

`record[A035002(A310132(n))]`
-/

namespace A253426.P14481373214977111540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035002 (A310132 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253426.P14481373214977111540

/-!
# A253427: Number of left-truncatable n-digit primes with least significant digit 7.

The programs for A253427, there is no canonical definition to state claims against.
-/

/-! ## A253427.P9750252646994507094

`A325371(∑[A310734(n)])`
-/

namespace A253427.P9750252646994507094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325371 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253427.P9750252646994507094

/-! ## A253427.P14094369707982510067

`A134545(A365187(n))+A016742(n)`
-/

namespace A253427.P14094369707982510067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134545 (A365187 n).toNat + A016742 n

end

end A253427.P14094369707982510067

/-!
# A253428: Number of (n+1)X(n+1) 0..1 arrays with every 2X2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253428, the canonical program `A253428.P10269967115711693171` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253428 has offset 1).

The definition of A253428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253428.P10269967115711693171

`3*a(n-1)-2*a(n-2)` with `a(0)=16, a(1)=58, a(2)=85, a(3)=156, a(4)=300`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253428

/-- `3*a(n-1)-2*a(n-2)` -/
def P10269967115711693171.Spec : Prop :=
  ∀ n, P10269967115711693171.a n = A253428 (n + 1)

theorem P10269967115711693171.correct : P10269967115711693171.Spec := by
  intro n
  simp only [A253428, Nat.add_sub_cancel]

end A253428

/-! ## A253428.P16625247854024332154

`A253435(∑[4*n]+1)`
-/

namespace A253428.P16625247854024332154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253428.P16625247854024332154

namespace A253428

/-- `A253435(∑[4*n]+1)` -/
def P16625247854024332154.Spec : Prop :=
  ∀ n, P16625247854024332154.a n = A253428 (n + 1)

end A253428

/-! ## A253428.P9495849821914419739

`record[A003982(n)*A253435(n+1)]`
-/

namespace A253428.P9495849821914419739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253428.P9495849821914419739

namespace A253428

/-- `record[A003982(n)*A253435(n+1)]` -/
def P9495849821914419739.Spec : Prop :=
  ∀ n, P9495849821914419739.a n = A253428 (n + 1)

end A253428

/-! ## A253428.P15666790197010154304

`record[gcd(A037012(n), A253435(n+1))]`
-/

namespace A253428.P15666790197010154304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A253435 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253428.P15666790197010154304

namespace A253428

/-- `record[gcd(A037012(n), A253435(n+1))]` -/
def P15666790197010154304.Spec : Prop :=
  ∀ n, (P15666790197010154304.a n : ℤ) = A253428 (n + 1)

end A253428

/-! ## A253428.P5989522653231700427

`A253435(A001844(n))+A025439(n)`
-/

namespace A253428.P5989522653231700427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253435 (A001844 n).toNat + A025439 n

end

end A253428.P5989522653231700427

namespace A253428

/-- `A253435(A001844(n))+A025439(n)` -/
def P5989522653231700427.Spec : Prop :=
  ∀ n, P5989522653231700427.a n = A253428 (n + 1)

end A253428

/-!
# A253429: Number of (n+1) X (2+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253429, the canonical program `A253429.P1132042505421493149` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253429 has offset 1).

The definition of A253429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253429.P1132042505421493149

`3*a(n-1)-2*a(n-2)` with `a(0)=39, a(1)=58, a(2)=73, a(3)=108, a(4)=180`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253429

/-- `3*a(n-1)-2*a(n-2)` -/
def P1132042505421493149.Spec : Prop :=
  ∀ n, P1132042505421493149.a n = A253429 (n + 1)

theorem P1132042505421493149.correct : P1132042505421493149.Spec := by
  intro n
  simp only [A253429, Nat.add_sub_cancel]

end A253429

/-! ## A253429.P1645719255863945278

`A253435(∑[n+2])`
-/

namespace A253429.P1645719255863945278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253435 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253429.P1645719255863945278

namespace A253429

/-- `A253435(∑[n+2])` -/
def P1645719255863945278.Spec : Prop :=
  ∀ n, P1645719255863945278.a n = A253429 (n + 1)

end A253429

/-! ## A253429.P3345486742836973650

`record[A253435(A000096(A028920(n)))]`
-/

namespace A253429.P3345486742836973650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253435 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253429.P3345486742836973650

namespace A253429

/-- `record[A253435(A000096(A028920(n)))]` -/
def P3345486742836973650.Spec : Prop :=
  ∀ n, P3345486742836973650.a n = A253429 (n + 1)

end A253429

/-! ## A253429.P17703991870930840812

`record[A253435(A000096(A101504(n)))]`
-/

namespace A253429.P17703991870930840812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253435 (A000096 (A101504 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253429.P17703991870930840812

namespace A253429

/-- `record[A253435(A000096(A101504(n)))]` -/
def P17703991870930840812.Spec : Prop :=
  ∀ n, P17703991870930840812.a n = A253429 (n + 1)

end A253429

/-! ## A253429.P7400570004377997074

`lcm(A033999(n), A253435(A000096(n+1)))`
-/

namespace A253429.P7400570004377997074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253435 (A000096 (n + 1)).toNat)

end

end A253429.P7400570004377997074

namespace A253429

/-- `lcm(A033999(n), A253435(A000096(n+1)))` -/
def P7400570004377997074.Spec : Prop :=
  ∀ n, (P7400570004377997074.a n : ℤ) = A253429 (n + 1)

end A253429

/-!
# A253430: Number of (n+1) X (3+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253430, the canonical program `A253430.P7384033265099240551` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253430 has offset 1).

The definition of A253430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253430.P16878283603777458974

`A253154(n+1)+A253431(n+1)-A253155(n+1)`
-/

namespace A253430.P16878283603777458974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253154 (n + 1) + (A253431 (n + 1) - A253155 (n + 1))

end

end A253430.P16878283603777458974

namespace A253430

/-- `A253154(n+1)+A253431(n+1)-A253155(n+1)` -/
def P16878283603777458974.Spec : Prop :=
  ∀ n, P16878283603777458974.a n = A253430 (n + 1)

end A253430

/-! ## A253430.P17145567216936789493

`A253154(n+1)+A253432(n+1)-A253156(n+1)`
-/

namespace A253430.P17145567216936789493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253154 (n + 1) + (A253432 (n + 1) - A253156 (n + 1))

end

end A253430.P17145567216936789493

namespace A253430

/-- `A253154(n+1)+A253432(n+1)-A253156(n+1)` -/
def P17145567216936789493.Spec : Prop :=
  ∀ n, P17145567216936789493.a n = A253430 (n + 1)

end A253430

/-! ## A253430.P12939817123523808420

`A253154(n+1)+A253433(n+1)-A253157(n+1)`
-/

namespace A253430.P12939817123523808420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253154 (n + 1) + (A253433 (n + 1) - A253157 (n + 1))

end

end A253430.P12939817123523808420

namespace A253430

/-- `A253154(n+1)+A253433(n+1)-A253157(n+1)` -/
def P12939817123523808420.Spec : Prop :=
  ∀ n, P12939817123523808420.a n = A253430 (n + 1)

end A253430

/-! ## A253430.P9993231117013885107

`A253154(n+1)+A253434(n+1)-A253158(n+1)`
-/

namespace A253430.P9993231117013885107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253154 (n + 1) + (A253434 (n + 1) - A253158 (n + 1))

end

end A253430.P9993231117013885107

namespace A253430

/-- `A253154(n+1)+A253434(n+1)-A253158(n+1)` -/
def P9993231117013885107.Spec : Prop :=
  ∀ n, P9993231117013885107.a n = A253430 (n + 1)

end A253430

/-! ## A253430.P14105629849927239077

`A253154(n+1)+A253433(n+1)-(A253155(n+1)+root(6, 1/3))`
-/

namespace A253430.P14105629849927239077
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253154 (n + 1) : ℝ) + ((A253433 (n + 1) : ℝ) - ((A253155 (n + 1) : ℝ) + (6 : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))))

end

end A253430.P14105629849927239077

namespace A253430

/-- `A253154(n+1)+A253433(n+1)-(A253155(n+1)+root(6, 1/3))` -/
def P14105629849927239077.Spec : Prop :=
  ∀ n, P14105629849927239077.a n = (A253430 (n + 1) : ℝ)

end A253430

/-! ## A253430.P7384033265099240551

`3*a(n-1)-2*a(n-2)` with `a(0)=69, a(1)=70, a(2)=85, a(3)=121`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253430

/-- `3*a(n-1)-2*a(n-2)` -/
def P7384033265099240551.Spec : Prop :=
  ∀ n, P7384033265099240551.a n = A253430 (n + 1)

theorem P7384033265099240551.correct : P7384033265099240551.Spec := by
  intro n
  simp only [A253430, Nat.add_sub_cancel]

end A253430

/-!
# A253431: Number of (n+1) X (4+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253431, the canonical program `A253431.P10925287623896163552` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253431 has offset 1).

The definition of A253431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253431.P4076874722357218592

`A253432(n+1)-72`
-/

namespace A253431.P4076874722357218592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) - 72

end

end A253431.P4076874722357218592

namespace A253431

/-- `A253432(n+1)-72` -/
def P4076874722357218592.Spec : Prop :=
  ∀ n, P4076874722357218592.a n = A253431 (n + 1)

end A253431

/-! ## A253431.P6220481599799635490

`A253155(n+1)+A253434(n+1)-A253158(n+1)`
-/

namespace A253431.P6220481599799635490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253155 (n + 1) + (A253434 (n + 1) - A253158 (n + 1))

end

end A253431.P6220481599799635490

namespace A253431

/-- `A253155(n+1)+A253434(n+1)-A253158(n+1)` -/
def P6220481599799635490.Spec : Prop :=
  ∀ n, P6220481599799635490.a n = A253431 (n + 1)

end A253431

/-! ## A253431.P12277285262129487999

`A253433(n+1)+A253438(n+1)-A253440(n+1)`
-/

namespace A253431.P12277285262129487999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + (A253438 (n + 1) - A253440 (n + 1))

end

end A253431.P12277285262129487999

namespace A253431

/-- `A253433(n+1)+A253438(n+1)-A253440(n+1)` -/
def P12277285262129487999.Spec : Prop :=
  ∀ n, P12277285262129487999.a n = A253431 (n + 1)

end A253431

/-! ## A253431.P7748566566969897913

`A253434(n+1)+A253438(n+1)-A253441(n+1)`
-/

namespace A253431.P7748566566969897913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253434 (n + 1) + (A253438 (n + 1) - A253441 (n + 1))

end

end A253431.P7748566566969897913

namespace A253431

/-- `A253434(n+1)+A253438(n+1)-A253441(n+1)` -/
def P7748566566969897913.Spec : Prop :=
  ∀ n, P7748566566969897913.a n = A253431 (n + 1)

end A253431

/-! ## A253431.P10925287623896163552

`3*a(n-1)-2*a(n-2)` with `a(0)=109, a(1)=102, a(2)=120`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253431

/-- `3*a(n-1)-2*a(n-2)` -/
def P10925287623896163552.Spec : Prop :=
  ∀ n, P10925287623896163552.a n = A253431 (n + 1)

theorem P10925287623896163552.correct : P10925287623896163552.Spec := by
  intro n
  simp only [A253431, Nat.add_sub_cancel]

end A253431

/-! ## A253431.P12303097105346773120

`(A253438(n+1)+A253432(n+1))%A253439(n+1)`
-/

namespace A253431.P12303097105346773120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253438 (n + 1) + A253432 (n + 1)) (A253439 (n + 1))

end

end A253431.P12303097105346773120

namespace A253431

/-- `(A253438(n+1)+A253432(n+1))%A253439(n+1)` -/
def P12303097105346773120.Spec : Prop :=
  ∀ n, P12303097105346773120.a n = A253431 (n + 1)

end A253431

/-!
# A253432: Number of (n+1) X (5+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253432, the canonical program `A253432.P3197369354590611943` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253432 has offset 1).

The definition of A253432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253432.P3197369354590611943

`A253431(n+1)+72`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253432

/-- `A253431(n+1)+72` -/
def P3197369354590611943.Spec : Prop :=
  ∀ n, P3197369354590611943.a n = A253432 (n + 1)

theorem P3197369354590611943.correct : P3197369354590611943.Spec := by
  intro n
  simp only [A253432, Nat.add_sub_cancel]

end A253432

/-! ## A253432.P16839653479335705209

`A253433(n+1)-A124512(A328579(n))`
-/

namespace A253432.P16839653479335705209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) - A124512 (A328579 n).toNat

end

end A253432.P16839653479335705209

namespace A253432

/-- `A253433(n+1)-A124512(A328579(n))` -/
def P16839653479335705209.Spec : Prop :=
  ∀ n, P16839653479335705209.a n = A253432 (n + 1)

end A253432

/-! ## A253432.P18204924509518855922

`A253433(n+1)-A124512(A000040(n+1))`
-/

namespace A253432.P18204924509518855922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) - A124512 (A000040 (n + 1)).toNat

end

end A253432.P18204924509518855922

namespace A253432

/-- `A253433(n+1)-A124512(A000040(n+1))` -/
def P18204924509518855922.Spec : Prop :=
  ∀ n, P18204924509518855922.a n = A253432 (n + 1)

end A253432

/-! ## A253432.P3639356298162139532

`A253433(n+1)-A124512(A004139(n+1))`
-/

namespace A253432.P3639356298162139532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) - A124512 (A004139 (n + 1)).toNat

end

end A253432.P3639356298162139532

namespace A253432

/-- `A253433(n+1)-A124512(A004139(n+1))` -/
def P3639356298162139532.Spec : Prop :=
  ∀ n, P3639356298162139532.a n = A253432 (n + 1)

end A253432

/-! ## A253432.P6218633041645459619

`A253433(n+1)-A124512(A031215(n+1))`
-/

namespace A253432.P6218633041645459619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) - A124512 (A031215 (n + 1)).toNat

end

end A253432.P6218633041645459619

namespace A253432

/-- `A253433(n+1)-A124512(A031215(n+1))` -/
def P6218633041645459619.Spec : Prop :=
  ∀ n, P6218633041645459619.a n = A253432 (n + 1)

end A253432

/-! ## A253432.P14459205706157376

`A253433(n+1)+A253439(n+1)-A253440(n+1)`
-/

namespace A253432.P14459205706157376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + (A253439 (n + 1) - A253440 (n + 1))

end

end A253432.P14459205706157376

namespace A253432

/-- `A253433(n+1)+A253439(n+1)-A253440(n+1)` -/
def P14459205706157376.Spec : Prop :=
  ∀ n, P14459205706157376.a n = A253432 (n + 1)

end A253432

/-! ## A253432.P11601068715743844189

`A253434(n+1)+A253439(n+1)-A253441(n+1)`
-/

namespace A253432.P11601068715743844189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253434 (n + 1) + (A253439 (n + 1) - A253441 (n + 1))

end

end A253432.P11601068715743844189

namespace A253432

/-- `A253434(n+1)+A253439(n+1)-A253441(n+1)` -/
def P11601068715743844189.Spec : Prop :=
  ∀ n, P11601068715743844189.a n = A253432 (n + 1)

end A253432

/-! ## A253432.P18398050624365024643

`3*a(n-1)-2*a(n-2)` with `a(0)=181, a(1)=174, a(2)=192`
-/

namespace A253432.P18398050624365024643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [181, 174, 192] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A253432.P18398050624365024643

namespace A253432

/-- `3*a(n-1)-2*a(n-2)` -/
def P18398050624365024643.Spec : Prop :=
  ∀ n, P18398050624365024643.a n = A253432 (n + 1)

end A253432

/-!
# A253433: Number of (n+1) X (6+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253433, the canonical program `A253433.P18384616751291201725` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253433 has offset 1).

The definition of A253433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253433.P9490997537130497022

`A253432(n+1)+A124512(A328579(n))`
-/

namespace A253433.P9490997537130497022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + A124512 (A328579 n).toNat

end

end A253433.P9490997537130497022

namespace A253433

/-- `A253432(n+1)+A124512(A328579(n))` -/
def P9490997537130497022.Spec : Prop :=
  ∀ n, P9490997537130497022.a n = A253433 (n + 1)

end A253433

/-! ## A253433.P18384616751291201725

`A253432(n+1)+A124512(p?[A014681(n)])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A253433

/-- `A253432(n+1)+A124512(p?[A014681(n)])` -/
def P18384616751291201725.Spec : Prop :=
  ∀ n, P18384616751291201725.a n = A253433 (n + 1)

theorem P18384616751291201725.correct : P18384616751291201725.Spec := by
  intro n
  simp only [A253433, Nat.add_sub_cancel]

end A253433

/-! ## A253433.P17521702232551878925

`A253432(n+1)+A124512(A004139(n+1))`
-/

namespace A253433.P17521702232551878925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + A124512 (A004139 (n + 1)).toNat

end

end A253433.P17521702232551878925

namespace A253433

/-- `A253432(n+1)+A124512(A004139(n+1))` -/
def P17521702232551878925.Spec : Prop :=
  ∀ n, P17521702232551878925.a n = A253433 (n + 1)

end A253433

/-! ## A253433.P13818851876671063720

`A253432(n+1)+A124512(A031215(n+1))`
-/

namespace A253433.P13818851876671063720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + A124512 (A031215 (n + 1)).toNat

end

end A253433.P13818851876671063720

namespace A253433

/-- `A253432(n+1)+A124512(A031215(n+1))` -/
def P13818851876671063720.Spec : Prop :=
  ∀ n, P13818851876671063720.a n = A253433 (n + 1)

end A253433

/-! ## A253433.P174829264249708738

`A253432(n+1)+A124512(A342659(n+1))`
-/

namespace A253433.P174829264249708738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + A124512 (A342659 (n + 1)).toNat

end

end A253433.P174829264249708738

namespace A253433

/-- `A253432(n+1)+A124512(A342659(n+1))` -/
def P174829264249708738.Spec : Prop :=
  ∀ n, P174829264249708738.a n = A253433 (n + 1)

end A253433

/-! ## A253433.P14357738961233917653

`A253431(n+1)+A253440(n+1)-A253438(n+1)`
-/

namespace A253433.P14357738961233917653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253431 (n + 1) + (A253440 (n + 1) - A253438 (n + 1))

end

end A253433.P14357738961233917653

namespace A253433

/-- `A253431(n+1)+A253440(n+1)-A253438(n+1)` -/
def P14357738961233917653.Spec : Prop :=
  ∀ n, P14357738961233917653.a n = A253433 (n + 1)

end A253433

/-! ## A253433.P5121805734809602143

`A253432(n+1)+A253440(n+1)-A253439(n+1)`
-/

namespace A253433.P5121805734809602143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + (A253440 (n + 1) - A253439 (n + 1))

end

end A253433.P5121805734809602143

namespace A253433

/-- `A253432(n+1)+A253440(n+1)-A253439(n+1)` -/
def P5121805734809602143.Spec : Prop :=
  ∀ n, P5121805734809602143.a n = A253433 (n + 1)

end A253433

/-! ## A253433.P8556274634672172248

`A253434(n+1)+A253440(n+1)-A253441(n+1)`
-/

namespace A253433.P8556274634672172248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253434 (n + 1) + (A253440 (n + 1) - A253441 (n + 1))

end

end A253433.P8556274634672172248

namespace A253433

/-- `A253434(n+1)+A253440(n+1)-A253441(n+1)` -/
def P8556274634672172248.Spec : Prop :=
  ∀ n, P8556274634672172248.a n = A253433 (n + 1)

end A253433

/-! ## A253433.P15305826753352631208

`3*a(n-1)-2*a(n-2)` with `a(0)=325, a(1)=318, a(2)=336`
-/

namespace A253433.P15305826753352631208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [325, 318, 336] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A253433.P15305826753352631208

namespace A253433

/-- `3*a(n-1)-2*a(n-2)` -/
def P15305826753352631208.Spec : Prop :=
  ∀ n, P15305826753352631208.a n = A253433 (n + 1)

end A253433

/-! ## A253433.P6981329469417877884

`A253432(n+1)+A124512(A005384(n+1))`
-/

namespace A253433.P6981329469417877884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + A124512 (A005384 (n + 1)).toNat

end

end A253433.P6981329469417877884

namespace A253433

/-- `A253432(n+1)+A124512(A005384(n+1))` -/
def P6981329469417877884.Spec : Prop :=
  ∀ n, P6981329469417877884.a n = A253433 (n + 1)

end A253433

/-!
# A253434: Number of (n+1) X (7+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253434, the canonical program `A253434.P11124431302743939012` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253434 has offset 1).

The definition of A253434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253434.P10187003306639841078

`A253433(n+1)+A124512(A328579(n)²)`
-/

namespace A253434.P10187003306639841078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + A124512 (A328579 n ^ 2).toNat

end

end A253434.P10187003306639841078

namespace A253434

/-- `A253433(n+1)+A124512(A328579(n)²)` -/
def P10187003306639841078.Spec : Prop :=
  ∀ n, P10187003306639841078.a n = A253434 (n + 1)

end A253434

/-! ## A253434.P11124431302743939012

`A253433(n+1)+2*A124512(A000040(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A253434

/-- `A253433(n+1)+2*A124512(A000040(n+1))` -/
def P11124431302743939012.Spec : Prop :=
  ∀ n, P11124431302743939012.a n = A253434 (n + 1)

theorem P11124431302743939012.correct : P11124431302743939012.Spec := by
  intro n
  simp only [A253434, Nat.add_sub_cancel]

end A253434

/-! ## A253434.P17869881192988927275

`A253433(n+1)+2*A124512(A004139(n+1))`
-/

namespace A253434.P17869881192988927275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + 2 * A124512 (A004139 (n + 1)).toNat

end

end A253434.P17869881192988927275

namespace A253434

/-- `A253433(n+1)+2*A124512(A004139(n+1))` -/
def P17869881192988927275.Spec : Prop :=
  ∀ n, P17869881192988927275.a n = A253434 (n + 1)

end A253434

/-! ## A253434.P5987003729323478415

`A253433(n+1)+2*A124512(A031215(n+1))`
-/

namespace A253434.P5987003729323478415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + 2 * A124512 (A031215 (n + 1)).toNat

end

end A253434.P5987003729323478415

namespace A253434

/-- `A253433(n+1)+2*A124512(A031215(n+1))` -/
def P5987003729323478415.Spec : Prop :=
  ∀ n, P5987003729323478415.a n = A253434 (n + 1)

end A253434

/-! ## A253434.P2400323368403325770

`A253158(n+1)+A253431(n+1)-A253155(n+1)`
-/

namespace A253434.P2400323368403325770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253158 (n + 1) + (A253431 (n + 1) - A253155 (n + 1))

end

end A253434.P2400323368403325770

namespace A253434

/-- `A253158(n+1)+A253431(n+1)-A253155(n+1)` -/
def P2400323368403325770.Spec : Prop :=
  ∀ n, P2400323368403325770.a n = A253434 (n + 1)

end A253434

/-! ## A253434.P15531465767141342643

`A253431(n+1)+A253441(n+1)-A253438(n+1)`
-/

namespace A253434.P15531465767141342643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253431 (n + 1) + (A253441 (n + 1) - A253438 (n + 1))

end

end A253434.P15531465767141342643

namespace A253434

/-- `A253431(n+1)+A253441(n+1)-A253438(n+1)` -/
def P15531465767141342643.Spec : Prop :=
  ∀ n, P15531465767141342643.a n = A253434 (n + 1)

end A253434

/-! ## A253434.P4135217379811203041

`A253432(n+1)+A253441(n+1)-A253439(n+1)`
-/

namespace A253434.P4135217379811203041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + (A253441 (n + 1) - A253439 (n + 1))

end

end A253434.P4135217379811203041

namespace A253434

/-- `A253432(n+1)+A253441(n+1)-A253439(n+1)` -/
def P4135217379811203041.Spec : Prop :=
  ∀ n, P4135217379811203041.a n = A253434 (n + 1)

end A253434

/-! ## A253434.P5499864194436055447

`A253433(n+1)+A253441(n+1)-A253440(n+1)`
-/

namespace A253434.P5499864194436055447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + (A253441 (n + 1) - A253440 (n + 1))

end

end A253434.P5499864194436055447

namespace A253434

/-- `A253433(n+1)+A253441(n+1)-A253440(n+1)` -/
def P5499864194436055447.Spec : Prop :=
  ∀ n, P5499864194436055447.a n = A253434 (n + 1)

end A253434

/-! ## A253434.P16484566218549548196

`3*a(n-1)-2*a(n-2)` with `a(0)=613, a(1)=606, a(2)=624`
-/

namespace A253434.P16484566218549548196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [613, 606, 624] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A253434.P16484566218549548196

namespace A253434

/-- `3*a(n-1)-2*a(n-2)` -/
def P16484566218549548196.Spec : Prop :=
  ∀ n, P16484566218549548196.a n = A253434 (n + 1)

end A253434

/-!
# A253435: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every 2X2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253435, there is no canonical definition to state claims against.
-/

/-! ## A253435.P11151412738852752888

`A253159(n+1)-A258239(A166979(n+1))`
-/

namespace A253435.P11151412738852752888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (n + 1) - A258239 (A166979 (n + 1)).toNat

end

end A253435.P11151412738852752888

/-! ## A253435.P2845316468443433567

`A253159(n+1)-A326731(A061030(n+3))`
-/

namespace A253435.P2845316468443433567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (n + 1) - A326731 (A061030 (n + 3)).toNat

end

end A253435.P2845316468443433567

/-!
# A253436: Number of (2+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253436, the canonical program `A253436.P3134358337529874478` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253436 has offset 1).

The definition of A253436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253436.P3134358337529874478

`3*a(n-1)-2*a(n-2)` with `a(0)=39, a(1)=58, a(2)=70, a(3)=102, a(4)=174`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253436

/-- `3*a(n-1)-2*a(n-2)` -/
def P3134358337529874478.Spec : Prop :=
  ∀ n, P3134358337529874478.a n = A253436 (n + 1)

theorem P3134358337529874478.correct : P3134358337529874478.Spec := by
  intro n
  simp only [A253436, Nat.add_sub_cancel]

end A253436

/-! ## A253436.P14816689590952758237

`A253435(∑[n+1]+2)`
-/

namespace A253436.P14816689590952758237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253435 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253436.P14816689590952758237

namespace A253436

/-- `A253435(∑[n+1]+2)` -/
def P14816689590952758237.Spec : Prop :=
  ∀ n, P14816689590952758237.a n = A253436 (n + 1)

end A253436

/-! ## A253436.P9932918478780426627

`or(2, A253435(A133263(n+1)))`
-/

namespace A253436.P9932918478780426627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A253435 (A133263 (n + 1)).toNat)

end

end A253436.P9932918478780426627

namespace A253436

/-- `or(2, A253435(A133263(n+1)))` -/
def P9932918478780426627.Spec : Prop :=
  ∀ n, P9932918478780426627.a n = A253436 (n + 1)

end A253436

/-! ## A253436.P3745012360444865739

`lcm(A033999(n), A253435(A133263(n+1)))`
-/

namespace A253436.P3745012360444865739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253435 (A133263 (n + 1)).toNat)

end

end A253436.P3745012360444865739

namespace A253436

/-- `lcm(A033999(n), A253435(A133263(n+1)))` -/
def P3745012360444865739.Spec : Prop :=
  ∀ n, (P3745012360444865739.a n : ℤ) = A253436 (n + 1)

end A253436

/-! ## A253436.P13300315313219004846

`A253435(A133263(n+1))%A253155(n+1)`
-/

namespace A253436.P13300315313219004846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253435 (A133263 (n + 1)).toNat) (A253155 (n + 1))

end

end A253436.P13300315313219004846

namespace A253436

/-- `A253435(A133263(n+1))%A253155(n+1)` -/
def P13300315313219004846.Spec : Prop :=
  ∀ n, P13300315313219004846.a n = A253436 (n + 1)

end A253436

/-!
# A253437: Number of (3+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253437, the canonical program `A253437.P16750587170438061742` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253437 has offset 1).

The definition of A253437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253437.P16750587170438061742

`3*a(n-1)-2*a(n-2)` with `a(0)=69, a(1)=73, a(2)=85, a(3)=120, a(4)=192`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253437

/-- `3*a(n-1)-2*a(n-2)` -/
def P16750587170438061742.Spec : Prop :=
  ∀ n, P16750587170438061742.a n = A253437 (n + 1)

theorem P16750587170438061742.correct : P16750587170438061742.Spec := by
  intro n
  simp only [A253437, Nat.add_sub_cancel]

end A253437

/-! ## A253437.P11831478188563913057

`A253435(∑[n+2]+4)`
-/

namespace A253437.P11831478188563913057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253435 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253437.P11831478188563913057

namespace A253437

/-- `A253435(∑[n+2]+4)` -/
def P11831478188563913057.Spec : Prop :=
  ∀ n, P11831478188563913057.a n = A253437 (n + 1)

end A253437

/-! ## A253437.P5867834017639548134

`and(-1, A253435(A167614(n+1)))`
-/

namespace A253437.P5867834017639548134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A253435 (A167614 (n + 1)).toNat)

end

end A253437.P5867834017639548134

namespace A253437

/-- `and(-1, A253435(A167614(n+1)))` -/
def P5867834017639548134.Spec : Prop :=
  ∀ n, P5867834017639548134.a n = A253437 (n + 1)

end A253437

/-! ## A253437.P1877020631572839046

`or(char[1], A253435(A046691(n)+7))`
-/

namespace A253437.P1877020631572839046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253435 (A046691 n + 7).toNat)

end

end A253437.P1877020631572839046

namespace A253437

/-- `or(char[1], A253435(A046691(n)+7))` -/
def P1877020631572839046.Spec : Prop :=
  ∀ n, P1877020631572839046.a n = A253437 (n + 1)

end A253437

/-! ## A253437.P18158338800349872750

`A253435(A152950(n+3))+C(n, 64)`
-/

namespace A253437.P18158338800349872750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253435 (A152950 (n + 3)).toNat + (Nat.choose n 64 : ℤ)

end

end A253437.P18158338800349872750

namespace A253437

/-- `A253435(A152950(n+3))+C(n, 64)` -/
def P18158338800349872750.Spec : Prop :=
  ∀ n, P18158338800349872750.a n = A253437 (n + 1)

end A253437

/-!
# A253438: Number of (4+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253438, the canonical program `A253438.P14887730657470701227` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253438 has offset 1).

The definition of A253438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253438.P10682392212136997838

`A253439(n+1)-72`
-/

namespace A253438.P10682392212136997838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253439 (n + 1) - 72

end

end A253438.P10682392212136997838

namespace A253438

/-- `A253439(n+1)-72` -/
def P10682392212136997838.Spec : Prop :=
  ∀ n, P10682392212136997838.a n = A253438 (n + 1)

end A253438

/-! ## A253438.P10477905093010779768

`A253155(n+1)+A253441(n+1)-A253158(n+1)`
-/

namespace A253438.P10477905093010779768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253155 (n + 1) + (A253441 (n + 1) - A253158 (n + 1))

end

end A253438.P10477905093010779768

namespace A253438

/-- `A253155(n+1)+A253441(n+1)-A253158(n+1)` -/
def P10477905093010779768.Spec : Prop :=
  ∀ n, P10477905093010779768.a n = A253438 (n + 1)

end A253438

/-! ## A253438.P9673056206629764761

`A253431(n+1)+A253440(n+1)-A253433(n+1)`
-/

namespace A253438.P9673056206629764761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253431 (n + 1) + (A253440 (n + 1) - A253433 (n + 1))

end

end A253438.P9673056206629764761

namespace A253438

/-- `A253431(n+1)+A253440(n+1)-A253433(n+1)` -/
def P9673056206629764761.Spec : Prop :=
  ∀ n, P9673056206629764761.a n = A253438 (n + 1)

end A253438

/-! ## A253438.P18417677046116942125

`A253431(n+1)+A253441(n+1)-A253434(n+1)`
-/

namespace A253438.P18417677046116942125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253431 (n + 1) + (A253441 (n + 1) - A253434 (n + 1))

end

end A253438.P18417677046116942125

namespace A253438

/-- `A253431(n+1)+A253441(n+1)-A253434(n+1)` -/
def P18417677046116942125.Spec : Prop :=
  ∀ n, P18417677046116942125.a n = A253438 (n + 1)

end A253438

/-! ## A253438.P11410567916505152515

`A253431(n+1)+A253439(n+1)%A253432(n+1)`
-/

namespace A253438.P11410567916505152515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253431 (n + 1) + Int.tmod (A253439 (n + 1)) (A253432 (n + 1))

end

end A253438.P11410567916505152515

namespace A253438

/-- `A253431(n+1)+A253439(n+1)%A253432(n+1)` -/
def P11410567916505152515.Spec : Prop :=
  ∀ n, P11410567916505152515.a n = A253438 (n + 1)

end A253438

/-! ## A253438.P14887730657470701227

`3*a(n-1)-2*a(n-2)` with `a(0)=109, a(1)=108, a(2)=121, a(3)=156, a(4)=228`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253438

/-- `3*a(n-1)-2*a(n-2)` -/
def P14887730657470701227.Spec : Prop :=
  ∀ n, P14887730657470701227.a n = A253438 (n + 1)

theorem P14887730657470701227.correct : P14887730657470701227.Spec := by
  intro n
  simp only [A253438, Nat.add_sub_cancel]

end A253438

/-!
# A253439: Number of (5+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253439, the canonical program `A253439.P15114041342093129535` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253439 has offset 1).

The definition of A253439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253439.P15114041342093129535

`A253438(n+1)+72`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253439

/-- `A253438(n+1)+72` -/
def P15114041342093129535.Spec : Prop :=
  ∀ n, P15114041342093129535.a n = A253439 (n + 1)

theorem P15114041342093129535.correct : P15114041342093129535.Spec := by
  intro n
  simp only [A253439, Nat.add_sub_cancel]

end A253439

/-! ## A253439.P18093563026416109528

`A253440(n+1)-A124512(A328579(n))`
-/

namespace A253439.P18093563026416109528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253440 (n + 1) - A124512 (A328579 n).toNat

end

end A253439.P18093563026416109528

namespace A253439

/-- `A253440(n+1)-A124512(A328579(n))` -/
def P18093563026416109528.Spec : Prop :=
  ∀ n, P18093563026416109528.a n = A253439 (n + 1)

end A253439

/-! ## A253439.P13930327540808214964

`A253440(n+1)-A124512(p?[A014681(n)])`
-/

namespace A253439.P13930327540808214964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253440 (n + 1) - A124512 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A253439.P13930327540808214964

namespace A253439

/-- `A253440(n+1)-A124512(p?[A014681(n)])` -/
def P13930327540808214964.Spec : Prop :=
  ∀ n, P13930327540808214964.a n = A253439 (n + 1)

end A253439

/-! ## A253439.P6203693688289629694

`A253440(n+1)-A124512(A004139(n+1))`
-/

namespace A253439.P6203693688289629694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253440 (n + 1) - A124512 (A004139 (n + 1)).toNat

end

end A253439.P6203693688289629694

namespace A253439

/-- `A253440(n+1)-A124512(A004139(n+1))` -/
def P6203693688289629694.Spec : Prop :=
  ∀ n, P6203693688289629694.a n = A253439 (n + 1)

end A253439

/-! ## A253439.P8667232414481360385

`A253440(n+1)-A124512(A031215(n+1))`
-/

namespace A253439.P8667232414481360385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253440 (n + 1) - A124512 (A031215 (n + 1)).toNat

end

end A253439.P8667232414481360385

namespace A253439

/-- `A253440(n+1)-A124512(A031215(n+1))` -/
def P8667232414481360385.Spec : Prop :=
  ∀ n, P8667232414481360385.a n = A253439 (n + 1)

end A253439

/-! ## A253439.P18208503351680113461

`A253432(n+1)+A253440(n+1)-A253433(n+1)`
-/

namespace A253439.P18208503351680113461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + (A253440 (n + 1) - A253433 (n + 1))

end

end A253439.P18208503351680113461

namespace A253439

/-- `A253432(n+1)+A253440(n+1)-A253433(n+1)` -/
def P18208503351680113461.Spec : Prop :=
  ∀ n, P18208503351680113461.a n = A253439 (n + 1)

end A253439

/-! ## A253439.P2398614349590977912

`A253432(n+1)+A253441(n+1)-A253434(n+1)`
-/

namespace A253439.P2398614349590977912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + (A253441 (n + 1) - A253434 (n + 1))

end

end A253439.P2398614349590977912

namespace A253439

/-- `A253432(n+1)+A253441(n+1)-A253434(n+1)` -/
def P2398614349590977912.Spec : Prop :=
  ∀ n, P2398614349590977912.a n = A253439 (n + 1)

end A253439

/-! ## A253439.P16848953771613762549

`3*a(n-1)-2*a(n-2)` with `a(0)=181, a(1)=180, a(2)=193, a(3)=228, a(4)=300`
-/

namespace A253439.P16848953771613762549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [181, 180, 193, 228, 300] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A253439.P16848953771613762549

namespace A253439

/-- `3*a(n-1)-2*a(n-2)` -/
def P16848953771613762549.Spec : Prop :=
  ∀ n, P16848953771613762549.a n = A253439 (n + 1)

end A253439

/-! ## A253439.P17604013209978137940

`A253440(n+1)-A124512(A005384(n+1))`
-/

namespace A253439.P17604013209978137940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253440 (n + 1) - A124512 (A005384 (n + 1)).toNat

end

end A253439.P17604013209978137940

namespace A253439

/-- `A253440(n+1)-A124512(A005384(n+1))` -/
def P17604013209978137940.Spec : Prop :=
  ∀ n, P17604013209978137940.a n = A253439 (n + 1)

end A253439

/-!
# A253440: Number of (6+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253440, the canonical program `A253440.P4273520143167882441` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253440 has offset 1).

The definition of A253440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253440.P13160057584425127408

`A253439(n+1)+4/(1/6)²`
-/

namespace A253440.P13160057584425127408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253439 (n + 1) : ℚ) + 4 / ((1 : ℚ) / 6) ^ 2

end

end A253440.P13160057584425127408

namespace A253440

/-- `A253439(n+1)+4/(1/6)²` -/
def P13160057584425127408.Spec : Prop :=
  ∀ n, P13160057584425127408.a n = (A253440 (n + 1) : ℚ)

end A253440

/-! ## A253440.P12115001318998653456

`A253441(n+1)-A124512(A328579(n)²)`
-/

namespace A253440.P12115001318998653456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253441 (n + 1) - A124512 (A328579 n ^ 2).toNat

end

end A253440.P12115001318998653456

namespace A253440

/-- `A253441(n+1)-A124512(A328579(n)²)` -/
def P12115001318998653456.Spec : Prop :=
  ∀ n, P12115001318998653456.a n = A253440 (n + 1)

end A253440

/-! ## A253440.P4273520143167882441

`A253157(n+1)+A253438(n+1)-A253155(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A253440

/-- `A253157(n+1)+A253438(n+1)-A253155(n+1)` -/
def P4273520143167882441.Spec : Prop :=
  ∀ n, P4273520143167882441.a n = A253440 (n + 1)

theorem P4273520143167882441.correct : P4273520143167882441.Spec := by
  intro n
  simp only [A253440, Nat.add_sub_cancel]

end A253440

/-! ## A253440.P12219658535290095263

`A253433(n+1)+A253438(n+1)-A253431(n+1)`
-/

namespace A253440.P12219658535290095263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + (A253438 (n + 1) - A253431 (n + 1))

end

end A253440.P12219658535290095263

namespace A253440

/-- `A253433(n+1)+A253438(n+1)-A253431(n+1)` -/
def P12219658535290095263.Spec : Prop :=
  ∀ n, P12219658535290095263.a n = A253440 (n + 1)

end A253440

/-! ## A253440.P17948952583112518801

`A253433(n+1)+A253439(n+1)-A253432(n+1)`
-/

namespace A253440.P17948952583112518801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + (A253439 (n + 1) - A253432 (n + 1))

end

end A253440.P17948952583112518801

namespace A253440

/-- `A253433(n+1)+A253439(n+1)-A253432(n+1)` -/
def P17948952583112518801.Spec : Prop :=
  ∀ n, P17948952583112518801.a n = A253440 (n + 1)

end A253440

/-! ## A253440.P11149229163402325539

`A253433(n+1)+A253441(n+1)-A253434(n+1)`
-/

namespace A253440.P11149229163402325539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + (A253441 (n + 1) - A253434 (n + 1))

end

end A253440.P11149229163402325539

namespace A253440

/-- `A253433(n+1)+A253441(n+1)-A253434(n+1)` -/
def P11149229163402325539.Spec : Prop :=
  ∀ n, P11149229163402325539.a n = A253440 (n + 1)

end A253440

/-! ## A253440.P632998872247164053

`3*a(n-1)-2*a(n-2)` with `a(0)=325, a(1)=324, a(2)=337, a(3)=372, a(4)=444`
-/

namespace A253440.P632998872247164053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [325, 324, 337, 372, 444] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A253440.P632998872247164053

namespace A253440

/-- `3*a(n-1)-2*a(n-2)` -/
def P632998872247164053.Spec : Prop :=
  ∀ n, P632998872247164053.a n = A253440 (n + 1)

end A253440

/-!
# A253441: Number of (7+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253441, the canonical program `A253441.P13652333514978894263` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253441 has offset 1).

The definition of A253441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253441.P12853809659387239625

`A253440(n+1)+A124512(A328579(n)²)`
-/

namespace A253441.P12853809659387239625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253440 (n + 1) + A124512 (A328579 n ^ 2).toNat

end

end A253441.P12853809659387239625

namespace A253441

/-- `A253440(n+1)+A124512(A328579(n)²)` -/
def P12853809659387239625.Spec : Prop :=
  ∀ n, P12853809659387239625.a n = A253441 (n + 1)

end A253441

/-! ## A253441.P13652333514978894263

`A253440(n+1)+2*A124512(A004139(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A253441

/-- `A253440(n+1)+2*A124512(A004139(n+1))` -/
def P13652333514978894263.Spec : Prop :=
  ∀ n, P13652333514978894263.a n = A253441 (n + 1)

theorem P13652333514978894263.correct : P13652333514978894263.Spec := by
  intro n
  simp only [A253441, Nat.add_sub_cancel]

end A253441

/-! ## A253441.P7386773849525797754

`A253440(n+1)+2*A124512(A031215(n+1))`
-/

namespace A253441.P7386773849525797754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253440 (n + 1) + 2 * A124512 (A031215 (n + 1)).toNat

end

end A253441.P7386773849525797754

namespace A253441

/-- `A253440(n+1)+2*A124512(A031215(n+1))` -/
def P7386773849525797754.Spec : Prop :=
  ∀ n, P7386773849525797754.a n = A253441 (n + 1)

end A253441

/-! ## A253441.P763075248015956411

`A253158(n+1)+A253438(n+1)-A253155(n+1)`
-/

namespace A253441.P763075248015956411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253158 (n + 1) + (A253438 (n + 1) - A253155 (n + 1))

end

end A253441.P763075248015956411

namespace A253441

/-- `A253158(n+1)+A253438(n+1)-A253155(n+1)` -/
def P763075248015956411.Spec : Prop :=
  ∀ n, P763075248015956411.a n = A253441 (n + 1)

end A253441

/-! ## A253441.P1091400088709970978

`A253434(n+1)+A253438(n+1)-A253431(n+1)`
-/

namespace A253441.P1091400088709970978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253434 (n + 1) + (A253438 (n + 1) - A253431 (n + 1))

end

end A253441.P1091400088709970978

namespace A253441

/-- `A253434(n+1)+A253438(n+1)-A253431(n+1)` -/
def P1091400088709970978.Spec : Prop :=
  ∀ n, P1091400088709970978.a n = A253441 (n + 1)

end A253441

/-! ## A253441.P646002357690040968

`A253434(n+1)+A253439(n+1)-A253432(n+1)`
-/

namespace A253441.P646002357690040968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253434 (n + 1) + (A253439 (n + 1) - A253432 (n + 1))

end

end A253441.P646002357690040968

namespace A253441

/-- `A253434(n+1)+A253439(n+1)-A253432(n+1)` -/
def P646002357690040968.Spec : Prop :=
  ∀ n, P646002357690040968.a n = A253441 (n + 1)

end A253441

/-! ## A253441.P1268355905016787061

`A253434(n+1)+A253440(n+1)-A253433(n+1)`
-/

namespace A253441.P1268355905016787061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253434 (n + 1) + (A253440 (n + 1) - A253433 (n + 1))

end

end A253441.P1268355905016787061

namespace A253441

/-- `A253434(n+1)+A253440(n+1)-A253433(n+1)` -/
def P1268355905016787061.Spec : Prop :=
  ∀ n, P1268355905016787061.a n = A253441 (n + 1)

end A253441

/-! ## A253441.P18090984644588529980

`3*a(n-1)-2*a(n-2)` with `a(0)=613, a(1)=612, a(2)=625, a(3)=660, a(4)=732`
-/

namespace A253441.P18090984644588529980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [613, 612, 625, 660, 732] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A253441.P18090984644588529980

namespace A253441

/-- `3*a(n-1)-2*a(n-2)` -/
def P18090984644588529980.Spec : Prop :=
  ∀ n, P18090984644588529980.a n = A253441 (n + 1)

end A253441

/-! ## A253441.P5747783794057690377

`A253440(n+1)+2*A124512(A005384(n+1))`
-/

namespace A253441.P5747783794057690377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253440 (n + 1) + 2 * A124512 (A005384 (n + 1)).toNat

end

end A253441.P5747783794057690377

namespace A253441

/-- `A253440(n+1)+2*A124512(A005384(n+1))` -/
def P5747783794057690377.Spec : Prop :=
  ∀ n, P5747783794057690377.a n = A253441 (n + 1)

end A253441

/-!
# A253442: Expansion of x * (96 - 816*x) / ((1 - x) * (1 - 1442*x + x^2)) in powers of x.

The programs for A253442, there is no canonical definition to state claims against.
-/

/-! ## A253442.P7061151188535524431

`A253410(2*(n+1))`
-/

namespace A253442.P7061151188535524431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253410 (2 * (n + 1))

end

end A253442.P7061151188535524431

/-! ## A253442.P12409733378177236689

`A254332(4*(n+1))`
-/

namespace A253442.P12409733378177236689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (4 * (n + 1))

end

end A253442.P12409733378177236689

/-! ## A253442.P5553097688912648378

`A129556(A004767(n)+1)+1`
-/

namespace A253442.P5553097688912648378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129556 (A004767 n + 1).toNat + 1

end

end A253442.P5553097688912648378

/-!
# A253444: Lengths of runs of identical terms in A253443.

The programs for A253444, there is no canonical definition to state claims against.
-/

/-! ## A253444.P3038903212193767640

`Δ[record[A109736(n+3)]]`
-/

namespace A253444.P3038903212193767640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253444.P3038903212193767640

/-! ## A253444.P6376520508198210897

`record[A109736(n+4)]-record[A109736(n+3)]`
-/

namespace A253444.P6376520508198210897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A253444.P6376520508198210897

/-! ## A253444.P14710835336053480077

`Δ[lt[A109890(n+3), A253443(n+4)]]`
-/

namespace A253444.P14710835336053480077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253443 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A253444.P14710835336053480077

/-! ## A253444.P12038601512368537153

`Δ[record[A094341(n+3)]]`
-/

namespace A253444.P12038601512368537153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094341 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253444.P12038601512368537153

/-!
# A253445: a(n) = concatenation of n^2 with itself.

The programs for A253445, the canonical program `A253445.P3990577317114025195` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253445 has offset 1).

The definition of A253445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253445.P3990577317114025195

`A020338((n+1)²)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A253445

/-- `A020338((n+1)²)` -/
def P3990577317114025195.Spec : Prop :=
  ∀ n, P3990577317114025195.a n = A253445 (n + 1)

theorem P3990577317114025195.correct : P3990577317114025195.Spec := by
  intro n
  simp only [A253445, Nat.add_sub_cancel]

end A253445

/-! ## A253445.P16513544791423877290

`(n+1)²*(1+10^(A004216((n+1)²)+1))`
-/

namespace A253445.P16513544791423877290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) * (1 + (10 : ℚ) ^ (A004216 ((n + 1) ^ 2) + 1 : ℤ))

end

end A253445.P16513544791423877290

namespace A253445

/-- `(n+1)²*(1+10^(A004216((n+1)²)+1))` -/
def P16513544791423877290.Spec : Prop :=
  ∀ n, P16513544791423877290.a n = (A253445 (n + 1) : ℚ)

end A253445

/-! ## A253445.P12022600650281215413

`(n+1)*(A053061(n+1)-(n²+n))`
-/

namespace A253445.P12022600650281215413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A053061 (n + 1) - (n ^ 2 + n : ℤ))

end

end A253445.P12022600650281215413

namespace A253445

/-- `(n+1)*(A053061(n+1)-(n²+n))` -/
def P12022600650281215413.Spec : Prop :=
  ∀ n, P12022600650281215413.a n = A253445 (n + 1)

end A253445

/-! ## A253445.P12035248970199348733

`A002378(n)+A239461(n+1)/(n+1)`
-/

namespace A253445.P12035248970199348733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 n : ℚ) + (A239461 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A253445.P12035248970199348733

namespace A253445

/-- `A002378(n)+A239461(n+1)/(n+1)` -/
def P12035248970199348733.Spec : Prop :=
  ∀ n, P12035248970199348733.a n = (A253445 (n + 1) : ℚ)

end A253445

/-! ## A253445.P1766064348766944483

`(n+1)*(A239464(n+1)+n)`
-/

namespace A253445.P1766064348766944483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A239464 (n + 1) + (n : ℤ))

end

end A253445.P1766064348766944483

namespace A253445

/-- `(n+1)*(A239464(n+1)+n)` -/
def P1766064348766944483.Spec : Prop :=
  ∀ n, P1766064348766944483.a n = A253445 (n + 1)

end A253445

/-! ## A253445.P11063689451783710488

`A002378(n)+lcm(n+1, A239464(n+1))`
-/

namespace A253445.P11063689451783710488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (Int.lcm (n + 1 : ℤ) (A239464 (n + 1)) : ℤ)

end

end A253445.P11063689451783710488

namespace A253445

/-- `A002378(n)+lcm(n+1, A239464(n+1))` -/
def P11063689451783710488.Spec : Prop :=
  ∀ n, P11063689451783710488.a n = A253445 (n + 1)

end A253445

/-! ## A253445.P6245699868633001799

`(A239464(n+1)+n)/(n+1)^A163805(A016813(n))`
-/

namespace A253445.P6245699868633001799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239464 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ) ^ (A163805 (A016813 n).toNat : ℤ)

end

end A253445.P6245699868633001799

namespace A253445

/-- `(A239464(n+1)+n)/(n+1)^A163805(A016813(n))` -/
def P6245699868633001799.Spec : Prop :=
  ∀ n, P6245699868633001799.a n = (A253445 (n + 1) : ℚ)

end A253445

/-! ## A253445.P3468328075425889967

`record[A020338(A133310(n)²)]`
-/

namespace A253445.P3468328075425889967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253445.P3468328075425889967

namespace A253445

/-- `record[A020338(A133310(n)²)]` -/
def P3468328075425889967.Spec : Prop :=
  ∀ n, P3468328075425889967.a n = A253445 (n + 1)

end A253445

/-! ## A253445.P14723222165726137893

`record[A020338(A328399(n)²)]`
-/

namespace A253445.P14723222165726137893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A328399 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253445.P14723222165726137893

namespace A253445

/-- `record[A020338(A328399(n)²)]` -/
def P14723222165726137893.Spec : Prop :=
  ∀ n, P14723222165726137893.a n = A253445 (n + 1)

end A253445

/-! ## A253445.P12806031629668871255

`abs(A020338(A005563(n)+1)-1)+1`
-/

namespace A253445.P12806031629668871255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020338 (A005563 n + 1).toNat - 1| + 1

end

end A253445.P12806031629668871255

namespace A253445

/-- `abs(A020338(A005563(n)+1)-1)+1` -/
def P12806031629668871255.Spec : Prop :=
  ∀ n, P12806031629668871255.a n = A253445 (n + 1)

end A253445

/-!
# A253446: Indices of centered heptagonal numbers (A069099) which are also centered octagonal numbers (A016754).

The programs for A253446, the canonical program `A253446.P5688199344253049094` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253446 has offset 1).

The definition of A253446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253446.P5688199344253049094

`31*a(n-1)-31*a(n-2)+a(n-3)` with `a(0)=1, a(1)=16, a(2)=465`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253446

/-- `31*a(n-1)-31*a(n-2)+a(n-3)` -/
def P5688199344253049094.Spec : Prop :=
  ∀ n, P5688199344253049094.a n = A253446 (n + 1)

theorem P5688199344253049094.correct : P5688199344253049094.Spec := by
  intro n
  simp only [A253446, Nat.add_sub_cancel]

end A253446

/-! ## A253446.P6996927334259889593

`∑[A068203(n)]`
-/

namespace A253446.P6996927334259889593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253446.P6996927334259889593

namespace A253446

/-- `∑[A068203(n)]` -/
def P6996927334259889593.Spec : Prop :=
  ∀ n, P6996927334259889593.a n = A253446 (n + 1)

end A253446

/-! ## A253446.P7841873686219597029

`ceil(A157878(n+1)/2)`
-/

namespace A253446.P7841873686219597029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157878 (n + 1) : ℚ) / 2⌉

end

end A253446.P7841873686219597029

namespace A253446

/-- `ceil(A157878(n+1)/2)` -/
def P7841873686219597029.Spec : Prop :=
  ∀ n, P7841873686219597029.a n = A253446 (n + 1)

end A253446

/-! ## A253446.P11306200948790795553

`∑[2*A322709(n)+1]`
-/

namespace A253446.P11306200948790795553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322709 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253446.P11306200948790795553

namespace A253446

/-- `∑[2*A322709(n)+1]` -/
def P11306200948790795553.Spec : Prop :=
  ∀ n, P11306200948790795553.a n = A253446 (n + 1)

end A253446

/-! ## A253446.P147712454591192134

`(A041096(2*n)/7+1)/2`
-/

namespace A253446.P147712454591192134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A041096 (2 * n) : ℚ) / 7 + 1) / 2

end

end A253446.P147712454591192134

namespace A253446

/-- `(A041096(2*n)/7+1)/2` -/
def P147712454591192134.Spec : Prop :=
  ∀ n, P147712454591192134.a n = (A253446 (n + 1) : ℚ)

end A253446

/-! ## A253446.P11555513888352895885

`(A295336(2*n+1)-A295336(2*n))*A295337(2*n+1)`
-/

namespace A253446.P11555513888352895885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295336 (2 * n + 1) - A295336 (2 * n)) * A295337 (2 * n + 1)

end

end A253446.P11555513888352895885

namespace A253446

/-- `(A295336(2*n+1)-A295336(2*n))*A295337(2*n+1)` -/
def P11555513888352895885.Spec : Prop :=
  ∀ n, P11555513888352895885.a n = A253446 (n + 1)

end A253446

/-! ## A253446.P15429043361207597754

`∑[A041418(2*n+1)-A041418(2*n)]`
-/

namespace A253446.P15429043361207597754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041418 (2 * n + 1) - A041418 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253446.P15429043361207597754

namespace A253446

/-- `∑[A041418(2*n+1)-A041418(2*n)]` -/
def P15429043361207597754.Spec : Prop :=
  ∀ n, P15429043361207597754.a n = A253446 (n + 1)

end A253446

/-!
# A253447: Indices of centered octagonal numbers (A016754) which are also centered heptagonal numbers (A069099).

The programs for A253447, the canonical program `A253447.P3647515596551212490` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253447 has offset 1).

The definition of A253447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253447.P3647515596551212490

`31*a(n-1)-31*a(n-2)+a(n-3)` with `a(0)=1, a(1)=15, a(2)=435`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253447

/-- `31*a(n-1)-31*a(n-2)+a(n-3)` -/
def P3647515596551212490.Spec : Prop :=
  ∀ n, P3647515596551212490.a n = A253447 (n + 1)

theorem P3647515596551212490.correct : P3647515596551212490.Spec := by
  intro n
  simp only [A253447, Nat.add_sub_cancel]

end A253447

/-! ## A253447.P10103933770227229678

`ceil(A157877(n+1)/2)`
-/

namespace A253447.P10103933770227229678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157877 (n + 1) : ℚ) / 2⌉

end

end A253447.P10103933770227229678

namespace A253447

/-- `ceil(A157877(n+1)/2)` -/
def P10103933770227229678.Spec : Prop :=
  ∀ n, P10103933770227229678.a n = A253447 (n + 1)

end A253447

/-! ## A253447.P9902328600097523612

`round(A041097(2*n)/2)`
-/

namespace A253447.P9902328600097523612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041097 (2 * n) : ℚ) / 2)

end

end A253447.P9902328600097523612

namespace A253447

/-- `round(A041097(2*n)/2)` -/
def P9902328600097523612.Spec : Prop :=
  ∀ n, P9902328600097523612.a n = A253447 (n + 1)

end A253447

/-! ## A253447.P12295358829707851414

`round(A041419(2*n)/2)`
-/

namespace A253447.P12295358829707851414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041419 (2 * n) : ℚ) / 2)

end

end A253447.P12295358829707851414

namespace A253447

/-- `round(A041419(2*n)/2)` -/
def P12295358829707851414.Spec : Prop :=
  ∀ n, P12295358829707851414.a n = A253447 (n + 1)

end A253447

/-! ## A253447.P6329996761358349327

`A068203(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A253447.P6329996761358349327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068203 n + (1 - a (n - 1))

end

end A253447.P6329996761358349327

namespace A253447

/-- `A068203(n)+1-a(n-1)` -/
def P6329996761358349327.Spec : Prop :=
  ∀ n, P6329996761358349327.a n = A253447 (n + 1)

end A253447

/-! ## A253447.P8125414825265972499

`(A041097(2*n)+A000034(2*n))/2`
-/

namespace A253447.P8125414825265972499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 (2 * n) + A000034 (2 * n) : ℚ) / 2

end

end A253447.P8125414825265972499

namespace A253447

/-- `(A041097(2*n)+A000034(2*n))/2` -/
def P8125414825265972499.Spec : Prop :=
  ∀ n, P8125414825265972499.a n = (A253447 (n + 1) : ℚ)

end A253447

/-! ## A253447.P1132096323848265827

`(A041097(2*n)+1)/A020639(2*(n+1))`
-/

namespace A253447.P1132096323848265827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 (2 * n) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A253447.P1132096323848265827

namespace A253447

/-- `(A041097(2*n)+1)/A020639(2*(n+1))` -/
def P1132096323848265827.Spec : Prop :=
  ∀ n, P1132096323848265827.a n = (A253447 (n + 1) : ℚ)

end A253447

/-! ## A253447.P9397207112390154440

`(A041097(2*n)+1)/A040048(2*n+1)`
-/

namespace A253447.P9397207112390154440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041097 (2 * n) + 1 : ℚ) / (A040048 (2 * n + 1) : ℚ)

end

end A253447.P9397207112390154440

namespace A253447

/-- `(A041097(2*n)+1)/A040048(2*n+1)` -/
def P9397207112390154440.Spec : Prop :=
  ∀ n, P9397207112390154440.a n = (A253447 (n + 1) : ℚ)

end A253447

/-!
# A253448: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253448, there is no canonical definition to state claims against.
-/

/-! ## A253448.P11037479183884612778

`A253456(∑[4*n]+1)`
-/

namespace A253448.P11037479183884612778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253448.P11037479183884612778

/-! ## A253448.P17203356473641686414

`A253456(A001844(n))+char[13]`
-/

namespace A253448.P17203356473641686414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253448.P17203356473641686414

/-! ## A253448.P15952187069889888928

`record[A003982(n)*A253456(n+1)]`
-/

namespace A253448.P15952187069889888928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253448.P15952187069889888928

/-! ## A253448.P2553468897631275358

`record[A214505(n)*A253456(n+1)]`
-/

namespace A253448.P2553468897631275358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A253456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253448.P2553468897631275358

/-! ## A253448.P16742648522496283442

`record[gcd(A003987(n), A253456(n+1))]`
-/

namespace A253448.P16742648522496283442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A253456 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253448.P16742648522496283442

/-!
# A253449: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253449, there is no canonical definition to state claims against.
-/

/-! ## A253449.P7551134027836845379

`A253456(∑[n]+1)`
-/

namespace A253449.P7551134027836845379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253449.P7551134027836845379

/-! ## A253449.P8882580631830650112

`A253495(∑[n]+1)`
-/

namespace A253449.P8882580631830650112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253449.P8882580631830650112

/-! ## A253449.P1375567987680964440

`record[A253495(n+1)]`
-/

namespace A253449.P1375567987680964440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253449.P1375567987680964440

/-! ## A253449.P17663444673804030986

`record[A253456(A056534(n+1))]`
-/

namespace A253449.P17663444673804030986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253449.P17663444673804030986

/-! ## A253449.P9448107913014897012

`record[A253456(A254052(n+1))]`
-/

namespace A253449.P9448107913014897012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253449.P9448107913014897012

/-!
# A253450: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253450, there is no canonical definition to state claims against.
-/

/-! ## A253450.P235085749355492744

`A253456(∑[n+1]+2)`
-/

namespace A253450.P235085749355492744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253450.P235085749355492744

/-! ## A253450.P4429579929508929583

`record[A253456(A008795(n)+2)]`
-/

namespace A253450.P4429579929508929583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253450.P4429579929508929583

/-! ## A253450.P7660336351442048584

`or(char[1], A253456(A238531(n+2)))`
-/

namespace A253450.P7660336351442048584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253456 (A238531 (n + 2)).toNat)

end

end A253450.P7660336351442048584

/-! ## A253450.P14452029713168773243

`record[root(A253456(n+2), A263643(n+1))]`
-/

namespace A253450.P14452029713168773243
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253456 (n + 2) : ℝ) ^ (1 / (A263643 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253450.P14452029713168773243

/-! ## A253450.P5735043154665102204

`A007318(C(2, n))*A253456(A238531(n+2))`
-/

namespace A253450.P5735043154665102204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253456 (A238531 (n + 2)).toNat

end

end A253450.P5735043154665102204

/-!
# A253451: Number of (n+1) X (3+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253451, there is no canonical definition to state claims against.
-/

/-! ## A253451.P11392276261550304377

`A253456(∑[n+2]+4)`
-/

namespace A253451.P11392276261550304377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253451.P11392276261550304377

/-! ## A253451.P16631563953008648738

`record[A253456(A008795(n)+3)]`
-/

namespace A253451.P16631563953008648738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253451.P16631563953008648738

/-! ## A253451.P4428633392145724041

`or(char[3], A253456(A167614(n+1)))`
-/

namespace A253451.P4428633392145724041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253456 (A167614 (n + 1)).toNat)

end

end A253451.P4428633392145724041

/-! ## A253451.P8276064062990884083

`record[A054525(n+1)*A253456(n+4)]`
-/

namespace A253451.P8276064062990884083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A253456 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253451.P8276064062990884083

/-! ## A253451.P3332849501022966633

`A253456(A167614(n+1))*A304042(n)`
-/

namespace A253451.P3332849501022966633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A167614 (n + 1)).toNat * A304042 n

end

end A253451.P3332849501022966633

/-!
# A253452: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253452, there is no canonical definition to state claims against.
-/

/-! ## A253452.P14786453417470260845

`A253456(∑[n+3]+7)`
-/

namespace A253452.P14786453417470260845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253452.P14786453417470260845

/-! ## A253452.P9965783798724656434

`A253456(A055998(n+1)+7)+char[24]`
-/

namespace A253452.P9965783798724656434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A055998 (n + 1) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253452.P9965783798724656434

/-! ## A253452.P4569672409336478535

`A007318(C(2, n))*A253456(A055998(n+1)+7)`
-/

namespace A253452.P4569672409336478535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253456 (A055998 (n + 1) + 7).toNat

end

end A253452.P4569672409336478535

/-! ## A253452.P9400614595165164231

`A000041(C(2, n+2))*A253456(A055998(n+1)+7)`
-/

namespace A253452.P9400614595165164231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A253456 (A055998 (n + 1) + 7).toNat

end

end A253452.P9400614595165164231

/-!
# A253453: Number of (n+1) X (5+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253453, there is no canonical definition to state claims against.
-/

/-! ## A253453.P8150953051970492278

`A253456(∑[n+4]+11)`
-/

namespace A253453.P8150953051970492278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A253453.P8150953051970492278

/-! ## A253453.P7078301924667998413

`A253456(A000096(n+3)+6)+char[34]`
-/

namespace A253453.P7078301924667998413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A000096 (n + 3) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253453.P7078301924667998413

/-! ## A253453.P13609046549441709434

`A253456(A374005(n+1))+A200214(n+1)`
-/

namespace A253453.P13609046549441709434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A374005 (n + 1)).toNat + A200214 (n + 1)

end

end A253453.P13609046549441709434

/-! ## A253453.P11399874241148849136

`A285007(n+1)+A253456(A374005(n+1))`
-/

namespace A253453.P11399874241148849136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A253456 (A374005 (n + 1)).toNat

end

end A253453.P11399874241148849136

/-! ## A253453.P10912887580306649291

`A253456(A374005(n+1))+A055641(2*n+3)`
-/

namespace A253453.P10912887580306649291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A374005 (n + 1)).toNat + A055641 (2 * n + 3)

end

end A253453.P10912887580306649291

/-!
# A253454: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253454, there is no canonical definition to state claims against.
-/

/-! ## A253454.P9846315090378746220

`A253456(C(n+6, 2)+6)`
-/

namespace A253454.P9846315090378746220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (Nat.choose (n + 6) 2 + 6)

end

end A253454.P9846315090378746220

/-! ## A253454.P2502369430528318382

`A253456(A374007(n+1))`
-/

namespace A253454.P2502369430528318382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A374007 (n + 1)).toNat

end

end A253454.P2502369430528318382

/-! ## A253454.P14580259339907592232

`A253456(A056115(n)+21)`
-/

namespace A253454.P14580259339907592232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A056115 n + 21).toNat

end

end A253454.P14580259339907592232

/-! ## A253454.P2598955343696461257

`A253456(A167499(n+4)+1)`
-/

namespace A253454.P2598955343696461257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A167499 (n + 4) + 1).toNat

end

end A253454.P2598955343696461257

/-! ## A253454.P1876255266310673299

`A253456(A167614(n+4)+3)`
-/

namespace A253454.P1876255266310673299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A167614 (n + 4) + 3).toNat

end

end A253454.P1876255266310673299

/-!
# A253455: Number of (n+1) X (7+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253455, there is no canonical definition to state claims against.
-/

/-! ## A253455.P17346620698605629476

`A253456(A374008(n+1))`
-/

namespace A253455.P17346620698605629476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A374008 (n + 1)).toNat

end

end A253455.P17346620698605629476

/-! ## A253455.P18061169692826275587

`A253456(A056119(n)+28)`
-/

namespace A253455.P18061169692826275587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A056119 n + 28).toNat

end

end A253455.P18061169692826275587

/-! ## A253455.P10636753277238943850

`A253456(eq[11, A066657(n)])`
-/

namespace A253455.P10636753277238943850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253455.P10636753277238943850

/-! ## A253455.P12360666827431365156

`A253456(A133263(n+6)+5)`
-/

namespace A253455.P12360666827431365156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A133263 (n + 6) + 5).toNat

end

end A253455.P12360666827431365156

/-! ## A253455.P8843824973316420265

`A253456(A000124(n+6)+6)`
-/

namespace A253455.P8843824973316420265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253456 (A000124 (n + 6) + 6).toNat

end

end A253455.P8843824973316420265

/-!
# A253457: Indices of centered hexagonal numbers (A003215) which are also centered heptagonal numbers (A069099).

The programs for A253457, the canonical program `A253457.P18356821852052065236` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253457 has offset 1).

The definition of A253457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253457.P18356821852052065236

`27*a(n-1)-27*a(n-2)+a(n-3)` with `a(0)=1, a(1)=14, a(2)=351`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253457

/-- `27*a(n-1)-27*a(n-2)+a(n-3)` -/
def P18356821852052065236.Spec : Prop :=
  ∀ n, P18356821852052065236.a n = A253457 (n + 1)

theorem P18356821852052065236.correct : P18356821852052065236.Spec := by
  intro n
  simp only [A253457, Nat.add_sub_cancel]

end A253457

/-! ## A253457.P17106315247964957492

`∑[26*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=13`
-/

namespace A253457.P17106315247964957492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  26 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253457.P17106315247964957492

namespace A253457

/-- `∑[26*a(n-1)-a(n-2)]` -/
def P17106315247964957492.Spec : Prop :=
  ∀ n, P17106315247964957492.a n = A253457 (n + 1)

end A253457

/-! ## A253457.P8936099112776087967

`∑[A097308(n)]`
-/

namespace A253457.P8936099112776087967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253457.P8936099112776087967

namespace A253457

/-- `∑[A097308(n)]` -/
def P8936099112776087967.Spec : Prop :=
  ∀ n, P8936099112776087967.a n = A253457 (n + 1)

end A253457

/-! ## A253457.P9885786340911736228

`∑[A090247(n)/2]`
-/

namespace A253457.P9885786340911736228
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090247 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253457.P9885786340911736228

namespace A253457

/-- `∑[A090247(n)/2]` -/
def P9885786340911736228.Spec : Prop :=
  ∀ n, P9885786340911736228.a n = (A253457 (n + 1) : ℚ)

end A253457

/-! ## A253457.P15895070354441736586

`round(A157461(n+1)/2)`
-/

namespace A253457.P15895070354441736586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157461 (n + 1) : ℚ) / 2)

end

end A253457.P15895070354441736586

namespace A253457

/-- `round(A157461(n+1)/2)` -/
def P15895070354441736586.Spec : Prop :=
  ∀ n, P15895070354441736586.a n = A253457 (n + 1)

end A253457

/-! ## A253457.P1632174112929421957

`ceil(A041070(2*n)/12)`
-/

namespace A253457.P1632174112929421957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041070 (2 * n) : ℚ) / 12⌉

end

end A253457.P1632174112929421957

namespace A253457

/-- `ceil(A041070(2*n)/12)` -/
def P1632174112929421957.Spec : Prop :=
  ∀ n, P1632174112929421957.a n = A253457 (n + 1)

end A253457

/-! ## A253457.P14418903788386690402

`∑[round((4*A322708(n)+1)/2)]`
-/

namespace A253457.P14418903788386690402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * A322708 n + 1 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253457.P14418903788386690402

namespace A253457

/-- `∑[round((4*A322708(n)+1)/2)]` -/
def P14418903788386690402.Spec : Prop :=
  ∀ n, P14418903788386690402.a n = A253457 (n + 1)

end A253457

/-! ## A253457.P5310644433680497990

`∑[A041310(2*n+1)-A041310(2*n)]`
-/

namespace A253457.P5310644433680497990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041310 (2 * n + 1) - A041310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253457.P5310644433680497990

namespace A253457

/-- `∑[A041310(2*n+1)-A041310(2*n)]` -/
def P5310644433680497990.Spec : Prop :=
  ∀ n, P5310644433680497990.a n = A253457 (n + 1)

end A253457

/-!
# A253458: Indices of centered heptagonal numbers (A069099) which are also centered hexagonal numbers (A003215).

The programs for A253458, the canonical program `A253458.P8123019171078557188` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253458 has offset 1).

The definition of A253458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253458.P8123019171078557188

`27*a(n-1)-27*a(n-2)+a(n-3)` with `a(0)=1, a(1)=13, a(2)=325`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253458

/-- `27*a(n-1)-27*a(n-2)+a(n-3)` -/
def P8123019171078557188.Spec : Prop :=
  ∀ n, P8123019171078557188.a n = A253458 (n + 1)

theorem P8123019171078557188.correct : P8123019171078557188.Spec := by
  intro n
  simp only [A253458, Nat.add_sub_cancel]

end A253458

/-! ## A253458.P17900830275155505365

`ceil(A153111(n+1)/2)`
-/

namespace A253458.P17900830275155505365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A153111 (n + 1) : ℚ) / 2⌉

end

end A253458.P17900830275155505365

namespace A253458

/-- `ceil(A153111(n+1)/2)` -/
def P17900830275155505365.Spec : Prop :=
  ∀ n, P17900830275155505365.a n = A253458 (n + 1)

end A253458

/-! ## A253458.P942367516457465154

`ceil(A041071(2*n)/2)`
-/

namespace A253458.P942367516457465154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041071 (2 * n) : ℚ) / 2⌉

end

end A253458.P942367516457465154

namespace A253458

/-- `ceil(A041071(2*n)/2)` -/
def P942367516457465154.Spec : Prop :=
  ∀ n, P942367516457465154.a n = A253458 (n + 1)

end A253458

/-! ## A253458.P1668421863010500708

`(A041311(2*n)+1)/2`
-/

namespace A253458.P1668421863010500708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041311 (2 * n) + 1 : ℚ) / 2

end

end A253458.P1668421863010500708

namespace A253458

/-- `(A041311(2*n)+1)/2` -/
def P1668421863010500708.Spec : Prop :=
  ∀ n, P1668421863010500708.a n = (A253458 (n + 1) : ℚ)

end A253458

/-! ## A253458.P9827171396074670693

`A097308(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A253458.P9827171396074670693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097308 n + (1 - a (n - 1))

end

end A253458.P9827171396074670693

namespace A253458

/-- `A097308(n)+1-a(n-1)` -/
def P9827171396074670693.Spec : Prop :=
  ∀ n, P9827171396074670693.a n = A253458 (n + 1)

end A253458

/-! ## A253458.P15433526925346573134

`(A084642(2*n)+A041071(2*n))/2`
-/

namespace A253458.P15433526925346573134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084642 (2 * n) + A041071 (2 * n) : ℚ) / 2

end

end A253458.P15433526925346573134

namespace A253458

/-- `(A084642(2*n)+A041071(2*n))/2` -/
def P15433526925346573134.Spec : Prop :=
  ∀ n, P15433526925346573134.a n = (A253458 (n + 1) : ℚ)

end A253458

/-!
# A253459: Indices of centered square numbers (A001844) which are also centered heptagonal numbers (A069099).

The programs for A253459, there is no canonical definition to state claims against.
-/

/-! ## A253459.P9983825207524133712

`ceil(A294972(2*n)/2)`
-/

namespace A253459.P9983825207524133712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A294972 (2 * n) : ℚ) / 2⌉

end

end A253459.P9983825207524133712

/-! ## A253459.P11194342595267059378

`A294972(3*n-n)/2+1/2`
-/

namespace A253459.P11194342595267059378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294972 (3 * n - n) : ℚ) / 2 + (1 : ℚ) / 2

end

end A253459.P11194342595267059378

/-! ## A253459.P18077485390247441361

`A007318(C(2, n))/2+A294972(2*n)/2`
-/

namespace A253459.P18077485390247441361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (Nat.choose 2 n) : ℚ) / 2 + (A294972 (2 * n) : ℚ) / 2

end

end A253459.P18077485390247441361

/-! ## A253459.P10223019838047108852

`2^A008683(A125256(n+2))+A294972(2*n)/2`
-/

namespace A253459.P10223019838047108852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A125256 (n + 2)).toNat : ℤ) + (A294972 (2 * n) : ℚ) / 2

end

end A253459.P10223019838047108852

/-! ## A253459.P4263090539532966573

`floor(A294972(2*n)/2*A008683(A006881(n+1)))+1`
-/

namespace A253459.P4263090539532966573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294972 (2 * n) : ℚ) / 2 * (A008683 (A006881 (n + 1)).toNat : ℚ)⌋ + 1

end

end A253459.P4263090539532966573

/-!
# A253460: Indices of centered heptagonal numbers (A069099) which are also centered square numbers (A001844).

The programs for A253460, there is no canonical definition to state claims against.
-/

/-! ## A253460.P1995004233092408977

`A105040(n+1)+1`
-/

namespace A253460.P1995004233092408977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105040 (n + 1) + 1

end

end A253460.P1995004233092408977

/-! ## A253460.P13045073634027288833

`A105051(n+2)+1`
-/

namespace A253460.P13045073634027288833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105051 (n + 2) + 1

end

end A253460.P13045073634027288833

/-! ## A253460.P9008857899376102885

`ceil(A294973(2*n)/2)`
-/

namespace A253460.P9008857899376102885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A294973 (2 * n) : ℚ) / 2⌉

end

end A253460.P9008857899376102885

/-! ## A253460.P7627899966856595074

`floor(A294973(2*n)/2)+A020985(n)²`
-/

namespace A253460.P7627899966856595074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294973 (2 * n) : ℚ) / 2⌋ + A020985 n ^ 2

end

end A253460.P7627899966856595074

/-! ## A253460.P12610052833380879800

`floor(A294973(2*n)/2)+A000108(gcd(n, n+1))`
-/

namespace A253460.P12610052833380879800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294973 (2 * n) : ℚ) / 2⌋ + A000108 (Nat.gcd n (n + 1))

end

end A253460.P12610052833380879800

/-!
# A253461: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253461, there is no canonical definition to state claims against.
-/

/-! ## A253461.P5994906643836557310

`A253468((n+1)²+n²)`
-/

namespace A253461.P5994906643836557310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 ((n + 1) ^ 2 + n ^ 2)

end

end A253461.P5994906643836557310

/-! ## A253461.P14777611566137144625

`lcm(A000079(n), A253468(A001844(n)))`
-/

namespace A253461.P14777611566137144625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A253468 (A001844 n).toNat)

end

end A253461.P14777611566137144625

/-! ## A253461.P14423622873686239919

`A007318(∑[n])*A253468(A001844(n))`
-/

namespace A253461.P14423622873686239919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A253468 (A001844 n).toNat

end

end A253461.P14423622873686239919

/-! ## A253461.P18441443365296934855

`A253468(A001844(n))+A000038(n+1)`
-/

namespace A253461.P18441443365296934855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A001844 n).toNat + A000038 (n + 1)

end

end A253461.P18441443365296934855

/-! ## A253461.P603582066712901333

`A253468(A001844(n))+2%A033999(n)`
-/

namespace A253461.P603582066712901333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A001844 n).toNat + Int.tmod 2 (A033999 n)

end

end A253461.P603582066712901333

/-!
# A253462: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253462, there is no canonical definition to state claims against.
-/

/-! ## A253462.P5815516239180190431

`A253468(∑[n]+1)`
-/

namespace A253462.P5815516239180190431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253462.P5815516239180190431

/-! ## A253462.P6895886888511098549

`record[A253468(n+1)]`
-/

namespace A253462.P6895886888511098549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253462.P6895886888511098549

/-! ## A253462.P9405265464197443461

`and(-3, A253468(A000124(n)))`
-/

namespace A253462.P9405265464197443461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A253468 (A000124 n).toNat)

end

end A253462.P9405265464197443461

/-! ## A253462.P3058414334790363152

`lcm(A033999(n), A253468(A000124(n)))`
-/

namespace A253462.P3058414334790363152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253468 (A000124 n).toNat)

end

end A253462.P3058414334790363152

/-! ## A253462.P14492259771597493182

`or(A000007(n), A253468(A000124(n)))`
-/

namespace A253462.P14492259771597493182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A253468 (A000124 n).toNat)

end

end A253462.P14492259771597493182

/-! ## A253462.P15498356185610237854

`A253468(A000124(n))+A000007(n+1)`
-/

namespace A253462.P15498356185610237854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A000124 n).toNat + A000007 (n + 1)

end

end A253462.P15498356185610237854

/-! ## A253462.P4918651816660259061

`A033999(2*n)*A253468(A000124(n))`
-/

namespace A253462.P4918651816660259061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A253468 (A000124 n).toNat

end

end A253462.P4918651816660259061

/-! ## A253462.P18025588515518792813

`A253468(A000124(n))+A008683(4*(n+1))`
-/

namespace A253462.P18025588515518792813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A000124 n).toNat + A008683 (4 * (n + 1))

end

end A253462.P18025588515518792813

/-! ## A253462.P9389101378760136901

`A253468(A000124(n))+C(2, A253468(n+1))`
-/

namespace A253462.P9389101378760136901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A000124 n).toNat + (Nat.choose 2 (A253468 (n + 1)).toNat : ℤ)

end

end A253462.P9389101378760136901

/-! ## A253462.P15342264503506780505

`A253468(A000124(n))/A001222(A008578(n+2))`
-/

namespace A253462.P15342264503506780505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253468 (A000124 n).toNat : ℚ) / (A001222 (A008578 (n + 2)).toNat : ℚ)

end

end A253462.P15342264503506780505

/-!
# A253463: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253463, there is no canonical definition to state claims against.
-/

/-! ## A253463.P11139942955848721217

`A253468(∑[n+1]+2)`
-/

namespace A253463.P11139942955848721217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253463.P11139942955848721217

/-! ## A253463.P16433973951854289173

`lcm(2, A253468(C(n+2, 2)+2))`
-/

namespace A253463.P16433973951854289173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253468 (Nat.choose (n + 2) 2 + 2))

end

end A253463.P16433973951854289173

/-! ## A253463.P14800864723371377377

`A253468(C(n+2, 2)+2)%A253451(n+1)`
-/

namespace A253463.P14800864723371377377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253468 (Nat.choose (n + 2) 2 + 2)) (A253451 (n + 1))

end

end A253463.P14800864723371377377

/-! ## A253463.P2517639750700263348

`record[A253468(A133263(A008611(n)))]`
-/

namespace A253463.P2517639750700263348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253463.P2517639750700263348

/-! ## A253463.P5536321748525479359

`lcm(2, A253468(A000096(n+1)))`
-/

namespace A253463.P5536321748525479359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253468 (A000096 (n + 1)).toNat)

end

end A253463.P5536321748525479359

/-!
# A253464: Number of (n+1) X (3+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253464, there is no canonical definition to state claims against.
-/

/-! ## A253464.P8510679296132507489

`A253468(A167614(n+1))`
-/

namespace A253464.P8510679296132507489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A167614 (n + 1)).toNat

end

end A253464.P8510679296132507489

/-! ## A253464.P8330112920158913208

`A253468(A046691(n)+7)`
-/

namespace A253464.P8330112920158913208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A046691 n + 7).toNat

end

end A253464.P8330112920158913208

/-! ## A253464.P6940121182298263809

`A253468(A167499(n)+n)`
-/

namespace A253464.P6940121182298263809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A167499 n + (n : ℤ)).toNat

end

end A253464.P6940121182298263809

/-! ## A253464.P16854263951529846764

`A253468(eq[2, A131818(n+1)-2])`
-/

namespace A253464.P16854263951529846764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253464.P16854263951529846764

/-! ## A253464.P17530583040054261186

`A253468(eq[2, A131818(n+1)/2])`
-/

namespace A253464.P17530583040054261186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131818 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A253464.P17530583040054261186

/-! ## A253464.P4613599606893029842

`A253468(∑[n+3]+1)`
-/

namespace A253464.P4613599606893029842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253464.P4613599606893029842

/-! ## A253464.P13946017482994746711

`lcm(2, A253468(A034856(n+2)))`
-/

namespace A253464.P13946017482994746711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253468 (A034856 (n + 2)).toNat)

end

end A253464.P13946017482994746711

/-!
# A253465: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253465, there is no canonical definition to state claims against.
-/

/-! ## A253465.P4075904657385388847

`A253468(∑[n+3]+7)`
-/

namespace A253465.P4075904657385388847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253465.P4075904657385388847

/-! ## A253465.P558452482740124947

`lcm(2, A253468(A374004(n+1)))`
-/

namespace A253465.P558452482740124947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253468 (A374004 (n + 1)).toNat)

end

end A253465.P558452482740124947

/-! ## A253465.P14263933741210667962

`A253468(A374004(n+1))+A051775(A000217(n))`
-/

namespace A253465.P14263933741210667962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A374004 (n + 1)).toNat + A051775 (A000217 n).toNat

end

end A253465.P14263933741210667962

/-!
# A253466: Number of (n+1) X (5+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253466, there is no canonical definition to state claims against.
-/

/-! ## A253466.P6530890277344778201

`A253468(A167499(n+3))`
-/

namespace A253466.P6530890277344778201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A167499 (n + 3)).toNat

end

end A253466.P6530890277344778201

/-! ## A253466.P11995933720809170320

`A253468(A155212(n)+13)`
-/

namespace A253466.P11995933720809170320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A155212 n + 13).toNat

end

end A253466.P11995933720809170320

/-! ## A253466.P6227693390088536549

`A253468(A056000(n)+15)`
-/

namespace A253466.P6227693390088536549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A056000 n + 15).toNat

end

end A253466.P6227693390088536549

/-! ## A253466.P1637920063902134535

`A253468(Δ[A264443(n)])`
-/

namespace A253466.P1637920063902134535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (f1 (n + 1) - f1 n).toNat

end

end A253466.P1637920063902134535

/-! ## A253466.P13067931022678159146

`A253468(A374005(n+1))`
-/

namespace A253466.P13067931022678159146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A374005 (n + 1)).toNat

end

end A253466.P13067931022678159146

/-! ## A253466.P11320417608785178956

`A253468(A046691(n+3))`
-/

namespace A253466.P11320417608785178956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A046691 (n + 3)).toNat

end

end A253466.P11320417608785178956

/-! ## A253466.P8934949563656799076

`A253468(eq[4, A193592(n)])`
-/

namespace A253466.P8934949563656799076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253466.P8934949563656799076

/-! ## A253466.P9280436699992146492

`A253468(Δ[A023545(n+1)])`
-/

namespace A253466.P9280436699992146492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (f1 (n + 1) - f1 n).toNat

end

end A253466.P9280436699992146492

/-! ## A253466.P3175177511705566499

`A253468(A264443(n+1)-A264443(n))`
-/

namespace A253466.P3175177511705566499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A264443 (n + 1) - A264443 n).toNat

end

end A253466.P3175177511705566499

/-!
# A253467: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253467, there is no canonical definition to state claims against.
-/

/-! ## A253467.P14843194982857297602

`A253468(eq[7, A131818(n+1)])`
-/

namespace A253467.P14843194982857297602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253467.P14843194982857297602

/-! ## A253467.P4910508618406123061

`A253468(A374007(n+1))`
-/

namespace A253467.P4910508618406123061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A374007 (n + 1)).toNat

end

end A253467.P4910508618406123061

/-! ## A253467.P14387069144445900761

`A253468(A052905(n+3))`
-/

namespace A253467.P14387069144445900761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A052905 (n + 3)).toNat

end

end A253467.P14387069144445900761

/-! ## A253467.P8501486229454903674

`A253468(eq[3, A219347(n)])`
-/

namespace A253467.P8501486229454903674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253467.P8501486229454903674

/-! ## A253467.P16705394340794109713

`A253468(eq[5, A193592(n)])`
-/

namespace A253467.P16705394340794109713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253467.P16705394340794109713

/-! ## A253467.P8042864484685675454

`A253468(A155212(n+2)+3)`
-/

namespace A253467.P8042864484685675454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A155212 (n + 2) + 3).toNat

end

end A253467.P8042864484685675454

/-! ## A253467.P5177945439570739534

`A253468(Δ[Δ[A006504(n+1)]])`
-/

namespace A253467.P5177945439570739534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (f1 (n + 1) - f1 n).toNat

end

end A253467.P5177945439570739534

/-! ## A253467.P7544955191496130367

`A253468(Δ[A264443(n+1)]-1)`
-/

namespace A253467.P7544955191496130367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (f1 (n + 1) - f1 n - 1).toNat

end

end A253467.P7544955191496130367

/-! ## A253467.P6634779748371673853

`A253468(Δ[A023545(n+2)]-1)`
-/

namespace A253467.P6634779748371673853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (f1 (n + 1) - f1 n - 1).toNat

end

end A253467.P6634779748371673853

/-!
# A253469: Number of (n+1) X (7+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal minimum unequal to its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253469, there is no canonical definition to state claims against.
-/

/-! ## A253469.P9908900716775214940

`A253468(eq[8, A131818(n+1)])`
-/

namespace A253469.P9908900716775214940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253469.P9908900716775214940

/-! ## A253469.P10632379162256118594

`A253468(A374008(n+1))`
-/

namespace A253469.P10632379162256118594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A374008 (n + 1)).toNat

end

end A253469.P10632379162256118594

/-! ## A253469.P9930190097018799931

`A253468(A055999(n+4))`
-/

namespace A253469.P9930190097018799931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (A055999 (n + 4)).toNat

end

end A253469.P9930190097018799931

/-! ## A253469.P16952928098528652155

`A253468(eq[4, A219347(n)])`
-/

namespace A253469.P16952928098528652155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253469.P16952928098528652155

/-! ## A253469.P12859823472261622964

`A253468(eq[6, A193592(n)])`
-/

namespace A253469.P12859823472261622964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253469.P12859823472261622964

/-!
# A253470: Indices of centered triangular numbers (A005448) which are also centered pentagonal numbers (A005891).

The programs for A253470, the canonical program `A253470.P11777615646132955038` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253470 has offset 1).

The definition of A253470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253470.P11777615646132955038

`9*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=36`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253470

/-- `9*a(n-1)-9*a(n-2)+a(n-3)` -/
def P11777615646132955038.Spec : Prop :=
  ∀ n, P11777615646132955038.a n = A253470 (n + 1)

theorem P11777615646132955038.correct : P11777615646132955038.Spec := by
  intro n
  simp only [A253470, Nat.add_sub_cancel]

end A253470

/-! ## A253470.P9063065040895729962

`∑[ogf((1-4x)/(1-8x+x^2))]`
-/

namespace A253470.P9063065040895729962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253470.P9063065040895729962

namespace A253470

/-- `∑[ogf((1-4x)/(1-8x+x^2))]` -/
def P9063065040895729962.Spec : Prop :=
  ∀ n, P9063065040895729962.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P12591674132068972163

`ogf((1-4x)/(1-9x+9x^2-x^3))`
-/

namespace A253470.P12591674132068972163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -9, 9, -1] n

end

end A253470.P12591674132068972163

namespace A253470

/-- `ogf((1-4x)/(1-9x+9x^2-x^3))` -/
def P12591674132068972163.Spec : Prop :=
  ∀ n, P12591674132068972163.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P16200986483249567956

`∑[8*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A253470.P16200986483249567956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  8 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253470.P16200986483249567956

namespace A253470

/-- `∑[8*a(n-1)-a(n-2)]` -/
def P16200986483249567956.Spec : Prop :=
  ∀ n, P16200986483249567956.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P11381069484191458856

`8*a(n-1)-(a(n-2)+3)` with `a(0)=1, a(1)=5`
-/

namespace A253470.P11381069484191458856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  8 * a (n - 1) - (a (n - 2) + 3)

end

end A253470.P11381069484191458856

namespace A253470

/-- `8*a(n-1)-(a(n-2)+3)` -/
def P11381069484191458856.Spec : Prop :=
  ∀ n, P11381069484191458856.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P10009136357734318818

`8*a(n-1)-3-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A253470.P10009136357734318818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  8 * a (n - 1) - 3 - a (n - 2)

end

end A253470.P10009136357734318818

namespace A253470

/-- `8*a(n-1)-3-a(n-2)` -/
def P10009136357734318818.Spec : Prop :=
  ∀ n, P10009136357734318818.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P4260587621798748539

`∑[A001091(n)]`
-/

namespace A253470.P4260587621798748539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253470.P4260587621798748539

namespace A253470

/-- `∑[A001091(n)]` -/
def P4260587621798748539.Spec : Prop :=
  ∀ n, P4260587621798748539.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P2310519298724998091

`ceil(A057080(n)/2)`
-/

namespace A253470.P2310519298724998091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057080 n : ℚ) / 2⌉

end

end A253470.P2310519298724998091

namespace A253470

/-- `ceil(A057080(n)/2)` -/
def P2310519298724998091.Spec : Prop :=
  ∀ n, P2310519298724998091.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P17802778745623555138

`∑[A080871(2*n)]`
-/

namespace A253470.P17802778745623555138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253470.P17802778745623555138

namespace A253470

/-- `∑[A080871(2*n)]` -/
def P17802778745623555138.Spec : Prop :=
  ∀ n, P17802778745623555138.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P12086386858126763267

`∑[A086903(n)/2]`
-/

namespace A253470.P12086386858126763267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086903 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253470.P12086386858126763267

namespace A253470

/-- `∑[A086903(n)/2]` -/
def P12086386858126763267.Spec : Prop :=
  ∀ n, P12086386858126763267.a n = (A253470 (n + 1) : ℚ)

end A253470

/-! ## A253470.P5330373389669967502

`A145607(n+1)+1`
-/

namespace A253470.P5330373389669967502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145607 (n + 1) + 1

end

end A253470.P5330373389669967502

namespace A253470

/-- `A145607(n+1)+1` -/
def P5330373389669967502.Spec : Prop :=
  ∀ n, P5330373389669967502.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P9031229206072859017

`record[ceil(A177187(n+1)/2)]`
-/

namespace A253470.P9031229206072859017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177187 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253470.P9031229206072859017

namespace A253470

/-- `record[ceil(A177187(n+1)/2)]` -/
def P9031229206072859017.Spec : Prop :=
  ∀ n, P9031229206072859017.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P9945241454246761163

`ceil(A177187(2*n+1)/2)`
-/

namespace A253470.P9945241454246761163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177187 (2 * n + 1) : ℚ) / 2⌉

end

end A253470.P9945241454246761163

namespace A253470

/-- `ceil(A177187(2*n+1)/2)` -/
def P9945241454246761163.Spec : Prop :=
  ∀ n, P9945241454246761163.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P1382427360327881875

`ceil(A322780(2*n+1)/2)`
-/

namespace A253470.P1382427360327881875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322780 (2 * n + 1) : ℚ) / 2⌉

end

end A253470.P1382427360327881875

namespace A253470

/-- `ceil(A322780(2*n+1)/2)` -/
def P1382427360327881875.Spec : Prop :=
  ∀ n, P1382427360327881875.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P14422078020180165034

`A080871(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A253470.P14422078020180165034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080871 (n + n) + a (n - 1)

end

end A253470.P14422078020180165034

namespace A253470

/-- `A080871(n+n)+a(n-1)` -/
def P14422078020180165034.Spec : Prop :=
  ∀ n, P14422078020180165034.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P352266995978499366

`A182432(n)+A001090(n)`
-/

namespace A253470.P352266995978499366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182432 n + A001090 n

end

end A253470.P352266995978499366

namespace A253470

/-- `A182432(n)+A001090(n)` -/
def P352266995978499366.Spec : Prop :=
  ∀ n, P352266995978499366.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P16297687099393804549

`∑[A144479(n)+A001090(n)]`
-/

namespace A253470.P16297687099393804549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144479 n + A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253470.P16297687099393804549

namespace A253470

/-- `∑[A144479(n)+A001090(n)]` -/
def P16297687099393804549.Spec : Prop :=
  ∀ n, P16297687099393804549.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P5638266767489045494

`A001090(n)+A145608(n)+1`
-/

namespace A253470.P5638266767489045494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n + (A145608 n + 1)

end

end A253470.P5638266767489045494

namespace A253470

/-- `A001090(n)+A145608(n)+1` -/
def P5638266767489045494.Spec : Prop :=
  ∀ n, P5638266767489045494.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P3986425815299785744

`∑[2*A077246(n)-A077244(n)]`
-/

namespace A253470.P3986425815299785744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077246 n - A077244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253470.P3986425815299785744

namespace A253470

/-- `∑[2*A077246(n)-A077244(n)]` -/
def P3986425815299785744.Spec : Prop :=
  ∀ n, P3986425815299785744.a n = A253470 (n + 1)

end A253470

/-! ## A253470.P6422337682882973309

`∑[A341927(n)-2*A001090(n)]`
-/

namespace A253470.P6422337682882973309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341927 n - 2 * A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253470.P6422337682882973309

namespace A253470

/-- `∑[A341927(n)-2*A001090(n)]` -/
def P6422337682882973309.Spec : Prop :=
  ∀ n, P6422337682882973309.a n = A253470 (n + 1)

end A253470

/-!
# A253472: Square Pairs: Numbers n such that 1, 2, ..., 2n can be partitioned into n pairs, where each pair adds up to a perfect square.

The programs for A253472, the canonical program `A253472.P17520418202881375319` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253472 has offset 1).

The definition of A253472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253472.P17520418202881375319

`2*a(n-1)-a(n-2)` with `a(0)=4, a(1)=7, a(2)=8, a(3)=9, a(4)=12, a(5)=13`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253472

/-- `2*a(n-1)-a(n-2)` -/
def P17520418202881375319.Spec : Prop :=
  ∀ n, P17520418202881375319.a n = A253472 (n + 1)

theorem P17520418202881375319.correct : P17520418202881375319.Spec := by
  intro n
  simp only [A253472, Nat.add_sub_cancel]

end A253472

/-!
# A253473: a(n) = phi(c(n)) - tau(phi(c(n))), where c(n) is the n-th composite number.

The programs for A253473, the canonical program `A253473.P17226977604656821504` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253473 has offset 1).

The definition of A253473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, A073256, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253473.P7271976026304042529

`A000010(A002808(n+1))-A000005(A000010(A002808(n+1)))`
-/

namespace A253473.P7271976026304042529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002808 (n + 1)).toNat - A000005 (A000010 (A002808 (n + 1)).toNat).toNat

end

end A253473.P7271976026304042529

namespace A253473

/-- `A000010(A002808(n+1))-A000005(A000010(A002808(n+1)))` -/
def P7271976026304042529.Spec : Prop :=
  ∀ n, P7271976026304042529.a n = A253473 (n + 1)

end A253473

/-! ## A253473.P17226977604656821504

`A049820(A073256(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A253473

/-- `A049820(A073256(n+1))` -/
def P17226977604656821504.Spec : Prop :=
  ∀ n, P17226977604656821504.a n = A253473 (n + 1)

theorem P17226977604656821504.correct : P17226977604656821504.Spec := by
  intro n
  simp only [A253473, Nat.add_sub_cancel]

end A253473

/-! ## A253473.P7401920235853419927

`∑{d}[A000010(A002808(n+1)), A000010(#)-1]`
-/

namespace A253473.P7401920235853419927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d - 1)

end

end A253473.P7401920235853419927

namespace A253473

/-- `∑{d}[A000010(A002808(n+1)), A000010(#)-1]` -/
def P7401920235853419927.Spec : Prop :=
  ∀ n, P7401920235853419927.a n = A253473 (n + 1)

end A253473

/-! ## A253473.P10474563873086147209

`∑{d}[A000010(A018252(n+2)), A000010(#)-1]`
-/

namespace A253473.P10474563873086147209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d - 1)

end

end A253473.P10474563873086147209

namespace A253473

/-- `∑{d}[A000010(A018252(n+2)), A000010(#)-1]` -/
def P10474563873086147209.Spec : Prop :=
  ∀ n, P10474563873086147209.a n = A253473 (n + 1)

end A253473

/-! ## A253473.P12661095870026152476

`A049820(A166362(n+2))`
-/

namespace A253473.P12661095870026152476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A166362 (n + 2)).toNat

end

end A253473.P12661095870026152476

namespace A253473

/-- `A049820(A166362(n+2))` -/
def P12661095870026152476.Spec : Prop :=
  ∀ n, P12661095870026152476.a n = A253473 (n + 1)

end A253473

/-! ## A253473.P16050324632664372346

`A049820(A000010(A002808(n+1)))`
-/

namespace A253473.P16050324632664372346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A000010 (A002808 (n + 1)).toNat).toNat

end

end A253473.P16050324632664372346

namespace A253473

/-- `A049820(A000010(A002808(n+1)))` -/
def P16050324632664372346.Spec : Prop :=
  ∀ n, P16050324632664372346.a n = A253473 (n + 1)

end A253473

/-! ## A253473.P2593555287125510884

`A049820(A000010(A018252(n+2)))`
-/

namespace A253473.P2593555287125510884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A000010 (A018252 (n + 2)).toNat).toNat

end

end A253473.P2593555287125510884

namespace A253473

/-- `A049820(A000010(A018252(n+2)))` -/
def P2593555287125510884.Spec : Prop :=
  ∀ n, P2593555287125510884.a n = A253473 (n + 1)

end A253473

/-!
# A253474: Numbers n such that the difference between n^2 and largest prime less than n^2 is not prime.

The programs for A253474, there is no canonical definition to state claims against.
-/

/-! ## A253474.P1253756294072273879

`A106563(n+1)+A000007(A001787(n))`
-/

namespace A253474.P1253756294072273879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106563 (n + 1) + A000007 (A001787 n).toNat

end

end A253474.P1253756294072273879

/-! ## A253474.P13240411879759221452

`A106563(n+1)+A047999(A033486(n))`
-/

namespace A253474.P13240411879759221452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106563 (n + 1) + A047999 (A033486 n).toNat

end

end A253474.P13240411879759221452

/-! ## A253474.P10056790104436644897

`A106563(n+1)+A106510(A000252(n+1))`
-/

namespace A253474.P10056790104436644897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106563 (n + 1) + A106510 (A000252 (n + 1)).toNat

end

end A253474.P10056790104436644897

/-! ## A253474.P1892532061972228809

`A106563(n+1)+A060467(A106544(n+1))`
-/

namespace A253474.P1892532061972228809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106563 (n + 1) + A060467 (A106544 (n + 1)).toNat

end

end A253474.P1892532061972228809

/-!
# A253475: Indices of centered square numbers (A001844) which are also centered hexagonal numbers (A003215).

The programs for A253475, the canonical program `A253475.P14838698873027762290` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253475 has offset 1).

The definition of A253475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253475.P14838698873027762290

`11*a(n-1)-11*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=55`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253475

/-- `11*a(n-1)-11*a(n-2)+a(n-3)` -/
def P14838698873027762290.Spec : Prop :=
  ∀ n, P14838698873027762290.a n = A253475 (n + 1)

theorem P14838698873027762290.correct : P14838698873027762290.Spec := by
  intro n
  simp only [A253475, Nat.add_sub_cancel]

end A253475

/-! ## A253475.P6590223995099748087

`∑[ogf((1-5x)/(1-10x+x^2))]`
-/

namespace A253475.P6590223995099748087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -10, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253475.P6590223995099748087

namespace A253475

/-- `∑[ogf((1-5x)/(1-10x+x^2))]` -/
def P6590223995099748087.Spec : Prop :=
  ∀ n, P6590223995099748087.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P2855133252612839365

`ogf((1-5x)/(1-11x+11x^2-x^3))`
-/

namespace A253475.P2855133252612839365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -11, 11, -1] n

end

end A253475.P2855133252612839365

namespace A253475

/-- `ogf((1-5x)/(1-11x+11x^2-x^3))` -/
def P2855133252612839365.Spec : Prop :=
  ∀ n, P2855133252612839365.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P18307990411617506063

`∑[10*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A253475.P18307990411617506063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253475.P18307990411617506063

namespace A253475

/-- `∑[10*a(n-1)-a(n-2)]` -/
def P18307990411617506063.Spec : Prop :=
  ∀ n, P18307990411617506063.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P12325561844027205778

`10*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=6`
-/

namespace A253475.P12325561844027205778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  10 * a (n - 1) - a (n - 2) - 4

end

end A253475.P12325561844027205778

namespace A253475

/-- `10*a(n-1)-a(n-2)-4` -/
def P12325561844027205778.Spec : Prop :=
  ∀ n, P12325561844027205778.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P1144567490743592683

`∑[A001079(n)]`
-/

namespace A253475.P1144567490743592683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253475.P1144567490743592683

namespace A253475

/-- `∑[A001079(n)]` -/
def P1144567490743592683.Spec : Prop :=
  ∀ n, P1144567490743592683.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P1544020128365852192

`A087125(n)+1`
-/

namespace A253475.P1544020128365852192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087125 n + 1

end

end A253475.P1544020128365852192

namespace A253475

/-- `A087125(n)+1` -/
def P1544020128365852192.Spec : Prop :=
  ∀ n, P1544020128365852192.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P5230028977316726127

`∑[abs(A146311(n))]`
-/

namespace A253475.P5230028977316726127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A146311 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253475.P5230028977316726127

namespace A253475

/-- `∑[abs(A146311(n))]` -/
def P5230028977316726127.Spec : Prop :=
  ∀ n, P5230028977316726127.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P12839854677326667727

`ceil(A054320(n)/2)`
-/

namespace A253475.P12839854677326667727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054320 n : ℚ) / 2⌉

end

end A253475.P12839854677326667727

namespace A253475

/-- `ceil(A054320(n)/2)` -/
def P12839854677326667727.Spec : Prop :=
  ∀ n, P12839854677326667727.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P12346027502386305872

`∑[A080872(2*n)]`
-/

namespace A253475.P12346027502386305872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253475.P12346027502386305872

namespace A253475

/-- `∑[A080872(2*n)]` -/
def P12346027502386305872.Spec : Prop :=
  ∀ n, P12346027502386305872.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P8502685631058288772

`∑[A087799(n)/2]`
-/

namespace A253475.P8502685631058288772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087799 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253475.P8502685631058288772

namespace A253475

/-- `∑[A087799(n)/2]` -/
def P8502685631058288772.Spec : Prop :=
  ∀ n, P8502685631058288772.a n = (A253475 (n + 1) : ℚ)

end A253475

/-! ## A253475.P16842977701688635971

`A157084(n)/2+1`
-/

namespace A253475.P16842977701688635971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157084 n : ℚ) / 2 + 1

end

end A253475.P16842977701688635971

namespace A253475

/-- `A157084(n)/2+1` -/
def P16842977701688635971.Spec : Prop :=
  ∀ n, P16842977701688635971.a n = (A253475 (n + 1) : ℚ)

end A253475

/-! ## A253475.P11458430295464285115

`(A350965(n)+2)/4`
-/

namespace A253475.P11458430295464285115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350965 n + 2 : ℚ) / 4

end

end A253475.P11458430295464285115

namespace A253475

/-- `(A350965(n)+2)/4` -/
def P11458430295464285115.Spec : Prop :=
  ∀ n, P11458430295464285115.a n = (A253475 (n + 1) : ℚ)

end A253475

/-! ## A253475.P233379480394064424

`ceil(A259594(2*n)/2)`
-/

namespace A253475.P233379480394064424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A259594 (2 * n) : ℚ) / 2⌉

end

end A253475.P233379480394064424

namespace A253475

/-- `ceil(A259594(2*n)/2)` -/
def P233379480394064424.Spec : Prop :=
  ∀ n, P233379480394064424.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P13926376517051915783

`∑[2*A132596(n)+1]`
-/

namespace A253475.P13926376517051915783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132596 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253475.P13926376517051915783

namespace A253475

/-- `∑[2*A132596(n)+1]` -/
def P13926376517051915783.Spec : Prop :=
  ∀ n, P13926376517051915783.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P12855582260484004024

`(Δ[A098297(n)]+1)/2`
-/

namespace A253475.P12855582260484004024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A253475.P12855582260484004024

namespace A253475

/-- `(Δ[A098297(n)]+1)/2` -/
def P12855582260484004024.Spec : Prop :=
  ∀ n, P12855582260484004024.a n = (A253475 (n + 1) : ℚ)

end A253475

/-! ## A253475.P759219536495311060

`(A142238(2*n)+1)/2`
-/

namespace A253475.P759219536495311060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142238 (2 * n) + 1 : ℚ) / 2

end

end A253475.P759219536495311060

namespace A253475

/-- `(A142238(2*n)+1)/2` -/
def P759219536495311060.Spec : Prop :=
  ∀ n, P759219536495311060.a n = (A253475 (n + 1) : ℚ)

end A253475

/-! ## A253475.P16907152958891573914

`∑[2*A171640(n+1)-1]`
-/

namespace A253475.P16907152958891573914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171640 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253475.P16907152958891573914

namespace A253475

/-- `∑[2*A171640(n+1)-1]` -/
def P16907152958891573914.Spec : Prop :=
  ∀ n, P16907152958891573914.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P12071084486249814644

`∑[A204518(2*n+n+2)]`
-/

namespace A253475.P12071084486249814644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204518 (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253475.P12071084486249814644

namespace A253475

/-- `∑[A204518(2*n+n+2)]` -/
def P12071084486249814644.Spec : Prop :=
  ∀ n, P12071084486249814644.a n = A253475 (n + 1)

end A253475

/-! ## A253475.P14378627616276005127

`(A085376(2*n+1)+1)/2`
-/

namespace A253475.P14378627616276005127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085376 (2 * n + 1) + 1 : ℚ) / 2

end

end A253475.P14378627616276005127

namespace A253475

/-- `(A085376(2*n+1)+1)/2` -/
def P14378627616276005127.Spec : Prop :=
  ∀ n, P14378627616276005127.a n = (A253475 (n + 1) : ℚ)

end A253475

/-!
# A253476: Indices of centered triangular numbers (A005448) which are also centered heptagonal numbers (A069099).

The programs for A253476, there is no canonical definition to state claims against.
-/

/-! ## A253476.P4301822697193054037

`∑[∪[A145693(n+1), A114049(n)]]`
-/

namespace A253476.P4301822697193054037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145693 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114049 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253476.P4301822697193054037

/-! ## A253476.P451978220765527330

`ceil(A030221(A004526(3*n+1))/2)`
-/

namespace A253476.P451978220765527330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030221 (A004526 (3 * n + 1)).toNat : ℚ) / 2⌉

end

end A253476.P451978220765527330

/-! ## A253476.P12983955101039199898

`∑[∪[A041350(4*n+1), A114049(n)]]`
-/

namespace A253476.P12983955101039199898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041350 (4 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114049 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253476.P12983955101039199898

/-! ## A253476.P10749551555326146555

`∑[∪[14*A144930(n+1), A114049(n)]]`
-/

namespace A253476.P10749551555326146555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A144930 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114049 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253476.P10749551555326146555

/-! ## A253476.P10333889475553007011

`∑[A041350(2*n+1)-A041350(2*n)]`
-/

namespace A253476.P10333889475553007011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041350 (2 * n + 1) - A041350 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253476.P10333889475553007011

/-!
# A253477: Indices of centered heptagonal numbers (A069099) which are also centered triangular numbers (A005448).

The programs for A253477, there is no canonical definition to state claims against.
-/

/-! ## A253477.P12793692161157006891

`ceil(A136210(A007310(n+1))/2)`
-/

namespace A253477.P12793692161157006891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136210 (A007310 (n + 1)).toNat : ℚ) / 2⌉

end

end A253477.P12793692161157006891

/-!
# A253478: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253478, there is no canonical definition to state claims against.
-/

/-! ## A253478.P1955442746680880890

`A253482(∑[n+2])`
-/

namespace A253478.P1955442746680880890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253478.P1955442746680880890

/-! ## A253478.P16317170301900916815

`record[A253482(lt[A013612(n+1), n])]`
-/

namespace A253478.P16317170301900916815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253478.P16317170301900916815

/-!
# A253479: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253479, there is no canonical definition to state claims against.
-/

/-! ## A253479.P16597052691352295105

`A253482(∑[n+3]+1)`
-/

namespace A253479.P16597052691352295105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253479.P16597052691352295105

/-! ## A253479.P1378930532988181298

`record[A253482(lt[A013609(n+2), n])]`
-/

namespace A253479.P1378930532988181298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253479.P1378930532988181298

/-! ## A253479.P14252704069005486993

`A000262(n)%2*A253482(Δ[A008778(n)])`
-/

namespace A253479.P14252704069005486993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000262 n) 2 * A253482 (f1 (n + 1) - f1 n).toNat

end

end A253479.P14252704069005486993

/-! ## A253479.P4750579214336913098

`A016754(n)%2*A253482(Δ[A008778(n)])`
-/

namespace A253479.P4750579214336913098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 n) 2 * A253482 (f1 (n + 1) - f1 n).toNat

end

end A253479.P4750579214336913098

/-! ## A253479.P6029561599085180529

`A038183(n)%2*A253482(Δ[A008778(n)])`
-/

namespace A253479.P6029561599085180529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038183 n) 2 * A253482 (f1 (n + 1) - f1 n).toNat

end

end A253479.P6029561599085180529

/-!
# A253480: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253480, there is no canonical definition to state claims against.
-/

/-! ## A253480.P11326951685189986719

`A253482(∑[n+4]+3)`
-/

namespace A253480.P11326951685189986719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A253480.P11326951685189986719

/-! ## A253480.P1814413516160920755

`and(-2, A253482(A165157(2*(n+2))))`
-/

namespace A253480.P1814413516160920755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A253482 (A165157 (2 * (n + 2))).toNat)

end

end A253480.P1814413516160920755

/-!
# A253481: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253481, there is no canonical definition to state claims against.
-/

/-! ## A253481.P2898949177216448901

`A253482(Δ[A264443(n)])`
-/

namespace A253481.P2898949177216448901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (f1 (n + 1) - f1 n).toNat

end

end A253481.P2898949177216448901

/-! ## A253481.P17609735482910662075

`A253482(A046691(n+3))`
-/

namespace A253481.P17609735482910662075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (A046691 (n + 3)).toNat

end

end A253481.P17609735482910662075

/-! ## A253481.P13431649056818547821

`A253482(A264443(n+1)-A264443(n))`
-/

namespace A253481.P13431649056818547821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (A264443 (n + 1) - A264443 n).toNat

end

end A253481.P13431649056818547821

/-!
# A253483: Number of (2+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253483, there is no canonical definition to state claims against.
-/

/-! ## A253483.P17295638491711834784

`A253482(∑[n+1]+2)`
-/

namespace A253483.P17295638491711834784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253483.P17295638491711834784

/-! ## A253483.P7939381162457606254

`lcm(2, A253482(A133263(n+1)))`
-/

namespace A253483.P7939381162457606254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253482 (A133263 (n + 1)).toNat)

end

end A253483.P7939381162457606254

/-! ## A253483.P9897345455124032732

`record[A010054(n)*A253482(n+2)]`
-/

namespace A253483.P9897345455124032732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253483.P9897345455124032732

/-!
# A253484: Number of (3+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253484, there is no canonical definition to state claims against.
-/

/-! ## A253484.P13367238720977098245

`A253482(∑[n+2]+4)`
-/

namespace A253484.P13367238720977098245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253484.P13367238720977098245

/-! ## A253484.P2835141746827437924

`lcm(2, A253482(A167614(n+1)))`
-/

namespace A253484.P2835141746827437924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253482 (A167614 (n + 1)).toNat)

end

end A253484.P2835141746827437924

/-! ## A253484.P16692650199209413290

`record[A110324(n)*A253482(n+4)]`
-/

namespace A253484.P16692650199209413290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110324 n * A253482 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253484.P16692650199209413290

/-! ## A253484.P8021121078085586553

`A253482(A167499(n)+n)+C(n, 64)`
-/

namespace A253484.P8021121078085586553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (A167499 n + (n : ℤ)).toNat + (Nat.choose n 64 : ℤ)

end

end A253484.P8021121078085586553

/-! ## A253484.P6674648551796412151

`A253482(A167614(n+1))+A025466(n)`
-/

namespace A253484.P6674648551796412151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (A167614 (n + 1)).toNat + A025466 n

end

end A253484.P6674648551796412151

/-!
# A253485: Number of (4+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253485, there is no canonical definition to state claims against.
-/

/-! ## A253485.P6175565213149197124

`A253482(∑[n+3]+7)`
-/

namespace A253485.P6175565213149197124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253485.P6175565213149197124

/-!
# A253486: Number of (5+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253486, there is no canonical definition to state claims against.
-/

/-! ## A253486.P6376743702011362313

`A253482(eq[4, A144328(n+1)]+1)`
-/

namespace A253486.P6376743702011362313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253486.P6376743702011362313

/-! ## A253486.P13901688834634376208

`A253482(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A253486.P13901688834634376208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253482 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A253486.P13901688834634376208

/-!
# A253487: Number of lattice paths of 2*n+2 steps in the first quadrant from (0,0) to (n,n).

The programs for A253487, the canonical program `A253487.P6679940990735206685` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253487 has offset 0).

The definition of A253487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253487.P6679940990735206685

`2*A110609(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A253487

/-- `2*A110609(n+1)` -/
def P6679940990735206685.Spec : Prop :=
  ∀ n, P6679940990735206685.a n = A253487 n

theorem P6679940990735206685.correct : P6679940990735206685.Spec := by
  intro n
  simp only [A253487]

end A253487

/-! ## A253487.P12220931538641154476

`(4*n+4)*(2*n+1)*C(2*n, n)/(n+2)`
-/

namespace A253487.P12220931538641154476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 4) * (2 * n + 1) * Nat.choose (2 * n) n : ℚ) / (n + 2 : ℚ)

end

end A253487.P12220931538641154476

namespace A253487

/-- `(4*n+4)*(2*n+1)*C(2*n, n)/(n+2)` -/
def P12220931538641154476.Spec : Prop :=
  ∀ n, P12220931538641154476.a n = (A253487 n : ℚ)

end A253487

/-! ## A253487.P6201770756475348970

`2*(n+5)*(n+1)*a(n-1)/(n*(n+2))+(8*n-4)*a(n-2)/(n+2)` with `a(0)=2, a(1)=16`
-/

namespace A253487.P6201770756475348970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 16] fun n a =>
  2 * ((n + 5 : ℚ) * ((n + 1 : ℚ) * (a (n - 1) / (n * (n + 2) : ℚ)))) + ((8 * n : ℤ) - 4 : ℚ) * (a (n - 2) / (n + 2 : ℚ))

end

end A253487.P6201770756475348970

namespace A253487

/-- `2*(n+5)*(n+1)*a(n-1)/(n*(n+2))+(8*n-4)*a(n-2)/(n+2)` -/
def P6201770756475348970.Spec : Prop :=
  ∀ n, P6201770756475348970.a n = (A253487 n : ℚ)

end A253487

/-! ## A253487.P12073525953133876604

`∑[2*Δ[A110609(n)]]`
-/

namespace A253487.P12073525953133876604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253487.P12073525953133876604

namespace A253487

/-- `∑[2*Δ[A110609(n)]]` -/
def P12073525953133876604.Spec : Prop :=
  ∀ n, P12073525953133876604.a n = A253487 n

end A253487

/-! ## A253487.P8171344023619027802

`record[Δ[A237884(n+2)]]`
-/

namespace A253487.P8171344023619027802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237884 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253487.P8171344023619027802

namespace A253487

/-- `record[Δ[A237884(n+2)]]` -/
def P8171344023619027802.Spec : Prop :=
  ∀ n, P8171344023619027802.a n = A253487 n

end A253487

/-! ## A253487.P7589342122637178982

`2*A191522(2*n+3)`
-/

namespace A253487.P7589342122637178982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191522 (2 * n + 3)

end

end A253487.P7589342122637178982

namespace A253487

/-- `2*A191522(2*n+3)` -/
def P7589342122637178982.Spec : Prop :=
  ∀ n, P7589342122637178982.a n = A253487 n

end A253487

/-! ## A253487.P16746764395622990631

`(n+1)*A162551(n+1)`
-/

namespace A253487.P16746764395622990631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A162551 (n + 1)

end

end A253487.P16746764395622990631

namespace A253487

/-- `(n+1)*A162551(n+1)` -/
def P16746764395622990631.Spec : Prop :=
  ∀ n, P16746764395622990631.a n = A253487 n

end A253487

/-! ## A253487.P15786293172461804364

`(n+1)*A026023(Δ[n²])`
-/

namespace A253487.P15786293172461804364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026023 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A253487.P15786293172461804364

namespace A253487

/-- `(n+1)*A026023(Δ[n²])` -/
def P15786293172461804364.Spec : Prop :=
  ∀ n, P15786293172461804364.a n = A253487 n

end A253487

/-! ## A253487.P4610390909747122447

`(n+1)*A239453(Δ[n²])`
-/

namespace A253487.P4610390909747122447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A239453 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A253487.P4610390909747122447

namespace A253487

/-- `(n+1)*A239453(Δ[n²])` -/
def P4610390909747122447.Spec : Prop :=
  ∀ n, P4610390909747122447.a n = A253487 n

end A253487

/-! ## A253487.P9909250208864166636

`(n+1)²*A068875(n+1)`
-/

namespace A253487.P9909250208864166636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A068875 (n + 1)

end

end A253487.P9909250208864166636

namespace A253487

/-- `(n+1)²*A068875(n+1)` -/
def P9909250208864166636.Spec : Prop :=
  ∀ n, P9909250208864166636.a n = A253487 n

end A253487

/-! ## A253487.P12573460854678360886

`(n+1)²*A262543(n+2)`
-/

namespace A253487.P12573460854678360886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A262543 (n + 2)

end

end A253487.P12573460854678360886

namespace A253487

/-- `(n+1)²*A262543(n+2)` -/
def P12573460854678360886.Spec : Prop :=
  ∀ n, P12573460854678360886.a n = A253487 n

end A253487

/-! ## A253487.P7727328673707229225

`(n+1)*Δ[A281593(n+1)]`
-/

namespace A253487.P7727328673707229225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A253487.P7727328673707229225

namespace A253487

/-- `(n+1)*Δ[A281593(n+1)]` -/
def P7727328673707229225.Spec : Prop :=
  ∀ n, P7727328673707229225.a n = A253487 n

end A253487

/-! ## A253487.P1434751218362379868

`2*(n+1)*A001791(n+1)`
-/

namespace A253487.P1434751218362379868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A001791 (n + 1))

end

end A253487.P1434751218362379868

namespace A253487

/-- `2*(n+1)*A001791(n+1)` -/
def P1434751218362379868.Spec : Prop :=
  ∀ n, P1434751218362379868.a n = A253487 n

end A253487

/-! ## A253487.P7924731149358354630

`(n+1)*A238452(2*(n+1))`
-/

namespace A253487.P7924731149358354630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A238452 (2 * (n + 1))

end

end A253487.P7924731149358354630

namespace A253487

/-- `(n+1)*A238452(2*(n+1))` -/
def P7924731149358354630.Spec : Prop :=
  ∀ n, P7924731149358354630.a n = A253487 n

end A253487

/-! ## A253487.P6527867910962910248

`(n+1)/2*A128650(n+3)`
-/

namespace A253487.P6527867910962910248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A128650 (n + 3) : ℚ)

end

end A253487.P6527867910962910248

namespace A253487

/-- `(n+1)/2*A128650(n+3)` -/
def P6527867910962910248.Spec : Prop :=
  ∀ n, P6527867910962910248.a n = (A253487 n : ℚ)

end A253487

/-! ## A253487.P16135815855730894075

`(n+1)/(n+2)*A002011(n)`
-/

namespace A253487.P16135815855730894075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 2 : ℚ) * (A002011 n : ℚ)

end

end A253487.P16135815855730894075

namespace A253487

/-- `(n+1)/(n+2)*A002011(n)` -/
def P16135815855730894075.Spec : Prop :=
  ∀ n, P16135815855730894075.a n = (A253487 n : ℚ)

end A253487

/-! ## A253487.P6777480866725274148

`2*(n+1)²*A000108(n+1)`
-/

namespace A253487.P6777480866725274148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n + 1) ^ 2 : ℤ) * A000108 (n + 1))

end

end A253487.P6777480866725274148

namespace A253487

/-- `2*(n+1)²*A000108(n+1)` -/
def P6777480866725274148.Spec : Prop :=
  ∀ n, P6777480866725274148.a n = A253487 n

end A253487

/-! ## A253487.P6939949441125173009

`(n+1)²*A104722(2*n+1)`
-/

namespace A253487.P6939949441125173009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A104722 (2 * n + 1)

end

end A253487.P6939949441125173009

namespace A253487

/-- `(n+1)²*A104722(2*n+1)` -/
def P6939949441125173009.Spec : Prop :=
  ∀ n, P6939949441125173009.a n = A253487 n

end A253487

/-! ## A253487.P9840740379434192405

`2*(n+1)²*A120588(n+2)`
-/

namespace A253487.P9840740379434192405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) * A120588 (n + 2)

end

end A253487.P9840740379434192405

namespace A253487

/-- `2*(n+1)²*A120588(n+2)` -/
def P9840740379434192405.Spec : Prop :=
  ∀ n, P9840740379434192405.a n = A253487 n

end A253487

/-!
# A253488: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253488, there is no canonical definition to state claims against.
-/

/-! ## A253488.P18029034236695061038

`A253495(∑[4*n]+1)`
-/

namespace A253488.P18029034236695061038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253488.P18029034236695061038

/-! ## A253488.P21169490790591981

`lcm(1-2*n%2, A253495(n²+(n+1)²))`
-/

namespace A253488.P21169490790591981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((2 * (n % 2) : ℕ) : ℤ)) (A253495 (n ^ 2 + (n + 1) ^ 2))

end

end A253488.P21169490790591981

/-! ## A253488.P15339160808228310168

`record[A003982(n)*A253495(n+1)]`
-/

namespace A253488.P15339160808228310168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253488.P15339160808228310168

/-! ## A253488.P8640440567970206360

`record[A214505(n)*A253495(n+1)]`
-/

namespace A253488.P8640440567970206360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A253495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253488.P8640440567970206360

/-! ## A253488.P15680954202546352585

`record[gcd(A003987(n), A253495(n+1))]`
-/

namespace A253488.P15680954202546352585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A253495 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253488.P15680954202546352585

/-!
# A253489: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253489, there is no canonical definition to state claims against.
-/

/-! ## A253489.P3306716012138573534

`A253495(∑[n+2])`
-/

namespace A253489.P3306716012138573534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253489.P3306716012138573534

/-! ## A253489.P17249430189306436252

`record[A253495(abs(A201163(n)))]`
-/

namespace A253489.P17249430189306436252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253489.P17249430189306436252

/-! ## A253489.P1385067407998851747

`or(char[1], A253495(A055998(n)+2))`
-/

namespace A253489.P1385067407998851747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253495 (A055998 n + 2).toNat)

end

end A253489.P1385067407998851747

/-! ## A253489.P17109359945672619777

`or(char[1], A253495(A000124(n+2)-2))`
-/

namespace A253489.P17109359945672619777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253495 (A000124 (n + 2) - 2).toNat)

end

end A253489.P17109359945672619777

/-! ## A253489.P6407518930771797105

`A000041(C(2, 2*n))*A253495(A055998(n)+2)`
-/

namespace A253489.P6407518930771797105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A253495 (A055998 n + 2).toNat

end

end A253489.P6407518930771797105

/-!
# A253490: Number of (n+1) X (3+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253490, there is no canonical definition to state claims against.
-/

/-! ## A253490.P1132379585134311311

`A253495(∑[n+3]+1)`
-/

namespace A253490.P1132379585134311311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253490.P1132379585134311311

/-! ## A253490.P17680248584802705322

`record[A253495(A198464(n+1))]`
-/

namespace A253490.P17680248584802705322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253490.P17680248584802705322

/-! ## A253490.P3799226940817904813

`A253495(A034856(n+2))+char[26]`
-/

namespace A253490.P3799226940817904813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253490.P3799226940817904813

/-! ## A253490.P4116499184513174974

`A007318(C(2, n))*A253495(A034856(n+2))`
-/

namespace A253490.P4116499184513174974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253495 (A034856 (n + 2)).toNat

end

end A253490.P4116499184513174974

/-! ## A253490.P5571877165842904247

`A253495(A034856(n+2))/A007318(C(n, 2))`
-/

namespace A253490.P5571877165842904247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253495 (A034856 (n + 2)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A253490.P5571877165842904247

/-!
# A253491: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253491, there is no canonical definition to state claims against.
-/

/-! ## A253491.P2729420118666700162

`A253495(∑[n+4]+3)`
-/

namespace A253491.P2729420118666700162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A253491.P2729420118666700162

/-!
# A253492: Number of (n+1) X (5+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253492, there is no canonical definition to state claims against.
-/

/-! ## A253492.P2027870173524423091

`A253495(∑[n+5]+6)`
-/

namespace A253492.P2027870173524423091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A253492.P2027870173524423091

/-!
# A253493: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253493, there is no canonical definition to state claims against.
-/

/-! ## A253493.P13682369561950907192

`A253495(A052905(n+3))`
-/

namespace A253493.P13682369561950907192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A052905 (n + 3)).toNat

end

end A253493.P13682369561950907192

/-! ## A253493.P511830863170131503

`A253495(A056119(n)+16)`
-/

namespace A253493.P511830863170131503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A056119 n + 16).toNat

end

end A253493.P511830863170131503

/-! ## A253493.P13320719706945948677

`A253495(eq[3, A219347(n)])`
-/

namespace A253493.P13320719706945948677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253493.P13320719706945948677

/-! ## A253493.P15720283575461662796

`A253495(eq[5, A193592(n)])`
-/

namespace A253493.P15720283575461662796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253493.P15720283575461662796

/-! ## A253493.P7854517967378914502

`A253495(A055999(n+3)+1)`
-/

namespace A253493.P7854517967378914502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A055999 (n + 3) + 1).toNat

end

end A253493.P7854517967378914502

/-!
# A253494: Number of (n+1) X (7+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253494, there is no canonical definition to state claims against.
-/

/-! ## A253494.P6623716334119541155

`A253495(A055999(n+4))`
-/

namespace A253494.P6623716334119541155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A055999 (n + 4)).toNat

end

end A253494.P6623716334119541155

/-! ## A253494.P1998145653705139499

`A253495(eq[4, A219347(n)])`
-/

namespace A253494.P1998145653705139499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253494.P1998145653705139499

/-! ## A253494.P1789583745388504955

`A253495(eq[6, A193592(n)])`
-/

namespace A253494.P1789583745388504955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253494.P1789583745388504955

/-! ## A253494.P12568074884733509494

`A253495(Δ[A023551(n+2)])`
-/

namespace A253494.P12568074884733509494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (f1 (n + 1) - f1 n).toNat

end

end A253494.P12568074884733509494

/-! ## A253494.P15961007522422130901

`A253495(Δ[A026054(n+4)])`
-/

namespace A253494.P15961007522422130901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (f1 (n + 1) - f1 n).toNat

end

end A253494.P15961007522422130901

/-!
# A253496: Number of (2+1) X (n+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253496, there is no canonical definition to state claims against.
-/

/-! ## A253496.P9244513092447416734

`A253495(∑[n+1]+2)`
-/

namespace A253496.P9244513092447416734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253496.P9244513092447416734

/-! ## A253496.P10709864288893280744

`or(char[1], A253495(A000096(n)+3))`
-/

namespace A253496.P10709864288893280744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253495 (A000096 n + 3).toNat)

end

end A253496.P10709864288893280744

/-! ## A253496.P1884907038320094291

`record[A005369(2*n)*A253495(n+2)]`
-/

namespace A253496.P1884907038320094291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n) * A253495 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253496.P1884907038320094291

/-! ## A253496.P17520693025126237740

`A057427(n+1)*A253495(A022856(n+5))`
-/

namespace A253496.P17520693025126237740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A253495 (A022856 (n + 5)).toNat

end

end A253496.P17520693025126237740

/-! ## A253496.P6250655446206883411

`A007318(C(2, n))*A253495(A000096(n)+3)`
-/

namespace A253496.P6250655446206883411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253495 (A000096 n + 3).toNat

end

end A253496.P6250655446206883411

/-!
# A253497: Number of (3+1) X (n+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253497, there is no canonical definition to state claims against.
-/

/-! ## A253497.P14742798052547965524

`A253495(∑[n+2]+4)`
-/

namespace A253497.P14742798052547965524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253497.P14742798052547965524

/-! ## A253497.P17434218859852765224

`or(char[4], A253495(A167614(n+1)))`
-/

namespace A253497.P17434218859852765224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253495 (A167614 (n + 1)).toNat)

end

end A253497.P17434218859852765224

/-! ## A253497.P10611701848388467512

`A253495(A046691(n)+7)+char[25]`
-/

namespace A253497.P10611701848388467512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253497.P10611701848388467512

/-! ## A253497.P11984568528109626980

`record[A129360(n+1)*A253495(n+4)]`
-/

namespace A253497.P11984568528109626980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129360 (n + 1) * A253495 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253497.P11984568528109626980

/-! ## A253497.P7585180156352700249

`A253495(A167614(n+1))+A025439(n)`
-/

namespace A253497.P7585180156352700249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A167614 (n + 1)).toNat + A025439 n

end

end A253497.P7585180156352700249

/-!
# A253498: Number of (4+1) X (n+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253498, there is no canonical definition to state claims against.
-/

/-! ## A253498.P15433512608761599381

`A253495(∑[n+3]+7)`
-/

namespace A253498.P15433512608761599381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253498.P15433512608761599381

/-! ## A253498.P15961693291925615439

`A253495(A055999(n)+10)+and(2, n²)`
-/

namespace A253498.P15961693291925615439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A055999 n + 10).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A253498.P15961693291925615439

/-! ## A253498.P2172919537565369303

`A253495(A055999(n)+10)+A000007(n+3)`
-/

namespace A253498.P2172919537565369303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A055999 n + 10).toNat + A000007 (n + 3)

end

end A253498.P2172919537565369303

/-! ## A253498.P4716325225586657116

`A007318(val(n+2, 5))*A253495(A055999(n)+10)`
-/

namespace A253498.P4716325225586657116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 2) 5) * A253495 (A055999 n + 10).toNat

end

end A253498.P4716325225586657116

/-! ## A253498.P3439064174923145661

`A000045(gcd(n, n+1))*A253495(A055999(n)+10)`
-/

namespace A253498.P3439064174923145661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A253495 (A055999 n + 10).toNat

end

end A253498.P3439064174923145661

/-!
# A253499: Number of (5+1) X (n+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253499, there is no canonical definition to state claims against.
-/

/-! ## A253499.P4580127601634464629

`A253495(A167499(n+3))`
-/

namespace A253499.P4580127601634464629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A167499 (n + 3)).toNat

end

end A253499.P4580127601634464629

/-! ## A253499.P4577760033644492485

`A253495(A155212(n)+13)`
-/

namespace A253499.P4577760033644492485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A155212 n + 13).toNat

end

end A253499.P4577760033644492485

/-! ## A253499.P14905522459168927116

`A253495(A056000(n)+15)`
-/

namespace A253499.P14905522459168927116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A056000 n + 15).toNat

end

end A253499.P14905522459168927116

/-! ## A253499.P4969714326121720688

`A253495(eq[7, A066657(n)])`
-/

namespace A253499.P4969714326121720688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253499.P4969714326121720688

/-! ## A253499.P3604530226324917917

`A253495(A166136(n+3)-1)`
-/

namespace A253499.P3604530226324917917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A166136 (n + 3) - 1).toNat

end

end A253499.P3604530226324917917

