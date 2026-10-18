import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B012.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
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
# A236700: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median of every 2X2 subblock.

The programs for A236700, there is no canonical definition to state claims against.
-/

/-! ## A236700.P15999034380940626287

`A236704(∑[n+2]+4)`
-/

namespace A236700.P15999034380940626287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236700.P15999034380940626287

/-! ## A236700.P6300952858030354471

`A236704(A167614(n+1))+A025437(n)`
-/

namespace A236700.P6300952858030354471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A167614 (n + 1)).toNat + A025437 n

end

end A236700.P6300952858030354471

/-! ## A236700.P8390356791468192417

`A236704(A167614(n+1))+A025439(n)`
-/

namespace A236700.P8390356791468192417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A167614 (n + 1)).toNat + A025439 n

end

end A236700.P8390356791468192417

/-! ## A236700.P755499319933471629

`A236704(A167614(n+1))+A178798(n)`
-/

namespace A236700.P755499319933471629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A167614 (n + 1)).toNat + A178798 n

end

end A236700.P755499319933471629

/-! ## A236700.P16050454523609650848

`A236704(A167614(n+1))+A185284(n)`
-/

namespace A236700.P16050454523609650848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A167614 (n + 1)).toNat + A185284 n

end

end A236700.P16050454523609650848

/-!
# A236701: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median of every 2X2 subblock.

The programs for A236701, there is no canonical definition to state claims against.
-/

/-! ## A236701.P12910027970770629928

`A236704(∑[n+3]+7)`
-/

namespace A236701.P12910027970770629928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236701.P12910027970770629928

/-! ## A236701.P18395964662874645536

`A236704(A056000(n)+7)+A025437(n)`
-/

namespace A236701.P18395964662874645536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A056000 n + 7).toNat + A025437 n

end

end A236701.P18395964662874645536

/-! ## A236701.P18128106752574334056

`A236704(A056000(n)+7)+A185284(n)`
-/

namespace A236701.P18128106752574334056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A056000 n + 7).toNat + A185284 n

end

end A236701.P18128106752574334056

/-! ## A236701.P969534928161903961

`A025793(n)*A236704(A056000(n)+7)`
-/

namespace A236701.P969534928161903961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025793 n * A236704 (A056000 n + 7).toNat

end

end A236701.P969534928161903961

/-! ## A236701.P1567305786885573063

`A008835(n+1)!*A236704(A056000(n)+7)`
-/

namespace A236701.P1567305786885573063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008835 (n + 1)).toNat : ℤ) * A236704 (A056000 n + 7).toNat

end

end A236701.P1567305786885573063

/-!
# A236702: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median of every 2X2 subblock.

The programs for A236702, there is no canonical definition to state claims against.
-/

/-! ## A236702.P16305519203132476055

`A236704(∑[n+4]+11)`
-/

namespace A236702.P16305519203132476055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A236702.P16305519203132476055

/-!
# A236703: Number of (n+1)X(6+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median of every 2X2 subblock.

The programs for A236703, there is no canonical definition to state claims against.
-/

/-! ## A236703.P5663036701677787207

`A236704(A374007(n+1))`
-/

namespace A236703.P5663036701677787207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A374007 (n + 1)).toNat

end

end A236703.P5663036701677787207

/-! ## A236703.P17671884308507965330

`A236704(A056115(n)+21)`
-/

namespace A236703.P17671884308507965330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A056115 n + 21).toNat

end

end A236703.P17671884308507965330

/-! ## A236703.P18229398846115106958

`A236704(A167499(n+4)+1)`
-/

namespace A236703.P18229398846115106958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A167499 (n + 4) + 1).toNat

end

end A236703.P18229398846115106958

/-! ## A236703.P15987732564845450430

`A236704(A167614(n+4)+3)`
-/

namespace A236703.P15987732564845450430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A167614 (n + 4) + 3).toNat

end

end A236703.P15987732564845450430

/-!
# A236705: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the upper median minus the lower median of every 2X2 subblock.

The programs for A236705, there is no canonical definition to state claims against.
-/

/-! ## A236705.P11291624558149809162

`A236710(∑[n]+1)`
-/

namespace A236705.P11291624558149809162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236705.P11291624558149809162

/-! ## A236705.P4700978964899641535

`lcm((-1)^n, A236710(A000124(n)))`
-/

namespace A236705.P4700978964899641535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A236710 (A000124 n).toNat)

end

end A236705.P4700978964899641535

/-! ## A236705.P966963442484088081

`record[A010054(n)*A236710(n+1)]`
-/

namespace A236705.P966963442484088081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236705.P966963442484088081

/-! ## A236705.P13992229478626277984

`record[A103451(n)*A236710(n+1)]`
-/

namespace A236705.P13992229478626277984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236705.P13992229478626277984

/-! ## A236705.P7134919185409863215

`record[A236710(n+1)/A013612(n)]`
-/

namespace A236705.P7134919185409863215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236710 (n + 1) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236705.P7134919185409863215

/-!
# A236706: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the upper median minus the lower median of every 2X2 subblock.

The programs for A236706, there is no canonical definition to state claims against.
-/

/-! ## A236706.P12036837639134646919

`A236710(∑[n+1]+2)`
-/

namespace A236706.P12036837639134646919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236706.P12036837639134646919

/-! ## A236706.P4233182143216812474

`lcm(2, A236710(A000096(n)+3))`
-/

namespace A236706.P4233182143216812474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236710 (A000096 n + 3).toNat)

end

end A236706.P4233182143216812474

/-! ## A236706.P12079842916039974765

`record[A010054(n)*A236710(n+2)]`
-/

namespace A236706.P12079842916039974765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236710 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236706.P12079842916039974765

/-! ## A236706.P1826414780273240513

`record[A236710(abs(A201163(n)))]`
-/

namespace A236706.P1826414780273240513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236706.P1826414780273240513

/-! ## A236706.P8338973522232319016

`record[A236710(lt[A008459(n), n])]`
-/

namespace A236706.P8338973522232319016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236706.P8338973522232319016

/-!
# A236707: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the upper median minus the lower median of every 2X2 subblock.

The programs for A236707, there is no canonical definition to state claims against.
-/

/-! ## A236707.P10656897218460374300

`A236710(∑[n+2]+4)`
-/

namespace A236707.P10656897218460374300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236707.P10656897218460374300

/-! ## A236707.P7369684916239681050

`A236710(A167614(n+1))+A011737(n)`
-/

namespace A236707.P7369684916239681050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (A167614 (n + 1)).toNat + A011737 n

end

end A236707.P7369684916239681050

/-! ## A236707.P6257856927299674327

`A236710(A167614(n+1))+A025443(n)`
-/

namespace A236707.P6257856927299674327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (A167614 (n + 1)).toNat + A025443 n

end

end A236707.P6257856927299674327

/-! ## A236707.P2045358105516365511

`A236710(A167614(n+1))+A025469(n)`
-/

namespace A236707.P2045358105516365511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (A167614 (n + 1)).toNat + A025469 n

end

end A236707.P2045358105516365511

/-! ## A236707.P16888600691434425617

`A236710(A167614(n+1))+A178798(n)`
-/

namespace A236707.P16888600691434425617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (A167614 (n + 1)).toNat + A178798 n

end

end A236707.P16888600691434425617

/-!
# A236708: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the upper median minus the lower median of every 2X2 subblock.

The programs for A236708, there is no canonical definition to state claims against.
-/

/-! ## A236708.P4722805798983116995

`A236710(∑[n+3]+7)`
-/

namespace A236708.P4722805798983116995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236708.P4722805798983116995

/-!
# A236709: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the upper median minus the lower median of every 2X2 subblock.

The programs for A236709, there is no canonical definition to state claims against.
-/

/-! ## A236709.P13540103741183522407

`A236710(A374005(n+1))`
-/

namespace A236709.P13540103741183522407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (A374005 (n + 1)).toNat

end

end A236709.P13540103741183522407

/-! ## A236709.P768402121672593703

`A236710(A155212(n)+13)`
-/

namespace A236709.P768402121672593703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (A155212 n + 13).toNat

end

end A236709.P768402121672593703

/-! ## A236709.P12881378889462542911

`A236710(A056000(n)+15)`
-/

namespace A236709.P12881378889462542911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (A056000 n + 15).toNat

end

end A236709.P12881378889462542911

/-! ## A236709.P8002365366242530323

`A236710(eq[7, A066657(n)])`
-/

namespace A236709.P8002365366242530323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236709.P8002365366242530323

/-! ## A236709.P1745157460941991254

`A236710(A051936(n+4)+14)`
-/

namespace A236709.P1745157460941991254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236710 (A051936 (n + 4) + 14).toNat

end

end A236709.P1745157460941991254

/-!
# A236711: Numbers that are the sum of 2 nonzero squares in exactly 11 ways.

The programs for A236711, there is no canonical definition to state claims against.
-/

/-! ## A236711.P14047555063782482452

`A001105(A097225(n+1)*A163551(n+1))`
-/

namespace A236711.P14047555063782482452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A097225 (n + 1) * A163551 (n + 1)).toNat

end

end A236711.P14047555063782482452

/-! ## A236711.P5178535847891464385

`A001105(A097225(n+1)*A165661(n))`
-/

namespace A236711.P5178535847891464385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A097225 (n + 1) * A165661 n).toNat

end

end A236711.P5178535847891464385

/-!
# A236712: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the lower median of every 2X2 subblock.

The programs for A236712, there is no canonical definition to state claims against.
-/

/-! ## A236712.P5672421867450990843

`A236719(∑[n]+1)`
-/

namespace A236712.P5672421867450990843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236712.P5672421867450990843

/-! ## A236712.P10449572679639358447

`record[A236719(A114091(n+1))]`
-/

namespace A236712.P10449572679639358447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236712.P10449572679639358447

/-! ## A236712.P11701610849878336047

`record[A236719(A286235(n+1))]`
-/

namespace A236712.P11701610849878336047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236712.P11701610849878336047

/-! ## A236712.P18273964987045710962

`record[A236719(Δ[A053436(n+1)])]`
-/

namespace A236712.P18273964987045710962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236712.P18273964987045710962

/-! ## A236712.P16043808808403808103

`record[A010054(n)*A236719(n+1)]`
-/

namespace A236712.P16043808808403808103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236712.P16043808808403808103

/-!
# A236713: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the lower median of every 2X2 subblock.

The programs for A236713, there is no canonical definition to state claims against.
-/

/-! ## A236713.P9181572824504084318

`A236719(∑[n+1]+2)`
-/

namespace A236713.P9181572824504084318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236713.P9181572824504084318

/-! ## A236713.P145492486663336561

`lcm(2, A236719(A000096(n)+3))`
-/

namespace A236713.P145492486663336561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236719 (A000096 n + 3).toNat)

end

end A236713.P145492486663336561

/-! ## A236713.P10021349986279055055

`record[A236719(A114091(n+1)+1)]`
-/

namespace A236713.P10021349986279055055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236713.P10021349986279055055

/-! ## A236713.P7264939378892325533

`record[A236719(A286235(n+1)+1)]`
-/

namespace A236713.P7264939378892325533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236713.P7264939378892325533

/-! ## A236713.P7132089867173631844

`record[A236719(Δ[A053436(n+1)]+1)]`
-/

namespace A236713.P7132089867173631844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236713.P7132089867173631844

/-!
# A236714: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the lower median of every 2X2 subblock.

The programs for A236714, there is no canonical definition to state claims against.
-/

/-! ## A236714.P15620535533239692924

`A236719(∑[n+2]+4)`
-/

namespace A236714.P15620535533239692924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236714.P15620535533239692924

/-! ## A236714.P17307411553052405353

`A236719(A167614(n+1))+char[16]`
-/

namespace A236714.P17307411553052405353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A236714.P17307411553052405353

/-! ## A236714.P14798574673912868099

`lcm(A219347(n), A236719(A167614(n+1)))`
-/

namespace A236714.P14798574673912868099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219347 n) (A236719 (A167614 (n + 1)).toNat)

end

end A236714.P14798574673912868099

/-! ## A236714.P3914822070351297830

`or(A011738(n), A236719(A167614(n+1)))`
-/

namespace A236714.P3914822070351297830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011738 n) (A236719 (A167614 (n + 1)).toNat)

end

end A236714.P3914822070351297830

/-! ## A236714.P12715359415961243234

