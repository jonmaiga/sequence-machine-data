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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A006200: Number of partitions into pairs.

The programs for A006200, there is no canonical definition to state claims against.
-/

/-! ## A006200.P11371311323277785409

`A079267(A167614(n+2))`
-/

namespace A006200.P11371311323277785409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (A167614 (n + 2)).toNat

end

end A006200.P11371311323277785409

/-! ## A006200.P5244143281048366239

`A079267(A052905(n)+8)`
-/

namespace A006200.P5244143281048366239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (A052905 n + 8).toNat

end

end A006200.P5244143281048366239

/-! ## A006200.P1703816037371206293

`A079267(A055999(n)+9)`
-/

namespace A006200.P1703816037371206293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (A055999 n + 9).toNat

end

end A006200.P1703816037371206293

/-! ## A006200.P13727366702557378682

`A079267(eq[1, A180823(n+1)])`
-/

namespace A006200.P13727366702557378682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006200.P13727366702557378682

/-! ## A006200.P10307326452650737371

`A079267(eq[4, A002260(n+1)])`
-/

namespace A006200.P10307326452650737371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006200.P10307326452650737371

/-! ## A006200.P13594454555012782112

`A079267(A034856(n+1)+n+8)`
-/

namespace A006200.P13594454555012782112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (A034856 (n + 1) + (n + 8 : ℤ)).toNat

end

end A006200.P13594454555012782112

/-!
# A006201: Number of colorings of labeled graphs on n nodes using exactly 3 colors, divided by 48.

The programs for A006201, there is no canonical definition to state claims against.
-/

/-! ## A006201.P14035932423668705858

`A058873(n+1)/8`
-/

namespace A006201.P14035932423668705858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058873 (n + 1) : ℚ) / 8

end

end A006201.P14035932423668705858

/-! ## A006201.P14955563341836451610

`A213442(n+1)/48`
-/

namespace A006201.P14955563341836451610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213442 (n + 1) : ℚ) / 48

end

end A006201.P14955563341836451610

/-!
# A006202: Number of colorings of labeled graphs on n nodes using exactly 4 colors, divided by 4!*2^6.

The programs for A006202, there is no canonical definition to state claims against.
-/

/-! ## A006202.P5182367377670241792

`A058874(n+1)/64`
-/

namespace A006202.P5182367377670241792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058874 (n + 1) : ℚ) / 64

end

end A006202.P5182367377670241792

/-! ## A006202.P737633787244710888

`floor(A224068(n+1)/24)/64`
-/

namespace A006202.P737633787244710888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A224068 (n + 1) : ℚ) / 24⌋ : ℚ) / 64

end

end A006202.P737633787244710888

/-!
# A006203: Discriminants of imaginary quadratic fields with class number 3 (negated).

The programs for A006203, there is no canonical definition to state claims against.
-/

/-! ## A006203.P8951777451571832799

`p?[A107662(n+1)]`
-/

namespace A006203.P8951777451571832799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006203.P8951777451571832799

/-! ## A006203.P15703959724491064465

`p?[A328825(n+1)]`
-/

namespace A006203.P15703959724491064465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006203.P15703959724491064465

/-! ## A006203.P9274718818883195931

`p?[eq[3, A058305(n)]]`
-/

namespace A006203.P9274718818883195931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A006203.P9274718818883195931

/-! ## A006203.P8272959556372715333

`p?[eq[36, A259825(n)]]`
-/

namespace A006203.P8272959556372715333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A006203.P8272959556372715333

/-! ## A006203.P17357201748497791175

`eq[A058305(n), A323774(n)]`
-/

namespace A006203.P17357201748497791175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006203.P17357201748497791175

/-!
# A006204: Number of starters in cyclic group of order 2n+1.

The programs for A006204, there is no canonical definition to state claims against.
-/

/-! ## A006204.P4052635381326689740

`or(1, A154124(A192744(n)))`
-/

namespace A006204.P4052635381326689740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A154124 (A192744 n).toNat)

end

end A006204.P4052635381326689740

/-! ## A006204.P8372055828180551609

`A154124(A192744(n))+A024317(n+1)`
-/

namespace A006204.P8372055828180551609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154124 (A192744 n).toNat + A024317 (n + 1)

end

end A006204.P8372055828180551609

/-!
# A006205: Number of inequivalent strong starters in cyclic group of order 2n+1.

The programs for A006205, there is no canonical definition to state claims against.
-/

/-! ## A006205.P18217593085208830664

`A291068(a(n-1)+1)+char[2]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2, a(5)=2`
-/

namespace A006205.P18217593085208830664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 2, 2] fun n a =>
  A291068 (a (n - 1) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006205.P18217593085208830664

/-! ## A006205.P5500006582501171295

`A282318(A198313(n+3)+n)`
-/

namespace A006205.P5500006582501171295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 (A198313 (n + 3) + (n : ℤ)).toNat

end

end A006205.P5500006582501171295

/-! ## A006205.P3136618988163944852

`A276326(A303806(n+1))%A028495(n)`
-/

namespace A006205.P3136618988163944852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276326 (A303806 (n + 1)).toNat) (A028495 n)

end

end A006205.P3136618988163944852

/-! ## A006205.P17032280340616819048

`and(A005220(n), A354399(A005228(n+1)))`
-/

namespace A006205.P17032280340616819048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005220 n) (A354399 (A005228 (n + 1)).toNat)

end

end A006205.P17032280340616819048

/-!
# A006206: Number of aperiodic binary necklaces of length n with no subsequence 00, excluding the necklace "0".

The programs for A006206, there is no canonical definition to state claims against.
-/

/-! ## A006206.P10941771774995708296

`A060280(char[1]+1+n)`
-/

namespace A006206.P10941771774995708296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060280 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A006206.P10941771774995708296

/-! ## A006206.P821304944829276785

`A063524(n)+A060280(n+1)`
-/

namespace A006206.P821304944829276785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A060280 (n + 1)

end

end A006206.P821304944829276785

/-! ## A006206.P11823722375705585980

`A060280(n+1)-A159075(n)`
-/

namespace A006206.P11823722375705585980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060280 (n + 1) - A159075 n

end

end A006206.P11823722375705585980

/-! ## A006206.P46520328271034422

`gcd(A033322(n+1), A060280(n+1))`
-/

namespace A006206.P46520328271034422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 1)) (A060280 (n + 1))

end

end A006206.P46520328271034422

/-! ## A006206.P5876458805118812453

`A060280(n+1)^A185410(round(3/(n+1)))`
-/

namespace A006206.P5876458805118812453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060280 (n + 1) : ℚ) ^ (A185410 (SequenceMachineLib.roundAway (3 / (n + 1 : ℚ))).toNat : ℤ)

end

end A006206.P5876458805118812453

/-! ## A006206.P10656226849593402726

`∑{d}[n+1, A000358(#)*A008683((n+1)/#)]`
-/

namespace A006206.P10656226849593402726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000358 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006206.P10656226849593402726

/-! ## A006206.P151611154616029260

`char[1]+A031367(n+1)/(n+1)`
-/

namespace A006206.P151611154616029260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A031367 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A006206.P151611154616029260

/-! ## A006206.P2675383015640539783

`A348422(∑[n]+1)+char[1]`
-/

namespace A006206.P2675383015640539783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348422 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006206.P2675383015640539783

/-! ## A006206.P2817381646627407481

`A348422(A000124(char[1]+n))`
-/

namespace A006206.P2817381646627407481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348422 (A000124 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A006206.P2817381646627407481

/-! ## A006206.P9728145209140236981

`A060280(A014963(∑[n+1])+1)+A060280(n+1)`
-/

namespace A006206.P9728145209140236981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060280 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat + A060280 (n + 1)

end

end A006206.P9728145209140236981

/-!
# A006207: Generalized Fibonacci numbers A_{n,2}.

The programs for A006207, there is no canonical definition to state claims against.
-/

/-! ## A006207.P12465939407651755294

`A000194(A303631(n+1)+A080934(n))`
-/

namespace A006207.P12465939407651755294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A303631 (n + 1) + A080934 n).toNat

end

end A006207.P12465939407651755294

/-! ## A006207.P6464561992684229792

`A000194(A303631(n+1)+A290454(n))`
-/

namespace A006207.P6464561992684229792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A303631 (n + 1) + A290454 n).toNat

end

end A006207.P6464561992684229792

/-! ## A006207.P16435316312988562567

`A000194(A303631(n+1)+A293112(n))`
-/

namespace A006207.P16435316312988562567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A303631 (n + 1) + A293112 n).toNat

end

end A006207.P16435316312988562567

/-! ## A006207.P12855333336578465386

`A273190(A091865(n+1))`
-/

namespace A006207.P12855333336578465386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A091865 (n + 1)).toNat

end

end A006207.P12855333336578465386

/-! ## A006207.P17169968750118308651

`A273190(Δ[record[A251653(n)]])`
-/

namespace A006207.P17169968750118308651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251653 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (f1 (n + 1) - f1 n).toNat

end

end A006207.P17169968750118308651

/-!
# A006209: Generalized Fibonacci numbers A_{n,4}.

The programs for A006209, there is no canonical definition to state claims against.
-/

/-! ## A006209.P12115914960388681831

`A188436(A067980(n))+A130628(n+1)`
-/

namespace A006209.P12115914960388681831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (A067980 n).toNat + A130628 (n + 1)

end

end A006209.P12115914960388681831

/-! ## A006209.P10693121575272663102

`A208092(n+1)+A024362(A208126(n))`
-/

namespace A006209.P10693121575272663102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208092 (n + 1) + A024362 (A208126 n).toNat

end

end A006209.P10693121575272663102

/-! ## A006209.P8680885930594795309

`A328981(A347574(3*n+4))+A130628(n+1)`
-/

namespace A006209.P8680885930594795309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (A347574 (3 * n + 4 + 28)).toNat + A130628 (n + 1)

end

end A006209.P8680885930594795309

/-! ## A006209.P9995537082301630789

`A131610(A005993(n+3))%A255598(A151977(n+2)+1)`
-/

namespace A006209.P9995537082301630789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131610 (A005993 (n + 3)).toNat) (A255598 (A151977 (n + 2) + 1).toNat)

end

end A006209.P9995537082301630789

/-!
# A006210: Generalized Fibonacci numbers D_{n,2}.

The programs for A006210, there is no canonical definition to state claims against.
-/

/-! ## A006210.P17027000064624232823

`floor(Δ[A285033(a(n-1)+1)]/(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A006210.P17027000064624232823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A285033 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A006210.P17027000064624232823

/-! ## A006210.P10285930032588782608

`floor(A087156(A001333(n+1))/(n+1))`
-/

namespace A006210.P10285930032588782608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087156 (A001333 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A006210.P10285930032588782608

/-! ## A006210.P11840738801861637230

`floor(A152113(2*(n+1))/(n+1))%A152093(n+1)`
-/

namespace A006210.P11840738801861637230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A152113 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋ (A152093 (n + 1))

end

end A006210.P11840738801861637230

/-! ## A006210.P4204432054009347457

`A064557(A116763(n+1))`
-/

namespace A006210.P4204432054009347457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064557 (A116763 (n + 1)).toNat

end

end A006210.P4204432054009347457

/-! ## A006210.P17785011593219516372

`∑[A135662(∑[A148748(n)])]`
-/

namespace A006210.P17785011593219516372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148748 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006210.P17785011593219516372

/-!
# A006211: Generalized Fibonacci numbers D_{n,3}.

The programs for A006211, there is no canonical definition to state claims against.
-/

/-! ## A006211.P17405062250631410879

`A002264(A098051(n)+A011782(n))`
-/

namespace A006211.P17405062250631410879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A098051 n + A011782 n).toNat

end

end A006211.P17405062250631410879

/-! ## A006211.P16010445202019397353

`A185283(A300974(n)-A305256(n))`
-/

namespace A006211.P16010445202019397353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A300974 n - A305256 n).toNat

end

end A006211.P16010445202019397353

/-! ## A006211.P12233264070506378797

`A185283(A300974(n)%A305256(n))`
-/

namespace A006211.P12233264070506378797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (Int.tmod (A300974 n) (A305256 n)).toNat

end

end A006211.P12233264070506378797

/-! ## A006211.P10493188627398399303

`A370457(A102726(n))`
-/

namespace A006211.P10493188627398399303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370457 (A102726 n).toNat

end

end A006211.P10493188627398399303

/-! ## A006211.P2505907732671316667

`A370457(A188900(n))`
-/

namespace A006211.P2505907732671316667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370457 (A188900 n).toNat

end

end A006211.P2505907732671316667

/-!
# A006212: Number of down-up permutations of n+3 starting with n+1.

The programs for A006212, there is no canonical definition to state claims against.
-/

/-! ## A006212.P14815563698183868501

`A008281(∑[n+3])`
-/

namespace A006212.P14815563698183868501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006212.P14815563698183868501

/-! ## A006212.P11345580260033727744

`record[Δ[A010094(n+1)]]`
-/

namespace A006212.P11345580260033727744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006212.P11345580260033727744

/-! ## A006212.P9755413047578735319

`record[A181937(n)]-A000111(n)`
-/

namespace A006212.P9755413047578735319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000111 n

end

end A006212.P9755413047578735319

/-! ## A006212.P13149700690340173712

`record[A229892(n)]-A000111(n)`
-/

namespace A006212.P13149700690340173712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000111 n

end

end A006212.P13149700690340173712

/-! ## A006212.P484346102687652557

`A000111(n+2)-A000111(n)`
-/

namespace A006212.P484346102687652557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 2) - A000111 n

end

end A006212.P484346102687652557

/-! ## A006212.P13253860080128997466

`Δ[A000111(n)+Δ[A173253(n)]]`
-/

namespace A006212.P13253860080128997466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006212.P13253860080128997466

/-! ## A006212.P15165063205932833729

`Δ[A260786(n)+Δ[A000111(n)]]`
-/

namespace A006212.P15165063205932833729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260786 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006212.P15165063205932833729

/-! ## A006212.P2959717023201510211

`record[A181937(n)]-A109449(∑[n])`
-/

namespace A006212.P2959717023201510211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A109449 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A006212.P2959717023201510211

/-! ## A006212.P5515658967599265448

`Δ[A000111(n+1)+A000111(n)]`
-/

namespace A006212.P5515658967599265448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 1) + A000111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006212.P5515658967599265448

/-! ## A006212.P146284619280839647

`record[A181937(n)]-ceil(A001250(n)/2)`
-/

namespace A006212.P146284619280839647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ⌈(A001250 n : ℚ) / 2⌉

end

end A006212.P146284619280839647

/-!
# A006213: Number of down-up permutations of n+4 starting with n+1.

The programs for A006213, there is no canonical definition to state claims against.
-/

/-! ## A006213.P6827692622614422125

`A008281(∑[n+4]+2)`
-/

namespace A006213.P6827692622614422125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006213.P6827692622614422125

/-! ## A006213.P17405440222484854835

`A008282(∑[n+3])-C(n, n+2)^n`
-/

namespace A006213.P17405440222484854835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.choose n (n + 2) ^ n : ℤ)

end

end A006213.P17405440222484854835

/-! ## A006213.P9071116443955306403

`A008282(∑[n+3])*A178334(n)`
-/

namespace A006213.P9071116443955306403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j) * A178334 n

end

end A006213.P9071116443955306403

/-! ## A006213.P7064109445540636494

`A006212(n+1)-A001250(n+1)`
-/

namespace A006213.P7064109445540636494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006212 (n + 1) - A001250 (n + 1)

end

end A006213.P7064109445540636494

/-! ## A006213.P15220828790322739512

`A008282(A055998(n+1))-A000007(n)`
-/

namespace A006213.P15220828790322739512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A055998 (n + 1)).toNat - A000007 n

end

end A006213.P15220828790322739512

/-! ## A006213.P10734351190119747289

`A006217(n)-A006216(n+1)`
-/

namespace A006213.P10734351190119747289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006217 n - A006216 (n + 1)

end

end A006213.P10734351190119747289

/-! ## A006213.P334706702092509619

`A006217(n)%A006216(A000027(n+1))`
-/

namespace A006213.P334706702092509619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006217 n) (A006216 (A000027 (n + 1)).toNat)

end

end A006213.P334706702092509619

/-!
# A006214: Number of down-up permutations of n+5 starting with n+1.

The programs for A006214, there is no canonical definition to state claims against.
-/

/-! ## A006214.P7255131787676290123

`A008281(∑[n+5]+5)`
-/

namespace A006214.P7255131787676290123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A006214.P7255131787676290123

/-! ## A006214.P6267450476816636670

`A006213(n+1)-A006216(n)`
-/

namespace A006214.P6267450476816636670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006213 (n + 1) - A006216 n

end

end A006214.P6267450476816636670

/-! ## A006214.P16759097957331021030

`or(char[1], A008281(A046691(n+3)-1))`
-/

namespace A006214.P16759097957331021030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A008281 (A046691 (n + 3) - 1).toNat)

end

end A006214.P16759097957331021030

/-! ## A006214.P5639904341493548900

`A008282(∑[n+4]+2)*A178334(n)`
-/

namespace A006214.P5639904341493548900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 2) * A178334 n

end

end A006214.P5639904341493548900

/-! ## A006214.P1748746535305185464

`lcm(A010094(A167499(n+2)), A062157(n))`
-/

namespace A006214.P1748746535305185464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010094 (A167499 (n + 2)).toNat) (A062157 n)

end

end A006214.P1748746535305185464

/-! ## A006214.P13153958898439693098

`char[A007318(n)]*A008281(A046691(n+3)-1)`
-/

namespace A006214.P13153958898439693098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A008281 (A046691 (n + 3) - 1).toNat

end

end A006214.P13153958898439693098

/-! ## A006214.P339853252662407221

`A000034(2*n)*A008281(A046691(n+3)-1)`
-/

namespace A006214.P339853252662407221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A008281 (A046691 (n + 3) - 1).toNat

end

end A006214.P339853252662407221

/-! ## A006214.P7015423278419836223

`A000045(gcd(n+1, 2*n))*A008281(A046691(n+3)-1)`
-/

namespace A006214.P7015423278419836223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd (n + 1) (2 * n)) * A008281 (A046691 (n + 3) - 1).toNat

end

end A006214.P7015423278419836223

/-!
# A006215: Number of down-up permutations of n+6 starting with n+1.

The programs for A006215, there is no canonical definition to state claims against.
-/

/-! ## A006215.P15566344007567359902

`A008281(A055999(n+3))`
-/

namespace A006215.P15566344007567359902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A055999 (n + 3)).toNat

end

end A006215.P15566344007567359902

/-! ## A006215.P1138518428657577943

`A008281(A155212(n+2)+2)`
-/

namespace A006215.P1138518428657577943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A155212 (n + 2) + 2).toNat

end

end A006215.P1138518428657577943

/-! ## A006215.P4091239343164827368

`A008281(A046691(n+4)-2)`
-/

namespace A006215.P4091239343164827368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A046691 (n + 4) - 2).toNat

end

end A006215.P4091239343164827368

/-! ## A006215.P15414068784563797924

`A008281(A000217(n+6)-6)`
-/

namespace A006215.P15414068784563797924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A000217 (n + 6) - 6).toNat

end

end A006215.P15414068784563797924

/-! ## A006215.P17079204456391017038

`A006214(n+1)-A006217(n)`
-/

namespace A006215.P17079204456391017038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006214 (n + 1) - A006217 n

end

end A006215.P17079204456391017038

/-!
# A006216: Number of down-up permutations of n+4 starting with 4.

The programs for A006216, there is no canonical definition to state claims against.
-/

/-! ## A006216.P10824951141455673460

`A010094(∑[n+3]+1)`
-/

namespace A006216.P10824951141455673460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006216.P10824951141455673460

/-! ## A006216.P18240559492178907818

`A008282(∑[n+2]+4)`
-/

namespace A006216.P18240559492178907818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A006216.P18240559492178907818

/-! ## A006216.P6103684946256512562

`A008281(A167614(n+2))`
-/

namespace A006216.P6103684946256512562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A167614 (n + 2)).toNat

end

end A006216.P6103684946256512562

/-! ## A006216.P13621567050900303550

`A008281(A052905(n)+8)`
-/

namespace A006216.P13621567050900303550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A052905 n + 8).toNat

end

end A006216.P13621567050900303550

/-! ## A006216.P1638148421151170539

`A008281(A000124(n+3)+2)`
-/

namespace A006216.P1638148421151170539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A000124 (n + 3) + 2).toNat

end

end A006216.P1638148421151170539

/-! ## A006216.P5582883801931977878

`A006212(n)+A001250(n+2)`
-/

namespace A006216.P5582883801931977878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006212 n + A001250 (n + 2)

end

end A006216.P5582883801931977878

/-! ## A006216.P16690392503009067220

`A292758(n)+A000111(n+2)`
-/

namespace A006216.P16690392503009067220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292758 n + A000111 (n + 2)

end

end A006216.P16690392503009067220

/-! ## A006216.P15590223653190444304

`A006213(n+1)-A006214(n)`
-/

namespace A006216.P15590223653190444304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006213 (n + 1) - A006214 n

end

end A006216.P15590223653190444304

/-!
# A006217: Number of down-up permutations of n+5 starting with 5.

The programs for A006217, there is no canonical definition to state claims against.
-/

/-! ## A006217.P13114006451238750078

`A010094(∑[n+4]+3)`
-/

namespace A006217.P13114006451238750078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A006217.P13114006451238750078

/-! ## A006217.P12967344337347066489

`A008282(∑[n+3]+7)`
-/

namespace A006217.P12967344337347066489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A006217.P12967344337347066489

/-! ## A006217.P3534008135785979428

`A008281(A167499(n+3)-1)`
-/

namespace A006217.P3534008135785979428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A167499 (n + 3) - 1).toNat

end

end A006217.P3534008135785979428

/-! ## A006217.P12442819068401519119

`A008281(A027379(n+2)+7)`
-/

namespace A006217.P12442819068401519119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A027379 (n + 2) + 7).toNat

end

end A006217.P12442819068401519119

/-! ## A006217.P13090577453563184560

`A006216(n+1)+A006213(n)`
-/

namespace A006217.P13090577453563184560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006216 (n + 1) + A006213 n

end

end A006217.P13090577453563184560

/-! ## A006217.P3979524356952646825

`record[A008282(A060000(A167499(n)))]`
-/

namespace A006217.P3979524356952646825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A060000 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006217.P3979524356952646825

/-! ## A006217.P1424857750089384661

`A292758(n+1)+A292758(n+1)-A001250(n+1)`
-/

namespace A006217.P1424857750089384661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292758 (n + 1) + (A292758 (n + 1) - A001250 (n + 1))

end

end A006217.P1424857750089384661

/-! ## A006217.P4570291349794048792

`A006214(n+1)-A006215(n)`
-/

namespace A006217.P4570291349794048792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006214 (n + 1) - A006215 n

end

end A006217.P4570291349794048792

/-!
# A006218: a(n) = Sum_{k=1..n} floor(n/k); also Sum_{k=1..n} d(k), where d = number of divisors (A000005); also number of solutions to x*y = z with 1 <= x,y,z <= n.

The programs for A006218, the canonical program `A006218.P9218434490128439557` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006218 has offset 0).

The definition of A006218 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A006218.P16621992646822142054

`A006590(n+1)-n-1`
-/

namespace A006218.P16621992646822142054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - (n : ℤ) - 1

end

end A006218.P16621992646822142054

namespace A006218

/-- `A006590(n+1)-n-1` -/
def P16621992646822142054.Spec : Prop :=
  ∀ n, P16621992646822142054.a n = A006218 n

end A006218

/-! ## A006218.P9218434490128439557

`a(n-1)+A000005(n)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006218

