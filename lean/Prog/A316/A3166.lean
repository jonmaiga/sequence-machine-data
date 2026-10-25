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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
# A316602: Positive determinant values assumed by performing all permutations of entries in the 3 X 3 matrix of A316601.

The programs for A316602, there is no canonical definition to state claims against.
-/

/-! ## A316602.P16768379118226868332

`A066011(n+8)+xor(n, floor(n/2))²`
-/

namespace A316602.P16768379118226868332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066011 (n + 8) + Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ ^ 2

end

end A316602.P16768379118226868332

/-!
# A316603: Double prime times.

The programs for A316603, there is no canonical definition to state claims against.
-/

/-! ## A316603.P9540265434368356101

`A000040(lt[A300812(2*(n+2)), A030398(2*n+1)])`
-/

namespace A316603.P9540265434368356101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300812 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030398 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316603.P9540265434368356101

/-!
# A316611: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316611, there is no canonical definition to state claims against.
-/

/-! ## A316611.P7303350292078706873

`A316615(∑[4*n]+1)`
-/

namespace A316611.P7303350292078706873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316611.P7303350292078706873

/-! ## A316611.P17176019626849998237

`record[A316615(Δ[A235355(n)])]`
-/

namespace A316611.P17176019626849998237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316611.P17176019626849998237

/-! ## A316611.P7675463356711123842

`record[A316615(A330613(n+1))]`
-/

namespace A316611.P7675463356711123842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316611.P7675463356711123842

/-! ## A316611.P18435184934158099287

`A316615(A001844(n))+char[13]`
-/

namespace A316611.P18435184934158099287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316611.P18435184934158099287

/-! ## A316611.P9182632808318961017

`record[A003982(n)*A316615(n+1)]`
-/

namespace A316611.P9182632808318961017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316611.P9182632808318961017

/-!
# A316612: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316612, there is no canonical definition to state claims against.
-/

/-! ## A316612.P13226559648036687089

`A316615(C(n+6, 2)-n)`
-/

namespace A316612.P13226559648036687089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (Nat.choose (n + 6) 2 - n)

end

end A316612.P13226559648036687089

/-! ## A316612.P5347958315495142327

`A316615(A155212(n)+13)`
-/

namespace A316612.P5347958315495142327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A155212 n + 13).toNat

end

end A316612.P5347958315495142327

/-! ## A316612.P10970511084879480901

`A316615(A056000(n)+15)`
-/

namespace A316612.P10970511084879480901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A056000 n + 15).toNat

end

end A316612.P10970511084879480901

/-! ## A316612.P2209280263820875731

`A316615(eq[7, A066657(n)])`
-/

namespace A316612.P2209280263820875731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316612.P2209280263820875731

/-! ## A316612.P12408552098244224213

`A316615(A000124(n+4)+4)`
-/

namespace A316612.P12408552098244224213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A000124 (n + 4) + 4).toNat

end

end A316612.P12408552098244224213

/-!
# A316613: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316613, there is no canonical definition to state claims against.
-/

/-! ## A316613.P13053622119295788251

`A316615(∑[n+5]+16)`
-/

namespace A316613.P13053622119295788251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A316613.P13053622119295788251

/-! ## A316613.P10060029296755667105

`A316615(A046691(n+3)+10)+char[34]`
-/

namespace A316613.P10060029296755667105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A046691 (n + 3) + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316613.P10060029296755667105

/-! ## A316613.P15734057122602792185

`A014963(6*(n+1))*A316615(A046691(n+3)+10)`
-/

namespace A316613.P15734057122602792185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A316615 (A046691 (n + 3) + 10).toNat

end

end A316613.P15734057122602792185

/-! ## A316613.P15154743041692851168

`gcd(2, A000040(n+2))*A316615(A046691(n+3)+10)`
-/

namespace A316613.P15154743041692851168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A316615 (A046691 (n + 3) + 10).toNat

end

end A316613.P15154743041692851168

/-! ## A316613.P180574362732961037

`A000041(C(2, n+2))*A316615(A046691(n+3)+10)`
-/

namespace A316613.P180574362732961037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A316615 (A046691 (n + 3) + 10).toNat

end

end A316613.P180574362732961037

/-!
# A316614: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316614, there is no canonical definition to state claims against.
-/

/-! ## A316614.P12910214125013855406

`A316615(A056119(n)+28)`
-/

namespace A316614.P12910214125013855406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A056119 n + 28).toNat

end

end A316614.P12910214125013855406

/-! ## A316614.P8425201458068230757

`A316615(A000124(n+6)+6)`
-/

namespace A316614.P8425201458068230757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A000124 (n + 6) + 6).toNat

end

end A316614.P8425201458068230757

/-! ## A316614.P2727292828682716622

`A316615(A000096(n+5)+8)`
-/

namespace A316614.P2727292828682716622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A000096 (n + 5) + 8).toNat

end

end A316614.P2727292828682716622

/-! ## A316614.P7809753339382680966

`A316615(A000217(n+6)+7)`
-/

namespace A316614.P7809753339382680966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A000217 (n + 6) + 7).toNat

end

end A316614.P7809753339382680966

/-! ## A316614.P16306901153719576259

`A316615(A052905(n+3)+12)`
-/

namespace A316614.P16306901153719576259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316615 (A052905 (n + 3) + 12).toNat

end

end A316614.P16306901153719576259

/-!
# A316616: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316616, there is no canonical definition to state claims against.
-/

/-! ## A316616.P14333497885158917767

`A316620(∑[4*n]+1)`
-/

namespace A316616.P14333497885158917767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316616.P14333497885158917767

/-! ## A316616.P13766882031802233102

`and(-1, A316620(A001844(n)))`
-/

namespace A316616.P13766882031802233102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316620 (A001844 n).toNat)

end

end A316616.P13766882031802233102

/-! ## A316616.P11171105579265454104

`record[A316620(A330613(n+1))]`
-/

namespace A316616.P11171105579265454104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316616.P11171105579265454104

/-! ## A316616.P3465552027519657566

`record[A003982(n)*A316620(n+1)]`
-/

namespace A316616.P3465552027519657566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316616.P3465552027519657566

/-! ## A316616.P11340595492726266970

`record[A214505(n)*A316620(n+1)]`
-/

namespace A316616.P11340595492726266970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A316620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316616.P11340595492726266970

/-!
# A316617: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316617, there is no canonical definition to state claims against.
-/

/-! ## A316617.P13002948446133706684

`A316620(∑[n+4]+11)`
-/

namespace A316617.P13002948446133706684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A316617.P13002948446133706684

/-! ## A316617.P5391202184541614984

`A316620(A155212(n)+13)+char[19]`
-/

namespace A316617.P5391202184541614984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (A155212 n + 13).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316617.P5391202184541614984

/-! ## A316617.P5839601905355334391

`A316620(A155212(n)+13)%A000108(n+4)`
-/

namespace A316617.P5839601905355334391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316620 (A155212 n + 13).toNat) (A000108 (n + 4))

end

end A316617.P5839601905355334391

/-! ## A316617.P3635358943503621169

`A000041(C(n, n²))*A316620(A155212(n)+13)`
-/

namespace A316617.P3635358943503621169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A316620 (A155212 n + 13).toNat

end

end A316617.P3635358943503621169

/-! ## A316617.P16953090505031776219

`A007318(C(n, 2))*A316620(A000096(n+3)+6)`
-/

namespace A316617.P16953090505031776219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A316620 (A000096 (n + 3) + 6).toNat

end

end A316617.P16953090505031776219

/-!
# A316618: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316618, there is no canonical definition to state claims against.
-/

/-! ## A316618.P15033234928801163203

`A316620(∑[n+5]+16)`
-/

namespace A316618.P15033234928801163203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A316618.P15033234928801163203

/-! ## A316618.P1395283493676822432

`A316620(A374007(n+1))+A025439(n)`
-/

namespace A316618.P1395283493676822432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (A374007 (n + 1)).toNat + A025439 n

end

end A316618.P1395283493676822432

/-! ## A316618.P11059188759213536013

`A033999(2*n)*A316620(A374007(n+1))`
-/

namespace A316618.P11059188759213536013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A316620 (A374007 (n + 1)).toNat

end

end A316618.P11059188759213536013

/-! ## A316618.P10036329448953284454

`A316620(A374007(n+1))%A037150(n+3)`
-/

namespace A316618.P10036329448953284454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316620 (A374007 (n + 1)).toNat) (A037150 (n + 3))

end

end A316618.P10036329448953284454

/-! ## A316618.P5900121305423615432

`A316620(A052905(n+3))+A065718(n)`
-/

namespace A316618.P5900121305423615432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (A052905 (n + 3)).toNat + A065718 n

end

end A316618.P5900121305423615432

/-!
# A316619: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316619, there is no canonical definition to state claims against.
-/

/-! ## A316619.P8476638419653607679

`A316620(A374008(n+1))`
-/

namespace A316619.P8476638419653607679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (A374008 (n + 1)).toNat

end

end A316619.P8476638419653607679

/-! ## A316619.P6066325147147884877

`A316620(A167487(n+5))`
-/

namespace A316619.P6066325147147884877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (A167487 (n + 5)).toNat

end

end A316619.P6066325147147884877

/-! ## A316619.P13403702588530353292

`A316620(A302537(n)+27)`
-/

namespace A316619.P13403702588530353292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (A302537 n + 27).toNat

end

end A316619.P13403702588530353292

/-! ## A316619.P16005561838873021701

`A316620(A056119(n)+28)`
-/

namespace A316619.P16005561838873021701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (A056119 n + 28).toNat

end

end A316619.P16005561838873021701

/-! ## A316619.P11804674154022807481

`A316620(eq[11, A066657(n)])`
-/

namespace A316619.P11804674154022807481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316619.P11804674154022807481

/-!
# A316621: Numbers of the form x^2 + 9*x*y + y^2, 0 <= x <= y.

The programs for A316621, there is no canonical definition to state claims against.
-/

/-! ## A316621.P8176466537639951199

`eq[char[n²], A191607(∑{d}[n+1, #])]`
-/