`or(A025469(n), A236719(A167614(n+1)))`
-/

namespace A236714.P12715359415961243234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A236719 (A167614 (n + 1)).toNat)

end

end A236714.P12715359415961243234

/-!
# A236715: Number of (n+1) X (4+1) 0..2 arrays colored with the maximum plus the lower median of every 2 X 2 subblock.

The programs for A236715, there is no canonical definition to state claims against.
-/

/-! ## A236715.P4548775589573533921

`A236719(∑[n+3]+7)`
-/

namespace A236715.P4548775589573533921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236715.P4548775589573533921

/-!
# A236716: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the lower median of every 2X2 subblock.

The programs for A236716, there is no canonical definition to state claims against.
-/

/-! ## A236716.P14281604995598025668

`A236719(A374005(n+1))`
-/

namespace A236716.P14281604995598025668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A374005 (n + 1)).toNat

end

end A236716.P14281604995598025668

/-! ## A236716.P5742356623420477635

`A236719(A167499(n+3))`
-/

namespace A236716.P5742356623420477635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A167499 (n + 3)).toNat

end

end A236716.P5742356623420477635

/-! ## A236716.P38460638815064897

`A236719(A155212(n)+13)`
-/

namespace A236716.P38460638815064897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A155212 n + 13).toNat

end

end A236716.P38460638815064897

/-! ## A236716.P11836713828914710664

`A236719(A056000(n)+15)`
-/

namespace A236716.P11836713828914710664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A056000 n + 15).toNat

end

end A236716.P11836713828914710664

/-! ## A236716.P10854431623758667485

`A236719(eq[7, A066657(n)])`
-/

namespace A236716.P10854431623758667485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236716.P10854431623758667485

/-!
# A236717: Number of (n+1)X(6+1) 0..2 arrays colored with the maximum plus the lower median of every 2X2 subblock.

The programs for A236717, there is no canonical definition to state claims against.
-/

/-! ## A236717.P5937129882897198573

`A236719(A374007(n+1))`
-/

namespace A236717.P5937129882897198573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A374007 (n + 1)).toNat

end

end A236717.P5937129882897198573

/-! ## A236717.P16593671703221042347

`A236719(A056115(n)+21)`
-/

namespace A236717.P16593671703221042347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A056115 n + 21).toNat

end

end A236717.P16593671703221042347

/-! ## A236717.P11868942277909686353

`A236719(A167499(n+4)+1)`
-/

namespace A236717.P11868942277909686353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A167499 (n + 4) + 1).toNat

end

end A236717.P11868942277909686353

/-! ## A236717.P380412221121759486

`A236719(A167614(n+4)+3)`
-/

namespace A236717.P380412221121759486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A167614 (n + 4) + 3).toNat

end

end A236717.P380412221121759486

/-! ## A236717.P4303492545854229565

`A236719(A000124(n+5)+5)`
-/

namespace A236717.P4303492545854229565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A000124 (n + 5) + 5).toNat

end

end A236717.P4303492545854229565

/-!
# A236718: Number of (n+1)X(7+1) 0..2 arrays colored with the maximum plus the lower median of every 2X2 subblock.

The programs for A236718, there is no canonical definition to state claims against.
-/

/-! ## A236718.P2335005968002968573

`A236719(A374008(n+1))`
-/

namespace A236718.P2335005968002968573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A374008 (n + 1)).toNat

end

end A236718.P2335005968002968573

/-! ## A236718.P8421747830440355770

`A236719(eq[11, A066657(n)])`
-/

namespace A236718.P8421747830440355770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236718.P8421747830440355770

/-! ## A236718.P15664122229544585843

`A236719(eq[8, A131818(n+1)])`
-/

namespace A236718.P15664122229544585843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236718.P15664122229544585843

/-! ## A236718.P18370123789435672804

`A236719(A055999(n+4))`
-/

namespace A236718.P18370123789435672804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (A055999 (n + 4)).toNat

end

end A236718.P18370123789435672804

/-! ## A236718.P6483115420470230322

`A236719(eq[4, A219347(n)])`
-/

namespace A236718.P6483115420470230322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236718.P6483115420470230322

/-!
# A236720: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236720, there is no canonical definition to state claims against.
-/

/-! ## A236720.P2551464775651422684

`A236728(∑[4*n]+1)`
-/

namespace A236720.P2551464775651422684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236720.P2551464775651422684

/-! ## A236720.P6948205859912942066

`record[A236728(Δ[A235355(n)])]`
-/

namespace A236720.P6948205859912942066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236720.P6948205859912942066

/-! ## A236720.P6632401954489832377

`record[A003982(n)*A236728(n+1)]`
-/

namespace A236720.P6632401954489832377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A236728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236720.P6632401954489832377

/-! ## A236720.P8677202688447890141

`record[A214505(n)*A236728(n+1)]`
-/

namespace A236720.P8677202688447890141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A236728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236720.P8677202688447890141

/-! ## A236720.P6602812661096760197

`record[gcd(A003987(n), A236728(n+1))]`
-/

namespace A236720.P6602812661096760197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A236728 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236720.P6602812661096760197

/-!
# A236721: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236721, there is no canonical definition to state claims against.
-/

/-! ## A236721.P15146861745320380823

`A236728(∑[n]+1)`
-/

namespace A236721.P15146861745320380823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236721.P15146861745320380823

/-! ## A236721.P7149133918926632672

`record[A236728(A056534(n+1))]`
-/

namespace A236721.P7149133918926632672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236721.P7149133918926632672

/-! ## A236721.P9244669215945347558

`record[A236728(A267104(n+1))]`
-/

namespace A236721.P9244669215945347558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236721.P9244669215945347558

/-! ## A236721.P17726668531159681961

`A236728(A000124(n))+char[19]`
-/

namespace A236721.P17726668531159681961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A236721.P17726668531159681961

/-! ## A236721.P4924554793731318300

`record[A010054(n)*A236728(n+1)]`
-/

namespace A236721.P4924554793731318300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236721.P4924554793731318300

/-!
# A236722: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236722, there is no canonical definition to state claims against.
-/

/-! ## A236722.P9992761191159233535

`A236728(∑[n+1]+2)`
-/

namespace A236722.P9992761191159233535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236722.P9992761191159233535

/-! ## A236722.P1754391388916393483

`or(char[1], A236728(A000096(n)+3))`
-/

namespace A236722.P1754391388916393483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A236728 (A000096 n + 3).toNat)

end

end A236722.P1754391388916393483

/-! ## A236722.P13129922906423455911

`record[A010054(n)*A236728(n+2)]`
-/

namespace A236722.P13129922906423455911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236722.P13129922906423455911

/-! ## A236722.P1307897781395762743

`record[gcd(A002262(n), A236728(n+2))]`
-/

namespace A236722.P1307897781395762743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236728 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236722.P1307897781395762743

/-! ## A236722.P8322092708342541450

`A007318(C(2, n))*A236728(A000096(n)+3)`
-/

namespace A236722.P8322092708342541450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A236728 (A000096 n + 3).toNat

end

end A236722.P8322092708342541450

/-!
# A236723: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236723, there is no canonical definition to state claims against.
-/

/-! ## A236723.P13350064577571435811

`A236728(∑[n+2]+4)`
-/

namespace A236723.P13350064577571435811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236723.P13350064577571435811

/-! ## A236723.P3377514530336399345

`A236728(A167614(n+1))+char[17]`
-/

namespace A236723.P3377514530336399345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A236723.P3377514530336399345

/-! ## A236723.P7069147403163542559

`A015928(n)*A236728(A167614(n+1))`
-/

namespace A236723.P7069147403163542559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015928 n * A236728 (A167614 (n + 1)).toNat

end

end A236723.P7069147403163542559

/-! ## A236723.P3411406748237653398

`A263014(n+1)+A236728(A167614(n+1))`
-/

namespace A236723.P3411406748237653398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (n + 1) + A236728 (A167614 (n + 1)).toNat

end

end A236723.P3411406748237653398

/-! ## A236723.P12685311394474747786

`A236728(A167614(n+1))%A236724(n+1)`
-/

namespace A236723.P12685311394474747786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236728 (A167614 (n + 1)).toNat) (A236724 (n + 1))

end

end A236723.P12685311394474747786

/-!
# A236724: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236724, there is no canonical definition to state claims against.
-/

/-! ## A236724.P11457779700363333443

`A236728(∑[n+3]+7)`
-/

namespace A236724.P11457779700363333443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236724.P11457779700363333443

/-! ## A236724.P7512380744201662759

`or(A000007(n), A236728(A141214(n)+7))`
-/

namespace A236724.P7512380744201662759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A236728 (A141214 n + 7).toNat)

end

end A236724.P7512380744201662759

/-! ## A236724.P11309291603299970859

`A236728(eq[3, A193592(n)])^-1^-1`
-/

namespace A236724.P11309291603299970859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A236728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) ^ (-1 : ℤ)) ^ (-1 : ℤ)

end

end A236724.P11309291603299970859

/-! ## A236724.P7254861580208425916

`or(A000007(n), A236728(A055998(n+2)))`
-/

namespace A236724.P7254861580208425916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A236728 (A055998 (n + 2)).toNat)

end

end A236724.P7254861580208425916

/-! ## A236724.P1656611664279877218

`A236728(A141214(n+1))+A000007(n+1)`
-/

namespace A236724.P1656611664279877218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A141214 (n + 1)).toNat + A000007 (n + 1)

end

end A236724.P1656611664279877218

/-!
# A236725: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236725, there is no canonical definition to state claims against.
-/

/-! ## A236725.P10278490735154445058

`A236728(C(n+6, 2)-n)`
-/

namespace A236725.P10278490735154445058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (Nat.choose (n + 6) 2 - n)

end

end A236725.P10278490735154445058

/-! ## A236725.P10024394035237533315

`A236728(A374005(n+1))`
-/

namespace A236725.P10024394035237533315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A374005 (n + 1)).toNat

end

end A236725.P10024394035237533315

/-! ## A236725.P14529293936466992794

`A236728(A167499(n+3))`
-/

namespace A236725.P14529293936466992794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A167499 (n + 3)).toNat

end

end A236725.P14529293936466992794

/-! ## A236725.P17020470763926537946

`A236728(A155212(n)+13)`
-/

namespace A236725.P17020470763926537946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A155212 n + 13).toNat

end

end A236725.P17020470763926537946

/-! ## A236725.P4897775095300448090

`A236728(A056000(n)+15)`
-/

namespace A236725.P4897775095300448090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A056000 n + 15).toNat

end

end A236725.P4897775095300448090

/-!
# A236726: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236726, there is no canonical definition to state claims against.
-/

/-! ## A236726.P16668411939439881267

`A236728(A374007(n+1))`
-/

namespace A236726.P16668411939439881267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A374007 (n + 1)).toNat

end

end A236726.P16668411939439881267

/-! ## A236726.P4492869383010129967

`A236728(A056115(n)+21)`
-/

namespace A236726.P4492869383010129967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A056115 n + 21).toNat

end

end A236726.P4492869383010129967

/-! ## A236726.P1883154074420680075

`A236728(A167499(n+4)+1)`
-/

namespace A236726.P1883154074420680075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A167499 (n + 4) + 1).toNat

end

end A236726.P1883154074420680075

/-! ## A236726.P15904828982669361252

`A236728(A145018(n+6)+2)`
-/

namespace A236726.P15904828982669361252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A145018 (n + 6) + 2).toNat

end

end A236726.P15904828982669361252

/-! ## A236726.P4030950198180317943

`A236728(A000124(n+5)+5)`
-/

namespace A236726.P4030950198180317943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A000124 (n + 5) + 5).toNat

end

end A236726.P4030950198180317943

/-!
# A236727: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236727, there is no canonical definition to state claims against.
-/

/-! ## A236727.P7892458076647438086

`A236728(A374008(n+1))`
-/

namespace A236727.P7892458076647438086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A374008 (n + 1)).toNat

end

end A236727.P7892458076647438086

/-! ## A236727.P6306547318617042232

`A236728(eq[11, A066657(n)])`
-/

namespace A236727.P6306547318617042232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236727.P6306547318617042232

/-! ## A236727.P13962741581219880284

`A236728(eq[8, A131818(n+1)])`
-/

namespace A236727.P13962741581219880284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236727.P13962741581219880284

/-! ## A236727.P14121860008374775387

`A236728(A167614(n+6)-(n+3))`
-/