/-- `a(n-1)+A000005(n)` -/
def P9218434490128439557.Spec : Prop :=
  ∀ n, P9218434490128439557.a n = A006218 n

theorem P9218434490128439557.correct : P9218434490128439557.Spec := by
  intro n
  simp only [A006218]

end A006218

/-! ## A006218.P13581568365528436763

`∑[∑{d}[n, ceil(acot(#))]]`
-/

namespace A006218.P13581568365528436763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006218.P13581568365528436763

namespace A006218

/-- `∑[∑{d}[n, ceil(acot(#))]]` -/
def P13581568365528436763.Spec : Prop :=
  ∀ n, P13581568365528436763.a n = A006218 n

end A006218

/-! ## A006218.P2715630224090450228

`∑[∑{d}[n, ceil(1/#)]]`
-/

namespace A006218.P2715630224090450228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006218.P2715630224090450228

namespace A006218

/-- `∑[∑{d}[n, ceil(1/#)]]` -/
def P2715630224090450228.Spec : Prop :=
  ∀ n, P2715630224090450228.a n = A006218 n

end A006218

/-! ## A006218.P2120457493057186134

`∑[∏{e}[n, #+1]]-1`
-/

namespace A006218.P2120457493057186134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A006218.P2120457493057186134

namespace A006218

/-- `∑[∏{e}[n, #+1]]-1` -/
def P2120457493057186134.Spec : Prop :=
  ∀ n, P2120457493057186134.a n = A006218 n

end A006218

/-! ## A006218.P1146119350964415644

`∑[∏{e}[n, #+1]%(n+1)]`
-/

namespace A006218.P1146119350964415644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006218.P1146119350964415644

namespace A006218

/-- `∑[∏{e}[n, #+1]%(n+1)]` -/
def P1146119350964415644.Spec : Prop :=
  ∀ n, (P1146119350964415644.a n : ℤ) = A006218 n

end A006218

/-! ## A006218.P11892022561410525663

`∑[∑{d}[n, (n+1)%#]]+n`
-/

namespace A006218.P11892022561410525663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1) % d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A006218.P11892022561410525663

namespace A006218

/-- `∑[∑{d}[n, (n+1)%#]]+n` -/
def P11892022561410525663.Spec : Prop :=
  ∀ n, (P11892022561410525663.a n : ℤ) = A006218 n

end A006218

/-! ## A006218.P13383669228128149078

`∏{e}[n, #+1]+a(n-1)` with `a(0)=0`
-/

namespace A006218.P13383669228128149078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + a (n - 1)

end

end A006218.P13383669228128149078

namespace A006218

/-- `∏{e}[n, #+1]+a(n-1)` -/
def P13383669228128149078.Spec : Prop :=
  ∀ n, (P13383669228128149078.a n : ℤ) = A006218 n

end A006218

/-! ## A006218.P12614698915615539061

`A054519(n)-1`
-/

namespace A006218.P12614698915615539061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - 1

end

end A006218.P12614698915615539061

namespace A006218

/-- `A054519(n)-1` -/
def P12614698915615539061.Spec : Prop :=
  ∀ n, P12614698915615539061.a n = A006218 n

end A006218

/-! ## A006218.P15954618598221308308

`∑{d}[n, A116477(#)]`
-/

namespace A006218.P15954618598221308308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A116477 d

end

end A006218.P15954618598221308308

namespace A006218

/-- `∑{d}[n, A116477(#)]` -/
def P15954618598221308308.Spec : Prop :=
  ∀ n, P15954618598221308308.a n = A006218 n

end A006218

/-! ## A006218.P913230124574113832

`∑[A032741(n)]+n`
-/

namespace A006218.P913230124574113832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A006218.P913230124574113832

namespace A006218

/-- `∑[A032741(n)]+n` -/
def P913230124574113832.Spec : Prop :=
  ∀ n, P913230124574113832.a n = A006218 n

end A006218

/-! ## A006218.P10152051298937351124

`A350102(n+1)-2`
-/

namespace A006218.P10152051298937351124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 (n + 1) - 2

end

end A006218.P10152051298937351124

namespace A006218

/-- `A350102(n+1)-2` -/
def P10152051298937351124.Spec : Prop :=
  ∀ n, P10152051298937351124.a n = A006218 n

end A006218

/-! ## A006218.P12959236349788751535

`A106633(n)-Δ[n²]`
-/

namespace A006218.P12959236349788751535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106633 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A006218.P12959236349788751535

namespace A006218

/-- `A106633(n)-Δ[n²]` -/
def P12959236349788751535.Spec : Prop :=
  ∀ n, P12959236349788751535.a n = A006218 n

end A006218

/-! ## A006218.P3445879946317615045

`∑[A000005(abs(1-n)+1)]-2`
-/

namespace A006218.P3445879946317615045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A006218.P3445879946317615045

namespace A006218

/-- `∑[A000005(abs(1-n)+1)]-2` -/
def P3445879946317615045.Spec : Prop :=
  ∀ n, P3445879946317615045.a n = A006218 n

end A006218

/-! ## A006218.P9625232865898940962

`a(n-1)+n-A049820(n)` with `a(0)=0`
-/

namespace A006218.P9625232865898940962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A049820 n)

end

end A006218.P9625232865898940962

namespace A006218

/-- `a(n-1)+n-A049820(n)` -/
def P9625232865898940962.Spec : Prop :=
  ∀ n, P9625232865898940962.a n = A006218 n

end A006218

/-! ## A006218.P4481848972225567938

`A325459(n)+A004273(n)`
-/

namespace A006218.P4481848972225567938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n + A004273 n

end

end A006218.P4481848972225567938

namespace A006218

/-- `A325459(n)+A004273(n)` -/
def P4481848972225567938.Spec : Prop :=
  ∀ n, P4481848972225567938.a n = A006218 n

end A006218

/-! ## A006218.P13170431790023899521

`A327326(n)+A005187(n)`
-/

namespace A006218.P13170431790023899521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327326 n + A005187 n

end

end A006218.P13170431790023899521

namespace A006218

/-- `A327326(n)+A005187(n)` -/
def P13170431790023899521.Spec : Prop :=
  ∀ n, P13170431790023899521.a n = A006218 n

end A006218

/-! ## A006218.P13271603819731808441

`A062550(n)-A056549(n)`
-/

namespace A006218.P13271603819731808441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n - A056549 n

end

end A006218.P13271603819731808441

namespace A006218

/-- `A062550(n)-A056549(n)` -/
def P13271603819731808441.Spec : Prop :=
  ∀ n, P13271603819731808441.a n = A006218 n

end A006218

/-! ## A006218.P14551975129239005726

`A003215(n)-A341276(n)`
-/

namespace A006218.P14551975129239005726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A341276 n

end

end A006218.P14551975129239005726

namespace A006218

/-- `A003215(n)-A341276(n)` -/
def P14551975129239005726.Spec : Prop :=
  ∀ n, P14551975129239005726.a n = A006218 n

end A006218

/-! ## A006218.P18389248555617757390

`A113241(n)-A248517(n)`
-/

namespace A006218.P18389248555617757390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 n - A248517 n

end

end A006218.P18389248555617757390

namespace A006218

/-- `A113241(n)-A248517(n)` -/
def P18389248555617757390.Spec : Prop :=
  ∀ n, P18389248555617757390.a n = A006218 n

end A006218

/-!
# A006219: From descending subsequences of permutations.

The programs for A006219, there is no canonical definition to state claims against.
-/

/-! ## A006219.P13099614346714604785

`A224652(∑[n+2]+4)`
-/

namespace A006219.P13099614346714604785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224652 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A006219.P13099614346714604785

/-! ## A006219.P2342831273513946125

`or(floor(2*n/5), A224652(A167614(n+1)))`
-/

namespace A006219.P2342831273513946125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊2 * ((n : ℚ) / 5)⌋ (A224652 (A167614 (n + 1)).toNat)

end

end A006219.P2342831273513946125

/-! ## A006219.P12085288792295797643

`A224652(A167614(n+1))+A184955(n)`
-/

namespace A006219.P12085288792295797643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224652 (A167614 (n + 1)).toNat + A184955 n

end

end A006219.P12085288792295797643

/-! ## A006219.P4650936213878407106

`A224652(A167614(n+1))+A185226(n)`
-/

namespace A006219.P4650936213878407106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224652 (A167614 (n + 1)).toNat + A185226 n

end

end A006219.P4650936213878407106

/-! ## A006219.P13249385492531211043

`A224652(A167614(n+1))*A280865(n)`
-/

namespace A006219.P13249385492531211043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224652 (A167614 (n + 1)).toNat * A280865 n

end

end A006219.P13249385492531211043

/-!
# A006220: From descending subsequences of permutations.

The programs for A006220, there is no canonical definition to state claims against.
-/

/-! ## A006220.P15298613847109118314

`A224652(∑[n+1])`
-/

namespace A006220.P15298613847109118314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006220.P15298613847109118314

/-! ## A006220.P9329831294969313101

`A331883(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A006220.P9329831294969313101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A331883 n + (n : ℤ) * a (n - 1)

end

end A006220.P9329831294969313101

/-! ## A006220.P9662016729707577676

`A000027(A224652(∑[Δ[n²]-n]))`
-/

namespace A006220.P9662016729707577676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A224652 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A006220.P9662016729707577676

/-!
# A006221: From Apery continued fraction for zeta(3): zeta(3)=6/(5-1^6/(117-2^6/(535-3^6/(1463...)))).

The programs for A006221, the canonical program `A006221.P3999402484517209097` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006221 has offset 0).

The definition of A006221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006221.P3999402484517209097

`(2*n+1)*(17*n*(n+1)+5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006221

/-- `(2*n+1)*(17*n*(n+1)+5)` -/
def P3999402484517209097.Spec : Prop :=
  ∀ n, (P3999402484517209097.a n : ℤ) = A006221 n

theorem P3999402484517209097.correct : P3999402484517209097.Spec := by
  intro n
  simp only [A006221]

end A006221

/-! ## A006221.P15923996586740603533

`A001505(n)-A193248(n+1)`
-/

namespace A006221.P15923996586740603533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001505 n - A193248 (n + 1)

end

end A006221.P15923996586740603533

namespace A006221

/-- `A001505(n)-A193248(n+1)` -/
def P15923996586740603533.Spec : Prop :=
  ∀ n, P15923996586740603533.a n = A006221 n

end A006221

/-! ## A006221.P4411268426251545253

`A005898(n)+4*A000578(2*n+1)`
-/

namespace A006221.P4411268426251545253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n + 4 * A000578 (2 * n + 1)

end

end A006221.P4411268426251545253

namespace A006221

/-- `A005898(n)+4*A000578(2*n+1)` -/
def P4411268426251545253.Spec : Prop :=
  ∀ n, P4411268426251545253.a n = A006221 n

end A006221

/-! ## A006221.P7314964417318857711

`A219086(2*n+1)-n*A051895(2*n)`
-/

namespace A006221.P7314964417318857711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 (2 * n + 1) - (n : ℤ) * A051895 (2 * n)

end

end A006221.P7314964417318857711

namespace A006221

/-- `A219086(2*n+1)-n*A051895(2*n)` -/
def P7314964417318857711.Spec : Prop :=
  ∀ n, P7314964417318857711.a n = A006221 n

end A006221

/-! ## A006221.P10423337177106226841

`A036487(A016825(n))+Δ[C(n²+1, 2)]`
-/

namespace A006221.P10423337177106226841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (A016825 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A006221.P10423337177106226841

namespace A006221

/-- `A036487(A016825(n))+Δ[C(n²+1, 2)]` -/
def P10423337177106226841.Spec : Prop :=
  ∀ n, P10423337177106226841.a n = A006221 n

end A006221

/-!
# A006222: a(n) = 11*n^2 + 11*n + 3.

The programs for A006222, the canonical program `A006222.P3304827073248702230` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006222 has offset 0).

The definition of A006222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n²+11*n+3` (program `A006222.P3304827073248702230`, by `A006222.P3304827073248702230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006222.P3304827073248702230

`11*n²+11*n+3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006222

/-- `11*n²+11*n+3` -/
def P3304827073248702230.Spec : Prop :=
  ∀ n, (P3304827073248702230.a n : ℤ) = A006222 n

theorem P3304827073248702230.correct : P3304827073248702230.Spec := by
  intro n
  simp only [A006222]

end A006222

/-! ## A006222.P15808275273367625858

`∑[a(n-1)+22]` with `a(0)=3, a(1)=22`
-/

namespace A006222.P15808275273367625858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 22] fun n f1 =>
  f1 (n - 1) + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006222.P15808275273367625858

namespace A006222

/-- `∑[a(n-1)+22]` -/
def P15808275273367625858.Spec : Prop :=
  ∀ n, (P15808275273367625858.a n : ℤ) = A006222 n

end A006222

/-! ## A006222.P3249208832089046944

`floor(a(n-1)+22*n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A006222.P3249208832089046944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 22 * n

end

end A006222.P3249208832089046944

namespace A006222

/-- `floor(a(n-1)+22*n)` -/
def P3249208832089046944.Spec : Prop :=
  ∀ n, (P3249208832089046944.a n : ℤ) = A006222 n

theorem P3249208832089046944.correct : P3249208832089046944.Spec := by
  intro n
  induction n with
  | zero => simp [A006222, A006222.P3249208832089046944.a, A006222.P3304827073248702230.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A006222, Nat.add_sub_cancel, A006222.P3249208832089046944.a, A006222.P3304827073248702230.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A006222

/-! ## A006222.P7857789178839900522

`22*(a(n-1)/22+n)` with `a(0)=3`
-/

namespace A006222.P7857789178839900522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  22 * (a (n - 1) / 22 + (n : ℚ))

end

end A006222.P7857789178839900522

namespace A006222

/-- `22*(a(n-1)/22+n)` -/
def P7857789178839900522.Spec : Prop :=
  ∀ n, P7857789178839900522.a n = (A006222 n : ℚ)

theorem P7857789178839900522.correct : P7857789178839900522.Spec := by
  intro n
  induction n with
  | zero => simp [A006222, A006222.P7857789178839900522.a, A006222.P3304827073248702230.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A006222, Nat.add_sub_cancel, A006222.P7857789178839900522.a, A006222.P3304827073248702230.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A006222

/-! ## A006222.P2099917340221779614

`Δ[n^3+2*C(2*n+1, 3)]`
-/

namespace A006222.P2099917340221779614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 2 * Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A006222.P2099917340221779614

namespace A006222

/-- `Δ[n^3+2*C(2*n+1, 3)]` -/
def P2099917340221779614.Spec : Prop :=
  ∀ n, P2099917340221779614.a n = A006222 n

end A006222

/-! ## A006222.P10708507637638701283

`xor(1, A164136(n)+2)`
-/

namespace A006222.P10708507637638701283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A164136 n + 2)

end

end A006222.P10708507637638701283

namespace A006222

/-- `xor(1, A164136(n)+2)` -/
def P10708507637638701283.Spec : Prop :=
  ∀ n, P10708507637638701283.a n = A006222 n

end A006222

/-! ## A006222.P5457564881633922057

`(A195318(n+1)+5)/2`
-/

namespace A006222.P5457564881633922057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195318 (n + 1) + 5 : ℚ) / 2

end

end A006222.P5457564881633922057

namespace A006222

/-- `(A195318(n+1)+5)/2` -/
def P5457564881633922057.Spec : Prop :=
  ∀ n, P5457564881633922057.a n = (A006222 n : ℚ)

end A006222

/-! ## A006222.P14753470733309107137

`xor(1, A069173(n+1)+1)`
-/

namespace A006222.P14753470733309107137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A069173 (n + 1) + 1)

end

end A006222.P14753470733309107137

namespace A006222

/-- `xor(1, A069173(n+1)+1)` -/
def P14753470733309107137.Spec : Prop :=
  ∀ n, P14753470733309107137.a n = A006222 n

end A006222

/-! ## A006222.P9483492146556326616

`abs(3-(n-12*n)*A000027(n+1))`
-/

namespace A006222.P9483492146556326616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ((n : ℤ) - (12 * n : ℤ)) * A000027 (n + 1)|

end

end A006222.P9483492146556326616

namespace A006222

/-- `abs(3-(n-12*n)*A000027(n+1))` -/
def P9483492146556326616.Spec : Prop :=
  ∀ n, P9483492146556326616.a n = A006222 n

end A006222

/-! ## A006222.P17869836642339653227

`(A008592(n)+3/(n+1)+n)*(n+1)`
-/

namespace A006222.P17869836642339653227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008592 n : ℚ) + 3 / (n + 1 : ℚ) + (n : ℚ)) * (n + 1 : ℚ)

end

end A006222.P17869836642339653227

namespace A006222

/-- `(A008592(n)+3/(n+1)+n)*(n+1)` -/
def P17869836642339653227.Spec : Prop :=
  ∀ n, P17869836642339653227.a n = (A006222 n : ℚ)

end A006222

/-! ## A006222.P15975804950639385731

`A016946(n)%A177059(n)`
-/

namespace A006222.P15975804950639385731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016946 n) (A177059 n)

end

end A006222.P15975804950639385731

namespace A006222

/-- `A016946(n)%A177059(n)` -/
def P15975804950639385731.Spec : Prop :=
  ∀ n, P15975804950639385731.a n = A006222 n

end A006222

/-! ## A006222.P703254576959265546

`A332243(n)%A177060(n)`
-/

namespace A006222.P703254576959265546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332243 n) (A177060 n)

end

end A006222.P703254576959265546

namespace A006222

/-- `A332243(n)%A177060(n)` -/
def P703254576959265546.Spec : Prop :=
  ∀ n, P703254576959265546.a n = A006222 n

end A006222

/-! ## A006222.P13360131545356001359

`Δ[A033431(n)+A004466(n)]`
-/

namespace A006222.P13360131545356001359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n + A004466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006222.P13360131545356001359

namespace A006222

/-- `Δ[A033431(n)+A004466(n)]` -/
def P13360131545356001359.Spec : Prop :=
  ∀ n, P13360131545356001359.a n = A006222 n

end A006222

/-! ## A006222.P6053067230158471690

`Δ[A004466(n)+2*A000578(n)]`
-/

namespace A006222.P6053067230158471690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n + 2 * A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006222.P6053067230158471690

namespace A006222

/-- `Δ[A004466(n)+2*A000578(n)]` -/
def P6053067230158471690.Spec : Prop :=
  ∀ n, P6053067230158471690.a n = A006222 n

end A006222

/-! ## A006222.P17735218829653915308

`abs((11*n+2)*A004001(A188163(n+1))+1-n-n)`
-/

namespace A006222.P17735218829653915308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n + 2 : ℤ) * A004001 (A188163 (n + 1)).toNat + 1 - (n : ℤ) - (n : ℤ)|

end

end A006222.P17735218829653915308

namespace A006222

/-- `abs((11*n+2)*A004001(A188163(n+1))+1-n-n)` -/
def P17735218829653915308.Spec : Prop :=
  ∀ n, P17735218829653915308.a n = A006222 n

end A006222

/-! ## A006222.P16175674179315835303

`A010012(2*n+1)/8`
-/

namespace A006222.P16175674179315835303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010012 (2 * n + 1) : ℚ) / 8

end

end A006222.P16175674179315835303

namespace A006222

/-- `A010012(2*n+1)/8` -/
def P16175674179315835303.Spec : Prop :=
  ∀ n, P16175674179315835303.a n = (A006222 n : ℚ)

end A006222

/-! ## A006222.P3174898352030455169

`xor(1, A195043(2*n+1)+1)`
-/

namespace A006222.P3174898352030455169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A195043 (2 * n + 1) + 1)

end

end A006222.P3174898352030455169

namespace A006222

/-- `xor(1, A195043(2*n+1)+1)` -/
def P3174898352030455169.Spec : Prop :=
  ∀ n, P3174898352030455169.a n = A006222 n

end A006222

/-! ## A006222.P9343910009890325909

`(A022269(2*n+1)-n)/2`
-/

namespace A006222.P9343910009890325909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022269 (2 * n + 1) - (n : ℤ) : ℚ) / 2

end

end A006222.P9343910009890325909

namespace A006222

/-- `(A022269(2*n+1)-n)/2` -/
def P9343910009890325909.Spec : Prop :=
  ∀ n, P9343910009890325909.a n = (A006222 n : ℚ)

end A006222

/-! ## A006222.P2296741833045365589

`(A026817(2*n+1)-n)/2`
-/

namespace A006222.P2296741833045365589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026817 (2 * n + 1) - (n : ℤ) : ℚ) / 2

end

end A006222.P2296741833045365589

namespace A006222

/-- `(A026817(2*n+1)-n)/2` -/
def P2296741833045365589.Spec : Prop :=
  ∀ n, P2296741833045365589.a n = (A006222 n : ℚ)

end A006222

/-! ## A006222.P8846119639542586066

`A211439(3*n+1)`
-/

namespace A006222.P8846119639542586066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211439 (3 * n + 1)

end

end A006222.P8846119639542586066

