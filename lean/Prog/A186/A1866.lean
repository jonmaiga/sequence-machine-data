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
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A186600: Number of (n+4)X(n+4) binary arrays with every 5X5 subblock commuting with each horizontal and vertical neighbor 5X5 subblock.

The programs for A186600, there is no canonical definition to state claims against.
-/

/-! ## A186600.P15731582846159289482

`A186609(∑[4*n]+1)`
-/

namespace A186600.P15731582846159289482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186600.P15731582846159289482

/-! ## A186600.P10710512788889277648

`A186609(A001844(n))+char[19]`
-/

namespace A186600.P10710512788889277648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186600.P10710512788889277648

/-! ## A186600.P12090234075793522553

`lcm(A087960(n), A186609(A001844(n)))`
-/

namespace A186600.P12090234075793522553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A186609 (A001844 n).toNat)

end

end A186600.P12090234075793522553

/-! ## A186600.P2825177971854025580

`or(A011741(n), A186609(A001844(n)))`
-/

namespace A186600.P2825177971854025580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011741 n) (A186609 (A001844 n).toNat)

end

end A186600.P2825177971854025580

/-! ## A186600.P16393075271101300039

`or(A000007(n+2), A186609(A001844(n)))`
-/

namespace A186600.P16393075271101300039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (n + 2)) (A186609 (A001844 n).toNat)

end

end A186600.P16393075271101300039

/-!
# A186601: Number of (n+4)X5 binary arrays with every 5X5 subblock commuting with each horizontal and vertical neighbor 5X5 subblock.

The programs for A186601, there is no canonical definition to state claims against.
-/

/-! ## A186601.P10417898726808934579

`A186609(∑[n]+1)`
-/

namespace A186601.P10417898726808934579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186601.P10417898726808934579

/-! ## A186601.P5825280571372377074

`or(char[1], A186609(A000124(n)))`
-/

namespace A186601.P5825280571372377074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186609 (A000124 n).toNat)

end

end A186601.P5825280571372377074

/-! ## A186601.P5930795199592085467

`A007318(∑[n])*A186609(A000124(n))`
-/

namespace A186601.P5930795199592085467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186609 (A000124 n).toNat

end

end A186601.P5930795199592085467

/-! ## A186601.P13101510321638640871

`A186609(A000124(n))+A000007(n+1)`
-/

namespace A186601.P13101510321638640871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A000124 n).toNat + A000007 (n + 1)

end

end A186601.P13101510321638640871

/-! ## A186601.P4221175334111554607

`A178334(n+1)*A186609(A000124(n))`
-/

namespace A186601.P4221175334111554607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A186609 (A000124 n).toNat

end

end A186601.P4221175334111554607

/-!
# A186602: Number of (n+4) X 6 binary arrays with every 5 X 5 subblock commuting with each horizontal and vertical neighbor 5 X 5 subblock.

The programs for A186602, there is no canonical definition to state claims against.
-/

/-! ## A186602.P3044968290205950237

`A186609(∑[n+1]+2)`
-/

namespace A186602.P3044968290205950237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186602.P3044968290205950237

/-! ## A186602.P14688024187232345620

`or(char[1], A186609(A000096(n+1)))`
-/

namespace A186602.P14688024187232345620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186609 (A000096 (n + 1)).toNat)

end

end A186602.P14688024187232345620

/-! ## A186602.P11108759814730509970

`A186609(A000096(n+1))+A000007(n+1)`
-/

namespace A186602.P11108759814730509970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A186602.P11108759814730509970

/-! ## A186602.P7831733417177901514

`A007318(C(n, 2))*A186609(A000096(n+1))`
-/

namespace A186602.P7831733417177901514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A186609 (A000096 (n + 1)).toNat

end

end A186602.P7831733417177901514

/-! ## A186602.P5133342823971787220

`A186609(A000096(n+1))+char[A186609(n+2)]`
-/

namespace A186602.P5133342823971787220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186602.P5133342823971787220

/-!
# A186603: Number of (n+4)X7 binary arrays with every 5X5 subblock commuting with each horizontal and vertical neighbor 5X5 subblock.

The programs for A186603, there is no canonical definition to state claims against.
-/

/-! ## A186603.P9660388527711922501

`A186609(∑[n+2]+4)`
-/

namespace A186603.P9660388527711922501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186603.P9660388527711922501

/-! ## A186603.P714270031236006727

`A186609(A167614(n+1))+char[40]`
-/

namespace A186603.P714270031236006727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186603.P714270031236006727

/-! ## A186603.P1194444585402060077

`lcm(A033999(n), A186609(A167614(n+1)))`
-/

namespace A186603.P1194444585402060077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A186609 (A167614 (n + 1)).toNat)

end

end A186603.P1194444585402060077

/-! ## A186603.P4508549765124713965

`or(A185284(n), A186609(A167614(n+1)))`
-/

namespace A186603.P4508549765124713965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 n) (A186609 (A167614 (n + 1)).toNat)

end

end A186603.P4508549765124713965

/-! ## A186603.P5777696375071518642

`A033999(2*n)*A186609(A167614(n+1))`
-/

namespace A186603.P5777696375071518642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A186609 (A167614 (n + 1)).toNat

end

end A186603.P5777696375071518642

/-!
# A186604: Number of (n+4)X8 binary arrays with every 5X5 subblock commuting with each horizontal and vertical neighbor 5X5 subblock.

The programs for A186604, there is no canonical definition to state claims against.
-/

/-! ## A186604.P10843587937007611071

`A186609(∑[n+3]+7)`
-/

namespace A186604.P10843587937007611071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186604.P10843587937007611071

/-!
# A186605: Number of (n+4)X9 binary arrays with every 5X5 subblock commuting with each horizontal and vertical neighbor 5X5 subblock.

The programs for A186605, there is no canonical definition to state claims against.
-/

/-! ## A186605.P10280906879494285243

`A186609(A167499(n+3))`
-/

namespace A186605.P10280906879494285243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A167499 (n + 3)).toNat

end

end A186605.P10280906879494285243

/-! ## A186605.P3886953865977152697

`A186609(A155212(n)+13)`
-/

namespace A186605.P3886953865977152697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A155212 n + 13).toNat

end

end A186605.P3886953865977152697

/-! ## A186605.P11748205476185812671

`A186609(A056000(n)+15)`
-/

namespace A186605.P11748205476185812671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A056000 n + 15).toNat

end

end A186605.P11748205476185812671

/-! ## A186605.P9542535252160517696

`A186609(A166136(n+3)-1)`
-/

namespace A186605.P9542535252160517696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A166136 (n + 3) - 1).toNat

end

end A186605.P9542535252160517696

/-! ## A186605.P14645791665055022739

`A186609(A167614(n+3)+2)`
-/

namespace A186605.P14645791665055022739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A167614 (n + 3) + 2).toNat

end

end A186605.P14645791665055022739

/-!
# A186606: Number of (n+4)X10 binary arrays with every 5X5 subblock commuting with each horizontal and vertical neighbor 5X5 subblock.

The programs for A186606, there is no canonical definition to state claims against.
-/

/-! ## A186606.P10087211523023783276

`A186609(A166136(n+4))`
-/

namespace A186606.P10087211523023783276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A166136 (n + 4)).toNat

end

end A186606.P10087211523023783276

/-! ## A186606.P1137219264866277192

`A186609(A056115(n)+21)`
-/

namespace A186606.P1137219264866277192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A056115 n + 21).toNat

end

end A186606.P1137219264866277192

/-! ## A186606.P11112929745635858581

`A186609(A167499(n+4)+1)`
-/

namespace A186606.P11112929745635858581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A167499 (n + 4) + 1).toNat

end

end A186606.P11112929745635858581

/-! ## A186606.P17887069558734212488

`A186609(A167487(n+4)-1)`
-/

namespace A186606.P17887069558734212488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A167487 (n + 4) - 1).toNat

end

end A186606.P17887069558734212488

/-! ## A186606.P6022883838073712744

`A186609(A167614(n+4)+3)`
-/

namespace A186606.P6022883838073712744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A167614 (n + 4) + 3).toNat

end

end A186606.P6022883838073712744

/-!
# A186607: Number of (n+4)X11 binary arrays with every 5X5 subblock commuting with each horizontal and vertical neighbor 5X5 subblock.

The programs for A186607, there is no canonical definition to state claims against.
-/

/-! ## A186607.P17916426451044404709

`A186609(A167487(n+5))`
-/

namespace A186607.P17916426451044404709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A167487 (n + 5)).toNat

end

end A186607.P17916426451044404709

/-! ## A186607.P7348795908618512391

`A186609(A056119(n)+28)`
-/

namespace A186607.P7348795908618512391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A056119 n + 28).toNat

end

end A186607.P7348795908618512391

/-! ## A186607.P4319475246367183989

`A186609(A166136(n+5)+1)`
-/

namespace A186607.P4319475246367183989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A166136 (n + 5) + 1).toNat

end

end A186607.P4319475246367183989

/-! ## A186607.P17044238463818413482

`A186609(A167499(n+5)+2)`
-/

namespace A186607.P17044238463818413482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A167499 (n + 5) + 2).toNat

end

end A186607.P17044238463818413482

/-! ## A186607.P18310032933924712741

`A186609(A167614(n+5)+4)`
-/

namespace A186607.P18310032933924712741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A167614 (n + 5) + 4).toNat

end

end A186607.P18310032933924712741

/-!
# A186608: Number of (n+4)X12 binary arrays with every 5X5 subblock commuting with each horizontal and vertical neighbor 5X5 subblock.

The programs for A186608, there is no canonical definition to state claims against.
-/

/-! ## A186608.P13464177368428578723

`A186609(A056121(n)+36)`
-/

namespace A186608.P13464177368428578723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A056121 n + 36).toNat

end

end A186608.P13464177368428578723

/-! ## A186608.P6697579850825107360

`A186609(A166136(n+6)+2)`
-/

namespace A186608.P6697579850825107360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A166136 (n + 6) + 2).toNat

end

end A186608.P6697579850825107360

/-! ## A186608.P8755551135982706551

`A186609(A000124(n+7)+7)`
-/

namespace A186608.P8755551135982706551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A000124 (n + 7) + 7).toNat

end

end A186608.P8755551135982706551

/-! ## A186608.P7616912230560463978

`A186609(A000217(n+7)+8)`
-/

namespace A186608.P7616912230560463978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A000217 (n + 7) + 8).toNat

end

end A186608.P7616912230560463978

/-! ## A186608.P1133278697013172769

`A186609(A046691(n+5)+12)`
-/

namespace A186608.P1133278697013172769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186609 (A046691 (n + 5) + 12).toNat

end

end A186608.P1133278697013172769

/-!
# A186610: Number of (n+5)X(n+5) binary arrays with every 6X6 subblock commuting with each horizontal and vertical neighbor 6X6 subblock.

The programs for A186610, there is no canonical definition to state claims against.
-/

/-! ## A186610.P14126231790326078068

`A186619(∑[4*n]+1)`
-/

namespace A186610.P14126231790326078068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186610.P14126231790326078068

/-! ## A186610.P13474277156851369841

`A186619(A001844(n))+char[15]`
-/

namespace A186610.P13474277156851369841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186610.P13474277156851369841

/-! ## A186610.P2883331254396328016

`A007318(∑[n])*A186619(A001844(n))`
-/

namespace A186610.P2883331254396328016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186619 (A001844 n).toNat

end

end A186610.P2883331254396328016

/-! ## A186610.P3624838674879085423

`A186619(A001844(n))*A194285(n+1)`
-/

namespace A186610.P3624838674879085423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A001844 n).toNat * A194285 (n + 1)

end

end A186610.P3624838674879085423

/-! ## A186610.P14843752755340697643

`or(A186619(A001844(n)), A333783(n+1))`
-/

namespace A186610.P14843752755340697643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186619 (A001844 n).toNat) (A333783 (n + 1))

end

end A186610.P14843752755340697643

/-!
# A186611: Number of (n+5)X6 binary arrays with every 6X6 subblock commuting with each horizontal and vertical neighbor 6X6 subblock.

The programs for A186611, there is no canonical definition to state claims against.
-/

/-! ## A186611.P16330736794894558298

`A186619(∑[n]+1)`
-/

namespace A186611.P16330736794894558298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186611.P16330736794894558298

/-! ## A186611.P12630497448732927221

`or(char[4], A186619(A000124(n)))`
-/

namespace A186611.P12630497448732927221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186619 (A000124 n).toNat)

end

end A186611.P12630497448732927221

/-! ## A186611.P159600557702227159

`A243834(n)+A186619(A000124(n))`
-/

namespace A186611.P159600557702227159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243834 n + A186619 (A000124 n).toNat

end

end A186611.P159600557702227159

/-! ## A186611.P9998795836257207389

`A007318(∑[n])*A186619(A000124(n))`
-/

namespace A186611.P9998795836257207389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186619 (A000124 n).toNat

end

end A186611.P9998795836257207389

/-! ## A186611.P11522645820896764672

`A186619(A000124(n))+A000007(n+4)`
-/

namespace A186611.P11522645820896764672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A000124 n).toNat + A000007 (n + 4)

end

end A186611.P11522645820896764672

/-!
# A186612: Number of (n+5) X 7 binary arrays with every 6 X 6 subblock commuting with each horizontal and vertical neighbor 6 X 6 subblock.

The programs for A186612, there is no canonical definition to state claims against.
-/

/-! ## A186612.P17264900796727873689

`A186619(∑[n+1]+2)`
-/

namespace A186612.P17264900796727873689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186612.P17264900796727873689

/-! ## A186612.P197444854836095301

`or(char[1], A186619(A000096(n)+3))`
-/

namespace A186612.P197444854836095301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186619 (A000096 n + 3).toNat)

end

end A186612.P197444854836095301

/-! ## A186612.P14993324136007647801

`A186619(A133263(n+1))%A186611(n+1)`
-/

namespace A186612.P14993324136007647801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186619 (A133263 (n + 1)).toNat) (A186611 (n + 1))

end

end A186612.P14993324136007647801

/-! ## A186612.P15176111762091413167

`A007318(C(2, n))*A186619(A000096(n)+3)`
-/

namespace A186612.P15176111762091413167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186619 (A000096 n + 3).toNat

end

end A186612.P15176111762091413167

/-! ## A186612.P2838778131196358078

`A186619(A000096(n)+3)/A007318(C(3, n))`
-/

namespace A186612.P2838778131196358078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186619 (A000096 n + 3).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A186612.P2838778131196358078

/-!
# A186613: Number of (n+5) X 8 binary arrays with every 6 X 6 subblock commuting with each horizontal and vertical neighbor 6 X 6 subblock.

The programs for A186613, there is no canonical definition to state claims against.
-/

/-! ## A186613.P6313880876995840609

`A186619(∑[n+2]+4)`
-/

namespace A186613.P6313880876995840609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186613.P6313880876995840609

/-! ## A186613.P14311152616243343258

`or(char[3], A186619(A167614(n+1)))`
-/

namespace A186613.P14311152616243343258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186619 (A167614 (n + 1)).toNat)

end

end A186613.P14311152616243343258

/-! ## A186613.P12049300545665414177

`A186619(A167614(n+1))+A025469(n)`
-/

namespace A186613.P12049300545665414177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A167614 (n + 1)).toNat + A025469 n

end

end A186613.P12049300545665414177

/-! ## A186613.P16021596892986515056

`A186619(A167614(n+1))+A185284(n)`
-/

namespace A186613.P16021596892986515056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A167614 (n + 1)).toNat + A185284 n

end

end A186613.P16021596892986515056

/-! ## A186613.P5784337092005725323

`A152851(n)*A186619(A167614(n+1))`
-/

namespace A186613.P5784337092005725323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A186619 (A167614 (n + 1)).toNat

end

end A186613.P5784337092005725323

/-!
# A186614: Number of (n+5)X9 binary arrays with every 6X6 subblock commuting with each horizontal and vertical neighbor 6X6 subblock.

The programs for A186614, there is no canonical definition to state claims against.
-/

/-! ## A186614.P15005057299865997370

`A186619(∑[n+3]+7)`
-/

namespace A186614.P15005057299865997370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186614.P15005057299865997370

/-! ## A186614.P17059918727312076540

`A186619(A145018(n+4))%A186617(n+1)`
-/

namespace A186614.P17059918727312076540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186619 (A145018 (n + 4)).toNat) (A186617 (n + 1))

end

end A186614.P17059918727312076540

/-! ## A186614.P16852184319381660532

`A186619(A046691(n+2)+1)+char[32]`
-/

namespace A186614.P16852184319381660532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A046691 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186614.P16852184319381660532

/-! ## A186614.P5149386759930207377

`A051064(3*n+4)*A186619(A027379(n+2))`
-/

namespace A186614.P5149386759930207377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (3 * n + 4) * A186619 (A027379 (n + 2)).toNat

end

end A186614.P5149386759930207377

/-! ## A186614.P4814061761947479660

`A007318(C(n, 2))*A186619(A046691(n+2)+1)`
-/

namespace A186614.P4814061761947479660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A186619 (A046691 (n + 2) + 1).toNat

end

end A186614.P4814061761947479660

/-!
# A186615: Number of (n+5)X10 binary arrays with every 6X6 subblock commuting with each horizontal and vertical neighbor 6X6 subblock.

The programs for A186615, there is no canonical definition to state claims against.
-/

/-! ## A186615.P15348052875666445227

`A186619(∑[n+4]+11)`
-/

namespace A186615.P15348052875666445227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A186615.P15348052875666445227

/-! ## A186615.P2136367238419509144

`or(char[3], A186619(A077169(n+5)))`
-/

namespace A186615.P2136367238419509144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186619 (A077169 (n + 5)).toNat)

end

end A186615.P2136367238419509144

/-! ## A186615.P16295624729482430296

`((-1)^n)²*A186619(A000217(n+4)+5)`
-/