namespace A236727.P14121860008374775387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A236727.P14121860008374775387

/-! ## A236727.P1985199293750030886

`A236728(A055999(n+4))`
-/

namespace A236727.P1985199293750030886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236728 (A055999 (n + 4)).toNat

end

end A236727.P1985199293750030886

/-!
# A236729: Number of (n+1) X (n+1) 0..2 arrays with the upper median minus the lower median of every 2 X 2 subblock equal.

The programs for A236729, there is no canonical definition to state claims against.
-/

/-! ## A236729.P16258205034406206918

`A236737((n+1)²+n²)`
-/

namespace A236729.P16258205034406206918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 ((n + 1) ^ 2 + n ^ 2)

end

end A236729.P16258205034406206918

/-!
# A236730: Number of (n+1)X(1+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236730, there is no canonical definition to state claims against.
-/

/-! ## A236730.P14412038950981997961

`A236737(∑[n]+1)`
-/

namespace A236730.P14412038950981997961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236730.P14412038950981997961

/-! ## A236730.P9728276787345639502

`or(1, A236737(A000124(n)))`
-/

namespace A236730.P9728276787345639502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236737 (A000124 n).toNat)

end

end A236730.P9728276787345639502

/-! ## A236730.P5116930865575633759

`record[A236737(A286234(n+1))]`
-/

namespace A236730.P5116930865575633759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236730.P5116930865575633759

/-! ## A236730.P9102962290626515410

`record[A010054(n)*A236737(n+1)]`
-/

namespace A236730.P9102962290626515410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236730.P9102962290626515410

/-! ## A236730.P16304060130607549104

`record[gcd(A002262(n), A236737(n+1))]`
-/

namespace A236730.P16304060130607549104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236737 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236730.P16304060130607549104

/-!
# A236731: Number of (n+1)X(2+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236731, there is no canonical definition to state claims against.
-/

/-! ## A236731.P17699345374522347016

`A236737(∑[n+1]+2)`
-/

namespace A236731.P17699345374522347016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236731.P17699345374522347016

/-! ## A236731.P6453596447988474301

`record[A010054(n)*A236737(n+2)]`
-/

namespace A236731.P6453596447988474301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236731.P6453596447988474301

/-! ## A236731.P14152642612309033015

`record[gcd(A002262(n), A236737(n+2))]`
-/

namespace A236731.P14152642612309033015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236737 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236731.P14152642612309033015

/-! ## A236731.P411485048620720021

`record[root(A236737(n+2), A002260(n+1))]`
-/

namespace A236731.P411485048620720021
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236737 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236731.P411485048620720021

/-! ## A236731.P1389523979575853131

`record[A236737(A198453(n+1))]`
-/

namespace A236731.P1389523979575853131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236731.P1389523979575853131

/-!
# A236732: Number of (n+1)X(3+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236732, there is no canonical definition to state claims against.
-/

/-! ## A236732.P10721020867455688247

`A236737(∑[n+2]+4)`
-/

namespace A236732.P10721020867455688247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236732.P10721020867455688247

/-! ## A236732.P2551976784173345439

`or(1, A236737(A167614(n+1)))`
-/

namespace A236732.P2551976784173345439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236737 (A167614 (n + 1)).toNat)

end

end A236732.P2551976784173345439

/-! ## A236732.P10697215380182726215

`A236737(A167614(n+1))+A185284(n)`
-/

namespace A236732.P10697215380182726215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A167614 (n + 1)).toNat + A185284 n

end

end A236732.P10697215380182726215

/-! ## A236732.P11154427081397150068

`lcm(A020985(n), A236737(A167614(n+1)))`
-/

namespace A236732.P11154427081397150068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A236737 (A167614 (n + 1)).toNat)

end

end A236732.P11154427081397150068

/-! ## A236732.P10515819837309742054

`A236737(A167614(n+1))%A236736(n+1)`
-/

namespace A236732.P10515819837309742054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236737 (A167614 (n + 1)).toNat) (A236736 (n + 1))

end

end A236732.P10515819837309742054

/-!
# A236733: Number of (n+1)X(4+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236733, there is no canonical definition to state claims against.
-/

/-! ## A236733.P9833167201568814357

`A236737(A374004(n+1))`
-/

namespace A236733.P9833167201568814357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A374004 (n + 1)).toNat

end

end A236733.P9833167201568814357

/-! ## A236733.P11285648992012303840

`A236737(A141214(n)+7)`
-/

namespace A236733.P11285648992012303840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A141214 n + 7).toNat

end

end A236733.P11285648992012303840

/-! ## A236733.P16660967315866497231

`A236737(A055999(n)+10)`
-/

namespace A236733.P16660967315866497231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A055999 n + 10).toNat

end

end A236733.P16660967315866497231

/-! ## A236733.P17153420651537068320

`A236737(A167614(n+2)+1)`
-/

namespace A236733.P17153420651537068320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A167614 (n + 2) + 1).toNat

end

end A236733.P17153420651537068320

/-! ## A236733.P15907271062734735521

`A236737(A166136(n+2)-2)`
-/

namespace A236733.P15907271062734735521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A166136 (n + 2) - 2).toNat

end

end A236733.P15907271062734735521

/-!
# A236734: Number of (n+1)X(5+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236734, there is no canonical definition to state claims against.
-/

/-! ## A236734.P12692241610930238563

`A236737(A374005(n+1))`
-/

namespace A236734.P12692241610930238563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A374005 (n + 1)).toNat

end

end A236734.P12692241610930238563

/-! ## A236734.P2516349522171971960

`A236737(A167499(n+3))`
-/

namespace A236734.P2516349522171971960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A167499 (n + 3)).toNat

end

end A236734.P2516349522171971960

/-! ## A236734.P8389102526668332328

`A236737(eq[7, A066657(n)])`
-/

namespace A236734.P8389102526668332328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236734.P8389102526668332328

/-! ## A236734.P12302855521372153455

`A236737(eq[6, A131818(n+1)])`
-/

namespace A236734.P12302855521372153455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236734.P12302855521372153455

/-! ## A236734.P12212511083979402523

`A236737(A046691(n+3))`
-/

namespace A236734.P12212511083979402523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A046691 (n + 3)).toNat

end

end A236734.P12212511083979402523

/-!
# A236735: Number of (n+1)X(6+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236735, there is no canonical definition to state claims against.
-/

/-! ## A236735.P11420137090620728675

`A236737(A374007(n+1))`
-/

namespace A236735.P11420137090620728675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A374007 (n + 1)).toNat

end

end A236735.P11420137090620728675

/-! ## A236735.P6036781298671070239

`A236737(eq[7, A131818(n+1)])`
-/

namespace A236735.P6036781298671070239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236735.P6036781298671070239

/-! ## A236735.P14865552937834935438

`A236737(eq[3, A219347(n)])`
-/

namespace A236735.P14865552937834935438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236735.P14865552937834935438

/-! ## A236735.P7283759375459967249

`A236737(eq[5, A193592(n)])`
-/

namespace A236735.P7283759375459967249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236735.P7283759375459967249

/-! ## A236735.P4990262601978506156

`A236737(eq[16, A057728(n+1)])`
-/

namespace A236735.P4990262601978506156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236735.P4990262601978506156

/-!
# A236736: Number of (n+1)X(7+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236736, there is no canonical definition to state claims against.
-/

/-! ## A236736.P12452306383780927407

`A236737(A374008(n+1))`
-/

namespace A236736.P12452306383780927407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A374008 (n + 1)).toNat

end

end A236736.P12452306383780927407

/-! ## A236736.P7918209248454088851

`A236737(A055999(n+4))`
-/

namespace A236736.P7918209248454088851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (A055999 (n + 4)).toNat

end

end A236736.P7918209248454088851

/-! ## A236736.P10039317281291684135

`A236737(eq[4, A219347(n)])`
-/

namespace A236736.P10039317281291684135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236736.P10039317281291684135

/-! ## A236736.P7225799584283747782

`A236737(Δ[A026054(n+4)])`
-/

namespace A236736.P7225799584283747782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236737 (f1 (n + 1) - f1 n).toNat

end

end A236736.P7225799584283747782

/-!
# A236738: Number of (n+1)X(n+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236738, there is no canonical definition to state claims against.
-/

/-! ## A236738.P7925809777561672978

`A236746((n+1)²+n²)`
-/

namespace A236738.P7925809777561672978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 ((n + 1) ^ 2 + n ^ 2)

end

end A236738.P7925809777561672978

/-! ## A236738.P15657680144682336043

`or(1, A236746(A001844(n)))`
-/

namespace A236738.P15657680144682336043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236746 (A001844 n).toNat)

end

end A236738.P15657680144682336043

/-! ## A236738.P5725273402590644007

`record[A003982(n)*A236746(n+1)]`
-/

namespace A236738.P5725273402590644007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A236746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236738.P5725273402590644007

/-! ## A236738.P14676382432638409117

`A236746(A001844(n))+A072325(n+2)`
-/

namespace A236738.P14676382432638409117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A001844 n).toNat + A072325 (n + 2)

end

end A236738.P14676382432638409117

/-!
# A236739: Number of (n+1) X (1+1) 0..2 arrays with the upper median plus the lower median of every 2 X 2 subblock equal.

The programs for A236739, there is no canonical definition to state claims against.
-/

/-! ## A236739.P6178503626344421936

`A236746(∑[n]+1)`
-/

namespace A236739.P6178503626344421936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236739.P6178503626344421936

/-! ## A236739.P9143100251624406429

`or(1, A236746(A000124(n)))`
-/

namespace A236739.P9143100251624406429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236746 (A000124 n).toNat)

end

end A236739.P9143100251624406429

/-! ## A236739.P9198759204499240742

`record[A103451(n)*A236746(n+1)]`
-/

namespace A236739.P9198759204499240742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236739.P9198759204499240742

/-! ## A236739.P13450504495936280205

`record[root(A236746(n+1), A130595(n))]`
-/

namespace A236739.P13450504495936280205
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236746 (n + 1) : ℝ) ^ (1 / (A130595 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236739.P13450504495936280205

/-! ## A236739.P18107281002325834262

`record[root(A236746(n+1), A132046(n))]`
-/

namespace A236739.P18107281002325834262
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236746 (n + 1) : ℝ) ^ (1 / (A132046 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236739.P18107281002325834262

/-!
# A236740: Number of (n+1)X(2+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236740, there is no canonical definition to state claims against.
-/

/-! ## A236740.P10165992818736160325

`A236746(∑[n+1]+2)`
-/

namespace A236740.P10165992818736160325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236740.P10165992818736160325

/-! ## A236740.P11614259846897884530

`or(1, A236746(A000096(n)+3))`
-/

namespace A236740.P11614259846897884530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236746 (A000096 n + 3).toNat)

end

end A236740.P11614259846897884530

/-! ## A236740.P2865547017493736399

`A236746(A000096(n)+3)+A102683(2*n)`
-/

namespace A236740.P2865547017493736399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A000096 n + 3).toNat + A102683 (2 * n)

end

end A236740.P2865547017493736399

/-! ## A236740.P13062595381995846594

`record[A236746(A000096(val(n+1, 2)+1))]`
-/

namespace A236740.P13062595381995846594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236740.P13062595381995846594

/-! ## A236740.P4191458417477433040

`A033999(2*n)*A236746(A000096(n+1))`
-/

namespace A236740.P4191458417477433040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A236746 (A000096 (n + 1)).toNat

end

end A236740.P4191458417477433040

/-!
# A236741: Number of (n+1)X(3+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236741, there is no canonical definition to state claims against.
-/

/-! ## A236741.P16483843165705154492

`A236746(∑[n+2]+4)`
-/

namespace A236741.P16483843165705154492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236741.P16483843165705154492

/-! ## A236741.P12990122255431189687

`or(1, A236746(A167614(n+1)))`
-/

namespace A236741.P12990122255431189687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236746 (A167614 (n + 1)).toNat)

end

end A236741.P12990122255431189687

/-! ## A236741.P10441723105032892468

`A236746(A167614(n+1))+A025466(n)`
-/

namespace A236741.P10441723105032892468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A167614 (n + 1)).toNat + A025466 n

end

end A236741.P10441723105032892468

/-! ## A236741.P11308998673476648333

`A236746(A167614(n+1))+A185245(n)`
-/

namespace A236741.P11308998673476648333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A167614 (n + 1)).toNat + A185245 n