namespace A316621.P8176466537639951199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191607 (∑ d ∈ Nat.divisors (f4 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A316621.P8176466537639951199

/-! ## A316621.P11463163631647353451

`or(A117570(n+1), A180160(A240506(n)))`
-/

namespace A316621.P11463163631647353451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117570 (n + 1)) (A180160 (A240506 n).toNat)

end

end A316621.P11463163631647353451

/-! ## A316621.P1852633479872302080

`∩[A010399(n+1), A010438(n+1)]`
-/

namespace A316621.P1852633479872302080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316621.P1852633479872302080

/-! ## A316621.P8499313634108428054

`eq[A039655(3*(n+1)), A325227(2*n+1)]`
-/

namespace A316621.P8499313634108428054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039655 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325227 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316621.P8499313634108428054

/-!
# A316622: Array read by antidiagonals: T(n,k) is the order of the group GL(n,Z_k).

The programs for A316622, there is no canonical definition to state claims against.
-/

/-! ## A316622.P16621720777419389878

`A077197(A226234(n))`
-/

namespace A316622.P16621720777419389878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077197 (A226234 n).toNat

end

end A316622.P16621720777419389878

/-! ## A316622.P626432540390437339

`A137316(A228832(n))`
-/

namespace A316622.P626432540390437339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137316 (A228832 n).toNat

end

end A316622.P626432540390437339

/-! ## A316622.P3639692072626911944

`A360571(A172288(n))`
-/

namespace A316622.P3639692072626911944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360571 (A172288 n).toNat

end

end A316622.P3639692072626911944

/-! ## A316622.P15439689317793615419

`A329043(A283587(n))`
-/

namespace A316622.P15439689317793615419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (A283587 n).toNat

end

end A316622.P15439689317793615419

/-! ## A316622.P3633802388587099415

`A274879(A381594(n))`
-/

namespace A316622.P3633802388587099415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274879 (A381594 n).toNat

end

end A316622.P3633802388587099415

/-!
# A316624: Number of balanced p-trees with n leaves.

The programs for A316624, there is no canonical definition to state claims against.
-/

/-! ## A316624.P9473023497969059647

`A227083(A309864(n))+A120803(n+1)`
-/

namespace A316624.P9473023497969059647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227083 (A309864 n).toNat + A120803 (n + 1)

end

end A316624.P9473023497969059647

/-! ## A316624.P4151375628895324268

`A358140(A120803(n+1)%A096763(n+3))`
-/

namespace A316624.P4151375628895324268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358140 (Int.tmod (A120803 (n + 1)) (A096763 (n + 3))).toNat

end

end A316624.P4151375628895324268

/-!
# A316625: Terms in A259663, in ascending order.

The programs for A316625, there is no canonical definition to state claims against.
-/

/-! ## A316625.P364631337781570175

`eq[1, char[A259663(n+2)]]`
-/

namespace A316625.P364631337781570175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259663 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316625.P364631337781570175

/-! ## A316625.P5431933890474869683

`lt[A010893(n), char[A259663(n+2)]]`
-/

namespace A316625.P5431933890474869683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 (n + 13)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259663 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A316625.P5431933890474869683

/-! ## A316625.P14927088194371697740

`lt[A294266(A095114(n+1)), A007814(n+1)]`
-/

namespace A316625.P14927088194371697740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294266 (A095114 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316625.P14927088194371697740

/-! ## A316625.P14515165745094511018

`∑[A048106(A006138(n))]`
-/

namespace A316625.P14515165745094511018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048106 (A006138 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316625.P14515165745094511018

/-! ## A316625.P3317423128628288568

`∑[A348733(A273425(n)²)]`
-/

namespace A316625.P3317423128628288568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (A273425 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316625.P3317423128628288568

/-!
# A316626: a(1)=a(2)=a(3)=1; a(n) = a(n-2*a(n-1))+a(n-1-2*a(n-2)) for n > 3.

The programs for A316626, the canonical program `A316626.P3257324240347810708` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316626 has offset 1).

The definition of A316626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2*a(n-1))+a(n-1-2*a(n-2))` (program `A316626.P3257324240347810708`, by `A316626.P3257324240347810708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316626.P3257324240347810708

`a(n-2*a(n-1))+a(n-1-2*a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A316626

/-- `a(n-2*a(n-1))+a(n-1-2*a(n-2))` -/
def P3257324240347810708.Spec : Prop :=
  ∀ n, (P3257324240347810708.a n : ℤ) = A316626 (n + 1)

theorem P3257324240347810708.correct : P3257324240347810708.Spec := by
  intro n
  simp only [A316626, Nat.add_sub_cancel]

end A316626

/-! ## A316626.P14722190449443072807

`∑[char[a(n-1)+val(n, 2)+3]]` with `a(0)=0`
-/

namespace A316626.P14722190449443072807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + (SequenceMachineLib.valuation n 2 + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P14722190449443072807

namespace A316626

/-- `∑[char[a(n-1)+val(n, 2)+3]]` -/
def P14722190449443072807.Spec : Prop :=
  ∀ n, (P14722190449443072807.a n : ℤ) = A316626 (n + 1)

end A316626

/-! ## A316626.P16332866638988495018

`∑[char[A120738(n)]]`
-/

namespace A316626.P16332866638988495018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P16332866638988495018

namespace A316626

/-- `∑[char[A120738(n)]]` -/
def P16332866638988495018.Spec : Prop :=
  ∀ n, (P16332866638988495018.a n : ℤ) = A316626 (n + 1)

end A316626

/-! ## A316626.P1110720270171481878

`round(∑[A079559(n)/2])`
-/

namespace A316626.P1110720270171481878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079559 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316626.P1110720270171481878

namespace A316626

/-- `round(∑[A079559(n)/2])` -/
def P1110720270171481878.Spec : Prop :=
  ∀ n, P1110720270171481878.a n = A316626 (n + 1)

end A316626

/-! ## A316626.P1189855656777164942

`∑[char[A005187(2*n)]]`
-/

namespace A316626.P1189855656777164942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P1189855656777164942

namespace A316626

/-- `∑[char[A005187(2*n)]]` -/
def P1189855656777164942.Spec : Prop :=
  ∀ n, (P1189855656777164942.a n : ℤ) = A316626 (n + 1)

end A316626

/-! ## A316626.P13196310975246063997

`∑[char[A283208(2*n)]]`
-/

namespace A316626.P13196310975246063997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283208 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P13196310975246063997

namespace A316626

/-- `∑[char[A283208(2*n)]]` -/
def P13196310975246063997.Spec : Prop :=
  ∀ n, (P13196310975246063997.a n : ℤ) = A316626 (n + 1)

end A316626

/-! ## A316626.P6802082492837744698

`∑[char[A327492(2*n)]]`
-/

namespace A316626.P6802082492837744698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327492 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P6802082492837744698

namespace A316626

/-- `∑[char[A327492(2*n)]]` -/
def P6802082492837744698.Spec : Prop :=
  ∀ n, (P6802082492837744698.a n : ℤ) = A316626 (n + 1)

end A316626

/-! ## A316626.P459396630835927210

`∑[char[A004134(n)+n]]`
-/

namespace A316626.P459396630835927210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P459396630835927210

namespace A316626

/-- `∑[char[A004134(n)+n]]` -/
def P459396630835927210.Spec : Prop :=
  ∀ n, (P459396630835927210.a n : ℤ) = A316626 (n + 1)

end A316626

/-! ## A316626.P6716984608219794582

`ceil(A046699(n+2)/2)`
-/

namespace A316626.P6716984608219794582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046699 (n + 2) : ℚ) / 2⌉

end

end A316626.P6716984608219794582

namespace A316626

/-- `ceil(A046699(n+2)/2)` -/
def P6716984608219794582.Spec : Prop :=
  ∀ n, P6716984608219794582.a n = A316626 (n + 1)

end A316626

/-! ## A316626.P18300173478187778042

`∑[char[A101925(2*n)-1]]`
-/

namespace A316626.P18300173478187778042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 (2 * n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P18300173478187778042

namespace A316626

/-- `∑[char[A101925(2*n)-1]]` -/
def P18300173478187778042.Spec : Prop :=
  ∀ n, (P18300173478187778042.a n : ℤ) = A316626 (n + 1)

end A316626

/-! ## A316626.P18007050728848177585

`∑[∑[A308188(n+1)]%2]`
-/

namespace A316626.P18007050728848177585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P18007050728848177585

namespace A316626

/-- `∑[∑[A308188(n+1)]%2]` -/
def P18007050728848177585.Spec : Prop :=
  ∀ n, P18007050728848177585.a n = A316626 (n + 1)

end A316626

/-! ## A316626.P11446906225784055559

`∑[char[4*n-A000120(n)]]`
-/

namespace A316626.P11446906225784055559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A000120 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P11446906225784055559

namespace A316626

/-- `∑[char[4*n-A000120(n)]]` -/
def P11446906225784055559.Spec : Prop :=
  ∀ n, (P11446906225784055559.a n : ℤ) = A316626 (n + 1)

end A316626

/-! ## A316626.P16848974060514661947

`floor((∑[char[A005187(n)]]+1)/2)`
-/

namespace A316626.P16848974060514661947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2⌋

end

end A316626.P16848974060514661947

namespace A316626

/-- `floor((∑[char[A005187(n)]]+1)/2)` -/
def P16848974060514661947.Spec : Prop :=
  ∀ n, P16848974060514661947.a n = A316626 (n + 1)

end A316626

/-! ## A316626.P15877678076608126715

`∑[char[∑[A007814(n+1)+3]]]+1`
-/

namespace A316626.P15877678076608126715
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316626.P15877678076608126715

namespace A316626

/-- `∑[char[∑[A007814(n+1)+3]]]+1` -/
def P15877678076608126715.Spec : Prop :=
  ∀ n, (P15877678076608126715.a n : ℤ) = A316626 (n + 1)

end A316626

/-! ## A316626.P11461011829511431546

`∑[char[∑[val((n+1)*A020639(n+1)², 2)]]]`
-/

namespace A316626.P11461011829511431546
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) * A020639 (n + 1) ^ 2).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P11461011829511431546

namespace A316626

/-- `∑[char[∑[val((n+1)*A020639(n+1)², 2)]]]` -/
def P11461011829511431546.Spec : Prop :=
  ∀ n, (P11461011829511431546.a n : ℤ) = A316626 (n + 1)

end A316626

/-! ## A316626.P16032464683640306120

`A065033(A046699(n+2))`
-/

namespace A316626.P16032464683640306120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A046699 (n + 2)).toNat

end

end A316626.P16032464683640306120

namespace A316626

/-- `A065033(A046699(n+2))` -/
def P16032464683640306120.Spec : Prop :=
  ∀ n, P16032464683640306120.a n = A316626 (n + 1)

end A316626

/-! ## A316626.P9472444375399161623

`∑[A000035(∑[A079559(n)])]`
-/

namespace A316626.P9472444375399161623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316626.P9472444375399161623

namespace A316626

/-- `∑[A000035(∑[A079559(n)])]` -/
def P9472444375399161623.Spec : Prop :=
  ∀ n, P9472444375399161623.a n = A316626 (n + 1)

end A316626

/-! ## A316626.P8345590754382584303

`A004526(A046699(n+2)+1)`
-/

namespace A316626.P8345590754382584303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A046699 (n + 2) + 1).toNat

end

end A316626.P8345590754382584303

namespace A316626

/-- `A004526(A046699(n+2)+1)` -/
def P8345590754382584303.Spec : Prop :=
  ∀ n, P8345590754382584303.a n = A316626 (n + 1)

end A316626

/-! ## A316626.P8000194595093878693

`A065033(1-A234016(n)+n)`
-/

namespace A316626.P8000194595093878693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (1 - A234016 n + (n : ℤ)).toNat

end

end A316626.P8000194595093878693

namespace A316626

/-- `A065033(1-A234016(n)+n)` -/
def P8000194595093878693.Spec : Prop :=
  ∀ n, P8000194595093878693.a n = A316626 (n + 1)

end A316626

/-!
# A316627: a(1)=2, a(2)=3; a(n) = a(n+1-a(n-1))+a(n-a(n-2)) for n > 2.

The programs for A316627, the canonical program `A316627.P5957806502181278273` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316627 has offset 1).

The definition of A316627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n+1-a(n-1))+a(n-a(n-2))` (program `A316627.P5957806502181278273`, by `A316627.P5957806502181278273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316627.P5957806502181278273

`a(n+1-a(n-1))+a(n-a(n-2))` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A316627

/-- `a(n+1-a(n-1))+a(n-a(n-2))` -/
def P5957806502181278273.Spec : Prop :=
  ∀ n, (P5957806502181278273.a n : ℤ) = A316627 (n + 1)

theorem P5957806502181278273.correct : P5957806502181278273.Spec := by
  intro n
  simp only [A316627, Nat.add_sub_cancel]

end A316627

/-! ## A316627.P16023201077405860950

`∑[char[A376116(n+1)]]+1`
-/

namespace A316627.P16023201077405860950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376116 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316627.P16023201077405860950

namespace A316627

/-- `∑[char[A376116(n+1)]]+1` -/
def P16023201077405860950.Spec : Prop :=
  ∀ n, (P16023201077405860950.a n : ℤ) = A316627 (n + 1)

end A316627

/-! ## A316627.P17915059807720910619

`∑[A175468(n+1)%2]+1`
-/

namespace A316627.P17915059807720910619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175468 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316627.P17915059807720910619

namespace A316627

/-- `∑[A175468(n+1)%2]+1` -/
def P17915059807720910619.Spec : Prop :=
  ∀ n, P17915059807720910619.a n = A316627 (n + 1)

end A316627

/-! ## A316627.P17855642922501530545

`∑[char[∑[A091090(n+1)]]]+2`
-/

namespace A316627.P17855642922501530545
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A316627.P17855642922501530545

namespace A316627

/-- `∑[char[∑[A091090(n+1)]]]+2` -/
def P17855642922501530545.Spec : Prop :=
  ∀ n, (P17855642922501530545.a n : ℤ) = A316627 (n + 1)

end A316627

/-! ## A316627.P546142142073697374

`A046699(A057716(n+1))`
-/

namespace A316627.P546142142073697374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A057716 (n + 1)).toNat

end

end A316627.P546142142073697374

namespace A316627

/-- `A046699(A057716(n+1))` -/
def P546142142073697374.Spec : Prop :=
  ∀ n, P546142142073697374.a n = A316627 (n + 1)

end A316627

/-! ## A316627.P14322684403341229159

`A046699(A062289(n+2))`
-/

namespace A316627.P14322684403341229159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A062289 (n + 2)).toNat

end

end A316627.P14322684403341229159

namespace A316627

/-- `A046699(A062289(n+2))` -/
def P14322684403341229159.Spec : Prop :=
  ∀ n, P14322684403341229159.a n = A316627 (n + 1)

end A316627

/-! ## A316627.P139767176661264617

`A046699(lt[1, A006257(n)])`
-/

namespace A316627.P139767176661264617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A316627.P139767176661264617

namespace A316627

/-- `A046699(lt[1, A006257(n)])` -/
def P139767176661264617.Spec : Prop :=
  ∀ n, P139767176661264617.a n = A316627 (n + 1)

end A316627

/-! ## A316627.P12417208515385097

`A046699(lt[2, A278222(n)])`
-/

namespace A316627.P12417208515385097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A316627.P12417208515385097

namespace A316627

/-- `A046699(lt[2, A278222(n)])` -/
def P12417208515385097.Spec : Prop :=
  ∀ n, P12417208515385097.a n = A316627 (n + 1)

end A316627

/-! ## A316627.P1082475180967673854

`A046699(A138591(n+2))`
-/

namespace A316627.P1082475180967673854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A138591 (n + 2)).toNat

end

end A316627.P1082475180967673854

namespace A316627

/-- `A046699(A138591(n+2))` -/
def P1082475180967673854.Spec : Prop :=
  ∀ n, P1082475180967673854.a n = A316627 (n + 1)

end A316627

/-! ## A316627.P177385025567322835

`A081832(n+1)+A081832(n+2)`
-/

namespace A316627.P177385025567322835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081832 (n + 1) + A081832 (n + 2)

end

end A316627.P177385025567322835

namespace A316627

/-- `A081832(n+1)+A081832(n+2)` -/
def P177385025567322835.Spec : Prop :=
  ∀ n, P177385025567322835.a n = A316627 (n + 1)

end A316627

/-! ## A316627.P3937487995533690084

`A046699(lt[1, A005811(n)]+1)`
-/

namespace A316627.P3937487995533690084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A316627.P3937487995533690084

namespace A316627

/-- `A046699(lt[1, A005811(n)]+1)` -/
def P3937487995533690084.Spec : Prop :=
  ∀ n, P3937487995533690084.a n = A316627 (n + 1)

end A316627

/-! ## A316627.P1847561786909327066

`A046699(lt[1, A000120(n)])`
-/

namespace A316627.P1847561786909327066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A316627.P1847561786909327066

namespace A316627

/-- `A046699(lt[1, A000120(n)])` -/
def P1847561786909327066.Spec : Prop :=
  ∀ n, P1847561786909327066.a n = A316627 (n + 1)

end A316627

/-! ## A316627.P10201373332512562144

`A007843(lt[A006257(n), n])/2`
-/

namespace A316627.P10201373332512562144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007843 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 2

end

end A316627.P10201373332512562144

namespace A316627

/-- `A007843(lt[A006257(n), n])/2` -/
def P10201373332512562144.Spec : Prop :=
  ∀ n, P10201373332512562144.a n = (A316627 (n + 1) : ℚ)

end A316627

/-! ## A316627.P16045775012285561814

`A007843(lt[A071044(n), A007843(n)])/2`
-/

namespace A316627.P16045775012285561814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 2

end

end A316627.P16045775012285561814

namespace A316627

/-- `A007843(lt[A071044(n), A007843(n)])/2` -/
def P16045775012285561814.Spec : Prop :=
  ∀ n, P16045775012285561814.a n = (A316627 (n + 1) : ℚ)

end A316627

/-! ## A316627.P10534166411357408333

`A046699(lt[0, A283998(n)])`
-/

namespace A316627.P10534166411357408333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A316627.P10534166411357408333

namespace A316627

/-- `A046699(lt[0, A283998(n)])` -/
def P10534166411357408333.Spec : Prop :=
  ∀ n, P10534166411357408333.a n = A316627 (n + 1)

end A316627

/-! ## A316627.P14321430716695869215

`A046699(lt[3, A071044(n)])`
-/

namespace A316627.P14321430716695869215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A316627.P14321430716695869215

namespace A316627

/-- `A046699(lt[3, A071044(n)])` -/
def P14321430716695869215.Spec : Prop :=
  ∀ n, P14321430716695869215.a n = A316627 (n + 1)

end A316627

/-!
# A316628: a(1)=1, a(2)=2, a(3)=2, a(4)=3; a(n) = a(n-a(n-1))+a(n-1-a(n-2)-a(n-2-a(n-2))) for n > 4.

The programs for A316628, the canonical program `A316628.P2091604339672698338` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316628 has offset 1).

The definition of A316628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-1-a(n-2)-a(n-2-a(n-2)))` (program `A316628.P2091604339672698338`, by `A316628.P2091604339672698338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316628.P2091604339672698338

`a(n-a(n-1))+a(n-1-a(n-2)-a(n-2-a(n-2)))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A316628

/-- `a(n-a(n-1))+a(n-1-a(n-2)-a(n-2-a(n-2)))` -/
def P2091604339672698338.Spec : Prop :=
  ∀ n, (P2091604339672698338.a n : ℤ) = A316628 (n + 1)

theorem P2091604339672698338.correct : P2091604339672698338.Spec := by
  intro n
  simp only [A316628, Nat.add_sub_cancel]

end A316628

/-! ## A316628.P14751555026979223366

`∑[char[∑[A035614(n)]]]`
-/

namespace A316628.P14751555026979223366
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316628.P14751555026979223366

namespace A316628

/-- `∑[char[∑[A035614(n)]]]` -/
def P14751555026979223366.Spec : Prop :=
  ∀ n, (P14751555026979223366.a n : ℤ) = A316628 (n + 1)

end A316628

/-! ## A316628.P3585313961457798611

`∑[char[n-A104324(n)]]`
-/

namespace A316628.P3585313961457798611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A104324 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316628.P3585313961457798611

namespace A316628

/-- `∑[char[n-A104324(n)]]` -/
def P3585313961457798611.Spec : Prop :=
  ∀ n, (P3585313961457798611.a n : ℤ) = A316628 (n + 1)

end A316628

/-! ## A316628.P16053847149688050110

`∑[char[∑[A035612(n+1)-1]]]`
-/

namespace A316628.P16053847149688050110
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316628.P16053847149688050110

namespace A316628

/-- `∑[char[∑[A035612(n+1)-1]]]` -/
def P16053847149688050110.Spec : Prop :=
  ∀ n, (P16053847149688050110.a n : ℤ) = A316628 (n + 1)

end A316628

/-! ## A316628.P17521295790555530911

`∑[char[A219641(n)+A219640(n)]]`
-/

namespace A316628.P17521295790555530911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + A219640 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316628.P17521295790555530911

namespace A316628

/-- `∑[char[A219641(n)+A219640(n)]]` -/
def P17521295790555530911.Spec : Prop :=
  ∀ n, (P17521295790555530911.a n : ℤ) = A316628 (n + 1)

end A316628

/-! ## A316628.P16696192903673611585

`∑[char[A219640(n)-A007895(n)]]`
-/

namespace A316628.P16696192903673611585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n - A007895 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316628.P16696192903673611585

namespace A316628

/-- `∑[char[A219640(n)-A007895(n)]]` -/
def P16696192903673611585.Spec : Prop :=
  ∀ n, (P16696192903673611585.a n : ℤ) = A316628 (n + 1)

end A316628

/-! ## A316628.P11162389559794335738

`∑[A001222(Δ[A086170(n+1)])]`
-/

namespace A316628.P11162389559794335738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086170 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316628.P11162389559794335738

namespace A316628

/-- `∑[A001222(Δ[A086170(n+1)])]` -/
def P11162389559794335738.Spec : Prop :=
  ∀ n, P11162389559794335738.a n = A316628 (n + 1)

end A316628

/-! ## A316628.P8172747465941803985

`∑[A008624(Δ[A086170(n+1)])]`
-/

namespace A316628.P8172747465941803985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086170 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316628.P8172747465941803985

namespace A316628

/-- `∑[A008624(Δ[A086170(n+1)])]` -/
def P8172747465941803985.Spec : Prop :=
  ∀ n, P8172747465941803985.a n = A316628 (n + 1)

end A316628

/-! ## A316628.P13080620829835620255

`∑[A212804(Δ[A086170(n+1)])]`
-/

namespace A316628.P13080620829835620255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086170 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316628.P13080620829835620255

namespace A316628

/-- `∑[A212804(Δ[A086170(n+1)])]` -/
def P13080620829835620255.Spec : Prop :=
  ∀ n, P13080620829835620255.a n = A316628 (n + 1)

end A316628

/-! ## A316628.P2907254953192403494

`∑[A026796(A086170(Δ[A086170(n+1)]+1))]`
-/

namespace A316628.P2907254953192403494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086170 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (A086170 (f2 (n + 1) - f2 n + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316628.P2907254953192403494

namespace A316628

/-- `∑[A026796(A086170(Δ[A086170(n+1)]+1))]` -/
def P2907254953192403494.Spec : Prop :=
  ∀ n, P2907254953192403494.a n = A316628 (n + 1)

end A316628

/-!
# A316630: Numbers k such that 10k+1, 10k+3, 10k+7, and 10k+9 are all composite, and k == 1 (mod 3).

The programs for A316630, there is no canonical definition to state claims against.
-/

/-! ## A316630.P2894895963861358428

`∩[A032352(n+1), A016777(n)]`
-/

namespace A316630.P2894895963861358428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316630.P2894895963861358428

/-! ## A316630.P8304911026079555157

`∩[A032352(n+1), A112414(n)]`
-/

namespace A316630.P8304911026079555157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316630.P8304911026079555157

/-! ## A316630.P5768514232041069708

`∩[A032352(n+1), A033627(n+1)]`
-/

namespace A316630.P5768514232041069708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316630.P5768514232041069708

/-! ## A316630.P17398029289647126842

`∩[A032352(n+1), A086822(n+1)]`
-/

namespace A316630.P17398029289647126842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316630.P17398029289647126842

/-! ## A316630.P1958484658737667193

`∩[A032352(n+1), A234429(n+1)]`
-/

namespace A316630.P1958484658737667193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316630.P1958484658737667193

/-! ## A316630.P5876586893150315480

`A032352(eq[1, A032352(n+1)%3]+1)`
-/

namespace A316630.P5876586893150315480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032352 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A316630.P5876586893150315480

/-! ## A316630.P5598895296281567540

`∩[A026488(n+1), A032352(n+1)]`
-/

namespace A316630.P5598895296281567540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316630.P5598895296281567540

/-!
# A316631: Expansion of A(x) = x*(1+3*x^2+x^3+3*x^4+x^6)/(1-x^4)^2.

The programs for A316631, the canonical program `A316631.P1505232234424549793` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316631 has offset 0).

The definition of A316631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316631.P1505232234424549793

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3, a(4)=1, a(5)=5, a(6)=0, a(7)=7`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A316631

/-- `2*a(n-4)-a(n-8)` -/
def P1505232234424549793.Spec : Prop :=
  ∀ n, P1505232234424549793.a n = A316631 n

theorem P1505232234424549793.correct : P1505232234424549793.Spec := by
  intro n
  simp only [A316631]

end A316631

/-! ## A316631.P809024150378537310

`n*(1-2/gcd(4, n))²`
-/

namespace A316631.P809024150378537310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (1 - 2 / (Nat.gcd 4 n : ℚ)) ^ 2

end

end A316631.P809024150378537310

namespace A316631

/-- `n*(1-2/gcd(4, n))²` -/
def P809024150378537310.Spec : Prop :=
  ∀ n, P809024150378537310.a n = (A316631 n : ℚ)

end A316631

/-! ## A316631.P9751858412957871449

`lcm(n, and(4, n²-2))/4`
-/

namespace A316631.P9751858412957871449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (Int.land 4 ((n ^ 2 : ℤ) - 2)) : ℚ) / 4

end

end A316631.P9751858412957871449

namespace A316631

/-- `lcm(n, and(4, n²-2))/4` -/
def P9751858412957871449.Spec : Prop :=
  ∀ n, P9751858412957871449.a n = (A316631 n : ℚ)

end A316631

/-! ## A316631.P12244654353501985591

`(n^3)%comp[record[xor(6, xor(7, n)-1)]]`
-/

namespace A316631.P12244654353501985591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 ((Nat.xor 7 n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A316631.P12244654353501985591

namespace A316631

/-- `(n^3)%comp[record[xor(6, xor(7, n)-1)]]` -/
def P12244654353501985591.Spec : Prop :=
  ∀ n, (P12244654353501985591.a n : ℤ) = A316631 n

end A316631

/-! ## A316631.P5010467005459528019

`(n^3)%A003485(n)`
-/

namespace A316631.P5010467005459528019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 3 : ℤ) (A003485 n)

end

end A316631.P5010467005459528019

namespace A316631

/-- `(n^3)%A003485(n)` -/
def P5010467005459528019.Spec : Prop :=
  ∀ n, P5010467005459528019.a n = A316631 n

end A316631

/-! ## A316631.P1788262962223936252

`abs(n-A188134(n))/3`
-/

namespace A316631.P1788262962223936252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|(n : ℤ) - A188134 n| : ℚ) / 3

end

end A316631.P1788262962223936252

namespace A316631

/-- `abs(n-A188134(n))/3` -/
def P1788262962223936252.Spec : Prop :=
  ∀ n, P1788262962223936252.a n = (A316631 n : ℚ)

end A316631

/-! ## A316631.P7285833496991220686

`n*(2-A176895(n))²/4`
-/

namespace A316631.P7285833496991220686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (2 - A176895 n) ^ 2 : ℚ) / 4

end

end A316631.P7285833496991220686

namespace A316631

/-- `n*(2-A176895(n))²/4` -/
def P7285833496991220686.Spec : Prop :=
  ∀ n, P7285833496991220686.a n = (A316631 n : ℚ)

end A316631

/-! ## A316631.P43785479029698446

`n%A116966(n)/gcd(2, n)²`
-/

namespace A316631.P43785479029698446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (n : ℤ) (A116966 n) : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

end

end A316631.P43785479029698446

namespace A316631

/-- `n%A116966(n)/gcd(2, n)²` -/
def P43785479029698446.Spec : Prop :=
  ∀ n, P43785479029698446.a n = (A316631 n : ℚ)

end A316631

/-! ## A316631.P6920069005387256825

`A000578(n)%∑[C(and(3, n), 2)+1]`
-/

namespace A316631.P6920069005387256825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 3 n) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A316631.P6920069005387256825

namespace A316631

/-- `A000578(n)%∑[C(and(3, n), 2)+1]` -/
def P6920069005387256825.Spec : Prop :=
  ∀ n, P6920069005387256825.a n = A316631 n

end A316631

/-! ## A316631.P15159631567578347846

`A255563(A237420(n))+n`
-/

namespace A316631.P15159631567578347846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255563 (A237420 n).toNat + (n : ℤ)

end

end A316631.P15159631567578347846

namespace A316631

/-- `A255563(A237420(n))+n` -/
def P15159631567578347846.Spec : Prop :=
  ∀ n, P15159631567578347846.a n = A316631 n

end A316631

/-! ## A316631.P47722985117847480

`A318972(n)-A030065(n)`
-/

namespace A316631.P47722985117847480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318972 n - A030065 n

end

end A316631.P47722985117847480

namespace A316631

/-- `A318972(n)-A030065(n)` -/
def P47722985117847480.Spec : Prop :=
  ∀ n, P47722985117847480.a n = A316631 n

end A316631

/-! ## A316631.P13365200185297564966

`A214392(n*A152822(n))`
-/

namespace A316631.P13365200185297564966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 ((n : ℤ) * A152822 n).toNat

end

end A316631.P13365200185297564966

namespace A316631

/-- `A214392(n*A152822(n))` -/
def P13365200185297564966.Spec : Prop :=
  ∀ n, P13365200185297564966.a n = A316631 n

end A316631

/-! ## A316631.P8446080254234548361

`A214392(n)%A090964(n)`
-/

namespace A316631.P8446080254234548361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214392 n) (A090964 n)

end

end A316631.P8446080254234548361

namespace A316631

/-- `A214392(n)%A090964(n)` -/
def P8446080254234548361.Spec : Prop :=
  ∀ n, P8446080254234548361.a n = A316631 n

end A316631

/-! ## A316631.P781936539426631406

`A214392(lcm(n, A046980(n)))`
-/

namespace A316631.P781936539426631406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (Int.lcm (n : ℤ) (A046980 n))

end

end A316631.P781936539426631406

namespace A316631

/-- `A214392(lcm(n, A046980(n)))` -/
def P781936539426631406.Spec : Prop :=
  ∀ n, P781936539426631406.a n = A316631 n

end A316631

/-! ## A316631.P14630969451714173120

`A214392(n*A046980(n)²)`
-/

namespace A316631.P14630969451714173120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 ((n : ℤ) * A046980 n ^ 2).toNat

end

end A316631.P14630969451714173120

namespace A316631

/-- `A214392(n*A046980(n)²)` -/
def P14630969451714173120.Spec : Prop :=
  ∀ n, P14630969451714173120.a n = A316631 n

end A316631

/-! ## A316631.P339034847943202433

`A255563(2*A142150(n))+n`
-/

namespace A316631.P339034847943202433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255563 (2 * A142150 n).toNat + (n : ℤ)

end

end A316631.P339034847943202433

namespace A316631

/-- `A255563(2*A142150(n))+n` -/
def P339034847943202433.Spec : Prop :=
  ∀ n, P339034847943202433.a n = A316631 n

end A316631

/-! ## A316631.P14557557628521477108

`A214392(2*A283971(n)-n)`
-/

namespace A316631.P14557557628521477108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (2 * A283971 n - (n : ℤ)).toNat

end

end A316631.P14557557628521477108

namespace A316631

/-- `A214392(2*A283971(n)-n)` -/
def P14557557628521477108.Spec : Prop :=
  ∀ n, P14557557628521477108.a n = A316631 n

end A316631

/-! ## A316631.P1375982334030420360

`A002593(n)%A047411(n+1)`
-/

namespace A316631.P1375982334030420360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002593 n) (A047411 (n + 1))

end

end A316631.P1375982334030420360

namespace A316631

/-- `A002593(n)%A047411(n+1)` -/
def P1375982334030420360.Spec : Prop :=
  ∀ n, P1375982334030420360.a n = A316631 n

end A316631

/-! ## A316631.P2417709594511329718

`A064680(n)-A026741(A026741(n))`
-/

namespace A316631.P2417709594511329718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n - A026741 (A026741 n).toNat

end

end A316631.P2417709594511329718

namespace A316631

/-- `A064680(n)-A026741(A026741(n))` -/
def P2417709594511329718.Spec : Prop :=
  ∀ n, P2417709594511329718.a n = A316631 n

end A316631

/-! ## A316631.P15428266483678851454

`A026741(n)-A026741(A142150(n))`
-/

namespace A316631.P15428266483678851454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n - A026741 (A142150 n).toNat

end

end A316631.P15428266483678851454

namespace A316631

/-- `A026741(n)-A026741(A142150(n))` -/
def P15428266483678851454.Spec : Prop :=
  ∀ n, P15428266483678851454.a n = A316631 n

end A316631

/-!
# A316635: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316635, there is no canonical definition to state claims against.
-/

/-! ## A316635.P14280020264927956480

`A316641(∑[4*n]+1)`
-/

namespace A316635.P14280020264927956480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316635.P14280020264927956480

/-! ## A316635.P2942075959586868676

`record[A316641(Δ[A235355(n)])]`
-/

namespace A316635.P2942075959586868676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316635.P2942075959586868676

/-! ## A316635.P3012440151028926254

`record[A316641(A330613(n+1))]`
-/

namespace A316635.P3012440151028926254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316635.P3012440151028926254

/-! ## A316635.P1731826543505505806

`A316641(A001844(n))+char[9]`
-/

namespace A316635.P1731826543505505806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316635.P1731826543505505806

/-! ## A316635.P6937713317791641752

`record[A003982(n)*A316641(n+1)]`
-/

namespace A316635.P6937713317791641752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316635.P6937713317791641752

/-!
# A316636: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316636, there is no canonical definition to state claims against.
-/

/-! ## A316636.P3640522103839429209

`A316641(∑[n+2]+4)`
-/

namespace A316636.P3640522103839429209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316636.P3640522103839429209

/-! ## A316636.P16994432561385072422

`record[A316641(A008795(n)+3)]`
-/

namespace A316636.P16994432561385072422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316636.P16994432561385072422

/-! ## A316636.P10123743595950178205

`A316641(A046691(n)+7)+char[18]`
-/

namespace A316636.P10123743595950178205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316636.P10123743595950178205

/-! ## A316636.P14762189659018236516

`record[gcd(A303913(n), A316641(n+1))]`
-/

namespace A316636.P14762189659018236516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A316641 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316636.P14762189659018236516

/-! ## A316636.P7005722500893771047

`A316641(A167614(n+1))+C(n, 64)`
-/

namespace A316636.P7005722500893771047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A167614 (n + 1)).toNat + (Nat.choose n 64 : ℤ)

end

end A316636.P7005722500893771047

/-!
# A316637: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316637, there is no canonical definition to state claims against.
-/

/-! ## A316637.P5448625071751384719

`A316641(∑[n+3]+7)`
-/

namespace A316637.P5448625071751384719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316637.P5448625071751384719

/-! ## A316637.P15489483285745858415

`A316641(A052905(n)+9)+char[20]`
-/

namespace A316637.P15489483285745858415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316637.P15489483285745858415

/-! ## A316637.P2082185948545455241

`A316641(A052905(n)+9)%A000108(n+7)`
-/

namespace A316637.P2082185948545455241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316641 (A052905 n + 9).toNat) (A000108 (n + 7))

end

end A316637.P2082185948545455241

/-! ## A316637.P12283056052821623104

`A007318(floor(n/27))*A316641(A052905(n)+9)`
-/

namespace A316637.P12283056052821623104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 27⌋.toNat * A316641 (A052905 n + 9).toNat

end

end A316637.P12283056052821623104

/-! ## A316637.P7615871788690607741

`A000041(C(2, n+2))*A316641(A052905(n)+9)`
-/

namespace A316637.P7615871788690607741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A316641 (A052905 n + 9).toNat

end

end A316637.P7615871788690607741

/-!
# A316638: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316638, there is no canonical definition to state claims against.
-/

/-! ## A316638.P14321252172228157184

`A316641(A374005(n+1))`
-/

namespace A316638.P14321252172228157184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A374005 (n + 1)).toNat

end

end A316638.P14321252172228157184

/-! ## A316638.P12524800874039151874

`A316641(A167499(n+3))`
-/

namespace A316638.P12524800874039151874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A167499 (n + 3)).toNat

end

end A316638.P12524800874039151874

/-! ## A316638.P1751864656929293204

`A316641(A155212(n)+13)`
-/

namespace A316638.P1751864656929293204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A155212 n + 13).toNat

end

end A316638.P1751864656929293204

/-! ## A316638.P17285353383059086818

`A316641(A056000(n)+15)`
-/

namespace A316638.P17285353383059086818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A056000 n + 15).toNat

end

end A316638.P17285353383059086818

/-! ## A316638.P6740439846078703807

`A316641(eq[7, A066657(n)])`
-/

namespace A316638.P6740439846078703807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316638.P6740439846078703807

/-!
# A316639: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316639, there is no canonical definition to state claims against.
-/

/-! ## A316639.P8023513094926616501

`A316641(A374007(n+1))`
-/

namespace A316639.P8023513094926616501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A374007 (n + 1)).toNat

end

end A316639.P8023513094926616501

/-! ## A316639.P13164700173043413901

`A316641(A166136(n+4))`
-/

namespace A316639.P13164700173043413901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A166136 (n + 4)).toNat

end

end A316639.P13164700173043413901

/-! ## A316639.P645403259897549664

`A316641(A056115(n)+21)`
-/

namespace A316639.P645403259897549664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A056115 n + 21).toNat

end

end A316639.P645403259897549664

/-! ## A316639.P13283979031023644951

`A316641(A167499(n+4)+1)`
-/

namespace A316639.P13283979031023644951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A167499 (n + 4) + 1).toNat

end

end A316639.P13283979031023644951

/-! ## A316639.P2767860725626136131

`A316641(A167614(n+4)+3)`
-/

namespace A316639.P2767860725626136131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A167614 (n + 4) + 3).toNat

end

end A316639.P2767860725626136131

/-!
# A316640: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316640, there is no canonical definition to state claims against.
-/

/-! ## A316640.P1881620909144404566

`A316641(A374008(n+1))`
-/

namespace A316640.P1881620909144404566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A374008 (n + 1)).toNat

end

end A316640.P1881620909144404566

/-! ## A316640.P3807255900565192691

`A316641(A056119(n)+28)`
-/

namespace A316640.P3807255900565192691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A056119 n + 28).toNat

end

end A316640.P3807255900565192691

/-! ## A316640.P2871448129918533744

`A316641(eq[11, A066657(n)])`
-/

namespace A316640.P2871448129918533744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316640.P2871448129918533744

/-! ## A316640.P6023470872239600900

`A316641(eq[8, A131818(n+1)])`
-/

namespace A316640.P6023470872239600900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316640.P6023470872239600900

/-! ## A316640.P10142089827704694806

`A316641(A055999(n+4))`
-/

namespace A316640.P10142089827704694806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (A055999 (n + 4)).toNat

end

end A316640.P10142089827704694806

/-!
# A316641: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316641, there is no canonical definition to state claims against.
-/

/-! ## A316641.P9253336808467386712

`A304959(n+1)+A173636(A174545(n))`
-/

namespace A316641.P9253336808467386712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (n + 1) + A173636 (A174545 n).toNat

end

end A316641.P9253336808467386712

/-! ## A316641.P1961761001699783913

`A304959(n+1)+A065040(A282230(n+1))`
-/

namespace A316641.P1961761001699783913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (n + 1) + A065040 (A282230 (n + 1)).toNat

end

end A316641.P1961761001699783913

/-! ## A316641.P6648334144509893572

`A304959(n+1)+A280737(A301784(n+1))²`
-/

namespace A316641.P6648334144509893572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (n + 1) + A280737 (A301784 (n + 1)).toNat ^ 2

end

end A316641.P6648334144509893572

/-! ## A316641.P10326338041177431562

`A304959(n+1)-A016389(A022166(n))`
-/

namespace A316641.P10326338041177431562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (n + 1) - A016389 (A022166 n).toNat

end

end A316641.P10326338041177431562

/-! ## A316641.P12035136115889010247

`A304959(n+1)-A016389(A176561(n))`
-/

namespace A316641.P12035136115889010247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (n + 1) - A016389 (A176561 n).toNat

end

end A316641.P12035136115889010247

/-!
# A316642: Number of nXn 0..1 arrays with every element unequal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316642, there is no canonical definition to state claims against.
-/

/-! ## A316642.P15870292941841537434

`A316648(∑[4*n]+1)`
-/

namespace A316642.P15870292941841537434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316642.P15870292941841537434

/-! ## A316642.P10417822747959837611

`record[A316648(Δ[A235355(n)])]`
-/

namespace A316642.P10417822747959837611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316642.P10417822747959837611

/-! ## A316642.P8476559629427359352

`and(-1, A316648(A001844(n)))`
-/

namespace A316642.P8476559629427359352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316648 (A001844 n).toNat)

end

end A316642.P8476559629427359352

/-! ## A316642.P2040152213374263115

`record[A316648(A272267(n+1))]`
-/

namespace A316642.P2040152213374263115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316642.P2040152213374263115

/-! ## A316642.P14434601353516791437

`record[A316648(A330613(n+1))]`
-/

namespace A316642.P14434601353516791437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316642.P14434601353516791437

/-!
# A316643: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316643, there is no canonical definition to state claims against.
-/

/-! ## A316643.P16975853181239451556

`A316648(∑[n+2]+4)`
-/

namespace A316643.P16975853181239451556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316643.P16975853181239451556

/-! ## A316643.P17425214420133130351

`or(1, A316648(A167614(n+1)))`
-/

namespace A316643.P17425214420133130351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316648 (A167614 (n + 1)).toNat)

end

end A316643.P17425214420133130351

/-! ## A316643.P8988565464158437093

`or(1, A316648(A055998(n)+6))`
-/

namespace A316643.P8988565464158437093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316648 (A055998 n + 6).toNat)

end

end A316643.P8988565464158437093

/-! ## A316643.P8520787616708246233

`or(1, A316648(A046691(n)+7))`
-/

namespace A316643.P8520787616708246233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316648 (A046691 n + 7).toNat)

end

end A316643.P8520787616708246233

/-! ## A316643.P12662290719612164600

`record[gcd(A303913(n), A316648(n+1))]`
-/

namespace A316643.P12662290719612164600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A316648 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316643.P12662290719612164600

/-!
# A316644: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316644, there is no canonical definition to state claims against.
-/

/-! ## A316644.P2021726846826290457

`A316648(∑[n+3]+7)`
-/

namespace A316644.P2021726846826290457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316644.P2021726846826290457

/-! ## A316644.P4309462522525172508

`A316648(A055999(n)+10)+char[22]`
-/

namespace A316644.P4309462522525172508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316644.P4309462522525172508

/-! ## A316644.P11979471342293422470

`A316648(A167614(n+2)+1)+char[17]`
-/

namespace A316644.P11979471342293422470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316644.P11979471342293422470

/-! ## A316644.P13425563900416551808

`A007318(C(2, n))*A316648(A055999(n)+10)`
-/

namespace A316644.P13425563900416551808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A316648 (A055999 n + 10).toNat

end

end A316644.P13425563900416551808

/-! ## A316644.P779258043517631085

`A316648(A055999(n)+10)/A007318(C(n, 47))`
-/

namespace A316644.P779258043517631085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316648 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n 47) : ℚ)

end

end A316644.P779258043517631085

/-!
# A316645: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316645, there is no canonical definition to state claims against.
-/

/-! ## A316645.P16394871875588020141

`A316648(A167499(n+3))`
-/

namespace A316645.P16394871875588020141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A167499 (n + 3)).toNat

end

end A316645.P16394871875588020141

/-! ## A316645.P3914943662069285891

`A316648(A155212(n)+13)`
-/

namespace A316645.P3914943662069285891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A155212 n + 13).toNat

end

end A316645.P3914943662069285891

/-! ## A316645.P13237580659276537853

`A316648(A056000(n)+15)`
-/

namespace A316645.P13237580659276537853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A056000 n + 15).toNat

end

end A316645.P13237580659276537853

/-! ## A316645.P1184168670539921872

`A316648(eq[7, A066657(n)])`
-/

namespace A316645.P1184168670539921872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316645.P1184168670539921872

/-! ## A316645.P2479567388905599580

`A316648(A167614(n+3)+2)`
-/

namespace A316645.P2479567388905599580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A167614 (n + 3) + 2).toNat

end

end A316645.P2479567388905599580

/-!
# A316646: Number of nX6 0..1 arrays with every element unequal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316646, there is no canonical definition to state claims against.
-/

/-! ## A316646.P12977731916666770254

`A316648(A056115(n)+21)`
-/

namespace A316646.P12977731916666770254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A056115 n + 21).toNat

end

end A316646.P12977731916666770254

/-! ## A316646.P6468774872456871000

`A316648(A167499(n+4)+1)`
-/

namespace A316646.P6468774872456871000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A167499 (n + 4) + 1).toNat

end

end A316646.P6468774872456871000

/-! ## A316646.P3153712815885186940

`A316648(A000124(n+5)+5)`
-/

namespace A316646.P3153712815885186940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A000124 (n + 5) + 5).toNat

end

end A316646.P3153712815885186940

/-! ## A316646.P39540149687955085

`A316648(A000096(n+4)+7)`
-/

namespace A316646.P39540149687955085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A000096 (n + 4) + 7).toNat

end

end A316646.P39540149687955085

/-! ## A316646.P4705713547434183807

`A316648(A000217(n+5)+6)`
-/

namespace A316646.P4705713547434183807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A000217 (n + 5) + 6).toNat

end

end A316646.P4705713547434183807

/-!
# A316647: Number of nX7 0..1 arrays with every element unequal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316647, there is no canonical definition to state claims against.
-/

/-! ## A316647.P130671471145289431

`A316648(A167487(n+5))`
-/

namespace A316647.P130671471145289431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A167487 (n + 5)).toNat

end

end A316647.P130671471145289431

/-! ## A316647.P11039625478627232581

`A316648(A056119(n)+28)`
-/

namespace A316647.P11039625478627232581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A056119 n + 28).toNat

end

end A316647.P11039625478627232581

/-! ## A316647.P14595375096622841143

`A316648(eq[11, A066657(n)])`
-/

namespace A316647.P14595375096622841143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316647.P14595375096622841143

/-! ## A316647.P10657325327765388244

`A316648(A167614(n+5)+4)`
-/

namespace A316647.P10657325327765388244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A167614 (n + 5) + 4).toNat

end

end A316647.P10657325327765388244

/-! ## A316647.P9329407425208232332

`A316648(A000124(n+6)+6)`
-/

namespace A316647.P9329407425208232332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (A000124 (n + 6) + 6).toNat

end

end A316647.P9329407425208232332

/-!
# A316648: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316648, there is no canonical definition to state claims against.
-/

/-! ## A316648.P8125888642915229304

`A305015(n+1)+A186034(A022167(n))`
-/

namespace A316648.P8125888642915229304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (n + 1) + A186034 (A022167 n).toNat

end

end A316648.P8125888642915229304

/-! ## A316648.P14172876069645950686

`A305015(n+1)+A184159(A099594(n))`
-/

namespace A316648.P14172876069645950686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (n + 1) + A184159 (A099594 n).toNat

end

end A316648.P14172876069645950686

/-! ## A316648.P12158321929009441089

`A305015(n+1)+A173920(A173917(n))`
-/

namespace A316648.P12158321929009441089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (n + 1) + A173920 (A173917 n).toNat

end

end A316648.P12158321929009441089

/-! ## A316648.P17272889586237264481

`A316176(n+1)-A244415(A168549(n))`
-/

namespace A316648.P17272889586237264481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (n + 1) - A244415 (A168549 n).toNat

end

end A316648.P17272889586237264481

/-! ## A316648.P5527250084645903412

`A316176(n+1)-A131809(A331277(n))`
-/

namespace A316648.P5527250084645903412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (n + 1) - A131809 (A331277 n).toNat

end

end A316648.P5527250084645903412

/-!
# A316649: Triangle read by rows in which T(n,k) is the number of length k chains from (0,0) to (n,n) of the poset [n] X [n] ordered by the product order, 0 <= k <= 2n, n>=0.

The programs for A316649, there is no canonical definition to state claims against.
-/

/-! ## A316649.P11871953034055323139

`A290310(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A316649.P11871953034055323139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290310 (n - 1) - a (n - 1)

end

end A316649.P11871953034055323139

/-!
# A316652: Number of series-reduced rooted trees whose leaves span an initial interval of positive integers with multiplicities an integer partition of n.

The programs for A316652, there is no canonical definition to state claims against.
-/

/-! ## A316652.P6681225935331275743

`record[xor(A055961(2*n+1), A330471(n+1))]`
-/

namespace A316652.P6681225935331275743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055961 (2 * n + 1)) (A330471 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316652.P6681225935331275743

/-!
# A316653: Number of series-reduced rooted identity trees with n leaves spanning an initial interval of positive integers.

The programs for A316653, there is no canonical definition to state claims against.
-/

/-! ## A316653.P16452820199428119969

`A248638(-round(a(n-1)/(sqrt(3)-2)))` with `a(0)=1, a(1)=1`
-/

namespace A316653.P16452820199428119969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A248638 (-SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))).toNat

end

end A316653.P16452820199428119969

/-!
# A316654: Number of series-reduced rooted identity trees whose leaves span an initial interval of positive integers with multiplicities an integer partition of n.

The programs for A316654, there is no canonical definition to state claims against.
-/

/-! ## A316654.P11126650768155262340

`xor(A072601(A000312(n)), A297330(3*(n+1)))`
-/

namespace A316654.P11126650768155262340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072601 (A000312 n).toNat) (A297330 (3 * (n + 1)))

end

end A316654.P11126650768155262340

/-!
# A316656: Number of series-reduced rooted identity trees whose leaves span an initial interval of positive integers with multiplicities the integer partition with Heinz number n.

The programs for A316656, there is no canonical definition to state claims against.
-/

/-! ## A316656.P13752120462302351794

`A345700(2^n)%A335665(n+1)`
-/

namespace A316656.P13752120462302351794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345700 (2 ^ n)) (A335665 (n + 1))

end

end A316656.P13752120462302351794

/-! ## A316656.P4904986494778458136

`and(A130330(n), A328447(A304907(n)))`
-/

namespace A316656.P4904986494778458136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130330 n) (A328447 (A304907 n).toNat)

end

end A316656.P4904986494778458136

/-! ## A316656.P14125691211878485368

`A000265(A244886(n))%A014673(3*n+1)`
-/

namespace A316656.P14125691211878485368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A244886 n).toNat) (A014673 (3 * n + 1))