namespace A186615.P16295624729482430296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A186619 (A000217 (n + 4) + 5).toNat

end

end A186615.P16295624729482430296

/-! ## A186615.P7924562245018067481

`A007318(C(n, 2))*A186619(A077169(n+5))`
-/

namespace A186615.P7924562245018067481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A186619 (A077169 (n + 5)).toNat

end

end A186615.P7924562245018067481

/-! ## A186615.P12615079211379476935

`A007318(floor(n/7))*A186619(A077169(n+5))`
-/

namespace A186615.P12615079211379476935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 7⌋.toNat * A186619 (A077169 (n + 5)).toNat

end

end A186615.P12615079211379476935

/-!
# A186616: Number of (n+5)X11 binary arrays with every 6X6 subblock commuting with each horizontal and vertical neighbor 6X6 subblock.

The programs for A186616, there is no canonical definition to state claims against.
-/

/-! ## A186616.P8970618380878851302

`A186619(A056115(n)+21)`
-/

namespace A186616.P8970618380878851302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A056115 n + 21).toNat

end

end A186616.P8970618380878851302

/-! ## A186616.P16646136630249905605

`A186619(∑[A020710(n)]+16)`
-/

namespace A186616.P16646136630249905605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A186616.P16646136630249905605

/-! ## A186616.P1077520544125969199

`A186619(A167499(n+4)+1)`
-/

namespace A186616.P1077520544125969199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A167499 (n + 4) + 1).toNat

end

end A186616.P1077520544125969199

/-! ## A186616.P14394858871904204390

`A186619(A167487(n+4)-1)`
-/

namespace A186616.P14394858871904204390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A167487 (n + 4) - 1).toNat

end

end A186616.P14394858871904204390

/-! ## A186616.P9295816506505760383

`A186619(A167614(n+4)+3)`
-/

namespace A186616.P9295816506505760383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A167614 (n + 4) + 3).toNat

end

end A186616.P9295816506505760383

/-!
# A186617: Number of (n+5)X12 binary arrays with every 6X6 subblock commuting with each horizontal and vertical neighbor 6X6 subblock.

The programs for A186617, there is no canonical definition to state claims against.
-/

/-! ## A186617.P4020908655395658460

`A186619(A167487(n+5))`
-/

namespace A186617.P4020908655395658460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A167487 (n + 5)).toNat

end

end A186617.P4020908655395658460

/-! ## A186617.P13625799606487994818

`A186619(A167614(n+5)+4)`
-/

namespace A186617.P13625799606487994818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A167614 (n + 5) + 4).toNat

end

end A186617.P13625799606487994818

/-! ## A186617.P8302767132466810741

`A186619(A145018(n+7)+3)`
-/

namespace A186617.P8302767132466810741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A145018 (n + 7) + 3).toNat

end

end A186617.P8302767132466810741

/-! ## A186617.P5851618393717192022

`A186619(A133263(n+6)+5)`
-/

namespace A186617.P5851618393717192022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A133263 (n + 6) + 5).toNat

end

end A186617.P5851618393717192022

/-! ## A186617.P18085642380411235611

`A186619(A000124(n+6)+6)`
-/

namespace A186617.P18085642380411235611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A000124 (n + 6) + 6).toNat

end

end A186617.P18085642380411235611

/-!
# A186618: Number of (n+5)X13 binary arrays with every 6X6 subblock commuting with each horizontal and vertical neighbor 6X6 subblock.

The programs for A186618, there is no canonical definition to state claims against.
-/

/-! ## A186618.P15674309232159124368

`A186619(A167487(n+6)+1)`
-/

namespace A186618.P15674309232159124368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A167487 (n + 6) + 1).toNat

end

end A186618.P15674309232159124368

/-! ## A186618.P995506914730314481

`A186619(A000124(n+7)+7)`
-/

namespace A186618.P995506914730314481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A000124 (n + 7) + 7).toNat

end

end A186618.P995506914730314481

/-! ## A186618.P6924801726346157173

`A186619(A000217(n+7)+8)`
-/

namespace A186618.P6924801726346157173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A000217 (n + 7) + 8).toNat

end

end A186618.P6924801726346157173

/-! ## A186618.P2696249018642571163

`A186619(eq[9, A131818(n+1)])`
-/

namespace A186618.P2696249018642571163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186618.P2696249018642571163

/-! ## A186618.P8084124538746020756

`A186619(A055998(n+7)-2*(n+3))`
-/

namespace A186618.P8084124538746020756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186619 (A055998 (n + 7) - (2 * (n + 3) : ℤ)).toNat

end

end A186618.P8084124538746020756

/-!
# A186620: Fibonacci sequence beginning 12, 25.

The programs for A186620, the canonical program `A186620.P17717284599198678520` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186620 has offset 0).

The definition of A186620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186620.P11341654685970100537

`ogf((12+13x)/(1-x-x^2))`
-/

namespace A186620.P11341654685970100537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 13] [1, -1, -1] n

end

end A186620.P11341654685970100537

namespace A186620

/-- `ogf((12+13x)/(1-x-x^2))` -/
def P11341654685970100537.Spec : Prop :=
  ∀ n, P11341654685970100537.a n = A186620 n

end A186620

/-! ## A186620.P17717284599198678520

`a(n-1)+a(n-2)` with `a(0)=12, a(1)=25`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186620

/-- `a(n-1)+a(n-2)` -/
def P17717284599198678520.Spec : Prop :=
  ∀ n, (P17717284599198678520.a n : ℤ) = A186620 n

theorem P17717284599198678520.correct : P17717284599198678520.Spec := by
  intro n
  simp only [A186620]

end A186620

/-! ## A186620.P5354061734363054787

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=1, a(1)=13`
-/

namespace A186620.P5354061734363054787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186620.P5354061734363054787

namespace A186620

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P5354061734363054787.Spec : Prop :=
  ∀ n, P5354061734363054787.a n = A186620 n

end A186620

/-! ## A186620.P14482557958504634219

`A184959(n)+A022370(n)`
-/

namespace A186620.P14482557958504634219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n + A022370 n

end

end A186620.P14482557958504634219

namespace A186620

/-- `A184959(n)+A022370(n)` -/
def P14482557958504634219.Spec : Prop :=
  ∀ n, P14482557958504634219.a n = A186620 n

end A186620

/-! ## A186620.P4486708646967208716

`A190996(n)+A022371(n)`
-/

namespace A186620.P4486708646967208716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A022371 n

end

end A186620.P4486708646967208716

namespace A186620

/-- `A190996(n)+A022371(n)` -/
def P4486708646967208716.Spec : Prop :=
  ∀ n, P4486708646967208716.a n = A186620 n

end A186620

/-! ## A186620.P13962926043345635071

`A280154(n)+A022372(n)`
-/

namespace A186620.P13962926043345635071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A022372 n

end

end A186620.P13962926043345635071

namespace A186620

/-- `A280154(n)+A022372(n)` -/
def P13962926043345635071.Spec : Prop :=
  ∀ n, P13962926043345635071.a n = A186620 n

end A186620

/-! ## A186620.P1697846421215542634

`A354383(n)+A152163(n)`
-/

namespace A186620.P1697846421215542634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354383 n + A152163 n

end

end A186620.P1697846421215542634

namespace A186620

/-- `A354383(n)+A152163(n)` -/
def P1697846421215542634.Spec : Prop :=
  ∀ n, P1697846421215542634.a n = A186620 n

end A186620

/-! ## A186620.P8416443297770745126

`A022103(n)+A022101(n+1)`
-/

namespace A186620.P8416443297770745126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022101 (n + 1)

end

end A186620.P8416443297770745126

namespace A186620

/-- `A022103(n)+A022101(n+1)` -/
def P8416443297770745126.Spec : Prop :=
  ∀ n, P8416443297770745126.a n = A186620 n

end A186620

/-! ## A186620.P17587712601820971723

`A022123(n+1)+A022101(n)`
-/

namespace A186620.P17587712601820971723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 (n + 1) + A022101 n

end

end A186620.P17587712601820971723

namespace A186620

/-- `A022123(n+1)+A022101(n)` -/
def P17587712601820971723.Spec : Prop :=
  ∀ n, P17587712601820971723.a n = A186620 n

end A186620

/-! ## A186620.P15817052989116614797

`A022140(n)+A022113(n+1)`
-/

namespace A186620.P15817052989116614797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022140 n + A022113 (n + 1)

end

end A186620.P15817052989116614797

namespace A186620

/-- `A022140(n)+A022113(n+1)` -/
def P15817052989116614797.Spec : Prop :=
  ∀ n, P15817052989116614797.a n = A186620 n

end A186620

/-! ## A186620.P314111171163719144

`A022345(n+1)+A022104(n)`
-/

namespace A186620.P314111171163719144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 (n + 1) + A022104 n

end

end A186620.P314111171163719144

namespace A186620

/-- `A022345(n+1)+A022104(n)` -/
def P314111171163719144.Spec : Prop :=
  ∀ n, P314111171163719144.a n = A186620 n

end A186620

/-! ## A186620.P14868584502813177615

`A022346(n)+A022102(n+1)`
-/

namespace A186620.P14868584502813177615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022102 (n + 1)

end

end A186620.P14868584502813177615

namespace A186620

/-- `A022346(n)+A022102(n+1)` -/
def P14868584502813177615.Spec : Prop :=
  ∀ n, P14868584502813177615.a n = A186620 n

end A186620

/-! ## A186620.P9467642487315223243

`A022369(n)+A022100(n+1)`
-/

namespace A186620.P9467642487315223243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022369 n + A022100 (n + 1)

end

end A186620.P9467642487315223243

namespace A186620

/-- `A022369(n)+A022100(n+1)` -/
def P9467642487315223243.Spec : Prop :=
  ∀ n, P9467642487315223243.a n = A186620 n

end A186620

/-! ## A186620.P4376882134853462790

`A206419(n+1)+A022108(n)`
-/

namespace A186620.P4376882134853462790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206419 (n + 1) + A022108 n

end

end A186620.P4376882134853462790

namespace A186620

/-- `A206419(n+1)+A022108(n)` -/
def P4376882134853462790.Spec : Prop :=
  ∀ n, P4376882134853462790.a n = A186620 n

end A186620

/-! ## A186620.P17531138654994162000

`A206420(n+1)+A022107(n)`
-/

namespace A186620.P17531138654994162000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206420 (n + 1) + A022107 n

end

end A186620.P17531138654994162000

namespace A186620

/-- `A206420(n+1)+A022107(n)` -/
def P17531138654994162000.Spec : Prop :=
  ∀ n, P17531138654994162000.a n = A186620 n

end A186620

/-! ## A186620.P1121277892983968757

`A206422(n+1)+A022106(n)`
-/

namespace A186620.P1121277892983968757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206422 (n + 1) + A022106 n

end

end A186620.P1121277892983968757

namespace A186620

/-- `A206422(n+1)+A022106(n)` -/
def P1121277892983968757.Spec : Prop :=
  ∀ n, P1121277892983968757.a n = A186620 n

end A186620

/-! ## A186620.P8634043636534753472

`A206423(n+1)+A022352(n)`
-/

namespace A186620.P8634043636534753472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) + A022352 n

end

end A186620.P8634043636534753472

namespace A186620

/-- `A206423(n+1)+A022352(n)` -/
def P8634043636534753472.Spec : Prop :=
  ∀ n, P8634043636534753472.a n = A186620 n

end A186620

/-! ## A186620.P7812581064255982029

`A022100(n+2)+A000285(n)`
-/

namespace A186620.P7812581064255982029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 (n + 2) + A000285 n

end

end A186620.P7812581064255982029

namespace A186620

/-- `A022100(n+2)+A000285(n)` -/
def P7812581064255982029.Spec : Prop :=
  ∀ n, P7812581064255982029.a n = A186620 n

end A186620

/-! ## A186620.P17679172662626383132

`A022346(n+2)+A000045(n)`
-/

namespace A186620.P17679172662626383132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (n + 2) + A000045 n

end

end A186620.P17679172662626383132

namespace A186620

/-- `A022346(n+2)+A000045(n)` -/
def P17679172662626383132.Spec : Prop :=
  ∀ n, P17679172662626383132.a n = A186620 n

end A186620

/-! ## A186620.P9153575137513616246

`A022379(n+2)+A022087(n)`
-/

namespace A186620.P9153575137513616246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 (n + 2) + A022087 n

end

end A186620.P9153575137513616246

namespace A186620

/-- `A022379(n+2)+A022087(n)` -/
def P9153575137513616246.Spec : Prop :=
  ∀ n, P9153575137513616246.a n = A186620 n

end A186620

/-!
# A186621: Semiprimes - 1.

The programs for A186621, the canonical program `A186621.P5089299060388261365` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186621 has offset 1).

The definition of A186621 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186621.P5089299060388261365

`A001358(n+1)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A186621

/-- `A001358(n+1)-1` -/
def P5089299060388261365.Spec : Prop :=
  ∀ n, P5089299060388261365.a n = A186621 (n + 1)

theorem P5089299060388261365.correct : P5089299060388261365.Spec := by
  intro n
  simp only [A186621, Nat.add_sub_cancel]

end A186621

/-! ## A186621.P4898307001941459908

`A088707(n+1)-2`
-/

namespace A186621.P4898307001941459908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 2

end

end A186621.P4898307001941459908

namespace A186621

/-- `A088707(n+1)-2` -/
def P4898307001941459908.Spec : Prop :=
  ∀ n, P4898307001941459908.a n = A186621 (n + 1)

end A186621

/-! ## A186621.P13258687455701174142

`eq[0, A340653(n+1)]`
-/

namespace A186621.P13258687455701174142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340653 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186621.P13258687455701174142

namespace A186621

/-- `eq[0, A340653(n+1)]` -/
def P13258687455701174142.Spec : Prop :=
  ∀ n, (P13258687455701174142.a n : ℤ) = A186621 (n + 1)

end A186621

/-! ## A186621.P14949224741762687793

`lt[0, A064911(n+1)]`
-/

namespace A186621.P14949224741762687793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186621.P14949224741762687793

namespace A186621

/-- `lt[0, A064911(n+1)]` -/
def P14949224741762687793.Spec : Prop :=
  ∀ n, (P14949224741762687793.a n : ℤ) = A186621 (n + 1)

end A186621

/-! ## A186621.P6586726677597720724

`eq[2, A001222(n+1)]`
-/

namespace A186621.P6586726677597720724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186621.P6586726677597720724

namespace A186621

/-- `eq[2, A001222(n+1)]` -/
def P6586726677597720724.Spec : Prop :=
  ∀ n, (P6586726677597720724.a n : ℤ) = A186621 (n + 1)

end A186621

/-! ## A186621.P16457223389236543161

`eq[2, A008481(n+1)]`
-/

namespace A186621.P16457223389236543161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186621.P16457223389236543161

namespace A186621

/-- `eq[2, A008481(n+1)]` -/
def P16457223389236543161.Spec : Prop :=
  ∀ n, (P16457223389236543161.a n : ℤ) = A186621 (n + 1)

end A186621

/-! ## A186621.P15652708284061069044

`eq[2, A033273(n+1)]`
-/

namespace A186621.P15652708284061069044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186621.P15652708284061069044

namespace A186621

/-- `eq[2, A033273(n+1)]` -/
def P15652708284061069044.Spec : Prop :=
  ∀ n, (P15652708284061069044.a n : ℤ) = A186621 (n + 1)

end A186621

/-! ## A186621.P3562905913835142390

`eq[2, A050379(n+1)]`
-/

namespace A186621.P3562905913835142390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186621.P3562905913835142390

namespace A186621

/-- `eq[2, A050379(n+1)]` -/
def P3562905913835142390.Spec : Prop :=
  ∀ n, (P3562905913835142390.a n : ℤ) = A186621 (n + 1)

end A186621

/-! ## A186621.P15559332254533041628

`eq[2, A318322(n+1)]`
-/

namespace A186621.P15559332254533041628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186621.P15559332254533041628

namespace A186621

/-- `eq[2, A318322(n+1)]` -/
def P15559332254533041628.Spec : Prop :=
  ∀ n, (P15559332254533041628.a n : ℤ) = A186621 (n + 1)

end A186621

/-! ## A186621.P6978653646310821865

`eq[2, A342085(n+1)]`
-/

namespace A186621.P6978653646310821865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186621.P6978653646310821865

namespace A186621

/-- `eq[2, A342085(n+1)]` -/
def P6978653646310821865.Spec : Prop :=
  ∀ n, (P6978653646310821865.a n : ℤ) = A186621 (n + 1)

end A186621

/-! ## A186621.P826850412564558135

`A175708(n+1)+n`
-/

namespace A186621.P826850412564558135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + (n : ℤ)

end

end A186621.P826850412564558135

namespace A186621

/-- `A175708(n+1)+n` -/
def P826850412564558135.Spec : Prop :=
  ∀ n, P826850412564558135.a n = A186621 (n + 1)

end A186621

/-! ## A186621.P2344717328689792295

`A075818(n+1)/2-1`
-/

namespace A186621.P2344717328689792295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2 - 1

end

end A186621.P2344717328689792295

namespace A186621

/-- `A075818(n+1)/2-1` -/
def P2344717328689792295.Spec : Prop :=
  ∀ n, P2344717328689792295.a n = (A186621 (n + 1) : ℚ)

end A186621

/-! ## A186621.P11677883285440447375

`A100493(n+1)-(n+2)`
-/

namespace A186621.P11677883285440447375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n + 2 : ℤ)

end

end A186621.P11677883285440447375

namespace A186621

/-- `A100493(n+1)-(n+2)` -/
def P11677883285440447375.Spec : Prop :=
  ∀ n, P11677883285440447375.a n = A186621 (n + 1)

end A186621

/-! ## A186621.P16576298011448587523

`A065516(n)+a(n-1)` with `a(0)=3`
-/