end

end A236741.P11308998673476648333

/-! ## A236741.P4026440576176009664

`lcm(A033999(n), A236746(A167614(n+1)))`
-/

namespace A236741.P4026440576176009664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A236746 (A167614 (n + 1)).toNat)

end

end A236741.P4026440576176009664

/-!
# A236742: Number of (n+1)X(4+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236742, there is no canonical definition to state claims against.
-/

/-! ## A236742.P18355351049774740023

`A236746(A374004(n+1))`
-/

namespace A236742.P18355351049774740023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A374004 (n + 1)).toNat

end

end A236742.P18355351049774740023

/-! ## A236742.P16680695200595849105

`A236746(A052905(n)+9)`
-/

namespace A236742.P16680695200595849105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A052905 n + 9).toNat

end

end A236742.P16680695200595849105

/-! ## A236742.P4530275103784044971

`A236746(A055999(n)+10)`
-/

namespace A236742.P4530275103784044971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A055999 n + 10).toNat

end

end A236742.P4530275103784044971

/-! ## A236742.P952559967208974305

`A236746(A167614(n+2)+1)`
-/

namespace A236742.P952559967208974305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A167614 (n + 2) + 1).toNat

end

end A236742.P952559967208974305

/-! ## A236742.P16810372425425484775

`A236746(A166136(n+2)-2)`
-/

namespace A236742.P16810372425425484775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A166136 (n + 2) - 2).toNat

end

end A236742.P16810372425425484775

/-!
# A236743: Number of (n+1)X(5+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236743, there is no canonical definition to state claims against.
-/

/-! ## A236743.P8165645917508403361

`A236746(A374005(n+1))`
-/

namespace A236743.P8165645917508403361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A374005 (n + 1)).toNat

end

end A236743.P8165645917508403361

/-! ## A236743.P10768419233854484763

`A236746(A167499(n+3))`
-/

namespace A236743.P10768419233854484763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A167499 (n + 3)).toNat

end

end A236743.P10768419233854484763

/-! ## A236743.P4474765878199398279

`A236746(A155212(n)+13)`
-/

namespace A236743.P4474765878199398279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A155212 n + 13).toNat

end

end A236743.P4474765878199398279

/-! ## A236743.P3022806232244622333

`A236746(A051936(n+4)+14)`
-/

namespace A236743.P3022806232244622333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A051936 (n + 4) + 14).toNat

end

end A236743.P3022806232244622333

/-! ## A236743.P18133995110456931414

`A236746(A027379(n+3)-(n-3))`
-/

namespace A236743.P18133995110456931414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A027379 (n + 3) - ((n : ℤ) - 3)).toNat

end

end A236743.P18133995110456931414

/-!
# A236744: Number of (n+1)X(6+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236744, there is no canonical definition to state claims against.
-/

/-! ## A236744.P10408587234659009813

`A236746(A374007(n+1))`
-/

namespace A236744.P10408587234659009813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A374007 (n + 1)).toNat

end

end A236744.P10408587234659009813

/-! ## A236744.P642359662986577179

`A236746(Δ[A264443(n)]+10)`
-/

namespace A236744.P642359662986577179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (f1 (n + 1) - f1 n + 10).toNat

end

end A236744.P642359662986577179

/-! ## A236744.P10545597834326185148

`A236746(eq[7, A131818(n+1)])`
-/

namespace A236744.P10545597834326185148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236744.P10545597834326185148

/-! ## A236744.P1291352083261937157

`A236746(Δ[A023545(n+1)]+10)`
-/

namespace A236744.P1291352083261937157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (f1 (n + 1) - f1 n + 10).toNat

end

end A236744.P1291352083261937157

/-! ## A236744.P15786039898010137099

`A236746(eq[3, A219347(n)])`
-/

namespace A236744.P15786039898010137099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236744.P15786039898010137099

/-!
# A236745: Number of (n+1)X(7+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236745, there is no canonical definition to state claims against.
-/

/-! ## A236745.P11813437700569953605

`A236746(A374008(n+1))`
-/

namespace A236745.P11813437700569953605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A374008 (n + 1)).toNat

end

end A236745.P11813437700569953605

/-! ## A236745.P3855173951285931808

`A236746(eq[8, A131818(n+1)])`
-/

namespace A236745.P3855173951285931808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236745.P3855173951285931808

/-! ## A236745.P12304094309828387705

`A236746(A055999(n+4))`
-/

namespace A236745.P12304094309828387705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (A055999 (n + 4)).toNat

end

end A236745.P12304094309828387705

/-! ## A236745.P3496948233931006824

`A236746(eq[4, A219347(n)])`
-/

namespace A236745.P3496948233931006824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236745.P3496948233931006824

/-! ## A236745.P13448846124246650174

`A236746(eq[6, A193592(n)])`
-/

namespace A236745.P13448846124246650174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236745.P13448846124246650174

/-!
# A236747: Number of 0 <= k <= sqrt(n) such that n-k and n+k are both prime.

The programs for A236747, there is no canonical definition to state claims against.
-/

/-! ## A236747.P198068896315810006

`A132440(n)^A132440(A383706(3*n+2))`
-/

namespace A236747.P198068896315810006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132440 n : ℚ) ^ (A132440 (A383706 (3 * n + 2)).toNat : ℤ)

end

end A236747.P198068896315810006

/-!
# A236748: Positive integers k such that k^2 divided by the digital sum of k is a square.

The programs for A236748, there is no canonical definition to state claims against.
-/

/-! ## A236748.P4532254899402745790

`∩[A028839(n+1), A100417(n+1)]`
-/

namespace A236748.P4532254899402745790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236748.P4532254899402745790

/-! ## A236748.P2197054840450981990

`∩[A028839(n+1), A349898(n+1)]`
-/

namespace A236748.P2197054840450981990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236748.P2197054840450981990

/-! ## A236748.P18169661976390124178

`∩[A028839(n+1), A238368(n+1)]`
-/

namespace A236748.P18169661976390124178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236748.P18169661976390124178

/-! ## A236748.P9680325769353918657

`∩[A028839(n+1), A371167(n+1)]`
-/

namespace A236748.P9680325769353918657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236748.P9680325769353918657

/-! ## A236748.P5782429037336853152

`∩[A028839(n+1), A140209(n+1)]`
-/

namespace A236748.P5782429037336853152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236748.P5782429037336853152

/-!
# A236749: Positive integers n such that n^2 divided by the digital sum of n is a cube.

The programs for A236749, there is no canonical definition to state claims against.
-/

/-! ## A236749.P7468453344935271906

`∩[A227227(n+1), A356021(n+1)]`
-/

namespace A236749.P7468453344935271906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236749.P7468453344935271906

/-! ## A236749.P3119010413106445851

`A227227(A227194(n+2)%A227212(3*n+4))`
-/

namespace A236749.P3119010413106445851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227227 (Int.tmod (A227194 (n + 2)) (A227212 (3 * n + 4))).toNat

end

end A236749.P3119010413106445851

/-! ## A236749.P7654002695388865012

`filter[A227227(n+2), A188641(#)]`
-/

namespace A236749.P7654002695388865012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A236749.P7654002695388865012

/-! ## A236749.P7365274192069081465

`filter[A227227(n+2), A322674(#)]`
-/

namespace A236749.P7365274192069081465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322674 (f1 j).toNat = 1) n)

end

end A236749.P7365274192069081465

/-!
# A236751: Positive integers n such that n^3 divided by the digital sum of n is a cube.

The programs for A236751, there is no canonical definition to state claims against.
-/

/-! ## A236751.P2305905321052543824

`∩[A047226(n+1), A059094(n+1)]`
-/

namespace A236751.P2305905321052543824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236751.P2305905321052543824

/-! ## A236751.P7094363968097319747

`eq[A063726(n), A063761(A007953(n))]`
-/

namespace A236751.P7094363968097319747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063761 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236751.P7094363968097319747

/-! ## A236751.P3094216699033489204

`eq[A007953(n), A088440(A196441(n+1))]`
-/

namespace A236751.P3094216699033489204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A196441 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236751.P3094216699033489204

/-! ## A236751.P9142553914780786617

`eq[A007953(n), A174455(A210615(n+1))]`
-/

namespace A236751.P9142553914780786617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174455 (A210615 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236751.P9142553914780786617

/-! ## A236751.P8072338817585779415

`∩[A059094(n+1), A184967(n+1)]`
-/

namespace A236751.P8072338817585779415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236751.P8072338817585779415

/-!
# A236752: Primes of the form k*2^(k-1) - 1.

The programs for A236752, there is no canonical definition to state claims against.
-/

/-! ## A236752.P17161802876866013885

`A087323(A230769(n+1))`
-/

namespace A236752.P17161802876866013885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 (A230769 (n + 1)).toNat

end

end A236752.P17161802876866013885

/-! ## A236752.P12895141403055210237

`A005183(A230769(n+1)+1)-2`
-/

namespace A236752.P12895141403055210237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 (A230769 (n + 1) + 1).toNat - 2

end

end A236752.P12895141403055210237

/-! ## A236752.P9069255787713621441

`∩[A112715(n+1), A087323(n)]`
-/

namespace A236752.P9069255787713621441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236752.P9069255787713621441

/-! ## A236752.P2786182712383943582

`p?[Δ[n*∑[2^n]]]`
-/

namespace A236752.P2786182712383943582
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236752.P2786182712383943582

/-!
# A236753: Number of simple (non-intersecting) directed paths on the grid graph P_n X P_n.

The programs for A236753, there is no canonical definition to state claims against.
-/

/-! ## A236753.P5167117816768136945

`2*A288032(n+1)+(n+1)²`
-/

namespace A236753.P5167117816768136945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288032 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A236753.P5167117816768136945

/-!
# A236754: Number of irregular spirals (non-expanded loop) appearing with n center points.

The programs for A236754, there is no canonical definition to state claims against.
-/

/-! ## A236754.P5998233207033993491

`(n+1)!-A236755(n+1)`
-/

namespace A236754.P5998233207033993491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A236755 (n + 1)

end

end A236754.P5998233207033993491

/-! ## A236754.P5548287658654237741

`A000142(n+1)-A236755(n+1)`
-/

namespace A236754.P5548287658654237741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A236755 (n + 1)

end

end A236754.P5548287658654237741

/-! ## A236754.P13512419277685445790

`∏[A000027(n+1)]-A236755(n+1)`
-/

namespace A236754.P13512419277685445790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A236755 (n + 1)

end

end A236754.P13512419277685445790

/-! ## A236754.P14073562676214266157

`∏[A011760(n+1)]-A236755(n+1)`
-/

namespace A236754.P14073562676214266157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A236755 (n + 1)

end

end A236754.P14073562676214266157

/-! ## A236754.P667171330457326659

`∏[A060695(n+1)]-A236755(n+1)`
-/

namespace A236754.P667171330457326659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A236755 (n + 1)

end

end A236754.P667171330457326659

/-!
# A236756: Number of (unlabeled) partially ordered sets on n elements which are Cohen-Macaulay over the integers.

The programs for A236756, there is no canonical definition to state claims against.
-/

/-! ## A236756.P7255629461633118203

`A343609(A032301(n+1))+A032200(n+1)`
-/

namespace A236756.P7255629461633118203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A032301 (n + 1)).toNat + A032200 (n + 1)

end

end A236756.P7255629461633118203

/-! ## A236756.P9147397484958432522

`A055930(A213385(n+1)+1)`
-/

namespace A236756.P9147397484958432522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A213385 (n + 1) + 1).toNat

end

end A236756.P9147397484958432522

/-! ## A236756.P10579921843935321402

`A226190(A148212(n)+A053827(n))`
-/

namespace A236756.P10579921843935321402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A148212 n + A053827 n).toNat

end

end A236756.P10579921843935321402

/-! ## A236756.P9760334542014217438

`A034973(A328434(n)+A263779(n))`
-/

namespace A236756.P9760334542014217438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A328434 n + A263779 n).toNat

end

end A236756.P9760334542014217438

/-!
# A236758: Number of partitions of 3*n into 3 parts with smallest part prime.

The programs for A236758, the canonical program `A236758.P18436612115019287046` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236758 has offset 1).

The definition of A236758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236758.P18436612115019287046

