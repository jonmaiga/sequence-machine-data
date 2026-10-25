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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C002
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A223300: 4X4X4 triangular graph coloring a rectangular array: number of nX3 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223300, there is no canonical definition to state claims against.
-/

/-! ## A223300.P16782756811801701442

`A223305(∑[n+2]+4)`
-/

namespace A223300.P16782756811801701442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223300.P16782756811801701442

/-! ## A223300.P16694019664865646022

`lcm(2, A223305(A167614(n+1)))`
-/

namespace A223300.P16694019664865646022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223305 (A167614 (n + 1)).toNat)

end

end A223300.P16694019664865646022

/-! ## A223300.P14356745067862953089

`A223305(A167614(n+1))+A185709(n+1)`
-/

namespace A223300.P14356745067862953089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A167614 (n + 1)).toNat + A185709 (n + 1)

end

end A223300.P14356745067862953089

/-! ## A223300.P16172257822180042608

`A223305(A167614(n+1))%A223301(n+1)`
-/

namespace A223300.P16172257822180042608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223305 (A167614 (n + 1)).toNat) (A223301 (n + 1))

end

end A223300.P16172257822180042608

/-! ## A223300.P5970203548895705312

`record[A223305(A198464(n+1))]`
-/

namespace A223300.P5970203548895705312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223300.P5970203548895705312

/-!
# A223301: 4X4X4 triangular graph coloring a rectangular array: number of nX4 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223301, there is no canonical definition to state claims against.
-/

/-! ## A223301.P10079698746713688558

`A223305(A052905(n)+9)`
-/

namespace A223301.P10079698746713688558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A052905 n + 9).toNat

end

end A223301.P10079698746713688558

/-! ## A223301.P5440049086943005912

`A223305(A167614(n+2)+1)`
-/

namespace A223301.P5440049086943005912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A167614 (n + 2) + 1).toNat

end

end A223301.P5440049086943005912

/-! ## A223301.P13765866118970909784

`A223305(eq[3, A002262(n)]+1)`
-/

namespace A223301.P13765866118970909784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223301.P13765866118970909784

/-! ## A223301.P8599632167693257888

`A223305(Δ[A264443(n)-n²])`
-/

namespace A223301.P8599632167693257888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (f1 (n + 1) - f1 n).toNat

end

end A223301.P8599632167693257888

/-! ## A223301.P6149339387100650497

`A223305(A141214(n+1))`
-/

namespace A223301.P6149339387100650497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A141214 (n + 1)).toNat

end

end A223301.P6149339387100650497

/-!
# A223302: 4X4X4 triangular graph coloring a rectangular array: number of nX5 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223302, there is no canonical definition to state claims against.
-/

/-! ## A223302.P8540347009700951981

`A223305(A155212(n)+13)`
-/

namespace A223302.P8540347009700951981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A155212 n + 13).toNat

end

end A223302.P8540347009700951981

/-! ## A223302.P2925608496340052125

`A223305(eq[4, A002262(n)]+1)`
-/

namespace A223302.P2925608496340052125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223302.P2925608496340052125

/-! ## A223302.P4419490680128154307

`A223305(Δ[A264443(n)])`
-/

namespace A223302.P4419490680128154307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (f1 (n + 1) - f1 n).toNat

end

end A223302.P4419490680128154307

/-! ## A223302.P12406420629773916108

`A223305(A374005(n+1))`
-/

namespace A223302.P12406420629773916108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A374005 (n + 1)).toNat

end

end A223302.P12406420629773916108

/-!
# A223303: 4X4X4 triangular graph coloring a rectangular array: number of nX6 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223303, there is no canonical definition to state claims against.
-/

/-! ## A223303.P18186961356249141240

`A223305(Δ[A264443(n)]+10)`
-/

namespace A223303.P18186961356249141240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (f1 (n + 1) - f1 n + 10).toNat

end

end A223303.P18186961356249141240

/-! ## A223303.P2010228414355231160

`A223305(A046691(n+3)+10)`
-/

namespace A223303.P2010228414355231160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A046691 (n + 3) + 10).toNat

end

end A223303.P2010228414355231160

/-! ## A223303.P3116641630369531163

`A223305(eq[5, A002262(n)]+1)`
-/

namespace A223303.P3116641630369531163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223303.P3116641630369531163

/-! ## A223303.P14030574207977335300

`A223305(A374007(n+1))`
-/

namespace A223303.P14030574207977335300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A374007 (n + 1)).toNat

end

end A223303.P14030574207977335300

/-! ## A223303.P13131170202467245725

`A223305(A052905(n+3))`
-/

namespace A223303.P13131170202467245725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (A052905 (n + 3)).toNat

end

end A223303.P13131170202467245725

/-!
# A223304: 

The programs for A223304, there is no canonical definition to state claims against.
-/

/-! ## A223304.P4762195424578249429

`A223305(eq[6, A002262(n)]+1)`
-/

namespace A223304.P4762195424578249429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223304.P4762195424578249429

/-!
# A223305: T(n,k)=4X4X4 triangular graph coloring a rectangular array: number of nXk 0..9 arrays where 0..9 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223305, there is no canonical definition to state claims against.
-/

/-! ## A223305.P17735467346465023512

`A081449(A000041(n))%A262107(n+1)`
-/

namespace A223305.P17735467346465023512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081449 (A000041 n).toNat) (A262107 (n + 1))

end

end A223305.P17735467346465023512

/-! ## A223305.P15140609931426497040

`A081449(A347573(n))%A262107(n+1)`
-/

namespace A223305.P15140609931426497040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081449 (A347573 (n + 21)).toNat) (A262107 (n + 1))

end

end A223305.P15140609931426497040

/-!
# A223306: Number of nX3 0..2 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223306, there is no canonical definition to state claims against.
-/

/-! ## A223306.P10859129672501029694

`A222856(n+1)*A223044(n+1)`
-/

namespace A223306.P10859129672501029694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222856 (n + 1) * A223044 (n + 1)

end

end A223306.P10859129672501029694

/-! ## A223306.P13445866787465468786

`A222857(n+1)/A222855(n+1)*A223044(n+1)`
-/

namespace A223306.P13445866787465468786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222857 (n + 1) : ℚ) / (A222855 (n + 1) : ℚ) * (A223044 (n + 1) : ℚ)

end

end A223306.P13445866787465468786

/-! ## A223306.P9701294424962441606

`A222857(n+1)/(2^n+A222955(n+1)/2)*A223044(n+1)`
-/

namespace A223306.P9701294424962441606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222857 (n + 1) : ℚ) / ((2 ^ n : ℚ) + (A222955 (n + 1) : ℚ) / 2) * (A223044 (n + 1) : ℚ)

end

end A223306.P9701294424962441606

/-! ## A223306.P15841853436411114256

`A222857(n+1)/(A133406(n+1)+A000079(n))*A223044(n+1)`
-/

namespace A223306.P15841853436411114256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222857 (n + 1) : ℚ) / (A133406 (n + 1) + A000079 n : ℚ) * (A223044 (n + 1) : ℚ)

end

end A223306.P15841853436411114256

/-! ## A223306.P14908571482779517024

`A222856(n+1)/A223045(n+1)*A223046(n+1)`
-/

namespace A223306.P14908571482779517024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222856 (n + 1) : ℚ) / (A223045 (n + 1) : ℚ) * (A223046 (n + 1) : ℚ)

end

end A223306.P14908571482779517024

/-!
# A223307: Number of nX4 0..2 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223307, there is no canonical definition to state claims against.
-/

/-! ## A223307.P8823223938506408448

`A223309(∑[n+3]+1)`
-/

namespace A223307.P8823223938506408448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223309 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223307.P8823223938506408448

/-! ## A223307.P15556637708673089904

`A223309(A141214(n)+1)-A057536(A059995(n))`
-/

namespace A223307.P15556637708673089904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223309 (A141214 n + 1).toNat - A057536 (A059995 n).toNat

end

end A223307.P15556637708673089904

/-!
# A223308: Number of nX5 0..2 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223308, there is no canonical definition to state claims against.
-/

/-! ## A223308.P1197591780725855900

`A223309(A141214(n+1))`
-/

namespace A223308.P1197591780725855900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223309 (A141214 (n + 1)).toNat

end

end A223308.P1197591780725855900

/-! ## A223308.P11380528653548802433

`A223309(A027379(n+2))`
-/

namespace A223308.P11380528653548802433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223309 (A027379 (n + 2)).toNat

end

end A223308.P11380528653548802433

/-!
# A223310: Number of 1X(n+1) 0..2 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223310, there is no canonical definition to state claims against.
-/

/-! ## A223310.P9892546615187873201

`3^(n+2)-A223044(n+2)`
-/

namespace A223310.P9892546615187873201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 2) : ℤ) - A223044 (n + 2)

end

end A223310.P9892546615187873201

/-! ## A223310.P6198514917417911325

`A222844(n+1)/A222843(n+1)`
-/

namespace A223310.P6198514917417911325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222844 (n + 1) : ℚ) / (A222843 (n + 1) : ℚ)

end

end A223310.P6198514917417911325

/-! ## A223310.P9521351765550120789

`A222844(n+1)*A222970(n+1)/A222971(n+1)`
-/

namespace A223310.P9521351765550120789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222844 (n + 1) * A222970 (n + 1) : ℚ) / (A222971 (n + 1) : ℚ)

end

end A223310.P9521351765550120789

/-! ## A223310.P15877177220860463678

`A222844(n+1)/abs(A222971(n+1)/(2^(n+1)-A133406(n+2)))`
-/

namespace A223310.P15877177220860463678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222844 (n + 1) : ℚ) / |(A222971 (n + 1) : ℚ) / ((2 ^ (n + 1) : ℤ) - A133406 (n + 2) : ℚ)|

end

end A223310.P15877177220860463678

/-! ## A223310.P13101587353947847297

`A222844(n+1)/abs(A222971(n+1)/(2^(n+2)-A222855(n+2)))`
-/

namespace A223310.P13101587353947847297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222844 (n + 1) : ℚ) / |(A222971 (n + 1) : ℚ) / ((2 ^ (n + 2) : ℤ) - A222855 (n + 2) : ℚ)|

end

end A223310.P13101587353947847297

/-!
# A223311: Number of 3X(n+1) 0..2 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223311, there is no canonical definition to state claims against.
-/

/-! ## A223311.P10656999282519258124

`A222925(n+1)*A223310(n+1)`
-/

namespace A223311.P10656999282519258124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222925 (n + 1) * A223310 (n + 1)

end

end A223311.P10656999282519258124

/-! ## A223311.P13350128043890033469

`A222925(n+1)*A223309(∑[n]+1)`
-/

namespace A223311.P13350128043890033469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222925 (n + 1) * A223309 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223311.P13350128043890033469

/-! ## A223311.P8453216236183958432

`A222929(∑[n]+1)*A223310(n+1)`
-/

namespace A223311.P8453216236183958432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222929 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A223310 (n + 1)

end

end A223311.P8453216236183958432

/-! ## A223311.P12692216798735813234

`(3^(n+2)-A223044(n+2))*A222925(n+1)`
-/

namespace A223311.P12692216798735813234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 2) : ℤ) - A223044 (n + 2)) * A222925 (n + 1)

end

end A223311.P12692216798735813234

/-! ## A223311.P5410283924078855998

`A222929(∑[n]+1)*A223309(A000124(n))`
-/

namespace A223311.P5410283924078855998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222929 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A223309 (A000124 n).toNat

end

end A223311.P5410283924078855998

/-!
# A223312: Number of nX3 0..1 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A223312, there is no canonical definition to state claims against.
-/

/-! ## A223312.P10549773580558204863

`A223317(∑[n+2]+4)`
-/

namespace A223312.P10549773580558204863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223312.P10549773580558204863

/-! ## A223312.P2369462130737805033

`lcm(2, A223317(A167614(n+1)))`
-/

namespace A223312.P2369462130737805033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223317 (A167614 (n + 1)).toNat)

end

end A223312.P2369462130737805033

/-! ## A223312.P15460425830170620113

`A223317(A167614(n+1))+A025438(n)`
-/

namespace A223312.P15460425830170620113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A167614 (n + 1)).toNat + A025438 n

end

end A223312.P15460425830170620113

/-! ## A223312.P6605390337787228609

`A223317(A167614(n+1))+A185245(n)`
-/

namespace A223312.P6605390337787228609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A167614 (n + 1)).toNat + A185245 n

end

end A223312.P6605390337787228609

/-! ## A223312.P2638696504677493257

`A223317(A167614(n+1))+A185246(n)`
-/

namespace A223312.P2638696504677493257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A167614 (n + 1)).toNat + A185246 n

end

end A223312.P2638696504677493257

/-!
# A223313: Number of n X 4 0..1 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A223313, there is no canonical definition to state claims against.
-/

/-! ## A223313.P9855127909081661134