end

end A316656.P14125691211878485368

/-! ## A316656.P12604005659862587252

`A090079(A067538(n+1))-A090079(A288442(n))`
-/

namespace A316656.P12604005659862587252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A067538 (n + 1)).toNat - A090079 (A288442 n).toNat

end

end A316656.P12604005659862587252

/-! ## A316656.P8743511695321700890

`A058730(n+2)%A317545(A007955(3*n+1))`
-/

namespace A316656.P8743511695321700890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058730 (n + 2)) (A317545 (A007955 (3 * n + 1)).toNat)

end

end A316656.P8743511695321700890

/-!
# A316657: For any n >= 0 with base-5 expansion Sum_{k=0..w} d_k * 5^k, let f(n) = Sum_{k=0..w} [d_k > 0] * (2 + i)^k * i^(d_k - 1) (where [] is an Iverson bracket and i denotes the imaginary unit); a(n) equals the real part of f(n).

The programs for A316657, there is no canonical definition to state claims against.
-/

/-! ## A316657.P5562566881203987883

`A316658(5*n)-2*A316658(n)`
-/

namespace A316657.P5562566881203987883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316658 (5 * n) - 2 * A316658 n

end

end A316657.P5562566881203987883

/-! ## A316657.P7679198061612298467

`A332412(n)-A121262(A248764(n+1))`
-/