namespace A186621.P16576298011448587523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A065516 n + a (n - 1)

end

end A186621.P16576298011448587523

namespace A186621

/-- `A065516(n)+a(n-1)` -/
def P16576298011448587523.Spec : Prop :=
  ∀ n, P16576298011448587523.a n = A186621 (n + 1)

end A186621

/-! ## A186621.P4614763317779639101

`eq[4, A001222(2*n-(n-1))²]`
-/

namespace A186621.P4614763317779639101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186621.P4614763317779639101

namespace A186621

/-- `eq[4, A001222(2*n-(n-1))²]` -/
def P4614763317779639101.Spec : Prop :=
  ∀ n, (P4614763317779639101.a n : ℤ) = A186621 (n + 1)

end A186621

/-! ## A186621.P6518677376460245946

`record[n/a(A001222(n))]-1` with `a(0)=4, a(1)=4, a(2)=1, a(3)=2`
-/

namespace A186621.P6518677376460245946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4, 1, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A186621.P6518677376460245946

namespace A186621

/-- `record[n/a(A001222(n))]-1` -/
def P6518677376460245946.Spec : Prop :=
  ∀ n, P6518677376460245946.a n = (A186621 (n + 1) : ℚ)

end A186621

/-! ## A186621.P13260609872884894176

`A062198(n+1)-A110208(n)`
-/

namespace A186621.P13260609872884894176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (n + 1) - A110208 n

end

end A186621.P13260609872884894176

namespace A186621

/-- `A062198(n+1)-A110208(n)` -/
def P13260609872884894176.Spec : Prop :=
  ∀ n, P13260609872884894176.a n = A186621 (n + 1)

end A186621

/-! ## A186621.P11515253235677607807

`lt[A000032(C(A001222(n+1), 2)), 2]`
-/

namespace A186621.P11515253235677607807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose (A001222 (n + 1)).toNat 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A186621.P11515253235677607807

namespace A186621

/-- `lt[A000032(C(A001222(n+1), 2)), 2]` -/
def P11515253235677607807.Spec : Prop :=
  ∀ n, (P11515253235677607807.a n : ℤ) = A186621 (n + 1)

end A186621

/-! ## A186621.P9935405293285363957

`A176193(n+1)+A111939(n+1)`
-/

namespace A186621.P9935405293285363957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176193 (n + 1) + A111939 (n + 1)

end

end A186621.P9935405293285363957

namespace A186621

/-- `A176193(n+1)+A111939(n+1)` -/
def P9935405293285363957.Spec : Prop :=
  ∀ n, P9935405293285363957.a n = A186621 (n + 1)

end A186621

/-! ## A186621.P9797269750803303424

`A075818(n+1)%A088707(n+1)`
-/

namespace A186621.P9797269750803303424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075818 (n + 1)) (A088707 (n + 1))

end

end A186621.P9797269750803303424

namespace A186621

/-- `A075818(n+1)%A088707(n+1)` -/
def P9797269750803303424.Spec : Prop :=
  ∀ n, P9797269750803303424.a n = A186621 (n + 1)

end A186621

/-!
# A186622: Number of (n+2)X3 0..2 arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186622, there is no canonical definition to state claims against.
-/

/-! ## A186622.P5755760103879899962

`A186625(∑[n]+1)`
-/

namespace A186622.P5755760103879899962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186622.P5755760103879899962

/-! ## A186622.P2558477539557819389

`record[A010054(n)*A186625(n+1)]`
-/

namespace A186622.P2558477539557819389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186622.P2558477539557819389

/-! ## A186622.P16427564504159932715

`record[A103451(n)*A186625(n+1)]`
-/

namespace A186622.P16427564504159932715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A186625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186622.P16427564504159932715

/-! ## A186622.P17568147487307430267

`record[A176270(n)*A186625(n+1)]`
-/

namespace A186622.P17568147487307430267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A186625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186622.P17568147487307430267

/-!
# A186623: Number of (n+2)X4 0..2 arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186623, there is no canonical definition to state claims against.
-/

/-! ## A186623.P3279405947819146082

`A186625(∑[n+1]+2)`
-/

namespace A186623.P3279405947819146082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186625 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186623.P3279405947819146082

/-! ## A186623.P3694742147833162999

`record[A186625(A056536(n+1)+1)]`
-/

namespace A186623.P3694742147833162999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186625 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186623.P3694742147833162999

/-! ## A186623.P7022311468105995954

`record[A010054(n)*A186625(n+2)]`
-/

namespace A186623.P7022311468105995954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186625 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186623.P7022311468105995954

/-!
# A186624: Number of (n+2)X5 0..2 arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186624, there is no canonical definition to state claims against.
-/

/-! ## A186624.P8054989451738118679

`A186625(∑[n+2]+4)`
-/

namespace A186624.P8054989451738118679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186625 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186624.P8054989451738118679

/-!
# A186626: Number of (n+2)X3 0..3 arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186626, there is no canonical definition to state claims against.
-/

/-! ## A186626.P15763376392149447939

`A186629(∑[n]+1)`
-/

namespace A186626.P15763376392149447939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186629 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186626.P15763376392149447939

/-! ## A186626.P5642264643171771328

`lcm(2, A186629(A000124(n)))`
-/

namespace A186626.P5642264643171771328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186629 (A000124 n).toNat)

end

end A186626.P5642264643171771328

/-! ## A186626.P15724099746643946359

`record[A186629(A246276(n+1))]`
-/

namespace A186626.P15724099746643946359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186629 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186626.P15724099746643946359

/-!
# A186627: Number of (n+2)X4 0..3 arrays with 3X3 subblock sums nondecreasing rightwards and downwards.

The programs for A186627, there is no canonical definition to state claims against.
-/

/-! ## A186627.P8546508874353908531

`A186629(A000124(n+1)+1)`
-/

namespace A186627.P8546508874353908531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186629 (A000124 (n + 1) + 1).toNat

end

end A186627.P8546508874353908531

/-!
# A186632: E.g.f. satisfies: A(A(A(x))) = d/dx A(x)^2/2 with A(0)=0, A'(0)=1.

The programs for A186632, there is no canonical definition to state claims against.
-/

/-! ## A186632.P10975022214131923646

`n!*A245897(n+1)`
-/

namespace A186632.P10975022214131923646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A245897 (n + 1)

end

end A186632.P10975022214131923646

/-!
# A186633: G.f.: Product_{n>=1} (1 + n^n*x^n)^(1/n).

The programs for A186633, there is no canonical definition to state claims against.
-/

/-! ## A186633.P5591268681394944615

`A119345(A318917(n))+1`
-/

namespace A186633.P5591268681394944615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119345 (A318917 n).toNat + 1

end

end A186633.P5591268681394944615

/-! ## A186633.P9771490769996291763

`A007599(xor(5, A208829(n)))`
-/

namespace A186633.P9771490769996291763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (Int.xor 5 (A208829 n)).toNat

end

end A186633.P9771490769996291763

/-!
# A186634: Irregular triangle, read by rows, giving dense patterns of n primes.

The programs for A186634, there is no canonical definition to state claims against.
-/

/-! ## A186634.P1298748716873382701

`A002262(A110654(3*n+5))*A036453(A038221(n))`
-/

namespace A186634.P1298748716873382701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A110654 (3 * n + 5)).toNat * A036453 (A038221 n).toNat

end

end A186634.P1298748716873382701

/-! ## A186634.P6844620174866855269

`A000034(A213049(n+1))*A002262(A110654(3*n+5))`
-/

namespace A186634.P6844620174866855269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A213049 (n + 1)).toNat * A002262 (A110654 (3 * n + 5)).toNat

end

end A186634.P6844620174866855269

/-! ## A186634.P4207012674144730530

`A002262(A110654(3*n+5))*A328579(A214703(n+1))`
-/

namespace A186634.P4207012674144730530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A110654 (3 * n + 5)).toNat * A328579 (A214703 (n + 1)).toNat

end

end A186634.P4207012674144730530

/-!
# A186635: Primes p such that the decimal expansion of 1/p has a periodic part of odd length.

The programs for A186635, there is no canonical definition to state claims against.
-/

/-! ## A186635.P462020770061136534

`p?[(n+1)*A007732(n+1)%2]`
-/

namespace A186635.P462020770061136534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A007732 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186635.P462020770061136534

/-! ## A186635.P17798682833733964255

`p?[A000007(A069531(n+1))+n]`
-/

namespace A186635.P17798682833733964255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A069531 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186635.P17798682833733964255

/-! ## A186635.P13139004619953979522

`A000040(eq[0, A086981(n+1)]+1)`
-/

namespace A186635.P13139004619953979522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A186635.P13139004619953979522

/-! ## A186635.P16333915885698546749

`A000040(eq[0, A240665(n+1)]+1)`
-/

namespace A186635.P16333915885698546749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A186635.P16333915885698546749

/-! ## A186635.P13699868916577229085

`A000040(lt[A240665(n+1), 1]+1)`
-/

namespace A186635.P13699868916577229085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240665 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A186635.P13699868916577229085

/-! ## A186635.P15741346244966322553

`A000040(record[n+1-A086981(n+1)])`
-/

namespace A186635.P15741346244966322553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A086981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186635.P15741346244966322553

/-! ## A186635.P1129482890167917299

`p?[A086981(n+1)+A000040(n+1)]`
-/

namespace A186635.P1129482890167917299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086981 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186635.P1129482890167917299

/-! ## A186635.P16707496500735948749

`record[gcd(A000040(n+1), A240665(n+1))]`
-/

namespace A186635.P16707496500735948749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A240665 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186635.P16707496500735948749

/-! ## A186635.P15696189646832210779

`A000040(record[n/(A240665(n+1)+1)]+1)`
-/

namespace A186635.P15696189646832210779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A240665 (n + 1) + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A186635.P15696189646832210779

/-! ## A186635.P1153695407688095796

`record[A006530(A273943(A284601(n+1)))]`
-/

namespace A186635.P1153695407688095796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A273943 (A284601 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186635.P1153695407688095796

/-!
# A186636: a(n) = n*(n^3 + n^2 + 2*n + 1).

The programs for A186636, the canonical program `A186636.P1096689795045267467` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186636 has offset 0).

The definition of A186636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^3+n²+2*n+1)` (program `A186636.P1096689795045267467`, by `A186636.P1096689795045267467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186636.P1096689795045267467

`n*(n^3+n²+2*n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186636

/-- `n*(n^3+n²+2*n+1)` -/
def P1096689795045267467.Spec : Prop :=
  ∀ n, (P1096689795045267467.a n : ℤ) = A186636 n

theorem P1096689795045267467.correct : P1096689795045267467.Spec := by
  intro n
  simp only [A186636]

end A186636

/-! ## A186636.P1397876141559459610

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=5, a(2)=34, a(3)=129, a(4)=356`
-/

namespace A186636.P1397876141559459610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 34, 129, 356] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A186636.P1397876141559459610

namespace A186636

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1397876141559459610.Spec : Prop :=
  ∀ n, P1397876141559459610.a n = A186636 n

theorem P1397876141559459610.correct : P1397876141559459610.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A186636, Nat.add_sub_cancel, A186636.P1397876141559459610.a, A186636.P1096689795045267467.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A186636, Nat.add_sub_cancel, A186636.P1397876141559459610.a, A186636.P1096689795045267467.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A186636

/-! ## A186636.P9641387366522222970

`lcm(n, n^3+(n+1)²)`
-/

namespace A186636.P9641387366522222970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n ^ 3 + (n + 1) ^ 2)

end

end A186636.P9641387366522222970

namespace A186636

/-- `lcm(n, n^3+(n+1)²)` -/
def P9641387366522222970.Spec : Prop :=
  ∀ n, (P9641387366522222970.a n : ℤ) = A186636 n

end A186636

/-! ## A186636.P10477936484273234656

`or(2, n²)*∑[2*n]-n`
-/

namespace A186636.P10477936484273234656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 (n ^ 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A186636.P10477936484273234656

namespace A186636

/-- `or(2, n²)*∑[2*n]-n` -/
def P10477936484273234656.Spec : Prop :=
  ∀ n, P10477936484273234656.a n = A186636 n

end A186636

/-! ## A186636.P12521574566363167372

`xor(2, n²)*∑[2*n]-n`
-/

namespace A186636.P12521574566363167372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (n ^ 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A186636.P12521574566363167372

namespace A186636

/-- `xor(2, n²)*∑[2*n]-n` -/
def P12521574566363167372.Spec : Prop :=
  ∀ n, P12521574566363167372.a n = A186636 n

end A186636

/-! ## A186636.P9614161686390665153

`(xor(2, n²)+n)*n²+n`
-/

namespace A186636.P9614161686390665153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (n ^ 2) + n) * n ^ 2 + n

end

end A186636.P9614161686390665153

namespace A186636

/-- `(xor(2, n²)+n)*n²+n` -/
def P9614161686390665153.Spec : Prop :=
  ∀ n, (P9614161686390665153.a n : ℤ) = A186636 n

end A186636

/-! ## A186636.P6306725035301780365

`lcm((n+1)², ∑[2*n])+n²²`
-/

namespace A186636.P6306725035301780365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2) ^ 2

end

end A186636.P6306725035301780365

namespace A186636

/-- `lcm((n+1)², ∑[2*n])+n²²` -/
def P6306725035301780365.Spec : Prop :=
  ∀ n, (P6306725035301780365.a n : ℤ) = A186636 n

end A186636

/-! ## A186636.P9031124727794173515

`C(2*n+1, 2)+n²*∑[2*n]`
-/

namespace A186636.P9031124727794173515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2 + n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186636.P9031124727794173515

namespace A186636

/-- `C(2*n+1, 2)+n²*∑[2*n]` -/
def P9031124727794173515.Spec : Prop :=
  ∀ n, (P9031124727794173515.a n : ℤ) = A186636 n

end A186636

/-! ## A186636.P8885939458797638424

`A027445(n)+n²`
-/

namespace A186636.P8885939458797638424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 n + (n ^ 2 : ℤ)

end

end A186636.P8885939458797638424

namespace A186636

/-- `A027445(n)+n²` -/
def P8885939458797638424.Spec : Prop :=
  ∀ n, P8885939458797638424.a n = A186636 n

end A186636

/-! ## A186636.P3370287070132587679

`6*A071239(n)-n`
-/

namespace A186636.P3370287070132587679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A071239 n - (n : ℤ)

end

end A186636.P3370287070132587679

namespace A186636

/-- `6*A071239(n)-n` -/
def P3370287070132587679.Spec : Prop :=
  ∀ n, P3370287070132587679.a n = A186636 n

end A186636

/-! ## A186636.P16607512242637443301

`n²+A053699(n)-1`
-/

namespace A186636.P16607512242637443301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A053699 n - 1)

end

end A186636.P16607512242637443301

namespace A186636

/-- `n²+A053699(n)-1` -/
def P16607512242637443301.Spec : Prop :=
  ∀ n, P16607512242637443301.a n = A186636 n

end A186636

/-! ## A186636.P10210907536988952867

`n²+2*A071237(n)`
-/

namespace A186636.P10210907536988952867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A071237 n

end

end A186636.P10210907536988952867

namespace A186636

/-- `n²+2*A071237(n)` -/
def P10210907536988952867.Spec : Prop :=
  ∀ n, P10210907536988952867.a n = A186636 n

end A186636

/-! ## A186636.P15066743107211432950

`A100606(n)+2*n²`
-/

namespace A186636.P15066743107211432950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100606 n + (2 * n ^ 2 : ℤ)

end

end A186636.P15066743107211432950

namespace A186636

/-- `A100606(n)+2*n²` -/
def P15066743107211432950.Spec : Prop :=
  ∀ n, P15066743107211432950.a n = A186636 n

end A186636

/-! ## A186636.P124157573454507079

`A100019(n)+∑[2*n]`
-/

namespace A186636.P124157573454507079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A186636.P124157573454507079

namespace A186636

/-- `A100019(n)+∑[2*n]` -/
def P124157573454507079.Spec : Prop :=
  ∀ n, P124157573454507079.a n = A186636 n

end A186636

/-! ## A186636.P15993872270560636245

`n²*A014206(n)+n`
-/

namespace A186636.P15993872270560636245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A014206 n + (n : ℤ)

end

end A186636.P15993872270560636245

namespace A186636

/-- `n²*A014206(n)+n` -/
def P15993872270560636245.Spec : Prop :=
  ∀ n, P15993872270560636245.a n = A186636 n

end A186636

/-! ## A186636.P3721044242673957085

`∑[n]*A255843(n)-n`
-/

namespace A186636.P3721044242673957085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A255843 n - (n : ℤ)

end

end A186636.P3721044242673957085

namespace A186636

/-- `∑[n]*A255843(n)-n` -/
def P3721044242673957085.Spec : Prop :=
  ∀ n, P3721044242673957085.a n = A186636 n

end A186636

/-! ## A186636.P15398507015626134382

`∑[A049451(n)]+n²²`
-/

namespace A186636.P15398507015626134382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n ^ 2) ^ 2 : ℤ)

end

end A186636.P15398507015626134382

namespace A186636

/-- `∑[A049451(n)]+n²²` -/
def P15398507015626134382.Spec : Prop :=
  ∀ n, P15398507015626134382.a n = A186636 n

end A186636

/-! ## A186636.P9219254485123491297

`(n+1)*A054602(n)-n`
-/

namespace A186636.P9219254485123491297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054602 n - (n : ℤ)

end

end A186636.P9219254485123491297

namespace A186636

/-- `(n+1)*A054602(n)-n` -/
def P9219254485123491297.Spec : Prop :=
  ∀ n, P9219254485123491297.a n = A186636 n

end A186636

/-! ## A186636.P15542567059821834902

`2*n*A064808(n)-n`
-/

namespace A186636.P15542567059821834902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A064808 n) - (n : ℤ)

end

end A186636.P15542567059821834902

