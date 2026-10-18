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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A316200: Number of self-avoiding polygons with perimeter n and sides = 1 that have vertex angles from the set 0, +-Pi/5, +-2*Pi/5, +-3*Pi/5, +-4*Pi/5, not counting rotations and reflections as distinct.

The programs for A316200, there is no canonical definition to state claims against.
-/

/-! ## A316200.P11867489731936995400

`A071538(A054519(n)^A074239(n))`
-/

namespace A316200.P11867489731936995400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (SequenceMachineLib.roundAway ((A054519 n : ℚ) ^ (A074239 n : ℤ))).toNat

end

end A316200.P11867489731936995400

/-! ## A316200.P3726986118352876283

`A071538(A054519(n)^A351007(n))`
-/

namespace A316200.P3726986118352876283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (SequenceMachineLib.roundAway ((A054519 n : ℚ) ^ (A351007 n : ℤ))).toNat

end

end A316200.P3726986118352876283

/-! ## A316200.P18115636319611226379

`A048621(A342520(n)^A342516(n))`
-/

namespace A316200.P18115636319611226379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (SequenceMachineLib.roundAway ((A342520 n : ℚ) ^ (A342516 n : ℤ))).toNat

end

end A316200.P18115636319611226379

/-! ## A316200.P4151482874588733205

`A205725(A129724(n))-A205725(n+1)`
-/

namespace A316200.P4151482874588733205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205725 (A129724 n).toNat - A205725 (n + 1)

end

end A316200.P4151482874588733205

/-!
# A316201: Number of self-avoiding polygons with perimeter 2*n and sides = 1 that have vertex angles from the set +-Pi/11, +-3*Pi/11, +-5*Pi/11, +-7*Pi/11, +-9*Pi/11, not counting rotations and reflections as distinct.

The programs for A316201, there is no canonical definition to state claims against.
-/

/-! ## A316201.P7089149306193569340

`A271626(a(n-1))` with `a(0)=0, a(1)=0, a(2)=8, a(3)=19`
-/

namespace A316201.P7089149306193569340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 8, 19] fun n a =>
  A271626 (a (n - 1)).toNat

end

end A316201.P7089149306193569340

/-!
# A316202: Number of integer partitions of n into Fermi-Dirac primes.

The programs for A316202, there is no canonical definition to state claims against.
-/

/-! ## A316202.P2567348086677754451

`or(A111901(n), A124761(A034799(n)))`
-/

namespace A316202.P2567348086677754451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111901 n) (A124761 (A034799 n).toNat)

end

end A316202.P2567348086677754451

/-! ## A316202.P17549663136465702444

`A111901(n)+A102683(A074029(n+1))`
-/

namespace A316202.P17549663136465702444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111901 n + A102683 (A074029 (n + 1)).toNat

end

end A316202.P17549663136465702444

/-! ## A316202.P8093894536770225710

`A185284(A047485(n+1))+A111901(n)`
-/

namespace A316202.P8093894536770225710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A047485 (n + 1)).toNat + A111901 n

end

end A316202.P8093894536770225710

/-! ## A316202.P12980356031794998604

`or(A111900(A111910(2*n+1)), A111901(n))`
-/

namespace A316202.P12980356031794998604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111900 (A111910 (2 * n + 1)).toNat) (A111901 n)

end

end A316202.P12980356031794998604

/-! ## A316202.P5527526200516305083

`A273190(A241736(2*n))`
-/

namespace A316202.P5527526200516305083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A241736 (2 * n)).toNat

end

end A316202.P5527526200516305083

/-!
# A316203: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316203, there is no canonical definition to state claims against.
-/

/-! ## A316203.P3001678418246753108

`A316209(∑[4*n]+1)`
-/

namespace A316203.P3001678418246753108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316203.P3001678418246753108

/-! ## A316203.P15894053405908053423

`record[A316209(Δ[A235355(n)])]`
-/

namespace A316203.P15894053405908053423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316203.P15894053405908053423

/-! ## A316203.P6450206482243737151

`record[A316209(A330613(n+1))]`
-/

namespace A316203.P6450206482243737151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316203.P6450206482243737151

/-! ## A316203.P17677881023484349668

`A316209(A001844(n))+char[11]`
-/

namespace A316203.P17677881023484349668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316203.P17677881023484349668

/-! ## A316203.P10650657471235833589

`record[A003982(n)*A316209(n+1)]`
-/

namespace A316203.P10650657471235833589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316203.P10650657471235833589

/-!
# A316204: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316204, there is no canonical definition to state claims against.
-/

/-! ## A316204.P2610530844349425508

`A316209(∑[n+2]+4)`
-/

namespace A316204.P2610530844349425508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316204.P2610530844349425508

/-! ## A316204.P17370759282699769456

`A316209(A167614(n+1))+char[18]`
-/

namespace A316204.P17370759282699769456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316204.P17370759282699769456

/-! ## A316204.P3416304008106023441

`record[gcd(A025581(n), A316209(n+4))]`
-/

namespace A316204.P3416304008106023441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A316209 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316204.P3416304008106023441

/-! ## A316204.P3568937537507643091

`A316209(A167499(n)+n)+char[17]`
-/

namespace A316204.P3568937537507643091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316204.P3568937537507643091

/-! ## A316204.P14953952595646304310

`A316209(A000217(n+2)+3)+char[17]`
-/

namespace A316204.P14953952595646304310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316204.P14953952595646304310

/-!
# A316205: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316205, there is no canonical definition to state claims against.
-/

/-! ## A316205.P1851094277719379799

`A316209(∑[n+3]+7)`
-/

namespace A316205.P1851094277719379799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316205.P1851094277719379799

/-! ## A316205.P8678467391405558087

`A316209(A052905(n)+9)+char[17]`
-/

namespace A316205.P8678467391405558087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316205.P8678467391405558087

/-! ## A316205.P12514955360061099818

`A007318(C(n, 2))*A316209(A052905(n)+9)`
-/

namespace A316205.P12514955360061099818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A316209 (A052905 n + 9).toNat

end

end A316205.P12514955360061099818

/-! ## A316205.P2531640123250868005

`A000041(C(n, 64))*A316209(A052905(n)+9)`
-/

namespace A316205.P2531640123250868005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A316209 (A052905 n + 9).toNat

end

end A316205.P2531640123250868005

/-! ## A316205.P16261466963361035209

`A000108(C(2, n+2))*A316209(A052905(n)+9)`
-/

namespace A316205.P16261466963361035209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A316209 (A052905 n + 9).toNat

end

end A316205.P16261466963361035209

/-!
# A316206: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316206, there is no canonical definition to state claims against.
-/

/-! ## A316206.P3278265044715272851

`A316209(A374005(n+1))`
-/

namespace A316206.P3278265044715272851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A374005 (n + 1)).toNat

end

end A316206.P3278265044715272851

/-! ## A316206.P1267573424335163729

`A316209(A167499(n+3))`
-/

namespace A316206.P1267573424335163729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A167499 (n + 3)).toNat

end

end A316206.P1267573424335163729

/-! ## A316206.P5348865065201578072

`A316209(A155212(n)+13)`
-/

namespace A316206.P5348865065201578072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A155212 n + 13).toNat

end

end A316206.P5348865065201578072

/-! ## A316206.P10924145150165515462

`A316209(A056000(n)+15)`
-/

namespace A316206.P10924145150165515462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A056000 n + 15).toNat

end

end A316206.P10924145150165515462

/-! ## A316206.P375305496467961558

`A316209(eq[7, A066657(n)])`
-/

namespace A316206.P375305496467961558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316206.P375305496467961558

/-!
# A316207: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316207, there is no canonical definition to state claims against.
-/

/-! ## A316207.P1482821009860977906

`A316209(A374007(n+1))`
-/

namespace A316207.P1482821009860977906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A374007 (n + 1)).toNat

end

end A316207.P1482821009860977906

/-! ## A316207.P5120853647291099345

`A316209(A056115(n)+21)`
-/

namespace A316207.P5120853647291099345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A056115 n + 21).toNat

end

end A316207.P5120853647291099345

/-! ## A316207.P1277767197071434110

`A316209(A167499(n+4)+1)`
-/

namespace A316207.P1277767197071434110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A167499 (n + 4) + 1).toNat

end

end A316207.P1277767197071434110

/-! ## A316207.P4001429425076561596

`A316209(A167487(n+4)-1)`
-/

namespace A316207.P4001429425076561596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A167487 (n + 4) - 1).toNat

end

end A316207.P4001429425076561596

/-! ## A316207.P8000173261160149687

`A316209(A167614(n+4)+3)`
-/

namespace A316207.P8000173261160149687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A167614 (n + 4) + 3).toNat

end

end A316207.P8000173261160149687

/-!
# A316208: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316208, there is no canonical definition to state claims against.
-/

/-! ## A316208.P17825951703730987597

`A316209(A374008(n+1))`
-/

namespace A316208.P17825951703730987597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A374008 (n + 1)).toNat

end

end A316208.P17825951703730987597

/-! ## A316208.P12093043640959012232

`A316209(A167487(n+5))`
-/

namespace A316208.P12093043640959012232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A167487 (n + 5)).toNat

end

end A316208.P12093043640959012232

/-! ## A316208.P18163562078023515139

`A316209(A056119(n)+28)`
-/

namespace A316208.P18163562078023515139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A056119 n + 28).toNat

end

end A316208.P18163562078023515139

/-! ## A316208.P6330697893285351758

`A316209(eq[11, A066657(n)])`
-/

namespace A316208.P6330697893285351758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316208.P6330697893285351758

/-! ## A316208.P6978513997132751680

`A316209(A167499(n+5)+2)`
-/

namespace A316208.P6978513997132751680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (A167499 (n + 5) + 2).toNat

end

end A316208.P6978513997132751680

/-!
# A316209: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316209, there is no canonical definition to state claims against.
-/

/-! ## A316209.P459954350166169335

`A304310(n+1)+A010894(A003401(n+1))`
-/

namespace A316209.P459954350166169335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (n + 1) + A010894 ((A003401 (n + 1)).toNat + 21)

end

end A316209.P459954350166169335

/-! ## A316209.P16357811857706406755

`A304310(n+1)+A011731(A022171(n))`
-/

namespace A316209.P16357811857706406755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (n + 1) + A011731 (A022171 n).toNat

end

end A316209.P16357811857706406755

/-! ## A316209.P2596282785716227583

`A304310(n+1)+A025465(A022345(n))`
-/

namespace A316209.P2596282785716227583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (n + 1) + A025465 (A022345 n).toNat

end

end A316209.P2596282785716227583

/-! ## A316209.P2243099483673384065

`A304310(n+1)+A025465(A023105(n))`
-/

namespace A316209.P2243099483673384065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (n + 1) + A025465 (A023105 n).toNat

end

end A316209.P2243099483673384065

/-! ## A316209.P13414791346648700380

`A304310(n+1)+A055641(A002843(n))`
-/