`A223317(A374004(n+1))`
-/

namespace A223313.P9855127909081661134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A374004 (n + 1)).toNat

end

end A223313.P9855127909081661134

/-! ## A223313.P795477518647452073

`A223317(A141214(n)+7)`
-/

namespace A223313.P795477518647452073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A141214 n + 7).toNat

end

end A223313.P795477518647452073

/-! ## A223313.P7869488604009017214

`A223317(A052905(n)+9)`
-/

namespace A223313.P7869488604009017214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A052905 n + 9).toNat

end

end A223313.P7869488604009017214

/-! ## A223313.P14756107753334479301

`A223317(A055999(n)+10)`
-/

namespace A223313.P14756107753334479301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A055999 n + 10).toNat

end

end A223313.P14756107753334479301

/-! ## A223313.P11648566280328676706

`A223317(eq[5, A066657(n)])`
-/

namespace A223313.P11648566280328676706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223313.P11648566280328676706

/-!
# A223314: Number of nX5 0..1 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A223314, there is no canonical definition to state claims against.
-/

/-! ## A223314.P4206469284976870194

`A223317(A374005(n+1))`
-/

namespace A223314.P4206469284976870194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A374005 (n + 1)).toNat

end

end A223314.P4206469284976870194

/-! ## A223314.P5723142663321676155

`A223317(A167499(n+3))`
-/

namespace A223314.P5723142663321676155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A167499 (n + 3)).toNat

end

end A223314.P5723142663321676155

/-! ## A223314.P7377097724213574115

`A223317(A155212(n)+13)`
-/

namespace A223314.P7377097724213574115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A155212 n + 13).toNat

end

end A223314.P7377097724213574115

/-! ## A223314.P7269497540580233545

`A223317(A056000(n)+15)`
-/

namespace A223314.P7269497540580233545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A056000 n + 15).toNat

end

end A223314.P7269497540580233545

/-! ## A223314.P14963847784883129457

`A223317(eq[7, A066657(n)])`
-/

namespace A223314.P14963847784883129457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223314.P14963847784883129457

/-!
# A223315: Number of nX6 0..1 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A223315, there is no canonical definition to state claims against.
-/

/-! ## A223315.P14501842185132858443

`A223317(A374007(n+1))`
-/

namespace A223315.P14501842185132858443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A374007 (n + 1)).toNat

end

end A223315.P14501842185132858443

/-! ## A223315.P4055704528605745096

`A223317(A052905(n+3))`
-/

namespace A223315.P4055704528605745096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A052905 (n + 3)).toNat

end

end A223315.P4055704528605745096

/-! ## A223315.P10020651960448766511

`A223317(A056119(n)+16)`
-/

namespace A223315.P10020651960448766511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A056119 n + 16).toNat

end

end A223315.P10020651960448766511

/-! ## A223315.P5243587210481120625

`A223317(A056115(n)+21)`
-/

namespace A223315.P5243587210481120625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A056115 n + 21).toNat

end

end A223315.P5243587210481120625

/-! ## A223315.P16074447283957468665

`A223317(eq[3, A219347(n)])`
-/

namespace A223315.P16074447283957468665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223315.P16074447283957468665

/-!
# A223316: Number of nX7 0..1 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A223316, there is no canonical definition to state claims against.
-/

/-! ## A223316.P11027039740715473416

`A223317(A374008(n+1))`
-/

namespace A223316.P11027039740715473416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A374008 (n + 1)).toNat

end

end A223316.P11027039740715473416

/-! ## A223316.P6679051597333689713

`A223317(A055999(n+4))`
-/

namespace A223316.P6679051597333689713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A055999 (n + 4)).toNat

end

end A223316.P6679051597333689713

/-! ## A223316.P5503290130437560869

`A223317(A056119(n)+28)`
-/

namespace A223316.P5503290130437560869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A056119 n + 28).toNat

end

end A223316.P5503290130437560869

/-! ## A223316.P17096436864919044286

`A223317(eq[4, A219347(n)])`
-/

namespace A223316.P17096436864919044286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223316.P17096436864919044286

/-!
# A223317: T(n,k)=Number of nXk 0..1 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A223317, there is no canonical definition to state claims against.
-/

/-! ## A223317.P14359913932875491013

`A202873(n+1)+A114294(A223256(n))`
-/

namespace A223317.P14359913932875491013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202873 (n + 1) + A114294 (A223256 n).toNat

end

end A223317.P14359913932875491013

/-! ## A223317.P4360886381972427843

`ceil(A157933(n)+acot(A128675(n+1)))`
-/

namespace A223317.P4360886381972427843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157933 n : ℝ) + SequenceMachineLib.acot (A128675 (n + 1) : ℝ)⌉

end

end A223317.P4360886381972427843

/-! ## A223317.P13961627114636019728

`A157933(n)+A054977(lcm(4, 2^(n+2))-(n+3))`
-/

namespace A223317.P13961627114636019728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157933 n + A054977 (Nat.lcm 4 (2 ^ (n + 2)) - (n + 3))

end

end A223317.P13961627114636019728

/-! ## A223317.P17727777023436473462

`A157933(n)+A054977(abs(or(n+3, -2^(n+2))))`
-/

namespace A223317.P17727777023436473462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157933 n + A054977 |Int.lor (n + 3 : ℤ) (-(2 ^ (n + 2) : ℤ))|.toNat

end

end A223317.P17727777023436473462

/-! ## A223317.P16605832365679597769

`A157933(n)+A089723(A078057(n))`
-/

namespace A223317.P16605832365679597769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157933 n + A089723 (A078057 n).toNat

end

end A223317.P16605832365679597769

/-!
# A223318: Rolling icosahedron footprints: number of n X 5 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223318, there is no canonical definition to state claims against.
-/

/-! ## A223318.P3838097721901769673

`A223321(Δ[A264443(n)])`
-/

namespace A223318.P3838097721901769673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (f1 (n + 1) - f1 n).toNat

end

end A223318.P3838097721901769673

/-! ## A223318.P9938243727713472537

`A223321(A046691(n+3))`
-/

namespace A223318.P9938243727713472537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A046691 (n + 3)).toNat

end

end A223318.P9938243727713472537

/-! ## A223318.P10867544781873380382

`A223321(eq[2, A193592(n)-2])`
-/

namespace A223318.P10867544781873380382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223318.P10867544781873380382

/-! ## A223318.P4122788352763166330

`A223321(A000217(n+6)-(n+10))`
-/

namespace A223318.P4122788352763166330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A000217 (n + 6) - (n + 10 : ℤ)).toNat

end

end A223318.P4122788352763166330

/-!
# A223319: Rolling icosahedron footprints: number of n X 6 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223319, there is no canonical definition to state claims against.
-/

/-! ## A223319.P925479987907654546

`A223321(eq[5, A193592(n)])`
-/

namespace A223319.P925479987907654546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223319.P925479987907654546

/-! ## A223319.P16785284532854601563

`A223321(Δ[A264443(n+1)]-1)`
-/

namespace A223319.P16785284532854601563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (f1 (n + 1) - f1 n - 1).toNat

end

end A223319.P16785284532854601563

/-!
# A223320: 

The programs for A223320, there is no canonical definition to state claims against.
-/

/-! ## A223320.P8715132157886893494

`A223321(A000217(n+6)+n+1)`
-/

namespace A223320.P8715132157886893494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A223320.P8715132157886893494

/-!
# A223321: T(n,k)=Rolling icosahedron footprints: number of nXk 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223321, there is no canonical definition to state claims against.
-/

/-! ## A223321.P18157436661696134576

`A186746(A055998(n))+A038254(n)`
-/

namespace A223321.P18157436661696134576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 (A055998 n).toNat + A038254 n

end

end A223321.P18157436661696134576

/-! ## A223321.P3976810675308343152

`A061391(A166920(n)+A098627(n))`
-/

namespace A223321.P3976810675308343152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061391 (A166920 n + A098627 n).toNat

end

end A223321.P3976810675308343152

/-! ## A223321.P5516759725892851961

`or(A038254(n), A056250(A173882(n)))`
-/

namespace A223321.P5516759725892851961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038254 n) (A056250 (A173882 n).toNat)

end

end A223321.P5516759725892851961

/-!
# A223322: Rolling icosahedron footprints: number of 2 X n 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223322, there is no canonical definition to state claims against.
-/

/-! ## A223322.P3480142647665184465

`ogf((12-31x)/(1-13x))`
-/

namespace A223322.P3480142647665184465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -31] [1, -13] n

end

end A223322.P3480142647665184465

/-! ## A223322.P8286597565386800403

`13*a(n-1)` with `a(0)=12, a(1)=125`
-/

namespace A223322.P8286597565386800403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12, 125] fun n a =>
  13 * a (n - 1)

end

end A223322.P8286597565386800403

/-! ## A223322.P15018508983193450343

`A223321(∑[n+1]+2)`
-/

namespace A223322.P15018508983193450343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223322.P15018508983193450343

/-! ## A223322.P15580672135885013240

`record[gcd(A025581(n), A223321(n+3))]`
-/

namespace A223322.P15580672135885013240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A223321 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223322.P15580672135885013240

/-! ## A223322.P16604292503910493711

`A319697(2*n+5)+A223321(A133263(n+1))`
-/

namespace A223322.P16604292503910493711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319697 (2 * n + 5) + A223321 (A133263 (n + 1)).toNat

end

end A223322.P16604292503910493711

/-!
# A223323: Rolling icosahedron footprints: number of 3 X n 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223323, there is no canonical definition to state claims against.
-/

/-! ## A223323.P6367511041382129079

`A223321(∑[n+2]+4)`
-/

namespace A223323.P6367511041382129079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223323.P6367511041382129079

/-! ## A223323.P17634160379511477675

`A223321(A167614(n+1))+A064459(n)`
-/

namespace A223323.P17634160379511477675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A167614 (n + 1)).toNat + A064459 n

end

end A223323.P17634160379511477675

/-! ## A223323.P18243964774764352680

`A283763(n)+A223321(A167614(n+1))`
-/

namespace A223323.P18243964774764352680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283763 n + A223321 (A167614 (n + 1)).toNat

end

end A223323.P18243964774764352680

/-! ## A223323.P17411308765506668080

`or(A000035(n), A223321(A167614(n+1)))`
-/

namespace A223323.P17411308765506668080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A223321 (A167614 (n + 1)).toNat)

end

end A223323.P17411308765506668080

/-! ## A223323.P5327809107068079123

`or(A107846(n), A223321(A167614(n+1)))`
-/

namespace A223323.P5327809107068079123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 n) (A223321 (A167614 (n + 1)).toNat)

end

end A223323.P5327809107068079123

/-!
# A223324: Rolling icosahedron footprints: number of 4Xn 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223324, there is no canonical definition to state claims against.
-/

/-! ## A223324.P5702222789768143028

`A223321(A141214(n)+7)`
-/

namespace A223324.P5702222789768143028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A141214 n + 7).toNat

end

end A223324.P5702222789768143028

/-! ## A223324.P2942187696259419053

`A223321(A052905(n)+9)`
-/

namespace A223324.P2942187696259419053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A052905 n + 9).toNat

end

end A223324.P2942187696259419053

/-! ## A223324.P2473817345569804885

`A223321(A055999(n)+10)`
-/

namespace A223324.P2473817345569804885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A055999 n + 10).toNat

end

end A223324.P2473817345569804885

/-! ## A223324.P12595458810690270840

`A223321(A167614(n+2)+1)`
-/

namespace A223324.P12595458810690270840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A167614 (n + 2) + 1).toNat

end

end A223324.P12595458810690270840

/-! ## A223324.P18177140277569293728

`A223321(A000124(n+3)+3)`
-/

namespace A223324.P18177140277569293728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A000124 (n + 3) + 3).toNat

end

end A223324.P18177140277569293728

/-!
# A223325: Rolling icosahedron footprints: number of 5Xn 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223325, there is no canonical definition to state claims against.
-/

/-! ## A223325.P14537570474326017288

`A223321(A155212(n)+13)`
-/

namespace A223325.P14537570474326017288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A155212 n + 13).toNat

end

end A223325.P14537570474326017288

/-!
# A223326: 

The programs for A223326, there is no canonical definition to state claims against.
-/

/-! ## A223326.P7288939857692470473

`A223321(A000217(n+6)-n)`
-/

namespace A223326.P7288939857692470473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223321 (A000217 (n + 6) - (n : ℤ)).toNat

end

end A223326.P7288939857692470473

/-!
# A223327: Rolling cube footprints: number of n X n 0..7 arrays starting with 0 where 0..7 label vertices of a cube and every array movement to a horizontal or antidiagonal neighbor moves along a corresponding cube edge.

The programs for A223327, there is no canonical definition to state claims against.
-/

/-! ## A223327.P10207847642618625324

`2*A233076(n+1)-1`
-/