namespace A186636

/-- `2*n*A064808(n)-n` -/
def P15542567059821834902.Spec : Prop :=
  ∀ n, P15542567059821834902.a n = A186636 n

end A186636

/-! ## A186636.P11323564261660263144

`A000583(n)+n*(n+1)²`
-/

namespace A186636.P11323564261660263144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + (n * (n + 1) ^ 2 : ℤ)

end

end A186636.P11323564261660263144

namespace A186636

/-- `A000583(n)+n*(n+1)²` -/
def P11323564261660263144.Spec : Prop :=
  ∀ n, P11323564261660263144.a n = A186636 n

end A186636

/-!
# A186637: Semiprime powers with special exponents: k^(j-1) where both j and k are arbitrary semiprime numbers.

The programs for A186637, there is no canonical definition to state claims against.
-/

/-! ## A186637.P10953819099243297229

`filter[A383018(n+1), A380439(#)]`
-/

namespace A186637.P10953819099243297229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A186637.P10953819099243297229

/-! ## A186637.P6733064329832626756

`∩[A383018(n+1), A111307(n)]`
-/

namespace A186637.P6733064329832626756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186637.P6733064329832626756

/-! ## A186637.P5962754850919434413

`∩[A070265(n+1), A383018(n+1)]`
-/

namespace A186637.P5962754850919434413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186637.P5962754850919434413

/-! ## A186637.P2590841504312299753

`∩[A076467(n+1), A383018(n+1)]`
-/

namespace A186637.P2590841504312299753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186637.P2590841504312299753

/-! ## A186637.P181750571236170396

`∩[A111231(n+1), A383018(n+1)]`
-/

namespace A186637.P181750571236170396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186637.P181750571236170396

/-!
# A186638: a(0)=a(1)=a(2)=0; thereafter a(n) = n*a(n-1) + n*a(n-2)/(n-2) + (-1)^(n-1)*4/(n-2).

The programs for A186638, there is no canonical definition to state claims against.
-/

/-! ## A186638.P4103704864123114130

`((n²-2*n)*a(n-1)+n*a(n-2)-4*(-1)^n)/(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A186638.P4103704864123114130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (((n ^ 2 : ℤ) - (2 * n : ℤ) : ℚ) * a (n - 1) + (n : ℚ) * a (n - 2) - (4 * (-1) ^ n : ℚ)) / ((n : ℤ) - 2 : ℚ)

end

end A186638.P4103704864123114130

/-! ## A186638.P18287484472424746646

`A289438(A307495(n)+A031253(n+1))`
-/

namespace A186638.P18287484472424746646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (A307495 n + A031253 (n + 1)).toNat

end

end A186638.P18287484472424746646

/-! ## A186638.P10562731628062276342

`xor(A140130(n+2), A232807(A002905(n)))`
-/

namespace A186638.P10562731628062276342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A140130 (n + 2)) (A232807 (A002905 n).toNat)

end

end A186638.P10562731628062276342

/-!
# A186639: a(n) = n!/2-(-2)^(n-2)*(n-2).

The programs for A186639, there is no canonical definition to state claims against.
-/

/-! ## A186639.P2805911550939805779

`and(A148838(A073788(n))-n, A222748(n))`
-/

namespace A186639.P2805911550939805779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148838 (A073788 n).toNat - (n : ℤ)) (A222748 n)

end

end A186639.P2805911550939805779

/-!
# A186640: Primes p such that the decimal expansion of 1/p has a periodic part of even length, but are not cyclic numbers (A001913).

The programs for A186640, there is no canonical definition to state claims against.
-/

/-! ## A186640.P1718407243087921155

`∩[A006559(n+1), A028416(n+1)]`
-/

namespace A186640.P1718407243087921155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186640.P1718407243087921155

/-! ## A186640.P816307212499865321

`∩[A006559(n+1), A043292(n+1)]`
-/

namespace A186640.P816307212499865321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186640.P816307212499865321

/-! ## A186640.P12595923290557485913

`∩[A006559(n+1), A284602(n+1)]`
-/

namespace A186640.P12595923290557485913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186640.P12595923290557485913

/-! ## A186640.P9900866213925604853

`∩[p?[(n+1)%(A069531(n+1)+n+1)], A006559(n+1)]`
-/

namespace A186640.P9900866213925604853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A069531 (n + 1) + (n + 1 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A186640.P9900866213925604853

/-! ## A186640.P6541179824867526093

`∩[A028416(n+1), A186641(n+1)]`
-/

namespace A186640.P6541179824867526093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186640.P6541179824867526093

/-!
# A186641: Primes that are not cyclic numbers (A001913).

The programs for A186641, there is no canonical definition to state claims against.
-/

/-! ## A186641.P3635197737315579022

`p?[comp[A001913(n+1)]]`
-/

namespace A186641.P3635197737315579022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A186641.P3635197737315579022

/-! ## A186641.P4557879053889243632

`p?[comp[A167797(n+1)]]`
-/

namespace A186641.P4557879053889243632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A186641.P4557879053889243632

/-! ## A186641.P6046027097979925157

`p?[comp[A306355(n+3)]]`
-/

namespace A186641.P6046027097979925157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A186641.P6046027097979925157

/-! ## A186641.P17578527977051834321

`p?[abs(C(A051626(n+1), n)-(n+1))]`
-/

namespace A186641.P17578527977051834321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A051626 (n + 1)).toNat n : ℤ) - (n + 1 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186641.P17578527977051834321

/-! ## A186641.P7967192945531195073

`p?[round(n+1-A007732(n+1)/(n+1))]`
-/

namespace A186641.P7967192945531195073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) - (A007732 (n + 1) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186641.P7967192945531195073

/-! ## A186641.P14487784262302471974

`∪[A006559(n+1), A038879(n+1)]`
-/

namespace A186641.P14487784262302471974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186641.P14487784262302471974

/-! ## A186641.P7344811672468870665

`∪[A006559(n+1), A040119(n+1)]`
-/

namespace A186641.P7344811672468870665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186641.P7344811672468870665

/-! ## A186641.P7244827908411982154

`∪[A006559(n+1), A082520(n+1)]`
-/

namespace A186641.P7244827908411982154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186641.P7244827908411982154

/-! ## A186641.P10674443036748570184

`∪[A006559(n+1), A088547(n+1)]`
-/

namespace A186641.P10674443036748570184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186641.P10674443036748570184

/-! ## A186641.P16569409410741571640

`∪[A006559(n+1), A089195(n+1)]`
-/

namespace A186641.P16569409410741571640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186641.P16569409410741571640

/-!
# A186643: The number of divisors d of n which are either d=1 or for which the highest power d^k dividing n has odd exponent k.

The programs for A186643, there is no canonical definition to state claims against.
-/

/-! ## A186643.P9825289829808854539

`A257991(A293514(n+1))+1`
-/

namespace A186643.P9825289829808854539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A293514 (n + 1)).toNat + 1

end

end A186643.P9825289829808854539

/-! ## A186643.P14843378757481244507

`Δ[A006218(n)]-A257992(A293514(n+1))`
-/

namespace A186643.P14843378757481244507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A257992 (A293514 (n + 1)).toNat

end

end A186643.P14843378757481244507

/-! ## A186643.P2440538652225062518

`A000005(n+1)-A257992(A293514(n+1))`
-/

namespace A186643.P2440538652225062518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A257992 (A293514 (n + 1)).toNat

end

end A186643.P2440538652225062518

/-! ## A186643.P6772932128351803223

`A083654(A051903(n+1))+A007814(A293514(n+1))`
-/

namespace A186643.P6772932128351803223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083654 (A051903 (n + 1)).toNat + A007814 (A293514 (n + 1)).toNat

end

end A186643.P6772932128351803223

/-!
# A186644: The sum of the oex divisors of n.

The programs for A186644, there is no canonical definition to state claims against.
-/

/-! ## A186644.P14203640318047980142

`A345320(n+1)+A333844(∑[A072861(n+1)])`
-/

namespace A186644.P14203640318047980142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345320 (n + 1) + A333844 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186644.P14203640318047980142

/-! ## A186644.P14804735510385502455

`A333843((n+1)*Δ[n^3])+∑{d}[n+1, #%((n+1)%#²+1)]`
-/

namespace A186644.P14804735510385502455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333843 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat + ((∑ d ∈ Nat.divisors (f2 n), d % ((n + 1) % d ^ 2 + 1) : ℕ) : ℤ)

end

end A186644.P14804735510385502455

/-! ## A186644.P17450672438460449343

`A083910(A006906(n))+A049417(n+1)`
-/

namespace A186644.P17450672438460449343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (A006906 n).toNat + A049417 (n + 1)

end

end A186644.P17450672438460449343

/-! ## A186644.P1437039338736941657

`A324706(n+1)+A324683(A034891(n))`
-/

namespace A186644.P1437039338736941657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324706 (n + 1) + A324683 (A034891 n).toNat

end

end A186644.P1437039338736941657

/-! ## A186644.P10877490216031026676

`A185036(A003415(n+1))+A049417(n+1)`
-/

namespace A186644.P10877490216031026676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 (A003415 (n + 1)).toNat + A049417 (n + 1)

end

end A186644.P10877490216031026676

/-!
# A186645: Numbers k such that 2^(k-1) == 1 + b*k (mod k^2), where b divides k-1.

The programs for A186645, there is no canonical definition to state claims against.
-/

/-! ## A186645.P12677574927437593276

`∩[A102213(n+1), A186884(n+1)]`
-/

namespace A186645.P12677574927437593276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186645.P12677574927437593276

/-! ## A186645.P11236206785630351198

`∩[A186884(n+1), A091679(n)]`
-/

namespace A186645.P11236206785630351198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091679 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186645.P11236206785630351198

/-! ## A186645.P6919170722875594044

`∩[A186884(n+1), A093579(n)]`
-/

namespace A186645.P6919170722875594044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186645.P6919170722875594044

/-! ## A186645.P4906166232638997140

`record[p?[A093579(A060000(n+1))]]`
-/

namespace A186645.P4906166232638997140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 (A060000 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186645.P4906166232638997140

/-! ## A186645.P1520131293941370748

`∩[A028789(n+1), A186884(n+1)]`
-/

namespace A186645.P1520131293941370748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186645.P1520131293941370748

/-!
# A186646: Every fourth term of the sequence of natural numbers 1,2,3,4,... is halved.

The programs for A186646, the canonical program `A186646.P11372878948210775624` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186646 has offset 1).

The definition of A186646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186646.P11372878948210775624

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2, a(4)=5, a(5)=6, a(6)=7, a(7)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186646

/-- `2*a(n-4)-a(n-8)` -/
def P11372878948210775624.Spec : Prop :=
  ∀ n, P11372878948210775624.a n = A186646 (n + 1)

theorem P11372878948210775624.correct : P11372878948210775624.Spec := by
  intro n
  simp only [A186646, Nat.add_sub_cancel]

end A186646

/-! ## A186646.P11231945991000451917

`gcd(n+1, lcm(2, ∑[n]))`
-/

namespace A186646.P11231945991000451917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A186646.P11231945991000451917

namespace A186646

/-- `gcd(n+1, lcm(2, ∑[n]))` -/
def P11231945991000451917.Spec : Prop :=
  ∀ n, (P11231945991000451917.a n : ℤ) = A186646 (n + 1)

end A186646

/-! ## A186646.P2607430849694089187

`(n+1)/and(2, n^3)!`
-/

namespace A186646.P2607430849694089187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (Nat.land 2 (n ^ 3)) : ℚ)

end

end A186646.P2607430849694089187

namespace A186646

/-- `(n+1)/and(2, n^3)!` -/
def P2607430849694089187.Spec : Prop :=
  ∀ n, P2607430849694089187.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P8531595814518321300

`(n+1)/(char[or(3, n)]+1)`
-/

namespace A186646.P8531595814518321300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A186646.P8531595814518321300

namespace A186646

/-- `(n+1)/(char[or(3, n)]+1)` -/
def P8531595814518321300.Spec : Prop :=
  ∀ n, P8531595814518321300.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P7276594572248202062

`(n+1)/gcd(1-n, ∑[n])`
-/

namespace A186646.P7276594572248202062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (1 - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ)

end

end A186646.P7276594572248202062

namespace A186646

/-- `(n+1)/gcd(1-n, ∑[n])` -/
def P7276594572248202062.Spec : Prop :=
  ∀ n, P7276594572248202062.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P17799403632771216805

`(n+1)/round(sqrt(n%4))!`
-/

namespace A186646.P17799403632771216805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt ((n % 4 : ℕ) : ℝ))).toNat : ℚ)

end

end A186646.P17799403632771216805

namespace A186646

/-- `(n+1)/round(sqrt(n%4))!` -/
def P17799403632771216805.Spec : Prop :=
  ∀ n, P17799403632771216805.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P17743904151541773221

`(n+1)/gcd(4, n+3)%3`
-/

namespace A186646.P17743904151541773221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.gcd 4 (n + 3) % 3 : ℕ) : ℚ)

end

end A186646.P17743904151541773221

namespace A186646

/-- `(n+1)/gcd(4, n+3)%3` -/
def P17743904151541773221.Spec : Prop :=
  ∀ n, P17743904151541773221.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P11937627459955885403

`(n+1)/(C(n, 3)%2+1)`
-/

namespace A186646.P11937627459955885403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.choose n 3 % 2 + 1 : ℕ) : ℚ)

end

end A186646.P11937627459955885403

namespace A186646

/-- `(n+1)/(C(n, 3)%2+1)` -/
def P11937627459955885403.Spec : Prop :=
  ∀ n, P11937627459955885403.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P10371248414700706083

`lcm(4, n+1)/(2*gcd(2, n))`
-/

namespace A186646.P10371248414700706083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℚ) / (2 * Nat.gcd 2 n : ℚ)

end

end A186646.P10371248414700706083

namespace A186646

/-- `lcm(4, n+1)/(2*gcd(2, n))` -/
def P10371248414700706083.Spec : Prop :=
  ∀ n, P10371248414700706083.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P4136621847709290914

`(n+1)/ceil(acot((n+1)%4))`
-/

namespace A186646.P4136621847709290914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈SequenceMachineLib.acot (((n + 1) % 4 : ℕ) : ℝ)⌉ : ℚ)

end

end A186646.P4136621847709290914

namespace A186646

/-- `(n+1)/ceil(acot((n+1)%4))` -/
def P4136621847709290914.Spec : Prop :=
  ∀ n, P4136621847709290914.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P4185435585728343942

`(n+1)/C(2, val(n+3, 2))!`
-/

namespace A186646.P4185435585728343942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (Nat.choose 2 (SequenceMachineLib.valuation (n + 3) 2)) : ℚ)

end

end A186646.P4185435585728343942

namespace A186646

/-- `(n+1)/C(2, val(n+3, 2))!` -/
def P4185435585728343942.Spec : Prop :=
  ∀ n, P4185435585728343942.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P6409749763422869523

`(n+1)/val(or(4, n+1), 2)!`
-/

namespace A186646.P6409749763422869523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (SequenceMachineLib.valuation (Nat.lor 4 (n + 1)) 2) : ℚ)

end

end A186646.P6409749763422869523

namespace A186646

/-- `(n+1)/val(or(4, n+1), 2)!` -/
def P6409749763422869523.Spec : Prop :=
  ∀ n, P6409749763422869523.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P526596090341365074

`(n+1)/C(2, and(3, n+2))!`
-/

namespace A186646.P526596090341365074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (Nat.choose 2 (Nat.land 3 (n + 2))) : ℚ)

end

end A186646.P526596090341365074

namespace A186646

/-- `(n+1)/C(2, and(3, n+2))!` -/
def P526596090341365074.Spec : Prop :=
  ∀ n, P526596090341365074.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P7153611253545011058

`(n+1)/ceil((n+1)/or(3, n))`
-/

namespace A186646.P7153611253545011058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(n + 1 : ℚ) / (Nat.lor 3 n : ℚ)⌉ : ℚ)

end

end A186646.P7153611253545011058

namespace A186646

/-- `(n+1)/ceil((n+1)/or(3, n))` -/
def P7153611253545011058.Spec : Prop :=
  ∀ n, P7153611253545011058.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P10834206907775837102

`(n+1)/sqrt(and(4, (1-n)²))!`
-/

namespace A186646.P10834206907775837102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (Int.land 4 ((1 - (n : ℤ)) ^ 2) : ℝ))).toNat : ℚ)

end

end A186646.P10834206907775837102

namespace A186646

/-- `(n+1)/sqrt(and(4, (1-n)²))!` -/
def P10834206907775837102.Spec : Prop :=
  ∀ n, P10834206907775837102.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P7303902658981135855

`(n+1)/∏{e}[or(n+1, -4), #]`
-/

namespace A186646.P7303902658981135855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A186646.P7303902658981135855

namespace A186646

/-- `(n+1)/∏{e}[or(n+1, -4), #]` -/
def P7303902658981135855.Spec : Prop :=
  ∀ n, P7303902658981135855.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P12982305867048538600

`gcd(C(n+1, n), ∑[(n+3)*n²])`
-/

namespace A186646.P12982305867048538600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (n + 1) n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186646.P12982305867048538600

namespace A186646

/-- `gcd(C(n+1, n), ∑[(n+3)*n²])` -/
def P12982305867048538600.Spec : Prop :=
  ∀ n, (P12982305867048538600.a n : ℤ) = A186646 (n + 1)

end A186646

/-! ## A186646.P4304212924383940182

`(n+1)/gcd(n-1, C(n+1, 2))!`
-/

namespace A186646.P4304212924383940182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (Int.gcd ((n : ℤ) - 1) (Nat.choose (n + 1) 2 : ℤ)) : ℚ)

end

end A186646.P4304212924383940182

namespace A186646

/-- `(n+1)/gcd(n-1, C(n+1, 2))!` -/
def P4304212924383940182.Spec : Prop :=
  ∀ n, P4304212924383940182.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P11438884040631218806