namespace A316209.P13414791346648700380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304310 (n + 1) + A055641 (A002843 n).toNat

end

end A316209.P13414791346648700380

/-!
# A316210: Number of integer partitions of the n-th Fermi-Dirac prime into Fermi-Dirac primes.

The programs for A316210, there is no canonical definition to state claims against.
-/

/-! ## A316210.P9350337899155872461

`A316202(A009087(n+1))`
-/

namespace A316210.P9350337899155872461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316202 (A009087 (n + 1)).toNat

end

end A316210.P9350337899155872461

/-! ## A316210.P7762042193830660289

`A316202(A050376(n+1))`
-/

namespace A316210.P7762042193830660289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316202 (A050376 (n + 1)).toNat

end

end A316210.P7762042193830660289

/-! ## A316210.P998834996390598604

`A316202(A026477(n+2))`
-/

namespace A316210.P998834996390598604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316202 (A026477 (n + 2)).toNat

end

end A316210.P998834996390598604

/-! ## A316210.P5123165256907596661

`A316202(A079852(n+2))`
-/

namespace A316210.P5123165256907596661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316202 (A079852 (n + 2)).toNat

end

end A316210.P5123165256907596661

/-! ## A316210.P13058460610282894070

`A316202(A084400(n+2))`
-/

namespace A316210.P13058460610282894070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316202 (A084400 (n + 2)).toNat

end

end A316210.P13058460610282894070

/-!
# A316211: Number of strict integer partitions of n into Fermi-Dirac primes.

The programs for A316211, there is no canonical definition to state claims against.
-/

/-! ## A316211.P18405602558421595671

`A111902(n+1)+A102683(A074029(n+1))`
-/

namespace A316211.P18405602558421595671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111902 (n + 1) + A102683 (A074029 (n + 1)).toNat

end

end A316211.P18405602558421595671

/-! ## A316211.P17173364372455311019

`A162782(A051358(n))+A111902(n+1)`
-/

namespace A316211.P17173364372455311019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162782 (A051358 n).toNat + A111902 (n + 1)

end

end A316211.P17173364372455311019

/-! ## A316211.P9159079409050238662

`A111902(n+1)+A025466(A218543(n))`
-/

namespace A316211.P9159079409050238662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111902 (n + 1) + A025466 (A218543 n).toNat

end

end A316211.P9159079409050238662

/-! ## A316211.P13377359549057863348

`or(A101637(A002215(n+1)), A111902(n+1))`
-/

namespace A316211.P13377359549057863348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101637 (A002215 (n + 1)).toNat) (A111902 (n + 1))

end

end A316211.P13377359549057863348

/-! ## A316211.P4569691766611189402

`A111902(n+1)+A185044(n)^A000032(n)`
-/

namespace A316211.P4569691766611189402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111902 (n + 1) : ℚ) + (A185044 n : ℚ) ^ (A000032 n : ℤ)

end

end A316211.P4569691766611189402

/-!
# A316212: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316212, there is no canonical definition to state claims against.
-/

/-! ## A316212.P665038221217839619

`A316218(∑[4*n]+1)`
-/

namespace A316212.P665038221217839619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316212.P665038221217839619

/-! ## A316212.P4995748461287974423

`record[A316218(Δ[A235355(n)])]`
-/

namespace A316212.P4995748461287974423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316212.P4995748461287974423

/-! ## A316212.P8583473648890555633

`and(-1, A316218(A001844(n)))`
-/

namespace A316212.P8583473648890555633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316218 (A001844 n).toNat)

end

end A316212.P8583473648890555633

/-! ## A316212.P1858616902266445596

`record[A316218(A330613(n+1))]`
-/

namespace A316212.P1858616902266445596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316212.P1858616902266445596

/-! ## A316212.P6186171457324788967

`record[A003982(n)*A316218(n+1)]`
-/

namespace A316212.P6186171457324788967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316212.P6186171457324788967

/-!
# A316213: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316213, there is no canonical definition to state claims against.
-/

/-! ## A316213.P5409347022685874109

`A316218(∑[n+2]+4)`
-/

namespace A316213.P5409347022685874109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316213.P5409347022685874109

/-! ## A316213.P3103728871506130644

`A316218(A167499(n)+n)+char[21]`
-/

namespace A316213.P3103728871506130644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316213.P3103728871506130644

/-! ## A316213.P3780933352190874447

`A316218(A000096(n+1)+4)+char[20]`
-/

namespace A316213.P3780933352190874447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316213.P3780933352190874447

/-! ## A316213.P8474214375123927054

`lcm((-1)^n, A316218(A167614(n+1)))`
-/

namespace A316213.P8474214375123927054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A316218 (A167614 (n + 1)).toNat)

end

end A316213.P8474214375123927054

/-! ## A316213.P16936730432958282987

`A316218(A167614(n+1))+A000035(2*n)`
-/

namespace A316213.P16936730432958282987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A316213.P16936730432958282987

/-!
# A316214: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316214, there is no canonical definition to state claims against.
-/

/-! ## A316214.P16609008143194110912

`A316218(∑[n+3]+7)`
-/

namespace A316214.P16609008143194110912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316214.P16609008143194110912

/-! ## A316214.P18044561927118439959

`A316218(A141214(n)+7)+char[17]`
-/

namespace A316214.P18044561927118439959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316214.P18044561927118439959

/-! ## A316214.P11936744041696627197

`A316218(A141214(n)+7)%A000108(n+7)`
-/

namespace A316214.P11936744041696627197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316218 (A141214 n + 7).toNat) (A000108 (n + 7))

end

end A316214.P11936744041696627197

/-! ## A316214.P12022266738337634487

`A000041(C(2, n+2))*A316218(A141214(n)+7)`
-/

namespace A316214.P12022266738337634487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A316218 (A141214 n + 7).toNat

end

end A316214.P12022266738337634487

/-! ## A316214.P710826000541466706

`A000108(C(2, n+2))*A316218(A141214(n)+7)`
-/

namespace A316214.P710826000541466706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A316218 (A141214 n + 7).toNat

end

end A316214.P710826000541466706

/-!
# A316215: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316215, there is no canonical definition to state claims against.
-/

/-! ## A316215.P2698024294557671339

`A316218(∑[n+3]+n+12)`
-/

namespace A316215.P2698024294557671339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A316215.P2698024294557671339

/-! ## A316215.P7408870048828715942

`A316218(A056000(n)+15)+char[16]`
-/

namespace A316215.P7408870048828715942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316215.P7408870048828715942

/-! ## A316215.P16399971122081066992

`A014963(10*(n+1))*A316218(A056000(n)+15)`
-/

namespace A316215.P16399971122081066992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A316218 (A056000 n + 15).toNat

end

end A316215.P16399971122081066992

/-! ## A316215.P14478956024034056108

`A007318(val(n+1, 3))*A316218(A056000(n)+15)`
-/

namespace A316215.P14478956024034056108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 3) * A316218 (A056000 n + 15).toNat

end

end A316215.P14478956024034056108

/-! ## A316215.P7665152175511696044

`A316218(A056000(n)+15)^A000108(C(2, n+2))`
-/

namespace A316215.P7665152175511696044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316218 (A056000 n + 15).toNat : ℚ) ^ (A000108 (Nat.choose 2 (n + 2)) : ℤ)

end

end A316215.P7665152175511696044

/-!
# A316216: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316216, there is no canonical definition to state claims against.
-/

/-! ## A316216.P12794383127488206528

`A316218(A166136(n+4))`
-/

namespace A316216.P12794383127488206528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (A166136 (n + 4)).toNat

end

end A316216.P12794383127488206528

/-! ## A316216.P17210849447521819061

`A316218(A056115(n)+21)`
-/

namespace A316216.P17210849447521819061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (A056115 n + 21).toNat

end

end A316216.P17210849447521819061

/-! ## A316216.P271287931833927825

`A316218(∑[A020710(n)]+16)`
-/

namespace A316216.P271287931833927825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A316216.P271287931833927825

/-! ## A316216.P6582455078316033177

`A316218(A167614(n+4)+3)`
-/

namespace A316216.P6582455078316033177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (A167614 (n + 4) + 3).toNat

end

end A316216.P6582455078316033177

/-! ## A316216.P18300845609916241121

`A316218(A000124(n+5)+5)`
-/

namespace A316216.P18300845609916241121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (A000124 (n + 5) + 5).toNat

end

end A316216.P18300845609916241121

/-!
# A316217: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316217, there is no canonical definition to state claims against.
-/

/-! ## A316217.P6361199328472378200

`A316218(∑[n+6]+22)`
-/

namespace A316217.P6361199328472378200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A316217.P6361199328472378200

/-!
# A316218: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316218, there is no canonical definition to state claims against.
-/

/-! ## A316218.P5376325307930978266

`A304347(n+1)+A173636(A174545(n))`
-/

namespace A316218.P5376325307930978266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (n + 1) + A173636 (A174545 n).toNat

end

end A316218.P5376325307930978266

/-! ## A316218.P15502505417567443531

`A305642(n+1)-A081603(A022167(n))`
-/

namespace A316218.P15502505417567443531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (n + 1) - A081603 (A022167 n).toNat

end

end A316218.P15502505417567443531

/-! ## A316218.P15688127701553135307

`A305642(n+1)-A054911(A299905(n))`
-/

namespace A316218.P15688127701553135307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (n + 1) - A054911 (A299905 n).toNat

end

end A316218.P15688127701553135307

/-! ## A316218.P5077356979433009932

`A317036(n+1)-A157685(A260340(n))`
-/

namespace A316218.P5077356979433009932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (n + 1) - A157685 (A260340 n).toNat

end

end A316218.P5077356979433009932

/-! ## A316218.P13304758535772107121

`A305642(n+1)-A184159(A260340(n))`
-/

namespace A316218.P13304758535772107121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (n + 1) - A184159 (A260340 n).toNat

end

end A316218.P13304758535772107121

/-!
# A316219: Number of triangles of weight prime(n) in the multiorder of integer partitions of prime numbers into prime parts.

The programs for A316219, there is no canonical definition to state claims against.
-/

/-! ## A316219.P13834683101004773360

`A358831(n)+A051516(A053505(n))`
-/

namespace A316219.P13834683101004773360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358831 n + A051516 (A053505 n).toNat

end

end A316219.P13834683101004773360

/-!
# A316221: Let S(n) = set of divisors of n, excluding n; sequence gives n such that there is a unique relatively prime subset of S(n) that sums to n.

The programs for A316221, there is no canonical definition to state claims against.
-/

/-! ## A316221.P14357833143163129569

`eq[A172216(n+1), A254594(A033630(n))]`
-/

namespace A316221.P14357833143163129569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316221.P14357833143163129569

/-!
# A316222: Number of positive subset-sum triangles whose composite is a positive subset-sum of an integer partition of n.

The programs for A316222, there is no canonical definition to state claims against.
-/

/-! ## A316222.P11988352796557529207