namespace A223327.P10207847642618625324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233076 (n + 1) - 1

end

end A223327.P10207847642618625324

/-! ## A223327.P16997936956020140113

`A223331((n+1)²+n²)`
-/

namespace A223327.P16997936956020140113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 ((n + 1) ^ 2 + n ^ 2)

end

end A223327.P16997936956020140113

/-!
# A223328: Rolling cube footprints: number of n X 5 0..7 arrays starting with 0 where 0..7 label vertices of a cube and every array movement to a horizontal or antidiagonal neighbor moves along a corresponding cube edge.

The programs for A223328, there is no canonical definition to state claims against.
-/

/-! ## A223328.P6959023725657266033

`2*A233079(n+1)-1`
-/

namespace A223328.P6959023725657266033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233079 (n + 1) - 1

end

end A223328.P6959023725657266033

/-! ## A223328.P5779299199373284911

`A008683(A151800(n))+2*A233079(n+1)`
-/

namespace A223328.P5779299199373284911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat + 2 * A233079 (n + 1)

end

end A223328.P5779299199373284911

/-! ## A223328.P15231589237750999648

`A008683(A090471(n+1))+2*A233079(n+1)`
-/

namespace A223328.P15231589237750999648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A090471 (n + 1)).toNat + 2 * A233079 (n + 1)

end

end A223328.P15231589237750999648

/-! ## A223328.P9878382986004753135

`A008683(A176877(n+1))+2*A233079(n+1)`
-/

namespace A223328.P9878382986004753135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A176877 (n + 1)).toNat + 2 * A233079 (n + 1)

end

end A223328.P9878382986004753135

/-! ## A223328.P14750807939233951391

`A223331(A046691(n+3))`
-/

namespace A223328.P14750807939233951391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A046691 (n + 3)).toNat

end

end A223328.P14750807939233951391

/-!
# A223329: Rolling cube footprints: number of n X 6 0..7 arrays starting with 0 where 0..7 label vertices of a cube and every array movement to a horizontal or antidiagonal neighbor moves along a corresponding cube edge.

The programs for A223329, there is no canonical definition to state claims against.
-/

/-! ## A223329.P7247024720833541802

`2*A233080(n+1)-1`
-/

namespace A223329.P7247024720833541802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233080 (n + 1) - 1

end

end A223329.P7247024720833541802

/-! ## A223329.P13074261861039245482

`A008683(A118753(n))+2*A233080(n+1)`
-/

namespace A223329.P13074261861039245482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A118753 n).toNat + 2 * A233080 (n + 1)

end

end A223329.P13074261861039245482

/-! ## A223329.P13953527264653494411

`A008683(record[A014963(n+3)])+2*A233080(n+1)`
-/

namespace A223329.P13953527264653494411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2 * A233080 (n + 1)

end

end A223329.P13953527264653494411

/-! ## A223329.P12197619589233948745

`A223331(A000096(n+5)-4)`
-/

namespace A223329.P12197619589233948745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A000096 (n + 5) - 4).toNat

end

end A223329.P12197619589233948745

/-! ## A223329.P3379372655433987113

`A223331(A000124(n+6)-6)`
-/

namespace A223329.P3379372655433987113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A000124 (n + 6) - 6).toNat

end

end A223329.P3379372655433987113

/-!
# A223330: Rolling cube footprints: number of nX7 0..7 arrays starting with 0 where 0..7 label vertices of a cube and every array movement to a horizontal or antidiagonal neighbor moves along a corresponding cube edge.

The programs for A223330, there is no canonical definition to state claims against.
-/

/-! ## A223330.P11301736999399129580

`2*A233081(n+1)-1`
-/

namespace A223330.P11301736999399129580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233081 (n + 1) - 1

end

end A223330.P11301736999399129580

/-! ## A223330.P13118243747016741028

`A223331(A000124(n+6)+n)`
-/

namespace A223330.P13118243747016741028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A223330.P13118243747016741028

/-!
# A223332: Rolling cube footprints: number of 3 X n 0..7 arrays starting with 0 where 0..7 label vertices of a cube and every array movement to a horizontal or antidiagonal neighbor moves along a corresponding cube edge.

The programs for A223332, there is no canonical definition to state claims against.
-/

/-! ## A223332.P15126827541137291478

`A223331(∑[n+2]+4)`
-/

namespace A223332.P15126827541137291478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223332.P15126827541137291478

/-! ## A223332.P4551662768454688823

`lcm(1-and(2, n), A223331(A167614(n+1)))`
-/

namespace A223332.P4551662768454688823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A223331 (A167614 (n + 1)).toNat)

end

end A223332.P4551662768454688823

/-! ## A223332.P536306156202315877

`lcm(A000244(n), A223331(A167614(n+1)))`
-/

namespace A223332.P536306156202315877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A223331 (A167614 (n + 1)).toNat)

end

end A223332.P536306156202315877

/-! ## A223332.P13023849173430268934

`char[A002262(n)]*A223331(A167614(n+1))`
-/

namespace A223332.P13023849173430268934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223331 (A167614 (n + 1)).toNat

end

end A223332.P13023849173430268934

/-! ## A223332.P15540155088105404673

`A223331(A167614(n+1))%A222441(n+1)`
-/

namespace A223332.P15540155088105404673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223331 (A167614 (n + 1)).toNat) (A222441 (n + 1))

end

end A223332.P15540155088105404673

/-!
# A223333: Rolling cube footprints: number of 4 X n 0..7 arrays starting with 0 where 0..7 label vertices of a cube and every array movement to a horizontal or antidiagonal neighbor moves along a corresponding cube edge.

The programs for A223333, there is no canonical definition to state claims against.
-/

/-! ## A223333.P142877549625872801

`A223331(A141214(n)+7)`
-/

namespace A223333.P142877549625872801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A141214 n + 7).toNat

end

end A223333.P142877549625872801

/-! ## A223333.P10322443002388107633

`A223331(A052905(n)+9)`
-/

namespace A223333.P10322443002388107633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A052905 n + 9).toNat

end

end A223333.P10322443002388107633

/-! ## A223333.P10196821865249255791

`A223331(A055999(n)+10)`
-/

namespace A223333.P10196821865249255791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A055999 n + 10).toNat

end

end A223333.P10196821865249255791

/-! ## A223333.P15615661364856595592

`A223331(A167614(n+2)+1)`
-/

namespace A223333.P15615661364856595592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A167614 (n + 2) + 1).toNat

end

end A223333.P15615661364856595592

/-! ## A223333.P8794983811127823314

`A223331(A166136(n+2)-2)`
-/

namespace A223333.P8794983811127823314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A166136 (n + 2) - 2).toNat

end

end A223333.P8794983811127823314

/-!
# A223334: Rolling cube footprints: number of 5Xn 0..7 arrays starting with 0 where 0..7 label vertices of a cube and every array movement to a horizontal or antidiagonal neighbor moves along a corresponding cube edge.

The programs for A223334, there is no canonical definition to state claims against.
-/

/-! ## A223334.P18042424645141272999

`A223331(A167499(n+3))`
-/

namespace A223334.P18042424645141272999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A167499 (n + 3)).toNat

end

end A223334.P18042424645141272999

/-! ## A223334.P14632366440412599840

`A223331(A155212(n)+13)`
-/

namespace A223334.P14632366440412599840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A155212 n + 13).toNat

end

end A223334.P14632366440412599840

/-! ## A223334.P15029890068738539136

`A223331(A056000(n)+15)`
-/

namespace A223334.P15029890068738539136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A056000 n + 15).toNat

end

end A223334.P15029890068738539136

/-! ## A223334.P10675781329308318676

`A223331(A000217(n+4)+5)`
-/

namespace A223334.P10675781329308318676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A000217 (n + 4) + 5).toNat

end

end A223334.P10675781329308318676

/-! ## A223334.P8727525129769341676

`A223331(A052905(n+1)+10)`
-/

namespace A223334.P8727525129769341676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A052905 (n + 1) + 10).toNat

end

end A223334.P8727525129769341676

/-!
# A223335: Rolling cube footprints: number of 6 X n 0..7 arrays starting with 0 where 0..7 label vertices of a cube and every array movement to a horizontal or antidiagonal neighbor moves along a corresponding cube edge.

The programs for A223335, there is no canonical definition to state claims against.
-/

/-! ## A223335.P4560307976330618187

`A223331(∑[n+5]+16)`
-/

namespace A223335.P4560307976330618187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223335.P4560307976330618187

/-!
# A223336: Rolling cube footprints: number of 7Xn 0..7 arrays starting with 0 where 0..7 label vertices of a cube and every array movement to a horizontal or antidiagonal neighbor moves along a corresponding cube edge.

The programs for A223336, there is no canonical definition to state claims against.
-/

/-! ## A223336.P15398813862813023297

`A223331(A166136(n+5)+1)`
-/

namespace A223336.P15398813862813023297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A166136 (n + 5) + 1).toNat

end

end A223336.P15398813862813023297

/-! ## A223336.P3395661869946851397

`A223331(A000124(n+6)+6)`
-/

namespace A223336.P3395661869946851397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (A000124 (n + 6) + 6).toNat

end

end A223336.P3395661869946851397

/-! ## A223336.P10416958176797395732

`A223331(eq[8, A131818(n+1)])`
-/

namespace A223336.P10416958176797395732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223331 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223336.P10416958176797395732

/-!
# A223337: 5 X 5 X 5 triangular graph coloring a rectangular array: number of n X 1 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 6,10 6,11 7,11 10,11 7,12 8,12 11,12 11,12 8,13 9,13 12,13 9,14 13,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223337, the canonical program `A223337.P2831077391564944027` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223337 has offset 1).

The definition of A223337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223337.P2831077391564944027

`4*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=15, a(1)=60, a(2)=264`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223337