`lcm(n+3, ∑[n+1])/C(n+3, 2)`
-/

namespace A186646.P11438884040631218806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (Nat.choose (n + 3) 2 : ℚ)

end

end A186646.P11438884040631218806

namespace A186646

/-- `lcm(n+3, ∑[n+1])/C(n+3, 2)` -/
def P11438884040631218806.Spec : Prop :=
  ∀ n, P11438884040631218806.a n = (A186646 (n + 1) : ℚ)

end A186646

/-! ## A186646.P9543022829151954664

`n+1-∑[∑[(n+3)²]]%(n+1)`
-/

namespace A186646.P9543022829151954664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A186646.P9543022829151954664

namespace A186646

/-- `n+1-∑[∑[(n+3)²]]%(n+1)` -/
def P9543022829151954664.Spec : Prop :=
  ∀ n, P9543022829151954664.a n = A186646 (n + 1)

end A186646

/-!
# A186647: Even numbers whose decimal digits sum to a prime.

The programs for A186647, the canonical program `A186647.P15378219803120056282` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186647 has offset 1).

The definition of A186647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186647.P14816663532400177312

`∩[2*n, A028834(n+1)]`
-/

namespace A186647.P14816663532400177312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186647.P14816663532400177312

namespace A186647

/-- `∩[2*n, A028834(n+1)]` -/
def P14816663532400177312.Spec : Prop :=
  ∀ n, (P14816663532400177312.a n : ℤ) = A186647 (n + 1)

end A186647

/-! ## A186647.P6039776042789665059

`record[A348717(A028834(n+1))]`
-/

namespace A186647.P6039776042789665059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A028834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186647.P6039776042789665059

namespace A186647

/-- `record[A348717(A028834(n+1))]` -/
def P6039776042789665059.Spec : Prop :=
  ∀ n, P6039776042789665059.a n = A186647 (n + 1)

end A186647

/-! ## A186647.P16009441875241804143

`filter[A028834(n+1), A059841(#)]`
-/

namespace A186647.P16009441875241804143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A186647.P16009441875241804143

namespace A186647

/-- `filter[A028834(n+1), A059841(#)]` -/
def P16009441875241804143.Spec : Prop :=
  ∀ n, P16009441875241804143.a n = A186647 (n + 1)

end A186647

/-! ## A186647.P13252532288402369944

`filter[A028834(n+1), A135528(#)]`
-/

namespace A186647.P13252532288402369944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A186647.P13252532288402369944

namespace A186647

/-- `filter[A028834(n+1), A135528(#)]` -/
def P13252532288402369944.Spec : Prop :=
  ∀ n, P13252532288402369944.a n = A186647 (n + 1)

end A186647

/-! ## A186647.P3942920873456207865

`filter[A028834(n+1), A266591(#)]`
-/

namespace A186647.P3942920873456207865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A186647.P3942920873456207865

namespace A186647

/-- `filter[A028834(n+1), A266591(#)]` -/
def P3942920873456207865.Spec : Prop :=
  ∀ n, P3942920873456207865.a n = A186647 (n + 1)

end A186647

/-! ## A186647.P18309916143402399784

`∩[A028834(n+1), A004275(n)]`
-/

namespace A186647.P18309916143402399784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186647.P18309916143402399784

namespace A186647

/-- `∩[A028834(n+1), A004275(n)]` -/
def P18309916143402399784.Spec : Prop :=
  ∀ n, (P18309916143402399784.a n : ℤ) = A186647 (n + 1)

end A186647

/-! ## A186647.P8286321942657877939

`∩[A028834(n+1), A004277(n)]`
-/

namespace A186647.P8286321942657877939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186647.P8286321942657877939

namespace A186647

/-- `∩[A028834(n+1), A004277(n)]` -/
def P8286321942657877939.Spec : Prop :=
  ∀ n, (P8286321942657877939.a n : ℤ) = A186647 (n + 1)

end A186647

/-! ## A186647.P990945821692640298

`∩[A028834(n+1), A005843(n)]`
-/

namespace A186647.P990945821692640298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186647.P990945821692640298

namespace A186647

/-- `∩[A028834(n+1), A005843(n)]` -/
def P990945821692640298.Spec : Prop :=
  ∀ n, (P990945821692640298.a n : ℤ) = A186647 (n + 1)

end A186647

/-! ## A186647.P8270657566877644410

`∩[A028834(n+1), A119432(n+1)]`
-/

namespace A186647.P8270657566877644410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186647.P8270657566877644410

namespace A186647

/-- `∩[A028834(n+1), A119432(n+1)]` -/
def P8270657566877644410.Spec : Prop :=
  ∀ n, (P8270657566877644410.a n : ℤ) = A186647 (n + 1)

end A186647

/-! ## A186647.P7499082434443919192

`record[A060819(A028834(n+1)+1)-1]`
-/

namespace A186647.P7499082434443919192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A028834 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186647.P7499082434443919192

namespace A186647

/-- `record[A060819(A028834(n+1)+1)-1]` -/
def P7499082434443919192.Spec : Prop :=
  ∀ n, P7499082434443919192.a n = A186647 (n + 1)

end A186647

/-! ## A186647.P10925429098094508364

`A028834(eq[2, gcd(2, A028834(n+1))]+1)`
-/

namespace A186647.P10925429098094508364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A028834 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A186647.P10925429098094508364

namespace A186647

/-- `A028834(eq[2, gcd(2, A028834(n+1))]+1)` -/
def P10925429098094508364.Spec : Prop :=
  ∀ n, P10925429098094508364.a n = A186647 (n + 1)

end A186647

/-! ## A186647.P15378219803120056282

`eq[A000034(n), A003415(A007953(n))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A186647

/-- `eq[A000034(n), A003415(A007953(n))]` -/
def P15378219803120056282.Spec : Prop :=
  ∀ n, (P15378219803120056282.a n : ℤ) = A186647 (n + 1)

theorem P15378219803120056282.correct : P15378219803120056282.Spec := by
  intro n
  simp only [A186647, Nat.add_sub_cancel]

end A186647

/-! ## A186647.P8774933144192503825

`eq[A093178(n), A115122(A007953(n))]`
-/

namespace A186647.P8774933144192503825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115122 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186647.P8774933144192503825

namespace A186647

/-- `eq[A093178(n), A115122(A007953(n))]` -/
def P8774933144192503825.Spec : Prop :=
  ∀ n, (P8774933144192503825.a n : ℤ) = A186647 (n + 1)

end A186647

/-! ## A186647.P7051161680022038047

`eq[A003415(A007953(n)), A266303(n)]`
-/

namespace A186647.P7051161680022038047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186647.P7051161680022038047

namespace A186647

/-- `eq[A003415(A007953(n)), A266303(n)]` -/
def P7051161680022038047.Spec : Prop :=
  ∀ n, (P7051161680022038047.a n : ℤ) = A186647 (n + 1)

end A186647

/-! ## A186647.P15040613965991307059

`eq[A003415(A007953(n)), A064034(a(n-2))]` with `a(0)=1, a(1)=9`
-/

namespace A186647.P15040613965991307059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f2 =>
  A064034 (f2 (n - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186647.P15040613965991307059

namespace A186647

/-- `eq[A003415(A007953(n)), A064034(a(n-2))]` -/
def P15040613965991307059.Spec : Prop :=
  ∀ n, (P15040613965991307059.a n : ℤ) = A186647 (n + 1)

end A186647

/-! ## A186647.P15861691239697326947

`eq[A172130(A007953(n)+1)+n, A000265(n+1)]`
-/

namespace A186647.P15861691239697326947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172130 (A007953 n + 1).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186647.P15861691239697326947

namespace A186647

/-- `eq[A172130(A007953(n)+1)+n, A000265(n+1)]` -/
def P15861691239697326947.Spec : Prop :=
  ∀ n, (P15861691239697326947.a n : ℤ) = A186647 (n + 1)

end A186647

/-! ## A186647.P7623276770047364282

`∩[2*n, A020725(A129630(n+1))]`
-/

namespace A186647.P7623276770047364282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A129630 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186647.P7623276770047364282

namespace A186647

/-- `∩[2*n, A020725(A129630(n+1))]` -/
def P7623276770047364282.Spec : Prop :=
  ∀ n, (P7623276770047364282.a n : ℤ) = A186647 (n + 1)

end A186647

/-! ## A186647.P16795820755792780055

`∩[A020725(A129630(n+1)), A020725(n+1)+n]`
-/

namespace A186647.P16795820755792780055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A129630 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186647.P16795820755792780055

namespace A186647

/-- `∩[A020725(A129630(n+1)), A020725(n+1)+n]` -/
def P16795820755792780055.Spec : Prop :=
  ∀ n, (P16795820755792780055.a n : ℤ) = A186647 (n + 1)

end A186647

/-!
# A186648: Number of walks f length n on a square lattice ending with x > 0 and y > 0.

The programs for A186648, the canonical program `A186648.P1074601965307673804` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186648 has offset 0).

The definition of A186648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186648.P18381714722301106839

`A187151(n)-A000984(n)`
-/

namespace A186648.P18381714722301106839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187151 n - A000984 n

end

end A186648.P18381714722301106839

namespace A186648

/-- `A187151(n)-A000984(n)` -/
def P18381714722301106839.Spec : Prop :=
  ∀ n, P18381714722301106839.a n = A186648 n

end A186648

/-! ## A186648.P311748787877714071

`A187151(n)-A001405(2*n)`
-/

namespace A186648.P311748787877714071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187151 n - A001405 (2 * n)

end

end A186648.P311748787877714071

namespace A186648

/-- `A187151(n)-A001405(2*n)` -/
def P311748787877714071.Spec : Prop :=
  ∀ n, P311748787877714071.a n = A186648 n

end A186648

/-! ## A186648.P12111819367318368333

`A187151(n)-A081668(2*n)`
-/

namespace A186648.P12111819367318368333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187151 n - A081668 (2 * n)

end

end A186648.P12111819367318368333

namespace A186648

/-- `A187151(n)-A081668(2*n)` -/
def P12111819367318368333.Spec : Prop :=
  ∀ n, P12111819367318368333.a n = A186648 n

end A186648

/-! ## A186648.P5608631601381638496

`A264960(n)-A187151(n)`
-/

namespace A186648.P5608631601381638496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264960 n - A187151 n

end

end A186648.P5608631601381638496

namespace A186648

/-- `A264960(n)-A187151(n)` -/
def P5608631601381638496.Spec : Prop :=
  ∀ n, P5608631601381638496.a n = A186648 n

end A186648

/-! ## A186648.P1074601965307673804

`(A264960(n)-A000984(n))/2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A186648

/-- `(A264960(n)-A000984(n))/2` -/
def P1074601965307673804.Spec : Prop :=
  ∀ n, P1074601965307673804.a n = (A186648 n : ℚ)

end A186648

/-! ## A186648.P2351731819239728074

`A187151(n)-A007318(∑[4*n])`
-/

namespace A186648.P2351731819239728074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187151 n - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186648.P2351731819239728074

namespace A186648

/-- `A187151(n)-A007318(∑[4*n])` -/
def P2351731819239728074.Spec : Prop :=
  ∀ n, P2351731819239728074.a n = A186648 n

end A186648

/-!
# A186649: Total number of positive integers below 10^n requiring 2 positive biquadrates in their representation as sum of biquadrates.

The programs for A186649, there is no canonical definition to state claims against.
-/

/-! ## A186649.P18407606570751753994

`∑[A186650(n+1)]`
-/

namespace A186649.P18407606570751753994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186649.P18407606570751753994

/-! ## A186649.P8563033039614141862

`∑[record[A186650(A020986(n))]]`
-/

namespace A186649.P8563033039614141862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186650 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186649.P8563033039614141862

/-! ## A186649.P9634847875955532446

`∑[record[A186650(A022446(n))]]`
-/

namespace A186649.P9634847875955532446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186650 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186649.P9634847875955532446

/-! ## A186649.P16253333369656053608

`∑[record[A186650(A028920(n))]]`
-/

namespace A186649.P16253333369656053608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186650 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186649.P16253333369656053608

/-! ## A186649.P16835345177166547828

`∑[record[A186650(A319416(n))]]`
-/