namespace A316657.P7679198061612298467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 n - A121262 (A248764 (n + 1)).toNat

end

end A316657.P7679198061612298467

/-! ## A316657.P18348930785229141531

`A332412(n)-A121262(A336619(n))`
-/

namespace A316657.P18348930785229141531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 n - A121262 (A336619 n).toNat

end

end A316657.P18348930785229141531

/-!
# A316658: For any n >= 0 with base-5 expansion Sum_{k=0..w} d_k * 5^k, let f(n) = Sum_{k=0..w} [d_k > 0] * (2 + i)^k * i^(d_k - 1) (where [] is an Iverson bracket and i denotes the imaginary unit); a(n) equals the imaginary part of f(n).

The programs for A316658, there is no canonical definition to state claims against.
-/

/-! ## A316658.P14795774955124480357

`2*A316657(n)-A316657(5*n)`
-/

namespace A316658.P14795774955124480357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316657 n - A316657 (5 * n)

end

end A316658.P14795774955124480357

/-! ## A316658.P2905986188244945407

`A001221(A061512(n))-A014586(n)`
-/

namespace A316658.P2905986188244945407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A061512 n).toNat - A014586 n

end

end A316658.P2905986188244945407

/-! ## A316658.P4016769432769036129

`A002266(n)-A105367(A187829(n+1))`
-/

namespace A316658.P4016769432769036129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n - A105367 (A187829 (n + 1)).toNat

end

end A316658.P4016769432769036129

/-! ## A316658.P16571272466363720312

`A348295(n)-A011558(A007598(n))`
-/

namespace A316658.P16571272466363720312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348295 n - A011558 (A007598 n).toNat

end

end A316658.P16571272466363720312

/-! ## A316658.P4660349535863611507

`A349465(n)-A079944(A349455(n+1))`
-/

namespace A316658.P4660349535863611507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349465 n - A079944 (A349455 (n + 1)).toNat

end

end A316658.P4660349535863611507

/-!
# A316660: Number of n-bit binary necklaces (unmarked cyclic n-bit binary strings) containing no runs of length > 2.

The programs for A316660, there is no canonical definition to state claims against.
-/

/-! ## A316660.P17989128153621454250

`A000358(n+1)-A011655(n+1)`
-/

namespace A316660.P17989128153621454250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (n + 1) - A011655 (n + 1)

end

end A316660.P17989128153621454250

/-! ## A316660.P12886912688636179345

`A032190(n+1)+Δ[floor(n/3)]`
-/

namespace A316660.P12886912688636179345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (n + 1) + (f1 (n + 1) - f1 n)

end

end A316660.P12886912688636179345

/-! ## A316660.P17866154500048759589

`A000358(n+1)-abs(A010892(n))`
-/

namespace A316660.P17866154500048759589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (n + 1) - |A010892 n|

end

end A316660.P17866154500048759589

/-! ## A316660.P6256077038056898314

`A000358(n+1)-abs(A049347(n))`
-/

namespace A316660.P6256077038056898314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (n + 1) - |A049347 n|

end

end A316660.P6256077038056898314

/-! ## A316660.P4356278097275827727

`A000358(n+1)-char[A032766(n)]`
-/

namespace A316660.P4356278097275827727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316660.P4356278097275827727

/-! ## A316660.P1085984031299354778

`A000358(n+1)-A131719(2*(n+1))`
-/

namespace A316660.P1085984031299354778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (n + 1) - A131719 (2 * (n + 1))

end

end A316660.P1085984031299354778

/-!
# A316661: a(n) = ceiling(sqrt((2*n)^n)).

The programs for A316661, the canonical program `A316661.P12290872752455223254` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316661 has offset 0).

The definition of A316661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt((2*n)^n))` (program `A316661.P12290872752455223254`, by `A316661.P12290872752455223254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316661.P12290872752455223254