/-- `4*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P2831077391564944027.Spec : Prop :=
  ∀ n, P2831077391564944027.a n = A223337 (n + 1)

theorem P2831077391564944027.correct : P2831077391564944027.Spec := by
  intro n
  simp only [A223337, Nat.add_sub_cancel]

end A223337

/-! ## A223337.P10060242919880995718

`A223344(∑[n]+1)`
-/

namespace A223337.P10060242919880995718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223337.P10060242919880995718

namespace A223337

/-- `A223344(∑[n]+1)` -/
def P10060242919880995718.Spec : Prop :=
  ∀ n, P10060242919880995718.a n = A223337 (n + 1)

end A223337

/-! ## A223337.P1869083251368897009

`lcm(3, A223344(A000124(n)))`
-/

namespace A223337.P1869083251368897009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A223344 (A000124 n).toNat)

end

end A223337.P1869083251368897009

namespace A223337

/-- `lcm(3, A223344(A000124(n)))` -/
def P1869083251368897009.Spec : Prop :=
  ∀ n, (P1869083251368897009.a n : ℤ) = A223337 (n + 1)

end A223337

/-! ## A223337.P3871001783017915936

`record[A010054(n)*A223344(n+1)]`
-/

namespace A223337.P3871001783017915936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223337.P3871001783017915936

namespace A223337

/-- `record[A010054(n)*A223344(n+1)]` -/
def P3871001783017915936.Spec : Prop :=
  ∀ n, P3871001783017915936.a n = A223337 (n + 1)

end A223337

/-! ## A223337.P10955716022656427872

`record[A103451(n)*A223344(n+1)]`
-/

namespace A223337.P10955716022656427872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A223344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223337.P10955716022656427872

namespace A223337

/-- `record[A103451(n)*A223344(n+1)]` -/
def P10955716022656427872.Spec : Prop :=
  ∀ n, P10955716022656427872.a n = A223337 (n + 1)

end A223337

/-!
# A223338: 5 X 5 X 5 triangular graph coloring a rectangular array: number of n X 2 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 6,10 6,11 7,11 10,11 7,12 8,12 11,12 11,12 8,13 9,13 12,13 9,14 13,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223338, there is no canonical definition to state claims against.
-/

/-! ## A223338.P16734251838865730325

`A223344(∑[n+1]+2)`
-/

namespace A223338.P16734251838865730325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223338.P16734251838865730325

/-! ## A223338.P2711856593000398502

`record[A223344(A008795(n)+2)]`
-/

namespace A223338.P2711856593000398502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223338.P2711856593000398502

/-! ## A223338.P13995035845817031517

`record[A010054(n)*A223344(n+2)]`
-/

namespace A223338.P13995035845817031517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223344 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223338.P13995035845817031517

/-! ## A223338.P13653941035530813183

`record[gcd(A002262(n), A223344(n+2))]`
-/

namespace A223338.P13653941035530813183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A223344 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223338.P13653941035530813183

/-! ## A223338.P10883903119729966013

`record[A223344(abs(A201163(n)))]`
-/

namespace A223338.P10883903119729966013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223338.P10883903119729966013

/-!
# A223339: 5X5X5 triangular graph coloring a rectangular array: number of nX3 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 6,10 6,11 7,11 10,11 7,12 8,12 11,12 11,12 8,13 9,13 12,13 9,14 13,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223339, there is no canonical definition to state claims against.
-/

/-! ## A223339.P10069928827191371653

`A223344(∑[n+2]+4)`
-/

namespace A223339.P10069928827191371653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223339.P10069928827191371653

/-! ## A223339.P7481964708747058344

`record[A223344(A008795(n)+3)]`
-/

namespace A223339.P7481964708747058344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223339.P7481964708747058344

/-! ## A223339.P12014752929059849669

`lcm(2, A223344(A167614(n+1)))`
-/

namespace A223339.P12014752929059849669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223344 (A167614 (n + 1)).toNat)

end

end A223339.P12014752929059849669

/-! ## A223339.P10845955059763387678

`A223344(A167614(n+1))+A178798(n)`
-/

namespace A223339.P10845955059763387678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A167614 (n + 1)).toNat + A178798 n

end

end A223339.P10845955059763387678

/-! ## A223339.P2424945720367224251

`A223344(A167614(n+1))%A223340(n+1)`
-/

namespace A223339.P2424945720367224251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223344 (A167614 (n + 1)).toNat) (A223340 (n + 1))

end

end A223339.P2424945720367224251

/-!
# A223340: 5 X 5 X 5 triangular graph coloring a rectangular array: number of n X 4 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 6,10 6,11 7,11 10,11 7,12 8,12 11,12 11,12 8,13 9,13 12,13 9,14 13,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223340, there is no canonical definition to state claims against.
-/

/-! ## A223340.P13412392096205205391

`A223344(A374004(n+1))`
-/

namespace A223340.P13412392096205205391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A374004 (n + 1)).toNat

end

end A223340.P13412392096205205391

/-! ## A223340.P15310580156970743163

`A223344(A052905(n)+9)`
-/

namespace A223340.P15310580156970743163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A052905 n + 9).toNat

end

end A223340.P15310580156970743163

/-! ## A223340.P17040985608474725088

`A223344(A055999(n)+10)`
-/

namespace A223340.P17040985608474725088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A055999 n + 10).toNat

end

end A223340.P17040985608474725088

/-! ## A223340.P2274533000448727821

`A223344(A167614(n+2)+1)`
-/

namespace A223340.P2274533000448727821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A167614 (n + 2) + 1).toNat

end

end A223340.P2274533000448727821

/-! ## A223340.P17520337876229203247

`A223344(A141214(n+1))`
-/

namespace A223340.P17520337876229203247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A141214 (n + 1)).toNat

end

end A223340.P17520337876229203247

/-!
# A223341: 5X5X5 triangular graph coloring a rectangular array: number of nX5 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 6,10 6,11 7,11 10,11 7,12 8,12 11,12 11,12 8,13 9,13 12,13 9,14 13,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223341, there is no canonical definition to state claims against.
-/

/-! ## A223341.P16402342178942800117

`A223344(A374005(n+1))`
-/

namespace A223341.P16402342178942800117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A374005 (n + 1)).toNat

end

end A223341.P16402342178942800117

/-! ## A223341.P2112345240028023104

`A223344(A046691(n+3))`
-/

namespace A223341.P2112345240028023104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A046691 (n + 3)).toNat

end

end A223341.P2112345240028023104

/-! ## A223341.P1686194829719092699

`A223344(A056115(n)+11)`
-/

namespace A223341.P1686194829719092699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A056115 n + 11).toNat

end

end A223341.P1686194829719092699

/-!
# A223342: 5X5X5 triangular graph coloring a rectangular array: number of nX6 0..14 arrays where 0..14 label nodes of a graph with edges 0,1 0,2 1,2 1,3 1,4 2,4 3,4 2,5 4,5 3,6 3,7 4,7 6,7 4,8 5,8 7,8 5,9 8,9 6,10 6,11 7,11 10,11 7,12 8,12 11,12 11,12 8,13 9,13 12,13 9,14 13,14 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223342, there is no canonical definition to state claims against.
-/

/-! ## A223342.P7050275394960240052

`A223344(A374007(n+1))`
-/

namespace A223342.P7050275394960240052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A374007 (n + 1)).toNat

end

end A223342.P7050275394960240052

/-! ## A223342.P9414126481485748346

`A223344(A167499(n+4)+1)`
-/

namespace A223342.P9414126481485748346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A167499 (n + 4) + 1).toNat

end

end A223342.P9414126481485748346

/-! ## A223342.P1855617621482897335

`A223344(Δ[Δ[A006504(n+1)]])`
-/

namespace A223342.P1855617621482897335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (f1 (n + 1) - f1 n).toNat

end

end A223342.P1855617621482897335

/-!
# A223343: 

The programs for A223343, there is no canonical definition to state claims against.
-/

/-! ## A223343.P11756404055991892222

`A223344(A056119(n)+28)`
-/

namespace A223343.P11756404055991892222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 (A056119 n + 28).toNat

end

end A223343.P11756404055991892222

/-! ## A223343.P6570723617471942263

`A223344(eq[7, A002262(n)]-7-n)`
-/

namespace A223343.P6570723617471942263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223344 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 7 - (n : ℤ)).toNat

end

end A223343.P6570723617471942263

/-!
# A223345: 3X3X3 triangular graph without horizontal edges coloring a rectangular array: number of n X n 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223345, there is no canonical definition to state claims against.
-/

/-! ## A223345.P1042919012087797176

`A223352((n+1)²+n²)`
-/

namespace A223345.P1042919012087797176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 ((n + 1) ^ 2 + n ^ 2)

end

end A223345.P1042919012087797176

/-!
# A223346: 3 X 3 X 3 triangular graph without horizontal edges coloring a rectangular array: number of n X 1 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223346, the canonical program `A223346.P16993182343780945087` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223346 has offset 1).

The definition of A223346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223346.P2908638774498009666

`ogf((6+12x-2x^2)/(1-5x^2))`
-/

namespace A223346.P2908638774498009666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 12, -2] [1, 0, -5] n

end

end A223346.P2908638774498009666

namespace A223346

/-- `ogf((6+12x-2x^2)/(1-5x^2))` -/
def P2908638774498009666.Spec : Prop :=
  ∀ n, P2908638774498009666.a n = A223346 (n + 1)

end A223346

/-! ## A223346.P16993182343780945087

`5*a(n-2)` with `a(0)=6, a(1)=12, a(2)=28`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223346

/-- `5*a(n-2)` -/
def P16993182343780945087.Spec : Prop :=
  ∀ n, (P16993182343780945087.a n : ℤ) = A223346 (n + 1)

theorem P16993182343780945087.correct : P16993182343780945087.Spec := by
  intro n
  simp only [A223346, Nat.add_sub_cancel]

end A223346

/-! ## A223346.P16860417244286709361

`∏[6-a(n-1)]+lcm(4, 5^floor(n/2))` with `a(0)=2, a(1)=4, a(2)=1`
-/

namespace A223346.P16860417244286709361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Int.lcm 4 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) : ℤ)

end

end A223346.P16860417244286709361

namespace A223346

/-- `∏[6-a(n-1)]+lcm(4, 5^floor(n/2))` -/
def P16860417244286709361.Spec : Prop :=
  ∀ n, P16860417244286709361.a n = A223346 (n + 1)

end A223346

/-! ## A223346.P2538148358850019990

`(A040001(n)+5)*A026395(n)`
-/

namespace A223346.P2538148358850019990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040001 n + 5) * A026395 n

end

end A223346.P2538148358850019990

namespace A223346

/-- `(A040001(n)+5)*A026395(n)` -/
def P2538148358850019990.Spec : Prop :=
  ∀ n, P2538148358850019990.a n = A223346 (n + 1)

end A223346

/-! ## A223346.P4652984615948868830

`2*(A026395(n+1)+A026395(n))`
-/

namespace A223346.P4652984615948868830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026395 (n + 1) + A026395 n)

end

end A223346.P4652984615948868830

namespace A223346

/-- `2*(A026395(n+1)+A026395(n))` -/
def P4652984615948868830.Spec : Prop :=
  ∀ n, P4652984615948868830.a n = A223346 (n + 1)

end A223346

/-!
# A223347: 3 X 3 X 3 triangular graph without horizontal edges coloring a rectangular array: number of n X 3 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223347, there is no canonical definition to state claims against.
-/

/-! ## A223347.P9351884160039563406

`A223352(∑[n+2]+4)`
-/

namespace A223347.P9351884160039563406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223347.P9351884160039563406

/-! ## A223347.P9826630980059601585

`lcm(2, A223352(A167614(n+1)))`
-/

namespace A223347.P9826630980059601585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223352 (A167614 (n + 1)).toNat)

end

end A223347.P9826630980059601585

/-! ## A223347.P9000413849576254201

`A223352(A167614(n+1))+A185284(n)`
-/

namespace A223347.P9000413849576254201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A167614 (n + 1)).toNat + A185284 n

end

end A223347.P9000413849576254201

/-! ## A223347.P85937145916159720

`A223352(A167614(n+1))%A223348(n+1)`
-/

namespace A223347.P85937145916159720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223352 (A167614 (n + 1)).toNat) (A223348 (n + 1))

end

end A223347.P85937145916159720

/-!
# A223348: 3 X 3 X 3 triangular graph without horizontal edges coloring a rectangular array: number of n X 4 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223348, there is no canonical definition to state claims against.
-/

/-! ## A223348.P12777676192904932160

`A223352(A374004(n+1))`
-/

namespace A223348.P12777676192904932160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A374004 (n + 1)).toNat

end

end A223348.P12777676192904932160

/-! ## A223348.P3425440820318984003

`A223352(A141214(n)+7)`
-/

namespace A223348.P3425440820318984003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A141214 n + 7).toNat

end

end A223348.P3425440820318984003

/-! ## A223348.P15221619218011999408

`A223352(A052905(n)+9)`
-/

namespace A223348.P15221619218011999408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A052905 n + 9).toNat

end

end A223348.P15221619218011999408

/-! ## A223348.P5788692243321089528

`A223352(A167614(n+2)+1)`
-/

namespace A223348.P5788692243321089528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A167614 (n + 2) + 1).toNat

end

end A223348.P5788692243321089528

/-! ## A223348.P12205071383179882894

`A223352(A166136(n+2)-2)`
-/

namespace A223348.P12205071383179882894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A166136 (n + 2) - 2).toNat

end

end A223348.P12205071383179882894

/-!
# A223349: 3X3X3 triangular graph without horizontal edges coloring a rectangular array: number of nX5 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223349, there is no canonical definition to state claims against.
-/

/-! ## A223349.P12177406021934432832

`A223352(A374005(n+1))`
-/

namespace A223349.P12177406021934432832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A374005 (n + 1)).toNat

end

end A223349.P12177406021934432832

/-! ## A223349.P6874291436064893560

`A223352(eq[6, A131818(n+1)])`
-/

namespace A223349.P6874291436064893560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223349.P6874291436064893560

/-! ## A223349.P17819663117430363897

`A223352(A056115(n)+11)`
-/

namespace A223349.P17819663117430363897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A056115 n + 11).toNat

end

end A223349.P17819663117430363897

/-! ## A223349.P15809032002553243943

`A223352(eq[4, A193592(n)])`
-/

namespace A223349.P15809032002553243943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223349.P15809032002553243943

/-! ## A223349.P14574333285335570152

`A223352(Δ[A023545(n+1)])`
-/

namespace A223349.P14574333285335570152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (f1 (n + 1) - f1 n).toNat

end

end A223349.P14574333285335570152

/-!
# A223350: 3X3X3 triangular graph without horizontal edges coloring a rectangular array: number of nX6 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223350, there is no canonical definition to state claims against.
-/

/-! ## A223350.P16364096952104099180

`A223352(A374007(n+1))`
-/

namespace A223350.P16364096952104099180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A374007 (n + 1)).toNat

end

end A223350.P16364096952104099180

/-! ## A223350.P13000923172867582051

`A223352(A166136(n+4))`
-/

namespace A223350.P13000923172867582051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A166136 (n + 4)).toNat

end

end A223350.P13000923172867582051

/-! ## A223350.P13899728171925260385

`A223352(A167499(n+4)+1)`
-/

namespace A223350.P13899728171925260385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A167499 (n + 4) + 1).toNat

end

end A223350.P13899728171925260385

/-! ## A223350.P12397591570635910429

`A223352(A167614(n+4)+3)`
-/

namespace A223350.P12397591570635910429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A167614 (n + 4) + 3).toNat

end

end A223350.P12397591570635910429

/-! ## A223350.P7996487494432664423

`A223352(eq[7, A131818(n+1)])`
-/

namespace A223350.P7996487494432664423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223350.P7996487494432664423

/-!
# A223351: 3X3X3 triangular graph without horizontal edges coloring a rectangular array: number of nX7 0..5 arrays where 0..5 label nodes of a graph with edges 0,1 0,2 1,3 1,4 2,4 2,5 and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223351, there is no canonical definition to state claims against.
-/

/-! ## A223351.P16188208993978172500

`A223352(A374008(n+1))`
-/

namespace A223351.P16188208993978172500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A374008 (n + 1)).toNat

end

end A223351.P16188208993978172500

/-! ## A223351.P16335042579043042129

`A223352(A056119(n)+28)`
-/

namespace A223351.P16335042579043042129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (A056119 n + 28).toNat

end

end A223351.P16335042579043042129

/-! ## A223351.P1671657521773600581

`A223352(eq[7, A002262(n)]-7-n)`
-/

namespace A223351.P1671657521773600581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 7 - (n : ℤ)).toNat

end

end A223351.P1671657521773600581

/-! ## A223351.P8489482803893836289

`A223352(eq[6, A193592(n)])`
-/

namespace A223351.P8489482803893836289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223351.P8489482803893836289

/-!
# A223353: Rolling cube footprints: number of n X n 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223353, there is no canonical definition to state claims against.
-/

/-! ## A223353.P16916831266980444327

`A223357((n+1)²+n²)`
-/

namespace A223353.P16916831266980444327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 ((n + 1) ^ 2 + n ^ 2)

end

end A223353.P16916831266980444327

/-!
# A223354: Rolling cube footprints: number of n X 5 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223354, there is no canonical definition to state claims against.
-/

/-! ## A223354.P1342307861761865757

`A223357(A056115(n)+11)`
-/

namespace A223354.P1342307861761865757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A056115 n + 11).toNat

end

end A223354.P1342307861761865757

/-! ## A223354.P17268157877930252496

`A223357(eq[4, A193592(n)])`
-/

namespace A223354.P17268157877930252496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223354.P17268157877930252496

/-! ## A223354.P9413871940288442604

`A223357(Δ[A023545(n+1)])`
-/

namespace A223354.P9413871940288442604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (f1 (n + 1) - f1 n).toNat

end

end A223354.P9413871940288442604

/-! ## A223354.P5321927320762881487

`A223357(eq[3, A059623(n+1)])`
-/

namespace A223354.P5321927320762881487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223354.P5321927320762881487

/-! ## A223354.P13496026505353704997

`A223357(Δ[A034857(n+2)]-1)`
-/

namespace A223354.P13496026505353704997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (f1 (n + 1) - f1 n - 1).toNat

end

end A223354.P13496026505353704997

/-!
# A223355: Rolling cube footprints: number of n X 6 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223355, there is no canonical definition to state claims against.
-/

/-! ## A223355.P12005999288063759720

`A223357(A052905(n+3))`
-/

namespace A223355.P12005999288063759720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A052905 (n + 3)).toNat

end

end A223355.P12005999288063759720

/-! ## A223355.P8603193372456040981

`A223357(A056119(n)+16)`
-/

namespace A223355.P8603193372456040981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A056119 n + 16).toNat

end

end A223355.P8603193372456040981

/-! ## A223355.P13678766048017745435

`A223357(eq[5, A193592(n)])`
-/

namespace A223355.P13678766048017745435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223355.P13678766048017745435

/-! ## A223355.P9729914168733998284

`A223357(Δ[Δ[A006504(n+1)]])`
-/

namespace A223355.P9729914168733998284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (f1 (n + 1) - f1 n).toNat

end

end A223355.P9729914168733998284

/-!
# A223356: 

The programs for A223356, there is no canonical definition to state claims against.
-/

/-! ## A223356.P5282981564782953806

`A223357(eq[6, A193592(n)])`
-/

namespace A223356.P5282981564782953806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223356.P5282981564782953806

/-!
# A223358: Rolling cube footprints: number of 3 X n 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223358, there is no canonical definition to state claims against.
-/

/-! ## A223358.P9732822743385707602

`A223357(∑[n+2]+4)`
-/

namespace A223358.P9732822743385707602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223358.P9732822743385707602

/-! ## A223358.P8702141080023694576

`lcm(2, A223357(A167614(n+1)))`
-/

namespace A223358.P8702141080023694576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223357 (A167614 (n + 1)).toNat)

end

end A223358.P8702141080023694576

/-! ## A223358.P10553793525066729200

`A223357(A167614(n+1))+A086015(n)`
-/

namespace A223358.P10553793525066729200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A167614 (n + 1)).toNat + A086015 n

end

end A223358.P10553793525066729200

/-! ## A223358.P17138609471781162609

`A223357(A167614(n+1))+A034582(n+1)`
-/

namespace A223358.P17138609471781162609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A167614 (n + 1)).toNat + A034582 (n + 1)

end

end A223358.P17138609471781162609

/-! ## A223358.P16724028146263354994

`A223357(A167614(n+1))%A223360(n+1)`
-/

namespace A223358.P16724028146263354994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223357 (A167614 (n + 1)).toNat) (A223360 (n + 1))

end

end A223358.P16724028146263354994

/-!
# A223359: Rolling cube footprints: number of 4 X n 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223359, there is no canonical definition to state claims against.
-/

/-! ## A223359.P10165323808943124852

`A223357(A141214(n)+7)`
-/

namespace A223359.P10165323808943124852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A141214 n + 7).toNat

end

end A223359.P10165323808943124852

/-! ## A223359.P8738208302913954532

`A223357(A052905(n)+9)`
-/

namespace A223359.P8738208302913954532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A052905 n + 9).toNat

end

end A223359.P8738208302913954532

/-! ## A223359.P11774936078588326672

`A223357(A055999(n)+10)`
-/

namespace A223359.P11774936078588326672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A055999 n + 10).toNat

end

end A223359.P11774936078588326672

/-! ## A223359.P729188877686839805

`A223357(A167614(n+2)+1)`
-/

namespace A223359.P729188877686839805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A167614 (n + 2) + 1).toNat

end

end A223359.P729188877686839805

/-! ## A223359.P13876594685934904316

`A223357(A166136(n+2)-2)`
-/

namespace A223359.P13876594685934904316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A166136 (n + 2) - 2).toNat

end

end A223359.P13876594685934904316

/-!
# A223360: Rolling cube footprints: number of 5Xn 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223360, there is no canonical definition to state claims against.
-/

/-! ## A223360.P10299521641387667777

`A223357(Δ[A034857(n+1)]+8)`
-/

namespace A223360.P10299521641387667777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (f1 (n + 1) - f1 n + 8).toNat

end

end A223360.P10299521641387667777

/-!
# A223361: Rolling cube footprints: number of 6Xn 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or antidiagonal neighbor moves across a corresponding cube edge.

The programs for A223361, there is no canonical definition to state claims against.
-/

/-! ## A223361.P10990140638780060783

`A223357(A166136(n+4))`
-/

namespace A223361.P10990140638780060783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A166136 (n + 4)).toNat

end

end A223361.P10990140638780060783

/-! ## A223361.P15120401601592101259

`A223357(A167499(n+4)+1)`
-/

namespace A223361.P15120401601592101259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A167499 (n + 4) + 1).toNat

end

end A223361.P15120401601592101259

/-! ## A223361.P700364506506841765

`A223357(eq[7, A131818(n+1)])`
-/

namespace A223361.P700364506506841765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223361.P700364506506841765

/-!
# A223362: 

The programs for A223362, there is no canonical definition to state claims against.
-/

/-! ## A223362.P9715133252786864941

`A223357(A056119(n)+28)`
-/

namespace A223362.P9715133252786864941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 (A056119 n + 28).toNat

end

end A223362.P9715133252786864941

/-! ## A223362.P14268437700380779245

`A223357(eq[7, A002262(n)]-7-n)`
-/

namespace A223362.P14268437700380779245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223357 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 7 - (n : ℤ)).toNat

end

end A223362.P14268437700380779245

/-!
# A223363: 6 X 6 X 6 triangular graph coloring a rectangular array: number of n X 1 0..20 arrays where 0..20 label nodes of the fully triangulated graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223363, the canonical program `A223363.P14137441231812979484` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223363 has offset 1).

The definition of A223363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223363.P14137441231812979484

`6*a(n-1)-4*a(n-2)-8*a(n-3)` with `a(0)=21, a(1)=90, a(2)=420`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223363

/-- `6*a(n-1)-4*a(n-2)-8*a(n-3)` -/
def P14137441231812979484.Spec : Prop :=
  ∀ n, P14137441231812979484.a n = A223363 (n + 1)

theorem P14137441231812979484.correct : P14137441231812979484.Spec := by
  intro n
  simp only [A223363, Nat.add_sub_cancel]

end A223363

/-! ## A223363.P9466932344970050203

`3*(A108051(n+2)+2^n)`
-/

namespace A223363.P9466932344970050203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A108051 (n + 2) + (2 ^ n : ℤ))

end

end A223363.P9466932344970050203

namespace A223363

/-- `3*(A108051(n+2)+2^n)` -/
def P9466932344970050203.Spec : Prop :=
  ∀ n, P9466932344970050203.a n = A223363 (n + 1)

end A223363

/-! ## A223363.P822478178260984861

`3*(A084137(n+2)-2^n)`
-/

namespace A223363.P822478178260984861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A084137 (n + 2) - (2 ^ n : ℤ))

end

end A223363.P822478178260984861

namespace A223363

/-- `3*(A084137(n+2)-2^n)` -/
def P822478178260984861.Spec : Prop :=
  ∀ n, P822478178260984861.a n = A223363 (n + 1)

end A223363

/-! ## A223363.P6674987799959034172

`A007283(n)*A124696(n+2)`
-/

namespace A223363.P6674987799959034172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A124696 (n + 2)

end

end A223363.P6674987799959034172

namespace A223363

/-- `A007283(n)*A124696(n+2)` -/
def P6674987799959034172.Spec : Prop :=
  ∀ n, P6674987799959034172.a n = A223363 (n + 1)

end A223363

/-! ## A223363.P17523758914329162102

`A007283(n)+A001333(n+2)*A007283(n+1)`
-/

namespace A223363.P17523758914329162102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n + A001333 (n + 2) * A007283 (n + 1)

end

end A223363.P17523758914329162102

namespace A223363

/-- `A007283(n)+A001333(n+2)*A007283(n+1)` -/
def P17523758914329162102.Spec : Prop :=
  ∀ n, P17523758914329162102.a n = A223363 (n + 1)

end A223363

/-! ## A223363.P17156403601400797596

`3*or(A167762(n)+A038754(n), A108051(n+2))`
-/

namespace A223363.P17156403601400797596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.lor (A167762 n + A038754 n) (A108051 (n + 2))

end

end A223363.P17156403601400797596

namespace A223363

/-- `3*or(A167762(n)+A038754(n), A108051(n+2))` -/
def P17156403601400797596.Spec : Prop :=
  ∀ n, P17156403601400797596.a n = A223363 (n + 1)

end A223363

/-!
# A223364: 6X6X6 triangular graph coloring a rectangular array: number of nX2 0..20 arrays where 0..20 label nodes of the fully triangulated graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223364, there is no canonical definition to state claims against.
-/

/-! ## A223364.P10821613396236187099

`A223370(∑[n+1]+2)`
-/

namespace A223364.P10821613396236187099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223364.P10821613396236187099

/-! ## A223364.P2249865310667527079

`record[A010054(n)*A223370(n+2)]`
-/

namespace A223364.P2249865310667527079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223370 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223364.P2249865310667527079

/-! ## A223364.P11482126714929427648

`record[gcd(A211357(n+1), A223370(n+2))]`
-/

namespace A223364.P11482126714929427648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211357 (n + 1)) (A223370 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223364.P11482126714929427648

/-! ## A223364.P16576315941199421326

`A223370(A000096(n+1))+A000035(2*(n+2))`
-/

namespace A223364.P16576315941199421326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (A000096 (n + 1)).toNat + A000035 (2 * (n + 2))

end

end A223364.P16576315941199421326

/-!
# A223365: 6X6X6 triangular graph coloring a rectangular array: number of nX3 0..20 arrays where 0..20 label nodes of the fully triangulated graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223365, there is no canonical definition to state claims against.
-/

/-! ## A223365.P8660822771926567346

`A223370(∑[n+2]+4)`
-/

namespace A223365.P8660822771926567346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223365.P8660822771926567346

/-! ## A223365.P6750038670574243874

`lcm(2, A223370(A167614(n+1)))`
-/

namespace A223365.P6750038670574243874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223370 (A167614 (n + 1)).toNat)

end

end A223365.P6750038670574243874

/-! ## A223365.P4661112246089334647

`or(A223370(A167614(n+1)), A275962(n))`
-/

namespace A223365.P4661112246089334647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A223370 (A167614 (n + 1)).toNat) (A275962 n)

end

end A223365.P4661112246089334647

/-! ## A223365.P16348541273279137827

`A309785(n+1)+A223370(A034856(n+2))`
-/

namespace A223365.P16348541273279137827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (n + 1) + A223370 (A034856 (n + 2)).toNat

end

end A223365.P16348541273279137827

/-! ## A223365.P9713476838561886881

`A158416(2*n+1)*A223370(A034856(n+2))`
-/

namespace A223365.P9713476838561886881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * n + 1) * A223370 (A034856 (n + 2)).toNat

end

end A223365.P9713476838561886881

/-!
# A223366: 6 X 6 X 6 triangular graph coloring a rectangular array: number of n X 4 0..20 arrays where 0..20 label nodes of the fully triangulated graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223366, there is no canonical definition to state claims against.
-/

/-! ## A223366.P2580994751451322155

`A223370(A374004(n+1))`
-/

namespace A223366.P2580994751451322155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (A374004 (n + 1)).toNat

end

end A223366.P2580994751451322155

/-! ## A223366.P10278850574023030503

`A223370(A052905(n)+9)`
-/

namespace A223366.P10278850574023030503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (A052905 n + 9).toNat

end

end A223366.P10278850574023030503

/-! ## A223366.P10879285623383827132

`A223370(A055999(n)+10)`
-/

namespace A223366.P10879285623383827132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (A055999 n + 10).toNat

end

end A223366.P10879285623383827132

/-! ## A223366.P6546373616378872748

`A223370(A167614(n+2)+1)`
-/

namespace A223366.P6546373616378872748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (A167614 (n + 2) + 1).toNat

end

end A223366.P6546373616378872748

/-! ## A223366.P1853730179835739835

`A223370(A166136(n+2)-2)`
-/

namespace A223366.P1853730179835739835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (A166136 (n + 2) - 2).toNat

end

end A223366.P1853730179835739835

/-!
# A223367: 6X6X6 triangular graph coloring a rectangular array: number of nX5 0..20 arrays where 0..20 label nodes of the fully triangulated graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223367, there is no canonical definition to state claims against.
-/

/-! ## A223367.P3962822345755699437

`A223370(A374005(n+1))`
-/

namespace A223367.P3962822345755699437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (A374005 (n + 1)).toNat

end

end A223367.P3962822345755699437

/-! ## A223367.P17336274853215897536

`A223370(Δ[A023545(n+1)])`
-/

namespace A223367.P17336274853215897536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (f1 (n + 1) - f1 n).toNat

end

end A223367.P17336274853215897536

/-!
# A223368: 6 X 6 X 6 triangular graph coloring a rectangular array: number of n X 6 0..20 arrays where 0..20 label nodes of the fully triangulated graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223368, there is no canonical definition to state claims against.
-/

/-! ## A223368.P5053695344604725708

`A223370(A374007(n+1))`
-/

namespace A223368.P5053695344604725708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (A374007 (n + 1)).toNat

end

end A223368.P5053695344604725708

/-! ## A223368.P13842149723753668077

`A223370(A167499(n+4)+1)`
-/

namespace A223368.P13842149723753668077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (A167499 (n + 4) + 1).toNat

end

end A223368.P13842149723753668077

/-! ## A223368.P8616357000834512929

`A223370(eq[7, A131818(n+1)])`
-/

namespace A223368.P8616357000834512929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223368.P8616357000834512929

/-! ## A223368.P5427872122473257554

`A223370(eq[5, A193592(n)])`
-/

namespace A223368.P5427872122473257554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223368.P5427872122473257554

/-! ## A223368.P17810965662785117661

`A223370(Δ[A023545(n+2)]-1)`
-/

namespace A223368.P17810965662785117661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (f1 (n + 1) - f1 n - 1).toNat

end

end A223368.P17810965662785117661

/-!
# A223369: 

The programs for A223369, there is no canonical definition to state claims against.
-/

/-! ## A223369.P12017568444152415823

`A223370(A056119(n)+28)`
-/

namespace A223369.P12017568444152415823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 (A056119 n + 28).toNat

end

end A223369.P12017568444152415823

/-! ## A223369.P13399444183587956120

`A223370(eq[7, A002262(n)]-7-n)`
-/

namespace A223369.P13399444183587956120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223370 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 7 - (n : ℤ)).toNat

end

end A223369.P13399444183587956120

/-!
# A223371: 3X3 square grid graph coloring a rectangular array: number of n X n 0..8 arrays where 0..8 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223371, there is no canonical definition to state claims against.
-/

/-! ## A223371.P6570863994365664014

`A223379((n+1)²+n²)`
-/

namespace A223371.P6570863994365664014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 ((n + 1) ^ 2 + n ^ 2)

end

end A223371.P6570863994365664014

/-!
# A223372: 3X3 square grid graph coloring a rectangular array: number of nX1 0..8 arrays where 0..8 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223372, the canonical program `A223372.P4802662297023561632` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223372 has offset 1).

The definition of A223372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223372.P4802662297023561632

`8*a(n-2)` with `a(0)=9, a(1)=24, a(2)=68`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223372

/-- `8*a(n-2)` -/
def P4802662297023561632.Spec : Prop :=
  ∀ n, (P4802662297023561632.a n : ℤ) = A223372 (n + 1)

theorem P4802662297023561632.correct : P4802662297023561632.Spec := by
  intro n
  simp only [A223372, Nat.add_sub_cancel]

end A223372

/-! ## A223372.P2260699967180614785

`A228305(A016777(n))+A163978(3*(n+1))`
-/

namespace A223372.P2260699967180614785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 (A016777 n).toNat + A163978 (3 * (n + 1))

end

end A223372.P2260699967180614785

namespace A223372

/-- `A228305(A016777(n))+A163978(3*(n+1))` -/
def P2260699967180614785.Spec : Prop :=
  ∀ n, P2260699967180614785.a n = A223372 (n + 1)

end A223372

/-! ## A223372.P10485649193621828341

`(A137206(n)+A134693(n+1))*A084221(n)`
-/

namespace A223372.P10485649193621828341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A137206 n + A134693 (n + 1)) * A084221 n

end

end A223372.P10485649193621828341

namespace A223372

/-- `(A137206(n)+A134693(n+1))*A084221(n)` -/
def P10485649193621828341.Spec : Prop :=
  ∀ n, P10485649193621828341.a n = A223372 (n + 1)

end A223372

/-! ## A223372.P38565313545039513

`A164090(A008486(n))+A070875(A016777(n))`
-/

namespace A223372.P38565313545039513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (A008486 n).toNat + A070875 (A016777 n).toNat

end

end A223372.P38565313545039513

namespace A223372

/-- `A164090(A008486(n))+A070875(A016777(n))` -/
def P38565313545039513.Spec : Prop :=
  ∀ n, P38565313545039513.a n = A223372 (n + 1)

end A223372

/-! ## A223372.P3748616039891830341

`A070875(A016789(n))-A029744(A016777(n))`
-/

namespace A223372.P3748616039891830341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (A016789 n).toNat - A029744 (A016777 n).toNat

end

end A223372.P3748616039891830341

namespace A223372

/-- `A070875(A016789(n))-A029744(A016777(n))` -/
def P3748616039891830341.Spec : Prop :=
  ∀ n, P3748616039891830341.a n = A223372 (n + 1)

end A223372

/-!
# A223373: 3 X 3 square grid graph coloring a rectangular array: number of n X 2 0..8 arrays where 0..8 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223373, the canonical program `A223373.P15280993736744581091` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223373 has offset 1).

The definition of A223373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223373.P1235831392280324033

`ogf((24-24x)/(1-7x+4x^2))`
-/

namespace A223373.P1235831392280324033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [24, -24] [1, -7, 4] n

end

end A223373.P1235831392280324033

namespace A223373

/-- `ogf((24-24x)/(1-7x+4x^2))` -/
def P1235831392280324033.Spec : Prop :=
  ∀ n, P1235831392280324033.a n = A223373 (n + 1)

end A223373

/-! ## A223373.P15280993736744581091

`7*a(n-1)-4*a(n-2)` with `a(0)=24, a(1)=144`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223373

/-- `7*a(n-1)-4*a(n-2)` -/
def P15280993736744581091.Spec : Prop :=
  ∀ n, P15280993736744581091.a n = A223373 (n + 1)

theorem P15280993736744581091.correct : P15280993736744581091.Spec := by
  intro n
  simp only [A223373, Nat.add_sub_cancel]

end A223373

/-! ## A223373.P4215647817361030729

`A269048(n+1)-A269031(n+1)`
-/

namespace A223373.P4215647817361030729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269048 (n + 1) - A269031 (n + 1)

end

end A223373.P4215647817361030729

namespace A223373

/-- `A269048(n+1)-A269031(n+1)` -/
def P4215647817361030729.Spec : Prop :=
  ∀ n, P4215647817361030729.a n = A223373 (n + 1)

end A223373

/-! ## A223373.P7783795261140135940

`A232920(A141214(n+1))`
-/

namespace A223373.P7783795261140135940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A141214 (n + 1)).toNat

end

end A223373.P7783795261140135940

namespace A223373

/-- `A232920(A141214(n+1))` -/
def P7783795261140135940.Spec : Prop :=
  ∀ n, P7783795261140135940.a n = A223373 (n + 1)

end A223373

/-! ## A223373.P10093900758244541044

`A232920(A055998(n+2))`
-/

namespace A223373.P10093900758244541044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A055998 (n + 2)).toNat

end

end A223373.P10093900758244541044

namespace A223373

/-- `A232920(A055998(n+2))` -/
def P10093900758244541044.Spec : Prop :=
  ∀ n, P10093900758244541044.a n = A223373 (n + 1)

end A223373

/-!
# A223374: 3 X 3 square grid graph coloring a rectangular array: number of n X 3 0..8 arrays where 0..8 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223374, there is no canonical definition to state claims against.
-/

/-! ## A223374.P16166016358820278975

`A223379(∑[n+2]+4)`
-/

namespace A223374.P16166016358820278975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223374.P16166016358820278975

/-! ## A223374.P6359350953541899132

`lcm(2, A223379(A167614(n+1)))`
-/

namespace A223374.P6359350953541899132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223379 (A167614 (n + 1)).toNat)

end

end A223374.P6359350953541899132

/-! ## A223374.P10383263980849415664

`A223379(A167614(n+1))+A070097(n+1)`
-/

namespace A223374.P10383263980849415664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A167614 (n + 1)).toNat + A070097 (n + 1)

end

end A223374.P10383263980849415664

/-! ## A223374.P11865705679458149362

`A223379(A167614(n+1))%A223375(n+1)`
-/

namespace A223374.P11865705679458149362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223379 (A167614 (n + 1)).toNat) (A223375 (n + 1))

end

end A223374.P11865705679458149362

/-! ## A223374.P14390036676822276360

`and(A033999(2*n+1), A223379(A167614(n+1)))`
-/

namespace A223374.P14390036676822276360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (2 * n + 1)) (A223379 (A167614 (n + 1)).toNat)

end

end A223374.P14390036676822276360

/-!
# A223375: 3X3 square grid graph coloring a rectangular array: number of nX4 0..8 arrays where 0..8 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223375, there is no canonical definition to state claims against.
-/

/-! ## A223375.P4863858711549553169

`A223379(A374004(n+1))`
-/

namespace A223375.P4863858711549553169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A374004 (n + 1)).toNat

end

end A223375.P4863858711549553169

/-! ## A223375.P9625645374817420997

`A223379(A141214(n)+7)`
-/

namespace A223375.P9625645374817420997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A141214 n + 7).toNat

end

end A223375.P9625645374817420997

/-! ## A223375.P10575640720245664410

`A223379(A055999(n)+10)`
-/

namespace A223375.P10575640720245664410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A055999 n + 10).toNat

end

end A223375.P10575640720245664410

/-! ## A223375.P17134362792316021212

`A223379(A167614(n+2)+1)`
-/

namespace A223375.P17134362792316021212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A167614 (n + 2) + 1).toNat

end

end A223375.P17134362792316021212

/-! ## A223375.P13288800064277358325

`A223379(Δ[A023545(n+1)-n²])`
-/

namespace A223375.P13288800064277358325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (f1 (n + 1) - f1 n).toNat

end

end A223375.P13288800064277358325

/-!
# A223376: 3X3 square grid graph coloring a rectangular array: number of nX5 0..8 arrays where 0..8 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223376, there is no canonical definition to state claims against.
-/

/-! ## A223376.P9247193277847565772

`A223379(A374005(n+1))`
-/

namespace A223376.P9247193277847565772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A374005 (n + 1)).toNat

end

end A223376.P9247193277847565772

/-! ## A223376.P6602176233400335439

`A223379(A167499(n+3))`
-/

namespace A223376.P6602176233400335439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A167499 (n + 3)).toNat

end

end A223376.P6602176233400335439

/-! ## A223376.P3294701314747225133

`A223379(A056000(n)+15)`
-/

namespace A223376.P3294701314747225133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A056000 n + 15).toNat

end

end A223376.P3294701314747225133

/-! ## A223376.P15823414588621394553

`A223379(A046691(n+3))`
-/

namespace A223376.P15823414588621394553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A046691 (n + 3)).toNat

end

end A223376.P15823414588621394553

/-! ## A223376.P10280928504652157122

`A223379(eq[2, A092921(n)])`
-/

namespace A223376.P10280928504652157122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223376.P10280928504652157122

/-!
# A223377: 3X3 square grid graph coloring a rectangular array: number of nX6 0..8 arrays where 0..8 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223377, there is no canonical definition to state claims against.
-/

/-! ## A223377.P10354807219416402812

`A223379(A374007(n+1))`
-/

namespace A223377.P10354807219416402812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A374007 (n + 1)).toNat

end

end A223377.P10354807219416402812

/-! ## A223377.P5535204806394219374

`A223379(A056115(n)+21)`
-/

namespace A223377.P5535204806394219374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A056115 n + 21).toNat

end

end A223377.P5535204806394219374

/-! ## A223377.P18096579507717025648

`A223379(Δ[A023545(n+1)]+10)`
-/

namespace A223377.P18096579507717025648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (f1 (n + 1) - f1 n + 10).toNat

end

end A223377.P18096579507717025648

/-!
# A223378: 3X3 square grid graph coloring a rectangular array: number of nX7 0..8 arrays where 0..8 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223378, there is no canonical definition to state claims against.
-/

/-! ## A223378.P1032857034804972504

`A223379(A374008(n+1))`
-/

namespace A223378.P1032857034804972504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A374008 (n + 1)).toNat

end

end A223378.P1032857034804972504

/-! ## A223378.P10054336108177780978

`A223379(A055999(n+4))`
-/

namespace A223378.P10054336108177780978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223379 (A055999 (n + 4)).toNat

end

end A223378.P10054336108177780978

/-!
# A223379: T(n,k)=3X3 square grid graph coloring a rectangular array: number of nXk 0..8 arrays where 0..8 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223379, there is no canonical definition to state claims against.
-/

/-! ## A223379.P2537296064503362424

`A134105(n+3)*A309447(A014417(n+4))`
-/

namespace A223379.P2537296064503362424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134105 (n + 3) * A309447 (A014417 (n + 4)).toNat

end

end A223379.P2537296064503362424

/-!
# A223380: Number of n X n 0..2 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..2 introduced in row major order.

The programs for A223380, there is no canonical definition to state claims against.
-/

/-! ## A223380.P13683885374848985264

`A223387((n+1)²+n²)`
-/

namespace A223380.P13683885374848985264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 ((n + 1) ^ 2 + n ^ 2)

end

end A223380.P13683885374848985264

/-!
# A223381: Number of n X 2 0..2 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..2 introduced in row major order.

The programs for A223381, the canonical program `A223381.P5901806503691136444` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223381 has offset 1).

The definition of A223381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223381.P6723477095463542704

`ogf((2-7x+5x^2)/(1-8x+10x^2))`
-/

namespace A223381.P6723477095463542704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7, 5] [1, -8, 10] n

end

end A223381.P6723477095463542704

namespace A223381

/-- `ogf((2-7x+5x^2)/(1-8x+10x^2))` -/
def P6723477095463542704.Spec : Prop :=
  ∀ n, P6723477095463542704.a n = A223381 (n + 1)

end A223381

/-! ## A223381.P5901806503691136444

`8*a(n-1)-10*a(n-2)` with `a(0)=2, a(1)=9, a(2)=57`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223381

/-- `8*a(n-1)-10*a(n-2)` -/
def P5901806503691136444.Spec : Prop :=
  ∀ n, P5901806503691136444.a n = A223381 (n + 1)

theorem P5901806503691136444.correct : P5901806503691136444.Spec := by
  intro n
  simp only [A223381, Nat.add_sub_cancel]

end A223381

/-! ## A223381.P144076179216362366

`Δ[floor(A143648(n)/2)]`
-/

namespace A223381.P144076179216362366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143648 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223381.P144076179216362366

namespace A223381

/-- `Δ[floor(A143648(n)/2)]` -/
def P144076179216362366.Spec : Prop :=
  ∀ n, P144076179216362366.a n = A223381 (n + 1)

end A223381

/-! ## A223381.P11974935795552846194

`Δ[(A143648(n)+A057427(n))/2]`
-/

namespace A223381.P11974935795552846194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143648 n + A057427 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223381.P11974935795552846194

namespace A223381

/-- `Δ[(A143648(n)+A057427(n))/2]` -/
def P11974935795552846194.Spec : Prop :=
  ∀ n, P11974935795552846194.a n = (A223381 (n + 1) : ℚ)

end A223381

/-! ## A223381.P4246771154292197143

`A223387(∑[n+1]+2)`
-/

namespace A223381.P4246771154292197143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223381.P4246771154292197143

namespace A223381

/-- `A223387(∑[n+1]+2)` -/
def P4246771154292197143.Spec : Prop :=
  ∀ n, P4246771154292197143.a n = A223381 (n + 1)

end A223381

/-!
# A223382: Number of n X 3 0..2 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..2 introduced in row major order.

The programs for A223382, there is no canonical definition to state claims against.
-/

/-! ## A223382.P897164839569822620

`A223387(∑[n+2]+4)`
-/

namespace A223382.P897164839569822620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223382.P897164839569822620

/-! ## A223382.P5706130699684955520

`A223387(A167614(n+1))+A011731(n)`
-/

namespace A223382.P5706130699684955520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A167614 (n + 1)).toNat + A011731 n

end

end A223382.P5706130699684955520

/-! ## A223382.P13782075908189223446

`A223387(A167614(n+1))+A025444(n)`
-/

namespace A223382.P13782075908189223446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A167614 (n + 1)).toNat + A025444 n

end

end A223382.P13782075908189223446

/-! ## A223382.P11571251737060607513

`lcm(A219347(n), A223387(A167614(n+1)))`
-/

namespace A223382.P11571251737060607513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219347 n) (A223387 (A167614 (n + 1)).toNat)

end

end A223382.P11571251737060607513

/-! ## A223382.P17943933096317007771

`or(A000007(n), A223387(A167614(n+1)))`
-/

namespace A223382.P17943933096317007771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223387 (A167614 (n + 1)).toNat)

end

end A223382.P17943933096317007771

/-!
# A223383: Number of nX4 0..2 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..2 introduced in row major order.

The programs for A223383, there is no canonical definition to state claims against.
-/

/-! ## A223383.P15093875552399728678

`A223387(A374004(n+1))`
-/

namespace A223383.P15093875552399728678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A374004 (n + 1)).toNat

end

end A223383.P15093875552399728678

/-! ## A223383.P18189895439682427427

`A223387(A141214(n)+7)`
-/

namespace A223383.P18189895439682427427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A141214 n + 7).toNat

end

end A223383.P18189895439682427427

/-! ## A223383.P5711204187040888447

`A223387(A052905(n)+9)`
-/

namespace A223383.P5711204187040888447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A052905 n + 9).toNat

end

end A223383.P5711204187040888447

/-! ## A223383.P1501736577712674751

`A223387(A055999(n)+10)`
-/

namespace A223383.P1501736577712674751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A055999 n + 10).toNat

end

end A223383.P1501736577712674751

/-! ## A223383.P10199830604811546377

`A223387(A167614(n+2)+1)`
-/

namespace A223383.P10199830604811546377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A167614 (n + 2) + 1).toNat

end

end A223383.P10199830604811546377

/-!
# A223384: Number of nX5 0..2 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..2 introduced in row major order.

The programs for A223384, there is no canonical definition to state claims against.
-/

/-! ## A223384.P17977503494199636332

`A223387(A374005(n+1))`
-/

namespace A223384.P17977503494199636332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A374005 (n + 1)).toNat

end

end A223384.P17977503494199636332

/-! ## A223384.P5536189987348288405

`A223387(A167499(n+3))`
-/

namespace A223384.P5536189987348288405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A167499 (n + 3)).toNat

end

end A223384.P5536189987348288405

/-! ## A223384.P14929592755647038640

`A223387(eq[6, A131818(n+1)])`
-/

namespace A223384.P14929592755647038640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223384.P14929592755647038640

/-! ## A223384.P11422641817938363146

`A223387(Δ[A264443(n)])`
-/

namespace A223384.P11422641817938363146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (f1 (n + 1) - f1 n).toNat

end

end A223384.P11422641817938363146

/-! ## A223384.P9217597395349755286

`A223387(eq[4, A193592(n)])`
-/

namespace A223384.P9217597395349755286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223384.P9217597395349755286

/-!
# A223385: Number of nX6 0..2 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..2 introduced in row major order.

The programs for A223385, there is no canonical definition to state claims against.
-/

/-! ## A223385.P10066660515084583427

`A223387(A374007(n+1))`
-/

namespace A223385.P10066660515084583427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A374007 (n + 1)).toNat

end

end A223385.P10066660515084583427

/-! ## A223385.P17547729606989197822

`A223387(eq[7, A131818(n+1)])`
-/

namespace A223385.P17547729606989197822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223385.P17547729606989197822

/-! ## A223385.P6435577605562178677

`A223387(A052905(n+3))`
-/

namespace A223385.P6435577605562178677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A052905 (n + 3)).toNat

end

end A223385.P6435577605562178677

/-! ## A223385.P3307675474375611394

`A223387(eq[3, A219347(n)])`
-/

namespace A223385.P3307675474375611394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223385.P3307675474375611394

/-! ## A223385.P1289706071679640384

`A223387(eq[5, A193592(n)])`
-/

namespace A223385.P1289706071679640384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223385.P1289706071679640384

/-!
# A223386: Number of nX7 0..2 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..2 introduced in row major order.

The programs for A223386, there is no canonical definition to state claims against.
-/

/-! ## A223386.P17080648148140577006

`A223387(A374008(n+1))`
-/

namespace A223386.P17080648148140577006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A374008 (n + 1)).toNat

end

end A223386.P17080648148140577006

/-! ## A223386.P9778016104105085052

`A223387(A052905(n+3)+12)`
-/

namespace A223386.P9778016104105085052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A052905 (n + 3) + 12).toNat

end

end A223386.P9778016104105085052

/-! ## A223386.P13074286581811134842

`A223387(A055999(n+4))`
-/

namespace A223386.P13074286581811134842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (A055999 (n + 4)).toNat

end

end A223386.P13074286581811134842

/-! ## A223386.P3649792257408634940

`A223387(eq[4, A219347(n)])`
-/

namespace A223386.P3649792257408634940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223386.P3649792257408634940

/-! ## A223386.P6948381019775050044

`A223387(eq[6, A193592(n)])`
-/

namespace A223386.P6948381019775050044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223386.P6948381019775050044

/-!
# A223387: T(n,k)=Number of nXk 0..2 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..2 introduced in row major order.

The programs for A223387, there is no canonical definition to state claims against.
-/

/-! ## A223387.P11972679235420891699

`A167662(A233073(n+1)%A055547(n+1))`
-/

namespace A223387.P11972679235420891699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (Int.tmod (A233073 (n + 1)) (A055547 (n + 1))).toNat

end

end A223387.P11972679235420891699

/-! ## A223387.P5663012847108846500

`A167662(A274068(n+1)%A055547(n+1))`
-/

namespace A223387.P5663012847108846500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (Int.tmod (A274068 (n + 1)) (A055547 (n + 1))).toNat

end

end A223387.P5663012847108846500

/-!
# A223388: Number of (n+2)X1 0..2 arrays with all rows having a nonnegative second derivative, and all columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223388, there is no canonical definition to state claims against.
-/

/-! ## A223388.P990358526099012135

`3^(n+3)-A223188(n+3)`
-/

namespace A223388.P990358526099012135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 3) : ℤ) - A223188 (n + 3)

end

end A223388.P990358526099012135

/-! ## A223388.P14898525221905179345

`sqrt(A223389(n+1))`
-/

namespace A223388.P14898525221905179345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A223389 (n + 1) : ℝ)

end

end A223388.P14898525221905179345

/-! ## A223388.P15095244462182188684

`root(A223389(Δ[n²]-n), 2)`
-/

namespace A223388.P15095244462182188684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223389 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A223388.P15095244462182188684

/-! ## A223388.P5839990172375534254

`root(A223389(n+1), 2)*A000005(((-1)^n)²)`
-/

namespace A223388.P5839990172375534254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223389 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A000005 (((-1) ^ n) ^ 2).toNat : ℝ)

end

end A223388.P5839990172375534254

/-! ## A223388.P10876290676825299042

`root(A223389(n+1), 2)*A007318(1-(-1)^n)`
-/

namespace A223388.P10876290676825299042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223389 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (1 - (-1) ^ n).toNat : ℝ)

end

end A223388.P10876290676825299042

/-!
# A223389: Number of (n+2) X 2 0..2 arrays with all rows having a nonnegative second derivative, and all columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223389, there is no canonical definition to state claims against.
-/

/-! ## A223389.P1743967109408119563

`A223388(n+1)²`
-/

namespace A223389.P1743967109408119563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223388 (n + 1) ^ 2

end

end A223389.P1743967109408119563

/-! ## A223389.P831591351274777573

`A223388(n+1)^A000005(A000043(n+1))`
-/

namespace A223389.P831591351274777573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223388 (n + 1) : ℚ) ^ (A000005 (A000043 (n + 1)).toNat : ℤ)

end

end A223389.P831591351274777573

/-! ## A223389.P690520835923529527

`A223388(n+1)^A000005(A045383(n+2))`
-/

namespace A223389.P690520835923529527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223388 (n + 1) : ℚ) ^ (A000005 (A045383 (n + 2)).toNat : ℤ)

end

end A223389.P690520835923529527

/-! ## A223389.P7228344260393398589

`A223388(n+1)^A001221(A077448(n+2))`
-/

namespace A223389.P7228344260393398589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223388 (n + 1) : ℚ) ^ (A001221 (A077448 (n + 2)).toNat : ℤ)

end

end A223389.P7228344260393398589

/-! ## A223389.P13321781912285067092

`A223388(n+1)^A020639(2*A005145(n+1))`
-/

namespace A223389.P13321781912285067092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223388 (n + 1) : ℚ) ^ (A020639 (2 * A005145 (n + 1)).toNat : ℤ)

end

end A223389.P13321781912285067092

/-!
# A223390: Number of (n+2)X3 0..2 arrays with all rows having a nonnegative second derivative, and all columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223390, there is no canonical definition to state claims against.
-/

/-! ## A223390.P7470056520987783666

`A223391(∑[n+3]+1)`
-/

namespace A223390.P7470056520987783666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223390.P7470056520987783666

/-!
# A223392: Number of 3Xn 0..2 arrays with all rows having a nonnegative second derivative, and all columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223392, there is no canonical definition to state claims against.
-/

/-! ## A223392.P7521684240972866878

`A223391(∑[n]+1)`
-/

namespace A223392.P7521684240972866878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223392.P7521684240972866878

/-! ## A223392.P16758737642066277844

`record[A223391(∑[A057979(n)])]`
-/

namespace A223392.P16758737642066277844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223391 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223392.P16758737642066277844

/-! ## A223392.P17789236483277378611

`record[A223391(∑[A145677(n)])]`
-/

namespace A223392.P17789236483277378611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223391 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223392.P17789236483277378611

/-! ## A223392.P16191270175374324057

`record[A223391(record[A114220(n)])]`
-/

namespace A223392.P16191270175374324057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223391 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223392.P16191270175374324057

/-! ## A223392.P13734324050617941675

`and(-1, A223391(A000124(n)))`
-/

namespace A223392.P13734324050617941675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A223391 (A000124 n).toNat)

end

end A223392.P13734324050617941675

/-!
# A223393: Number of 4 X n 0..2 arrays with all rows having a nonnegative second derivative, and all columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223393, there is no canonical definition to state claims against.
-/

/-! ## A223393.P17833535704559612589

`A223391(∑[n+1]+2)`
-/

namespace A223393.P17833535704559612589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223391 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223393.P17833535704559612589

/-! ## A223393.P9203443401750060388

`A223391(A152948(n+3))%A081142(2*n+3)`
-/

namespace A223393.P9203443401750060388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223391 (A152948 (n + 3)).toNat) (A081142 (2 * n + 3))

end

end A223393.P9203443401750060388

/-! ## A223393.P13377674679819946950

`A223391(A152948(n+3))+A000038(A235697(n+1))`
-/

namespace A223393.P13377674679819946950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223391 (A152948 (n + 3)).toNat + A000038 (A235697 (n + 1)).toNat

end

end A223393.P13377674679819946950

/-!
# A223394: 4X4 square grid graph coloring a rectangular array: number of n X n 0..15 arrays where 0..15 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223394, there is no canonical definition to state claims against.
-/

/-! ## A223394.P9140326212603717970

`A223402((n+1)²+n²)`
-/

namespace A223394.P9140326212603717970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 ((n + 1) ^ 2 + n ^ 2)

end

end A223394.P9140326212603717970

/-! ## A223394.P14153210928152656948

`lcm(2, A223402(A001844(n)))`
-/

namespace A223394.P14153210928152656948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223402 (A001844 n).toNat)

end

end A223394.P14153210928152656948

/-! ## A223394.P4024417999640105227

`A223402(A001844(n))*A322356(n+1)`
-/

namespace A223394.P4024417999640105227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A001844 n).toNat * A322356 (n + 1)

end

end A223394.P4024417999640105227

/-!
# A223395: 4 X 4 square grid graph coloring a rectangular array: number of n X 1 0..15 arrays where 0..15 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223395, the canonical program `A223395.P2838998395562733388` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223395 has offset 1).

The definition of A223395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223395.P2838998395562733388

`3*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=16, a(1)=48, a(2)=152`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223395

/-- `3*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P2838998395562733388.Spec : Prop :=
  ∀ n, P2838998395562733388.a n = A223395 (n + 1)