namespace A186649.P16835345177166547828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186650 (A319416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186649.P16835345177166547828

/-!
# A186650: Total number of n-digit numbers requiring 2 positive biquadrates in their representation as sum of biquadrates.

The programs for A186650, there is no canonical definition to state claims against.
-/

/-! ## A186650.P15556027652378420507

`Δ[A186649(n)+a(A317961(3*(n+1))-1)]` with `a(0)=1`
-/

namespace A186650.P15556027652378420507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A186649 n + f1 (A317961 (3 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186650.P15556027652378420507

/-! ## A186650.P4774219105199004106

`A233780(A000127(n+1))+A062610(n+1)`
-/

namespace A186650.P4774219105199004106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A000127 (n + 1)).toNat + A062610 (n + 1)

end

end A186650.P4774219105199004106

/-!
# A186651: Total number of positive integers below 10^n requiring 3 positive biquadrates in their representation as sum of biquadrates.

The programs for A186651, there is no canonical definition to state claims against.
-/

/-! ## A186651.P5713142344429453677

`∑[A186652(n+1)]`
-/

namespace A186651.P5713142344429453677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186651.P5713142344429453677

/-! ## A186651.P11834304355559451986

`∑[record[A186652(A000119(n))]]`
-/

namespace A186651.P11834304355559451986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186652 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186651.P11834304355559451986

/-! ## A186651.P13513113888027452881

`∑[record[A186652(A000121(n))]]`
-/

namespace A186651.P13513113888027452881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186652 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186651.P13513113888027452881

/-! ## A186651.P14548427340084801408

`∑[record[A186652(A000174(n))]]`
-/

namespace A186651.P14548427340084801408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186652 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186651.P14548427340084801408

/-! ## A186651.P1131958071313940454

`∑[record[A186652(A020986(n))]]`
-/

namespace A186651.P1131958071313940454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186652 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186651.P1131958071313940454

/-!
# A186652: Total number of n-digit numbers requiring 3 positive biquadrates in their representation as sum of biquadrates.

The programs for A186652, there is no canonical definition to state claims against.
-/

/-! ## A186652.P18143267672785984950

`A379979(A033887(n))`
-/

namespace A186652.P18143267672785984950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379979 (A033887 n).toNat

end

end A186652.P18143267672785984950

/-!
# A186653: Total number of positive integers below 10^n requiring 4 positive biquadrates in their representation as sum of biquadrates.

The programs for A186653, there is no canonical definition to state claims against.
-/

/-! ## A186653.P12748405849232768682

`∑[A186654(n+1)]`
-/

namespace A186653.P12748405849232768682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186653.P12748405849232768682

/-! ## A186653.P8193073244939019745

`∑[record[A186654(A000119(n))]]`
-/

namespace A186653.P8193073244939019745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186654 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186653.P8193073244939019745

/-! ## A186653.P4436216162898991878

`∑[record[A186654(A000121(n))]]`
-/

namespace A186653.P4436216162898991878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186654 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186653.P4436216162898991878

/-! ## A186653.P6005808513264748967

`∑[record[A186654(A000174(n))]]`
-/

namespace A186653.P6005808513264748967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186654 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186653.P6005808513264748967

/-! ## A186653.P17455781163881366434

`∑[record[A186654(A020986(n))]]`
-/

namespace A186653.P17455781163881366434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186654 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186653.P17455781163881366434

/-!
# A186654: Total number of n-digit numbers requiring 4 positive biquadrates in their representation as sum of biquadrates.

The programs for A186654, there is no canonical definition to state claims against.
-/

/-! ## A186654.P8399368160709183776

`A000007(n)+Δ[A186653(A000007(n)+n)]`
-/

namespace A186654.P8399368160709183776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186653 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A186654.P8399368160709183776

/-!
# A186655: Total number of positive integers below 10^n requiring exactly 5 positive biquadrates in their representation as sum of biquadrates.

The programs for A186655, there is no canonical definition to state claims against.
-/

/-! ## A186655.P12941249988833845028

`∑[A186656(n+1)]`
-/

namespace A186655.P12941249988833845028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186655.P12941249988833845028

/-! ## A186655.P11742825418936009424

`∑[record[A186656(A000119(n))]]`
-/

namespace A186655.P11742825418936009424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186656 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186655.P11742825418936009424

/-! ## A186655.P1181972215711026014

`∑[record[A186656(A000174(n))]]`
-/

namespace A186655.P1181972215711026014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186656 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186655.P1181972215711026014

/-! ## A186655.P13288301163584755967

`∑[record[A186656(A020986(n))]]`
-/

namespace A186655.P13288301163584755967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186656 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186655.P13288301163584755967

/-! ## A186655.P8961305383608492406

`∑[record[A186656(A022446(n))]]`
-/

namespace A186655.P8961305383608492406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186656 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186655.P8961305383608492406

/-!
# A186657: Total number of positive integers below 10^n requiring 6 positive biquadrates in their representation as sum of biquadrates.

The programs for A186657, there is no canonical definition to state claims against.
-/

/-! ## A186657.P882273516290406704

`∑[A186658(n+1)]`
-/

namespace A186657.P882273516290406704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186657.P882273516290406704

/-! ## A186657.P185821389643049254

`∑[record[A186658(A091090(n))]]`
-/

namespace A186657.P185821389643049254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186658 (A091090 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186657.P185821389643049254

/-!
# A186658: Total number of n-digit numbers requiring 6 positive biquadrates in their representation as sum of biquadrates.

The programs for A186658, there is no canonical definition to state claims against.
-/

/-! ## A186658.P9769776145590337520

`A000040(A025164(n+1))-A267072(2*(n+1))`
-/

namespace A186658.P9769776145590337520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A025164 (n + 1)).toNat - A267072 (2 * (n + 1))

end

end A186658.P9769776145590337520

/-!
# A186659: Total number of positive integers below 10^n requiring 7 positive biquadrates in their representation as sum of biquadrates.

The programs for A186659, there is no canonical definition to state claims against.
-/

/-! ## A186659.P12643504527250452823

`∑[A186660(n+1)]`
-/

namespace A186659.P12643504527250452823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186659.P12643504527250452823

/-! ## A186659.P17977689255950326674

`A186660(Δ[n²]-n)+a(n-1)` with `a(0)=1`
-/

namespace A186659.P17977689255950326674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186660 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A186659.P17977689255950326674

/-! ## A186659.P5011765033894352819

`∑[record[A186660(A020986(n))]]`
-/

namespace A186659.P5011765033894352819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186660 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186659.P5011765033894352819

/-! ## A186659.P12458125749447516997

`∑[record[A186660(A028920(n))]]`
-/

namespace A186659.P12458125749447516997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186660 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186659.P12458125749447516997

/-! ## A186659.P17434980108162195658

`∑[record[A186660(A033666(n))]]`
-/

namespace A186659.P17434980108162195658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186660 (A033666 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186659.P17434980108162195658

/-!
# A186661: Total number of positive integers below 10^n requiring 8 positive biquadrates in their representation as sum of biquadrates.

The programs for A186661, there is no canonical definition to state claims against.
-/

/-! ## A186661.P7086840733024486229

`∑[A186662(n+1)]`
-/

namespace A186661.P7086840733024486229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186661.P7086840733024486229

/-!
# A186663: Total number of positive integers below 10^n requiring 9 positive biquadrates in their representation as sum of biquadrates.

The programs for A186663, there is no canonical definition to state claims against.
-/

/-! ## A186663.P3162154261600737984

`∑[A186664(n+1)]`
-/

namespace A186663.P3162154261600737984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186663.P3162154261600737984

/-! ## A186663.P8824343481296155355

`∑[record[A186664(A000119(n))]]`
-/

namespace A186663.P8824343481296155355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186664 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186663.P8824343481296155355

/-! ## A186663.P8997814268486920427

`∑[record[A186664(A000121(n))]]`
-/

namespace A186663.P8997814268486920427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186664 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186663.P8997814268486920427

/-! ## A186663.P10934975885538865532

`∑[record[A186664(A000174(n))]]`
-/

namespace A186663.P10934975885538865532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186664 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186663.P10934975885538865532

/-! ## A186663.P4244032947303307650

`∑[record[A186664(A020986(n))]]`
-/

namespace A186663.P4244032947303307650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186664 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186663.P4244032947303307650

/-!
# A186665: Total number of positive integers below 10^n requiring 10 positive biquadrates in their representation as sum of biquadrates.

The programs for A186665, there is no canonical definition to state claims against.
-/

/-! ## A186665.P4288971965922307220

`∑[A186666(n+1)]`
-/

namespace A186665.P4288971965922307220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186665.P4288971965922307220

/-! ## A186665.P10077720379402524140

`∑[record[A186666(A000119(n))]]`
-/

namespace A186665.P10077720379402524140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186666 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186665.P10077720379402524140

/-! ## A186665.P13658157203966183295

`∑[record[A186666(A000174(n))]]`
-/

namespace A186665.P13658157203966183295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186666 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186665.P13658157203966183295

/-! ## A186665.P5197347902596273759

`∑[record[A186666(A020986(n))]]`
-/

namespace A186665.P5197347902596273759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186666 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186665.P5197347902596273759

/-! ## A186665.P3586899824739550807

`∑[record[A186666(A022446(n))]]`
-/

namespace A186665.P3586899824739550807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186666 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186665.P3586899824739550807

/-!
# A186666: Total number of n-digit numbers requiring 10 positive biquadrates in their representation as sum of biquadrates.

The programs for A186666, there is no canonical definition to state claims against.
-/

/-! ## A186666.P16517317343221807377

`Δ[A186665(round(sqrt(n²+1)))]`
-/

namespace A186666.P16517317343221807377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186665 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186666.P16517317343221807377

/-! ## A186666.P919398646411401005

`abs(Δ[A186665(A028310(n))])`
-/

namespace A186666.P919398646411401005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186665 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186666.P919398646411401005

/-! ## A186666.P181959669550254683

`record[Δ[A186665(A005378(n))]]`
-/

namespace A186666.P181959669550254683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186665 (A005378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186666.P181959669550254683

/-! ## A186666.P13635871568140571100

`record[Δ[A186665(A006949(n))]]`
-/

namespace A186666.P13635871568140571100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186665 (A006949 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186666.P13635871568140571100

/-! ## A186666.P4926002890050120336

`record[Δ[A186665(A008619(n))]]`
-/

namespace A186666.P4926002890050120336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186665 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186666.P4926002890050120336

/-!
# A186667: Total number of positive integers below 10^n requiring 11 positive biquadrates in their representation as sum of biquadrates.

The programs for A186667, there is no canonical definition to state claims against.
-/

/-! ## A186667.P7005941752904477823

`∑[A186668(n+1)]`
-/

namespace A186667.P7005941752904477823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186667.P7005941752904477823

/-! ## A186667.P11905624945697131990

`∑[record[A186668(A000119(n))]]`
-/

namespace A186667.P11905624945697131990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186668 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186667.P11905624945697131990

/-! ## A186667.P16477204169195428144

`∑[record[A186668(A000121(n))]]`
-/

namespace A186667.P16477204169195428144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186668 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186667.P16477204169195428144

/-! ## A186667.P9643621950874778405

`∑[record[A186668(A000174(n))]]`
-/

namespace A186667.P9643621950874778405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186668 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186667.P9643621950874778405

/-! ## A186667.P3837958359406335632

`∑[record[A186668(A020986(n))]]`
-/

namespace A186667.P3837958359406335632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186668 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186667.P3837958359406335632

/-!
# A186668: Total number of n-digit numbers requiring 11 positive biquadrates in their representation as sum of biquadrates.

The programs for A186668, there is no canonical definition to state claims against.
-/

/-! ## A186668.P7536789324942744473

`Δ[A186667(round(sqrt(n²+1)))]`
-/

namespace A186668.P7536789324942744473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186667 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186668.P7536789324942744473

/-! ## A186668.P18325990941307179898

`abs(Δ[A186667(A028310(n))])`
-/

namespace A186668.P18325990941307179898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186667 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186668.P18325990941307179898

/-! ## A186668.P14380936896529814152

`record[Δ[A186667(A005378(n))]]`
-/

namespace A186668.P14380936896529814152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186667 (A005378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186668.P14380936896529814152

/-! ## A186668.P7241369728898472078

`record[Δ[A186667(A006949(n))]]`
-/

namespace A186668.P7241369728898472078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186667 (A006949 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186668.P7241369728898472078

/-! ## A186668.P16542156612203124657

`record[Δ[A186667(A008619(n))]]`
-/

namespace A186668.P16542156612203124657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186667 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186668.P16542156612203124657

/-!
# A186669: Total number of positive integers below 10^n requiring 12 positive biquadrates in their representation as sum of biquadrates.

The programs for A186669, there is no canonical definition to state claims against.
-/

/-! ## A186669.P1612903305456004202

`∑[A186670(n+1)]`
-/

namespace A186669.P1612903305456004202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186669.P1612903305456004202

/-! ## A186669.P11589127701136731645

`∑[record[A186670(A000119(n))]]`
-/

namespace A186669.P11589127701136731645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186670 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186669.P11589127701136731645

/-! ## A186669.P431888362275618179

`∑[record[A186670(A000174(n))]]`
-/

namespace A186669.P431888362275618179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186670 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186669.P431888362275618179

/-! ## A186669.P16418341824262301870

`∑[record[A186670(A020986(n))]]`
-/

namespace A186669.P16418341824262301870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186670 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186669.P16418341824262301870

/-! ## A186669.P16274977574158944456

`∑[record[A186670(A022446(n))]]`
-/

namespace A186669.P16274977574158944456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186670 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186669.P16274977574158944456

/-!
# A186670: Total number of n-digit numbers requiring 12 positive biquadrates in their representation as sum of biquadrates.

The programs for A186670, there is no canonical definition to state claims against.
-/

/-! ## A186670.P3896643184983808241

`Δ[A186669(round(sqrt(n²+1)))]`
-/

namespace A186670.P3896643184983808241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186669 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186670.P3896643184983808241

/-! ## A186670.P175585412703853572

`abs(Δ[A186669(A028310(n))])`
-/

namespace A186670.P175585412703853572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186669 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186670.P175585412703853572

/-! ## A186670.P2138609944352737828

`record[Δ[A186669(A005378(n))]]`
-/

namespace A186670.P2138609944352737828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186669 (A005378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186670.P2138609944352737828

/-! ## A186670.P2205564378335607294

`record[Δ[A186669(A006949(n))]]`
-/

namespace A186670.P2205564378335607294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186669 (A006949 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186670.P2205564378335607294

/-! ## A186670.P15978603652395990182

`record[Δ[A186669(A008619(n))]]`
-/

namespace A186670.P15978603652395990182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186669 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186670.P15978603652395990182

/-!
# A186671: Total number of positive integers below 10^n requiring 13 positive biquadrates in their representation as sum of biquadrates.

The programs for A186671, there is no canonical definition to state claims against.
-/

/-! ## A186671.P6733297118500668791

`∑[A186672(n+1)]`
-/

namespace A186671.P6733297118500668791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186671.P6733297118500668791

/-! ## A186671.P16413149515887898125

`∑[record[A186672(A000119(n))]]`
-/

namespace A186671.P16413149515887898125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186672 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186671.P16413149515887898125

/-! ## A186671.P7254597579279920899

`∑[record[A186672(A000174(n))]]`
-/

namespace A186671.P7254597579279920899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186672 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186671.P7254597579279920899

/-! ## A186671.P2991681508707289008

`∑[record[A186672(A020986(n))]]`
-/

namespace A186671.P2991681508707289008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186672 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186671.P2991681508707289008

/-! ## A186671.P6430052673179639575

`∑[record[A186672(A025453(n))]]`
-/

namespace A186671.P6430052673179639575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186672 (A025453 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186671.P6430052673179639575

/-!
# A186672: Total number of n-digit numbers requiring 13 positive biquadrates in their representation as sum of biquadrates.

The programs for A186672, there is no canonical definition to state claims against.
-/

/-! ## A186672.P9490092323499832671

`Δ[A186671(round(sqrt(n²+1)))]`
-/

namespace A186672.P9490092323499832671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186671 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186672.P9490092323499832671

/-! ## A186672.P16354398776231554670

`record[Δ[A186671(ceil((n+2)/3))]]`
-/

namespace A186672.P16354398776231554670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186671 ⌈(n + 2 : ℚ) / 3⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186672.P16354398776231554670

/-! ## A186672.P5694737126674246322

`abs(Δ[A186671(A028310(n))])`
-/

namespace A186672.P5694737126674246322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186671 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186672.P5694737126674246322

/-! ## A186672.P16282981524746513393

`A186671(n+1)-A186671(A028310(n))`
-/

namespace A186672.P16282981524746513393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186671 (n + 1) - A186671 (A028310 n).toNat

end

end A186672.P16282981524746513393

/-! ## A186672.P13041594778000783202

`A186671(n+1)-A186671(A065033(2*n))`
-/

namespace A186672.P13041594778000783202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186671 (n + 1) - A186671 (A065033 (2 * n)).toNat

end

end A186672.P13041594778000783202

/-!
# A186673: Total number of positive integers below 10^n requiring 14 positive biquadrates in their representation as sum of biquadrates.

The programs for A186673, there is no canonical definition to state claims against.
-/

/-! ## A186673.P16534432032258354584

`∑[A186674(n+1)]`
-/

namespace A186673.P16534432032258354584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186673.P16534432032258354584

/-! ## A186673.P1810350236037803407

`∑[record[A186674(A000119(n))]]`
-/

namespace A186673.P1810350236037803407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186674 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186673.P1810350236037803407

/-! ## A186673.P12241233419386388760

`∑[record[A186674(A000121(n))]]`
-/

namespace A186673.P12241233419386388760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186674 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186673.P12241233419386388760

/-! ## A186673.P9545371821648288131

`∑[record[A186674(A000174(n))]]`
-/

namespace A186673.P9545371821648288131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186674 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186673.P9545371821648288131

/-! ## A186673.P9264183856786288237

`∑[record[A186674(A020986(n))]]`
-/

namespace A186673.P9264183856786288237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186674 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186673.P9264183856786288237

/-!
# A186674: Total number of n-digit numbers requiring 14 positive biquadrates in their representation as sum of biquadrates.

The programs for A186674, there is no canonical definition to state claims against.
-/

/-! ## A186674.P11078995710924431182

`Δ[A186673(floor(acot(n)+n))]`
-/

namespace A186674.P11078995710924431182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186673 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186674.P11078995710924431182

/-! ## A186674.P12880084234695266573

`Δ[A186673(round(sqrt(n²+1)))]`
-/

namespace A186674.P12880084234695266573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186673 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186674.P12880084234695266573

/-! ## A186674.P15055960847494204463

`abs(Δ[A186673(A028310(n))])`
-/

namespace A186674.P15055960847494204463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186673 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186674.P15055960847494204463

/-! ## A186674.P731414143865243162

`record[Δ[A186673(A005378(n))]]`
-/

namespace A186674.P731414143865243162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186673 (A005378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186674.P731414143865243162

/-! ## A186674.P12829517977333795006

`record[Δ[A186673(A006949(n))]]`
-/

namespace A186674.P12829517977333795006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186673 (A006949 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186674.P12829517977333795006

/-!
# A186675: Total number of positive integers below 10^n requiring 15 positive biquadrates in their representation as sum of biquadrates.

The programs for A186675, there is no canonical definition to state claims against.
-/

/-! ## A186675.P379353062327309897

`∑[A186676(n+1)]`
-/

namespace A186675.P379353062327309897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186675.P379353062327309897

/-! ## A186675.P11237853651783285219

`∑[record[A186676(A000119(n))]]`
-/

namespace A186675.P11237853651783285219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186676 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186675.P11237853651783285219

/-! ## A186675.P2219528322049378777

`∑[record[A186676(A000174(n))]]`
-/

namespace A186675.P2219528322049378777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186676 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186675.P2219528322049378777

/-! ## A186675.P13072745641843192501

`∑[record[A186676(A020986(n))]]`
-/

namespace A186675.P13072745641843192501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186676 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186675.P13072745641843192501

/-! ## A186675.P16526971936906548805

`∑[record[A186676(A022446(n))]]`
-/

namespace A186675.P16526971936906548805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186676 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186675.P16526971936906548805

/-!
# A186676: Total number of n-digit numbers requiring 15 positive biquadrates in their representation as sum of biquadrates.

The programs for A186676, there is no canonical definition to state claims against.
-/

/-! ## A186676.P5038967503250657617

`Δ[A186675(round(sqrt(n²+1)))]`
-/

namespace A186676.P5038967503250657617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186675 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186676.P5038967503250657617

/-! ## A186676.P10602779662896131704

`abs(Δ[A186675(A028310(n))])`
-/

namespace A186676.P10602779662896131704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186675 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186676.P10602779662896131704

/-! ## A186676.P7373952084717894716

`record[Δ[A186675(A005378(n))]]`
-/

namespace A186676.P7373952084717894716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186675 (A005378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186676.P7373952084717894716

/-! ## A186676.P15738543515899450054

`record[Δ[A186675(A006949(n))]]`
-/

namespace A186676.P15738543515899450054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186675 (A006949 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186676.P15738543515899450054

/-! ## A186676.P2631955022183941668

`record[Δ[A186675(A008619(n))]]`
-/

namespace A186676.P2631955022183941668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186675 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186676.P2631955022183941668

/-!
# A186677: Total number of positive integers below 10^n requiring 16 positive biquadrates in their representation as sum of biquadrates.

The programs for A186677, there is no canonical definition to state claims against.
-/

/-! ## A186677.P8232275975886199969

`∑[A186678(n+1)]`
-/

namespace A186677.P8232275975886199969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186677.P8232275975886199969

/-! ## A186677.P12829650488699177002

`A186678(n+1)+a(A000027(n+1)-2)` with `a(0)=0`
-/

namespace A186677.P12829650488699177002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A186678 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A186677.P12829650488699177002

/-!
# A186678: Total number of n-digit numbers requiring 16 positive biquadrates in their representation as sum of biquadrates.

The programs for A186678, there is no canonical definition to state claims against.
-/

/-! ## A186678.P8107042846212264477

`Δ[A186677(floor(acot(n)+n))]`
-/

namespace A186678.P8107042846212264477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186677 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186678.P8107042846212264477

/-! ## A186678.P2831234953817947512

`Δ[A186677(round(sqrt(n²+1)))]`
-/

namespace A186678.P2831234953817947512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186677 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186678.P2831234953817947512

/-! ## A186678.P3913623183020024230

`abs(Δ[A186677(A028310(n))])`
-/

namespace A186678.P3913623183020024230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186677 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186678.P3913623183020024230

/-! ## A186678.P7058060901328889300

`abs(Δ[A186677(A065033(2*n))])`
-/

namespace A186678.P7058060901328889300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186677 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186678.P7058060901328889300

/-! ## A186678.P1410976315472813765

`A186677(n+1)-A186677(round(sqrt(n²+1)))`
-/

namespace A186678.P1410976315472813765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186677 (n + 1) - A186677 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A186678.P1410976315472813765

/-!
# A186679: First differences of A116697.

The programs for A186679, the canonical program `A186679.P16230820520944405747` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186679 has offset 0).

The definition of A186679 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186679.P16230820520944405747

`A116697(n+1)-A116697(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186679

/-- `A116697(n+1)-A116697(n)` -/
def P16230820520944405747.Spec : Prop :=
  ∀ n, P16230820520944405747.a n = A186679 n

theorem P16230820520944405747.correct : P16230820520944405747.Spec := by
  intro n
  simp only [A186679]

end A186679

/-! ## A186679.P16049010396094039434

`ogf((-3x+x^2)/(1+x+x^3-x^4))`
-/

namespace A186679.P16049010396094039434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -3, 1] [1, 1, 0, 1, -1] n

end

end A186679.P16049010396094039434

namespace A186679

/-- `ogf((-3x+x^2)/(1+x+x^3-x^4))` -/
def P16049010396094039434.Spec : Prop :=
  ∀ n, P16049010396094039434.a n = A186679 n

end A186679

/-! ## A186679.P7473928543413978518

`a(n-4)-(a(n-1)+a(n-3))` with `a(0)=0, a(1)=-3, a(2)=4, a(3)=-4`
-/

namespace A186679.P7473928543413978518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -3, 4, -4] fun n a =>
  a (n - 4) - (a (n - 1) + a (n - 3))

end

end A186679.P7473928543413978518

namespace A186679

/-- `a(n-4)-(a(n-1)+a(n-3))` -/
def P7473928543413978518.Spec : Prop :=
  ∀ n, P7473928543413978518.a n = A186679 n

end A186679

/-! ## A186679.P7856292894619013007

`a(n-4)-a(n-1)-a(n-3)` with `a(0)=0, a(1)=-3, a(2)=4, a(3)=-4`
-/

namespace A186679.P7856292894619013007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -3, 4, -4] fun n a =>
  a (n - 4) - a (n - 1) - a (n - 3)

end

end A186679.P7856292894619013007

namespace A186679

/-- `a(n-4)-a(n-1)-a(n-3)` -/
def P7856292894619013007.Spec : Prop :=
  ∀ n, P7856292894619013007.a n = A186679 n

end A186679

/-! ## A186679.P13711885158837247860

`Δ[A116697(n)]`
-/

namespace A186679.P13711885158837247860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186679.P13711885158837247860

namespace A186679

/-- `Δ[A116697(n)]` -/
def P13711885158837247860.Spec : Prop :=
  ∀ n, P13711885158837247860.a n = A186679 n

theorem P13711885158837247860.correct : P13711885158837247860.Spec := by
  intro n
  simp only [A186679, Nat.add_sub_cancel, A186679.P13711885158837247860.f1, A186679.P13711885158837247860.a, A186679.P16230820520944405747.a, SequenceMachineLib.memo_apply]

end A186679

/-! ## A186679.P17416827355813671823

`(-1)^∑[n+1]+A000045(n+2)*A033999(n)`
-/

namespace A186679.P17416827355813671823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + A000045 (n + 2) * A033999 n

end

end A186679.P17416827355813671823

namespace A186679

/-- `(-1)^∑[n+1]+A000045(n+2)*A033999(n)` -/
def P17416827355813671823.Spec : Prop :=
  ∀ n, P17416827355813671823.a n = A186679 n

end A186679

/-! ## A186679.P14238037870532020707

`A056594(n+1)+A056594(2*n)*A115008(n+1)`
-/

namespace A186679.P14238037870532020707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A056594 (2 * n) * A115008 (n + 1)

end

end A186679.P14238037870532020707

namespace A186679

/-- `A056594(n+1)+A056594(2*n)*A115008(n+1)` -/
def P14238037870532020707.Spec : Prop :=
  ∀ n, P14238037870532020707.a n = A186679 n

end A186679

/-! ## A186679.P4244812302234295856

`(A115339(2*n+1)-A057077(n+1))*A057077(2*n)`
-/

namespace A186679.P4244812302234295856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115339 (2 * n + 1) - A057077 (n + 1)) * A057077 (2 * n)

end

end A186679.P4244812302234295856

namespace A186679

/-- `(A115339(2*n+1)-A057077(n+1))*A057077(2*n)` -/
def P4244812302234295856.Spec : Prop :=
  ∀ n, P4244812302234295856.a n = A186679 n

end A186679

/-! ## A186679.P6572124188704470075

`Δ[A087123(n)-A111573(n)]`
-/

namespace A186679.P6572124188704470075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 n - A111573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186679.P6572124188704470075

namespace A186679

/-- `Δ[A087123(n)-A111573(n)]` -/
def P6572124188704470075.Spec : Prop :=
  ∀ n, P6572124188704470075.a n = A186679 n

end A186679

/-! ## A186679.P7537821914597861908

`Δ[A056594(n)+Δ[A112469(n)]]`
-/

namespace A186679.P7537821914597861908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186679.P7537821914597861908

namespace A186679

/-- `Δ[A056594(n)+Δ[A112469(n)]]` -/
def P7537821914597861908.Spec : Prop :=
  ∀ n, P7537821914597861908.a n = A186679 n

end A186679

/-!
# A186680: Total number of positive integers below 10^n requiring 17 positive biquadrates in their representation as sum of biquadrates.

The programs for A186680, the canonical program `A186680.P13195889433666670219` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186680 has offset 1).

The definition of A186680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186680.P13195889433666670219

`a(n-1)` with `a(0)=0, a(1)=3, a(2)=33, a(3)=63, a(4)=65`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186680

/-- `a(n-1)` -/
def P13195889433666670219.Spec : Prop :=
  ∀ n, (P13195889433666670219.a n : ℤ) = A186680 (n + 1)

theorem P13195889433666670219.correct : P13195889433666670219.Spec := by
  intro n
  simp only [A186680, Nat.add_sub_cancel]

end A186680

/-!
# A186681: Total number of n-digit numbers requiring 17 positive biquadrates in their representation as sum of biquadrates.

The programs for A186681, the canonical program `A186681.P4939669180076165851` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186681 has offset 1).

The definition of A186681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186681.P4939669180076165851

`a(n-1)` with `a(0)=0, a(1)=3, a(2)=30, a(3)=30, a(4)=2, a(5)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186681

/-- `a(n-1)` -/
def P4939669180076165851.Spec : Prop :=
  ∀ n, (P4939669180076165851.a n : ℤ) = A186681 (n + 1)

theorem P4939669180076165851.correct : P4939669180076165851.Spec := by
  intro n
  simp only [A186681, Nat.add_sub_cancel]

end A186681

/-!
# A186682: Total number of positive integers below 10^n requiring 18 positive biquadrates in their representation as sum of biquadrates.

The programs for A186682, the canonical program `A186682.P17475791202117167640` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186682 has offset 1).

The definition of A186682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186682.P17475791202117167640

`a(n-1)` with `a(0)=0, a(1)=2, a(2)=19, a(3)=24`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186682

/-- `a(n-1)` -/
def P17475791202117167640.Spec : Prop :=
  ∀ n, (P17475791202117167640.a n : ℤ) = A186682 (n + 1)

theorem P17475791202117167640.correct : P17475791202117167640.Spec := by
  intro n
  simp only [A186682, Nat.add_sub_cancel]

end A186682

/-!
# A186683: Total number of n-digit numbers requiring 18 positive biquadrates in their representation as sum of biquadrates.

The programs for A186683, the canonical program `A186683.P6769519000144141345` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186683 has offset 1).

The definition of A186683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186683.P6769519000144141345

`a(n-1)` with `a(0)=0, a(1)=2, a(2)=17, a(3)=5, a(4)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186683

/-- `a(n-1)` -/
def P6769519000144141345.Spec : Prop :=
  ∀ n, (P6769519000144141345.a n : ℤ) = A186683 (n + 1)

theorem P6769519000144141345.correct : P6769519000144141345.Spec := by
  intro n
  simp only [A186683, Nat.add_sub_cancel]

end A186683

/-!
# A186684: Total number of positive integers below 10^n requiring 19 positive biquadrates in their representation as sum of biquadrates.

The programs for A186684, the canonical program `A186684.P16111620178956092586` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186684 has offset 1).

The definition of A186684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186684.P16111620178956092586

`dr(ceil(atan(n))²²)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186684

/-- `dr(ceil(atan(n))²²)` -/
def P16111620178956092586.Spec : Prop :=
  ∀ n, (P16111620178956092586.a n : ℤ) = A186684 (n + 1)

theorem P16111620178956092586.correct : P16111620178956092586.Spec := by
  intro n
  simp only [A186684, Nat.add_sub_cancel]

end A186684

/-!
# A186685: Total number of n-digit numbers requiring 19 positive biquadrates in their representation as sum of biquadrates.

The programs for A186685, the canonical program `A186685.P17714685944187603929` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186685 has offset 1).

The definition of A186685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186685.P17714685944187603929

`a(3%n)` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186685

/-- `a(3%n)` -/
def P17714685944187603929.Spec : Prop :=
  ∀ n, (P17714685944187603929.a n : ℤ) = A186685 (n + 1)

theorem P17714685944187603929.correct : P17714685944187603929.Spec := by
  intro n
  simp only [A186685, Nat.add_sub_cancel]

end A186685

/-!
# A186686: Triangle T(n,k) of the coefficients [x^n] x^k*(x^5+3*x^4+4*x^3+3*x^2+2*x+1)^k, 1<=k<=n.

The programs for A186686, there is no canonical definition to state claims against.
-/

/-! ## A186686.P12156949960263179707

`A078812(n%A126651(3*n+5))`
-/

namespace A186686.P12156949960263179707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (Int.tmod (n : ℤ) (A126651 (3 * n + 5))).toNat

end

end A186686.P12156949960263179707

/-! ## A186686.P10591447433055979233

`A078812(n)-A010893(A119502(n))`
-/

namespace A186686.P10591447433055979233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - A010893 ((A119502 n).toNat + 13)

end

end A186686.P10591447433055979233

/-! ## A186686.P13849297984427775559

`A078812(n)-A010893(A130534(n))`
-/

namespace A186686.P13849297984427775559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - A010893 ((A130534 n).toNat + 13)

end

end A186686.P13849297984427775559

/-! ## A186686.P2948968664776657546

`A078812(n)-A014083(A224228(n))`
-/

namespace A186686.P2948968664776657546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - A014083 (A224228 n).toNat

end

end A186686.P2948968664776657546

/-! ## A186686.P402862288628054178

`A078812(n)-A010893(∑[A092532(n)])`
-/

namespace A186686.P402862288628054178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - A010893 ((∑ j ∈ Finset.range (n + 1), f1 j).toNat + 13)

end

end A186686.P402862288628054178

/-!
# A186687: Primes of the form k*6^m - 1, where k is a Mersenne prime (A000668) and m >= 0.

The programs for A186687, there is no canonical definition to state claims against.
-/

/-! ## A186687.P6296221239782044498

`A101595(A273332(n))`
-/

namespace A186687.P6296221239782044498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101595 (A273332 n).toNat

end

end A186687.P6296221239782044498

/-!
# A186688: Semiprimes of the form n^4 + 1.

The programs for A186688, there is no canonical definition to state claims against.
-/

/-! ## A186688.P14947462678305368742

`A186689(n+1)²²+1`
-/

namespace A186688.P14947462678305368742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186689 (n + 1) ^ 2) ^ 2 + 1

end

end A186688.P14947462678305368742

/-! ## A186688.P12066930938468955140

`eq[2, A193929(n)]²²+1`
-/

namespace A186688.P12066930938468955140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2 + 1

end

end A186688.P12066930938468955140

/-! ## A186688.P17384771211438071371

`A002523(A186689(n+1))`
-/

namespace A186688.P17384771211438071371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (A186689 (n + 1)).toNat

end

end A186688.P17384771211438071371

/-! ## A186688.P105223260330550688

`A002523(eq[2, A193929(n)])`
-/

namespace A186688.P105223260330550688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186688.P105223260330550688

/-! ## A186688.P15124155045056504668

`A002523(eq[4, A193562(n)])`
-/

namespace A186688.P15124155045056504668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186688.P15124155045056504668

/-! ## A186688.P6266344129030576515

`eq[1, A109199(n)]²²+1`
-/

namespace A186688.P6266344129030576515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2 + 1

end

end A186688.P6266344129030576515

/-! ## A186688.P12255900019334414450

`∩[A182277(n+1), A002523(n)]`
-/

namespace A186688.P12255900019334414450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186688.P12255900019334414450

/-! ## A186688.P15085525845680400539

`∩[A144255(n+1), A002523(n)]`
-/

namespace A186688.P15085525845680400539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186688.P15085525845680400539

/-! ## A186688.P9054697367684456784

`∩[A189047(n+1), A002523(n)]`
-/

namespace A186688.P9054697367684456784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186688.P9054697367684456784

/-!
# A186689: Numbers n such that n^4 + 1 is a semiprime.

The programs for A186689, there is no canonical definition to state claims against.
-/

/-! ## A186689.P2941381055708588655

`floor(root(A186688(n+1), 4))`
-/

namespace A186689.P2941381055708588655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186688 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A186689.P2941381055708588655

/-! ## A186689.P17850307704028334455

`eq[2, A193929(n)]`
-/

namespace A186689.P17850307704028334455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186689.P17850307704028334455

/-! ## A186689.P4154833975925138091

`eq[4, A193562(n)]`
-/

namespace A186689.P4154833975925138091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186689.P4154833975925138091

/-! ## A186689.P13464121884505103715

`eq[1, A109199(n)]`
-/

namespace A186689.P13464121884505103715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186689.P13464121884505103715

/-! ## A186689.P430785655377630661

`record[(n+1)/((n+1)/A109199(n+1)-n)]`
-/

namespace A186689.P430785655377630661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℚ) / (A109199 (n + 1) : ℚ) - (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186689.P430785655377630661

/-!
# A186690: Expansion of - (1/8) theta_3''(0, q) / theta_3(0, q) in powers of q.

The programs for A186690, the canonical program `A186690.P18402101191840386599` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186690 has offset 1).

The definition of A186690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186690.P18402101191840386599

`(-1)^n*A002131(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A186690

/-- `(-1)^n*A002131(n+1)` -/
def P18402101191840386599.Spec : Prop :=
  ∀ n, P18402101191840386599.a n = A186690 (n + 1)

theorem P18402101191840386599.correct : P18402101191840386599.Spec := by
  intro n
  simp only [A186690, Nat.add_sub_cancel]

end A186690

/-! ## A186690.P12731743272872015066

`∑{d}[n+1, A186111(#)]`
-/

namespace A186690.P12731743272872015066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186111 d

end

end A186690.P12731743272872015066

namespace A186690

/-- `∑{d}[n+1, A186111(#)]` -/
def P12731743272872015066.Spec : Prop :=
  ∀ n, P12731743272872015066.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P11869143505271550632

`A002131(n+1)*A033999(n)`
-/

namespace A186690.P11869143505271550632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) * A033999 n

end

end A186690.P11869143505271550632

namespace A186690

/-- `A002131(n+1)*A033999(n)` -/
def P11869143505271550632.Spec : Prop :=
  ∀ n, P11869143505271550632.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P17329358496134033070

`A000593(n+1)*A118827(n+1)`
-/

namespace A186690.P17329358496134033070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A118827 (n + 1)

end

end A186690.P17329358496134033070

namespace A186690

/-- `A000593(n+1)*A118827(n+1)` -/
def P17329358496134033070.Spec : Prop :=
  ∀ n, P17329358496134033070.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P12908360437266974279

`A006519(n+1)*A115607(n+1)`
-/

namespace A186690.P12908360437266974279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A115607 (n + 1)

end

end A186690.P12908360437266974279

namespace A186690

/-- `A006519(n+1)*A115607(n+1)` -/
def P12908360437266974279.Spec : Prop :=
  ∀ n, P12908360437266974279.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P2328332988516552374

`A080278(n+1)*A121456(n+1)`
-/

namespace A186690.P2328332988516552374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (n + 1) * A121456 (n + 1)

end

end A186690.P2328332988516552374

namespace A186690

/-- `A080278(n+1)*A121456(n+1)` -/
def P2328332988516552374.Spec : Prop :=
  ∀ n, P2328332988516552374.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P2576622454750090193

`A327095(n+1)*A327767(n+1)`
-/

namespace A186690.P2576622454750090193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327095 (n + 1) * A327767 (n + 1)

end

end A186690.P2576622454750090193

namespace A186690

/-- `A327095(n+1)*A327767(n+1)` -/
def P2576622454750090193.Spec : Prop :=
  ∀ n, P2576622454750090193.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P16400890023592663858

`A326238(n+1)%A054785(n+1)`
-/

namespace A186690.P16400890023592663858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326238 (n + 1)) (A054785 (n + 1))

end

end A186690.P16400890023592663858

namespace A186690

/-- `A326238(n+1)%A054785(n+1)` -/
def P16400890023592663858.Spec : Prop :=
  ∀ n, P16400890023592663858.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P9975966875149523051

`(2-A000034(n)²)*A327095(n+1)`
-/

namespace A186690.P9975966875149523051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000034 n ^ 2) * A327095 (n + 1)

end

end A186690.P9975966875149523051

namespace A186690

/-- `(2-A000034(n)²)*A327095(n+1)` -/
def P9975966875149523051.Spec : Prop :=
  ∀ n, P9975966875149523051.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P8028793264364471945

`(A143348(n+1)+A115607(n+1))/2`
-/

namespace A186690.P8028793264364471945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143348 (n + 1) + A115607 (n + 1) : ℚ) / 2

end

end A186690.P8028793264364471945

namespace A186690

/-- `(A143348(n+1)+A115607(n+1))/2` -/
def P8028793264364471945.Spec : Prop :=
  ∀ n, P8028793264364471945.a n = (A186690 (n + 1) : ℚ)

end A186690

/-! ## A186690.P696186090379107638

`A143348(n+1)+A146076(n+1)/2`
-/

namespace A186690.P696186090379107638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143348 (n + 1) : ℚ) + (A146076 (n + 1) : ℚ) / 2

end

end A186690.P696186090379107638

namespace A186690

/-- `A143348(n+1)+A146076(n+1)/2` -/
def P696186090379107638.Spec : Prop :=
  ∀ n, P696186090379107638.a n = (A186690 (n + 1) : ℚ)

end A186690

/-! ## A186690.P11899761029288065608

`A115607(n+1)-A146076(n+1)/2`
-/

namespace A186690.P11899761029288065608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115607 (n + 1) : ℚ) - (A146076 (n + 1) : ℚ) / 2

end

end A186690.P11899761029288065608

namespace A186690

/-- `A115607(n+1)-A146076(n+1)/2` -/
def P11899761029288065608.Spec : Prop :=
  ∀ n, P11899761029288065608.a n = (A186690 (n + 1) : ℚ)

end A186690

/-! ## A186690.P6768660193273012907

`A115607(n+1)/2*A171977(n+1)`
-/

namespace A186690.P6768660193273012907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115607 (n + 1) : ℚ) / 2 * (A171977 (n + 1) : ℚ)

end

end A186690.P6768660193273012907

namespace A186690

/-- `A115607(n+1)/2*A171977(n+1)` -/
def P6768660193273012907.Spec : Prop :=
  ∀ n, P6768660193273012907.a n = (A186690 (n + 1) : ℚ)

end A186690

/-! ## A186690.P17113920832786852635

`∑{d}[A000265(n+1), #*A118827(n+1)]`
-/

namespace A186690.P17113920832786852635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A118827 (n + 1)

end

end A186690.P17113920832786852635

namespace A186690

/-- `∑{d}[A000265(n+1), #*A118827(n+1)]` -/
def P17113920832786852635.Spec : Prop :=
  ∀ n, P17113920832786852635.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P10819005931146508777

`∑{d}[n+1, A002129(#)*A154955((n+1)/#)]`
-/

namespace A186690.P10819005931146508777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002129 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186690.P10819005931146508777

namespace A186690

/-- `∑{d}[n+1, A002129(#)*A154955((n+1)/#)]` -/
def P10819005931146508777.Spec : Prop :=
  ∀ n, P10819005931146508777.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P10092740589799502390

`∑{d}[n+1, A118827(#)*A193356((n+1)/#)]`
-/

namespace A186690.P10092740589799502390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118827 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186690.P10092740589799502390

namespace A186690

/-- `∑{d}[n+1, A118827(#)*A193356((n+1)/#)]` -/
def P10092740589799502390.Spec : Prop :=
  ∀ n, P10092740589799502390.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P15011037311001423369

`∑{d}[n+1, A001227(#)*A325596((n+1)/#)]`
-/

namespace A186690.P15011037311001423369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186690.P15011037311001423369

namespace A186690

/-- `∑{d}[n+1, A001227(#)*A325596((n+1)/#)]` -/
def P15011037311001423369.Spec : Prop :=
  ∀ n, P15011037311001423369.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P11040119152899428709

`∑{d}[n+1, A092673(#)*A327242((n+1)/#)]`
-/

namespace A186690.P11040119152899428709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A327242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186690.P11040119152899428709

namespace A186690

/-- `∑{d}[n+1, A092673(#)*A327242((n+1)/#)]` -/
def P11040119152899428709.Spec : Prop :=
  ∀ n, P11040119152899428709.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P17336426185763473262

`∑{d}[n+1, A099894(#-1)*A121455((n+1)/#)]`
-/

namespace A186690.P17336426185763473262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A121455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A186690.P17336426185763473262

namespace A186690

/-- `∑{d}[n+1, A099894(#-1)*A121455((n+1)/#)]` -/
def P17336426185763473262.Spec : Prop :=
  ∀ n, P17336426185763473262.a n = A186690 (n + 1)

end A186690

/-! ## A186690.P121634984762003232

`A002131(n+1)+A115607(n+1)-A000203(n+1)`
-/

namespace A186690.P121634984762003232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) + (A115607 (n + 1) - A000203 (n + 1))

end

end A186690.P121634984762003232

namespace A186690

/-- `A002131(n+1)+A115607(n+1)-A000203(n+1)` -/
def P121634984762003232.Spec : Prop :=
  ∀ n, P121634984762003232.a n = A186690 (n + 1)

end A186690

/-!
# A186694: Numbers ending in 1, 3, 7 or 9 such that changing any one decimal digit produces a composite number.

The programs for A186694, there is no canonical definition to state claims against.
-/

/-! ## A186694.P10897594732860278759

`∪[A050249(n+1), A143641(n+1)]`
-/

namespace A186694.P10897594732860278759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186694.P10897594732860278759

/-!
# A186695: A Galton triangle: T(n,k) = (2k-1)*(T(n-1,k) + T(n-1,k-1)): a type B analog of the ordered Bell numbers A019538.

The programs for A186695, there is no canonical definition to state claims against.
-/

/-! ## A186695.P16902452923806356335

`A039755(n)*A130757(A112367(n))`
-/

namespace A186695.P16902452923806356335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 n * A130757 (A112367 n).toNat

end

end A186695.P16902452923806356335

/-! ## A186695.P11218409886792719990

`A001147(A002260(n+1))*A039755(n)`
-/

namespace A186695.P11218409886792719990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A002260 (n + 1)).toNat * A039755 n

end

end A186695.P11218409886792719990

/-! ## A186695.P5654157695672204631

`A001147(A002260(n+1))*A039756(A061579(n))`
-/

namespace A186695.P5654157695672204631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A002260 (n + 1)).toNat * A039756 (A061579 n).toNat