`∑[A230980(n)+A082460(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236758

/-- `∑[A230980(n)+A082460(n+1)]` -/
def P18436612115019287046.Spec : Prop :=
  ∀ n, P18436612115019287046.a n = A236758 (n + 1)

theorem P18436612115019287046.correct : P18436612115019287046.Spec := by
  intro n
  simp only [A236758, Nat.add_sub_cancel]

end A236758

/-! ## A236758.P15684961696043106774

`∑[A230980(n)+A084360(n+3)]`
-/

namespace A236758.P15684961696043106774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A084360 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P15684961696043106774

namespace A236758

/-- `∑[A230980(n)+A084360(n+3)]` -/
def P15684961696043106774.Spec : Prop :=
  ∀ n, P15684961696043106774.a n = A236758 (n + 1)

end A236758

/-! ## A236758.P14057598939160572651

`∑[A084360(n+1)+A000720(n+1)]`
-/

namespace A236758.P14057598939160572651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 1) + A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P14057598939160572651

namespace A236758

/-- `∑[A084360(n+1)+A000720(n+1)]` -/
def P14057598939160572651.Spec : Prop :=
  ∀ n, P14057598939160572651.a n = A236758 (n + 1)

end A236758

/-! ## A236758.P12764925843656889684

`A046992(n+1)+∑[A084360(n+1)]`
-/

namespace A236758.P12764925843656889684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P12764925843656889684

namespace A236758

/-- `A046992(n+1)+∑[A084360(n+1)]` -/
def P12764925843656889684.Spec : Prop :=
  ∀ n, P12764925843656889684.a n = A236758 (n + 1)

end A236758

/-! ## A236758.P9415082554025919224

`∑[A084360(n+1)+∑[A010051(n+1)]]`
-/

namespace A236758.P9415082554025919224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P9415082554025919224

namespace A236758

/-- `∑[A084360(n+1)+∑[A010051(n+1)]]` -/
def P9415082554025919224.Spec : Prop :=
  ∀ n, P9415082554025919224.a n = A236758 (n + 1)

end A236758

/-! ## A236758.P5728228588151786277

`∑[A084360(n+1)-A065855(n+1)+n]`
-/

namespace A236758.P5728228588151786277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 1) - A065855 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P5728228588151786277

namespace A236758

/-- `∑[A084360(n+1)-A065855(n+1)+n]` -/
def P5728228588151786277.Spec : Prop :=
  ∀ n, P5728228588151786277.a n = A236758 (n + 1)

end A236758

/-! ## A236758.P9662024293469338052

`∑[A082460(n+1)+A000720(A028310(n))]`
-/

namespace A236758.P9662024293469338052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 1) + A000720 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P9662024293469338052

namespace A236758

/-- `∑[A082460(n+1)+A000720(A028310(n))]` -/
def P9662024293469338052.Spec : Prop :=
  ∀ n, P9662024293469338052.a n = A236758 (n + 1)

end A236758

/-! ## A236758.P271687881749512344

`∑[A082460(n+1)+A056172(A004277(n))]`
-/

namespace A236758.P271687881749512344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 1) + A056172 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P271687881749512344

namespace A236758

/-- `∑[A082460(n+1)+A056172(A004277(n))]` -/
def P271687881749512344.Spec : Prop :=
  ∀ n, P271687881749512344.a n = A236758 (n + 1)

end A236758

/-! ## A236758.P8947191339192869199

`∑[A242096(A062545(n))+A084360(n+1)]`
-/

namespace A236758.P8947191339192869199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A062545 n).toNat + A084360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P8947191339192869199

namespace A236758

/-- `∑[A242096(A062545(n))+A084360(n+1)]` -/
def P8947191339192869199.Spec : Prop :=
  ∀ n, P8947191339192869199.a n = A236758 (n + 1)

end A236758

/-! ## A236758.P10193401255127557162

`∑[A084360(n+1)+A056811((n+1)²)]`
-/

namespace A236758.P10193401255127557162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 1) + A056811 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P10193401255127557162

namespace A236758

/-- `∑[A084360(n+1)+A056811((n+1)²)]` -/
def P10193401255127557162.Spec : Prop :=
  ∀ n, P10193401255127557162.a n = A236758 (n + 1)

end A236758

/-!
# A236759: Numbers n such that n^4+n-1 is prime.

The programs for A236759, there is no canonical definition to state claims against.
-/

/-! ## A236759.P8554886290572985750

`eq[1, ∑{e}[1-n-n²², #]]`
-/

namespace A236759.P8554886290572985750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) - ((n ^ 2) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236759.P8554886290572985750

/-! ## A236759.P13166267496231050466

`sqrt(floor(sqrt(p?[(n+1)²²+n])))`
-/

namespace A236759.P13166267496231050466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2 + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)

end

end A236759.P13166267496231050466

/-! ## A236759.P2374243677498693037

`eq[2, ∏{e}[n^4+n-1, #+1]]`
-/

namespace A236759.P2374243677498693037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236759.P2374243677498693037

/-! ## A236759.P13228091936323639640

`eq[1, ∑{e}[(n+1)^4+n, round(acot(#))]]+1`
-/

namespace A236759.P13228091936323639640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.factorization (f3 n) p : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236759.P13228091936323639640

/-!
# A236760: Numbers n such that n^4 + n +- 1 are twin primes.

The programs for A236760, there is no canonical definition to state claims against.
-/

/-! ## A236760.P11556043283370378175

`∩[A049408(n+1), A236759(n+1)]`
-/

namespace A236760.P11556043283370378175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236760.P11556043283370378175

/-!
# A236761: Numbers n such that n^4-n+1 is prime.

The programs for A236761, there is no canonical definition to state claims against.
-/

/-! ## A236761.P8689547990601267609

`A233459(2*n+3)-A000007(A004018(n))`
-/

namespace A236761.P8689547990601267609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233459 (2 * n + 3) - A000007 (A004018 n).toNat

end

end A236761.P8689547990601267609

/-! ## A236761.P143635812164352103

`A233459(2*n+3)-A000120(A184616(n))`
-/

namespace A236761.P143635812164352103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233459 (2 * n + 3) - A000120 (A184616 n).toNat

end

end A236761.P143635812164352103

/-! ## A236761.P7555182275991800356

`A233459(2*n+3)-A003703(A233427(n+1))`
-/

namespace A236761.P7555182275991800356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233459 (2 * n + 3) - A003703 (A233427 (n + 1)).toNat

end

end A236761.P7555182275991800356

/-!
# A236762: Number of partitions of 3n into 3 parts with the middle part prime.

The programs for A236762, there is no canonical definition to state claims against.
-/

/-! ## A236762.P13315409599570864016

`A237669(n+1)-(A237264(n+1)+A236758(n+1))`
-/

namespace A236762.P13315409599570864016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237669 (n + 1) - (A237264 (n + 1) + A236758 (n + 1))

end

end A236762.P13315409599570864016

/-! ## A236762.P15693563398356972607

`lt[A118034(A000010(n+1)), A027144(2*n+5)]`
-/

namespace A236762.P15693563398356972607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118034 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236762.P15693563398356972607

/-! ## A236762.P5235237226976642209

`lt[A143695(A000010(n+1)), A268457(2*n+5)]`
-/

namespace A236762.P5235237226976642209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143695 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268457 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236762.P5235237226976642209

/-! ## A236762.P1362884383949508446

`lt[A127682(n+1)+A038575(n), A063375(n+1)]`
-/

namespace A236762.P1362884383949508446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (n + 1) + A038575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236762.P1362884383949508446

/-! ## A236762.P6000687788910737449

`eq[A347456(3*n+2), A353766(A133399(n))]+n`
-/

namespace A236762.P6000687788910737449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347456 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353766 (A133399 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n

end

end A236762.P6000687788910737449

/-!
# A236763: Numbers n such that n^4 - n +/ - 1 are twin primes.

The programs for A236763, there is no canonical definition to state claims against.
-/

/-! ## A236763.P16890283247248230846

`∩[A126424(n+1), A236761(n+1)]`
-/

namespace A236763.P16890283247248230846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236763.P16890283247248230846

/-!
# A236764: Numbers k such that k^3 +/ - k +/ - 1 are prime for all four possibilities.

The programs for A236764, there is no canonical definition to state claims against.
-/

/-! ## A236764.P14545603786843615212

`∩[A236524(n+1), A236526(n+1)]`
-/

namespace A236764.P14545603786843615212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236764.P14545603786843615212

/-!
# A236767: Numbers whose square is a fourth power plus a prime.

The programs for A236767, there is no canonical definition to state claims against.
-/

/-! ## A236767.P8419740470182149823

`1+A089001(n+1)²`
-/

namespace A236767.P8419740470182149823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A089001 (n + 1) ^ 2

end

end A236767.P8419740470182149823

/-! ## A236767.P6473044899627205175

`ceil(A090698(n+1)/2)`
-/

namespace A236767.P6473044899627205175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090698 (n + 1) : ℚ) / 2⌉

end

end A236767.P6473044899627205175

/-! ## A236767.P13435493936294273196

`record[(A090698(A322988(n+1))-1)/2+1]`
-/

namespace A236767.P13435493936294273196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090698 (A322988 (n + 1)).toNat - 1 : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236767.P13435493936294273196

/-! ## A236767.P8387886969789913943

`A090698(n+1)-A089001(n+1)*A089001(n+1)`
-/

namespace A236767.P8387886969789913943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1) - A089001 (n + 1) * A089001 (n + 1)

end

end A236767.P8387886969789913943

/-! ## A236767.P9166681197594590395

`A292589(A007918(n))+A089001(n+1)^2`
-/

namespace A236767.P9166681197594590395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292589 (A007918 n).toNat + A089001 (n + 1) ^ 2

end

end A236767.P9166681197594590395

/-! ## A236767.P3755715052564785364

`A000124(A008574(n+1))%2+A089001(n+1)^2`
-/

namespace A236767.P3755715052564785364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 (A008574 (n + 1)).toNat) 2 + A089001 (n + 1) ^ 2

end

end A236767.P3755715052564785364

/-! ## A236767.P10197382133976114403

`A002522(A089001(n+1))`
-/

namespace A236767.P10197382133976114403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A089001 (n + 1)).toNat

end

end A236767.P10197382133976114403

/-! ## A236767.P3583815875249588625

`ceil(p?[2*n²+1]/2)`
-/

namespace A236767.P3583815875249588625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉

end

end A236767.P3583815875249588625

/-! ## A236767.P5600247771948172815

`round(p?[2*n²+1]/2)`
-/

namespace A236767.P5600247771948172815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2)

end

end A236767.P5600247771948172815

/-! ## A236767.P7315685001454829146

`(p?[2*n²+1]+1)/2`
-/

namespace A236767.P7315685001454829146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 2

end

end A236767.P7315685001454829146

/-!
# A236768: A recurrence relation conditioned on the primality of the preceding terms.

The programs for A236768, there is no canonical definition to state claims against.
-/

/-! ## A236768.P16907850574043837017

`∏[A324672(A214231(n+1)-1)/a(n-1)+1]` with `a(0)=1`
-/

namespace A236768.P16907850574043837017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A324672 (A214231 (n + 1) - 1).toNat : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A236768.P16907850574043837017

/-! ## A236768.P3649814929356349266

`∑[A000045(n)*A033999(A317004(3*n+2))]+1`
-/

namespace A236768.P3649814929356349266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A033999 (A317004 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A236768.P3649814929356349266

/-!
# A236770: a(n) = n*(n + 1)*(3*n^2 + 3*n - 2)/8.

The programs for A236770, the canonical program `A236770.P11310342048859176280` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236770 has offset 0).

The definition of A236770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(3*n²+3*n-2)/8` (program `A236770.P5124091119801996136`, by `A236770.P5124091119801996136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236770.P5124091119801996136

`n*(n+1)*(3*n²+3*n-2)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A236770.P5124091119801996136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (((3 * n ^ 2 + 3 * n : ℤ) - 2 : ℚ) / 8))

end

end A236770.P5124091119801996136

namespace A236770

/-- `n*(n+1)*(3*n²+3*n-2)/8` -/
def P5124091119801996136.Spec : Prop :=
  ∀ n, P5124091119801996136.a n = (A236770 n : ℚ)

theorem P5124091119801996136.correct : P5124091119801996136.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A236770, Nat.add_sub_cancel, A236770.P5124091119801996136.a, A236770.P11310342048859176280.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A236770, Nat.add_sub_cancel, A236770.P5124091119801996136.a, A236770.P11310342048859176280.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A236770

/-! ## A236770.P11310342048859176280

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=51, a(4)=145`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A236770

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11310342048859176280.Spec : Prop :=
  ∀ n, P11310342048859176280.a n = A236770 n