theorem P2838998395562733388.correct : P2838998395562733388.Spec := by
  intro n
  simp only [A223395, Nat.add_sub_cancel]

end A223395

/-! ## A223395.P13996541539724782560

`∑[A063782(n+2)]+6`
-/

namespace A223395.P13996541539724782560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A223395.P13996541539724782560

namespace A223395

/-- `∑[A063782(n+2)]+6` -/
def P13996541539724782560.Spec : Prop :=
  ∀ n, P13996541539724782560.a n = A223395 (n + 1)

end A223395

/-! ## A223395.P4465399903120165937

`A103435(n+3)-4*A014334(n)`
-/

namespace A223395.P4465399903120165937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103435 (n + 3) - 4 * A014334 n

end

end A223395.P4465399903120165937

namespace A223395

/-- `A103435(n+3)-4*A014334(n)` -/
def P4465399903120165937.Spec : Prop :=
  ∀ n, P4465399903120165937.a n = A223395 (n + 1)

end A223395

/-! ## A223395.P15484780929053607497

`A014335(n+3)+A014335(n+4)+2`
-/

namespace A223395.P15484780929053607497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 (n + 3) + (A014335 (n + 4) + 2)

end

end A223395.P15484780929053607497

namespace A223395

/-- `A014335(n+3)+A014335(n+4)+2` -/
def P15484780929053607497.Spec : Prop :=
  ∀ n, P15484780929053607497.a n = A223395 (n + 1)