end

end A186695.P5654157695672204631

/-! ## A186695.P11507172662301691840

`A039756(A038722(n+2))*A130757(A112367(n))`
-/

namespace A186695.P11507172662301691840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (A038722 (n + 2)).toNat * A130757 (A112367 n).toNat

end

end A186695.P11507172662301691840

/-! ## A186695.P10250536570478426535

`A001147(A002260(n+1))*A039756(A038722(n+2))`
-/

namespace A186695.P10250536570478426535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A002260 (n + 1)).toNat * A039756 (A038722 (n + 2)).toNat

end

end A186695.P10250536570478426535

/-! ## A186695.P2440657860654885816

`A225476(n)/A233543(n)*A001147(A002260(n+1))`
-/

namespace A186695.P2440657860654885816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225476 n : ℚ) / (A233543 n : ℚ) * (A001147 (A002260 (n + 1)).toNat : ℚ)

end

end A186695.P2440657860654885816

/-! ## A186695.P11181332843243663677

`A187075(n+1)/A075497(n+1)*A039755(n)`
-/

namespace A186695.P11181332843243663677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187075 (n + 1) : ℚ) / (A075497 (n + 1) : ℚ) * (A039755 n : ℚ)

end

end A186695.P11181332843243663677

/-! ## A186695.P5256581944674444015