theorem P11310342048859176280.correct : P11310342048859176280.Spec := by
  intro n
  simp only [A236770]

end A236770

/-! ## A236770.P14612966991360250850

`A000217(n)+9*A000332(n+2)`
-/

namespace A236770.P14612966991360250850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 9 * A000332 (n + 2)

end

end A236770.P14612966991360250850

namespace A236770

/-- `A000217(n)+9*A000332(n+2)` -/
def P14612966991360250850.Spec : Prop :=
  ∀ n, P14612966991360250850.a n = A236770 n

end A236770

/-! ## A236770.P10702596740441558203

`A000326(A000217(n))`
-/

namespace A236770.P10702596740441558203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A000217 n).toNat

end

end A236770.P10702596740441558203

namespace A236770

/-- `A000326(A000217(n))` -/
def P10702596740441558203.Spec : Prop :=
  ∀ n, P10702596740441558203.a n = A236770 n

end A236770

/-! ## A236770.P15569012202688667085

`C(∑[3*n], 2)/3`
-/

namespace A236770.P15569012202688667085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ) / 3

end

end A236770.P15569012202688667085

namespace A236770

/-- `C(∑[3*n], 2)/3` -/
def P15569012202688667085.Spec : Prop :=
  ∀ n, P15569012202688667085.a n = (A236770 n : ℚ)

end A236770

/-! ## A236770.P9439831812470350274

`C(∑[n], 2)+∑[n]²`
-/

namespace A236770.P9439831812470350274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A236770.P9439831812470350274

namespace A236770

/-- `C(∑[n], 2)+∑[n]²` -/
def P9439831812470350274.Spec : Prop :=
  ∀ n, (P9439831812470350274.a n : ℤ) = A236770 n

end A236770

/-! ## A236770.P10796421899959299187

`∑[∑[9*C(n, 2)]+n]`
-/

namespace A236770.P10796421899959299187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236770.P10796421899959299187

namespace A236770

/-- `∑[∑[9*C(n, 2)]+n]` -/
def P10796421899959299187.Spec : Prop :=
  ∀ n, (P10796421899959299187.a n : ℤ) = A236770 n

end A236770

/-! ## A236770.P5289656104268313187

`∑[A004188(n)]`
-/

namespace A236770.P5289656104268313187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236770.P5289656104268313187

namespace A236770

/-- `∑[A004188(n)]` -/
def P5289656104268313187.Spec : Prop :=
  ∀ n, P5289656104268313187.a n = A236770 n

end A236770

/-! ## A236770.P6119907863765398804

`A162673(n+1)/4`
-/

namespace A236770.P6119907863765398804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162673 (n + 1) : ℚ) / 4

end

end A236770.P6119907863765398804

namespace A236770

/-- `A162673(n+1)/4` -/
def P6119907863765398804.Spec : Prop :=
  ∀ n, P6119907863765398804.a n = (A236770 n : ℚ)

end A236770

/-! ## A236770.P5752349196536912104

`∑[A135503(n)]+∑[n]²`
-/

namespace A236770.P5752349196536912104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A236770.P5752349196536912104

namespace A236770

/-- `∑[A135503(n)]+∑[n]²` -/
def P5752349196536912104.Spec : Prop :=
  ∀ n, P5752349196536912104.a n = A236770 n

end A236770

/-! ## A236770.P15654324905223051612

`A050534(n+1)+∑[n]²`
-/

namespace A236770.P15654324905223051612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A236770.P15654324905223051612

namespace A236770

/-- `A050534(n+1)+∑[n]²` -/
def P15654324905223051612.Spec : Prop :=
  ∀ n, P15654324905223051612.a n = A236770 n

end A236770

/-! ## A236770.P353059490396929230

`(A297662(n+1)-∑[n])/2`
-/

namespace A236770.P353059490396929230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297662 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A236770.P353059490396929230

namespace A236770

/-- `(A297662(n+1)-∑[n])/2` -/
def P353059490396929230.Spec : Prop :=
  ∀ n, P353059490396929230.a n = (A236770 n : ℚ)

end A236770

/-! ## A236770.P12496774071389518002

`A163102(n)-A002817(n)`
-/

namespace A236770.P12496774071389518002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - A002817 n

end

end A236770.P12496774071389518002

namespace A236770

/-- `A163102(n)-A002817(n)` -/
def P12496774071389518002.Spec : Prop :=
  ∀ n, P12496774071389518002.a n = A236770 n

end A236770

/-! ## A236770.P7596276097261531230

`A071237(n)-A101357(n)`
-/

namespace A236770.P7596276097261531230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n - A101357 n

end

end A236770.P7596276097261531230

namespace A236770

/-- `A071237(n)-A101357(n)` -/
def P7596276097261531230.Spec : Prop :=
  ∀ n, P7596276097261531230.a n = A236770 n

end A236770

/-! ## A236770.P7549600215253325848

`A152041(n)-A110450(n)`
-/

namespace A236770.P7549600215253325848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152041 n - A110450 n

end

end A236770.P7549600215253325848

namespace A236770

/-- `A152041(n)-A110450(n)` -/
def P7549600215253325848.Spec : Prop :=
  ∀ n, P7549600215253325848.a n = A236770 n

end A236770

/-! ## A236770.P12678530924753873171

`A255499(n)-A086602(n)`
-/

namespace A236770.P12678530924753873171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n - A086602 n

end

end A236770.P12678530924753873171

namespace A236770

/-- `A255499(n)-A086602(n)` -/
def P12678530924753873171.Spec : Prop :=
  ∀ n, P12678530924753873171.a n = A236770 n

end A236770

/-! ## A236770.P3893750610854842731

`A368046(n)-A005582(n)`
-/

namespace A236770.P3893750610854842731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n - A005582 n

end

end A236770.P3893750610854842731

namespace A236770

/-- `A368046(n)-A005582(n)` -/
def P3893750610854842731.Spec : Prop :=
  ∀ n, P3893750610854842731.a n = A236770 n

end A236770

/-! ## A236770.P15255624006820523178

`A212090(n)-A390922(n)`
-/

namespace A236770.P15255624006820523178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212090 n - A390922 n

end

end A236770.P15255624006820523178

namespace A236770

/-- `A212090(n)-A390922(n)` -/
def P15255624006820523178.Spec : Prop :=
  ∀ n, P15255624006820523178.a n = A236770 n

end A236770

/-! ## A236770.P5034152736620741125

`2*A000537(n)-A002817(n)`
-/

namespace A236770.P5034152736620741125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000537 n - A002817 n

end

end A236770.P5034152736620741125

namespace A236770

/-- `2*A000537(n)-A002817(n)` -/
def P5034152736620741125.Spec : Prop :=
  ∀ n, P5034152736620741125.a n = A236770 n

end A236770

/-! ## A236770.P8769912616481581034

`n*A002411(n)-A050534(n)`
-/

namespace A236770.P8769912616481581034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002411 n - A050534 n

end

end A236770.P8769912616481581034

namespace A236770

/-- `n*A002411(n)-A050534(n)` -/
def P8769912616481581034.Spec : Prop :=
  ∀ n, P8769912616481581034.a n = A236770 n

end A236770

/-!
# A236771: a(n) = n + floor(n/2 + n^2/3).

The programs for A236771, the canonical program `A236771.P5236819447683916624` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236771 has offset 0).

The definition of A236771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236771.P5236819447683916624

`n+floor(n/2)+floor(n²/3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A236771

/-- `n+floor(n/2)+floor(n²/3)` -/
def P5236819447683916624.Spec : Prop :=
  ∀ n, P5236819447683916624.a n = A236771 n

theorem P5236819447683916624.correct : P5236819447683916624.Spec := by
  intro n
  simp only [A236771]

end A236771

/-! ## A236771.P11921442274857279959

`∑[∑[gcd(2, a(n-3))]-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A236771.P11921442274857279959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  Nat.gcd 2 (f2 (n - 3))

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236771.P11921442274857279959

namespace A236771

/-- `∑[∑[gcd(2, a(n-3))]-a(n-1)]` -/
def P11921442274857279959.Spec : Prop :=
  ∀ n, P11921442274857279959.a n = A236771 n

end A236771

/-! ## A236771.P15783697847795127437

`floor(A139576(n)/6)`
-/

namespace A236771.P15783697847795127437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139576 n : ℚ) / 6⌋

end

end A236771.P15783697847795127437

namespace A236771

/-- `floor(A139576(n)/6)` -/
def P15783697847795127437.Spec : Prop :=
  ∀ n, P15783697847795127437.a n = A236771 n

end A236771

/-! ## A236771.P2285112265010131467

`A238705(n+1)%A263511(n)`
-/

namespace A236771.P2285112265010131467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238705 (n + 1)) (A263511 n)

end

end A236771.P2285112265010131467

namespace A236771

/-- `A238705(n+1)%A263511(n)` -/
def P2285112265010131467.Spec : Prop :=
  ∀ n, P2285112265010131467.a n = A236771 n

end A236771

/-! ## A236771.P9922488148459772523

`floor(A056000(2*n)/6)`
-/

namespace A236771.P9922488148459772523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056000 (2 * n) : ℚ) / 6⌋

end

end A236771.P9922488148459772523

namespace A236771

/-- `floor(A056000(2*n)/6)` -/
def P9922488148459772523.Spec : Prop :=
  ∀ n, P9922488148459772523.a n = A236771 n

end A236771

/-! ## A236771.P10944397462477048142

`record[A325695(2*(n+1))-n]`
-/

namespace A236771.P10944397462477048142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (2 * (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236771.P10944397462477048142

namespace A236771

/-- `record[A325695(2*(n+1))-n]` -/
def P10944397462477048142.Spec : Prop :=
  ∀ n, P10944397462477048142.a n = A236771 n

end A236771

/-! ## A236771.P17742974305327230363

`A140106(A028310(3*n)+A008749(2*n))`
-/

namespace A236771.P17742974305327230363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A028310 (3 * n) + A008749 (2 * n)).toNat

end

end A236771.P17742974305327230363

namespace A236771

/-- `A140106(A028310(3*n)+A008749(2*n))` -/
def P17742974305327230363.Spec : Prop :=
  ∀ n, P17742974305327230363.a n = A236771 n

end A236771

/-!
# A236772: a(n) = floor( Sum_{i=1..n} n^i/i ).

The programs for A236772, there is no canonical definition to state claims against.
-/

/-! ## A236772.P6606431482077640275

`floor(A237872(n+1)/A237873(n+1))`
-/

namespace A236772.P6606431482077640275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A237872 (n + 1) : ℚ) / (A237873 (n + 1) : ℚ)⌋

end

end A236772.P6606431482077640275

/-!
# A236773: a(n) = n + floor( n^2/2 + n^3/3 ).

The programs for A236773, the canonical program `A236773.P6835659052425793981` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236773 has offset 0).

The definition of A236773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236773.P7603746588468727156

`A389582(n)+n`
-/

namespace A236773.P7603746588468727156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389582 n + (n : ℤ)

end

end A236773.P7603746588468727156

namespace A236773

/-- `A389582(n)+n` -/
def P7603746588468727156.Spec : Prop :=
  ∀ n, P7603746588468727156.a n = A236773 n

end A236773

/-! ## A236773.P14811220255896986430

`∑[char[A047248(n+2)]+n²]`
-/

namespace A236773.P14811220255896986430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236773.P14811220255896986430

namespace A236773

/-- `∑[char[A047248(n+2)]+n²]` -/
def P14811220255896986430.Spec : Prop :=
  ∀ n, (P14811220255896986430.a n : ℤ) = A236773 n

end A236773

/-! ## A236773.P6835659052425793981