`A302982(A001147(n))+A154638(n)`
-/

namespace A316222.P11988352796557529207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302982 (A001147 n).toNat + A154638 n

end

end A316222.P11988352796557529207

/-!
# A316223: Number of subset-sum triangles with composite a subset-sum of the integer partition with Heinz number n.

The programs for A316223, there is no canonical definition to state claims against.
-/

/-! ## A316223.P1077786079135940884

`A157685(A339319(n+1))`
-/

namespace A316223.P1077786079135940884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A339319 (n + 1)).toNat

end

end A316223.P1077786079135940884

/-! ## A316223.P7765505974273696270

`floor(A339319(A187829(n+1))/3)`
-/

namespace A316223.P7765505974273696270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A339319 (A187829 (n + 1)).toNat : ℚ) / 3⌋

end

end A316223.P7765505974273696270

/-! ## A316223.P6954245083935367112

`floor(A137735(A339319(n+1)²)/3)`
-/

namespace A316223.P6954245083935367112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137735 (A339319 (n + 1) ^ 2).toNat : ℚ) / 3⌋

end

end A316223.P6954245083935367112

/-! ## A316223.P5510663144739416962

`A002264(A339319(A187829(n+1)))`
-/

namespace A316223.P5510663144739416962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A339319 (A187829 (n + 1)).toNat).toNat

end

end A316223.P5510663144739416962

/-! ## A316223.P7824938976431318081

`A002264(A137735(A339319(n+1)²))`
-/

namespace A316223.P7824938976431318081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A137735 (A339319 (n + 1) ^ 2).toNat).toNat

end

end A316223.P7824938976431318081

/-!
# A316224: a(n) = n*(2*n + 1)*(4*n + 1).

The programs for A316224, the canonical program `A316224.P11634259074164940554` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316224 has offset 0).

The definition of A316224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+1)*(4*n+1)` (program `A316224.P11634259074164940554`, by `A316224.P11634259074164940554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316224.P1315143977093176233

`(2*n+1)*(4*n+1)*n`
-/

namespace A316224.P1315143977093176233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((4 * n + 1) * n)

end

end A316224.P1315143977093176233

namespace A316224

/-- `(2*n+1)*(4*n+1)*n` -/
def P1315143977093176233.Spec : Prop :=
  ∀ n, (P1315143977093176233.a n : ℤ) = A316224 n

theorem P1315143977093176233.correct : P1315143977093176233.Spec := by
  intro n
  simp only [A316224, Nat.add_sub_cancel, A316224.P1315143977093176233.a, A316224.P11634259074164940554.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A316224

/-! ## A316224.P11634259074164940554

`n*(2*n+1)*(4*n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A316224

/-- `n*(2*n+1)*(4*n+1)` -/
def P11634259074164940554.Spec : Prop :=
  ∀ n, (P11634259074164940554.a n : ℤ) = A316224 n

theorem P11634259074164940554.correct : P11634259074164940554.Spec := by
  intro n
  simp only [A316224]

end A316224

/-! ## A316224.P11315489486587217517

`Δ[C(C(2*n, 2), 2)]`
-/

namespace A316224.P11315489486587217517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (2 * n) 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A316224.P11315489486587217517

namespace A316224

/-- `Δ[C(C(2*n, 2), 2)]` -/
def P11315489486587217517.Spec : Prop :=
  ∀ n, P11315489486587217517.a n = A316224 n

end A316224

/-! ## A316224.P3019365416505643329

`Δ[C(lcm(n, n-1+n), 2)]`
-/

namespace A316224.P3019365416505643329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.lcm (n : ℤ) ((n : ℤ) - 1 + (n : ℤ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A316224.P3019365416505643329

namespace A316224

/-- `Δ[C(lcm(n, n-1+n), 2)]` -/
def P3019365416505643329.Spec : Prop :=
  ∀ n, P3019365416505643329.a n = A316224 n

end A316224

/-! ## A316224.P1477046482923901480

`lcm(2*n+1, (2*n)²+n)`
-/

namespace A316224.P1477046482923901480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) ((2 * n) ^ 2 + n)

end

end A316224.P1477046482923901480

namespace A316224

/-- `lcm(2*n+1, (2*n)²+n)` -/
def P1477046482923901480.Spec : Prop :=
  ∀ n, (P1477046482923901480.a n : ℤ) = A316224 n

end A316224

/-! ## A316224.P9025703531776216471

`n*record[xor(1, n)*xor(2, n)]/2`
-/

namespace A316224.P9025703531776216471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n * Nat.xor 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A316224.P9025703531776216471

namespace A316224

/-- `n*record[xor(1, n)*xor(2, n)]/2` -/
def P9025703531776216471.Spec : Prop :=
  ∀ n, P9025703531776216471.a n = (A316224 n : ℚ)

end A316224

/-! ## A316224.P11897474968818549534

`Δ[2*n*lcm(n-1, n²)]-n`
-/

namespace A316224.P11897474968818549534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)

end

end A316224.P11897474968818549534

namespace A316224

/-- `Δ[2*n*lcm(n-1, n²)]-n` -/
def P11897474968818549534.Spec : Prop :=
  ∀ n, P11897474968818549534.a n = A316224 n

end A316224

/-! ## A316224.P4783354756231947442

`2*A395241(n)+n`
-/

namespace A316224.P4783354756231947442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A395241 n + (n : ℤ)

end

end A316224.P4783354756231947442

namespace A316224

/-- `2*A395241(n)+n` -/
def P4783354756231947442.Spec : Prop :=
  ∀ n, P4783354756231947442.a n = A316224 n

end A316224

/-! ## A316224.P411122291774409184

`n*A033587(n)+n`
-/

namespace A316224.P411122291774409184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033587 n + (n : ℤ)

end

end A316224.P411122291774409184

namespace A316224

/-- `n*A033587(n)+n` -/
def P411122291774409184.Spec : Prop :=
  ∀ n, P411122291774409184.a n = A316224 n

end A316224

/-! ## A316224.P6003593111453073382

`Δ[2*A085537(n)]-n`
-/

namespace A316224.P6003593111453073382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A316224.P6003593111453073382

namespace A316224

/-- `Δ[2*A085537(n)]-n` -/
def P6003593111453073382.Spec : Prop :=
  ∀ n, P6003593111453073382.a n = A316224 n

end A316224

/-! ## A316224.P13004037879981627875

`n²*A017137(n)+n`
-/

namespace A316224.P13004037879981627875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A017137 n + (n : ℤ)

end

end A316224.P13004037879981627875

namespace A316224

/-- `n²*A017137(n)+n` -/
def P13004037879981627875.Spec : Prop :=
  ∀ n, P13004037879981627875.a n = A316224 n

end A316224

/-! ## A316224.P4248870403106909763

`A049453(n)+A016743(n)`
-/

namespace A316224.P4248870403106909763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n + A016743 n

end

end A316224.P4248870403106909763

namespace A316224

/-- `A049453(n)+A016743(n)` -/
def P4248870403106909763.Spec : Prop :=
  ∀ n, P4248870403106909763.a n = A316224 n

end A316224

/-! ## A316224.P15044554270002381438

`A118465(n)+A033581(n)`
-/

namespace A316224.P15044554270002381438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118465 n + A033581 n

end

end A316224.P15044554270002381438

namespace A316224

/-- `A118465(n)+A033581(n)` -/
def P15044554270002381438.Spec : Prop :=
  ∀ n, P15044554270002381438.a n = A316224 n

end A316224

/-! ## A316224.P17767695172421271839

`A115519(n)+A045950(n)`
-/

namespace A316224.P17767695172421271839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 n + A045950 n

end

end A316224.P17767695172421271839

namespace A316224

/-- `A115519(n)+A045950(n)` -/
def P17767695172421271839.Spec : Prop :=
  ∀ n, P17767695172421271839.a n = A316224 n

end A316224

/-! ## A316224.P7322168671218635776

`A300758(n)+A035328(n)`
-/

namespace A316224.P7322168671218635776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A035328 n

end

end A316224.P7322168671218635776

namespace A316224

/-- `A300758(n)+A035328(n)` -/
def P7322168671218635776.Spec : Prop :=
  ∀ n, P7322168671218635776.a n = A316224 n

end A316224

/-! ## A316224.P12712427168673863758

`A211014(n)+A144138(n)`
-/

namespace A316224.P12712427168673863758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n + A144138 n

end

end A316224.P12712427168673863758

namespace A316224

/-- `A211014(n)+A144138(n)` -/
def P12712427168673863758.Spec : Prop :=
  ∀ n, P12712427168673863758.a n = A316224 n

end A316224

/-! ## A316224.P10649538744668253407

`A244725(n)+A196507(n)`
-/

namespace A316224.P10649538744668253407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + A196507 n

end

end A316224.P10649538744668253407

namespace A316224

/-- `A244725(n)+A196507(n)` -/
def P10649538744668253407.Spec : Prop :=
  ∀ n, P10649538744668253407.a n = A316224 n

end A316224

/-!
# A316225: Numbers k that divide the sum of sums of elements of all subsets of divisors of k (A229335).

The programs for A316225, there is no canonical definition to state claims against.
-/

/-! ## A316225.P12228918403190281400

`record[gcd(n+1, A229335(n+1))]`
-/

namespace A316225.P12228918403190281400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A229335 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316225.P12228918403190281400

/-! ## A316225.P1212268524766891310

`lt[∑{d}[n+1, #]%A000265(n+1), 1]+1`
-/

namespace A316225.P1212268524766891310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) (A000265 (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A316225.P1212268524766891310

/-! ## A316225.P12144276203040438349

`eq[1, A000120(A017666(n+1))]+1`
-/

namespace A316225.P12144276203040438349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A017666 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316225.P12144276203040438349

/-! ## A316225.P10776127638656995900

`record[lcm(A006519(n+1), A009194(n+1))]`
-/

namespace A316225.P10776127638656995900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A009194 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316225.P10776127638656995900

/-! ## A316225.P14013817379209536290

`record[A000027(n+1)/A306408(A017666(n+1))]`
-/

namespace A316225.P14013817379209536290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A306408 (A017666 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316225.P14013817379209536290

/-!
# A316227: Composite numbers k for which no nontrivial divisor shares any digits with k.

The programs for A316227, there is no canonical definition to state claims against.
-/

/-! ## A316227.P7259745876148987382

`or(A050695(n+1), A185284(3*n))`
-/

namespace A316227.P7259745876148987382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050695 (n + 1)) (A185284 (3 * n))

end

end A316227.P7259745876148987382

/-!
# A316230: Expansion of Product_{k>=1} 1/(1 + p(k)*x^k), where p(k) = number of partitions of k (A000041).

The programs for A316230, there is no canonical definition to state claims against.
-/

/-! ## A316230.P15748749760767316289

`A063834(n)-2*A358824(n)`
-/

namespace A316230.P15748749760767316289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 n - 2 * A358824 n

end

end A316230.P15748749760767316289

/-! ## A316230.P6918088710292238626

`A063834(n)+2*A358824(n)*A153881(n+1)`
-/

namespace A316230.P6918088710292238626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 n + 2 * A358824 n * A153881 (n + 1)

end

end A316230.P6918088710292238626

/-! ## A316230.P4819210539040075966

`A063834(n)-A005843(A358824(n))`
-/

namespace A316230.P4819210539040075966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 n - A005843 (A358824 n).toNat

end

end A316230.P4819210539040075966

/-!
# A316231: Expansion of Product_{k>=1} 1/(1 + q(k)*x^k), where q(k) = number of partitions of k into distinct parts (A000009).

The programs for A316231, there is no canonical definition to state claims against.
-/

/-! ## A316231.P8546374665164567659

`A270995(n)-2*A358823(n)`
-/

namespace A316231.P8546374665164567659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270995 n - 2 * A358823 n

end

end A316231.P8546374665164567659

/-! ## A316231.P3395052643150536189

`A270995(n)+A001489(2*A358823(n))`
-/

namespace A316231.P3395052643150536189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270995 n + A001489 (2 * A358823 n).toNat

end

end A316231.P3395052643150536189

/-!
# A316233: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316233, there is no canonical definition to state claims against.
-/

/-! ## A316233.P351118450111945050

`A316239(∑[4*n]+1)`
-/

namespace A316233.P351118450111945050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316233.P351118450111945050

/-! ## A316233.P10402654207468677753

`A316239(A001844(n))+char[9]`
-/

namespace A316233.P10402654207468677753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316233.P10402654207468677753

/-! ## A316233.P16619373783506016706

`record[A003982(n)*A316239(n+1)]`
-/

namespace A316233.P16619373783506016706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316233.P16619373783506016706

/-! ## A316233.P4191715148642442541

`record[gcd(A003987(n), A316239(n+1))]`
-/

namespace A316233.P4191715148642442541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A316239 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316233.P4191715148642442541

/-! ## A316233.P7995640993211365038

`gcd(A102683(n), A316239(A001844(n)))`
-/

namespace A316233.P7995640993211365038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102683 n) (A316239 (A001844 n).toNat)

end

end A316233.P7995640993211365038

/-!
# A316234: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316234, there is no canonical definition to state claims against.
-/

/-! ## A316234.P9336882303352027151

`A316239(∑[n+2]+4)`
-/

namespace A316234.P9336882303352027151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316234.P9336882303352027151

/-! ## A316234.P5602712488895669056

`and(-1, A316239(A167614(n+1)))`
-/

namespace A316234.P5602712488895669056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316239 (A167614 (n + 1)).toNat)

end

end A316234.P5602712488895669056

/-! ## A316234.P11290286830784331303

`A316239(A167499(n)+n)+char[17]`
-/

namespace A316234.P11290286830784331303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316234.P11290286830784331303

/-! ## A316234.P13908772954864559830

`A316239(A167614(n+1))%A041354(n)`
-/

namespace A316234.P13908772954864559830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316239 (A167614 (n + 1)).toNat) (A041354 n)

end

end A316234.P13908772954864559830

/-! ## A316234.P2149754807310559825

`or(A000007(n), A316239(A167614(n+1)))`
-/

namespace A316234.P2149754807310559825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A316239 (A167614 (n + 1)).toNat)