`ceil(sqrt((2*n)^n))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A316661

/-- `ceil(sqrt((2*n)^n))` -/
def P12290872752455223254.Spec : Prop :=
  ∀ n, P12290872752455223254.a n = A316661 n

theorem P12290872752455223254.correct : P12290872752455223254.Spec := by
  intro n
  simp only [A316661]

end A316661

/-! ## A316661.P14978186230096744406

`A242764(n)+n%2`
-/

namespace A316661.P14978186230096744406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242764 n + ((n % 2 : ℕ) : ℤ)

end

end A316661.P14978186230096744406

namespace A316661

/-- `A242764(n)+n%2` -/
def P14978186230096744406.Spec : Prop :=
  ∀ n, P14978186230096744406.a n = A316661 n

end A316661

/-! ## A316661.P14481727612794513970

`A242764(n)+∑[A062157(n)]`
-/

namespace A316661.P14481727612794513970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242764 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316661.P14481727612794513970

namespace A316661

/-- `A242764(n)+∑[A062157(n)]` -/
def P14481727612794513970.Spec : Prop :=
  ∀ n, P14481727612794513970.a n = A316661 n

end A316661

/-! ## A316661.P3001010104475262649

`A242764(n)+Δ[A008619(n)]`
-/

namespace A316661.P3001010104475262649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242764 n + (f1 (n + 1) - f1 n)

end

end A316661.P3001010104475262649

namespace A316661

/-- `A242764(n)+Δ[A008619(n)]` -/
def P3001010104475262649.Spec : Prop :=
  ∀ n, P3001010104475262649.a n = A316661 n

end A316661

/-! ## A316661.P13520827759246478264

`A242764(n)+char[A005408(n)]`
-/

namespace A316661.P13520827759246478264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242764 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316661.P13520827759246478264

namespace A316661

/-- `A242764(n)+char[A005408(n)]` -/
def P13520827759246478264.Spec : Prop :=
  ∀ n, P13520827759246478264.a n = A316661 n

end A316661

/-! ## A316661.P9726882539841739295

`A242764(n)+A021913(2*n)`
-/

namespace A316661.P9726882539841739295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242764 n + A021913 (2 * n)

end

end A316661.P9726882539841739295

namespace A316661

/-- `A242764(n)+A021913(2*n)` -/
def P9726882539841739295.Spec : Prop :=
  ∀ n, P9726882539841739295.a n = A316661 n

end A316661

/-! ## A316661.P7600266121947898254

`A242764(n)+char[A000265(n+1)]`
-/

namespace A316661.P7600266121947898254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242764 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316661.P7600266121947898254

namespace A316661

/-- `A242764(n)+char[A000265(n+1)]` -/
def P7600266121947898254.Spec : Prop :=
  ∀ n, P7600266121947898254.a n = A316661 n

end A316661

/-! ## A316661.P10719271091887846706

`A242764(n)-A010892(A047235(n+1))`
-/

namespace A316661.P10719271091887846706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242764 n - A010892 (A047235 (n + 1)).toNat

end

end A316661.P10719271091887846706

namespace A316661

/-- `A242764(n)-A010892(A047235(n+1))` -/
def P10719271091887846706.Spec : Prop :=
  ∀ n, P10719271091887846706.a n = A316661 n

end A316661

/-!
# A316663: a(n) = floor(sqrt((2*n)^(n+1))).

The programs for A316663, the canonical program `A316663.P4842306650351962767` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316663 has offset 0).

The definition of A316663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt((2*n)^(n+1)))` (program `A316663.P4842306650351962767`, by `A316663.P4842306650351962767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316663.P4842306650351962767

`floor(sqrt((2*n)^(n+1)))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A316663

/-- `floor(sqrt((2*n)^(n+1)))` -/
def P4842306650351962767.Spec : Prop :=
  ∀ n, (P4842306650351962767.a n : ℤ) = A316663 n

theorem P4842306650351962767.correct : P4842306650351962767.Spec := by
  intro n
  simp only [A316663]

end A316663

/-! ## A316663.P3770339293632496343

`floor(sqrt(A085532(n)))+and(2, n²)`
-/

namespace A316663.P3770339293632496343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085532 n) + (Nat.land 2 (n ^ 2) : ℤ)

end

end A316663.P3770339293632496343

namespace A316663

/-- `floor(sqrt(A085532(n)))+and(2, n²)` -/
def P3770339293632496343.Spec : Prop :=
  ∀ n, P3770339293632496343.a n = A316663 n

end A316663

/-! ## A316663.P17176391618405656293

`floor(sqrt(A085532(n)))%A042527(n)`
-/

namespace A316663.P17176391618405656293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A085532 n)) (A042527 n)

end

end A316663.P17176391618405656293

namespace A316663

/-- `floor(sqrt(A085532(n)))%A042527(n)` -/
def P17176391618405656293.Spec : Prop :=
  ∀ n, P17176391618405656293.a n = A316663 n

end A316663

/-! ## A316663.P14288996511761274487

`floor(sqrt(A085532(n)))-A000007(n+1)`
-/

namespace A316663.P14288996511761274487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085532 n) - A000007 (n + 1)

end

end A316663.P14288996511761274487

namespace A316663

/-- `floor(sqrt(A085532(n)))-A000007(n+1)` -/
def P14288996511761274487.Spec : Prop :=
  ∀ n, P14288996511761274487.a n = A316663 n

end A316663

/-! ## A316663.P13243573423945177013

`floor(sqrt(A085532(n)))*A208645(2*n)`
-/

namespace A316663.P13243573423945177013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085532 n) * A208645 (2 * n)

end

end A316663.P13243573423945177013

namespace A316663

/-- `floor(sqrt(A085532(n)))*A208645(2*n)` -/
def P13243573423945177013.Spec : Prop :=
  ∀ n, P13243573423945177013.a n = A316663 n

end A316663

/-! ## A316663.P14703732702073407997

`floor(sqrt(A085532(n)))+2%A080763(n+1)`
-/

namespace A316663.P14703732702073407997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085532 n) + Int.tmod 2 (A080763 (n + 1))

end

end A316663.P14703732702073407997

namespace A316663

/-- `floor(sqrt(A085532(n)))+2%A080763(n+1)` -/
def P14703732702073407997.Spec : Prop :=
  ∀ n, P14703732702073407997.a n = A316663 n

end A316663

/-! ## A316663.P3730352290390525326

`floor(sqrt(A085532(n)))*A014963((2*n)²+2)`
-/

namespace A316663.P3730352290390525326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085532 n) * A014963 ((2 * n) ^ 2 + 2)

end

end A316663.P3730352290390525326

namespace A316663

/-- `floor(sqrt(A085532(n)))*A014963((2*n)²+2)` -/
def P3730352290390525326.Spec : Prop :=
  ∀ n, P3730352290390525326.a n = A316663 n

end A316663

/-!
# A316665: a(n) is the least k > 0 such that k*n does not belong to A002202.

The programs for A316665, there is no canonical definition to state claims against.
-/

/-! ## A316665.P8963714841685597882

`or(1, A264739(n+1)*A282160(n+1))`
-/

namespace A316665.P8963714841685597882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A264739 (n + 1) * A282160 (n + 1))

end

end A316665.P8963714841685597882

/-! ## A316665.P3059195289432447422

`A282160(n+1)^A134451(A049283(n+1))`
-/

namespace A316665.P3059195289432447422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282160 (n + 1) : ℚ) ^ (A134451 (A049283 (n + 1)).toNat : ℤ)

end

end A316665.P3059195289432447422

/-! ## A316665.P16821708483474859292

`gcd(A004530(A057635(n+1)), A282160(n+1))`
-/

namespace A316665.P16821708483474859292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004530 (A057635 (n + 1)).toNat) (A282160 (n + 1))

end

end A316665.P16821708483474859292

/-! ## A316665.P4535195076503155752

`A028310(A264739(n+1)*A282160(n+1))`
-/

namespace A316665.P4535195076503155752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A264739 (n + 1) * A282160 (n + 1)).toNat

end

end A316665.P4535195076503155752

/-! ## A316665.P142339994036801532

`A257088(A264739(n+1)*A282160(n+1))`
-/

namespace A316665.P142339994036801532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A264739 (n + 1) * A282160 (n + 1)).toNat

end

end A316665.P142339994036801532

/-!
# A316666: Number of simple relaxed compacted binary trees of right height at most one with no sequences on level 1 and no final sequences on level 0.

The programs for A316666, the canonical program `A316666.P17198808934009079641` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316666 has offset 0).

The definition of A316666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316666.P17198808934009079641

`n*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A316666

/-- `n*a(n-1)+(n-1)*a(n-2)` -/
def P17198808934009079641.Spec : Prop :=
  ∀ n, P17198808934009079641.a n = A316666 n

theorem P17198808934009079641.correct : P17198808934009079641.Spec := by
  intro n
  simp only [A316666]

end A316666

/-! ## A316666.P9434201744579007615

`3*round((n+2)*n!/e)-(n+2)*n!`
-/

namespace A316666.P9434201744579007615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (((n + 2) * Nat.factorial n : ℝ) / Real.exp 1) - ((n + 2) * Nat.factorial n : ℤ)

end

end A316666.P9434201744579007615

namespace A316666

/-- `3*round((n+2)*n!/e)-(n+2)*n!` -/
def P9434201744579007615.Spec : Prop :=
  ∀ n, P9434201744579007615.a n = A316666 n

end A316666

/-! ## A316666.P10425248020852554814

`3*A000255(n)-n!-(n+1)!`
-/

namespace A316666.P10425248020852554814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000255 n - (Nat.factorial n : ℤ) - (Nat.factorial (n + 1) : ℤ)

end

end A316666.P10425248020852554814

namespace A316666

/-- `3*A000255(n)-n!-(n+1)!` -/
def P10425248020852554814.Spec : Prop :=
  ∀ n, P10425248020852554814.a n = A316666 n

end A316666

/-! ## A316666.P15630315567068268958

`abs(Δ[n*(3-a(n-1))])` with `a(0)=1`
-/

namespace A316666.P15630315567068268958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A316666.P15630315567068268958

namespace A316666

/-- `abs(Δ[n*(3-a(n-1))])` -/
def P15630315567068268958.Spec : Prop :=
  ∀ n, P15630315567068268958.a n = A316666 n

end A316666

/-! ## A316666.P6605746352405063538

`n*a(n-1)-(a(n-2)-n*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A316666.P6605746352405063538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2))

end

end A316666.P6605746352405063538

namespace A316666

/-- `n*a(n-1)-(a(n-2)-n*a(n-2))` -/
def P6605746352405063538.Spec : Prop :=
  ∀ n, P6605746352405063538.a n = A316666 n

theorem P6605746352405063538.correct : P6605746352405063538.Spec := by
  intro n
  simp only [A316666, Nat.add_sub_cancel, A316666.P6605746352405063538.a, A316666.P17198808934009079641.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A316666

/-! ## A316666.P4689163857500243689

`A176408(n)/(n+1)`
-/

namespace A316666.P4689163857500243689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176408 n : ℚ) / (n + 1 : ℚ)

end

end A316666.P4689163857500243689

namespace A316666

/-- `A176408(n)/(n+1)` -/
def P4689163857500243689.Spec : Prop :=
  ∀ n, P4689163857500243689.a n = (A316666 n : ℚ)

end A316666

/-!
# A316667: Squares visited by a knight moving on a spirally numbered board always to the lowest available unvisited square.

The programs for A316667, there is no canonical definition to state claims against.
-/

/-! ## A316667.P2525388010822983122

`A316328(n)+1`
-/

namespace A316667.P2525388010822983122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316328 n + 1

end

end A316667.P2525388010822983122

/-!
# A316668: Squares visited by king moves on a diagonally numbered board and moving to the lowest available unvisited square at each step.

The programs for A316668, there is no canonical definition to state claims against.
-/

/-! ## A316668.P14929525686446110299

`A316963(n)+1`
-/

namespace A316668.P14929525686446110299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316963 n + 1

end

end A316668.P14929525686446110299

/-! ## A316668.P15670439561552687477

`A008619(2*A316963(n))`
-/

namespace A316668.P15670439561552687477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A316963 n).toNat

end

end A316668.P15670439561552687477

/-! ## A316668.P13620913744192389231

`A052938(2*A316963(n))`
-/

namespace A316668.P13620913744192389231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A316963 n).toNat

end

end A316668.P13620913744192389231

/-! ## A316668.P11134003927254904387

`A028242(2*A316963(n))`
-/

namespace A316668.P11134003927254904387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A316963 n).toNat

end

end A316668.P11134003927254904387

/-! ## A316668.P16202517726713765042

`A131732(2*A316963(n))`
-/

namespace A316668.P16202517726713765042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A316963 n).toNat

end

end A316668.P16202517726713765042

/-! ## A316668.P14308453614466146521

`A008620(3*A316963(n))`
-/

namespace A316668.P14308453614466146521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A316963 n).toNat

end

end A316668.P14308453614466146521

/-! ## A316668.P9372708852522869186

`A008621(4*A316963(n))`
-/

namespace A316668.P9372708852522869186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A316963 n).toNat

end

end A316668.P9372708852522869186

/-! ## A316668.P2951970711244434213

`A008624(4*A316963(n))`
-/

namespace A316668.P2951970711244434213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A316963 n).toNat

end

end A316668.P2951970711244434213

/-! ## A316668.P5720243919209521525

`A008647(12*A316963(n))`
-/

namespace A316668.P5720243919209521525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (12 * A316963 n).toNat

end

end A316668.P5720243919209521525

/-!
# A316669: Squares visited by queen moves on a diagonally numbered board and moving to the lowest available unvisited square at each step.

The programs for A316669, the canonical program `A316669.P322650816524864639` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316669 has offset 1).

The definition of A316669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316669.P322650816524864639