namespace A006222

/-- `A211439(3*n+1)` -/
def P8846119639542586066.Spec : Prop :=
  ∀ n, P8846119639542586066.a n = A006222 n

end A006222

/-!
# A006223: Number of binary rooted trees of height n requiring 3 registers.

The programs for A006223, there is no canonical definition to state claims against.
-/

/-! ## A006223.P13782576017685950320

`A259475(eq[14, A025581(n)])`
-/

namespace A006223.P13782576017685950320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006223.P13782576017685950320

/-! ## A006223.P7658002703831594566

`A259475(eq[15, A004736(n+1)])`
-/

namespace A006223.P7658002703831594566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006223.P7658002703831594566

/-! ## A006223.P9148569719660830566

`A259475(eq[15, A195663(n)])`
-/

namespace A006223.P9148569719660830566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006223.P9148569719660830566

/-!
# A006224: Rabbytes: group eight successive Fibonacci numbers in binary and translate to decimal.

The programs for A006224, there is no canonical definition to state claims against.
-/

/-! ## A006224.P14590124583977065809

`A030109(∑[∏[A261156(n)]])`
-/

namespace A006224.P14590124583977065809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261156 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006224.P14590124583977065809

/-! ## A006224.P3485633078593356951

`A030109(∑[∏[A338286(n)]])`
-/

namespace A006224.P3485633078593356951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006224.P3485633078593356951

/-!
# A006225: Rabbytes: group eight successive Fibonacci numbers in reversed binary and translate to decimal.

The programs for A006225, there is no canonical definition to state claims against.
-/

/-! ## A006225.P16818615075820366515

`or(comp[2*(n+1)], A230980(n^n))`
-/

namespace A006225.P16818615075820366515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A230980 (n ^ n))

end

end A006225.P16818615075820366515

/-!
# A006226: Number of abstract n-dimensional crystallographic point groups.

The programs for A006226, there is no canonical definition to state claims against.
-/

/-! ## A006226.P17531099305036765451

`∑[record[A300081(n+1)]^A004526(n)]`
-/

namespace A006226.P17531099305036765451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300081 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) ^ (A004526 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006226.P17531099305036765451

/-! ## A006226.P6269763507971746468

`∑[record[A300081(n+1)]^A002265(2*n)]`
-/

namespace A006226.P6269763507971746468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300081 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) ^ (A002265 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006226.P6269763507971746468

/-!
# A006227: Number of n-dimensional space groups (including enantiomorphs).

The programs for A006227, there is no canonical definition to state claims against.
-/

/-! ## A006227.P15254187478242496942

`A293061(∑[n]+n)`
-/

namespace A006227.P15254187478242496942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293061 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006227.P15254187478242496942

/-!
# A006228: Expansion of e.g.f. exp(arcsin(x)).

The programs for A006228, the canonical program `A006228.P3652310251863744119` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006228 has offset 0).

The definition of A006228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006228.P3652310251863744119

`(1+(n-2)²)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006228

/-- `(1+(n-2)²)*a(n-2)` -/
def P3652310251863744119.Spec : Prop :=
  ∀ n, P3652310251863744119.a n = A006228 n

theorem P3652310251863744119.correct : P3652310251863744119.Spec := by
  intro n
  simp only [A006228]

end A006228

/-! ## A006228.P10468997661949346606

`a(n-2)+(n-2)*(n-2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A006228.P10468997661949346606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ((n : ℤ) - 2) * (((n : ℤ) - 2) * a (n - 2))

end

end A006228.P10468997661949346606

namespace A006228

/-- `a(n-2)+(n-2)*(n-2)*a(n-2)` -/
def P10468997661949346606.Spec : Prop :=
  ∀ n, P10468997661949346606.a n = A006228 n

end A006228

/-! ## A006228.P3652505638577178305

`A012899(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A006228.P3652505638577178305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A012899 n - (n : ℤ) * a (n - 1)

end

end A006228.P3652505638577178305

namespace A006228

/-- `A012899(n)-n*a(n-1)` -/
def P3652505638577178305.Spec : Prop :=
  ∀ n, P3652505638577178305.a n = A006228 n

end A006228

/-! ## A006228.P10838382654173172853

`a(n-2)*A160457(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A006228.P10838382654173172853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A160457 (n - 1)

end

end A006228.P10838382654173172853

namespace A006228

/-- `a(n-2)*A160457(n-1)` -/
def P10838382654173172853.Spec : Prop :=
  ∀ n, P10838382654173172853.a n = A006228 n

end A006228

/-! ## A006228.P11083530001494407155

`a(n-2)*A002522(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A006228.P11083530001494407155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A002522 (n - 2)

end

end A006228.P11083530001494407155

namespace A006228

/-- `a(n-2)*A002522(n-2)` -/
def P11083530001494407155.Spec : Prop :=
  ∀ n, P11083530001494407155.a n = A006228 n

end A006228

/-! ## A006228.P10514829567261884525

`a(n-2)*A265410(n²+1)` with `a(0)=1, a(1)=1`
-/

namespace A006228.P10514829567261884525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A265410 (n ^ 2 + 1)

end

end A006228.P10514829567261884525

namespace A006228

/-- `a(n-2)*A265410(n²+1)` -/
def P10514829567261884525.Spec : Prop :=
  ∀ n, P10514829567261884525.a n = A006228 n

end A006228

/-! ## A006228.P5266785891741025580

`a(n-2)*A083479(A083479(n²))` with `a(0)=1, a(1)=1`
-/

namespace A006228.P5266785891741025580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A083479 (A083479 (n ^ 2)).toNat

end

end A006228.P5266785891741025580

namespace A006228

/-- `a(n-2)*A083479(A083479(n²))` -/
def P5266785891741025580.Spec : Prop :=
  ∀ n, P5266785891741025580.a n = A006228 n

end A006228

/-!
# A006229: Expansion of e.g.f. exp( tan x ).

The programs for A006229, there is no canonical definition to state claims against.
-/

/-! ## A006229.P6906089138606599192

`A012924(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A006229.P6906089138606599192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A012924 n - (n : ℤ) * a (n - 1)

end

end A006229.P6906089138606599192

/-! ## A006229.P16918619237196174543

`A012924(n)-A009243(n)`
-/

namespace A006229.P16918619237196174543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012924 n - A009243 n

end

end A006229.P16918619237196174543

/-! ## A006229.P6873596015561432014

`A012924(n)+A009243(n)*A057428(n)`
-/

namespace A006229.P6873596015561432014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012924 n + A009243 n * A057428 n

end

end A006229.P6873596015561432014

/-! ## A006229.P2640203557112694478

`A009243(n+1)/(n+1)`
-/

namespace A006229.P2640203557112694478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009243 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A006229.P2640203557112694478

/-! ## A006229.P15232095962149044220

`n!/A047692(n)*A047691(n)`
-/

namespace A006229.P15232095962149044220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A047692 n : ℚ) * (A047691 n : ℚ)

end

end A006229.P15232095962149044220

/-! ## A006229.P2493106498237685891

`∏[A028310(n)]/A047692(n)*A047691(n)`
-/

namespace A006229.P2493106498237685891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A047692 n : ℚ) * (A047691 n : ℚ)

end

end A006229.P2493106498237685891

/-! ## A006229.P11071716657811457244

`A012929(n)+A012933(n)-A009243(n)`
-/

namespace A006229.P11071716657811457244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012929 n + (A012933 n - A009243 n)

end

end A006229.P11071716657811457244

/-!
# A006230: Bitriangular permutations.

The programs for A006230, the canonical program `A006230.P4041661181879863379` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006230 has offset 4).

The definition of A006230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006230.P4041661181879863379

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=13, a(2)=73`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006230

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P4041661181879863379.Spec : Prop :=
  ∀ n, P4041661181879863379.a n = A006230 (n + 4)

theorem P4041661181879863379.correct : P4041661181879863379.Spec := by
  intro n
  simp only [A006230, Nat.add_sub_cancel]

end A006230

/-! ## A006230.P18154975611222445330

`12*(3-3*2^(n+2)+3^(n+2))/6+1`
-/

namespace A006230.P18154975611222445330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * (3 - (3 * 2 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ)) : ℚ) / 6 + 1

end

end A006230.P18154975611222445330

namespace A006230

/-- `12*(3-3*2^(n+2)+3^(n+2))/6+1` -/
def P18154975611222445330.Spec : Prop :=
  ∀ n, P18154975611222445330.a n = (A006230 (n + 4) : ℚ)

theorem P18154975611222445330.correct : P18154975611222445330.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A006230, Nat.add_sub_cancel, A006230.P18154975611222445330.a, A006230.P4041661181879863379.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A006230, Nat.add_sub_cancel, A006230.P18154975611222445330.a, A006230.P4041661181879863379.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006230

/-! ## A006230.P15564842368554468943

`∑[ogf((1+7x+6x^2)/(1-5x+6x^2))]`
-/

namespace A006230.P15564842368554468943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 6] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006230.P15564842368554468943

namespace A006230

/-- `∑[ogf((1+7x+6x^2)/(1-5x+6x^2))]` -/
def P15564842368554468943.Spec : Prop :=
  ∀ n, P15564842368554468943.a n = A006230 (n + 4)

end A006230

/-! ## A006230.P16317552159363669865

`xor(1, 2*A056454(2*(n+2)))`
-/

namespace A006230.P16317552159363669865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A056454 (2 * (n + 2)))

end

end A006230.P16317552159363669865

namespace A006230

/-- `xor(1, 2*A056454(2*(n+2)))` -/
def P16317552159363669865.Spec : Prop :=
  ∀ n, P16317552159363669865.a n = A006230 (n + 4)

end A006230

/-! ## A006230.P11142238836635084542

`or(1, 2*A056454(2*(n+1)+1))`
-/

namespace A006230.P11142238836635084542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A056454 (2 * (n + 1) + 1))

end

end A006230.P11142238836635084542

namespace A006230

/-- `or(1, 2*A056454(2*(n+1)+1))` -/
def P11142238836635084542.Spec : Prop :=
  ∀ n, P11142238836635084542.a n = A006230 (n + 4)

end A006230

/-! ## A006230.P3216017078312711284

`A235876(n+1)%A140529(n)`
-/

namespace A006230.P3216017078312711284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235876 (n + 1)) (A140529 n)

end

end A006230.P3216017078312711284

namespace A006230

/-- `A235876(n+1)%A140529(n)` -/
def P3216017078312711284.Spec : Prop :=
  ∀ n, P3216017078312711284.a n = A006230 (n + 4)

end A006230

/-! ## A006230.P8572479889248823798

`A272644(∑[n+3]+2)`
-/

namespace A006230.P8572479889248823798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006230.P8572479889248823798

namespace A006230

/-- `A272644(∑[n+3]+2)` -/
def P8572479889248823798.Spec : Prop :=
  ∀ n, P8572479889248823798.a n = A006230 (n + 4)

end A006230

/-!
# A006231: a(n) = Sum_{k=2..n} n(n-1)...(n-k+1)/k.

The programs for A006231, there is no canonical definition to state claims against.
-/

/-! ## A006231.P13659186585963882064

`∑[n!*∑[n/n!]]`
-/

namespace A006231.P13659186585963882064
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006231.P13659186585963882064

/-! ## A006231.P11434399726103229667

`∑[n*(a(n-1)+1)]` with `a(0)=0`
-/

namespace A006231.P11434399726103229667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n * (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006231.P11434399726103229667

/-! ## A006231.P4687884524417792949

`∑[lcm(n, a(n-1))+n]` with `a(0)=0`
-/

namespace A006231.P4687884524417792949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lcm n (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006231.P4687884524417792949

/-! ## A006231.P10965964857137884561

`abs(∑[n*(a(n-1)-1)])` with `a(0)=0`
-/

namespace A006231.P10965964857137884561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A006231.P10965964857137884561

/-! ## A006231.P17926529524928781212

`-∑[n*(a(n-1)-1)]` with `a(0)=0`
-/

namespace A006231.P17926529524928781212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006231.P17926529524928781212

/-! ## A006231.P17871226643746453703

`∑[(a(n-1)+1)/n^(-1)]` with `a(0)=0`
-/

namespace A006231.P17871226643746453703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 (n - 1) + 1) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006231.P17871226643746453703

/-! ## A006231.P14964322865897926795

`1-∑[n*(a(n-1)-1)]` with `a(0)=1, a(1)=-1`
-/

namespace A006231.P14964322865897926795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006231.P14964322865897926795

/-! ## A006231.P6255042932390455659

`a(n-1)+n*(a(n-1)+1-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A006231.P6255042932390455659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (n : ℤ) * (a (n - 1) + (1 - a (n - 2)))

end

end A006231.P6255042932390455659

/-! ## A006231.P16660493144486861537

`a(n-1)-n*(a(n-2)-1-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A006231.P16660493144486861537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (n : ℤ) * (a (n - 2) - 1 - a (n - 1))

end

end A006231.P16660493144486861537

/-! ## A006231.P17130831669657538597

`∑[A007526(n)]`
-/

namespace A006231.P17130831669657538597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006231.P17130831669657538597

/-!
# A006232: Numerators of Cauchy numbers of first type.

The programs for A006232, there is no canonical definition to state claims against.
-/

/-! ## A006232.P14799308212861079648

`A290317(∑[n])`
-/

namespace A006232.P14799308212861079648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006232.P14799308212861079648

/-! ## A006232.P5683859279082948451

`A209123(∑[n]+n)`
-/

namespace A006232.P5683859279082948451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209123 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006232.P5683859279082948451

/-! ## A006232.P4723456469670007982

`or(1, A209123(A000096(n)))`
-/

namespace A006232.P4723456469670007982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A209123 (A000096 n).toNat)

end

end A006232.P4723456469670007982

/-! ## A006232.P2855775306337952435

`or(1, A290317(A000217(n)))`
-/

namespace A006232.P2855775306337952435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290317 (A000217 n).toNat)

end

end A006232.P2855775306337952435

/-! ## A006232.P5081526188283867386

`or(1, A290317(A179865(n+1)))`
-/

namespace A006232.P5081526188283867386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290317 (A179865 (n + 1)).toNat)

end

end A006232.P5081526188283867386

/-!
# A006233: Denominators of Cauchy numbers of first type.

The programs for A006233, there is no canonical definition to state claims against.
-/

/-! ## A006233.P16475306621801255509

`A002790(n)/A000045(A216506(n+2))`
-/

namespace A006233.P16475306621801255509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A000045 (A216506 (n + 2)).toNat : ℚ)

end

end A006233.P16475306621801255509

/-! ## A006233.P14925776470693261491

`A164020(n)/A000045(A216506(n+2))*A165299(n)`
-/

namespace A006233.P14925776470693261491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164020 n : ℚ) / (A000045 (A216506 (n + 2)).toNat : ℚ) * (A165299 n : ℚ)

end

end A006233.P14925776470693261491

/-! ## A006233.P16008248330977914374

`A002790(n)/A009194(A000051(n))`
-/

namespace A006233.P16008248330977914374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A009194 (A000051 n).toNat : ℚ)

end

end A006233.P16008248330977914374

/-! ## A006233.P2128345767841392606

`A002790(n)/A336850(A080107(n))`
-/

namespace A006233.P2128345767841392606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A336850 (A080107 n).toNat : ℚ)

end

end A006233.P2128345767841392606

/-!
# A006234: a(n) = n*3^(n-4).

The programs for A006234, the canonical program `A006234.P187199697909723824` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006234 has offset 3).

The definition of A006234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006234.P187199697909723824

`(n+3)*3^(n-1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006234

/-- `(n+3)*3^(n-1)` -/
def P187199697909723824.Spec : Prop :=
  ∀ n, P187199697909723824.a n = (A006234 (n + 3) : ℚ)

end A006234

/-! ## A006234.P16028720985985860940

`ogf((1-2x)/(1-6x+9x^2))`
-/

namespace A006234.P16028720985985860940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 9] n

end

end A006234.P16028720985985860940

namespace A006234

/-- `ogf((1-2x)/(1-6x+9x^2))` -/
def P16028720985985860940.Spec : Prop :=
  ∀ n, P16028720985985860940.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P12629573023839807353

`3^(n-1)/tan(acot(n+3))`
-/

namespace A006234.P12629573023839807353
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / Real.tan (SequenceMachineLib.acot (n + 3 : ℝ))

end

end A006234.P12629573023839807353

namespace A006234

/-- `3^(n-1)/tan(acot(n+3))` -/
def P12629573023839807353.Spec : Prop :=
  ∀ n, P12629573023839807353.a n = (A006234 (n + 3) : ℝ)

end A006234

/-! ## A006234.P1051012189743425378

`record[(3/n+3)*a(n-1)]` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A006234.P1051012189743425378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 1] fun n f1 =>
  (3 / (n : ℚ) + 3) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006234.P1051012189743425378

namespace A006234

/-- `record[(3/n+3)*a(n-1)]` -/
def P1051012189743425378.Spec : Prop :=
  ∀ n, P1051012189743425378.a n = (A006234 (n + 3) : ℚ)

end A006234

/-! ## A006234.P16838853702293263243

`floor((3/(n+2)+3)*a(n-1))` with `a(0)=1`
-/

namespace A006234.P16838853702293263243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(3 / (n + 2 : ℚ) + 3) * (a (n - 1) : ℚ)⌋

end

end A006234.P16838853702293263243

namespace A006234

/-- `floor((3/(n+2)+3)*a(n-1))` -/
def P16838853702293263243.Spec : Prop :=
  ∀ n, P16838853702293263243.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P9582057023109216560

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A006234.P9582057023109216560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A006234.P9582057023109216560

namespace A006234

/-- `6*a(n-1)-9*a(n-2)` -/
def P9582057023109216560.Spec : Prop :=
  ∀ n, P9582057023109216560.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P4676131763456770072

`Δ[A392266(n)]`
-/

namespace A006234.P4676131763456770072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006234.P4676131763456770072

namespace A006234

/-- `Δ[A392266(n)]` -/
def P4676131763456770072.Spec : Prop :=
  ∀ n, P4676131763456770072.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P7112407055304682218

`A199923(n+1)/2`
-/

namespace A006234.P7112407055304682218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199923 (n + 1) : ℚ) / 2

end

end A006234.P7112407055304682218

namespace A006234

/-- `A199923(n+1)/2` -/
def P7112407055304682218.Spec : Prop :=
  ∀ n, P7112407055304682218.a n = (A006234 (n + 3) : ℚ)

end A006234

/-! ## A006234.P6742379566577772678

`2*A082306(n)-(n+1)`
-/

namespace A006234.P6742379566577772678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082306 n - (n + 1 : ℤ)

end

end A006234.P6742379566577772678

namespace A006234

/-- `2*A082306(n)-(n+1)` -/
def P6742379566577772678.Spec : Prop :=
  ∀ n, P6742379566577772678.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P14818916449890990253

`2*A087448(n)+n-1`
-/

namespace A006234.P14818916449890990253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087448 n + ((n : ℤ) - 1)

end

end A006234.P14818916449890990253

namespace A006234

/-- `2*A087448(n)+n-1` -/
def P14818916449890990253.Spec : Prop :=
  ∀ n, P14818916449890990253.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P2750352357524288164

`A027471(n+1)+3^n`
-/

namespace A006234.P2750352357524288164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (3 ^ n : ℤ)

end

end A006234.P2750352357524288164

namespace A006234

/-- `A027471(n+1)+3^n` -/
def P2750352357524288164.Spec : Prop :=
  ∀ n, P2750352357524288164.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P11044268617737289701

`A038765(n+1)-3^n`
-/

namespace A006234.P11044268617737289701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038765 (n + 1) - (3 ^ n : ℤ)

end

end A006234.P11044268617737289701

namespace A006234

/-- `A038765(n+1)-3^n` -/
def P11044268617737289701.Spec : Prop :=
  ∀ n, P11044268617737289701.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P11173535402127839771