`A272915(n)+A051925(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236773

/-- `A272915(n)+A051925(n)` -/
def P6835659052425793981.Spec : Prop :=
  ∀ n, P6835659052425793981.a n = A236773 n

theorem P6835659052425793981.correct : P6835659052425793981.Spec := by
  intro n
  simp only [A236773]

end A236773

/-! ## A236773.P11352233621703840079

`A145068(n+1)-A047306(n+1)`
-/

namespace A236773.P11352233621703840079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145068 (n + 1) - A047306 (n + 1)

end

end A236773.P11352233621703840079

namespace A236773

/-- `A145068(n+1)-A047306(n+1)` -/
def P11352233621703840079.Spec : Prop :=
  ∀ n, P11352233621703840079.a n = A236773 n

end A236773

/-! ## A236773.P9832385486758017029

`A114540(2*n)+∑[n²]`
-/

namespace A236773.P9832385486758017029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114540 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A236773.P9832385486758017029

namespace A236773

/-- `A114540(2*n)+∑[n²]` -/
def P9832385486758017029.Spec : Prop :=
  ∀ n, P9832385486758017029.a n = A236773 n

end A236773

/-! ## A236773.P15081606543634019046

`A002264(A047215(n))+A000330(n)`
-/

namespace A236773.P15081606543634019046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047215 n).toNat + A000330 n

end

end A236773.P15081606543634019046

namespace A236773

/-- `A002264(A047215(n))+A000330(n)` -/
def P15081606543634019046.Spec : Prop :=
  ∀ n, P15081606543634019046.a n = A236773 n

end A236773

/-!
# A236774: A236269(n) - A236313(n).

The programs for A236774, there is no canonical definition to state claims against.
-/

/-! ## A236774.P654398498114862094

`A236269(n+1)-A236313(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A236774.P654398498114862094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236269 (n + 1) - A236313 (n + 1)

end

end A236774.P654398498114862094

/-! ## A236774.P14692079896135613724

`Δ[A005487(n)-A005836(n+1)]`
-/

namespace A236774.P14692079896135613724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005487 n - A005836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236774.P14692079896135613724

/-! ## A236774.P4502725656659284697

`Δ[A033158(n+1)-A033159(n+1)]`
-/

namespace A236774.P4502725656659284697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033158 (n + 1) - A033159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236774.P4502725656659284697

/-! ## A236774.P14701523835946478159

`Δ[A033158(n+1)-A033162(n+1)]`
-/

namespace A236774.P14701523835946478159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033158 (n + 1) - A033162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236774.P14701523835946478159

/-! ## A236774.P12550446502919713919

`Δ[A033158(n+1)-A033164(n+1)]`
-/

namespace A236774.P12550446502919713919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033158 (n + 1) - A033164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236774.P12550446502919713919

/-! ## A236774.P14093777856370266522

`A005487(n+1)-(A236313(n+1)+A005487(n))`
-/

namespace A236774.P14093777856370266522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005487 (n + 1) - (A236313 (n + 1) + A005487 n)

end

end A236774.P14093777856370266522

/-! ## A236774.P4812780368522675450

`A003278(n+1)+A236269(n+1)-A003278(n+2)`
-/

namespace A236774.P4812780368522675450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (A236269 (n + 1) - A003278 (n + 2))

end

end A236774.P4812780368522675450

/-! ## A236774.P11032764254930793616

`A005836(n+1)+A236269(n+1)-A005836(n+2)`
-/

namespace A236774.P11032764254930793616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (A236269 (n + 1) - A005836 (n + 2))

end

end A236774.P11032764254930793616

/-! ## A236774.P673267579861339595

`A033158(n+2)-(A236313(n+1)+A033158(n+1))`
-/

namespace A236774.P673267579861339595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033158 (n + 2) - (A236313 (n + 1) + A033158 (n + 1))

end

end A236774.P673267579861339595

/-!
# A236775: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236775, there is no canonical definition to state claims against.
-/

/-! ## A236775.P5839170858280949920

`A236780(∑[n]+1)`
-/

namespace A236775.P5839170858280949920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236775.P5839170858280949920

/-! ## A236775.P9405843406920765032

`record[A236780(A072735(n)+1)]`
-/

namespace A236775.P9405843406920765032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (A072735 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236775.P9405843406920765032

/-! ## A236775.P4427507232226432228

`A236780(A000124(n))+char[15]`
-/

namespace A236775.P4427507232226432228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A236775.P4427507232226432228

/-! ## A236775.P17501673096419635064

`record[A010054(n)*A236780(n+1)]`
-/

namespace A236775.P17501673096419635064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236775.P17501673096419635064

/-! ## A236775.P290857784957692499

`record[A103451(n)*A236780(n+1)]`
-/

namespace A236775.P290857784957692499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236775.P290857784957692499

/-!
# A236776: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236776, there is no canonical definition to state claims against.
-/

/-! ## A236776.P14769313870469189436

`A236780(∑[n+1]+2)`
-/

namespace A236776.P14769313870469189436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236776.P14769313870469189436

/-! ## A236776.P972122341449409469

`record[A010054(n)*A236780(n+2)]`
-/

namespace A236776.P972122341449409469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236780 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236776.P972122341449409469

/-! ## A236776.P7987012308849455158

`record[A236780(n+2)/A202006(n+1)]`
-/

namespace A236776.P7987012308849455158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236780 (n + 2) : ℚ) / (A202006 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236776.P7987012308849455158

/-! ## A236776.P6645051607114657132

`record[A236780(A072735(n+2))]`
-/

namespace A236776.P6645051607114657132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (A072735 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236776.P6645051607114657132

/-! ## A236776.P4009592083351033613

`A133880(n)*A236780(A000096(n+1))`
-/

namespace A236776.P4009592083351033613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 n * A236780 (A000096 (n + 1)).toNat

end

end A236776.P4009592083351033613

/-!
# A236777: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236777, there is no canonical definition to state claims against.
-/

/-! ## A236777.P1710638610528858370

`A236780(∑[n+2]+4)`
-/

namespace A236777.P1710638610528858370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236777.P1710638610528858370

/-! ## A236777.P10966338639147999704

`record[A236780(n+4)/A038291(n)]`
-/

namespace A236777.P10966338639147999704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236780 (n + 4) : ℚ) / (A038291 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236777.P10966338639147999704

/-! ## A236777.P14528171341777002841

`A236780(A167614(n+1))+A025466(n)`
-/

namespace A236777.P14528171341777002841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (A167614 (n + 1)).toNat + A025466 n

end

end A236777.P14528171341777002841

/-! ## A236777.P15963417991206565930

`A236780(A167614(n+1))+A025469(n)`
-/

namespace A236777.P15963417991206565930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (A167614 (n + 1)).toNat + A025469 n

end

end A236777.P15963417991206565930

/-! ## A236777.P2138075499999799945

`A236780(A167614(n+1))+A107846(n)`
-/

namespace A236777.P2138075499999799945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (A167614 (n + 1)).toNat + A107846 n

end

end A236777.P2138075499999799945

/-!
# A236778: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236778, there is no canonical definition to state claims against.
-/

/-! ## A236778.P997275672048032850

`A236780(∑[n+3]+7)`
-/

namespace A236778.P997275672048032850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236778.P997275672048032850

/-!
# A236779: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236779, there is no canonical definition to state claims against.
-/

/-! ## A236779.P16442901784061403725

`A236780(A374005(n+1))`
-/

namespace A236779.P16442901784061403725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (A374005 (n + 1)).toNat

end

end A236779.P16442901784061403725

/-! ## A236779.P8559250067614286212

`A236780(A167499(n+3))`
-/

namespace A236779.P8559250067614286212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (A167499 (n + 3)).toNat

end

end A236779.P8559250067614286212

/-! ## A236779.P5168678512285751545

`A236780(A155212(n)+13)`
-/

namespace A236779.P5168678512285751545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236780 (A155212 n + 13).toNat

end

end A236779.P5168678512285751545

/-!
# A236781: Number of (n+1) X (n+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2 X 2 subblock equal.

The programs for A236781, there is no canonical definition to state claims against.
-/

/-! ## A236781.P2985410675685238095

`A236789(∑[4*n]+1)`
-/

namespace A236781.P2985410675685238095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236781.P2985410675685238095

/-! ## A236781.P6655131412157444425

`record[A003982(n)*A236789(n+1)]`
-/

namespace A236781.P6655131412157444425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A236789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236781.P6655131412157444425

/-! ## A236781.P5066579924307978838

`record[gcd(A049581(n), A236789(n+1))]`
-/

namespace A236781.P5066579924307978838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A236789 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236781.P5066579924307978838

/-! ## A236781.P17885255436277687584

`A236789(A001844(n))+A025442(n)`
-/

namespace A236781.P17885255436277687584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A001844 n).toNat + A025442 n

end

end A236781.P17885255436277687584

/-! ## A236781.P12294654225346182252

`A236789(A001844(n))+A064459(n)`
-/

namespace A236781.P12294654225346182252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A001844 n).toNat + A064459 n

end

end A236781.P12294654225346182252

/-!
# A236782: Number of (n+1)X(1+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236782, there is no canonical definition to state claims against.
-/

/-! ## A236782.P3249026643529030387

`A236789(∑[n]+1)`
-/

namespace A236782.P3249026643529030387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236782.P3249026643529030387

/-! ## A236782.P13054849837377130834

`A236789(A000124(n))+char[43]`
-/

namespace A236782.P13054849837377130834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A236782.P13054849837377130834

/-! ## A236782.P392143713276394807

`record[A010054(n)*A236789(n+1)]`
-/

namespace A236782.P392143713276394807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236782.P392143713276394807

/-! ## A236782.P15319835292740160465

`record[A236789(n+1)/A181543(n)]`
-/

namespace A236782.P15319835292740160465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236789 (n + 1) : ℚ) / (A181543 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236782.P15319835292740160465

/-! ## A236782.P12272836654025042954

`record[gcd(A002262(n), A236789(n+1))]`
-/

namespace A236782.P12272836654025042954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236789 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236782.P12272836654025042954

/-!
# A236783: Number of (n+1)X(2+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236783, there is no canonical definition to state claims against.
-/

/-! ## A236783.P17226122734544737645

`A236789(∑[n+1]+2)`
-/

namespace A236783.P17226122734544737645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236783.P17226122734544737645

/-! ## A236783.P4243118679900108269

`record[gcd(A002262(n), A236789(n+2))]`
-/

namespace A236783.P4243118679900108269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236789 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236783.P4243118679900108269

/-! ## A236783.P6105522757438034906

`A236789(A000096(n)+3)%A236776(n+1)`
-/

namespace A236783.P6105522757438034906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236789 (A000096 n + 3).toNat) (A236776 (n + 1))

end

end A236783.P6105522757438034906

/-! ## A236783.P1246474733304204542

`record[A236789(A117142(n+2))]`
-/

namespace A236783.P1246474733304204542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236783.P1246474733304204542

/-! ## A236783.P7412595429109698128

`record[A236789(Δ[A003453(n+5)])]`
-/

namespace A236783.P7412595429109698128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236783.P7412595429109698128

/-!
# A236784: Number of (n+1)X(3+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236784, there is no canonical definition to state claims against.
-/

/-! ## A236784.P8291451381796397331

`A236789(∑[n+2]+4)`
-/

namespace A236784.P8291451381796397331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236784.P8291451381796397331

/-! ## A236784.P17604683862546031416

`A236789(A167614(n+1))+A185284(n)`
-/

namespace A236784.P17604683862546031416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A167614 (n + 1)).toNat + A185284 n

end

end A236784.P17604683862546031416

/-! ## A236784.P3507501869299331595

`lcm(A033999(n), A236789(A167614(n+1)))`
-/

namespace A236784.P3507501869299331595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A236789 (A167614 (n + 1)).toNat)

end

end A236784.P3507501869299331595

/-! ## A236784.P17962912482728004359

`or(A000038(n), A236789(A167614(n+1)))`
-/

namespace A236784.P17962912482728004359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A236789 (A167614 (n + 1)).toNat)

end

end A236784.P17962912482728004359

/-! ## A236784.P12739876561378476667

`A236789(A167614(n+1))+A034522(n+1)`
-/

namespace A236784.P12739876561378476667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A167614 (n + 1)).toNat + A034522 (n + 1)

end

end A236784.P12739876561378476667

/-!
# A236785: Number of (n+1)X(4+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236785, there is no canonical definition to state claims against.
-/

/-! ## A236785.P14188927734408037944

`A236789(A374004(n+1))`
-/

namespace A236785.P14188927734408037944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A374004 (n + 1)).toNat

end

end A236785.P14188927734408037944

/-! ## A236785.P12655318291475905085

`A236789(A052905(n)+9)`
-/

namespace A236785.P12655318291475905085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A052905 n + 9).toNat

end

end A236785.P12655318291475905085

/-! ## A236785.P4475428949039186821