end A223395

/-! ## A223395.P12486320163126497547

`(8+(11-5*sqrt(5))*(1-sqrt(5))^(n+1)+(1+sqrt(5))^(n+1)*(11+5*sqrt(5)))/5`
-/

namespace A223395.P12486320163126497547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (8 + (11 - 5 * Real.sqrt (5 : ℝ)) * (1 - Real.sqrt (5 : ℝ)) ^ (n + 1) + (1 + Real.sqrt (5 : ℝ)) ^ (n + 1) * (11 + 5 * Real.sqrt (5 : ℝ))) / 5

end

end A223395.P12486320163126497547

namespace A223395

/-- `(8+(11-5*sqrt(5))*(1-sqrt(5))^(n+1)+(1+sqrt(5))^(n+1)*(11+5*sqrt(5)))/5` -/
def P12486320163126497547.Spec : Prop :=
  ∀ n, P12486320163126497547.a n = (A223395 (n + 1) : ℝ)

theorem P12486320163126497547.correct : P12486320163126497547.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A223395, Nat.add_sub_cancel, A223395.P12486320163126497547.a, A223395.P2838998395562733388.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A223395, Nat.add_sub_cancel, A223395.P12486320163126497547.a, A223395.P2838998395562733388.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A223395

/-!
# A223396: 4 X 4 square grid graph coloring a rectangular array: number of n X 2 0..15 arrays where 0..15 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223396, there is no canonical definition to state claims against.
-/