`A133494(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A006234.P11173535402127839771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133494 n + 3 * a (n - 1)

end

end A006234.P11173535402127839771

namespace A006234

/-- `A133494(n)+3*a(n-1)` -/
def P11173535402127839771.Spec : Prop :=
  ∀ n, P11173535402127839771.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P10410579705743273396

`A140429(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A006234.P10410579705743273396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140429 n + 3 * a (n - 1)

end

end A006234.P10410579705743273396

namespace A006234

/-- `A140429(n)+3*a(n-1)` -/
def P10410579705743273396.Spec : Prop :=
  ∀ n, P10410579705743273396.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P16219231089171537318

`A155734(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A006234.P16219231089171537318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155734 n + 3 * a (n - 1)

end

end A006234.P16219231089171537318

namespace A006234

/-- `A155734(n)+3*a(n-1)` -/
def P16219231089171537318.Spec : Prop :=
  ∀ n, P16219231089171537318.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P15977411223106125627

`A086972(n)+A003462(n)`
-/

namespace A006234.P15977411223106125627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086972 n + A003462 n

end

end A006234.P15977411223106125627

namespace A006234

/-- `A086972(n)+A003462(n)` -/
def P15977411223106125627.Spec : Prop :=
  ∀ n, P15977411223106125627.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P8096274115116307506

`A274499(n)+A133125(n)`
-/

namespace A006234.P8096274115116307506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274499 n + A133125 n

end

end A006234.P8096274115116307506

namespace A006234

/-- `A274499(n)+A133125(n)` -/
def P8096274115116307506.Spec : Prop :=
  ∀ n, P8096274115116307506.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P3005617721225762793

`A140429(n)+A064017(n+1)`
-/

namespace A006234.P3005617721225762793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A064017 (n + 1)

end

end A006234.P3005617721225762793

namespace A006234

/-- `A140429(n)+A064017(n+1)` -/
def P3005617721225762793.Spec : Prop :=
  ∀ n, P3005617721225762793.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P3144735217878415462

`A007051(n)+A086972(n)-1`
-/

namespace A006234.P3144735217878415462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (A086972 n - 1)

end

end A006234.P3144735217878415462

namespace A006234

/-- `A007051(n)+A086972(n)-1` -/
def P3144735217878415462.Spec : Prop :=
  ∀ n, P3144735217878415462.a n = A006234 (n + 3)

end A006234

/-! ## A006234.P2778070077017218587

`A081038(n)-A027471(n+1)`
-/

namespace A006234.P2778070077017218587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 n - A027471 (n + 1)

end

end A006234.P2778070077017218587

namespace A006234

/-- `A081038(n)-A027471(n+1)` -/
def P2778070077017218587.Spec : Prop :=
  ∀ n, P2778070077017218587.a n = A006234 (n + 3)

end A006234

/-!
# A006235: Number of spanning trees of the n-prism graph Y_n (regarding case n = 2 as a multigraph).

The programs for A006235, the canonical program `A006235.P9096983184601852909` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006235 has offset 1).

The definition of A006235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006235.P9096983184601852909

`(n+1)*(A001075(n+1)-1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006235

/-- `(n+1)*(A001075(n+1)-1)` -/
def P9096983184601852909.Spec : Prop :=
  ∀ n, P9096983184601852909.a n = A006235 (n + 1)

theorem P9096983184601852909.correct : P9096983184601852909.Spec := by
  intro n
  simp only [A006235, Nat.add_sub_cancel]

end A006235

/-! ## A006235.P11789550500891479835

`(n+1)/2*A129743(n+1)`
-/

namespace A006235.P11789550500891479835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A129743 (n + 1) : ℚ)

end

end A006235.P11789550500891479835

namespace A006235

/-- `(n+1)/2*A129743(n+1)` -/
def P11789550500891479835.Spec : Prop :=
  ∀ n, P11789550500891479835.a n = (A006235 (n + 1) : ℚ)

end A006235

/-! ## A006235.P13280222688300106540

`(n+1)*∑[∑[ceil((sqrt(3)+2)^n)]]`
-/

namespace A006235.P13280222688300106540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006235.P13280222688300106540

namespace A006235

/-- `(n+1)*∑[∑[ceil((sqrt(3)+2)^n)]]` -/
def P13280222688300106540.Spec : Prop :=
  ∀ n, P13280222688300106540.a n = A006235 (n + 1)

end A006235

/-! ## A006235.P1839476595697540146

`∑[Δ[A020871(n)]-2]`
-/

namespace A006235.P1839476595697540146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020871 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006235.P1839476595697540146

namespace A006235

/-- `∑[Δ[A020871(n)]-2]` -/
def P1839476595697540146.Spec : Prop :=
  ∀ n, P1839476595697540146.a n = A006235 (n + 1)

end A006235

/-! ## A006235.P14131109466780153063

`A278417(n+1)-(n+1)`
-/

namespace A006235.P14131109466780153063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278417 (n + 1) - (n + 1 : ℤ)

end

end A006235.P14131109466780153063

namespace A006235

/-- `A278417(n+1)-(n+1)` -/
def P14131109466780153063.Spec : Prop :=
  ∀ n, P14131109466780153063.a n = A006235 (n + 1)

end A006235

/-! ## A006235.P12034679684289240273

`A020871(n+1)-2*(n+1)`
-/

namespace A006235.P12034679684289240273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020871 (n + 1) - (2 * (n + 1) : ℤ)

end

end A006235.P12034679684289240273

namespace A006235

/-- `A020871(n+1)-2*(n+1)` -/
def P12034679684289240273.Spec : Prop :=
  ∀ n, P12034679684289240273.a n = A006235 (n + 1)

end A006235

/-! ## A006235.P6844299777156063305

`lcm(or(1, C(2, n)), A072373(n+1))`
-/

namespace A006235.P6844299777156063305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lor 1 (Nat.choose 2 n) : ℤ) (A072373 (n + 1))

end

end A006235.P6844299777156063305

namespace A006235

/-- `lcm(or(1, C(2, n)), A072373(n+1))` -/
def P6844299777156063305.Spec : Prop :=
  ∀ n, (P6844299777156063305.a n : ℤ) = A006235 (n + 1)

end A006235

/-! ## A006235.P10805894089135483073

`lcm(A010684(n), A072373(n+1))`
-/

namespace A006235.P10805894089135483073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A072373 (n + 1))

end

end A006235.P10805894089135483073

namespace A006235

/-- `lcm(A010684(n), A072373(n+1))` -/
def P10805894089135483073.Spec : Prop :=
  ∀ n, (P10805894089135483073.a n : ℤ) = A006235 (n + 1)

end A006235

/-! ## A006235.P2000416613621534504

`A020871(n+1)*A092184(n+1)/A102206(n)`
-/

namespace A006235.P2000416613621534504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020871 (n + 1) * A092184 (n + 1) : ℚ) / (A102206 n : ℚ)

end

end A006235.P2000416613621534504

namespace A006235

/-- `A020871(n+1)*A092184(n+1)/A102206(n)` -/
def P2000416613621534504.Spec : Prop :=
  ∀ n, P2000416613621534504.a n = (A006235 (n + 1) : ℚ)

end A006235

/-! ## A006235.P6077867520255018908

`A020871(n+1)*A092184(n+1)/A121401(n+1)`
-/

namespace A006235.P6077867520255018908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020871 (n + 1) * A092184 (n + 1) : ℚ) / (A121401 (n + 1) : ℚ)

end

end A006235.P6077867520255018908

namespace A006235

/-- `A020871(n+1)*A092184(n+1)/A121401(n+1)` -/
def P6077867520255018908.Spec : Prop :=
  ∀ n, P6077867520255018908.a n = (A006235 (n + 1) : ℚ)

end A006235

/-!
# A006236: a(n) = n^(n-2)*(n+2)^(n-1).

The programs for A006236, the canonical program `A006236.P8418489764481886021` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006236 has offset 1).

The definition of A006236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006236.P8418489764481886021

`(n+1)^(n-1)*(n+3)^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006236

/-- `(n+1)^(n-1)*(n+3)^n` -/
def P8418489764481886021.Spec : Prop :=
  ∀ n, P8418489764481886021.a n = (A006236 (n + 1) : ℚ)

end A006236

/-! ## A006236.P2740951326625129268

`floor(∑[a(n-1)+2]^n/(n+1))` with `a(0)=3`
-/

namespace A006236.P2740951326625129268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ n : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A006236.P2740951326625129268

namespace A006236

/-- `floor(∑[a(n-1)+2]^n/(n+1))` -/
def P2740951326625129268.Spec : Prop :=
  ∀ n, P2740951326625129268.a n = A006236 (n + 1)

end A006236

/-! ## A006236.P2619355430170091998

`A005563(n+1)^n/(n+1)`
-/

namespace A006236.P2619355430170091998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 (n + 1) ^ n : ℚ) / (n + 1 : ℚ)

end

end A006236.P2619355430170091998

namespace A006236

/-- `A005563(n+1)^n/(n+1)` -/
def P2619355430170091998.Spec : Prop :=
  ∀ n, P2619355430170091998.a n = (A006236 (n + 1) : ℚ)

end A006236

/-! ## A006236.P2603808944299357549

`A384845(∑[n+1]+2)`
-/

namespace A006236.P2603808944299357549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384845 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006236.P2603808944299357549

namespace A006236

/-- `A384845(∑[n+1]+2)` -/
def P2603808944299357549.Spec : Prop :=
  ∀ n, P2603808944299357549.a n = A006236 (n + 1)

end A006236

/-!
# A006237: Number of spanning trees of n-cube.

The programs for A006237, there is no canonical definition to state claims against.
-/

/-! ## A006237.P1838999154698009085

`A338832(2^n)`
-/

namespace A006237.P1838999154698009085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338832 (2 ^ n)

end

end A006237.P1838999154698009085

/-!
# A006238: Number of spanning trees in the 3 X n grid graph.

The programs for A006238, the canonical program `A006238.P18425104944193782718` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006238 has offset 1).

The definition of A006238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006238.P18425104944193782718

`A001906(n+1)*A004254(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006238

/-- `A001906(n+1)*A004254(n+1)` -/
def P18425104944193782718.Spec : Prop :=
  ∀ n, P18425104944193782718.a n = A006238 (n + 1)

theorem P18425104944193782718.correct : P18425104944193782718.Spec := by
  intro n
  simp only [A006238, Nat.add_sub_cancel]

end A006238

/-! ## A006238.P18115828824253645477

`A189003(Δ[n²])`
-/

namespace A006238.P18115828824253645477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006238.P18115828824253645477

namespace A006238

/-- `A189003(Δ[n²])` -/
def P18115828824253645477.Spec : Prop :=
  ∀ n, P18115828824253645477.a n = A006238 (n + 1)

end A006238

/-! ## A006238.P4589966645998802740

`root(A189003(2*n+1), 2)²`
-/

namespace A006238.P4589966645998802740
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A189003 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A006238.P4589966645998802740

namespace A006238

/-- `root(A189003(2*n+1), 2)²` -/
def P4589966645998802740.Spec : Prop :=
  ∀ n, P4589966645998802740.a n = (A006238 (n + 1) : ℝ)

end A006238

/-! ## A006238.P5923977110059360507

`record[A189003(A026741(n))]`
-/

namespace A006238.P5923977110059360507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006238.P5923977110059360507

namespace A006238

/-- `record[A189003(A026741(n))]` -/
def P5923977110059360507.Spec : Prop :=
  ∀ n, P5923977110059360507.a n = A006238 (n + 1)

end A006238

/-! ## A006238.P16359797480735429309

`record[A189003(abs(A009001(n)))]`
-/

namespace A006238.P16359797480735429309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006238.P16359797480735429309

namespace A006238

/-- `record[A189003(abs(A009001(n)))]` -/
def P16359797480735429309.Spec : Prop :=
  ∀ n, P16359797480735429309.a n = A006238 (n + 1)

end A006238

/-! ## A006238.P8578645789829067797

`record[A189003(A000265(n+1))]`
-/

namespace A006238.P8578645789829067797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006238.P8578645789829067797

namespace A006238

/-- `record[A189003(A000265(n+1))]` -/
def P8578645789829067797.Spec : Prop :=
  ∀ n, P8578645789829067797.a n = A006238 (n + 1)

end A006238

/-! ## A006238.P14983282460334031492

`record[A189003(A014681(n)+1)]`
-/

namespace A006238.P14983282460334031492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006238.P14983282460334031492

namespace A006238

/-- `record[A189003(A014681(n)+1)]` -/
def P14983282460334031492.Spec : Prop :=
  ∀ n, P14983282460334031492.a n = A006238 (n + 1)

end A006238

/-! ## A006238.P15519909506520510771

`record[A189003(A185782(n+1))]`
-/

namespace A006238.P15519909506520510771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (A185782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006238.P15519909506520510771

namespace A006238

/-- `record[A189003(A185782(n+1))]` -/
def P15519909506520510771.Spec : Prop :=
  ∀ n, P15519909506520510771.a n = A006238 (n + 1)

end A006238

/-! ## A006238.P11046493000663180151

`record[A189003(A033999(n)+n)]`
-/

namespace A006238.P11046493000663180151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006238.P11046493000663180151

namespace A006238

/-- `record[A189003(A033999(n)+n)]` -/
def P11046493000663180151.Spec : Prop :=
  ∀ n, P11046493000663180151.a n = A006238 (n + 1)

end A006238

/-! ## A006238.P17744566703603095374

`A004254(n+1)*A094966(2*n+1)`
-/

namespace A006238.P17744566703603095374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (n + 1) * A094966 (2 * n + 1)

end

end A006238.P17744566703603095374

namespace A006238

/-- `A004254(n+1)*A094966(2*n+1)` -/
def P17744566703603095374.Spec : Prop :=
  ∀ n, P17744566703603095374.a n = A006238 (n + 1)

end A006238

/-!
# A006239: Row 3 of array in A212801.

The programs for A006239, there is no canonical definition to state claims against.
-/

/-! ## A006239.P13445352212519318247

`A212801(∑[n+2]+4)`
-/

namespace A006239.P13445352212519318247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A006239.P13445352212519318247

/-! ## A006239.P10800885551735930760

`A212801(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A006239.P10800885551735930760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212801 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A006239.P10800885551735930760

/-! ## A006239.P8194837412415414629

`((-1)^n)²*A212801(A046691(n)+7)`
-/

namespace A006239.P8194837412415414629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A212801 (A046691 n + 7).toNat

end

end A006239.P8194837412415414629

/-! ## A006239.P18022673767197387146

`lcm(A033999(n), A212801(A167614(n+1)))`
-/

namespace A006239.P18022673767197387146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A212801 (A167614 (n + 1)).toNat)

end

end A006239.P18022673767197387146

/-! ## A006239.P2063565564419940917

`record[A212801(A286158(n+1))]`
-/

namespace A006239.P2063565564419940917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (A286158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006239.P2063565564419940917

/-!
# A006240: Row 4 of array in A212801.

The programs for A006240, there is no canonical definition to state claims against.
-/

/-! ## A006240.P13267451904576617938

`A212801(A052905(n)+9)`
-/

namespace A006240.P13267451904576617938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (A052905 n + 9).toNat

end

end A006240.P13267451904576617938

/-! ## A006240.P13534658456628236655

`A212801(A055999(n)+10)`
-/

namespace A006240.P13534658456628236655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (A055999 n + 10).toNat

end

end A006240.P13534658456628236655

/-! ## A006240.P5790009230848484375

`A212801(A167614(n+2)+1)`
-/

namespace A006240.P5790009230848484375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (A167614 (n + 2) + 1).toNat

end

end A006240.P5790009230848484375

/-! ## A006240.P15745690495587389048

`A212801(Δ[A264443(n)-n²])`
-/

namespace A006240.P15745690495587389048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (f1 (n + 1) - f1 n).toNat

end

end A006240.P15745690495587389048

/-! ## A006240.P9549935781561739593

`A212801(Δ[A023545(n+1)-n²])`
-/

namespace A006240.P9549935781561739593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (f1 (n + 1) - f1 n).toNat

end

end A006240.P9549935781561739593

/-!
# A006241: Number of minimal plane trees with n terminal nodes.

The programs for A006241, there is no canonical definition to state claims against.
-/

/-! ## A006241.P11835757558332715462

`A301366(∑[n+1])`
-/

namespace A006241.P11835757558332715462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301366 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006241.P11835757558332715462

/-! ## A006241.P9486406095781535848

`or(char[1], A301366(A000217(n+1)))`
-/

namespace A006241.P9486406095781535848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A301366 (A000217 (n + 1)).toNat)

end

end A006241.P9486406095781535848

/-! ## A006241.P6467723008896681911

`A301366(A000217(n+1))%A000051(n)`
-/

namespace A006241.P6467723008896681911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301366 (A000217 (n + 1)).toNat) (A000051 n)

end

end A006241.P6467723008896681911

/-! ## A006241.P15241387678325126167

`A178334(n)!*A301366(A000217(n+1))`
-/

namespace A006241.P15241387678325126167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A178334 n).toNat : ℤ) * A301366 (A000217 (n + 1)).toNat

end

end A006241.P15241387678325126167

/-! ## A006241.P9130377592236518476

`lcm(A330034(n)², A301366(A000217(n+1)))`
-/

namespace A006241.P9130377592236518476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A330034 n ^ 2) (A301366 (A000217 (n + 1)).toNat)

end

end A006241.P9130377592236518476

/-! ## A006241.P2279115296646362124

`char[A033461(n)]*A301366(A000217(n+1))`
-/

namespace A006241.P2279115296646362124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A301366 (A000217 (n + 1)).toNat

end

end A006241.P2279115296646362124

/-! ## A006241.P5492048748304278974

`A007318(C(2, n))*A301366(A000217(n+1))`
-/

namespace A006241.P5492048748304278974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A301366 (A000217 (n + 1)).toNat

end

end A006241.P5492048748304278974

/-! ## A006241.P9205156784549016152

`A301366(A000217(n+1))^A000041(C(2, n))`
-/

namespace A006241.P9205156784549016152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301366 (A000217 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A006241.P9205156784549016152

/-! ## A006241.P1225770793923252656

`A301366(A000217(n+1))/A000010(C(2, n)!)`
-/

namespace A006241.P1225770793923252656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301366 (A000217 (n + 1)).toNat : ℚ) / (A000010 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A006241.P1225770793923252656

/-!
# A006242: 

The programs for A006242, there is no canonical definition to state claims against.
-/

/-! ## A006242.P16031702482461407795

`(a(n-1)²-3)*a(n-1)` with `a(0)=10`
-/

namespace A006242.P16031702482461407795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (a (n - 1) ^ 2 - 3) * a (n - 1)

end

end A006242.P16031702482461407795

/-!
# A006244: Hexagonal numbers (A000384) which are also centered hexagonal numbers (A003215).

The programs for A006244, the canonical program `A006244.P11194458159136341317` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006244 has offset 1).

The definition of A006244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006244.P11194458159136341317

`(A007667(n+1)-1)/4`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006244

/-- `(A007667(n+1)-1)/4` -/
def P11194458159136341317.Spec : Prop :=
  ∀ n, P11194458159136341317.a n = (A006244 (n + 1) : ℚ)

end A006244

/-! ## A006244.P3736066935157674337

`3*A352182(n)+1`
-/

namespace A006244.P3736066935157674337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A352182 n + 1

end

end A006244.P3736066935157674337

namespace A006244

/-- `3*A352182(n)+1` -/
def P3736066935157674337.Spec : Prop :=
  ∀ n, P3736066935157674337.a n = A006244 (n + 1)

end A006244

/-! ## A006244.P11083016073461922843

`6*A200994(n)+1`
-/

namespace A006244.P11083016073461922843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A200994 n + 1

end

end A006244.P11083016073461922843

namespace A006244

/-- `6*A200994(n)+1` -/
def P11083016073461922843.Spec : Prop :=
  ∀ n, P11083016073461922843.a n = A006244 (n + 1)

end A006244

/-! ## A006244.P3988898490083199176

`9*A200993(n)+1`
-/

namespace A006244.P3988898490083199176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A200993 n + 1

end

end A006244.P3988898490083199176

namespace A006244

/-- `9*A200993(n)+1` -/
def P3988898490083199176.Spec : Prop :=
  ∀ n, P3988898490083199176.a n = A006244 (n + 1)

end A006244

/-! ## A006244.P18384933015998892250

`floor(9/20*A269552(n))`
-/

namespace A006244.P18384933015998892250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) / 20 * (A269552 n : ℚ)⌋

end

end A006244.P18384933015998892250

namespace A006244

/-- `floor(9/20*A269552(n))` -/
def P18384933015998892250.Spec : Prop :=
  ∀ n, P18384933015998892250.a n = A006244 (n + 1)

end A006244

/-! ## A006244.P11602724388434572425

`6*floor(A006061(n+1)/8)+1`
-/

namespace A006244.P11602724388434572425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(A006061 (n + 1) : ℚ) / 8⌋ + 1

end

end A006244.P11602724388434572425

namespace A006244

/-- `6*floor(A006061(n+1)/8)+1` -/
def P11602724388434572425.Spec : Prop :=
  ∀ n, P11602724388434572425.a n = A006244 (n + 1)

end A006244

/-! ## A006244.P4781845332886636413

`A373081(A008706(n))`
-/

namespace A006244.P4781845332886636413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373081 (A008706 n).toNat

end

end A006244.P4781845332886636413

namespace A006244

/-- `A373081(A008706(n))` -/
def P4781845332886636413.Spec : Prop :=
  ∀ n, P4781845332886636413.a n = A006244 (n + 1)

end A006244

/-! ## A006244.P8657255545576481388

`A200993(n)+A138288(n)²`
-/

namespace A006244.P8657255545576481388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200993 n + A138288 n ^ 2

end

end A006244.P8657255545576481388

namespace A006244

/-- `A200993(n)+A138288(n)²` -/
def P8657255545576481388.Spec : Prop :=
  ∀ n, P8657255545576481388.a n = A006244 (n + 1)

end A006244

/-! ## A006244.P4297357070605748173

`∑[A004291(n)]*A253175(n+1)`
-/

namespace A006244.P4297357070605748173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A253175 (n + 1)

end

end A006244.P4297357070605748173

namespace A006244

/-- `∑[A004291(n)]*A253175(n+1)` -/
def P4297357070605748173.Spec : Prop :=
  ∀ n, P4297357070605748173.a n = A006244 (n + 1)

end A006244

/-! ## A006244.P3115039194254748815

`A031138(n+1)*A253175(n+1)`
-/

namespace A006244.P3115039194254748815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031138 (n + 1) * A253175 (n + 1)

end

end A006244.P3115039194254748815

namespace A006244

/-- `A031138(n+1)*A253175(n+1)` -/
def P3115039194254748815.Spec : Prop :=
  ∀ n, P3115039194254748815.a n = A006244 (n + 1)

end A006244

/-!
# A006245: Number of primitive sorting networks on n elements; also number of rhombic tilings of a 2n-gon.

The programs for A006245, there is no canonical definition to state claims against.
-/

/-! ## A006245.P7155628751141116059

`A060637(∑[char[1]+1+n]+1)`
-/

namespace A006245.P7155628751141116059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006245.P7155628751141116059

/-! ## A006245.P2800953778056961088

`A001912(A266195(n!))`
-/

namespace A006245.P2800953778056961088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (A266195 (Nat.factorial n)).toNat

end

end A006245.P2800953778056961088

/-!
# A006246: Number of simple arrangements of pseudolines in the projective plane with an oriented marked cell; number of oriented abstract order types of n points (distinguishing mirror-symmetric copies).

The programs for A006246, there is no canonical definition to state claims against.
-/

/-! ## A006246.P16683699969793692561

`A351593(2^n-Δ[ceil(C(n, 2)/2)])`
-/

namespace A006246.P16683699969793692561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 ((2 ^ n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A006246.P16683699969793692561

/-! ## A006246.P9045960876024955126

`A160718(A044047(n))`
-/

namespace A006246.P9045960876024955126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160718 (A044047 n).toNat

end

end A006246.P9045960876024955126

/-! ## A006246.P6982177777949666563

`A193821(A104545(n))`
-/

namespace A006246.P6982177777949666563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193821 (A104545 n).toNat

end

end A006246.P6982177777949666563

/-!
# A006247: Number of simple arrangements of n pseudolines in the projective plane with a marked cell. Number of Euclidean pseudo-order types: nondegenerate abstract order types of configurations of n points in the plane.

The programs for A006247, there is no canonical definition to state claims against.
-/

/-! ## A006247.P7646337399629218845

`A004525(A325628(n+1)+A006246(n+1))`
-/

namespace A006247.P7646337399629218845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A325628 (n + 1) + A006246 (n + 1)).toNat

end

end A006247.P7646337399629218845

/-! ## A006247.P6245700209630051412

`A026741(A325628(n+1)+A006246(n+1))`
-/

namespace A006247.P6245700209630051412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A325628 (n + 1) + A006246 (n + 1)).toNat

end

end A006247.P6245700209630051412

/-! ## A006247.P14702849644034854660

`A032742(A325628(n+1)+A006246(n+1))`
-/

namespace A006247.P14702849644034854660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A325628 (n + 1) + A006246 (n + 1)).toNat

end

end A006247.P14702849644034854660

/-! ## A006247.P15403121712932149970

`A065033(A325628(n+1)+A006246(n+1))`
-/

namespace A006247.P15403121712932149970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A325628 (n + 1) + A006246 (n + 1)).toNat

end

end A006247.P15403121712932149970

/-!
# A006248: Number of projective pseudo order types: simple arrangements of pseudo-lines in the projective plane.

The programs for A006248, there is no canonical definition to state claims against.
-/

/-! ## A006248.P12115144438127673541

`A063851(A016028(n+1)+3)`
-/

namespace A006248.P12115144438127673541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063851 (A016028 (n + 1) + 3).toNat

end

end A006248.P12115144438127673541

/-! ## A006248.P16221416006092084935

`A063851(A001953(n+4)-A292138(3*n+1))`
-/

namespace A006248.P16221416006092084935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063851 (A001953 (n + 4) - A292138 (3 * n + 1)).toNat

end

end A006248.P16221416006092084935

/-! ## A006248.P695604484464214648

`A063851(A036469(n)+2)`
-/

namespace A006248.P695604484464214648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063851 (A036469 n + 2).toNat

end

end A006248.P695604484464214648

/-! ## A006248.P10506770302862172000

`A063851(∑[A000009(n)]+2)`
-/

namespace A006248.P10506770302862172000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063851 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A006248.P10506770302862172000

/-! ## A006248.P2677487882616115359

`A063851(A027336(n+3)+1)`
-/

namespace A006248.P2677487882616115359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063851 (A027336 (n + 3) + 1).toNat

end

end A006248.P2677487882616115359

/-!
# A006251: Number of n-element posets which are unions of 2 chains.

The programs for A006251, there is no canonical definition to state claims against.
-/

/-! ## A006251.P389611171007878596

`A049401(n)-A184955(A163985(n))`
-/

namespace A006251.P389611171007878596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049401 n - A184955 (A163985 n).toNat

end

end A006251.P389611171007878596

/-! ## A006251.P8691847709348245483

`A049401(n)-A184955(A322457(n+1))`
-/

namespace A006251.P8691847709348245483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049401 n - A184955 (A322457 (n + 1)).toNat

end

end A006251.P8691847709348245483

/-! ## A006251.P12666777321966711844

`A049401(n)-A048571(A324093(n+3))`
-/

namespace A006251.P12666777321966711844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049401 n - A048571 (A324093 (n + 3)).toNat

end

end A006251.P12666777321966711844

/-!
# A006252: Expansion of e.g.f. 1/(1 - log(1+x)).

The programs for A006252, there is no canonical definition to state claims against.
-/

/-! ## A006252.P18164213450422997737

`A079639(∑[abs(1-n)])`
-/

namespace A006252.P18164213450422997737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006252.P18164213450422997737

/-! ## A006252.P10581749364001757925

`A306038(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A006252.P10581749364001757925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A306038 n - (n : ℤ) * a (n - 1)

end

end A006252.P10581749364001757925

/-! ## A006252.P12116098271863271609

`A306038(n)-A108125(n)`
-/

namespace A006252.P12116098271863271609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 n - A108125 n

end

end A006252.P12116098271863271609

/-! ## A006252.P15596482081843386460

`A317280(n)-A320344(n)`
-/

namespace A006252.P15596482081843386460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317280 n - A320344 n

end

end A006252.P15596482081843386460

/-! ## A006252.P5448142573581694000

`A306038(n+1)-A317280(n)`
-/

namespace A006252.P5448142573581694000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 (n + 1) - A317280 n

end

end A006252.P5448142573581694000

/-! ## A006252.P4368305701562871541

`A108125(n+1)/(n+1)`
-/

namespace A006252.P4368305701562871541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108125 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A006252.P4368305701562871541

/-!
# A006253: Number of perfect matchings (or domino tilings) in C_4 X P_n.

The programs for A006253, the canonical program `A006253.P17136310962896981150` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006253 has offset 0).

The definition of A006253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006253.P17136310962896981150

`4*a(n-1)-a(n-2)+2*(-1)^n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006253

/-- `4*a(n-1)-a(n-2)+2*(-1)^n` -/
def P17136310962896981150.Spec : Prop :=
  ∀ n, P17136310962896981150.a n = A006253 n

theorem P17136310962896981150.correct : P17136310962896981150.Spec := by
  intro n
  simp only [A006253]

end A006253

/-! ## A006253.P17962840665203404064

`3*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A006253.P17962840665203404064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - a (n - 3)

end

end A006253.P17962840665203404064

namespace A006253

/-- `3*a(n-1)+3*a(n-2)-a(n-3)` -/
def P17962840665203404064.Spec : Prop :=
  ∀ n, P17962840665203404064.a n = A006253 n

end A006253

/-! ## A006253.P16708623200987898223

`(2*(-1)^n+(2-sqrt(3))^(1+n)+(2+sqrt(3))^(1+n))/6`
-/

namespace A006253.P16708623200987898223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * (-1) ^ n : ℝ) + (2 - Real.sqrt (3 : ℝ)) ^ (1 + n) + (2 + Real.sqrt (3 : ℝ)) ^ (1 + n)) / 6