`A158821(n)+n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A316669

/-- `A158821(n)+n` -/
def P322650816524864639.Spec : Prop :=
  ∀ n, P322650816524864639.a n = A316669 (n + 1)

theorem P322650816524864639.correct : P322650816524864639.Spec := by
  intro n
  simp only [A316669, Nat.add_sub_cancel]

end A316669

/-! ## A316669.P2744309941810554358

`abs(2-A131033(n+1))+n`
-/

namespace A316669.P2744309941810554358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A131033 (n + 1)| + (n : ℤ)

end

end A316669.P2744309941810554358

namespace A316669

/-- `abs(2-A131033(n+1))+n` -/
def P2744309941810554358.Spec : Prop :=
  ∀ n, P2744309941810554358.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P1398612718398794066

`A127701(A028310(n))+n`
-/

namespace A316669.P1398612718398794066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127701 (A028310 n).toNat + (n : ℤ)

end

end A316669.P1398612718398794066

namespace A316669

/-- `A127701(A028310(n))+n` -/
def P1398612718398794066.Spec : Prop :=
  ∀ n, P1398612718398794066.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P6401681552554318663

`1-(A024000(n)-A158821(n))`
-/

namespace A316669.P6401681552554318663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A024000 n - A158821 n)

end

end A316669.P6401681552554318663

namespace A316669

/-- `1-(A024000(n)-A158821(n))` -/
def P6401681552554318663.Spec : Prop :=
  ∀ n, P6401681552554318663.a n = A316669 (n + 1)

theorem P6401681552554318663.correct : P6401681552554318663.Spec := by
  intro n
  simp only [A316669, Nat.add_sub_cancel, A316669.P6401681552554318663.a, A316669.P322650816524864639.a, A024000, A024000.P8748414335487061084.a, A158821, A158821.P7475338757825604441.a, A131033, A131033.P4849263893902669054.a, A023532, A023532.P12646681522116481213.a, A130296, A130296.P7958133824011622237.a, A099627, A099627.P2788997961149202424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A316669

/-! ## A316669.P8547523747457235670

`A166124(n)+n-A167407(n)`
-/

namespace A316669.P8547523747457235670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166124 n + ((n : ℤ) - A167407 n)

end

end A316669.P8547523747457235670

namespace A316669

/-- `A166124(n)+n-A167407(n)` -/
def P8547523747457235670.Spec : Prop :=
  ∀ n, P8547523747457235670.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P1466512925069645077

`A103451(n)*A153861(n)+n`
-/

namespace A316669.P1466512925069645077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A153861 n + (n : ℤ)

end

end A316669.P1466512925069645077

namespace A316669

/-- `A103451(n)*A153861(n)+n` -/
def P1466512925069645077.Spec : Prop :=
  ∀ n, P1466512925069645077.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P5343033150134902761

`A103451(n)*A193739(n)+n`
-/

namespace A316669.P5343033150134902761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A193739 n + (n : ℤ)

end

end A316669.P5343033150134902761

namespace A316669

/-- `A103451(n)*A193739(n)+n` -/
def P5343033150134902761.Spec : Prop :=
  ∀ n, P5343033150134902761.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P14883393027553822387

`A103451(n)*A236376(n)+n`
-/

namespace A316669.P14883393027553822387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236376 n + (n : ℤ)

end

end A316669.P14883393027553822387

namespace A316669

/-- `A103451(n)*A236376(n)+n` -/
def P14883393027553822387.Spec : Prop :=
  ∀ n, P14883393027553822387.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P12260153077331527007

`and(A103452(n), A153861(n))+n`
-/

namespace A316669.P12260153077331527007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 n) (A153861 n) + (n : ℤ)

end

end A316669.P12260153077331527007

namespace A316669

/-- `and(A103452(n), A153861(n))+n` -/
def P12260153077331527007.Spec : Prop :=
  ∀ n, P12260153077331527007.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P18097796634281073818

`and(A103452(n), A193739(n))+n`
-/

namespace A316669.P18097796634281073818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 n) (A193739 n) + (n : ℤ)

end

end A316669.P18097796634281073818

namespace A316669

/-- `and(A103452(n), A193739(n))+n` -/
def P18097796634281073818.Spec : Prop :=
  ∀ n, P18097796634281073818.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P7434933238001964444

`and(A103452(n), A236376(n))+n`
-/

namespace A316669.P7434933238001964444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 n) (A236376 n) + (n : ℤ)

end

end A316669.P7434933238001964444

namespace A316669

/-- `and(A103452(n), A236376(n))+n` -/
def P7434933238001964444.Spec : Prop :=
  ∀ n, P7434933238001964444.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P173075888740803185

`A130296(n+1)+n-A023532(n)`
-/

namespace A316669.P173075888740803185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + ((n : ℤ) - A023532 n)

end

end A316669.P173075888740803185

namespace A316669

/-- `A130296(n+1)+n-A023532(n)` -/
def P173075888740803185.Spec : Prop :=
  ∀ n, P173075888740803185.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P15718464747628692209

`A007318(n+1)*A103451(n)+n`
-/

namespace A316669.P15718464747628692209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) * A103451 n + (n : ℤ)

end

end A316669.P15718464747628692209

namespace A316669

/-- `A007318(n+1)*A103451(n)+n` -/
def P15718464747628692209.Spec : Prop :=
  ∀ n, P15718464747628692209.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P6438117025146535891

`gcd(A127648(n), A144217(n+1))+n`
-/

namespace A316669.P6438117025146535891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127648 n) (A144217 (n + 1)) + n

end

end A316669.P6438117025146535891

namespace A316669

/-- `gcd(A127648(n), A144217(n+1))+n` -/
def P6438117025146535891.Spec : Prop :=
  ∀ n, (P6438117025146535891.a n : ℤ) = A316669 (n + 1)

end A316669

/-! ## A316669.P3687428856501329899

`floor(ratio[A007318(n)]/A007318(n))+n`
-/

namespace A316669.P3687428856501329899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ) / (A007318 n : ℚ)⌋ + (n : ℤ)

end

end A316669.P3687428856501329899

namespace A316669

/-- `floor(ratio[A007318(n)]/A007318(n))+n` -/
def P3687428856501329899.Spec : Prop :=
  ∀ n, P3687428856501329899.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P12745091811522206335

`C(A007318(n+1), A007318(n)²)+n`
-/

namespace A316669.P12745091811522206335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 (n + 1)).toNat (A007318 n ^ 2).toNat + n

end

end A316669.P12745091811522206335

namespace A316669

/-- `C(A007318(n+1), A007318(n)²)+n` -/
def P12745091811522206335.Spec : Prop :=
  ∀ n, (P12745091811522206335.a n : ℤ) = A316669 (n + 1)

end A316669

/-! ## A316669.P1953257076615718514

`floor(ratio[A193592(n)]+n)`
-/

namespace A316669.P1953257076615718514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)⌋

end

end A316669.P1953257076615718514

namespace A316669

/-- `floor(ratio[A193592(n)]+n)` -/
def P1953257076615718514.Spec : Prop :=
  ∀ n, P1953257076615718514.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P15742510454219858121

`Δ[A193592(n)+A000124(n)]`
-/

namespace A316669.P15742510454219858121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316669.P15742510454219858121

namespace A316669

/-- `Δ[A193592(n)+A000124(n)]` -/
def P15742510454219858121.Spec : Prop :=
  ∀ n, P15742510454219858121.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P862087262036377408

`Δ[A193592(n)+A000217(n)]`
-/

namespace A316669.P862087262036377408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316669.P862087262036377408

namespace A316669

/-- `Δ[A193592(n)+A000217(n)]` -/
def P862087262036377408.Spec : Prop :=
  ∀ n, P862087262036377408.a n = A316669 (n + 1)

end A316669

/-! ## A316669.P361662077403664000

`Δ[A025581(n)%A173741(n)]+n+1`
-/

namespace A316669.P361662077403664000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n) (A173741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) + 1

end

end A316669.P361662077403664000

namespace A316669

/-- `Δ[A025581(n)%A173741(n)]+n+1` -/
def P361662077403664000.Spec : Prop :=
  ∀ n, P361662077403664000.a n = A316669 (n + 1)

end A316669

/-!
# A316670: Squares visited by bishop moves on a diagonally numbered board and moving to the lowest available unvisited square at each step.

The programs for A316670, the canonical program `A316670.P4604081527697996877` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316670 has offset 1).

The definition of A316670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5030 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316670.P4604081527697996877

`A316669(A007606(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A316670

/-- `A316669(A007606(n+1))` -/
def P4604081527697996877.Spec : Prop :=
  ∀ n, P4604081527697996877.a n = A316670 (n + 1)

theorem P4604081527697996877.correct : P4604081527697996877.Spec := by
  intro n
  simp only [A316670, Nat.add_sub_cancel]

end A316670

/-! ## A316670.P13918519720834323544

`filter[A316669(n+1), A057211(#)]`
-/

namespace A316670.P13918519720834323544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057211 (f1 j).toNat = 1) n)

end

end A316670.P13918519720834323544

namespace A316670

/-- `filter[A316669(n+1), A057211(#)]` -/
def P13918519720834323544.Spec : Prop :=
  ∀ n, P13918519720834323544.a n = A316670 (n + 1)

end A316670

/-! ## A316670.P294648968924961530

`A316965(n)+1`
-/

namespace A316670.P294648968924961530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316965 n + 1

end

end A316670.P294648968924961530

namespace A316670

/-- `A316965(n)+1` -/
def P294648968924961530.Spec : Prop :=
  ∀ n, P294648968924961530.a n = A316670 (n + 1)

theorem P294648968924961530.correct : P294648968924961530.Spec := by
  intro n
  simp only [A316670, Nat.add_sub_cancel, A316670.P294648968924961530.a, A316670.P4604081527697996877.a, A007606, A007606.P7799483194053309628.f1, A007606.P7799483194053309628.a, A316669, A316669.P322650816524864639.a, A316965, A316965.P11469551014600044917.a, A158821, A158821.P7475338757825604441.a, A381232, A381232.P8771641921475039308.a, A131033, A131033.P4849263893902669054.a, A023532, A023532.P12646681522116481213.a, A130296, A130296.P7958133824011622237.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A316670

/-! ## A316670.P2957574222489657529

`A080513(2*A316965(n))`
-/

namespace A316670.P2957574222489657529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A316965 n).toNat

end

end A316670.P2957574222489657529

namespace A316670

/-- `A080513(2*A316965(n))` -/
def P2957574222489657529.Spec : Prop :=
  ∀ n, P2957574222489657529.a n = A316670 (n + 1)

end A316670

/-! ## A316670.P5749977801928619970

`A158416(2*A316965(n))`
-/

namespace A316670.P5749977801928619970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * A316965 n).toNat

end

end A316670.P5749977801928619970

namespace A316670

/-- `A158416(2*A316965(n))` -/
def P5749977801928619970.Spec : Prop :=
  ∀ n, P5749977801928619970.a n = A316670 (n + 1)

end A316670

/-! ## A316670.P13217239305089833797

`1-(A005888(A005888(n))-A316965(n))`
-/

namespace A316670.P13217239305089833797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A005888 (A005888 n).toNat - A316965 n)

end

end A316670.P13217239305089833797

namespace A316670

/-- `1-(A005888(A005888(n))-A316965(n))` -/
def P13217239305089833797.Spec : Prop :=
  ∀ n, P13217239305089833797.a n = A316670 (n + 1)

end A316670

/-! ## A316670.P7064295293659412184

`1-(A090620(A000120(n))-A316965(n))`
-/

namespace A316670.P7064295293659412184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A090620 (A000120 n).toNat - A316965 n)

end

end A316670.P7064295293659412184

namespace A316670

/-- `1-(A090620(A000120(n))-A316965(n))` -/
def P7064295293659412184.Spec : Prop :=
  ∀ n, P7064295293659412184.a n = A316670 (n + 1)

end A316670

/-! ## A316670.P17879357566226948173

`A316964(A161983(n))+1`
-/

namespace A316670.P17879357566226948173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A161983 n).toNat + 1

end

end A316670.P17879357566226948173

namespace A316670

/-- `A316964(A161983(n))+1` -/
def P17879357566226948173.Spec : Prop :=
  ∀ n, P17879357566226948173.a n = A316670 (n + 1)

end A316670

/-!
# A316671: Squares visited by moving diagonally one square on a diagonally numbered board and moving to the lowest available unvisited square at each step.

The programs for A316671, the canonical program `A316671.P1677294624184878983` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316671 has offset 1).

The definition of A316671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316671.P1677294624184878983

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=4, a(3)=12, a(4)=11`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A316671

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1677294624184878983.Spec : Prop :=
  ∀ n, P1677294624184878983.a n = A316671 (n + 1)

theorem P1677294624184878983.correct : P1677294624184878983.Spec := by
  intro n
  simp only [A316671, Nat.add_sub_cancel]

end A316671

/-! ## A316671.P1096532849870940359

`C(and(n+3, -2), 2)-n`
-/

namespace A316671.P1096532849870940359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Int.land (n + 3 : ℤ) (-2)).toNat 2 : ℤ) - (n : ℤ)

end

end A316671.P1096532849870940359

namespace A316671

/-- `C(and(n+3, -2), 2)-n` -/
def P1096532849870940359.Spec : Prop :=
  ∀ n, P1096532849870940359.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P15029733914165960594

`∑[n-1]+lcm(2, n+2)`
-/

namespace A316671.P15029733914165960594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lcm 2 (n + 2) : ℤ)

end

end A316671.P15029733914165960594

namespace A316671

/-- `∑[n-1]+lcm(2, n+2)` -/
def P15029733914165960594.Spec : Prop :=
  ∀ n, P15029733914165960594.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P1881055944578752176

`∑[n]+(n+3)^(n%2)`
-/

namespace A316671.P1881055944578752176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3) ^ (n % 2)

end

end A316671.P1881055944578752176

namespace A316671

/-- `∑[n]+(n+3)^(n%2)` -/
def P1881055944578752176.Spec : Prop :=
  ∀ n, (P1881055944578752176.a n : ℤ) = A316671 (n + 1)

end A316671

/-! ## A316671.P9946581855749142299

`∑[n]+(n+3)^and(1, n)`
-/

namespace A316671.P9946581855749142299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3) ^ Nat.land 1 n

end

end A316671.P9946581855749142299

namespace A316671

/-- `∑[n]+(n+3)^and(1, n)` -/
def P9946581855749142299.Spec : Prop :=
  ∀ n, (P9946581855749142299.a n : ℤ) = A316671 (n + 1)

end A316671

/-! ## A316671.P9379581451942261955

`∑[n]+C(n+3, and(1, n))`
-/

namespace A316671.P9379581451942261955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 3) (Nat.land 1 n)

end

end A316671.P9379581451942261955

namespace A316671

/-- `∑[n]+C(n+3, and(1, n))` -/
def P9379581451942261955.Spec : Prop :=
  ∀ n, (P9379581451942261955.a n : ℤ) = A316671 (n + 1)

end A316671

/-! ## A316671.P15493169587584772966

`C(or(1, n+1)+1, 2)-n`
-/

namespace A316671.P15493169587584772966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 (n + 1) + 1) 2 : ℤ) - (n : ℤ)

end

end A316671.P15493169587584772966

namespace A316671

/-- `C(or(1, n+1)+1, 2)-n` -/
def P15493169587584772966.Spec : Prop :=
  ∀ n, P15493169587584772966.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P5533461895578106423

`C(and(1, n)+2+n, 2)-n`
-/

namespace A316671.P5533461895578106423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.land 1 n + 2 + n) 2 : ℤ) - (n : ℤ)

end

end A316671.P5533461895578106423

namespace A316671

/-- `C(and(1, n)+2+n, 2)-n` -/
def P5533461895578106423.Spec : Prop :=
  ∀ n, P5533461895578106423.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P6980675853650682984

`(n+2)*and(1, n)+∑[n]+1`
-/

namespace A316671.P6980675853650682984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.land 1 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316671.P6980675853650682984

namespace A316671

/-- `(n+2)*and(1, n)+∑[n]+1` -/
def P6980675853650682984.Spec : Prop :=
  ∀ n, (P6980675853650682984.a n : ℤ) = A316671 (n + 1)

end A316671

/-! ## A316671.P4510290321413367074

`∑[n]+gcd(n+3, and(1, n+1))`
-/

namespace A316671.P4510290321413367074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd (n + 3) (Nat.land 1 (n + 1))

end

end A316671.P4510290321413367074

namespace A316671

/-- `∑[n]+gcd(n+3, and(1, n+1))` -/
def P4510290321413367074.Spec : Prop :=
  ∀ n, (P4510290321413367074.a n : ℤ) = A316671 (n + 1)

end A316671

/-! ## A316671.P16081577269084630146

`C(gcd(2, n+1)+n+1, 2)-n`
-/

namespace A316671.P16081577269084630146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.gcd 2 (n + 1) + (n + 1)) 2 : ℤ) - (n : ℤ)

end

end A316671.P16081577269084630146

namespace A316671

/-- `C(gcd(2, n+1)+n+1, 2)-n` -/
def P16081577269084630146.Spec : Prop :=
  ∀ n, P16081577269084630146.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P17671267043197513257

`C(n+3, and(1, n))+C(n+1, 2)`
-/

namespace A316671.P17671267043197513257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (Nat.land 1 n) + Nat.choose (n + 1) 2

end

end A316671.P17671267043197513257

namespace A316671

/-- `C(n+3, and(1, n))+C(n+1, 2)` -/
def P17671267043197513257.Spec : Prop :=
  ∀ n, (P17671267043197513257.a n : ℤ) = A316671 (n + 1)

end A316671

/-! ## A316671.P16810312419120096997

`floor(∑[n]²/a(n-1))+3` with `a(0)=1, a(1)=5`
-/

namespace A316671.P16810312419120096997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋ + 3

end

end A316671.P16810312419120096997

namespace A316671

/-- `floor(∑[n]²/a(n-1))+3` -/
def P16810312419120096997.Spec : Prop :=
  ∀ n, P16810312419120096997.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P18242811131224527887

`C(char[2*n+1]+n+2, 2)-n`
-/

namespace A316671.P18242811131224527887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + (n + 2)) 2 : ℤ) - (n : ℤ)

end

end A316671.P18242811131224527887

namespace A316671

/-- `C(char[2*n+1]+n+2, 2)-n` -/
def P18242811131224527887.Spec : Prop :=
  ∀ n, P18242811131224527887.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P2863448124961048160

`∑[n]+C(xor(1, n+1), n+1)+1`
-/

namespace A316671.P2863448124961048160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (Nat.xor 1 (n + 1)) (n + 1) + 1

end

end A316671.P2863448124961048160

namespace A316671

/-- `∑[n]+C(xor(1, n+1), n+1)+1` -/
def P2863448124961048160.Spec : Prop :=
  ∀ n, (P2863448124961048160.a n : ℤ) = A316671 (n + 1)

end A316671

/-! ## A316671.P18168426253190800454

`∑[n-1]+2*gcd(n+2, ∑[n+1])`
-/

namespace A316671.P18168426253190800454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A316671.P18168426253190800454

namespace A316671

/-- `∑[n-1]+2*gcd(n+2, ∑[n+1])` -/
def P18168426253190800454.Spec : Prop :=
  ∀ n, P18168426253190800454.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P12082678879137814437

`A316966(n)+1`
-/

namespace A316671.P12082678879137814437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316966 n + 1

end

end A316671.P12082678879137814437

namespace A316671

/-- `A316966(n)+1` -/
def P12082678879137814437.Spec : Prop :=
  ∀ n, P12082678879137814437.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P4610087002666526127

`A000217(or(1, n+1))-n`
-/

namespace A316671.P4610087002666526127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.lor 1 (n + 1)) - (n : ℤ)

end

end A316671.P4610087002666526127

namespace A316671

/-- `A000217(or(1, n+1))-n` -/
def P4610087002666526127.Spec : Prop :=
  ∀ n, P4610087002666526127.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P10805427110630027421

`A000217(char[Δ[n²]]+n+1)-n`
-/

namespace A316671.P10805427110630027421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (n + 1)) - (n : ℤ)

end

end A316671.P10805427110630027421

namespace A316671

/-- `A000217(char[Δ[n²]]+n+1)-n` -/
def P10805427110630027421.Spec : Prop :=
  ∀ n, P10805427110630027421.a n = A316671 (n + 1)

end A316671

/-! ## A316671.P4300112452896117993

`A128223(n)+A019303(n)`
-/

namespace A316671.P4300112452896117993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128223 n + A019303 n

end

end A316671.P4300112452896117993

namespace A316671

/-- `A128223(n)+A019303(n)` -/
def P4300112452896117993.Spec : Prop :=
  ∀ n, P4300112452896117993.a n = A316671 (n + 1)

end A316671

/-!
# A316672: Numbers k for which 120*k + 169 is a square.

The programs for A316672, the canonical program `A316672.P3971549734014243288` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316672 has offset 1).

The definition of A316672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316672.P3971549734014243288

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=-1, a(1)=0, a(2)=1, a(3)=3, a(4)=10, a(5)=14, a(6)=17, a(7)=22, a(8)=36`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A316672

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P3971549734014243288.Spec : Prop :=
  ∀ n, P3971549734014243288.a n = A316672 (n + 1)