/-! ## A223396.P14938342185907943726

`A223402(∑[n+1]+2)`
-/

namespace A223396.P14938342185907943726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223396.P14938342185907943726

/-! ## A223396.P12990530687368402136

`record[A010054(n)*A223402(n+2)]`
-/

namespace A223396.P12990530687368402136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223402 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223396.P12990530687368402136

/-! ## A223396.P5670786165138161465

`record[gcd(A073200(n), A223402(n+3))]`
-/

namespace A223396.P5670786165138161465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073200 n) (A223402 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223396.P5670786165138161465

/-! ## A223396.P9943382163544749277

`A223402(A133263(n+1))%A083143(n+4)`
-/

namespace A223396.P9943382163544749277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223402 (A133263 (n + 1)).toNat) (A083143 (n + 4))

end

end A223396.P9943382163544749277

/-! ## A223396.P16545930211329295668

`record[A223402(A000096(A133310(n)))]`
-/

namespace A223396.P16545930211329295668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223396.P16545930211329295668

/-!
# A223397: 4X4 square grid graph coloring a rectangular array: number of nX3 0..15 arrays where 0..15 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223397, there is no canonical definition to state claims against.
-/

/-! ## A223397.P17861360896512530812

`A223402(∑[n+2]+4)`
-/

namespace A223397.P17861360896512530812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223397.P17861360896512530812