end

end A316234.P2149754807310559825

/-!
# A316235: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316235, there is no canonical definition to state claims against.
-/

/-! ## A316235.P17284919158638832211

`A316239(∑[n+3]+7)`
-/

namespace A316235.P17284919158638832211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316235.P17284919158638832211

/-! ## A316235.P9041890342307736194

`record[gcd(A025581(n), A316239(n+5))]`
-/

namespace A316235.P9041890342307736194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A316239 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316235.P9041890342307736194

/-! ## A316235.P1050715137030004464

`gcd(n, n+1)*A316239(Δ[A008778(n)]+6)`
-/

namespace A316235.P1050715137030004464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A316239 (f1 (n + 1) - f1 n + 6).toNat

end

end A316235.P1050715137030004464

/-! ## A316235.P2144828711563780511

`A316239(A055999(n)+10)%A017441(n)`
-/

namespace A316235.P2144828711563780511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316239 (A055999 n + 10).toNat) (A017441 n)

end

end A316235.P2144828711563780511

/-! ## A316235.P11548819759325789688

`A033999(n)²*A316239(Δ[A008778(n)]+6)`
-/

namespace A316235.P11548819759325789688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A316239 (f1 (n + 1) - f1 n + 6).toNat

end

end A316235.P11548819759325789688

/-!
# A316236: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316236, there is no canonical definition to state claims against.
-/

/-! ## A316236.P3671805124963899815

`A316239(∑[n+4]+11)`
-/

namespace A316236.P3671805124963899815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A316236.P3671805124963899815

/-! ## A316236.P5070272334936591667

`A316239(A374005(n+1))+A185044(n)`
-/

namespace A316236.P5070272334936591667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A374005 (n + 1)).toNat + A185044 n

end

end A316236.P5070272334936591667

/-! ## A316236.P10039336988165627560

`A172098(n)*A316239(A374005(n+1))`
-/

namespace A316236.P10039336988165627560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172098 n * A316239 (A374005 (n + 1)).toNat

end

end A316236.P10039336988165627560

/-! ## A316236.P5168017844210416751

`A316239(A374005(n+1))+A079208(2*n+1)`
-/

namespace A316236.P5168017844210416751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A374005 (n + 1)).toNat + A079208 (2 * n + 1)

end

end A316236.P5168017844210416751

/-! ## A316236.P6985714028122352454

`A316239(A000217(n+5)-4)%A316237(n+1)`
-/

namespace A316236.P6985714028122352454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316239 (A000217 (n + 5) - 4).toNat) (A316237 (n + 1))

end

end A316236.P6985714028122352454

/-!
# A316237: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316237, there is no canonical definition to state claims against.
-/

/-! ## A316237.P17216180540011908204

`A316239(A374007(n+1))`
-/

namespace A316237.P17216180540011908204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A374007 (n + 1)).toNat

end

end A316237.P17216180540011908204

/-! ## A316237.P7516316797784365040

`A316239(A166136(n+4))`
-/

namespace A316237.P7516316797784365040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A166136 (n + 4)).toNat

end

end A316237.P7516316797784365040

/-! ## A316237.P1195186908591160004

`A316239(A056115(n)+21)`
-/

namespace A316237.P1195186908591160004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A056115 n + 21).toNat

end

end A316237.P1195186908591160004

/-! ## A316237.P8793573200919450875

`A316239(Δ[A264443(n)]+10)`
-/

namespace A316237.P8793573200919450875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (f1 (n + 1) - f1 n + 10).toNat

end

end A316237.P8793573200919450875

/-! ## A316237.P17276923905840112927

`A316239(A167499(n+4)+1)`
-/

namespace A316237.P17276923905840112927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A167499 (n + 4) + 1).toNat

end

end A316237.P17276923905840112927

/-!
# A316238: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316238, there is no canonical definition to state claims against.
-/

/-! ## A316238.P12509307604060372386

`A316239(A374008(n+1))`
-/

namespace A316238.P12509307604060372386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A374008 (n + 1)).toNat

end

end A316238.P12509307604060372386

/-! ## A316238.P6796350264944466533

`A316239(A167487(n+5))`
-/

namespace A316238.P6796350264944466533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A167487 (n + 5)).toNat

end

end A316238.P6796350264944466533

/-! ## A316238.P9407610936718953037

`A316239(A056119(n)+28)`
-/

namespace A316238.P9407610936718953037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A056119 n + 28).toNat

end

end A316238.P9407610936718953037

/-! ## A316238.P15886243234435905776

`A316239(eq[11, A066657(n)])`
-/

namespace A316238.P15886243234435905776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316238.P15886243234435905776

/-! ## A316238.P14111365324936012999

`A316239(A166136(n+5)+1)`
-/

namespace A316238.P14111365324936012999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (A166136 (n + 5) + 1).toNat

end

end A316238.P14111365324936012999

/-!
# A316239: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316239, there is no canonical definition to state claims against.
-/

/-! ## A316239.P16941476736583305443

`A317160(n+1)-A309785(A299321(n+1))`
-/

namespace A316239.P16941476736583305443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (n + 1) - A309785 (A299321 (n + 1)).toNat

end

end A316239.P16941476736583305443

/-! ## A316239.P10825934134358655963

`A317160(n+1)-A004198(A185044(n))`
-/

namespace A316239.P10825934134358655963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (n + 1) - A004198 (A185044 n).toNat

end

end A316239.P10825934134358655963

/-! ## A316239.P18160292938004352830

`A317160(n+1)-A230533(A159623(n))`
-/

namespace A316239.P18160292938004352830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (n + 1) - A230533 (A159623 n).toNat

end

end A316239.P18160292938004352830

/-! ## A316239.P17578053901036879571

`A317160(n+1)-A309785(A331562(n))`
-/

namespace A316239.P17578053901036879571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (n + 1) - A309785 (A331562 n).toNat

end

end A316239.P17578053901036879571

/-! ## A316239.P5001653035970594235

`A317160(n+1)-A079208(A230533(n+1))`
-/

namespace A316239.P5001653035970594235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (n + 1) - A079208 (A230533 (n + 1)).toNat

end

end A316239.P5001653035970594235

/-!
# A316240: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316240, there is no canonical definition to state claims against.
-/

/-! ## A316240.P15396112782581296011

`A316244(∑[4*n]+1)`
-/

namespace A316240.P15396112782581296011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316240.P15396112782581296011

/-! ## A316240.P7274721292257886003

`record[A203994(n+1)*A316244(n+1)]`
-/

namespace A316240.P7274721292257886003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A316244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316240.P7274721292257886003

/-! ## A316240.P2571842725781240713

`record[root(A316244(n+1), A316272(n+1))]`
-/

namespace A316240.P2571842725781240713
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316244 (n + 1) : ℝ) ^ (1 / (A316272 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316240.P2571842725781240713

/-! ## A316240.P18443016920901323982

`A008327(n)*A316244(A001844(n))`
-/

namespace A316240.P18443016920901323982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 n * A316244 (A001844 n).toNat

end

end A316240.P18443016920901323982

/-! ## A316240.P8080282160275319565

`A213217(n)*A316244(A001844(n))`
-/

namespace A316240.P8080282160275319565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n * A316244 (A001844 n).toNat

end

end A316240.P8080282160275319565

/-!
# A316241: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316241, there is no canonical definition to state claims against.
-/

/-! ## A316241.P8244367191571174048

`A316244(A374005(n+1))`
-/

namespace A316241.P8244367191571174048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A374005 (n + 1)).toNat

end

end A316241.P8244367191571174048

/-! ## A316241.P3633373244562827721

`A316244(A167499(n+3))`
-/

namespace A316241.P3633373244562827721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A167499 (n + 3)).toNat