theorem P3971549734014243288.correct : P3971549734014243288.Spec := by
  intro n
  simp only [A316672, Nat.add_sub_cancel]

end A316672

/-! ## A316672.P1899011281113968897

`A214429(n)-1`
-/

namespace A316672.P1899011281113968897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214429 n - 1

end

end A316672.P1899011281113968897

namespace A316672

/-- `A214429(n)-1` -/
def P1899011281113968897.Spec : Prop :=
  ∀ n, P1899011281113968897.a n = A316672 (n + 1)

end A316672

/-! ## A316672.P360662442399429980

`A307445(A255313(n+1))+A214429(n)`
-/

namespace A316672.P360662442399429980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A255313 (n + 1)).toNat + A214429 n

end

end A316672.P360662442399429980

namespace A316672

/-- `A307445(A255313(n+1))+A214429(n)` -/
def P360662442399429980.Spec : Prop :=
  ∀ n, P360662442399429980.a n = A316672 (n + 1)

end A316672

/-! ## A316672.P8624034831451373606

`A307428(A000040(n+1))+A214429(n)`
-/

namespace A316672.P8624034831451373606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A000040 (n + 1)).toNat + A214429 n

end

end A316672.P8624034831451373606

namespace A316672

/-- `A307428(A000040(n+1))+A214429(n)` -/
def P8624034831451373606.Spec : Prop :=
  ∀ n, P8624034831451373606.a n = A316672 (n + 1)

end A316672

/-! ## A316672.P15211488241617800247

`A307445(A198777(n+1))+A214429(n)`
-/

namespace A316672.P15211488241617800247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A198777 (n + 1)).toNat + A214429 n

end

end A316672.P15211488241617800247

namespace A316672

/-- `A307445(A198777(n+1))+A214429(n)` -/
def P15211488241617800247.Spec : Prop :=
  ∀ n, P15211488241617800247.a n = A316672 (n + 1)

end A316672

/-! ## A316672.P13418642083937704472

`A307445(A031369(n+1))+A214429(n)`
-/

namespace A316672.P13418642083937704472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A031369 (n + 1)).toNat + A214429 n

end

end A316672.P13418642083937704472

namespace A316672

/-- `A307445(A031369(n+1))+A214429(n)` -/
def P13418642083937704472.Spec : Prop :=
  ∀ n, P13418642083937704472.a n = A316672 (n + 1)

end A316672

/-! ## A316672.P7200804283528127145

`eq[1, abs(A116915(n))]-1`
-/

namespace A316672.P7200804283528127145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116915 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A316672.P7200804283528127145

namespace A316672

/-- `eq[1, abs(A116915(n))]-1` -/
def P7200804283528127145.Spec : Prop :=
  ∀ n, P7200804283528127145.a n = A316672 (n + 1)

end A316672

/-! ## A316672.P11333666272912769590

`eq[1, A113431(n)²]-1`
-/

namespace A316672.P11333666272912769590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113431 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A316672.P11333666272912769590

namespace A316672

/-- `eq[1, A113431(n)²]-1` -/
def P11333666272912769590.Spec : Prop :=
  ∀ n, P11333666272912769590.a n = A316672 (n + 1)

end A316672

/-! ## A316672.P4102178981936831520

`A023443(A214429(n))`
-/

namespace A316672.P4102178981936831520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A214429 n).toNat

end

end A316672.P4102178981936831520

namespace A316672

/-- `A023443(A214429(n))` -/
def P4102178981936831520.Spec : Prop :=
  ∀ n, P4102178981936831520.a n = A316672 (n + 1)

end A316672

/-!
# A316673: Number of paths from (0,0,0) to (n,n,n) that always move closer to (n,n,n).

The programs for A316673, there is no canonical definition to state claims against.
-/

/-! ## A316673.P14405347027863128782

`A126086(n)*ceil(2^(n-1))`
-/

namespace A316673.P14405347027863128782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126086 n * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A316673.P14405347027863128782

/-! ## A316673.P6460295251326907115

`A011782(n)*A126086(n)`
-/

namespace A316673.P6460295251326907115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A126086 n

end

end A316673.P6460295251326907115

/-! ## A316673.P5564873321142885286

`∑[A034008(n)]*A126086(n)`
-/

namespace A316673.P5564873321142885286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A126086 n

end

end A316673.P5564873321142885286

/-! ## A316673.P6000042095591657085

`A016116(A004273(n))*A126086(n)`
-/

namespace A316673.P6000042095591657085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004273 n).toNat * A126086 n

end

end A316673.P6000042095591657085

/-! ## A316673.P6879430644169227740

`A016116(A004275(n))*A126086(n)`
-/

namespace A316673.P6879430644169227740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004275 n).toNat * A126086 n

end

end A316673.P6879430644169227740

/-! ## A316673.P6313510063857771690

`A059576(A000096(n))*A126086(n)`
-/

namespace A316673.P6313510063857771690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (A000096 n).toNat * A126086 n

end

end A316673.P6313510063857771690

/-! ## A316673.P2068324034686117660

`A059576(A000217(n))*A126086(n)`
-/

namespace A316673.P2068324034686117660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 (A000217 n).toNat * A126086 n

end

end A316673.P2068324034686117660

/-! ## A316673.P6947396972472930276

`A105306(A000124(n))*A126086(n)`
-/

namespace A316673.P6947396972472930276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A000124 n).toNat * A126086 n

end

end A316673.P6947396972472930276

/-! ## A316673.P16308111584363072687

`A059268(A055998(n))*A126086(n)`
-/

namespace A316673.P16308111584363072687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A055998 n).toNat * A126086 n

end

end A316673.P16308111584363072687

/-!
# A316675: Triangle read by rows: T(n,k) gives the number of ways to stack n triangles in a valley so that the right wall has k triangles for n >= 0 and 0 <= k <= n.

The programs for A316675, there is no canonical definition to state claims against.
-/

/-! ## A316675.P4507858412792929921

`A005136(A274537(n))`
-/

namespace A316675.P4507858412792929921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A274537 n).toNat

end

end A316675.P4507858412792929921

/-! ## A316675.P10517502651758619001

`A333768(3*A274537(n))`
-/

namespace A316675.P10517502651758619001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (3 * A274537 n).toNat

end

end A316675.P10517502651758619001

/-! ## A316675.P17847481568284630144

`A140885(5*A274537(n))`
-/

namespace A316675.P17847481568284630144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140885 (5 * A274537 n).toNat

end

end A316675.P17847481568284630144

/-! ## A316675.P1425416709805967264

`A231813(A274537(n)^3)`
-/

namespace A316675.P1425416709805967264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (A274537 n ^ 3).toNat

end

end A316675.P1425416709805967264

/-! ## A316675.P5023526381307073984

`A231813(A274537(n)²*A274537(n))`
-/

namespace A316675.P5023526381307073984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (A274537 n ^ 2 * A274537 n).toNat

end

end A316675.P5023526381307073984

/-!
# A316677: Number of paths from {0}^n to {n}^n that always move closer to {n}^n.

The programs for A316677, there is no canonical definition to state claims against.
-/

/-! ## A316677.P871333190151832473

`A262810(n)*ceil(2^(n-1))`
-/

namespace A316677.P871333190151832473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262810 n * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A316677.P871333190151832473

/-! ## A316677.P14680922137519387577

`A316674(∑[4*n])`
-/

namespace A316677.P14680922137519387577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316674 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316677.P14680922137519387577

/-! ## A316677.P16103545110780034882

`A011782(n)*A262810(n)`
-/

namespace A316677.P16103545110780034882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A262810 n

end

end A316677.P16103545110780034882

/-! ## A316677.P9835531625803918648

`A000010(2^n)*A262810(n)`
-/

namespace A316677.P9835531625803918648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n) * A262810 n

end

end A316677.P9835531625803918648

/-! ## A316677.P12147134458896111117

`A011782(n)*A262809(∑[4*n])`
-/

namespace A316677.P12147134458896111117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A262809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316677.P12147134458896111117

/-!
# A316681: a(n) = floor(n*log(n)/2).

The programs for A316681, the canonical program `A316681.P12879441734712874235` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316681 has offset 1).

The definition of A316681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*log(n+1)/2)` (program `A316681.P12879441734712874235`, by `A316681.P12879441734712874235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316681.P12879441734712874235

`floor((n+1)*log(n+1)/2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A316681

/-- `floor((n+1)*log(n+1)/2)` -/
def P12879441734712874235.Spec : Prop :=
  ∀ n, P12879441734712874235.a n = A316681 (n + 1)

theorem P12879441734712874235.correct : P12879441734712874235.Spec := by
  intro n
  simp only [A316681, Nat.add_sub_cancel]

end A316681

/-! ## A316681.P685655503086243233

`A004526(A050504(n+1))`
-/

namespace A316681.P685655503086243233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A050504 (n + 1)).toNat

end

end A316681.P685655503086243233

namespace A316681

/-- `A004526(A050504(n+1))` -/
def P685655503086243233.Spec : Prop :=
  ∀ n, P685655503086243233.a n = A316681 (n + 1)

end A316681

/-! ## A316681.P2665235549099855171

`A065033(A050502(n+1))-1`
-/

namespace A316681.P2665235549099855171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A050502 (n + 1)).toNat - 1

end

end A316681.P2665235549099855171

namespace A316681

/-- `A065033(A050502(n+1))-1` -/
def P2665235549099855171.Spec : Prop :=
  ∀ n, P2665235549099855171.a n = A316681 (n + 1)

end A316681

/-! ## A316681.P6851511495284749467

`A028242(or(1, A050504(n+1)))`
-/

namespace A316681.P6851511495284749467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A050504 (n + 1))).toNat

end

end A316681.P6851511495284749467

namespace A316681

/-- `A028242(or(1, A050504(n+1)))` -/
def P6851511495284749467.Spec : Prop :=
  ∀ n, P6851511495284749467.a n = A316681 (n + 1)

end A316681

/-! ## A316681.P6344990276083635971

`A123108(or(1, A050504(n+1)))`
-/

namespace A316681.P6344990276083635971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.lor 1 (A050504 (n + 1))).toNat

end

end A316681.P6344990276083635971

namespace A316681

/-- `A123108(or(1, A050504(n+1)))` -/
def P6344990276083635971.Spec : Prop :=
  ∀ n, P6344990276083635971.a n = A316681 (n + 1)

end A316681

/-! ## A316681.P16331444367994527503

`A123108(A050504(n+1)+2)-1`
-/

namespace A316681.P16331444367994527503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A050504 (n + 1) + 2).toNat - 1

end

end A316681.P16331444367994527503

namespace A316681

/-- `A123108(A050504(n+1)+2)-1` -/
def P16331444367994527503.Spec : Prop :=
  ∀ n, P16331444367994527503.a n = A316681 (n + 1)

end A316681

/-! ## A316681.P14325715815630820568

`A008619(A050504(n+1)+2)-2`
-/

namespace A316681.P14325715815630820568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A050504 (n + 1) + 2).toNat - 2

end

end A316681.P14325715815630820568

namespace A316681

/-- `A008619(A050504(n+1)+2)-2` -/
def P14325715815630820568.Spec : Prop :=
  ∀ n, P14325715815630820568.a n = A316681 (n + 1)

end A316681

/-! ## A316681.P3730862259052309295

`A002265(2*A050504(n+1))`
-/

namespace A316681.P3730862259052309295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A050504 (n + 1)).toNat

end

end A316681.P3730862259052309295

namespace A316681

/-- `A002265(2*A050504(n+1))` -/
def P3730862259052309295.Spec : Prop :=
  ∀ n, P3730862259052309295.a n = A316681 (n + 1)

end A316681

/-! ## A316681.P12551600483189775187

`A002265(A050504(n+1)+A050504(n+1)+1)`
-/

namespace A316681.P12551600483189775187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A050504 (n + 1) + (A050504 (n + 1) + 1)).toNat

end

end A316681.P12551600483189775187

namespace A316681

/-- `A002265(A050504(n+1)+A050504(n+1)+1)` -/
def P12551600483189775187.Spec : Prop :=
  ∀ n, P12551600483189775187.a n = A316681 (n + 1)

end A316681

/-! ## A316681.P14461472797347148525

`A008615(3*A050504(n+1))`
-/

namespace A316681.P14461472797347148525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A050504 (n + 1)).toNat

end

end A316681.P14461472797347148525

namespace A316681

/-- `A008615(3*A050504(n+1))` -/
def P14461472797347148525.Spec : Prop :=
  ∀ n, P14461472797347148525.a n = A316681 (n + 1)

end A316681

/-!
# A316682: Number of nXn 0..1 arrays with every element unequal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316682, there is no canonical definition to state claims against.
-/

/-! ## A316682.P17236804105710435744

`A316686(∑[4*n]+1)`
-/

namespace A316682.P17236804105710435744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316682.P17236804105710435744

/-! ## A316682.P14093762261949254754

`A316686(A001844(n))+char[10]`
-/

namespace A316682.P14093762261949254754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316682.P14093762261949254754

/-! ## A316682.P4866998670833712521

`A178489(n)*A316686(A001844(n))`
-/

namespace A316682.P4866998670833712521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A316686 (A001844 n).toNat

end

end A316682.P4866998670833712521

/-! ## A316682.P416401441630697946

`Δ[A004185(n)]*A316686(A001844(n))`
-/

namespace A316682.P416401441630697946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A316686 (A001844 n).toNat

end

end A316682.P416401441630697946

/-! ## A316682.P17253896108552359763

`char[A121207(n)]*A316686(A001844(n))`
-/

namespace A316682.P17253896108552359763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A316686 (A001844 n).toNat

end

end A316682.P17253896108552359763

/-!
# A316683: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316683, there is no canonical definition to state claims against.
-/

/-! ## A316683.P6268261279299867401

`A316686(A374005(n+1))`
-/

namespace A316683.P6268261279299867401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A374005 (n + 1)).toNat

end

end A316683.P6268261279299867401

/-! ## A316683.P16372517278279225888

`A316686(A167499(n+3))`
-/

namespace A316683.P16372517278279225888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A167499 (n + 3)).toNat

end

end A316683.P16372517278279225888

/-! ## A316683.P16064967910322391693

`A316686(A155212(n)+13)`
-/

namespace A316683.P16064967910322391693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A155212 n + 13).toNat

end

end A316683.P16064967910322391693

/-! ## A316683.P15809885967641833763

`A316686(A141214(n+1)+8)`
-/

namespace A316683.P15809885967641833763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A141214 (n + 1) + 8).toNat

end

end A316683.P15809885967641833763

/-! ## A316683.P4518768285380357022

`A316686(Δ[A264443(n)])`
-/

namespace A316683.P4518768285380357022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (f1 (n + 1) - f1 n).toNat

end

end A316683.P4518768285380357022

/-!
# A316684: Number of n X 6 0..1 arrays with every element unequal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316684, there is no canonical definition to state claims against.
-/

/-! ## A316684.P15138927815115942148

`A316686(A374007(n+1))`
-/

namespace A316684.P15138927815115942148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A374007 (n + 1)).toNat

end

end A316684.P15138927815115942148

/-! ## A316684.P3667364271449291656

`A316686(A000096(n+5)-(n-1))`
-/

namespace A316684.P3667364271449291656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A316684.P3667364271449291656

/-! ## A316684.P13200437139924792179

`A316686(A052905(n+3))`
-/

namespace A316684.P13200437139924792179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A052905 (n + 3)).toNat

end

end A316684.P13200437139924792179

/-! ## A316684.P10082759812439997109

`A316686(eq[3, A219347(n)])`
-/

namespace A316684.P10082759812439997109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316684.P10082759812439997109

/-! ## A316684.P11978974982796485653

`A316686(eq[6, A200370(n+1)])`
-/

namespace A316684.P11978974982796485653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316684.P11978974982796485653

/-!
# A316685: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316685, there is no canonical definition to state claims against.
-/

/-! ## A316685.P10181192508717883223

`A316686(A374008(n+1))`
-/

namespace A316685.P10181192508717883223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A374008 (n + 1)).toNat

end

end A316685.P10181192508717883223

/-! ## A316685.P13599097555915822148

`A316686(A000124(n+6)+6)`
-/

namespace A316685.P13599097555915822148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A000124 (n + 6) + 6).toNat

end

end A316685.P13599097555915822148

/-! ## A316685.P12523157379856128602

`A316686(A000096(n+5)+8)`
-/

namespace A316685.P12523157379856128602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A000096 (n + 5) + 8).toNat

end

end A316685.P12523157379856128602

/-! ## A316685.P17667040190634771751

`A316686(eq[8, A131818(n+1)])`
-/

namespace A316685.P17667040190634771751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316685.P17667040190634771751

/-! ## A316685.P2736934244551554117

`A316686(Δ[A023551(n+1)]+13)`
-/

namespace A316685.P2736934244551554117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (f1 (n + 1) - f1 n + 13).toNat

end

end A316685.P2736934244551554117

/-!
# A316687: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316687, there is no canonical definition to state claims against.
-/

/-! ## A316687.P15770931147714324044

`A316693(∑[4*n]+1)`
-/

namespace A316687.P15770931147714324044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316687.P15770931147714324044

/-! ## A316687.P10996667107034383359

`record[A003982(n)*A316693(n+1)]`
-/

namespace A316687.P10996667107034383359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316687.P10996667107034383359

/-! ## A316687.P15142093303247763070

`record[A214505(n)*A316693(n+1)]`
-/

namespace A316687.P15142093303247763070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A316693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316687.P15142093303247763070

/-! ## A316687.P14103747743039876773

`record[gcd(A008482(n), A316693(n+1))]`
-/

namespace A316687.P14103747743039876773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A316693 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316687.P14103747743039876773

/-! ## A316687.P5773059540374450969

`lcm(1-and(2, n), A316693(A001844(n)))`
-/

namespace A316687.P5773059540374450969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A316693 (A001844 n).toNat)

end

end A316687.P5773059540374450969

/-!
# A316688: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316688, the canonical program `A316688.P9682060351884867916` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316688 has offset 1).

The definition of A316688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316688.P9682060351884867916

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=4, a(1)=3, a(2)=8, a(3)=9, a(4)=21, a(5)=42`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A316688