/-! ## A223397.P4556097600908648509

`lcm(2, A223402(A167614(n+1)))`
-/

namespace A223397.P4556097600908648509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223402 (A167614 (n + 1)).toNat)

end

end A223397.P4556097600908648509

/-! ## A223397.P15804038851551375056

`A223402(A167614(n+1))+A185284(n)`
-/

namespace A223397.P15804038851551375056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A167614 (n + 1)).toNat + A185284 n

end

end A223397.P15804038851551375056

/-! ## A223397.P10369509033042251366

`A223402(A167614(n+1))*A304042(n)`
-/

namespace A223397.P10369509033042251366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A167614 (n + 1)).toNat * A304042 n

end

end A223397.P10369509033042251366

/-! ## A223397.P1520488543193056831

`A223402(A167614(n+1))/A304042(n+2)`
-/

namespace A223397.P1520488543193056831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223402 (A167614 (n + 1)).toNat : ℚ) / (A304042 (n + 2) : ℚ)

end

end A223397.P1520488543193056831

/-!
# A223398: 4X4 square grid graph coloring a rectangular array: number of nX4 0..15 arrays where 0..15 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223398, there is no canonical definition to state claims against.
-/

/-! ## A223398.P15417947663702237255

`A223402(A141214(n)+7)`
-/

namespace A223398.P15417947663702237255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A141214 n + 7).toNat

end

end A223398.P15417947663702237255

/-! ## A223398.P1717520334161582263

`A223402(A167614(n+2)+1)`
-/

namespace A223398.P1717520334161582263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A167614 (n + 2) + 1).toNat

end

end A223398.P1717520334161582263

/-! ## A223398.P17171320265817014448

`A223402(Δ[A264443(n)-n²])`
-/

namespace A223398.P17171320265817014448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (f1 (n + 1) - f1 n).toNat

end

end A223398.P17171320265817014448

/-! ## A223398.P6097227379319470003

`A223402(A374004(n+1))`
-/

namespace A223398.P6097227379319470003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A374004 (n + 1)).toNat

end

end A223398.P6097227379319470003

/-! ## A223398.P9696801321169682366

`A223402(A027379(n+2))`
-/

namespace A223398.P9696801321169682366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A027379 (n + 2)).toNat

end

end A223398.P9696801321169682366

/-!
# A223399: 4 X 4 square grid graph coloring a rectangular array: number of n X 5 0..15 arrays where 0..15 label nodes of the square grid graph and every array movement to a horizontal or vertical neighbor moves along an edge of this graph.

The programs for A223399, there is no canonical definition to state claims against.
-/

/-! ## A223399.P9057520835409561714

`A223402(A167499(n+3))`
-/

namespace A223399.P9057520835409561714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A167499 (n + 3)).toNat

end

end A223399.P9057520835409561714

/-! ## A223399.P526204805691722866

`A223402(A155212(n)+13)`
-/

namespace A223399.P526204805691722866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A155212 n + 13).toNat

end

end A223399.P526204805691722866

/-! ## A223399.P4173904345791916840

`A223402(eq[6, A131818(n+1)])`
-/

namespace A223399.P4173904345791916840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223399.P4173904345791916840

/-! ## A223399.P9802411038662095641

`A223402(Δ[A264443(n)])`
-/

namespace A223399.P9802411038662095641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (f1 (n + 1) - f1 n).toNat

end

end A223399.P9802411038662095641

/-! ## A223399.P9144587140881744871

`A223402(A374005(n+1))`
-/

namespace A223399.P9144587140881744871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223402 (A374005 (n + 1)).toNat

end

end A223399.P9144587140881744871