end

end A316241.P3633373244562827721

/-! ## A316241.P4828567386670685834

`A316244(A155212(n)+13)`
-/

namespace A316241.P4828567386670685834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A155212 n + 13).toNat

end

end A316241.P4828567386670685834

/-! ## A316241.P7682197472195095238

`A316244(A056000(n)+15)`
-/

namespace A316241.P7682197472195095238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A056000 n + 15).toNat

end

end A316241.P7682197472195095238

/-! ## A316241.P1115303374546045189

`A316244(eq[7, A066657(n)])`
-/

namespace A316241.P1115303374546045189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316241.P1115303374546045189

/-!
# A316242: Number of n X 6 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316242, there is no canonical definition to state claims against.
-/

/-! ## A316242.P1548864084449166087

`A316244(A374007(n+1))`
-/

namespace A316242.P1548864084449166087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A374007 (n + 1)).toNat

end

end A316242.P1548864084449166087

/-! ## A316242.P10762044740409233185

`A316244(A056115(n)+21)`
-/

namespace A316242.P10762044740409233185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A056115 n + 21).toNat

end

end A316242.P10762044740409233185

/-! ## A316242.P11688879833954618334

`A316244(eq[7, A131818(n+1)])`
-/

namespace A316242.P11688879833954618334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316242.P11688879833954618334

/-! ## A316242.P14996080860197771648

`A316244(A056119(n)+16)`
-/

namespace A316242.P14996080860197771648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A056119 n + 16).toNat

end

end A316242.P14996080860197771648

/-! ## A316242.P7302836118507518200

`A316244(eq[3, A219347(n)])`
-/

namespace A316242.P7302836118507518200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316242.P7302836118507518200

/-!
# A316243: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316243, there is no canonical definition to state claims against.
-/

/-! ## A316243.P2826764820136286210

`A316244(A374008(n+1))`
-/

namespace A316243.P2826764820136286210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A374008 (n + 1)).toNat

end

end A316243.P2826764820136286210

/-! ## A316243.P7807231559380075421

`A316244(A056119(n)+28)`
-/

namespace A316243.P7807231559380075421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A056119 n + 28).toNat

end

end A316243.P7807231559380075421

/-! ## A316243.P16692606955916015109

`A316244(eq[11, A066657(n)])`
-/

namespace A316243.P16692606955916015109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316243.P16692606955916015109

/-! ## A316243.P11066553806973200267

`A316244(eq[8, A131818(n+1)])`
-/

namespace A316243.P11066553806973200267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316243.P11066553806973200267

/-! ## A316243.P1671241417173166365

`A316244(eq[4, A219347(n)])`
-/

namespace A316243.P1671241417173166365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316243.P1671241417173166365

/-!
# A316245: Number of ways to split an integer partition of n into consecutive subsequences with weakly decreasing sums.

The programs for A316245, there is no canonical definition to state claims against.
-/

/-! ## A316245.P12580759600603697136

`A289341(A064807(n+1)+A000607(3*n+1))`
-/

namespace A316245.P12580759600603697136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289341 (A064807 (n + 1) + A000607 (3 * n + 1)).toNat

end

end A316245.P12580759600603697136

/-!
# A316261: The number of ways to induce a single pinch on a compact 2-manifold with n handles. (Note: The manifold is embedded in Euclidean 2-space, and each pinch partitions it into at most two submanifolds.)

The programs for A316261, the canonical program `A316261.P8405252330229681363` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316261 has offset 0).

The definition of A316261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316261.P14061751588773026105

`comp[2*(n+1)]+∑[∑[char[2*n]]²]`
-/

namespace A316261.P14061751588773026105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A316261.P14061751588773026105

namespace A316261

/-- `comp[2*(n+1)]+∑[∑[char[2*n]]²]` -/
def P14061751588773026105.Spec : Prop :=
  ∀ n, (P14061751588773026105.a n : ℤ) = A316261 n

end A316261

/-! ## A316261.P8405252330229681363

`record[A005993(C(n+2, 2)%(n+1))+n]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A316261

/-- `record[A005993(C(n+2, 2)%(n+1))+n]` -/
def P8405252330229681363.Spec : Prop :=
  ∀ n, P8405252330229681363.a n = A316261 n

theorem P8405252330229681363.correct : P8405252330229681363.Spec := by
  intro n
  simp only [A316261]

end A316261

/-! ## A316261.P11078488881241255700

`round(sqrt((n-1+A005993(n)+n)²+1))`
-/

namespace A316261.P11078488881241255700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n : ℤ) - 1 + (A005993 n + (n : ℤ))) ^ 2 + 1 : ℝ))

end

end A316261.P11078488881241255700

namespace A316261

/-- `round(sqrt((n-1+A005993(n)+n)²+1))` -/
def P11078488881241255700.Spec : Prop :=
  ∀ n, P11078488881241255700.a n = A316261 n

end A316261

/-! ## A316261.P5192974617535088947

`record[A005993(A071239(n)%(n+1))+n]`
-/

namespace A316261.P5192974617535088947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (Int.tmod (A071239 n) (n + 1 : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316261.P5192974617535088947

namespace A316261

/-- `record[A005993(A071239(n)%(n+1))+n]` -/
def P5192974617535088947.Spec : Prop :=
  ∀ n, P5192974617535088947.a n = A316261 n

end A316261

/-! ## A316261.P10947625855488297615

`∑[∑[(n+1)%(2^a(n-2))]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A316261.P10947625855488297615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  (n + 1) % 2 ^ f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316261.P10947625855488297615

namespace A316261

/-- `∑[∑[(n+1)%(2^a(n-2))]]` -/
def P10947625855488297615.Spec : Prop :=
  ∀ n, (P10947625855488297615.a n : ℤ) = A316261 n

end A316261

/-! ## A316261.P4533215504041602153

`A000027(A005993(n)+A004273(n))`
-/

namespace A316261.P4533215504041602153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005993 n + A004273 n).toNat

end

end A316261.P4533215504041602153

namespace A316261

/-- `A000027(A005993(n)+A004273(n))` -/
def P4533215504041602153.Spec : Prop :=
  ∀ n, P4533215504041602153.a n = A316261 n

end A316261

/-! ## A316261.P15979966588227759415

`∑[A261923(A000695(n))+A008619(n)²]`
-/

namespace A316261.P15979966588227759415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261923 (A000695 n).toNat + A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316261.P15979966588227759415

namespace A316261

/-- `∑[A261923(A000695(n))+A008619(n)²]` -/
def P15979966588227759415.Spec : Prop :=
  ∀ n, P15979966588227759415.a n = A316261 n

end A316261

/-!
# A316262: Numbers k such that gcd(k, floor(phi*k)) > 1, where phi is the golden ratio.

The programs for A316262, there is no canonical definition to state claims against.
-/

/-! ## A316262.P15801322225639536549

`lt[1, gcd(n, floor(ϕ*n))]`
-/

namespace A316262.P15801322225639536549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316262.P15801322225639536549

/-! ## A316262.P7939647553768290007

`lt[1, gcd(n, A276855(n))²]`
-/

namespace A316262.P7939647553768290007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276855 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316262.P7939647553768290007

/-! ## A316262.P3147978480284436428

`lt[lcm(n, floor(ϕ*n)), A000326(n)]`
-/

namespace A316262.P3147978480284436428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌊Real.goldenRatio * (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316262.P3147978480284436428

/-! ## A316262.P17568853021976594360

`lt[1, A003989(∑[1-A005614(n)+n]+1)]+2`
-/

namespace A316262.P17568853021976594360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005614 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (∑ j ∈ Finset.range (n + 1), f3 j + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A316262.P17568853021976594360

/-!
# A316264: FDH numbers of strict integer partitions with odd length and all odd parts.

The programs for A316264, there is no canonical definition to state claims against.
-/

/-! ## A316264.P17314484057618801708

`filter[A316094(n+2), A122895(#)]`
-/

namespace A316264.P17314484057618801708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316094 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A316264.P17314484057618801708

/-! ## A316264.P7484182390174267185

`∩[A026420(n+1), A316094(n+1)]`
-/

namespace A316264.P7484182390174267185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316264.P7484182390174267185

/-! ## A316264.P11574935037594427064

`∩[A000028(n+1), A316094(n+1)]`
-/

namespace A316264.P11574935037594427064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316264.P11574935037594427064

/-! ## A316264.P16959123178972155892

`A050376(2*n+1)-A241273(A137560(2*(n+2)))`
-/

namespace A316264.P16959123178972155892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (2 * n + 1) - A241273 (A137560 (2 * (n + 2))).toNat

end

end A316264.P16959123178972155892

/-! ## A316264.P11506756465337245108

`A050376(Δ[n²]^gcd(11, n))`
-/

namespace A316264.P11506756465337245108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ Nat.gcd 11 n).toNat

end

end A316264.P11506756465337245108

/-!
# A316266: FDH numbers of strict integer partitions with prime parts and prime length.

The programs for A316266, there is no canonical definition to state claims against.
-/

/-! ## A316266.P5359072133874563408

`filter[A316265(n+1), A143731(#)]`
-/

namespace A316266.P5359072133874563408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A316266.P5359072133874563408

/-! ## A316266.P3550667300282481498

`∩[A156683(n+1), A316265(n+1)]`
-/

namespace A316266.P3550667300282481498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316266.P3550667300282481498

/-! ## A316266.P17994493390686341114

`∩[A316265(n+1), A363863(n+1)]`
-/

namespace A316266.P17994493390686341114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316266.P17994493390686341114

/-! ## A316266.P7821066255428145091

`∩[A033949(n+1), A316265(n+1)]`
-/

namespace A316266.P7821066255428145091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316266.P7821066255428145091

/-! ## A316266.P15099312222995490612

`∩[A175594(n+1), A316265(n+1)]`
-/

namespace A316266.P15099312222995490612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316266.P15099312222995490612

/-!
# A316267: FDH numbers of strict integer partitions of prime numbers with a prime number of prime parts.

The programs for A316267, there is no canonical definition to state claims against.
-/

/-! ## A316267.P15360747002520820122

`A002828(A001791(n+3))*A050376(A089440(n+1))`
-/

namespace A316267.P15360747002520820122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A001791 (n + 3)).toNat * A050376 (A089440 (n + 1)).toNat

end

end A316267.P15360747002520820122

/-!
# A316268: FDH numbers of connected strict integer partitions.

The programs for A316268, there is no canonical definition to state claims against.
-/

/-! ## A316268.P383459897529274142

`eq[1, A305079(A160102(n+1))]+1`
-/

namespace A316268.P383459897529274142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A160102 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316268.P383459897529274142

/-! ## A316268.P18107825053379476067

`eq[1, A305831(n+1)]+1`
-/

namespace A316268.P18107825053379476067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316268.P18107825053379476067

/-! ## A316268.P13664921824958507433

`record[(n+2)/A305831(n+2)]`
-/

namespace A316268.P13664921824958507433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A305831 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316268.P13664921824958507433