end

end A006253.P16708623200987898223

namespace A006253

/-- `(2*(-1)^n+(2-sqrt(3))^(1+n)+(2+sqrt(3))^(1+n))/6` -/
def P16708623200987898223.Spec : Prop :=
  ∀ n, P16708623200987898223.a n = (A006253 n : ℝ)

end A006253

/-! ## A006253.P16906286684689900525

`ogf((1-x)/(1-3x-3x^2+x^3))`
-/

namespace A006253.P16906286684689900525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, -3, 1] n

end

end A006253.P16906286684689900525

namespace A006253

/-- `ogf((1-x)/(1-3x-3x^2+x^3))` -/
def P16906286684689900525.Spec : Prop :=
  ∀ n, P16906286684689900525.a n = A006253 n

end A006253

/-! ## A006253.P12674103464264209923

`3*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A006253.P12674103464264209923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9] fun n a =>
  3 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A006253.P12674103464264209923

namespace A006253

/-- `3*(a(n-1)+a(n-2))-a(n-3)` -/
def P12674103464264209923.Spec : Prop :=
  ∀ n, P12674103464264209923.a n = A006253 n

end A006253

/-! ## A006253.P14291380521890203856

`∑[A217233(n)]`
-/

namespace A006253.P14291380521890203856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006253.P14291380521890203856

namespace A006253

/-- `∑[A217233(n)]` -/
def P14291380521890203856.Spec : Prop :=
  ∀ n, P14291380521890203856.a n = A006253 n

end A006253

/-! ## A006253.P7766233880901065484

`xor(1, A120892(n+1))`
-/

namespace A006253.P7766233880901065484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120892 (n + 1))

end

end A006253.P7766233880901065484

namespace A006253

/-- `xor(1, A120892(n+1))` -/
def P7766233880901065484.Spec : Prop :=
  ∀ n, P7766233880901065484.a n = A006253 n

end A006253

/-! ## A006253.P9331962728126795374

`∑[∑[A120893(n)]-n%2]`
-/

namespace A006253.P9331962728126795374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006253.P9331962728126795374

namespace A006253

/-- `∑[∑[A120893(n)]-n%2]` -/
def P9331962728126795374.Spec : Prop :=
  ∀ n, P9331962728126795374.a n = A006253 n

end A006253

/-! ## A006253.P9968561827546556286

`A001835(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A006253.P9968561827546556286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001835 (n + 1) - a (n - 1)

end

end A006253.P9968561827546556286

namespace A006253

/-- `A001835(n+1)-a(n-1)` -/
def P9968561827546556286.Spec : Prop :=
  ∀ n, P9968561827546556286.a n = A006253 n

end A006253

/-! ## A006253.P3727804645111032576

`A079935(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A006253.P3727804645111032576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079935 (n + 1) - a (n - 1)

end

end A006253.P3727804645111032576

namespace A006253

/-- `A079935(n+1)-a(n-1)` -/
def P3727804645111032576.Spec : Prop :=
  ∀ n, P3727804645111032576.a n = A006253 n

end A006253

/-! ## A006253.P2649424906306328843

`A140827(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A006253.P2649424906306328843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140827 (3 * n) - a (n - 1)

end

end A006253.P2649424906306328843

namespace A006253

/-- `A140827(3*n)-a(n-1)` -/
def P2649424906306328843.Spec : Prop :=
  ∀ n, P2649424906306328843.a n = A006253 n

end A006253

/-! ## A006253.P12298057719379509265

`A120893(n)+A001353(n)`
-/

namespace A006253.P12298057719379509265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n + A001353 n

end

end A006253.P12298057719379509265

namespace A006253

/-- `A120893(n)+A001353(n)` -/
def P12298057719379509265.Spec : Prop :=
  ∀ n, P12298057719379509265.a n = A006253 n

end A006253

/-! ## A006253.P16587830031044163673

`A087946(n)-A001045(n)`
-/

namespace A006253.P16587830031044163673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n - A001045 n

end

end A006253.P16587830031044163673

namespace A006253

/-- `A087946(n)-A001045(n)` -/
def P16587830031044163673.Spec : Prop :=
  ∀ n, P16587830031044163673.a n = A006253 n

end A006253

/-! ## A006253.P63192458344869965

`A120893(n)-A106707(n)`
-/

namespace A006253.P63192458344869965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n - A106707 n

end

end A006253.P63192458344869965

namespace A006253

/-- `A120893(n)-A106707(n)` -/
def P63192458344869965.Spec : Prop :=
  ∀ n, P63192458344869965.a n = A006253 n

end A006253

/-! ## A006253.P4985566458987803680

`∑[A120892(n)+A001353(n)]`
-/

namespace A006253.P4985566458987803680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 n + A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006253.P4985566458987803680

namespace A006253

/-- `∑[A120892(n)+A001353(n)]` -/
def P4985566458987803680.Spec : Prop :=
  ∀ n, P4985566458987803680.a n = A006253 n

end A006253

/-! ## A006253.P1242250198082719641

`A061278(n)+∑[A120892(n)]`
-/

namespace A006253.P1242250198082719641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006253.P1242250198082719641

namespace A006253

/-- `A061278(n)+∑[A120892(n)]` -/
def P1242250198082719641.Spec : Prop :=
  ∀ n, P1242250198082719641.a n = A006253 n

end A006253

/-! ## A006253.P7411366990990571678

`A120892(n+1)+A033999(n)`
-/

namespace A006253.P7411366990990571678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 (n + 1) + A033999 n

end

end A006253.P7411366990990571678

namespace A006253

/-- `A120892(n+1)+A033999(n)` -/
def P7411366990990571678.Spec : Prop :=
  ∀ n, P7411366990990571678.a n = A006253 n

end A006253

/-! ## A006253.P12298892496548999736

`A120893(n)+A002530(2*n)`
-/

namespace A006253.P12298892496548999736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n + A002530 (2 * n)

end

end A006253.P12298892496548999736

namespace A006253

/-- `A120893(n)+A002530(2*n)` -/
def P12298892496548999736.Spec : Prop :=
  ∀ n, P12298892496548999736.a n = A006253 n

end A006253

/-! ## A006253.P10128824162300338926

`2*A112832(n)-A000034(n)`
-/

namespace A006253.P10128824162300338926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112832 n - A000034 n

end

end A006253.P10128824162300338926

namespace A006253

/-- `2*A112832(n)-A000034(n)` -/
def P10128824162300338926.Spec : Prop :=
  ∀ n, P10128824162300338926.a n = A006253 n

end A006253

/-! ## A006253.P7696611237143690908

`A002530(n+1)²*A000034(n)`
-/

namespace A006253.P7696611237143690908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1) ^ 2 * A000034 n

end

end A006253.P7696611237143690908

namespace A006253

/-- `A002530(n+1)²*A000034(n)` -/
def P7696611237143690908.Spec : Prop :=
  ∀ n, P7696611237143690908.a n = A006253 n

end A006253

/-!
# A006254: Numbers k such that 2k-1 is prime.

The programs for A006254, the canonical program `A006254.P17336495081768971287` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006254 has offset 1).

The definition of A006254 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A006254.P16932797842927740635

`(1+A065091(n+1))/2`
-/

namespace A006254.P16932797842927740635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A065091 (n + 1) : ℚ) / 2

end

end A006254.P16932797842927740635

namespace A006254

/-- `(1+A065091(n+1))/2` -/
def P16932797842927740635.Spec : Prop :=
  ∀ n, P16932797842927740635.a n = (A006254 (n + 1) : ℚ)

end A006254

/-! ## A006254.P2432082772843732720

`A111333(n+2)`
-/

namespace A006254.P2432082772843732720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2)

end

end A006254.P2432082772843732720

namespace A006254

/-- `A111333(n+2)` -/
def P2432082772843732720.Spec : Prop :=
  ∀ n, P2432082772843732720.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P17336495081768971287

`(A000040(n+2)+1)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006254

/-- `(A000040(n+2)+1)/2` -/
def P17336495081768971287.Spec : Prop :=
  ∀ n, P17336495081768971287.a n = (A006254 (n + 1) : ℚ)

end A006254

/-! ## A006254.P402620494562503498

`ceil(p?[2*n+1]/2)`
-/

namespace A006254.P402620494562503498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉

end

end A006254.P402620494562503498

namespace A006254

/-- `ceil(p?[2*n+1]/2)` -/
def P402620494562503498.Spec : Prop :=
  ∀ n, P402620494562503498.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P6392098871105579712

`round(p?[2*n+1]/2)`
-/

namespace A006254.P6392098871105579712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2)

end

end A006254.P6392098871105579712

namespace A006254

/-- `round(p?[2*n+1]/2)` -/
def P6392098871105579712.Spec : Prop :=
  ∀ n, P6392098871105579712.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P14756592234480149737

`ceil(cosh(log(p?[2*n+1])))`
-/

namespace A006254.P14756592234480149737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌉

end

end A006254.P14756592234480149737

namespace A006254

/-- `ceil(cosh(log(p?[2*n+1])))` -/
def P14756592234480149737.Spec : Prop :=
  ∀ n, P14756592234480149737.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P688838263900757029

`round(cosh(log(p?[2*n+1])))`
-/

namespace A006254.P688838263900757029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)))

end

end A006254.P688838263900757029

namespace A006254

/-- `round(cosh(log(p?[2*n+1])))` -/
def P688838263900757029.Spec : Prop :=
  ∀ n, P688838263900757029.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P942554022038476380

`ceil(sinh(log(p?[2*n+1])))`
-/

namespace A006254.P942554022038476380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌉

end

end A006254.P942554022038476380

namespace A006254

/-- `ceil(sinh(log(p?[2*n+1])))` -/
def P942554022038476380.Spec : Prop :=
  ∀ n, P942554022038476380.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P3949694278497032979

`(p?[2*n+1]+1)/2`
-/

namespace A006254.P3949694278497032979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 2

end

end A006254.P3949694278497032979

namespace A006254

/-- `(p?[2*n+1]+1)/2` -/
def P3949694278497032979.Spec : Prop :=
  ∀ n, P3949694278497032979.a n = (A006254 (n + 1) : ℚ)

end A006254

/-! ## A006254.P8005374783410357222

`∑{d}[p?[n+1+n], #/2]`
-/

namespace A006254.P8005374783410357222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2

end

end A006254.P8005374783410357222

namespace A006254

/-- `∑{d}[p?[n+1+n], #/2]` -/
def P8005374783410357222.Spec : Prop :=
  ∀ n, P8005374783410357222.a n = (A006254 (n + 1) : ℚ)

end A006254

/-! ## A006254.P2569660236761489945

`A005097(n+1)+1`
-/

namespace A006254.P2569660236761489945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 1

end

end A006254.P2569660236761489945

namespace A006254

/-- `A005097(n+1)+1` -/
def P2569660236761489945.Spec : Prop :=
  ∀ n, P2569660236761489945.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P2260929538102323554

`A067076(n+1)+2`
-/

namespace A006254.P2260929538102323554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 2

end

end A006254.P2260929538102323554

namespace A006254

/-- `A067076(n+1)+2` -/
def P2260929538102323554.Spec : Prop :=
  ∀ n, P2260929538102323554.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P6928299701441055792

`A098090(n+1)-1`
-/

namespace A006254.P6928299701441055792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 1

end

end A006254.P6928299701441055792

namespace A006254

/-- `A098090(n+1)-1` -/
def P6928299701441055792.Spec : Prop :=
  ∀ n, P6928299701441055792.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P15482006840577105284

`A089253(n+1)-2`
-/

namespace A006254.P15482006840577105284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - 2

end

end A006254.P15482006840577105284

namespace A006254

/-- `A089253(n+1)-2` -/
def P15482006840577105284.Spec : Prop :=
  ∀ n, P15482006840577105284.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P17671550118765497209

`A089192(n+1)-3`
-/

namespace A006254.P17671550118765497209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 3

end

end A006254.P17671550118765497209

namespace A006254

/-- `A089192(n+1)-3` -/
def P17671550118765497209.Spec : Prop :=
  ∀ n, P17671550118765497209.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P12121466551061756406

`A097069(n+1)-4`
-/

namespace A006254.P12121466551061756406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) - 4

end

end A006254.P12121466551061756406

namespace A006254

/-- `A097069(n+1)-4` -/
def P12121466551061756406.Spec : Prop :=
  ∀ n, P12121466551061756406.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P836112742836324293

`A055670(n+2)/2`
-/

namespace A006254.P836112742836324293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055670 (n + 2) : ℚ) / 2

end

end A006254.P836112742836324293

namespace A006254

/-- `A055670(n+2)/2` -/
def P836112742836324293.Spec : Prop :=
  ∀ n, P836112742836324293.a n = (A006254 (n + 1) : ℚ)

end A006254

/-! ## A006254.P4335055387564010717

`A097363(n+1)-6`
-/

namespace A006254.P4335055387564010717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - 6

end

end A006254.P4335055387564010717

namespace A006254

/-- `A097363(n+1)-6` -/
def P4335055387564010717.Spec : Prop :=
  ∀ n, P4335055387564010717.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P7265306885566950429

`A097932(n+1)-9`
-/

namespace A006254.P7265306885566950429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - 9

end

end A006254.P7265306885566950429

namespace A006254

/-- `A097932(n+1)-9` -/
def P7265306885566950429.Spec : Prop :=
  ∀ n, P7265306885566950429.a n = A006254 (n + 1)

end A006254

/-! ## A006254.P3204121153530449777

`ceil(sqrt(A024701(n+1)))`
-/

namespace A006254.P3204121153530449777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A024701 (n + 1) : ℝ)⌉

end

end A006254.P3204121153530449777

namespace A006254

/-- `ceil(sqrt(A024701(n+1)))` -/
def P3204121153530449777.Spec : Prop :=
  ∀ n, P3204121153530449777.a n = A006254 (n + 1)

end A006254

/-!
# A006255: R. L. Graham's sequence: a(n) = smallest m for which there is a sequence n = b_1 < b_2 < ... < b_t = m such that b_1*b_2*...*b_t is a perfect square.

The programs for A006255, there is no canonical definition to state claims against.
-/

/-! ## A006255.P9475186709734655410

`A092487(n+1)+n+1`
-/

namespace A006255.P9475186709734655410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (n + 1) + (n + 1 : ℤ)

end

end A006255.P9475186709734655410

/-! ## A006255.P8863921442269811981

`A245499(∑[A066400(n+1)])`
-/

namespace A006255.P8863921442269811981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245499 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006255.P8863921442269811981

/-! ## A006255.P632707480595299917

`A072905(n+1)-A255167(n+1)`
-/

namespace A006255.P632707480595299917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (n + 1) - A255167 (n + 1)

end

end A006255.P632707480595299917

/-! ## A006255.P3823931952808702896

`A018252(A297104(n+1))`
-/

namespace A006255.P3823931952808702896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A297104 (n + 1)).toNat

end

end A006255.P3823931952808702896

/-! ## A006255.P10629978640619860534

`A141468(A297104(n+1)+1)`
-/

namespace A006255.P10629978640619860534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A297104 (n + 1) + 1).toNat

end

end A006255.P10629978640619860534

/-!
# A006256: a(n) = Sum_{k=0..n} binomial(3*k,k)*binomial(3*n-3*k,n-k).

The programs for A006256, there is no canonical definition to state claims against.
-/

/-! ## A006256.P2374675133919985568

`A358050(A056000(n)+6)`
-/

namespace A006256.P2374675133919985568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (A056000 n + 6).toNat

end

end A006256.P2374675133919985568

/-! ## A006256.P16728654911789650660

`A358050(A052905(n+1)+1)`
-/

namespace A006256.P16728654911789650660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (A052905 (n + 1) + 1).toNat

end

end A006256.P16728654911789650660

/-! ## A006256.P15942249729532238643

`A106516(∑[54*n+12]/6)`
-/

namespace A006256.P15942249729532238643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  54 * n + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6)).toNat

end

end A006256.P15942249729532238643

/-! ## A006256.P13681587625980207627

`A131249(A062708(n+1))`
-/

namespace A006256.P13681587625980207627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131249 (A062708 (n + 1)).toNat

end

end A006256.P13681587625980207627

/-! ## A006256.P13965631465031499139

`A106516(A062708(n+1))+A000007(2*n+1)`
-/

namespace A006256.P13965631465031499139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A062708 (n + 1)).toNat + A000007 (2 * n + 1)

end

end A006256.P13965631465031499139

/-!
# A006257: Josephus problem: a(2*n) = 2*a(n)-1, a(2*n+1) = 2*a(n)+1.

The programs for A006257, the canonical program `A006257.P8910165504183276925` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006257 has offset 0).

The definition of A006257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006257.P8910165504183276925