`A236789(A055999(n)+10)`
-/

namespace A236785.P4475428949039186821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A055999 n + 10).toNat

end

end A236785.P4475428949039186821

/-! ## A236785.P15904828100024249136

`A236789(A167614(n+2)+1)`
-/

namespace A236785.P15904828100024249136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A167614 (n + 2) + 1).toNat

end

end A236785.P15904828100024249136

/-! ## A236785.P242334839438593567

`A236789(A055998(n+1)+7)`
-/

namespace A236785.P242334839438593567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A055998 (n + 1) + 7).toNat

end

end A236785.P242334839438593567

/-!
# A236786: Number of (n+1) X (5+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2 X 2 subblock equal.

The programs for A236786, there is no canonical definition to state claims against.
-/

/-! ## A236786.P206962660866071152

`A236789(A374005(n+1))`
-/

namespace A236786.P206962660866071152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A374005 (n + 1)).toNat

end

end A236786.P206962660866071152

/-! ## A236786.P5672695142626459152

`A236789(A155212(n)+13)`
-/

namespace A236786.P5672695142626459152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A155212 n + 13).toNat

end

end A236786.P5672695142626459152

/-! ## A236786.P16347775972741334206

`A236789(eq[7, A066657(n)])`
-/

namespace A236786.P16347775972741334206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236786.P16347775972741334206

/-! ## A236786.P2444570316114719262

`A236789(A167614(n+3)+2)`
-/

namespace A236786.P2444570316114719262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A167614 (n + 3) + 2).toNat

end

end A236786.P2444570316114719262

/-! ## A236786.P6484285700938373164

`A236789(A051936(n+4)+14)`
-/

namespace A236786.P6484285700938373164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A051936 (n + 4) + 14).toNat

end

end A236786.P6484285700938373164

/-!
# A236787: Number of (n+1)X(6+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236787, there is no canonical definition to state claims against.
-/

/-! ## A236787.P11538189765013244253

`A236789(A374007(n+1))`
-/

namespace A236787.P11538189765013244253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A374007 (n + 1)).toNat

end

end A236787.P11538189765013244253

/-! ## A236787.P11887465892864982870

`A236789(eq[7, A131818(n+1)])`
-/

namespace A236787.P11887465892864982870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236787.P11887465892864982870

/-! ## A236787.P7724481873232016472

`A236789(eq[3, A219347(n)])`
-/

namespace A236787.P7724481873232016472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236787.P7724481873232016472

/-! ## A236787.P7105340137203926948

`A236789(eq[5, A193592(n)])`
-/

namespace A236787.P7105340137203926948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236787.P7105340137203926948

/-! ## A236787.P7964722316574325980

`A236789(eq[6, A200370(n+1)])`
-/

namespace A236787.P7964722316574325980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236787.P7964722316574325980

/-!
# A236788: Number of (n+1)X(7+1) 0..2 arrays with the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236788, there is no canonical definition to state claims against.
-/

/-! ## A236788.P10358869931206693843

`A236789(A374008(n+1))`
-/

namespace A236788.P10358869931206693843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A374008 (n + 1)).toNat

end

end A236788.P10358869931206693843

/-! ## A236788.P10468882819359813552

`A236789(eq[11, A066657(n)])`
-/

namespace A236788.P10468882819359813552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236788.P10468882819359813552

/-! ## A236788.P1126388625417558868

`A236789(A000124(n+6)+6)`
-/

namespace A236788.P1126388625417558868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (A000124 (n + 6) + 6).toNat

end

end A236788.P1126388625417558868

/-! ## A236788.P1809889212928942852

`A236789(eq[8, A131818(n+1)])`
-/

namespace A236788.P1809889212928942852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236788.P1809889212928942852

/-! ## A236788.P2038874545192633817

`A236789(eq[4, A219347(n)])`
-/

namespace A236788.P2038874545192633817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236788.P2038874545192633817

/-!
# A236790: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236790, there is no canonical definition to state claims against.
-/

/-! ## A236790.P15697485362611740468

`A236798(∑[4*n]+1)`
-/

namespace A236790.P15697485362611740468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236790.P15697485362611740468

/-! ## A236790.P11937075354628167154

`or(1, A236798(A001844(n)))`
-/

namespace A236790.P11937075354628167154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236798 (A001844 n).toNat)

end

end A236790.P11937075354628167154

/-! ## A236790.P17652856132084564242

`record[gcd(A114327(n), A236798(n+1))]`
-/

namespace A236790.P17652856132084564242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A236798 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236790.P17652856132084564242

/-! ## A236790.P6188562859736712391

`record[gcd(A053615(n), A236798(2*n+1))]`
-/

namespace A236790.P6188562859736712391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053615 n) (A236798 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236790.P6188562859736712391

/-! ## A236790.P3921373579413243509

`A236798(A001844(n))+A025442(n)`
-/

namespace A236790.P3921373579413243509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A001844 n).toNat + A025442 n

end

end A236790.P3921373579413243509

/-!
# A236791: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236791, there is no canonical definition to state claims against.
-/

/-! ## A236791.P17738284994670630515

`A236798(∑[n]+1)`
-/

namespace A236791.P17738284994670630515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236791.P17738284994670630515

/-! ## A236791.P10092128513491499757

`record[A010054(n)*A236798(n+1)]`
-/

namespace A236791.P10092128513491499757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236791.P10092128513491499757

/-! ## A236791.P17523970504917697627

`record[A103451(n)*A236798(n+1)]`
-/

namespace A236791.P17523970504917697627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236791.P17523970504917697627

/-! ## A236791.P1061851332578558391

`record[root(A236798(n+1), A059268(n))]`
-/

namespace A236791.P1061851332578558391
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236798 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236791.P1061851332578558391

/-! ## A236791.P10696929071873181339

`record[root(A236798(n+1), A208341(n))]`
-/

namespace A236791.P10696929071873181339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236798 (n + 1) : ℝ) ^ (1 / (A208341 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236791.P10696929071873181339

/-!
# A236792: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236792, there is no canonical definition to state claims against.
-/

/-! ## A236792.P3325592092690325078

`A236798(∑[n+1]+2)`
-/

namespace A236792.P3325592092690325078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236792.P3325592092690325078

/-! ## A236792.P1808353085458082524

`record[A236798(A286235(n+1)+1)]`
-/

namespace A236792.P1808353085458082524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236792.P1808353085458082524

/-! ## A236792.P16642891607323964862

`record[A010054(n)*A236798(n+2)]`
-/

namespace A236792.P16642891607323964862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236798 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236792.P16642891607323964862

/-! ## A236792.P691155948585379328

`record[root(A236798(n+2), A059268(n))]`
-/

namespace A236792.P691155948585379328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236798 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236792.P691155948585379328

/-! ## A236792.P2154571901594240023

`record[root(A236798(n+2), A208341(n))]`
-/

namespace A236792.P2154571901594240023
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236798 (n + 2) : ℝ) ^ (1 / (A208341 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236792.P2154571901594240023

/-!
# A236793: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236793, there is no canonical definition to state claims against.
-/

/-! ## A236793.P7618279460974736109

`A236798(∑[n+2]+4)`
-/

namespace A236793.P7618279460974736109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236793.P7618279460974736109

/-! ## A236793.P11719226443499205445

`or(1, A236798(A167614(n+1)))`
-/

namespace A236793.P11719226443499205445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236798 (A167614 (n + 1)).toNat)

end

end A236793.P11719226443499205445

/-! ## A236793.P14031821520789112056

`A015366(n)*A236798(A167614(n+1))`
-/

namespace A236793.P14031821520789112056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015366 n * A236798 (A167614 (n + 1)).toNat

end

end A236793.P14031821520789112056

/-! ## A236793.P11484511631480362184

`lcm(A033999(n), A236798(A167614(n+1)))`
-/

namespace A236793.P11484511631480362184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A236798 (A167614 (n + 1)).toNat)

end

end A236793.P11484511631480362184

/-! ## A236793.P15712779470795264447

`A236798(A167614(n+1))%A236726(n+1)`
-/

namespace A236793.P15712779470795264447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236798 (A167614 (n + 1)).toNat) (A236726 (n + 1))

end

end A236793.P15712779470795264447

/-!
# A236794: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236794, there is no canonical definition to state claims against.
-/

/-! ## A236794.P7465366564732652735

`A236798(A374004(n+1))`
-/

namespace A236794.P7465366564732652735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A374004 (n + 1)).toNat

end

end A236794.P7465366564732652735

/-! ## A236794.P270386584282230565

`A236798(A141214(n)+7)`
-/

namespace A236794.P270386584282230565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A141214 n + 7).toNat

end

end A236794.P270386584282230565

/-! ## A236794.P11056432677908459888

`A236798(A167614(n+2)+1)`
-/

namespace A236794.P11056432677908459888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A167614 (n + 2) + 1).toNat

end

end A236794.P11056432677908459888

/-! ## A236794.P576010000438399121

`A236798(A167499(n+2)-1)`
-/

namespace A236794.P576010000438399121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A167499 (n + 2) - 1).toNat

end

end A236794.P576010000438399121

/-! ## A236794.P11471103682488448205

`A236798(Δ[A023545(n+1)-n²])`
-/

namespace A236794.P11471103682488448205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (f1 (n + 1) - f1 n).toNat

end

end A236794.P11471103682488448205

/-!
# A236795: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236795, there is no canonical definition to state claims against.
-/

/-! ## A236795.P13781870151287024661

`A236798(A374005(n+1))`
-/

namespace A236795.P13781870151287024661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A374005 (n + 1)).toNat

end

end A236795.P13781870151287024661

/-! ## A236795.P16273953423858106597

`A236798(A155212(n)+13)`
-/

namespace A236795.P16273953423858106597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A155212 n + 13).toNat

end

end A236795.P16273953423858106597

/-! ## A236795.P18215401336739403539

`A236798(eq[6, A131818(n+1)])`
-/

namespace A236795.P18215401336739403539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236795.P18215401336739403539

/-! ## A236795.P10821335558612662680

`A236798(eq[4, A193592(n)])`
-/

namespace A236795.P10821335558612662680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236795.P10821335558612662680

/-! ## A236795.P3489553832253081141

`A236798(Δ[A023545(n+1)])`
-/

namespace A236795.P3489553832253081141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (f1 (n + 1) - f1 n).toNat

end

end A236795.P3489553832253081141

/-!
# A236796: Number of (n+1) X (6+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock equal.

The programs for A236796, there is no canonical definition to state claims against.
-/

/-! ## A236796.P6139945387027243515

`A236798(A374007(n+1))`
-/

namespace A236796.P6139945387027243515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A374007 (n + 1)).toNat

end

end A236796.P6139945387027243515

/-! ## A236796.P12925391748929231011

`A236798(A000124(n+5)+5)`
-/

namespace A236796.P12925391748929231011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A000124 (n + 5) + 5).toNat

end

end A236796.P12925391748929231011

/-! ## A236796.P17376901386234735094

`A236798(eq[7, A131818(n+1)])`
-/

namespace A236796.P17376901386234735094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236796.P17376901386234735094

/-! ## A236796.P17574280427776972758

`A236798(eq[3, A219347(n)])`
-/

namespace A236796.P17574280427776972758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236796.P17574280427776972758

/-! ## A236796.P24034191672900143

`A236798(eq[5, A193592(n)])`
-/

namespace A236796.P24034191672900143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236796.P24034191672900143

/-!
# A236797: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236797, there is no canonical definition to state claims against.
-/

/-! ## A236797.P18150829916954125845

`A236798(A374008(n+1))`
-/

namespace A236797.P18150829916954125845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (A374008 (n + 1)).toNat

end

end A236797.P18150829916954125845

/-! ## A236797.P14424091098706625205

`A236798(eq[11, A066657(n)])`
-/

namespace A236797.P14424091098706625205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236797.P14424091098706625205

/-! ## A236797.P14990944857108308812

`A236798(eq[8, A131818(n+1)])`
-/

namespace A236797.P14990944857108308812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236797.P14990944857108308812

/-! ## A236797.P1262272744711093155

`A236798(eq[4, A219347(n)])`
-/

namespace A236797.P1262272744711093155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236797.P1262272744711093155

/-! ## A236797.P17297711661411063240

`A236798(eq[6, A193592(n)])`
-/

namespace A236797.P17297711661411063240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236797.P17297711661411063240