/-! ## A316268.P10710568060350431909

`eq[1, A305831(A028310(n))]`
-/

namespace A316268.P10710568060350431909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316268.P10710568060350431909

/-! ## A316268.P17951895676885486209

`A020725(eq[1, A305831(n+1)])`
-/

namespace A316268.P17951895676885486209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316268.P17951895676885486209

/-!
# A316269: Array T(n,k) = n*T(n,k-1) - T(n,k-2) read by upward antidiagonals, with T(n,0) = 0, T(n,1) = 1, n >= 2.

The programs for A316269, there is no canonical definition to state claims against.
-/

/-! ## A316269.P15020854272390155364

`A191971(n)*A192062(n)`
-/

namespace A316269.P15020854272390155364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191971 n * A192062 n

end

end A316269.P15020854272390155364

/-! ## A316269.P17792043136222904366

`A179943(n)-A094954(n+1)`
-/

namespace A316269.P17792043136222904366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 n - A094954 (n + 1)

end

end A316269.P17792043136222904366

/-! ## A316269.P13246254839299121794

`A288002(A360965(n+1))`
-/

namespace A316269.P13246254839299121794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (A360965 (n + 1)).toNat

end

end A316269.P13246254839299121794

/-! ## A316269.P4324511400756834580

`A002487(A360965(n+1)-1)`
-/

namespace A316269.P4324511400756834580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A360965 (n + 1) - 1).toNat

end

end A316269.P4324511400756834580

/-! ## A316269.P13979690556969777727

`A351831(A326323(n)+A002262(n))`
-/

namespace A316269.P13979690556969777727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A326323 n + A002262 n).toNat

end

end A316269.P13979690556969777727

/-!
# A316270: Number of tricolorable prime knots with n minimal crossings.

The programs for A316270, there is no canonical definition to state claims against.
-/

/-! ## A316270.P9618514114203924976

`A085859(xor(A047363(n+1), A110132(n)))`
-/

namespace A316270.P9618514114203924976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 (Int.xor (A047363 (n + 1)) (A110132 n)).toNat

end

end A316270.P9618514114203924976

/-!
# A316271: FDH numbers of strict non-knapsack partitions.

The programs for A316271, there is no canonical definition to state claims against.
-/

/-! ## A316271.P15762987799045247922

`A334801(A004112(n+2))`
-/

namespace A316271.P15762987799045247922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334801 (A004112 (n + 2)).toNat

end

end A316271.P15762987799045247922

/-!
# A316272: A fractal-like sequence: erasing all pairs of consecutive terms that include a prime and a composite number (in any order) leaves the sequence unchanged.

The programs for A316272, there is no canonical definition to state claims against.
-/

/-! ## A316272.P3024077072028453439

`A073846(A304337(n+1))`
-/

namespace A316272.P3024077072028453439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A304337 (n + 1)).toNat

end

end A316272.P3024077072028453439

/-! ## A316272.P8142212949842327255

`A073898(A304337(n+1))+A000038(A016116(n))`
-/

namespace A316272.P8142212949842327255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (A304337 (n + 1)).toNat + A000038 (A016116 n).toNat

end

end A316272.P8142212949842327255

/-! ## A316272.P5079985605853990515

`A000120(A262616(n))*A073898(A304337(n+1))`
-/

namespace A316272.P5079985605853990515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A262616 n).toNat * A073898 (A304337 (n + 1)).toNat

end

end A316272.P5079985605853990515

/-! ## A316272.P968240779977590062

`A073898(A304337(n+1)%A373331(n+5))`
-/

namespace A316272.P968240779977590062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (Int.tmod (A304337 (n + 1)) (A373331 (n + 5))).toNat

end

end A316272.P968240779977590062

/-!
# A316273: Triangle T(n,k), 1 <= k <= n, read by rows: T(n,1) = A239605(n); T(n,k) = Sum_{i=1..k-1} (T(n-i,k-1) - T(n-i,k)).

The programs for A316273, there is no canonical definition to state claims against.
-/

/-! ## A316273.P14216704703279365952

`A001222(A115981(A106356(n+1)+5))`
-/

namespace A316273.P14216704703279365952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A115981 (A106356 (n + 1) + 5).toNat).toNat

end

end A316273.P14216704703279365952

/-! ## A316273.P14726611351375887462

`A152595(A119502(n))+A000120(A168019(n))`
-/

namespace A316273.P14726611351375887462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152595 (A119502 n).toNat + A000120 (A168019 n).toNat

end

end A316273.P14726611351375887462

/-! ## A316273.P13977950763461916633

`A000120(A000108(A207031(n+1))*A182703(n+1))`
-/

namespace A316273.P13977950763461916633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000108 (A207031 (n + 1)).toNat * A182703 (n + 1)).toNat

end

end A316273.P13977950763461916633

/-!
# A316274: Nonzero terms in row sums of the lower triangular part of a square matrix formed by Dirichlet convolution of adjacent columns in the square matrix A191898.

The programs for A316274, there is no canonical definition to state claims against.
-/

/-! ## A316274.P15658216226152486168

`∏{e}[A001694(n+1), 1-#]*A001694(n+1)`
-/

namespace A316274.P15658216226152486168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (Nat.factorization (f1 n).natAbs p : ℤ))) * A001694 (n + 1)

end

end A316274.P15658216226152486168

/-! ## A316274.P4588437743221297698

`A157985(n+1)*A160696(A279335(n))`
-/

namespace A316274.P4588437743221297698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1) * A160696 (A279335 n).toNat

end

end A316274.P4588437743221297698

/-!
# A316275: Lucas analog to A101361.

The programs for A316275, the canonical program `A316275.P1685632628560373697` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316275 has offset 0).

The definition of A316275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316275.P1685632628560373697

`A000032(2*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A316275

/-- `A000032(2*A000045(n))` -/
def P1685632628560373697.Spec : Prop :=
  ∀ n, P1685632628560373697.a n = A316275 n

theorem P1685632628560373697.correct : P1685632628560373697.Spec := by
  intro n
  simp only [A316275]

end A316275

/-! ## A316275.P18269433944238415228

`a(n-1)*a(n-2)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A316275.P18269433944238415228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  a (n - 1) * a (n - 2) - a (n - 3)

end

end A316275.P18269433944238415228

namespace A316275

/-- `a(n-1)*a(n-2)-a(n-3)` -/
def P18269433944238415228.Spec : Prop :=
  ∀ n, P18269433944238415228.a n = A316275 n

end A316275

/-! ## A316275.P15767941319391911303

`A000032(8*round(ϕ^n/sqrt(5))/4)`
-/

namespace A316275.P15767941319391911303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((8 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℚ) / 4)).toNat

end

end A316275.P15767941319391911303

namespace A316275

/-- `A000032(8*round(ϕ^n/sqrt(5))/4)` -/
def P15767941319391911303.Spec : Prop :=
  ∀ n, P15767941319391911303.a n = A316275 n

end A316275

/-! ## A316275.P860885158570043523

`A005248(2-(∑[a(n-1)-(1-a(n-2))]-n))` with `a(0)=2, a(1)=0`
-/

namespace A316275.P860885158570043523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (2 - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))).toNat

end

end A316275.P860885158570043523

namespace A316275

/-- `A005248(2-(∑[a(n-1)-(1-a(n-2))]-n))` -/
def P860885158570043523.Spec : Prop :=
  ∀ n, P860885158570043523.a n = A316275 n

end A316275

/-! ## A316275.P15196259427104276396

`A005248(A000045(n))`
-/

namespace A316275.P15196259427104276396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (A000045 n).toNat

end

end A316275.P15196259427104276396

namespace A316275

/-- `A005248(A000045(n))` -/
def P15196259427104276396.Spec : Prop :=
  ∀ n, P15196259427104276396.a n = A316275 n

end A316275

/-!
# A316276: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316276, there is no canonical definition to state claims against.
-/

/-! ## A316276.P13739848409504573091

`A316282(∑[4*n]+1)`
-/

namespace A316276.P13739848409504573091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316276.P13739848409504573091

/-! ## A316276.P15349789089750285798

`A316282(A001844(n))+A025465(n)`
-/

namespace A316276.P15349789089750285798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A001844 n).toNat + A025465 n

end

end A316276.P15349789089750285798

/-! ## A316276.P9516123298544250576

`A316282(A001844(n))+A036598(n)`
-/

namespace A316276.P9516123298544250576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A001844 n).toNat + A036598 n

end

end A316276.P9516123298544250576

/-! ## A316276.P16037387611922028261

`A014698(n)*A316282(A001844(n))`
-/

namespace A316276.P16037387611922028261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014698 n * A316282 (A001844 n).toNat

end

end A316276.P16037387611922028261

/-! ## A316276.P11545809302749099858

`A000041(and(1, n)^n)*A316282(A001844(n))`
-/

namespace A316276.P11545809302749099858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.land 1 n ^ n) * A316282 (A001844 n).toNat

end

end A316276.P11545809302749099858

/-!
# A316277: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316277, there is no canonical definition to state claims against.
-/

/-! ## A316277.P2664745198570724631

`A316282(∑[n+2]+4)`
-/

namespace A316277.P2664745198570724631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316277.P2664745198570724631

/-! ## A316277.P13209910672908503333

`A316282(A167614(n+1))^A178489(n)`
-/

namespace A316277.P13209910672908503333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316282 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A316277.P13209910672908503333

/-! ## A316277.P6083751063388934269

`A316282(A167614(n+1))%A169963(n)`
-/

namespace A316277.P6083751063388934269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316282 (A167614 (n + 1)).toNat) (A169963 n)

end

end A316277.P6083751063388934269

/-! ## A316277.P211425758837549322

`gcd(A000038(n), A316282(A167614(n+1)))`
-/

namespace A316277.P211425758837549322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A316282 (A167614 (n + 1)).toNat)

end

end A316277.P211425758837549322

/-! ## A316277.P17315475882774155892

`lcm(A033999(n), A316282(A167614(n+1)))`
-/

namespace A316277.P17315475882774155892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A316282 (A167614 (n + 1)).toNat)

end

end A316277.P17315475882774155892

/-!
# A316278: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316278, there is no canonical definition to state claims against.
-/

/-! ## A316278.P3513340824419702307

`A316282(A374004(n+1))`
-/

namespace A316278.P3513340824419702307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A374004 (n + 1)).toNat

end

end A316278.P3513340824419702307

/-! ## A316278.P15731969967726307183

`A316282(A141214(n)+7)`
-/

namespace A316278.P15731969967726307183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A141214 n + 7).toNat

end

end A316278.P15731969967726307183

/-! ## A316278.P12377475519353239344

`A316282(A052905(n)+9)`
-/

namespace A316278.P12377475519353239344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A052905 n + 9).toNat

end

end A316278.P12377475519353239344

/-! ## A316278.P16847668335455339373

`A316282(A055999(n)+10)`
-/