`2*a(floor(n/2))-(-1)^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006257

/-- `2*a(floor(n/2))-(-1)^n` -/
def P8910165504183276925.Spec : Prop :=
  ∀ n, P8910165504183276925.a n = A006257 n

theorem P8910165504183276925.correct : P8910165504183276925.Spec := by
  intro n
  simp only [A006257]

end A006257

/-! ## A006257.P6002430587071552565

`Δ[n²]-2^ceil(log2(n+1))`
-/

namespace A006257.P6002430587071552565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A006257.P6002430587071552565

namespace A006257

/-- `Δ[n²]-2^ceil(log2(n+1))` -/
def P6002430587071552565.Spec : Prop :=
  ∀ n, P6002430587071552565.a n = (A006257 n : ℚ)

end A006257

/-! ## A006257.P12836650083860994457

`Δ[n²]%(2^ceil(log2(n+1)))`
-/

namespace A006257.P12836650083860994457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A006257.P12836650083860994457

namespace A006257

/-- `Δ[n²]%(2^ceil(log2(n+1)))` -/
def P12836650083860994457.Spec : Prop :=
  ∀ n, P12836650083860994457.a n = A006257 n

end A006257

/-! ## A006257.P14116121166206865648

`xor(2^ceil(log2(n+1)), Δ[n²])`
-/

namespace A006257.P14116121166206865648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A006257.P14116121166206865648

namespace A006257

/-- `xor(2^ceil(log2(n+1)), Δ[n²])` -/
def P14116121166206865648.Spec : Prop :=
  ∀ n, P14116121166206865648.a n = A006257 n

end A006257

/-! ## A006257.P17207567429535363350

`and(∑[n*char[2^n]], Δ[n²])`
-/

namespace A006257.P17207567429535363350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A006257.P17207567429535363350

namespace A006257

/-- `and(∑[n*char[2^n]], Δ[n²])` -/
def P17207567429535363350.Spec : Prop :=
  ∀ n, P17207567429535363350.a n = A006257 n

end A006257

/-! ## A006257.P5394749399121996516

`abs(xor(2*n, (-1)^n)%(2^ceil(log2(n+1))))`
-/

namespace A006257.P5394749399121996516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.xor (2 * n : ℤ) ((-1) ^ n)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))|

end

end A006257.P5394749399121996516

namespace A006257

/-- `abs(xor(2*n, (-1)^n)%(2^ceil(log2(n+1))))` -/
def P5394749399121996516.Spec : Prop :=
  ∀ n, P5394749399121996516.a n = A006257 n

end A006257

/-! ## A006257.P14339123295741765032

`gcd(a(n-1)+2, floor((a(n-1)+1)/n))` with `a(0)=0`
-/

namespace A006257.P14339123295741765032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (a (n - 1) + 2 : ℤ) ⌊(a (n - 1) + 1 : ℚ) / (n : ℚ)⌋

end

end A006257.P14339123295741765032

namespace A006257

/-- `gcd(a(n-1)+2, floor((a(n-1)+1)/n))` -/
def P14339123295741765032.Spec : Prop :=
  ∀ n, (P14339123295741765032.a n : ℤ) = A006257 n

end A006257

/-! ## A006257.P3098779943480407343

`Δ[n²-A181497(n)]`
-/

namespace A006257.P3098779943480407343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A181497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006257.P3098779943480407343

namespace A006257

/-- `Δ[n²-A181497(n)]` -/
def P3098779943480407343.Spec : Prop :=
  ∀ n, P3098779943480407343.a n = A006257 n

end A006257

/-! ## A006257.P14858644324576494147

`abs(A003817(n)-2*n)`
-/

namespace A006257.P14858644324576494147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003817 n - (2 * n : ℤ)|

end

end A006257.P14858644324576494147

namespace A006257

/-- `abs(A003817(n)-2*n)` -/
def P14858644324576494147.Spec : Prop :=
  ∀ n, P14858644324576494147.a n = A006257 n

end A006257

/-! ## A006257.P269722949028472579

`∑{d}[2*n+1, A300725(#)]`
-/

namespace A006257.P269722949028472579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300725 d

end

end A006257.P269722949028472579

namespace A006257

/-- `∑{d}[2*n+1, A300725(#)]` -/
def P269722949028472579.Spec : Prop :=
  ∀ n, P269722949028472579.a n = A006257 n

end A006257

/-! ## A006257.P1237193111493419522

`A280995(A341916(n))`
-/

namespace A006257.P1237193111493419522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (A341916 n).toNat

end

end A006257.P1237193111493419522

namespace A006257

/-- `A280995(A341916(n))` -/
def P1237193111493419522.Spec : Prop :=
  ∀ n, P1237193111493419522.a n = A006257 n

end A006257

/-! ## A006257.P9603433822776860019

`A030101(A145342(n+1)-1)`
-/

namespace A006257.P9603433822776860019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A145342 (n + 1) - 1).toNat

end

end A006257.P9603433822776860019

namespace A006257

/-- `A030101(A145342(n+1)-1)` -/
def P9603433822776860019.Spec : Prop :=
  ∀ n, P9603433822776860019.a n = A006257 n

end A006257

/-! ## A006257.P16324844806178772457

`A119608(A145341(n+1))`
-/

namespace A006257.P16324844806178772457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (A145341 (n + 1)).toNat

end

end A006257.P16324844806178772457

namespace A006257

/-- `A119608(A145341(n+1))` -/
def P16324844806178772457.Spec : Prop :=
  ∀ n, P16324844806178772457.a n = A006257 n

end A006257

/-! ## A006257.P13917693983741538183

`gcd(a(n-1)+2, A001222(A014963(2*n)))` with `a(0)=0`
-/

namespace A006257.P13917693983741538183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (a (n - 1) + 2 : ℤ) (A001222 (A014963 (2 * n)).toNat)

end

end A006257.P13917693983741538183

namespace A006257

/-- `gcd(a(n-1)+2, A001222(A014963(2*n)))` -/
def P13917693983741538183.Spec : Prop :=
  ∀ n, (P13917693983741538183.a n : ℤ) = A006257 n

end A006257

/-! ## A006257.P14814199279028342689

`A053645(Δ[n²])`
-/

namespace A006257.P14814199279028342689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006257.P14814199279028342689

namespace A006257

/-- `A053645(Δ[n²])` -/
def P14814199279028342689.Spec : Prop :=
  ∀ n, P14814199279028342689.a n = A006257 n

end A006257

/-! ## A006257.P5379930684266354302

`A266539(Δ[n²])`
-/

namespace A006257.P5379930684266354302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006257.P5379930684266354302

namespace A006257

/-- `A266539(Δ[n²])` -/
def P5379930684266354302.Spec : Prop :=
  ∀ n, P5379930684266354302.a n = A006257 n

end A006257

/-! ## A006257.P11990004167926079896

`lcm(2, A053645(2*n+1))/2`
-/

namespace A006257.P11990004167926079896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A053645 (2 * n + 1)) : ℚ) / 2

end

end A006257.P11990004167926079896

namespace A006257

/-- `lcm(2, A053645(2*n+1))/2` -/
def P11990004167926079896.Spec : Prop :=
  ∀ n, P11990004167926079896.a n = (A006257 n : ℚ)

end A006257

/-! ## A006257.P7672487517232879254

`A030101(A030109(2*n+1))`
-/

namespace A006257.P7672487517232879254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030109 (2 * n + 1)).toNat

end

end A006257.P7672487517232879254

namespace A006257

/-- `A030101(A030109(2*n+1))` -/
def P7672487517232879254.Spec : Prop :=
  ∀ n, P7672487517232879254.a n = A006257 n

end A006257

/-! ## A006257.P10045937535838547963

`filter[A053645(2*n+1), A039982(#)]`
-/

namespace A006257.P10045937535838547963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A006257.P10045937535838547963

namespace A006257

/-- `filter[A053645(2*n+1), A039982(#)]` -/
def P10045937535838547963.Spec : Prop :=
  ∀ n, P10045937535838547963.a n = A006257 n

end A006257

/-! ## A006257.P6350976826256193798

`filter[A053645(2*n+1), A093719(#)]`
-/

namespace A006257.P6350976826256193798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A006257.P6350976826256193798

namespace A006257

/-- `filter[A053645(2*n+1), A093719(#)]` -/
def P6350976826256193798.Spec : Prop :=
  ∀ n, P6350976826256193798.a n = A006257 n

end A006257

/-!
# A006258: Numerators of approximations to e.

The programs for A006258, there is no canonical definition to state claims against.
-/

/-! ## A006258.P7097589037979628814

`record[A119014(n)]`
-/

namespace A006258.P7097589037979628814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006258.P7097589037979628814

/-! ## A006258.P13872380913928889048

`A119014(n+2)`
-/

namespace A006258.P13872380913928889048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119014 (n + 2)

end

end A006258.P13872380913928889048

/-! ## A006258.P6347415868802767060

`∑[A244040(∏[A140709(n+1)])]`
-/

namespace A006258.P6347415868802767060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140709 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244040 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006258.P6347415868802767060

/-! ## A006258.P2774052244166233450

`A160755(record[A013984(n)])`
-/

namespace A006258.P2774052244166233450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006258.P2774052244166233450

/-! ## A006258.P12387978614863580346

`A257212(A006172(n+1))`
-/

namespace A006258.P12387978614863580346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A006172 (n + 1)).toNat

end

end A006258.P12387978614863580346

/-!
# A006259: Denominators of approximations to e.

The programs for A006259, there is no canonical definition to state claims against.
-/

/-! ## A006259.P12672966417916889935

`A119015(n+2)`
-/

namespace A006259.P12672966417916889935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119015 (n + 2)

end

end A006259.P12672966417916889935

/-! ## A006259.P15505298176025436821

`A032634(record[A119014(n)+2])`
-/

namespace A006259.P15505298176025436821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119014 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006259.P15505298176025436821

/-! ## A006259.P2696858795460695372

`A032634(A006258(n+1)+2)`
-/

namespace A006259.P2696858795460695372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A006258 (n + 1) + 2).toNat

end

end A006259.P2696858795460695372

/-! ## A006259.P1919471971501951745

`A032634(A119014(n+2)+2)`
-/

namespace A006259.P1919471971501951745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A119014 (n + 2) + 2).toNat

end

end A006259.P1919471971501951745

/-! ## A006259.P15215506054867818932

`A054404(record[A119014(n)+1])`
-/

namespace A006259.P15215506054867818932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119014 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006259.P15215506054867818932

/-!
# A006260: Second-order Eulerian numbers <>.

The programs for A006260, there is no canonical definition to state claims against.
-/

/-! ## A006260.P2210588542847858322

`A201637(A167614(n+2))`
-/

namespace A006260.P2210588542847858322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A167614 (n + 2)).toNat

end

end A006260.P2210588542847858322

/-! ## A006260.P13734314435292629685

`A201637(A052905(n)+8)`
-/

namespace A006260.P13734314435292629685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A052905 n + 8).toNat

end

end A006260.P13734314435292629685

/-! ## A006260.P12588454396955722030

`A201637(A055999(n)+9)`
-/

namespace A006260.P12588454396955722030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A055999 n + 9).toNat

end

end A006260.P12588454396955722030

/-! ## A006260.P16288823450631035834

`A340556(A167614(n+2)+1)`
-/

namespace A006260.P16288823450631035834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (A167614 (n + 2) + 1).toNat

end

end A006260.P16288823450631035834

/-! ## A006260.P12001044921001716743

`A201637(A000096(n+2)+4)`
-/

namespace A006260.P12001044921001716743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A000096 (n + 2) + 4).toNat

end

end A006260.P12001044921001716743

/-! ## A006260.P15644344925771601813

`A201637(A034856(n+2)+5)`
-/

namespace A006260.P15644344925771601813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A034856 (n + 2) + 5).toNat

end

end A006260.P15644344925771601813

/-! ## A006260.P7419546203277957177

`A201637(A046691(n+1)+7)`
-/

namespace A006260.P7419546203277957177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A046691 (n + 1) + 7).toNat

end

end A006260.P7419546203277957177

/-! ## A006260.P13174188708517379624

`A288874(∑[n+3]+n+3)`
-/

namespace A006260.P13174188708517379624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A006260.P13174188708517379624

/-!
# A006261: a(n) = Sum_{k=0..5} binomial(n,k).

The programs for A006261, the canonical program `A006261.P4266430943369696028` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006261 has offset 0).

The definition of A006261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006261.P8451382687323400538

`(n^5-5*n^4+25*n^3+5*n²+94*n+120)/120`
-/

namespace A006261.P8451382687323400538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 5 : ℤ) - (5 * n ^ 4 : ℤ) + (25 * n ^ 3 : ℤ) + (5 * n ^ 2 : ℤ) + (94 * n : ℤ) + 120 : ℚ) / 120

end

end A006261.P8451382687323400538

namespace A006261

/-- `(n^5-5*n^4+25*n^3+5*n²+94*n+120)/120` -/
def P8451382687323400538.Spec : Prop :=
  ∀ n, P8451382687323400538.a n = (A006261 n : ℚ)

end A006261

/-! ## A006261.P17454646373281442128

`A057703(n)+1`
-/

namespace A006261.P17454646373281442128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 n + 1

end

end A006261.P17454646373281442128

namespace A006261

/-- `A057703(n)+1` -/
def P17454646373281442128.Spec : Prop :=
  ∀ n, P17454646373281442128.a n = A006261 n

end A006261

/-! ## A006261.P4266430943369696028

`a(n-1)+A000127(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006261

/-- `a(n-1)+A000127(n)` -/
def P4266430943369696028.Spec : Prop :=
  ∀ n, P4266430943369696028.a n = A006261 n

theorem P4266430943369696028.correct : P4266430943369696028.Spec := by
  intro n
  simp only [A006261]

end A006261

/-! ## A006261.P566666326719549070

`2*a(n-1)-C(n-1, 5)` with `a(0)=1`
-/

namespace A006261.P566666326719549070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (Nat.choose ((n : ℤ) - 1).toNat 5 : ℤ)

end

end A006261.P566666326719549070

namespace A006261

/-- `2*a(n-1)-C(n-1, 5)` -/
def P566666326719549070.Spec : Prop :=
  ∀ n, P566666326719549070.a n = A006261 n

end A006261

/-! ## A006261.P14496049304227217021

`n+1+C(n, 3)+C(n, 5)+C(n, 2)+C(n, 4)`
-/

namespace A006261.P14496049304227217021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (1 + Nat.choose n 3 + Nat.choose n 5 + Nat.choose n 2 + Nat.choose n 4)

end

end A006261.P14496049304227217021

namespace A006261

/-- `n+1+C(n, 3)+C(n, 5)+C(n, 2)+C(n, 4)` -/
def P14496049304227217021.Spec : Prop :=
  ∀ n, (P14496049304227217021.a n : ℤ) = A006261 n

end A006261

/-! ## A006261.P12810724421506774988

`Δ[A008859(n)]`
-/

namespace A006261.P12810724421506774988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006261.P12810724421506774988

namespace A006261

/-- `Δ[A008859(n)]` -/
def P12810724421506774988.Spec : Prop :=
  ∀ n, P12810724421506774988.a n = A006261 n

end A006261

/-! ## A006261.P6240094970881084848

`A362193(n)+n`
-/

namespace A006261.P6240094970881084848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362193 n + (n : ℤ)

end

end A006261.P6240094970881084848

namespace A006261

/-- `A362193(n)+n` -/
def P6240094970881084848.Spec : Prop :=
  ∀ n, P6240094970881084848.a n = A006261 n

end A006261

/-! ## A006261.P10150464885722733352

`∑[A006522(n)+n]`
-/

namespace A006261.P10150464885722733352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006261.P10150464885722733352

namespace A006261

/-- `∑[A006522(n)+n]` -/
def P10150464885722733352.Spec : Prop :=
  ∀ n, P10150464885722733352.a n = A006261 n

end A006261

/-! ## A006261.P15203412519002586916

`A161701(n)+∑[C(n, 2)]`
-/

namespace A006261.P15203412519002586916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006261.P15203412519002586916

namespace A006261

/-- `A161701(n)+∑[C(n, 2)]` -/
def P15203412519002586916.Spec : Prop :=
  ∀ n, P15203412519002586916.a n = A006261 n

end A006261

/-! ## A006261.P15948353414812443315

`∑[A000332(n)+C(n, 2)+1]`
-/

namespace A006261.P15948353414812443315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + (Nat.choose n 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006261.P15948353414812443315

namespace A006261

/-- `∑[A000332(n)+C(n, 2)+1]` -/
def P15948353414812443315.Spec : Prop :=
  ∀ n, P15948353414812443315.a n = A006261 n

end A006261

/-! ## A006261.P12545454420269791862

`a(n-1)+A055795(n)+1` with `a(0)=1`
-/

namespace A006261.P12545454420269791862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A055795 n + 1)

end

end A006261.P12545454420269791862

namespace A006261

/-- `a(n-1)+A055795(n)+1` -/
def P12545454420269791862.Spec : Prop :=
  ∀ n, P12545454420269791862.a n = A006261 n

end A006261

/-! ## A006261.P9826247055513297155

`A008859(n)-A000579(n)`
-/

namespace A006261.P9826247055513297155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - A000579 n

end

end A006261.P9826247055513297155

namespace A006261

/-- `A008859(n)-A000579(n)` -/
def P9826247055513297155.Spec : Prop :=
  ∀ n, P9826247055513297155.a n = A006261 n

end A006261

/-! ## A006261.P4461325297194662724

`A000125(n)+∑[A000332(n)]`
-/

namespace A006261.P4461325297194662724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006261.P4461325297194662724

namespace A006261

/-- `A000125(n)+∑[A000332(n)]` -/
def P4461325297194662724.Spec : Prop :=
  ∀ n, P4461325297194662724.a n = A006261 n

end A006261

/-! ## A006261.P18042876826051244698

`A161701(n)+∑[A161680(n)]`
-/

namespace A006261.P18042876826051244698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006261.P18042876826051244698

namespace A006261

/-- `A161701(n)+∑[A161680(n)]` -/
def P18042876826051244698.Spec : Prop :=
  ∀ n, P18042876826051244698.a n = A006261 n

end A006261

/-! ## A006261.P9341360204818042826

`A000389(n)+A000127(n+1)`
-/

namespace A006261.P9341360204818042826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n + A000127 (n + 1)

end

end A006261.P9341360204818042826

namespace A006261

/-- `A000389(n)+A000127(n+1)` -/
def P9341360204818042826.Spec : Prop :=
  ∀ n, P9341360204818042826.a n = A006261 n

end A006261

/-! ## A006261.P7476118020119653172

`A008859(n+1)-A008859(n)`
-/

namespace A006261.P7476118020119653172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 (n + 1) - A008859 n

end

end A006261.P7476118020119653172

namespace A006261

/-- `A008859(n+1)-A008859(n)` -/
def P7476118020119653172.Spec : Prop :=
  ∀ n, P7476118020119653172.a n = A006261 n

end A006261

/-! ## A006261.P7003671362189695095

`A115567(n)+1-A000579(n)`
-/

namespace A006261.P7003671362189695095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 n + (1 - A000579 n)

end

end A006261.P7003671362189695095

namespace A006261

/-- `A115567(n)+1-A000579(n)` -/
def P7003671362189695095.Spec : Prop :=
  ∀ n, P7003671362189695095.a n = A006261 n

end A006261

/-! ## A006261.P9275789681260813605

`A027660(n)+1-A136396(n)`
-/

namespace A006261.P9275789681260813605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027660 n + (1 - A136396 n)

end

end A006261.P9275789681260813605

namespace A006261

/-- `A027660(n)+1-A136396(n)` -/
def P9275789681260813605.Spec : Prop :=
  ∀ n, P9275789681260813605.a n = A006261 n

end A006261

/-! ## A006261.P2007950324463247442

`A161701(n+1)-A058923(n)`
-/

namespace A006261.P2007950324463247442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 (n + 1) - A058923 n

end

end A006261.P2007950324463247442

namespace A006261

/-- `A161701(n+1)-A058923(n)` -/
def P2007950324463247442.Spec : Prop :=
  ∀ n, P2007950324463247442.a n = A006261 n

end A006261

/-! ## A006261.P5193115319586266822

`A000389(n)+A055417(n)-n`
-/

namespace A006261.P5193115319586266822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n + (A055417 n - (n : ℤ))

end

end A006261.P5193115319586266822

namespace A006261

/-- `A000389(n)+A055417(n)-n` -/
def P5193115319586266822.Spec : Prop :=
  ∀ n, P5193115319586266822.a n = A006261 n

end A006261

/-!
# A006262: Product k^(2^(k-2)), k = 2..n.

The programs for A006262, there is no canonical definition to state claims against.
-/

/-! ## A006262.P11685646126901063995

`∏[sqrt((n+1)^2^n)]`
-/

namespace A006262.P11685646126901063995
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1) ^ 2 ^ n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006262.P11685646126901063995

/-! ## A006262.P15231773870511639812

`(n+1)^2^(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A006262.P15231773870511639812
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) * a (n - 1)

end

end A006262.P15231773870511639812

/-!
# A006264: Diagonal length function.

The programs for A006264, the canonical program `A006264.P1728145935528236585` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006264 has offset 0).

The definition of A006264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006264.P15611104942344917296

`∑[A255309(n)+char[4]]`
-/

namespace A006264.P15611104942344917296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006264.P15611104942344917296

namespace A006264

/-- `∑[A255309(n)+char[4]]` -/
def P15611104942344917296.Spec : Prop :=
  ∀ n, P15611104942344917296.a n = A006264 n

end A006264

/-! ## A006264.P1728145935528236585