/-- `a(n-1)+a(n-2)+2*a(n-3)` -/
def P9682060351884867916.Spec : Prop :=
  ∀ n, (P9682060351884867916.a n : ℤ) = A316688 (n + 1)

theorem P9682060351884867916.correct : P9682060351884867916.Spec := by
  intro n
  simp only [A316688, Nat.add_sub_cancel]

end A316688

/-! ## A316688.P11404786463009292882

`A316693(∑[n+2]+4)`
-/

namespace A316688.P11404786463009292882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316688.P11404786463009292882

namespace A316688

/-- `A316693(∑[n+2]+4)` -/
def P11404786463009292882.Spec : Prop :=
  ∀ n, P11404786463009292882.a n = A316688 (n + 1)

end A316688

/-! ## A316688.P5618378517173695650

`A316693(A167614(n+1))+A025466(n)`
-/

namespace A316688.P5618378517173695650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A167614 (n + 1)).toNat + A025466 n

end

end A316688.P5618378517173695650

namespace A316688

/-- `A316693(A167614(n+1))+A025466(n)` -/
def P5618378517173695650.Spec : Prop :=
  ∀ n, P5618378517173695650.a n = A316688 (n + 1)

end A316688

/-! ## A316688.P792905605956414935

`A316693(A167614(n+1))+A025469(n)`
-/

namespace A316688.P792905605956414935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A167614 (n + 1)).toNat + A025469 n

end

end A316688.P792905605956414935

namespace A316688

/-- `A316693(A167614(n+1))+A025469(n)` -/
def P792905605956414935.Spec : Prop :=
  ∀ n, P792905605956414935.a n = A316688 (n + 1)

end A316688

/-! ## A316688.P11206507634858118801

`A316693(A167614(n+1))%A016949(n)`
-/

namespace A316688.P11206507634858118801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316693 (A167614 (n + 1)).toNat) (A016949 n)

end

end A316688.P11206507634858118801

namespace A316688

/-- `A316693(A167614(n+1))%A016949(n)` -/
def P11206507634858118801.Spec : Prop :=
  ∀ n, P11206507634858118801.a n = A316688 (n + 1)

end A316688

/-!
# A316689: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316689, there is no canonical definition to state claims against.
-/

/-! ## A316689.P3320274217834011574

`A316693(A374004(n+1))`
-/

namespace A316689.P3320274217834011574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A374004 (n + 1)).toNat

end

end A316689.P3320274217834011574

/-! ## A316689.P5248530528441213824

`A316693(A141214(n)+7)`
-/

namespace A316689.P5248530528441213824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A141214 n + 7).toNat

end

end A316689.P5248530528441213824

/-! ## A316689.P2488108293377430507

`A316693(A052905(n)+9)`
-/

namespace A316689.P2488108293377430507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A052905 n + 9).toNat

end

end A316689.P2488108293377430507

/-! ## A316689.P16235632051673129817

`A316693(A055999(n)+10)`
-/

namespace A316689.P16235632051673129817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A055999 n + 10).toNat

end

end A316689.P16235632051673129817

/-! ## A316689.P5690426500511932356

`A316693(A167614(n+2)+1)`
-/

namespace A316689.P5690426500511932356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A167614 (n + 2) + 1).toNat

end

end A316689.P5690426500511932356

/-!
# A316690: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316690, there is no canonical definition to state claims against.
-/

/-! ## A316690.P741035935372056459

`A316693(A374005(n+1))`
-/

namespace A316690.P741035935372056459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A374005 (n + 1)).toNat

end

end A316690.P741035935372056459

/-! ## A316690.P8885254502944633046

`A316693(A167499(n+3))`
-/

namespace A316690.P8885254502944633046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A167499 (n + 3)).toNat

end

end A316690.P8885254502944633046

/-! ## A316690.P17567319471920381040

`A316693(A056000(n)+15)`
-/

namespace A316690.P17567319471920381040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A056000 n + 15).toNat

end

end A316690.P17567319471920381040

/-! ## A316690.P12845847673128832936

`A316693(A166136(n+3)-1)`
-/

namespace A316690.P12845847673128832936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A166136 (n + 3) - 1).toNat

end

end A316690.P12845847673128832936

/-! ## A316690.P2721405487500588648

`A316693(Δ[A264443(n)])`
-/

namespace A316690.P2721405487500588648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (f1 (n + 1) - f1 n).toNat

end

end A316690.P2721405487500588648

/-!
# A316691: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316691, there is no canonical definition to state claims against.
-/

/-! ## A316691.P13906192273594621374

`A316693(A374007(n+1))`
-/

namespace A316691.P13906192273594621374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A374007 (n + 1)).toNat

end

end A316691.P13906192273594621374

/-! ## A316691.P1354893073547090747

`A316693(A166136(n+4))`
-/

namespace A316691.P1354893073547090747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A166136 (n + 4)).toNat

end

end A316691.P1354893073547090747

/-! ## A316691.P18307843428825501677

`A316693(A167499(n+4)+1)`
-/

namespace A316691.P18307843428825501677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A167499 (n + 4) + 1).toNat

end

end A316691.P18307843428825501677

/-! ## A316691.P476033423250981407

`A316693(A000217(n+5)+6)`
-/

namespace A316691.P476033423250981407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A000217 (n + 5) + 6).toNat

end

end A316691.P476033423250981407

/-! ## A316691.P3458086251114541454

`A316693(A000096(n+6)-A005843(n+3))`
-/

namespace A316691.P3458086251114541454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A000096 (n + 6) - A005843 (n + 3)).toNat

end

end A316691.P3458086251114541454

/-!
# A316692: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316692, there is no canonical definition to state claims against.
-/

/-! ## A316692.P2883960254734408054

`A316693(A374008(n+1))`
-/

namespace A316692.P2883960254734408054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A374008 (n + 1)).toNat

end

end A316692.P2883960254734408054

/-! ## A316692.P18232201589428490111

`A316693(A167487(n+5))`
-/

namespace A316692.P18232201589428490111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A167487 (n + 5)).toNat

end

end A316692.P18232201589428490111

/-! ## A316692.P6986899520859469268

`A316693(A167499(n+5)+2)`
-/

namespace A316692.P6986899520859469268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A167499 (n + 5) + 2).toNat

end

end A316692.P6986899520859469268

/-! ## A316692.P18038140102191604813

`A316693(A000124(n+6)+6)`
-/

namespace A316692.P18038140102191604813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A000124 (n + 6) + 6).toNat

end

end A316692.P18038140102191604813

/-! ## A316692.P5784889117177423429

`A316693(A000217(n+6)+7)`
-/

namespace A316692.P5784889117177423429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (A000217 (n + 6) + 7).toNat

end

end A316692.P5784889117177423429

/-!
# A316693: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316693, there is no canonical definition to state claims against.
-/

/-! ## A316693.P1113575045452925423

`A340998(A174376(n))+A305040(n+1)`
-/

namespace A316693.P1113575045452925423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A174376 n).toNat + 140) + A305040 (n + 1)

end

end A316693.P1113575045452925423

/-! ## A316693.P10253215346122349975

`A305586(n+1)-A305258(A131235(n))`
-/

namespace A316693.P10253215346122349975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (n + 1) - A305258 (A131235 n).toNat

end

end A316693.P10253215346122349975

/-! ## A316693.P14394439094552022282

`A305586(n+1)+A082858(A059441(n+1))`
-/

namespace A316693.P14394439094552022282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (n + 1) + A082858 (A059441 (n + 1)).toNat

end

end A316693.P14394439094552022282

/-! ## A316693.P830775599686962332

`A305040(n+1)+A058348(A131235(n))`
-/

namespace A316693.P830775599686962332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (n + 1) + A058348 (A131235 n).toNat

end

end A316693.P830775599686962332

/-! ## A316693.P18219957538475392231

`A305040(n+1)+A124761(A036038(n+1))`
-/

namespace A316693.P18219957538475392231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (n + 1) + A124761 (A036038 (n + 1)).toNat

end

end A316693.P18219957538475392231

/-!
# A316694: Number of lone-child-avoiding locally disjoint rooted identity trees whose leaves form an integer partition of n.

The programs for A316694, there is no canonical definition to state claims against.
-/

/-! ## A316694.P4825757095688223456

`ceil(A136793(n+1)/record[A242354(n+1)])`
-/

namespace A316694.P4825757095688223456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136793 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A316694.P4825757095688223456

/-! ## A316694.P13701337003040639928

`A054846(A166297(n)+A148325(n))`
-/

namespace A316694.P13701337003040639928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A166297 n + A148325 n).toNat

end

end A316694.P13701337003040639928

/-! ## A316694.P1521020237660606490

`A168049(n)+A054404(A192573(n))`
-/

namespace A316694.P1521020237660606490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n + A054404 (A192573 n).toNat

end

end A316694.P1521020237660606490

/-! ## A316694.P4751263390966976473

`A051889(A176334(n+1))`
-/

namespace A316694.P4751263390966976473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A176334 (n + 1)).toNat

end

end A316694.P4751263390966976473

/-! ## A316694.P11257575168283361136

`A261104(or(1, A100477(n)))`
-/

namespace A316694.P11257575168283361136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (Int.lor 1 (A100477 n)).toNat

end

end A316694.P11257575168283361136

/-!
# A316695: Number of series-reduced locally disjoint rooted trees whose leaves form the integer partition with Heinz number n.

The programs for A316695, there is no canonical definition to state claims against.
-/

/-! ## A316695.P3705320096278880946

`A316767(n+1)-A337679(A008480(n+1))`
-/

namespace A316695.P3705320096278880946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316767 (n + 1) - A337679 (A008480 (n + 1)).toNat

end

end A316695.P3705320096278880946

/-! ## A316695.P7245479525062235835

`A316767(n+1)-A054900(A295279(n+1))`
-/

namespace A316695.P7245479525062235835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316767 (n + 1) - A054900 (A295279 (n + 1)).toNat

end

end A316695.P7245479525062235835

/-! ## A316695.P6349346280046669536

`A316767(n+1)-A054900(A316784(n+1))`
-/

namespace A316695.P6349346280046669536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316767 (n + 1) - A054900 (A316784 (n + 1)).toNat

end

end A316695.P6349346280046669536

/-! ## A316695.P5241669311897027873

`A228722(A316767(n+1))+A037213(A293405(n))`
-/

namespace A316695.P5241669311897027873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A316767 (n + 1)).toNat + A037213 (A293405 n).toNat

end

end A316695.P5241669311897027873

/-! ## A316695.P15873500698755984464

`A109671(A169743(n+1))*A228722(A316767(n+1))`
-/

namespace A316695.P15873500698755984464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (A169743 (n + 1)).toNat * A228722 (A316767 (n + 1)).toNat

end

end A316695.P15873500698755984464

/-!
# A316696: Number of lone-child-avoiding locally disjoint rooted trees whose leaves form an integer partition of n.

The programs for A316696, there is no canonical definition to state claims against.
-/

/-! ## A316696.P11720748142836727251

`A123441(n+1)+A066620(A123418(n+1))`
-/

namespace A316696.P11720748142836727251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123441 (n + 1) + A066620 (A123418 (n + 1)).toNat

end

end A316696.P11720748142836727251

/-! ## A316696.P17742479921060762615

`A075661(A000346(n))+A005774(n)`
-/

namespace A316696.P17742479921060762615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075661 (A000346 n).toNat + A005774 n

end

end A316696.P17742479921060762615

/-! ## A316696.P17256449004454496464

`A127912(n)+A030190(A127867(n))`
-/

namespace A316696.P17256449004454496464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127912 n + A030190 (A127867 n).toNat

end

end A316696.P17256449004454496464

/-!
# A316697: Number of series-reduced locally disjoint rooted trees with n unlabeled leaves.

The programs for A316697, there is no canonical definition to state claims against.
-/

/-! ## A316697.P9028673970319300791

`A112576(n)+A003056(A194689(n))`
-/

namespace A316697.P9028673970319300791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n + A003056 (A194689 n).toNat

end

end A316697.P9028673970319300791

/-! ## A316697.P6137996551182047239

`A353109(A001045(n))+A114901(2*n)`
-/

namespace A316697.P6137996551182047239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353109 (A001045 n).toNat + A114901 (2 * n)

end

end A316697.P6137996551182047239

/-! ## A316697.P4515399856657598897

`A184421(A339158(n+1))`
-/

namespace A316697.P4515399856657598897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (A339158 (n + 1)).toNat

end

end A316697.P4515399856657598897

/-! ## A316697.P13045288941550380216

`A087815(A331934(n+2))`
-/

namespace A316697.P13045288941550380216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087815 (A331934 (n + 2)).toNat

end

end A316697.P13045288941550380216

/-!
# A316698: a(n) is the number of rooted 2-connected triangular maps on the projective plane with n vertices.

The programs for A316698, there is no canonical definition to state claims against.
-/

/-! ## A316698.P3685719479163124261

`or(A255372(n), A349795(A255374(n)))`
-/

namespace A316698.P3685719479163124261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A255372 n) (A349795 (A255374 n).toNat)

end

end A316698.P3685719479163124261

/-!
# A316699: Number of (marked) cyclic n-bit binary strings containing no runs of length > 3.

The programs for A316699, the canonical program `A316699.P610717696485091757` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316699 has offset 1).

The definition of A316699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316699.P610717696485091757

`a(n-2)+2*a(n-3)+3*a(n-4)+2*a(n-5)+a(n-6)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=14, a(4)=20, a(5)=38, a(6)=70, a(7)=134, a(8)=240`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A316699

/-- `a(n-2)+2*a(n-3)+3*a(n-4)+2*a(n-5)+a(n-6)` -/
def P610717696485091757.Spec : Prop :=
  ∀ n, (P610717696485091757.a n : ℤ) = A316699 (n + 1)

theorem P610717696485091757.correct : P610717696485091757.Spec := by
  intro n
  simp only [A316699, Nat.add_sub_cancel]

end A316699

/-! ## A316699.P4332239437404466161

`A086066(n)+A053735(A026638(n))`
-/

namespace A316699.P4332239437404466161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n + A053735 (A026638 n).toNat

end

end A316699.P4332239437404466161

namespace A316699

/-- `A086066(n)+A053735(A026638(n))` -/
def P4332239437404466161.Spec : Prop :=
  ∀ n, P4332239437404466161.a n = A316699 (n + 1)

end A316699

/-! ## A316699.P13343395810368152867

`A112756(A000142(n))+A083318(n)`
-/

namespace A316699.P13343395810368152867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112756 (A000142 n).toNat + A083318 n

end

end A316699.P13343395810368152867

namespace A316699

/-- `A112756(A000142(n))+A083318(n)` -/
def P13343395810368152867.Spec : Prop :=
  ∀ n, P13343395810368152867.a n = A316699 (n + 1)

end A316699

/-! ## A316699.P5936588359480860091

`A276883(A185231(n))+A185231(n)`
-/

namespace A316699.P5936588359480860091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276883 (A185231 n).toNat + A185231 n

end

end A316699.P5936588359480860091

namespace A316699

/-- `A276883(A185231(n))+A185231(n)` -/
def P5936588359480860091.Spec : Prop :=
  ∀ n, P5936588359480860091.a n = A316699 (n + 1)

end A316699