namespace A316278.P16847668335455339373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A055999 n + 10).toNat

end

end A316278.P16847668335455339373

/-! ## A316278.P10974663567623754593

`A316282(A167614(n+2)+1)`
-/

namespace A316278.P10974663567623754593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A167614 (n + 2) + 1).toNat

end

end A316278.P10974663567623754593

/-!
# A316279: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316279, there is no canonical definition to state claims against.
-/

/-! ## A316279.P10501272959378254770

`A316282(A374005(n+1))`
-/

namespace A316279.P10501272959378254770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A374005 (n + 1)).toNat

end

end A316279.P10501272959378254770

/-! ## A316279.P7113248164012207891

`A316282(A167499(n+3))`
-/

namespace A316279.P7113248164012207891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A167499 (n + 3)).toNat

end

end A316279.P7113248164012207891

/-! ## A316279.P6624255739968632534

`A316282(eq[6, A131818(n+1)])`
-/

namespace A316279.P6624255739968632534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316279.P6624255739968632534

/-! ## A316279.P5012220530109576263

`A316282(eq[4, A193592(n)])`
-/

namespace A316279.P5012220530109576263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316279.P5012220530109576263

/-! ## A316279.P12102509389954727450

`A316282(Δ[A023545(n+1)])`
-/

namespace A316279.P12102509389954727450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (f1 (n + 1) - f1 n).toNat

end

end A316279.P12102509389954727450

/-!
# A316280: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316280, there is no canonical definition to state claims against.
-/

/-! ## A316280.P2664146741735372012

`A316282(A374007(n+1))`
-/

namespace A316280.P2664146741735372012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A374007 (n + 1)).toNat

end

end A316280.P2664146741735372012

/-! ## A316280.P9366729007866189316

`A316282(A155212(n+1)+14)`
-/

namespace A316280.P9366729007866189316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A155212 (n + 1) + 14).toNat

end

end A316280.P9366729007866189316

/-! ## A316280.P13976446169125318638

`A316282(eq[7, A131818(n+1)])`
-/

namespace A316280.P13976446169125318638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316280.P13976446169125318638

/-! ## A316280.P3821963023281108084

`A316282(A052905(n+3))`
-/

namespace A316280.P3821963023281108084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A052905 (n + 3)).toNat

end

end A316280.P3821963023281108084

/-! ## A316280.P15411710934904013555

`A316282(A056119(n)+16)`
-/

namespace A316280.P15411710934904013555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A056119 n + 16).toNat

end

end A316280.P15411710934904013555

/-!
# A316281: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316281, there is no canonical definition to state claims against.
-/

/-! ## A316281.P3926038854014324982

`A316282(A374008(n+1))`
-/

namespace A316281.P3926038854014324982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A374008 (n + 1)).toNat

end

end A316281.P3926038854014324982

/-! ## A316281.P3554377608273869157

`A316282(A056119(n)+28)`
-/

namespace A316281.P3554377608273869157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (A056119 n + 28).toNat

end

end A316281.P3554377608273869157

/-! ## A316281.P9570907251482983791

`A316282(eq[8, A131818(n+1)])`
-/

namespace A316281.P9570907251482983791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316281.P9570907251482983791

/-! ## A316281.P122524129097114354

`A316282(eq[4, A219347(n)])`
-/

namespace A316281.P122524129097114354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316281.P122524129097114354

/-! ## A316281.P2805533742393225528

`A316282(eq[6, A193592(n)])`
-/

namespace A316281.P2805533742393225528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316281.P2805533742393225528

/-!
# A316282: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316282, there is no canonical definition to state claims against.
-/

/-! ## A316282.P18206126847807891263

`A304427(n+1)+A010894(A003401(n+1))`
-/

namespace A316282.P18206126847807891263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (n + 1) + A010894 ((A003401 (n + 1)).toNat + 21)

end

end A316282.P18206126847807891263

/-! ## A316282.P16385032518481966780

`A304427(n+1)+A011737(A022171(n))`
-/

namespace A316282.P16385032518481966780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (n + 1) + A011737 (A022171 n).toNat

end

end A316282.P16385032518481966780

/-! ## A316282.P16482383022125682190

`A304427(n+1)+A025465(A022345(n))`
-/

namespace A316282.P16482383022125682190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (n + 1) + A025465 (A022345 n).toNat

end

end A316282.P16482383022125682190

/-! ## A316282.P1105313193052683905

`A304427(n+1)+A025465(A023105(n))`
-/

namespace A316282.P1105313193052683905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (n + 1) + A025465 (A023105 n).toNat

end

end A316282.P1105313193052683905

/-! ## A316282.P15045626398019084796

`A304427(n+1)+A055641(A002843(n))`
-/

namespace A316282.P15045626398019084796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (n + 1) + A055641 (A002843 n).toNat

end

end A316282.P15045626398019084796

/-!
# A316283: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316283, there is no canonical definition to state claims against.
-/

/-! ## A316283.P3354453308443315559

`A316289(∑[4*n]+1)`
-/

namespace A316283.P3354453308443315559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316283.P3354453308443315559

/-! ## A316283.P7649430604692552668

`record[A316289(A152271(n²))]`
-/

namespace A316283.P7649430604692552668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316283.P7649430604692552668

/-! ## A316283.P4683558309717805933

`record[A316289(A330613(n+1))]`
-/

namespace A316283.P4683558309717805933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316283.P4683558309717805933

/-! ## A316283.P4378652919403416904

`A316289(A001844(n))+char[10]`
-/

namespace A316283.P4378652919403416904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316283.P4378652919403416904

/-! ## A316283.P17076522643042334052

`record[A003982(n)*A316289(n+1)]`
-/

namespace A316283.P17076522643042334052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316283.P17076522643042334052

/-!
# A316284: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316284, there is no canonical definition to state claims against.
-/

/-! ## A316284.P832377596257163338

`A316289(∑[n+2]+4)`
-/

namespace A316284.P832377596257163338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316284.P832377596257163338

/-! ## A316284.P14727476755244759694

`A316289(A167614(n+1))+char[19]`
-/

namespace A316284.P14727476755244759694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316284.P14727476755244759694

/-! ## A316284.P15222586104031496881

`record[A023531(n)*A316289(n+4)]`
-/

namespace A316284.P15222586104031496881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A316289 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316284.P15222586104031496881

/-! ## A316284.P16838932378021352296

`or(char[1], A316289(A000217(n+2)+3))`
-/

namespace A316284.P16838932378021352296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A316289 (A000217 (n + 2) + 3).toNat)

end

end A316284.P16838932378021352296

/-! ## A316284.P15652968035617440407

`record[A000203(8*n+9)%2*A316289(n+4)]`
-/

namespace A316284.P15652968035617440407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (8 * n + 9)) 2 * A316289 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316284.P15652968035617440407

/-!
# A316285: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316285, there is no canonical definition to state claims against.
-/

/-! ## A316285.P9389788963468837959

`A316289(∑[n+3]+7)`
-/

namespace A316285.P9389788963468837959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316285.P9389788963468837959

/-! ## A316285.P13149328354725651650

`A316289(A055999(n)+10)+char[19]`
-/

namespace A316285.P13149328354725651650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316285.P13149328354725651650

/-! ## A316285.P9285368120082074604

`record[A316289(n+5)/A111418(n)]`
-/

namespace A316285.P9285368120082074604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316289 (n + 5) : ℚ) / (A111418 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316285.P9285368120082074604

/-! ## A316285.P9715389581890793735

`A316289(A034856(n+2)+6)+char[19]`
-/

namespace A316285.P9715389581890793735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A034856 (n + 2) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316285.P9715389581890793735

/-! ## A316285.P14790170306555308552

`A316289(A055999(n)+10)%A000108(n+6)`
-/

namespace A316285.P14790170306555308552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316289 (A055999 n + 10).toNat) (A000108 (n + 6))

end

end A316285.P14790170306555308552

/-!
# A316286: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316286, there is no canonical definition to state claims against.
-/

/-! ## A316286.P1260755144706239709

`A316289(∑[n+4]+11)`
-/

namespace A316286.P1260755144706239709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A316286.P1260755144706239709

/-! ## A316286.P11412608015879505384

`A316289(A374005(n+1))+A070097(n+1)`
-/

namespace A316286.P11412608015879505384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A374005 (n + 1)).toNat + A070097 (n + 1)

end

end A316286.P11412608015879505384

/-! ## A316286.P9402131315465724925

`A326291(n+1)+A316289(A374005(n+1))`
-/

namespace A316286.P9402131315465724925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A316289 (A374005 (n + 1)).toNat

end

end A316286.P9402131315465724925

/-! ## A316286.P9793569483322419001

`A316289(A374005(n+1))%A101370(n+4)`
-/

namespace A316286.P9793569483322419001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316289 (A374005 (n + 1)).toNat) (A101370 (n + 4))

end

end A316286.P9793569483322419001

/-! ## A316286.P4302974241921507547

`A359160(2*(n+2))+A316289(A374005(n+1))`
-/

namespace A316286.P4302974241921507547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359160 (2 * (n + 2)) + A316289 (A374005 (n + 1)).toNat

end

end A316286.P4302974241921507547

/-!
# A316287: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316287, there is no canonical definition to state claims against.
-/

/-! ## A316287.P4649997615396461760

`A316289(∑[n+5]+16)`
-/

namespace A316287.P4649997615396461760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A316287.P4649997615396461760

/-! ## A316287.P7611575113854304887

`A038500(3*n+1)*A316289(A052905(n+3))`
-/

namespace A316287.P7611575113854304887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (3 * n + 1) * A316289 (A052905 (n + 3)).toNat

end

end A316287.P7611575113854304887

/-!
# A316288: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316288, there is no canonical definition to state claims against.
-/

/-! ## A316288.P1415014278392423686

`A316289(A374008(n+1))`
-/

namespace A316288.P1415014278392423686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A374008 (n + 1)).toNat

end

end A316288.P1415014278392423686

/-! ## A316288.P14300337131820486185

`A316289(A167487(n+5))`
-/

namespace A316288.P14300337131820486185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A167487 (n + 5)).toNat

end

end A316288.P14300337131820486185

/-! ## A316288.P17487683019233656906

`A316289(A056119(n)+28)`
-/

namespace A316288.P17487683019233656906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A056119 n + 28).toNat

end

end A316288.P17487683019233656906

/-! ## A316288.P9438059479819404568

`A316289(eq[11, A066657(n)])`
-/

namespace A316288.P9438059479819404568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316288.P9438059479819404568

/-! ## A316288.P2513389016332344529

`A316289(A166136(n+5)+1)`
-/

namespace A316288.P2513389016332344529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (A166136 (n + 5) + 1).toNat

end

end A316288.P2513389016332344529

/-!
# A316289: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316289, there is no canonical definition to state claims against.
-/

/-! ## A316289.P14949657400377205821

`A304472(n+1)+A186745(A306100(n))`
-/