`∑[(5*n+3)%A293668(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006264

/-- `∑[(5*n+3)%A293668(n)]` -/
def P1728145935528236585.Spec : Prop :=
  ∀ n, P1728145935528236585.a n = A006264 n

theorem P1728145935528236585.correct : P1728145935528236585.Spec := by
  intro n
  simp only [A006264]

end A006264

/-! ## A006264.P12907689791427045071

`∑[A255309(n-char[3])]-char[3]`
-/

namespace A006264.P12907689791427045071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 (n - (if ∃ j, f2 j = n then 1 else 0))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006264.P12907689791427045071

namespace A006264

/-- `∑[A255309(n-char[3])]-char[3]` -/
def P12907689791427045071.Spec : Prop :=
  ∀ n, P12907689791427045071.a n = A006264 n

end A006264

/-! ## A006264.P5475292766976002319

`A326178(∑[A255309(n)])`
-/

namespace A006264.P5475292766976002319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006264.P5475292766976002319

namespace A006264

/-- `A326178(∑[A255309(n)])` -/
def P5475292766976002319.Spec : Prop :=
  ∀ n, P5475292766976002319.a n = A006264 n

end A006264

/-! ## A006264.P9386595601654369114

`lcm(A122188(n+1), A128217(A070939(n)))`
-/

namespace A006264.P9386595601654369114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122188 (n + 1)) (A128217 (A070939 n).toNat)

end

end A006264.P9386595601654369114

namespace A006264

/-- `lcm(A122188(n+1), A128217(A070939(n)))` -/
def P9386595601654369114.Spec : Prop :=
  ∀ n, (P9386595601654369114.a n : ℤ) = A006264 n

end A006264

/-! ## A006264.P857382417295624015

`A333384(A070939(n))%A333383(n+1)`
-/

namespace A006264.P857382417295624015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333384 (A070939 n).toNat) (A333383 (n + 1))

end

end A006264.P857382417295624015

namespace A006264

/-- `A333384(A070939(n))%A333383(n+1)` -/
def P857382417295624015.Spec : Prop :=
  ∀ n, P857382417295624015.a n = A006264 n

end A006264

/-!
# A006265: Number of shapes of height-balanced AVL trees with n nodes.

The programs for A006265, there is no canonical definition to state claims against.
-/

/-! ## A006265.P16597610158880033017

`A134306(A352956(Δ[n²]))`
-/

namespace A006265.P16597610158880033017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134306 (A352956 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A006265.P16597610158880033017

/-! ## A006265.P5152415325712910489

`A134306(A138904(3*n+2)+n)`
-/

namespace A006265.P5152415325712910489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134306 (A138904 (3 * n + 2) + (n : ℤ)).toNat

end

end A006265.P5152415325712910489

/-! ## A006265.P15085689087944679092

`A134306(n%(A225173(n)+1)+1)`
-/

namespace A006265.P15085689087944679092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134306 (Int.tmod (n : ℤ) (A225173 n + 1) + 1).toNat

end

end A006265.P15085689087944679092

/-! ## A006265.P4954027484231168764

`A134306(C(A352956(2*n+1), n))`
-/

namespace A006265.P4954027484231168764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134306 (Nat.choose (A352956 (2 * n + 1)).toNat n)

end

end A006265.P4954027484231168764

/-! ## A006265.P2670843099957002918

`A134306(lcm(n+1, A352956(2*n+1)))`
-/

namespace A006265.P2670843099957002918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134306 (Int.lcm (n + 1 : ℤ) (A352956 (2 * n + 1)))

end

end A006265.P2670843099957002918

/-!
# A006266: 

The programs for A006266, there is no canonical definition to state claims against.
-/

/-! ## A006266.P2762166958130589972

`round((1+sqrt(2))^3^n)`
-/

namespace A006266.P2762166958130589972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 + Real.sqrt (2 : ℝ)) ^ 3 ^ n)

end

end A006266.P2762166958130589972

/-!
# A006267: 

The programs for A006267, there is no canonical definition to state claims against.
-/

/-! ## A006267.P1341855409108060370

`A000032(3^n)`
-/

namespace A006267.P1341855409108060370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 ^ n)

end

end A006267.P1341855409108060370

/-!
# A006268: 

The programs for A006268, there is no canonical definition to state claims against.
-/

/-! ## A006268.P11361515714500461779

`floor((a(n-1)²+2)^(3/2))` with `a(0)=3`
-/

namespace A006268.P11361515714500461779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) ^ 2 + 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A006268.P11361515714500461779

/-!
# A006269: 

The programs for A006269, there is no canonical definition to state claims against.
-/

/-! ## A006269.P2337772035980235592

`floor((a(n-1)²+2)^(3/2))` with `a(0)=5`
-/

namespace A006269.P2337772035980235592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(a (n - 1) ^ 2 + 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A006269.P2337772035980235592

/-!
# A006270: 

The programs for A006270, there is no canonical definition to state claims against.
-/

/-! ## A006270.P5939361815075911643

`abs(Δ[A000032(floor(3^(n-1)))])`
-/

namespace A006270.P5939361815075911643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A006270.P5939361815075911643

/-!
# A006271: 

The programs for A006271, there is no canonical definition to state claims against.
-/

/-! ## A006271.P15222877783047725762

`(a(n-1)+3)*a(n-1)²-3` with `a(0)=2, a(1)=5`
-/

namespace A006271.P15222877783047725762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (a (n - 1) + 3) * a (n - 1) ^ 2 - 3

end

end A006271.P15222877783047725762

/-!
# A006272: 

The programs for A006272, there is no canonical definition to state claims against.
-/

/-! ## A006272.P16961672852265463712

`Δ[(a(n-1)²+3)*a(n-1)]` with `a(0)=2, a(1)=14`
-/

namespace A006272.P16961672852265463712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 14] fun n f1 =>
  (f1 (n - 1) ^ 2 + 3) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A006272.P16961672852265463712

/-!
# A006273: 

The programs for A006273, there is no canonical definition to state claims against.
-/

/-! ## A006273.P15248104396196589551

`(a(n-1)+3)*a(n-1)²-3` with `a(0)=3, a(1)=10`
-/

namespace A006273.P15248104396196589551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  (a (n - 1) + 3) * a (n - 1) ^ 2 - 3

end

end A006273.P15248104396196589551

/-!
# A006275: Pierce expansion of sqrt(2) - 1.

The programs for A006275, there is no canonical definition to state claims against.
-/

/-! ## A006275.P849148349455330683

`A008555(Δ[A087503(n)])`
-/

namespace A006275.P849148349455330683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008555 (f1 (n + 1) - f1 n).toNat

end

end A006275.P849148349455330683

/-! ## A006275.P199638467539726130

`A008555(A038754(n+1))`
-/

namespace A006275.P199638467539726130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008555 (A038754 (n + 1)).toNat

end

end A006275.P199638467539726130

/-! ## A006275.P4754687285446400479

`A008555(A182751(n+3)/3)`
-/

namespace A006275.P4754687285446400479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008555 (SequenceMachineLib.roundAway ((A182751 (n + 3) : ℚ) / 3)).toNat

end

end A006275.P4754687285446400479

/-! ## A006275.P14575639885868048553

`A008555(ceil(acot(n))*A182751(n+1))`
-/

namespace A006275.P14575639885868048553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008555 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A182751 (n + 1)).toNat

end

end A006275.P14575639885868048553

/-!
# A006276: Pierce expansion of (3 - sqrt(5))/2.

The programs for A006276, there is no canonical definition to state claims against.
-/

/-! ## A006276.P2355624523260971337

`A118242(n+2)`
-/

namespace A006276.P2355624523260971337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118242 (n + 2)

end

end A006276.P2355624523260971337

/-! ## A006276.P2077906147864104140

`A061446(A038754(n+2))`
-/

namespace A006276.P2077906147864104140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (A038754 (n + 2)).toNat

end

end A006276.P2077906147864104140

/-! ## A006276.P89598290771653659

`A061446(A182751(n+2))`
-/

namespace A006276.P89598290771653659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (A182751 (n + 2)).toNat

end

end A006276.P89598290771653659

/-! ## A006276.P14277301709097325442

`A061446(3*A038754(n))`
-/

namespace A006276.P14277301709097325442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (3 * A038754 n).toNat

end

end A006276.P14277301709097325442

/-! ## A006276.P7362799524068984658

`2*A000045(2*3^floor(n/2)+1)-A000045(2*3^floor(n/2))-(-1)^n`
-/

namespace A006276.P7362799524068984658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (SequenceMachineLib.roundAway (2 * (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + 1)).toNat - A000045 (SequenceMachineLib.roundAway (2 * (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat - (-1) ^ n

end

end A006276.P7362799524068984658

/-!
# A006277: a(n) = (a(n-1) + 1)*a(n-2).

The programs for A006277, the canonical program `A006277.P14607064481377519137` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006277 has offset 0).

The definition of A006277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+1)*a(n-2)` (program `A006277.P14607064481377519137`, by `A006277.P14607064481377519137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006277.P14607064481377519137

`(a(n-1)+1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006277

/-- `(a(n-1)+1)*a(n-2)` -/
def P14607064481377519137.Spec : Prop :=
  ∀ n, (P14607064481377519137.a n : ℤ) = A006277 n

theorem P14607064481377519137.correct : P14607064481377519137.Spec := by
  intro n
  simp only [A006277]

end A006277

/-! ## A006277.P16823549880712069872

`(1-floor(-a(n-1)))*a(n-2)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A006277.P16823549880712069872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - (-a (n - 1))) * a (n - 2)

end

end A006277.P16823549880712069872

namespace A006277

/-- `(1-floor(-a(n-1)))*a(n-2)` -/
def P16823549880712069872.Spec : Prop :=
  ∀ n, P16823549880712069872.a n = A006277 n

end A006277

/-! ## A006277.P1430223501604407905

`(a(n-1)+1)/a(n-2)^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A006277.P1430223501604407905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + 1) / a (n - 2) ^ (-1 : ℤ)

end

end A006277.P1430223501604407905

namespace A006277

/-- `(a(n-1)+1)/a(n-2)^(-1)` -/
def P1430223501604407905.Spec : Prop :=
  ∀ n, P1430223501604407905.a n = (A006277 n : ℚ)

end A006277

/-! ## A006277.P16604823301140999247

`a(n-2)+lcm(a(n-1), a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A006277.P16604823301140999247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm (a (n - 1)) (a (n - 2))

end

end A006277.P16604823301140999247

namespace A006277

/-- `a(n-2)+lcm(a(n-1), a(n-2))` -/
def P16604823301140999247.Spec : Prop :=
  ∀ n, (P16604823301140999247.a n : ℤ) = A006277 n

end A006277

/-! ## A006277.P9136408691381016345

`(4/2-(1-a(n-1)))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A006277.P9136408691381016345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((4 : ℚ) / 2 - (1 - a (n - 1))) * a (n - 2)

end

end A006277.P9136408691381016345

namespace A006277

/-- `(4/2-(1-a(n-1)))*a(n-2)` -/
def P9136408691381016345.Spec : Prop :=
  ∀ n, P9136408691381016345.a n = (A006277 n : ℚ)

end A006277

/-!
# A006278: a(n) is the product of the first n primes congruent to 1 (mod 4).

The programs for A006278, there is no canonical definition to state claims against.
-/

/-! ## A006278.P7072654612014291368

`∏[p?[comp[or(2, n)]]]`
-/

namespace A006278.P7072654612014291368
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006278.P7072654612014291368

/-! ## A006278.P15665997017048797134

`∏[p?[4*n+1]]`
-/

namespace A006278.P15665997017048797134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006278.P15665997017048797134

/-! ## A006278.P14030516684993742878

`∏[or(1, p?[4*n-7]-1)]`
-/

namespace A006278.P14030516684993742878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006278.P14030516684993742878

/-! ## A006278.P10491948191144578342

`a(n-1)*p?[a(n-1)+4]` with `a(0)=5`
-/

namespace A006278.P10491948191144578342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A006278.P10491948191144578342

/-! ## A006278.P10728034819777432703

`∏[A002144(n+1)]`
-/

namespace A006278.P10728034819777432703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006278.P10728034819777432703

/-!
# A006279: Denominators of convergents to Cahen's constant: a(n+2) = a(n)^2*a(n+1) + a(n).

The programs for A006279, the canonical program `A006279.P12252215772963443281` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006279 has offset 0).

The definition of A006279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006279.P12252215772963443281

`a(n-2)²*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006279

/-- `a(n-2)²*a(n-1)+a(n-2)` -/
def P12252215772963443281.Spec : Prop :=
  ∀ n, (P12252215772963443281.a n : ℤ) = A006279 n

theorem P12252215772963443281.correct : P12252215772963443281.Spec := by
  intro n
  simp only [A006279]

end A006279

/-! ## A006279.P9177263358203021487

`a(n-2)+lcm(a(n-2)², a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A006279.P9177263358203021487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm (a (n - 2) ^ 2) (a (n - 1))

end

end A006279.P9177263358203021487

namespace A006279

/-- `a(n-2)+lcm(a(n-2)², a(n-1))` -/
def P9177263358203021487.Spec : Prop :=
  ∀ n, (P9177263358203021487.a n : ℤ) = A006279 n

end A006279

/-! ## A006279.P14480456393935413942

`(a(n-1)*a(n-2)+1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A006279.P14480456393935413942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) * a (n - 2) + 1) * a (n - 2)

end

end A006279.P14480456393935413942

namespace A006279

/-- `(a(n-1)*a(n-2)+1)*a(n-2)` -/
def P14480456393935413942.Spec : Prop :=
  ∀ n, (P14480456393935413942.a n : ℤ) = A006279 n

end A006279

/-! ## A006279.P8739178571897352501

`a(n-2)+a(n-1)/a(n-2)^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A006279.P8739178571897352501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) / a (n - 2) ^ (-2 : ℤ)

end

end A006279.P8739178571897352501

namespace A006279

/-- `a(n-2)+a(n-1)/a(n-2)^(-2)` -/
def P8739178571897352501.Spec : Prop :=
  ∀ n, P8739178571897352501.a n = (A006279 n : ℚ)

end A006279

/-! ## A006279.P10604207688102610579

`a(n-2)+a(n-1)/(1/a(n-2))²` with `a(0)=1, a(1)=1`
-/

namespace A006279.P10604207688102610579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) / (1 / a (n - 2)) ^ 2

end

end A006279.P10604207688102610579

namespace A006279

/-- `a(n-2)+a(n-1)/(1/a(n-2))²` -/
def P10604207688102610579.Spec : Prop :=
  ∀ n, P10604207688102610579.a n = (A006279 n : ℚ)

end A006279

/-!
# A006280: Partial quotients in continued fraction expansion of Cahen's constant.

The programs for A006280, there is no canonical definition to state claims against.
-/

/-! ## A006280.P12304383818361087074

`floor(sqrt(sqrt(A374400(n))))²`
-/

namespace A006280.P12304383818361087074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A374400 n : ℝ))⌋ ^ 2

end

end A006280.P12304383818361087074

/-! ## A006280.P15922375347433663980

`A239312(a(n-1)+val(n, 2))²` with `a(0)=0`
-/

namespace A006280.P15922375347433663980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A239312 (a (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ)).toNat ^ 2

end

end A006280.P15922375347433663980

/-!
# A006282: Sorting numbers: number of comparisons in Batcher's parallel sort.

The programs for A006282, the canonical program `A006282.P14916949899284549395` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006282 has offset 1).

The definition of A006282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006282.P14916949899284549395

`∑[A083742(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A006282

/-- `∑[A083742(n)]` -/
def P14916949899284549395.Spec : Prop :=
  ∀ n, P14916949899284549395.a n = A006282 (n + 1)

theorem P14916949899284549395.correct : P14916949899284549395.Spec := by
  intro n
  simp only [A006282, Nat.add_sub_cancel]

end A006282

/-! ## A006282.P15625932491621945217

`∑[A073642(A036044(n))+A000120(n)]`
-/

namespace A006282.P15625932491621945217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A036044 n).toNat + A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006282.P15625932491621945217

namespace A006282

/-- `∑[A073642(A036044(n))+A000120(n)]` -/
def P15625932491621945217.Spec : Prop :=
  ∀ n, P15625932491621945217.a n = A006282 (n + 1)

end A006282

/-! ## A006282.P9154825576932513239

`∑[A073642(A059894(2*n+1))]`
-/

namespace A006282.P9154825576932513239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A059894 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006282.P9154825576932513239

namespace A006282

/-- `∑[A073642(A059894(2*n+1))]` -/
def P9154825576932513239.Spec : Prop :=
  ∀ n, P9154825576932513239.a n = A006282 (n + 1)

end A006282

/-! ## A006282.P1311095293744649683

`∑[A068063(A087808(n)²)]`
-/

namespace A006282.P1311095293744649683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A087808 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006282.P1311095293744649683

namespace A006282

/-- `∑[A068063(A087808(n)²)]` -/
def P1311095293744649683.Spec : Prop :=
  ∀ n, P1311095293744649683.a n = A006282 (n + 1)

end A006282

/-! ## A006282.P3964412213125967168

`A003075(n+1)+∑[∑{digits}[n, and(8, #)/8]]`
-/

namespace A006282.P3964412213125967168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003075 (n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006282.P3964412213125967168

namespace A006282

/-- `A003075(n+1)+∑[∑{digits}[n, and(8, #)/8]]` -/
def P3964412213125967168.Spec : Prop :=
  ∀ n, P3964412213125967168.a n = (A006282 (n + 1) : ℚ)

end A006282

/-!
# A006285: Odd numbers not of form p + 2^k (de Polignac numbers).

The programs for A006285, there is no canonical definition to state claims against.
-/

/-! ## A006285.P1045523105946376018

`2*A350960(n)+1`
-/

namespace A006285.P1045523105946376018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350960 n + 1

end

end A006285.P1045523105946376018

/-! ## A006285.P12458794608110939758

`A133122(A065475(n+1))`
-/

namespace A006285.P12458794608110939758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (A065475 (n + 1)).toNat

end

end A006285.P12458794608110939758

/-! ## A006285.P1543953036990544483

`A133122(A181440(n+2))`
-/

namespace A006285.P1543953036990544483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (A181440 (n + 2)).toNat

end

end A006285.P1543953036990544483

/-! ## A006285.P8658581386439111214

`A133122(A184985(n+2))`
-/

namespace A006285.P8658581386439111214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (A184985 (n + 2)).toNat

end

end A006285.P8658581386439111214

/-! ## A006285.P5367567374160925543

`A133122(2-A000007(n)+n)`
-/

namespace A006285.P5367567374160925543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (2 - A000007 n + (n : ℤ)).toNat

end

end A006285.P5367567374160925543

/-! ## A006285.P4181050849067470551

`A133122(n+2)-A000038(n)`
-/

namespace A006285.P4181050849067470551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 2) - A000038 n

end

end A006285.P4181050849067470551

/-! ## A006285.P5051167192114949005

`A133122(2-(A000007(n)-n))`
-/

namespace A006285.P5051167192114949005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (2 - (A000007 n - (n : ℤ))).toNat

end

end A006285.P5051167192114949005

/-! ## A006285.P10191291577624284552

`A133122(A133263(n)-C(n, 2))`
-/

namespace A006285.P10191291577624284552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (A133263 n - (Nat.choose n 2 : ℤ)).toNat

end

end A006285.P10191291577624284552

/-! ## A006285.P18376221976656663558

`A133122(n+2)/(A000038(2*n)+1)`
-/

namespace A006285.P18376221976656663558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133122 (n + 2) : ℚ) / (A000038 (2 * n) + 1 : ℚ)

end

end A006285.P18376221976656663558

/-! ## A006285.P5833670930638162762

`gcd(A133122(n+2)+A000038(n+1), A000038(2*n))`
-/

namespace A006285.P5833670930638162762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133122 (n + 2) + A000038 (n + 1)) (A000038 (2 * n))

end

end A006285.P5833670930638162762

/-! ## A006285.P2499973243792957402

`A133122(n+2)-C(2, A133122(2*n+1))`
-/

namespace A006285.P2499973243792957402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 2) - (Nat.choose 2 (A133122 (2 * n + 1)).toNat : ℤ)

end

end A006285.P2499973243792957402

/-! ## A006285.P17363756871532881036

`record[A133122(A055396(2*n+1)+1)]`
-/

namespace A006285.P17363756871532881036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (A055396 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006285.P17363756871532881036

/-! ## A006285.P9510472771021426673

`∩[2*n+1, A118954(n+1)]`
-/

namespace A006285.P9510472771021426673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006285.P9510472771021426673

/-! ## A006285.P11779756700037858604

`∩[A118954(n+1), A133122(n+1)]`
-/

namespace A006285.P11779756700037858604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006285.P11779756700037858604

/-! ## A006285.P278604470518526179

`∩[A118954(n+1), A305635(n+1)]`
-/

namespace A006285.P278604470518526179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006285.P278604470518526179

/-! ## A006285.P14509999007343402791

`∩[A118954(n+1), A004273(n)]`
-/

namespace A006285.P14509999007343402791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006285.P14509999007343402791

/-! ## A006285.P4996362767948646342

`∩[A118954(n+1), A060747(n)]`
-/

namespace A006285.P4996362767948646342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006285.P4996362767948646342

/-! ## A006285.P7241834053604074557

`∩[A133122(n+1), A163985(n)]`
-/

namespace A006285.P7241834053604074557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006285.P7241834053604074557

/-! ## A006285.P3128227970546189542

`∩[A118954(n+1), A223134(n)]`
-/

namespace A006285.P3128227970546189542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006285.P3128227970546189542

/-! ## A006285.P16759493458241606807

`∩[A133122(n+1), A223134(n)]`
-/

namespace A006285.P16759493458241606807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006285.P16759493458241606807

/-!
# A006286: Numbers not of form p + 2^x + 2^y.

The programs for A006286, there is no canonical definition to state claims against.
-/

/-! ## A006286.P17134551555190811757

`A274123(a(n-2))+1` with `a(0)=1, a(1)=2`
-/

namespace A006286.P17134551555190811757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A274123 (a (n - 2)).toNat + 1

end

end A006286.P17134551555190811757

/-!
# A006287: Sum of squares of digits of ternary representation of n.

The programs for A006287, the canonical program `A006287.P6441187741628273080` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006287 has offset 0).

The definition of A006287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006287.P10621318442874942186

`∑{digits}[A007089(n), #²]`
-/

namespace A006287.P10621318442874942186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A006287.P10621318442874942186

namespace A006287

/-- `∑{digits}[A007089(n), #²]` -/
def P10621318442874942186.Spec : Prop :=
  ∀ n, (P10621318442874942186.a n : ℤ) = A006287 n

end A006287

/-! ## A006287.P543822516395199050

`∑{digits}[A305877(n), #²]`
-/

namespace A006287.P543822516395199050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A006287.P543822516395199050

namespace A006287

/-- `∑{digits}[A305877(n), #²]` -/
def P543822516395199050.Spec : Prop :=
  ∀ n, (P543822516395199050.a n : ℤ) = A006287 n

end A006287

/-! ## A006287.P10675510532723951993

`A053735(n)+2*A081603(n)`
-/

namespace A006287.P10675510532723951993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 2 * A081603 n

end

end A006287.P10675510532723951993