`A130757(A112367(n))*A225476(n)/A233543(n)`
-/

namespace A186695.P5256581944674444015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130757 (A112367 n).toNat * A225476 n : ℚ) / (A233543 n : ℚ)

end

end A186695.P5256581944674444015

/-!
# A186696: a(n)=(A112998(n)-1)/12.

The programs for A186696, there is no canonical definition to state claims against.
-/

/-! ## A186696.P2321132105675697360

`(A112998(n+1)-1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186696.P2321132105675697360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112998 (n + 1) - 1 : ℚ) / 12

end

end A186696.P2321132105675697360

/-! ## A186696.P474271356507680387

`floor(A112998(n+1)/12)`
-/

namespace A186696.P474271356507680387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112998 (n + 1) : ℚ) / 12⌋

end

end A186696.P474271356507680387

/-! ## A186696.P13933161594758329926

`round(A112998(gcd(n, n+1)%9+n)/12)`
-/

namespace A186696.P13933161594758329926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112998 (Nat.gcd n (n + 1) % 9 + n) : ℚ) / 12)

end

end A186696.P13933161594758329926

/-! ## A186696.P1696892856135723237

`round(A112998(n+1)/12)%A002046(n+1)`
-/

namespace A186696.P1696892856135723237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A112998 (n + 1) : ℚ) / 12)) (A002046 (n + 1))

end

end A186696.P1696892856135723237

/-! ## A186696.P17466731300801775721

`lcm(round(A112998(n+1)/12), A033999(n+1))`
-/

namespace A186696.P17466731300801775721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A112998 (n + 1) : ℚ) / 12)) (A033999 (n + 1))

end

end A186696.P17466731300801775721

/-! ## A186696.P4078523455319030963

`A000010(ceil(A112998(n+1)/2))/6`
-/

namespace A186696.P4078523455319030963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ⌈(A112998 (n + 1) : ℚ) / 2⌉.toNat : ℚ) / 6

end

end A186696.P4078523455319030963

/-! ## A186696.P4624997235828911196

`round(A010051(A046314(n+1))+A112998(n+1)/12)`
-/

namespace A186696.P4624997235828911196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010051 (A046314 (n + 1)).toNat : ℚ) + (A112998 (n + 1) : ℚ) / 12)

end

end A186696.P4624997235828911196

/-! ## A186696.P2318370937209723167

`A091732(ceil(A112998(n+1)/2))/6`
-/

namespace A186696.P2318370937209723167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091732 ⌈(A112998 (n + 1) : ℚ) / 2⌉.toNat : ℚ) / 6

end

end A186696.P2318370937209723167

/-! ## A186696.P10393702823984712450

`A008615(ceil(A112998(n+1)/2))`
-/

namespace A186696.P10393702823984712450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ⌈(A112998 (n + 1) : ℚ) / 2⌉.toNat

end

end A186696.P10393702823984712450

/-! ## A186696.P9710416804393051353

`A103221(ceil(A112998(n+1)/2))`
-/

namespace A186696.P9710416804393051353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ⌈(A112998 (n + 1) : ℚ) / 2⌉.toNat

end

end A186696.P9710416804393051353

/-!
# A186697: Next Fibonacci number after n-th prime number.

The programs for A186697, the canonical program `A186697.P1665573472131375262` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186697 has offset 1).

The definition of A186697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186697.P1665573472131375262

`A246104(p?[a(n-1)+2]-1)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A186697

/-- `A246104(p?[a(n-1)+2]-1)` -/
def P1665573472131375262.Spec : Prop :=
  ∀ n, P1665573472131375262.a n = A186697 (n + 1)

theorem P1665573472131375262.correct : P1665573472131375262.Spec := by
  intro n
  simp only [A186697, Nat.add_sub_cancel]

end A186697

/-! ## A186697.P9566954186456302508

`A246104(A006093(n+1))`
-/

namespace A186697.P9566954186456302508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (A006093 (n + 1)).toNat

end

end A186697.P9566954186456302508

namespace A186697

/-- `A246104(A006093(n+1))` -/
def P9566954186456302508.Spec : Prop :=
  ∀ n, P9566954186456302508.a n = A186697 (n + 1)

end A186697

/-! ## A186697.P1339709132215824578

`A246104(record[A000010(n+1)])`
-/

namespace A186697.P1339709132215824578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186697.P1339709132215824578

namespace A186697

/-- `A246104(record[A000010(n+1)])` -/
def P1339709132215824578.Spec : Prop :=
  ∀ n, P1339709132215824578.a n = A186697 (n + 1)

end A186697

/-! ## A186697.P3195361969761010793

`A246104(A040976(n+1)+1)`
-/

namespace A186697.P3195361969761010793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (A040976 (n + 1) + 1).toNat

end

end A186697.P3195361969761010793

namespace A186697

/-- `A246104(A040976(n+1)+1)` -/
def P3195361969761010793.Spec : Prop :=
  ∀ n, P3195361969761010793.a n = A186697 (n + 1)

end A186697

/-! ## A186697.P17737646022383086535

`A256654(p?[round(8*n/7)]+1)`
-/

namespace A186697.P17737646022383086535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A186697.P17737646022383086535

namespace A186697

/-- `A256654(p?[round(8*n/7)]+1)` -/
def P17737646022383086535.Spec : Prop :=
  ∀ n, P17737646022383086535.a n = A186697 (n + 1)

end A186697

/-! ## A186697.P14102254447451963955

`A256654(A008864(n+1))`
-/

namespace A186697.P14102254447451963955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A008864 (n + 1)).toNat

end

end A186697.P14102254447451963955

namespace A186697

/-- `A256654(A008864(n+1))` -/
def P14102254447451963955.Spec : Prop :=
  ∀ n, P14102254447451963955.a n = A186697 (n + 1)

end A186697

/-! ## A186697.P11575567137144080508

`A256654(A028815(n+1))`
-/

namespace A186697.P11575567137144080508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A028815 (n + 1)).toNat

end

end A186697.P11575567137144080508

namespace A186697

/-- `A256654(A028815(n+1))` -/
def P11575567137144080508.Spec : Prop :=
  ∀ n, P11575567137144080508.a n = A186697 (n + 1)

end A186697

/-! ## A186697.P15840064537035230357

`A256654(A299763(n+2))`
-/

namespace A186697.P15840064537035230357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A299763 (n + 2)).toNat

end

end A186697.P15840064537035230357

namespace A186697

/-- `A256654(A299763(n+2))` -/
def P15840064537035230357.Spec : Prop :=
  ∀ n, P15840064537035230357.a n = A186697 (n + 1)

end A186697

/-! ## A186697.P229401643701487538

`A256654(A000040(n+1)+1)`
-/

namespace A186697.P229401643701487538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A000040 (n + 1) + 1).toNat

end

end A186697.P229401643701487538

namespace A186697

/-- `A256654(A000040(n+1)+1)` -/
def P229401643701487538.Spec : Prop :=
  ∀ n, P229401643701487538.a n = A186697 (n + 1)

end A186697

/-! ## A186697.P2544122394507730189

`A087172(A138183(n+1)+A138182(n+1))`
-/

namespace A186697.P2544122394507730189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A138183 (n + 1) + A138182 (n + 1)).toNat

end

end A186697.P2544122394507730189

namespace A186697

/-- `A087172(A138183(n+1)+A138182(n+1))` -/
def P2544122394507730189.Spec : Prop :=
  ∀ n, P2544122394507730189.a n = A186697 (n + 1)

end A186697

/-!
# A186698: Next prime after n-th positive palindrome.

The programs for A186698, there is no canonical definition to state claims against.
-/

/-! ## A186698.P18272613991531241595

`A151800(A002113(n+2))`
-/

namespace A186698.P18272613991531241595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A002113 (n + 2)).toNat

end

end A186698.P18272613991531241595

/-! ## A186698.P9972365327799530930

`A000040(A076890(n+1)+1)`
-/

namespace A186698.P9972365327799530930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076890 (n + 1) + 1).toNat

end

end A186698.P9972365327799530930

/-! ## A186698.P17578994671985866068

`A151800(∑[A086862(n+1)])`
-/

namespace A186698.P17578994671985866068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186698.P17578994671985866068

/-! ## A186698.P13944618478250128584

`A151800(abs(Δ[A302663(n+1)]))`
-/

namespace A186698.P13944618478250128584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 |f1 (n + 1) - f1 n|.toNat

end

end A186698.P13944618478250128584

/-! ## A186698.P811116707188907534

`A000040(A000720(A002113(n+2))+1)`
-/

namespace A186698.P811116707188907534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A002113 (n + 2)).toNat + 1).toNat

end

end A186698.P811116707188907534

/-! ## A186698.P7591386549112739390

`A007918(A002113(n+2)+1)`
-/

namespace A186698.P7591386549112739390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A002113 (n + 2) + 1).toNat

end

end A186698.P7591386549112739390

/-! ## A186698.P8749806656551402825

`A151800(record[(n+1)²/A082216(n+1)])`
-/

namespace A186698.P8749806656551402825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A082216 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A186698.P8749806656551402825

/-! ## A186698.P17260199854313547897

`A151800(record[2*(n+1)-A082216(n+1)])`
-/

namespace A186698.P17260199854313547897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A082216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186698.P17260199854313547897

/-! ## A186698.P8721156502852095456

`A000040(A036234(∑[A086862(n+1)]))`
-/

namespace A186698.P8721156502852095456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A036234 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A186698.P8721156502852095456

/-!
# A186699: Numbers n such that there are n numbers in arithmetic progression whose squares sum to a perfect square.

The programs for A186699, there is no canonical definition to state claims against.
-/

/-! ## A186699.P17790498056023910590

`∪[(n+1)², A134419(n+1)]`
-/

namespace A186699.P17790498056023910590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186699.P17790498056023910590

/-! ## A186699.P15165074623254503203

`∪[A134419(n+1), Δ[A000330(n)]]`
-/

namespace A186699.P15165074623254503203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186699.P15165074623254503203

/-! ## A186699.P14191723332003068808

`∪[A134419(n+1), A052041(n+1)]`
-/

namespace A186699.P14191723332003068808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186699.P14191723332003068808

/-! ## A186699.P319003811124971477

`∪[A134419(n+1), A118547(n+1)]`
-/

namespace A186699.P319003811124971477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186699.P319003811124971477

/-! ## A186699.P18112377411588047138

`∪[A134419(n+1), A144913(n+1)]`
-/

namespace A186699.P18112377411588047138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186699.P18112377411588047138

/-! ## A186699.P17893994297320668261

`∪[A134419(n+1), A169580(n+1)]`
-/

namespace A186699.P17893994297320668261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186699.P17893994297320668261

/-! ## A186699.P8934384750683052454

`∪[A134419(n+1), A179126(n+1)]`
-/

namespace A186699.P8934384750683052454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186699.P8934384750683052454

/-! ## A186699.P12037144633367814364

`∪[A134419(n+1), A216500(n+1)]`
-/

namespace A186699.P12037144633367814364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186699.P12037144633367814364

/-! ## A186699.P2226638443256364963

`∪[A134419(n+1), A221222(n+1)]`
-/

namespace A186699.P2226638443256364963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186699.P2226638443256364963

/-! ## A186699.P16412861664593871900

`∪[A134419(n+1), A328558(n+1)]`
-/

namespace A186699.P16412861664593871900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186699.P16412861664593871900