namespace A316289.P14949657400377205821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (n + 1) + A186745 (A306100 n).toNat

end

end A316289.P14949657400377205821

/-! ## A316289.P13642015977241535438

`A304472(n+1)+A011737(A022171(n))`
-/

namespace A316289.P13642015977241535438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (n + 1) + A011737 (A022171 n).toNat

end

end A316289.P13642015977241535438

/-! ## A316289.P4512262405065345741

`A304472(n+1)+A025465(A023105(n))`
-/

namespace A316289.P4512262405065345741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (n + 1) + A025465 (A023105 n).toNat

end

end A316289.P4512262405065345741

/-! ## A316289.P6358824054193468847

`A304472(n+1)+A014707(A036426(n))`
-/

namespace A316289.P6358824054193468847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (n + 1) + A014707 (A036426 n).toNat

end

end A316289.P6358824054193468847

/-! ## A316289.P3871701844856008044

`A304472(n+1)+A037824(A022173(n))`
-/

namespace A316289.P3871701844856008044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (n + 1) + A037824 (A022173 n).toNat

end

end A316289.P3871701844856008044

/-!
# A316290: a(n) is the number of ways of writing prime(n) as the sum of a prime number and a number that has only prime factors 2 and/or 5.

The programs for A316290, there is no canonical definition to state claims against.
-/

/-! ## A316290.P7005698106875998509

`A008616(A133181(n+1))+A001222(A000040(n+2)-2)`
-/

namespace A316290.P7005698106875998509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A133181 (n + 1)).toNat + A001222 (A000040 (n + 2) - 2).toNat

end

end A316290.P7005698106875998509

/-! ## A316290.P1781375775044637294

`A001221(ceil(Δ[n²/5])*A289931(n))`
-/

namespace A316290.P1781375775044637294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (⌈f1 (n + 1) - f1 n⌉ * A289931 n).toNat

end

end A316290.P1781375775044637294

/-! ## A316290.P323551669980312151

`A001221(A268238(n)+A163129(n))`
-/

namespace A316290.P323551669980312151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A268238 n + A163129 n).toNat

end

end A316290.P323551669980312151

/-! ## A316290.P2933438988807635237

`A001221(A343609(n)+A163129(n))`
-/

namespace A316290.P2933438988807635237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A343609 n + A163129 n).toNat

end

end A316290.P2933438988807635237

/-! ## A316290.P14414417536272503281

`A001221(A163129(n)/A227543(n))`
-/

namespace A316290.P14414417536272503281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A163129 n : ℚ) / (A227543 n : ℚ))).toNat

end

end A316290.P14414417536272503281

/-!
# A316293: Number T(n,k) of permutations p of [n] such that k is the maximum of the partial sums of the signed up-down jump sequence of 0,p; triangle T(n,k), k>=0, k<=n<=k*(k+1)/2, read by columns.

The programs for A316293, there is no canonical definition to state claims against.
-/

/-! ## A316293.P16823740235855533135

`A271775(A000638(n)*A282062(n))`
-/

namespace A316293.P16823740235855533135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271775 (A000638 n * A282062 n).toNat

end

end A316293.P16823740235855533135

/-!
# A316294: Total number of permutations p of [k] such that n is the maximum of the partial sums of the signed up-down jump sequence of 0,p summed over all k >= 0.

The programs for A316294, there is no canonical definition to state claims against.
-/

/-! ## A316294.P18140720997476309984

`A127238(n^(n+1))`
-/

namespace A316294.P18140720997476309984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127238 (n ^ (n + 1))

end

end A316294.P18140720997476309984

/-!
# A316296: a(n) = Sum_{k=1..n} f(k, n), where f(i, j) is the number of multiples of i greater than j and less than 2*j.

The programs for A316296, there is no canonical definition to state claims against.
-/

/-! ## A316296.P11809341270705265309

`A099056(n)-∑[∑{d}[n+1, ceil(2/#)]]`
-/

namespace A316296.P11809341270705265309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈2 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099056 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316296.P11809341270705265309

/-! ## A316296.P10268354028896681258

`A006591(n+1)-∑{d}[n+1, ceil(1/#)]`
-/

namespace A316296.P10268354028896681258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A316296.P10268354028896681258

/-! ## A316296.P10759086479432794301

`A060831(Δ[n²])-n-∏{e}[n+1, #+1]`
-/

namespace A316296.P10759086479432794301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A316296.P10759086479432794301

/-! ## A316296.P13205034402084348914

`∑[A092338(2*n+1)-∏{e}[n+1, #+1]]`
-/

namespace A316296.P13205034402084348914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (2 * n + 1) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316296.P13205034402084348914

/-! ## A316296.P6364116666182159939

`A006218(Δ[n²])-(∑[∏{e}[n+1, #+1]]+n)`
-/

namespace A316296.P6364116666182159939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℤ)

end

end A316296.P6364116666182159939

/-! ## A316296.P4346237075373367184

`A248517(2*n+1)+n+1-∑{d}[n+1, ceil(1/#)]`
-/

namespace A316296.P4346237075373367184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (2 * n + 1) + ((n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉)

end

end A316296.P4346237075373367184

/-! ## A316296.P3484201174939942539

`A099056(n)-A156745(n+1)`
-/

namespace A316296.P3484201174939942539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099056 n - A156745 (n + 1)

end

end A316296.P3484201174939942539

/-! ## A316296.P18368295884968078635

`A006591(n+1)-Δ[A054519(n)]`
-/

namespace A316296.P18368295884968078635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 1) - (f1 (n + 1) - f1 n)

end

end A316296.P18368295884968078635

/-! ## A316296.P15973743277298996550

`A234306(n+1)+A077025(n+1)`
-/

namespace A316296.P15973743277298996550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234306 (n + 1) + A077025 (n + 1)

end

end A316296.P15973743277298996550

/-! ## A316296.P310754784121179187

`A006591(n+1)-A000005(n+1)`
-/

namespace A316296.P310754784121179187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 1) - A000005 (n + 1)

end

end A316296.P310754784121179187

/-!
# A316297: a(n) = n! times the denominator of the n-th harmonic number H(n).

The programs for A316297, the canonical program `A316297.P7014725534120601013` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316297 has offset 1).

The definition of A316297 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002805, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A316297.P7014725534120601013

`A000142(n+1)*A002805(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A316297

/-- `A000142(n+1)*A002805(n+1)` -/
def P7014725534120601013.Spec : Prop :=
  ∀ n, P7014725534120601013.a n = A316297 (n + 1)

theorem P7014725534120601013.correct : P7014725534120601013.Spec := by
  intro n
  simp only [A316297, Nat.add_sub_cancel]

end A316297

/-! ## A316297.P17091702260929804772

`a(n-1)*A316346(n)` with `a(0)=1`
-/

namespace A316297.P17091702260929804772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A316346 n

end

end A316297.P17091702260929804772

namespace A316297

/-- `a(n-1)*A316346(n)` -/
def P17091702260929804772.Spec : Prop :=
  ∀ n, P17091702260929804772.a n = A316297 (n + 1)

end A316297

/-! ## A316297.P15075837526916129486

`Δ[A007489(n)]*A002805(n+1)`
-/

namespace A316297.P15075837526916129486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002805 (n + 1)

end

end A316297.P15075837526916129486

namespace A316297

/-- `Δ[A007489(n)]*A002805(n+1)` -/
def P15075837526916129486.Spec : Prop :=
  ∀ n, P15075837526916129486.a n = A316297 (n + 1)

end A316297

/-! ## A316297.P5711231682369668473

`A180170(n+1)/A110566(n+1)`
-/

namespace A316297.P5711231682369668473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180170 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A316297.P5711231682369668473

namespace A316297

/-- `A180170(n+1)/A110566(n+1)` -/
def P5711231682369668473.Spec : Prop :=
  ∀ n, P5711231682369668473.a n = (A316297 (n + 1) : ℚ)

end A316297

/-! ## A316297.P17169374559624846119

`A002805(n+1)²*A056612(n+1)`
-/

namespace A316297.P17169374559624846119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) ^ 2 * A056612 (n + 1)

end

end A316297.P17169374559624846119

namespace A316297

/-- `A002805(n+1)²*A056612(n+1)` -/
def P17169374559624846119.Spec : Prop :=
  ∀ n, P17169374559624846119.a n = A316297 (n + 1)

end A316297

/-! ## A316297.P13418445624531558360

`A000142(n+1)/A056612(n+1)*A000142(n+1)`
-/

namespace A316297.P13418445624531558360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A056612 (n + 1) : ℚ) * (A000142 (n + 1) : ℚ)

end

end A316297.P13418445624531558360

namespace A316297

/-- `A000142(n+1)/A056612(n+1)*A000142(n+1)` -/
def P13418445624531558360.Spec : Prop :=
  ∀ n, P13418445624531558360.a n = (A316297 (n + 1) : ℚ)

end A316297

/-!
# A316298: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316298, there is no canonical definition to state claims against.
-/

/-! ## A316298.P1754056423814968858

`A316304(∑[4*n]+1)`
-/

namespace A316298.P1754056423814968858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316298.P1754056423814968858

/-! ## A316298.P5441301837497338397

`record[A316304(Δ[A235355(n)])]`
-/

namespace A316298.P5441301837497338397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316298.P5441301837497338397

/-! ## A316298.P12976868382006266788

`and(-1, A316304(A001844(n)))`
-/

namespace A316298.P12976868382006266788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316304 (A001844 n).toNat)

end

end A316298.P12976868382006266788

/-! ## A316298.P8828153816965476553

`record[A316304(A330613(n+1))]`
-/

namespace A316298.P8828153816965476553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316298.P8828153816965476553

/-! ## A316298.P11921471493948574635

`record[A003982(n)*A316304(n+1)]`
-/

namespace A316298.P11921471493948574635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316298.P11921471493948574635

/-!
# A316299: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316299, there is no canonical definition to state claims against.
-/

/-! ## A316299.P5655070227969644244

`A316304(∑[n+2]+4)`
-/

namespace A316299.P5655070227969644244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316299.P5655070227969644244

/-! ## A316299.P1113607435363742490

`A316304(A167614(n+1))+char[20]`
-/

namespace A316299.P1113607435363742490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316299.P1113607435363742490

/-! ## A316299.P10546075023655866494

`record[A316304(n+4)/A238241(n)]`
-/

namespace A316299.P10546075023655866494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316304 (n + 4) : ℚ) / (A238241 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316299.P10546075023655866494

/-! ## A316299.P278501183585391139

`gcd(A025438(n), A316304(A167614(n+1)))`
-/

namespace A316299.P278501183585391139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025438 n) (A316304 (A167614 (n + 1)).toNat)

end

end A316299.P278501183585391139

/-! ## A316299.P14939092941642803716

`lcm(A020985(n), A316304(A167614(n+1)))`
-/

namespace A316299.P14939092941642803716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A316304 (A167614 (n + 1)).toNat)

end

end A316299.P14939092941642803716