namespace A006287

/-- `A053735(n)+2*A081603(n)` -/
def P10675510532723951993.Spec : Prop :=
  ∀ n, P10675510532723951993.a n = A006287 n

end A006287

/-! ## A006287.P13554541851201651382

`2*A053735(n)-A062756(n)`
-/

namespace A006287.P13554541851201651382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A062756 n

end

end A006287.P13554541851201651382

namespace A006287

/-- `2*A053735(n)-A062756(n)` -/
def P13554541851201651382.Spec : Prop :=
  ∀ n, P13554541851201651382.a n = A006287 n

end A006287

/-! ## A006287.P5931782000327624231

`A062756(n)+4*A081603(n)`
-/

namespace A006287.P5931782000327624231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + 4 * A081603 n

end

end A006287.P5931782000327624231

namespace A006287

/-- `A062756(n)+4*A081603(n)` -/
def P5931782000327624231.Spec : Prop :=
  ∀ n, P5931782000327624231.a n = A006287 n

end A006287

/-! ## A006287.P18053966956787386093

`∑{digits}[2*A007089(n), A002620(#)]`
-/

namespace A006287.P18053966956787386093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002620 x).sum

end

end A006287.P18053966956787386093

namespace A006287

/-- `∑{digits}[2*A007089(n), A002620(#)]` -/
def P18053966956787386093.Spec : Prop :=
  ∀ n, P18053966956787386093.a n = A006287 n

end A006287

/-! ## A006287.P1417502733455380115

`A053735(n)+A053735(A300222(n))`
-/

namespace A006287.P1417502733455380115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + A053735 (A300222 n).toNat

end

end A006287.P1417502733455380115

namespace A006287

/-- `A053735(n)+A053735(A300222(n))` -/
def P1417502733455380115.Spec : Prop :=
  ∀ n, P1417502733455380115.a n = A006287 n

end A006287

/-! ## A006287.P6114007592235414479

`A053735(n)+2*A000120(A289814(n))`
-/

namespace A006287.P6114007592235414479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 2 * A000120 (A289814 n).toNat

end

end A006287.P6114007592235414479

namespace A006287

/-- `A053735(n)+2*A000120(A289814(n))` -/
def P6114007592235414479.Spec : Prop :=
  ∀ n, P6114007592235414479.a n = A006287 n

end A006287

/-! ## A006287.P6441187741628273080

`2*A053735(n)-A007814(A006047(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A006287

/-- `2*A053735(n)-A007814(A006047(n))` -/
def P6441187741628273080.Spec : Prop :=
  ∀ n, P6441187741628273080.a n = A006287 n

theorem P6441187741628273080.correct : P6441187741628273080.Spec := by
  intro n
  simp only [A006287]

end A006287

/-! ## A006287.P8301693720221826982

`2*A053735(n)-A000120(A289813(n))`
-/

namespace A006287.P8301693720221826982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A000120 (A289813 n).toNat

end

end A006287.P8301693720221826982

namespace A006287

/-- `2*A053735(n)-A000120(A289813(n))` -/
def P8301693720221826982.Spec : Prop :=
  ∀ n, P8301693720221826982.a n = A006287 n

end A006287

/-! ## A006287.P16578804572978419728

`A062756(n)+4*A001222(A117592(n))`
-/

namespace A006287.P16578804572978419728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + 4 * A001222 (A117592 n).toNat

end

end A006287.P16578804572978419728

namespace A006287

/-- `A062756(n)+4*A001222(A117592(n))` -/
def P16578804572978419728.Spec : Prop :=
  ∀ n, P16578804572978419728.a n = A006287 n

end A006287

/-! ## A006287.P461128649814616267

`∑{d}[A006047(n), A297108(#)²]`
-/

namespace A006287.P461128649814616267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d ^ 2

end

end A006287.P461128649814616267

namespace A006287

/-- `∑{d}[A006047(n), A297108(#)²]` -/
def P461128649814616267.Spec : Prop :=
  ∀ n, P461128649814616267.a n = A006287 n

end A006287

/-! ## A006287.P7890295053596232722

`A062756(n)+A001222(A117592(n)²²)`
-/

namespace A006287.P7890295053596232722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + A001222 ((A117592 n ^ 2) ^ 2).toNat

end

end A006287.P7890295053596232722

namespace A006287

/-- `A062756(n)+A001222(A117592(n)²²)` -/
def P7890295053596232722.Spec : Prop :=
  ∀ n, P7890295053596232722.a n = A006287 n

end A006287

/-! ## A006287.P4664093037831898667

`∑{e}[A101278(n), #²]`
-/

namespace A006287.P4664093037831898667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A006287.P4664093037831898667

namespace A006287

/-- `∑{e}[A101278(n), #²]` -/
def P4664093037831898667.Spec : Prop :=
  ∀ n, (P4664093037831898667.a n : ℤ) = A006287 n

end A006287

/-! ## A006287.P10988070989072365463

`A090885(A101278(n))`
-/

namespace A006287.P10988070989072365463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (A101278 n).toNat

end

end A006287.P10988070989072365463

namespace A006287

/-- `A090885(A101278(n))` -/
def P10988070989072365463.Spec : Prop :=
  ∀ n, P10988070989072365463.a n = A006287 n

end A006287

/-! ## A006287.P13417120779507245379

`A003132(A038586(n))`
-/

namespace A006287.P13417120779507245379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A038586 n).toNat

end

end A006287.P13417120779507245379

namespace A006287

/-- `A003132(A038586(n))` -/
def P13417120779507245379.Spec : Prop :=
  ∀ n, P13417120779507245379.a n = A006287 n

end A006287

/-!
# A006288: Loxton-van der Poorten sequence: base-4 representation contains only -1, 0, +1.

The programs for A006288, the canonical program `A006288.P15058602425544907126` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006288 has offset 0).

The definition of A006288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006288.P15058602425544907126

`A023717(2*n)-A023717(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006288

/-- `A023717(2*n)-A023717(n)` -/
def P15058602425544907126.Spec : Prop :=
  ∀ n, P15058602425544907126.a n = A006288 n

theorem P15058602425544907126.correct : P15058602425544907126.Spec := by
  intro n
  simp only [A006288]

end A006288

/-! ## A006288.P3991579346705070834

`eq[1, A344893(n)%2]`
-/

namespace A006288.P3991579346705070834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344893 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006288.P3991579346705070834

namespace A006288

/-- `eq[1, A344893(n)%2]` -/
def P3991579346705070834.Spec : Prop :=
  ∀ n, (P3991579346705070834.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P9085955801826722469

`eq[0, A000989(A215090(n))]`
-/

namespace A006288.P9085955801826722469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A215090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006288.P9085955801826722469

namespace A006288

/-- `eq[0, A000989(A215090(n))]` -/
def P9085955801826722469.Spec : Prop :=
  ∀ n, (P9085955801826722469.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P11946218654178381303

`eq[0, A059906(A184617(n))]`
-/

namespace A006288.P11946218654178381303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A184617 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006288.P11946218654178381303

namespace A006288

/-- `eq[0, A059906(A184617(n))]` -/
def P11946218654178381303.Spec : Prop :=
  ∀ n, (P11946218654178381303.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P13878238013723439994

`eq[0, A292372(A005351(n))]`
-/

namespace A006288.P13878238013723439994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A005351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006288.P13878238013723439994

namespace A006288

/-- `eq[0, A292372(A005351(n))]` -/
def P13878238013723439994.Spec : Prop :=
  ∀ n, (P13878238013723439994.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P12693560334484854659

`eq[0, A292372(A048724(n))]`
-/

namespace A006288.P12693560334484854659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A048724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006288.P12693560334484854659

namespace A006288

/-- `eq[0, A292372(A048724(n))]` -/
def P12693560334484854659.Spec : Prop :=
  ∀ n, (P12693560334484854659.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P14060658921723720358

`eq[A084101(n), A344893(n)]`
-/

namespace A006288.P14060658921723720358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006288.P14060658921723720358

namespace A006288

/-- `eq[A084101(n), A344893(n)]` -/
def P14060658921723720358.Spec : Prop :=
  ∀ n, (P14060658921723720358.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P6950837317312080105

`eq[A292373(A048724(n)), A309952(n)]`
-/

namespace A006288.P6950837317312080105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A048724 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006288.P6950837317312080105

namespace A006288

/-- `eq[A292373(A048724(n)), A309952(n)]` -/
def P6950837317312080105.Spec : Prop :=
  ∀ n, (P6950837317312080105.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P4429355450117327680

`eq[A004514(A178729(n)/2), A178729(n)]`
-/

namespace A006288.P4429355450117327680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 (SequenceMachineLib.roundAway ((A178729 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006288.P4429355450117327680

namespace A006288

/-- `eq[A004514(A178729(n)/2), A178729(n)]` -/
def P4429355450117327680.Spec : Prop :=
  ∀ n, (P4429355450117327680.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P2884877243778763980

`eq[A004514(A178729(n)-n), A178729(n)]`
-/

namespace A006288.P2884877243778763980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 (A178729 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006288.P2884877243778763980

namespace A006288

/-- `eq[A004514(A178729(n)-n), A178729(n)]` -/
def P2884877243778763980.Spec : Prop :=
  ∀ n, (P2884877243778763980.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P11704323782802559711

`lt[A000120(n)*A160382(A048724(n)), 1]`
-/

namespace A006288.P11704323782802559711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A160382 (A048724 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A006288.P11704323782802559711

namespace A006288

/-- `lt[A000120(n)*A160382(A048724(n)), 1]` -/
def P11704323782802559711.Spec : Prop :=
  ∀ n, (P11704323782802559711.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P15163698103328850080

`lt[A001951(n)*A160382(A048724(n)), 1]`
-/

namespace A006288.P15163698103328850080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n * A160382 (A048724 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A006288.P15163698103328850080

namespace A006288

/-- `lt[A001951(n)*A160382(A048724(n)), 1]` -/
def P15163698103328850080.Spec : Prop :=
  ∀ n, (P15163698103328850080.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P13672955765994836255

`lt[A056220(n+3)*A160382(A048724(n)), 1]`
-/

namespace A006288.P13672955765994836255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 3) * A160382 (A048724 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A006288.P13672955765994836255

namespace A006288

/-- `lt[A056220(n+3)*A160382(A048724(n)), 1]` -/
def P13672955765994836255.Spec : Prop :=
  ∀ n, (P13672955765994836255.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P9285802415291093527

`eq[A004514(3*n), A004514(n)]`
-/

namespace A006288.P9285802415291093527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006288.P9285802415291093527

namespace A006288

/-- `eq[A004514(3*n), A004514(n)]` -/
def P9285802415291093527.Spec : Prop :=
  ∀ n, (P9285802415291093527.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P6828602563689665971

`eq[A059905(3*n), A059905(n)]`
-/

namespace A006288.P6828602563689665971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006288.P6828602563689665971

namespace A006288

/-- `eq[A059905(3*n), A059905(n)]` -/
def P6828602563689665971.Spec : Prop :=
  ∀ n, (P6828602563689665971.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P3889783094326738292

`eq[A063694(3*n), A063694(n)]`
-/

namespace A006288.P3889783094326738292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006288.P3889783094326738292

namespace A006288

/-- `eq[A063694(3*n), A063694(n)]` -/
def P3889783094326738292.Spec : Prop :=
  ∀ n, (P3889783094326738292.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P10901763940374156736

`eq[1, A344893(4*n)]`
-/

namespace A006288.P10901763940374156736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344893 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006288.P10901763940374156736

namespace A006288

/-- `eq[1, A344893(4*n)]` -/
def P10901763940374156736.Spec : Prop :=
  ∀ n, (P10901763940374156736.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P5283542917587793665

`record[A301572(A023717(n))]`
-/

namespace A006288.P5283542917587793665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301572 (A023717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006288.P5283542917587793665

namespace A006288

/-- `record[A301572(A023717(n))]` -/
def P5283542917587793665.Spec : Prop :=
  ∀ n, P5283542917587793665.a n = A006288 n

end A006288

/-! ## A006288.P9248198980381284658

`eq[0, A004514(A178729(n))]`
-/

namespace A006288.P9248198980381284658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 (A178729 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006288.P9248198980381284658

namespace A006288

/-- `eq[0, A004514(A178729(n))]` -/
def P9248198980381284658.Spec : Prop :=
  ∀ n, (P9248198980381284658.a n : ℤ) = A006288 n

end A006288

/-! ## A006288.P5515313545204790212

`lt[A160382(A048724(n)), 1]%A001019(n)`
-/

namespace A006288.P5515313545204790212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A048724 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) (A001019 n)

end

end A006288.P5515313545204790212

namespace A006288

/-- `lt[A160382(A048724(n)), 1]%A001019(n)` -/
def P5515313545204790212.Spec : Prop :=
  ∀ n, P5515313545204790212.a n = A006288 n

end A006288

/-!
# A006289: Number of series-reduced 2-connected graphs with n nodes.

The programs for A006289, there is no canonical definition to state claims against.
-/

/-! ## A006289.P5861912764234895355

`A380345(A041017(n)*A320800(n))`
-/

namespace A006289.P5861912764234895355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380345 (A041017 n * A320800 n).toNat

end

end A006289.P5861912764234895355

/-!
# A006290: Number of 3-connected graphs with n nodes.

The programs for A006290, there is no canonical definition to state claims against.
-/

/-! ## A006290.P9662218171246117404

`A002218(n+4)-A052443(n+4)`
-/

namespace A006290.P9662218171246117404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002218 (n + 4) - A052443 (n + 4)

end

end A006290.P9662218171246117404

/-! ## A006290.P7610710422037612866

`A327805(A167614(n+3))`
-/

namespace A006290.P7610710422037612866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (A167614 (n + 3)).toNat

end

end A006290.P7610710422037612866

/-! ## A006290.P6976820471211910480

`A327805(A152950(n+5))`
-/

namespace A006290.P6976820471211910480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (A152950 (n + 5)).toNat

end

end A006290.P6976820471211910480

/-!
# A006291: Pseudo-bricks with n nodes.

The programs for A006291, there is no canonical definition to state claims against.
-/

/-! ## A006291.P13626523115337019512

`2*A006293(n+4)-A006292(n+4)`
-/

namespace A006291.P13626523115337019512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006293 (n + 4) - A006292 (n + 4)

end

end A006291.P13626523115337019512

/-!
# A006292: Pseudo-bricks with n nodes.

The programs for A006292, there is no canonical definition to state claims against.
-/

/-! ## A006292.P17808611818699015687

`2*A006293(n+4)-A006291(n+4)`
-/

namespace A006292.P17808611818699015687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006293 (n + 4) - A006291 (n + 4)

end

end A006292.P17808611818699015687

/-!
# A006293: Pseudo-bricks with n nodes.

The programs for A006293, there is no canonical definition to state claims against.
-/

/-! ## A006293.P1349692429282635507

`(A006292(n+4)+A006291(n+4))/2`
-/

namespace A006293.P1349692429282635507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006292 (n + 4) + A006291 (n + 4) : ℚ) / 2

end

end A006293.P1349692429282635507

/-!
# A006294: Number of rooted planar maps with n edges.

The programs for A006294, there is no canonical definition to state claims against.
-/

/-! ## A006294.P7520579400739051124

`A269920(A194274(n))`
-/

namespace A006294.P7520579400739051124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A194274 n).toNat

end

end A006294.P7520579400739051124

/-! ## A006294.P9710591557354777306

`A269920(record[A245300(n)])`
-/

namespace A006294.P9710591557354777306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006294.P9710591557354777306

/-! ## A006294.P5364110308181949591

`A269920(A007590(n+1))`
-/

namespace A006294.P5364110308181949591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A007590 (n + 1)).toNat

end

end A006294.P5364110308181949591

/-! ## A006294.P11662065094021397639

`A269920(A080476(n+1))`
-/

namespace A006294.P11662065094021397639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A080476 (n + 1)).toNat

end

end A006294.P11662065094021397639

/-! ## A006294.P11375783366668569573

`A269920(A004525(n²)+n)`
-/

namespace A006294.P11375783366668569573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A004525 (n ^ 2) + (n : ℤ)).toNat

end

end A006294.P11375783366668569573

/-! ## A006294.P6383821000957767791

`A269920(A004525(A005563(n)))`
-/

namespace A006294.P6383821000957767791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A004525 (A005563 n).toNat).toNat

end

end A006294.P6383821000957767791

/-!
# A006295: Number of genus 1 rooted maps with 2 faces with n vertices.

The programs for A006295, there is no canonical definition to state claims against.
-/

/-! ## A006295.P17757499504089280026

`A269921(∑[n+1]+3)`
-/

namespace A006295.P17757499504089280026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A006295.P17757499504089280026

/-! ## A006295.P8805245352154492713

`record[gcd(A242447(n+1), A269921(n+4))]`
-/

namespace A006295.P8805245352154492713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242447 (n + 1)) (A269921 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006295.P8805245352154492713

/-! ## A006295.P8682097472180030423

`and(-1, A269921(A000217(n+2)))`
-/

namespace A006295.P8682097472180030423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A269921 (A000217 (n + 2)).toNat)

end

end A006295.P8682097472180030423

/-! ## A006295.P8519440339680212557

`A269921(A000217(n+2))%A077261(n+2)`
-/

namespace A006295.P8519440339680212557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269921 (A000217 (n + 2)).toNat) (A077261 (n + 2))

end

end A006295.P8519440339680212557

/-! ## A006295.P13419369506921261060

`record[gcd(A269921(n+3), A269944(n+3))]`
-/

namespace A006295.P13419369506921261060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269921 (n + 3)) (A269944 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006295.P13419369506921261060

/-!
# A006296: Number of genus 1 rooted maps with 3 faces with n vertices.

The programs for A006296, there is no canonical definition to state claims against.
-/

/-! ## A006296.P9464717223735244582

`A269921(∑[n+2]+5)`
-/

namespace A006296.P9464717223735244582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A006296.P9464717223735244582

/-! ## A006296.P9487863095608463217

`record[gcd(A025581(n), A269921(n+5))]`
-/

namespace A006296.P9487863095608463217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A269921 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006296.P9487863095608463217

/-! ## A006296.P2089910390872821159

`A269921(A101881(2*n+3))%A015506(n+4)`
-/

namespace A006296.P2089910390872821159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269921 (A101881 (2 * n + 3)).toNat) (A015506 (n + 4))

end

end A006296.P2089910390872821159

/-!
# A006297: Number of rooted genus-1 maps with n edges.

The programs for A006297, there is no canonical definition to state claims against.
-/

/-! ## A006297.P12920370433061806903

`A269921(A061925(n+1))`
-/

namespace A006297.P12920370433061806903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A061925 (n + 1)).toNat

end

end A006297.P12920370433061806903

/-! ## A006297.P14092854383274058336

`A269921(A194274(n)+2)`
-/

namespace A006297.P14092854383274058336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A194274 n + 2).toNat

end

end A006297.P14092854383274058336

/-! ## A006297.P17213557761793451350

`A269921(A333574(n+2))`
-/

namespace A006297.P17213557761793451350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A333574 (n + 2)).toNat

end

end A006297.P17213557761793451350

/-! ## A006297.P3202712824258891011

`A269921(∑[A109613(n)]+1)`
-/

namespace A006297.P3202712824258891011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A006297.P3202712824258891011

/-! ## A006297.P17051504715800534543

`A269921(A007590(n+1)+2)`
-/

namespace A006297.P17051504715800534543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A007590 (n + 1) + 2).toNat

end

end A006297.P17051504715800534543

/-! ## A006297.P7009865504151242356

`A269921(A000096(n)+3-A008619(n))`
-/

namespace A006297.P7009865504151242356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A000096 n + 3 - A008619 n).toNat

end

end A006297.P7009865504151242356

/-!
# A006298: Number of genus 2 rooted maps with 1 face with n vertices.

The programs for A006298, there is no canonical definition to state claims against.
-/

/-! ## A006298.P8502149346156077894

`A269922(∑[n]+4)`
-/

namespace A006298.P8502149346156077894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A006298.P8502149346156077894

/-! ## A006298.P3433643007540223721

`record[gcd(A002262(n), A269922(n+4))]`
-/

namespace A006298.P3433643007540223721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A269922 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006298.P3433643007540223721

/-! ## A006298.P15481380098486031802

`record[root(A269922(n+4), A055129(n+1))]`
-/

namespace A006298.P15481380098486031802
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269922 (n + 4) : ℝ) ^ (1 / (A055129 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006298.P15481380098486031802

/-! ## A006298.P795548931931261630

`record[root(A269922(n+4), A130330(n))]`
-/

namespace A006298.P795548931931261630
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269922 (n + 4) : ℝ) ^ (1 / (A130330 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006298.P795548931931261630

/-! ## A006298.P5906081468949852329

`record[A269922(n+4)/A141697(n+1)]`
-/

namespace A006298.P5906081468949852329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269922 (n + 4) : ℚ) / (A141697 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006298.P5906081468949852329

/-! ## A006298.P3117840487408401862

`record[A269922(n+4)/A174150(n)]`
-/

namespace A006298.P3117840487408401862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269922 (n + 4) : ℚ) / (A174150 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006298.P3117840487408401862

/-!
# A006299: Number of rooted genus-2 maps with n edges.

The programs for A006299, there is no canonical definition to state claims against.
-/

/-! ## A006299.P4898019787480532988

`A269922(A194274(n)+4)`
-/

namespace A006299.P4898019787480532988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A194274 n + 4).toNat

end

end A006299.P4898019787480532988

/-! ## A006299.P15767401945055302204

`A269922(A007590(n+1)+4)`
-/

namespace A006299.P15767401945055302204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A007590 (n + 1) + 4).toNat

end

end A006299.P15767401945055302204

/-! ## A006299.P15502289298160317492

`A269922(2*A290743(n+1))`
-/

namespace A006299.P15502289298160317492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (2 * A290743 (n + 1)).toNat

end

end A006299.P15502289298160317492

/-! ## A006299.P14493343008143780965

`A269922(A145018(n+1)+∑[A000035(n)])`
-/

namespace A006299.P14493343008143780965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A145018 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006299.P14493343008143780965

/-! ## A006299.P17586282440173260732

`record[gcd(A181940(n), A269922(n+4))]`
-/

namespace A006299.P17586282440173260732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181940 n) (A269922 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006299.P17586282440173260732

