import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A149500: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (0, -1, -1), (1, 1, 1)}.

The programs for A149500, there is no canonical definition to state claims against.
-/

/-! ## A149500.P2108361151527061485

`ceil(log(cosh(A149501(n))))`
-/

namespace A149500.P2108361151527061485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.cosh (A149501 n : ℝ))⌉

end

end A149500.P2108361151527061485

/-! ## A149500.P1661184621725499957

`A149501(A001096(n))`
-/

namespace A149500.P1661184621725499957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149501 (A001096 n).toNat

end

end A149500.P1661184621725499957

/-!
# A149503: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (0, -1, 0), (1, 1, 0)}.

The programs for A149503, there is no canonical definition to state claims against.
-/

/-! ## A149503.P5833232029192546951

`A149505(n)-A326292(A293994(n))`
-/

namespace A149503.P5833232029192546951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149505 n - A326292 (A293994 n).toNat

end

end A149503.P5833232029192546951

/-! ## A149503.P7929183700704719257

`A149504(A001096(n))`
-/

namespace A149503.P7929183700704719257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149504 (A001096 n).toNat

end

end A149503.P7929183700704719257

/-!
# A149504: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149504, there is no canonical definition to state claims against.
-/

/-! ## A149504.P11884157403509866079

`A149505(n*(1-∑{digits}[n, #]+n))`
-/

namespace A149504.P11884157403509866079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149505 ((n : ℤ) * (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A149504.P11884157403509866079

/-! ## A149504.P5859344376721988368

`A149505(n^(1-∑{digits}[n, #]+n))`
-/

namespace A149504.P5859344376721988368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149505 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A149504.P5859344376721988368

/-! ## A149504.P3621476580918553193

`A149505(C(floor(10^n/9), ∑{digits}[n, 10^#])+n)`
-/

namespace A149504.P3621476580918553193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149505 (Nat.choose ⌊(10 ^ n : ℚ) / 9⌋.toNat ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum + n)

end

end A149504.P3621476580918553193

/-! ## A149504.P1336858004957179953

`A000265(A149505(n))`
-/

namespace A149504.P1336858004957179953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A149505 n).toNat

end

end A149504.P1336858004957179953

/-! ## A149504.P11459187234169863990

`A149505(A002998(n))`
-/

namespace A149504.P11459187234169863990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149505 (A002998 n).toNat

end

end A149504.P11459187234169863990

/-!
# A149506: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149506, there is no canonical definition to state claims against.
-/

/-! ## A149506.P3088881192428152447

`A326292(A293994(n))+A149505(n)`
-/

namespace A149506.P3088881192428152447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 (A293994 n).toNat + A149505 n

end

end A149506.P3088881192428152447

/-!
# A149507: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 0), (0, -1, -1), (1, 1, 1)}.

The programs for A149507, there is no canonical definition to state claims against.
-/

/-! ## A149507.P2206753267334620029

`A149508(A073789(n))`
-/

namespace A149507.P2206753267334620029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149508 (A073789 n).toNat

end

end A149507.P2206753267334620029

/-! ## A149507.P9058653231228411192

`A149508(A171644(n))`
-/

namespace A149507.P9058653231228411192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149508 (A171644 n).toNat

end

end A149507.P9058653231228411192

/-! ## A149507.P16681976325952972318

`A246676(A149508(n))`
-/

namespace A149507.P16681976325952972318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (A149508 n).toNat

end

end A149507.P16681976325952972318

/-! ## A149507.P6062153415409014201

`A149508(A002034(n!))`
-/

namespace A149507.P6062153415409014201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149508 (A002034 (Nat.factorial n)).toNat

end

end A149507.P6062153415409014201

/-!
# A149509: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149509, there is no canonical definition to state claims against.
-/

/-! ## A149509.P10748399936482852769

`A004277(A149534(n))-A149576(n)`
-/

namespace A149509.P10748399936482852769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149534 n).toNat - A149576 n

end

end A149509.P10748399936482852769

/-! ## A149509.P16684969434710723555

`A004277(A149535(n))-A149576(n)`
-/

namespace A149509.P16684969434710723555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149535 n).toNat - A149576 n

end

end A149509.P16684969434710723555

/-! ## A149509.P1615965251771551401

`A037912(n+1)+A005843(A149535(n))-A149576(n)`
-/

namespace A149509.P1615965251771551401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (n + 1) + (A005843 (A149535 n).toNat - A149576 n)

end

end A149509.P1615965251771551401

/-!
# A149510: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, -1, -1), (1, 1, 1)}.

The programs for A149510, there is no canonical definition to state claims against.
-/

/-! ## A149510.P10018912755150794190

`A149511(A073789(n))`
-/

namespace A149510.P10018912755150794190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149511 (A073789 n).toNat

end

end A149510.P10018912755150794190

/-! ## A149510.P5911892261429752603

`A149511(A171644(n))`
-/

namespace A149510.P5911892261429752603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149511 (A171644 n).toNat

end

end A149510.P5911892261429752603

/-! ## A149510.P16598138881861674869

`A149511(A004869(n+1))`
-/

namespace A149510.P16598138881861674869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149511 (A004869 (n + 1)).toNat

end

end A149510.P16598138881861674869

/-! ## A149510.P9116560648587424853

`A149511(A004880(n+1))`
-/

namespace A149510.P9116560648587424853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149511 (A004880 (n + 1)).toNat

end

end A149510.P9116560648587424853

/-!
# A149511: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149511, there is no canonical definition to state claims against.
-/

/-! ## A149511.P5509989893052416958

`A000026(A149512(n))`
-/

namespace A149511.P5509989893052416958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149512 n).toNat

end

end A149511.P5509989893052416958

/-! ## A149511.P2165117929026088942

`A149512(A073790(n))`
-/

namespace A149511.P2165117929026088942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149512 (A073790 n).toNat

end

end A149511.P2165117929026088942

/-! ## A149511.P14082021267209968873

`A149512(A098755(n))`
-/

namespace A149511.P14082021267209968873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149512 (A098755 n).toNat

end

end A149511.P14082021267209968873

/-! ## A149511.P11434790065696722076

`A149512(A171717(n))`
-/

namespace A149511.P11434790065696722076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149512 (A171717 n).toNat

end

end A149511.P11434790065696722076

/-! ## A149511.P1037079565522512634

`A149512(A004870(n+1))`
-/

namespace A149511.P1037079565522512634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149512 (A004870 (n + 1)).toNat

end

end A149511.P1037079565522512634

/-!
# A149513: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149513, there is no canonical definition to state claims against.
-/

/-! ## A149513.P48948872029169182

`A299173(A261791(n+1))+A149511(n)`
-/

namespace A149513.P48948872029169182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A261791 (n + 1)).toNat + A149511 n

end

end A149513.P48948872029169182

/-!
# A149514: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (1, -1, 0), (1, 1, 0)}.

The programs for A149514, there is no canonical definition to state claims against.
-/

/-! ## A149514.P11282729598477842584

`A259810(n+1)-∑[A259829(A259800(n+1))]`
-/

namespace A149514.P11282729598477842584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259829 (A259800 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259810 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149514.P11282729598477842584

/-! ## A149514.P14787163008919507292

`A151991(A148631(n))`
-/

namespace A149514.P14787163008919507292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151991 (A148631 n).toNat

end

end A149514.P14787163008919507292

/-!
# A149515: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (0, -1, -1), (1, 1, 1)}.

The programs for A149515, there is no canonical definition to state claims against.
-/

/-! ## A149515.P15580073223965824955

`A149516(A073789(n))`
-/

namespace A149515.P15580073223965824955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149516 (A073789 n).toNat

end

end A149515.P15580073223965824955

/-! ## A149515.P15374916248637427545

`A075054(A149516(n))`
-/

namespace A149515.P15374916248637427545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A149516 n).toNat

end

end A149515.P15374916248637427545

/-! ## A149515.P7664054620247826357

`A149516(A002034(n!))`
-/

namespace A149515.P7664054620247826357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149516 (A002034 (Nat.factorial n)).toNat

end

end A149515.P7664054620247826357

/-! ## A149515.P13224423278297934955

`A149516(A004869(n+1))`
-/

namespace A149515.P13224423278297934955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149516 (A004869 (n + 1)).toNat

end

end A149515.P13224423278297934955

/-!
# A149521: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149521, there is no canonical definition to state claims against.
-/

/-! ## A149521.P15986662588654083221

`A004151(A149522(n))`
-/

namespace A149521.P15986662588654083221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A149522 n).toNat

end

end A149521.P15986662588654083221

/-! ## A149521.P3198853781055908628

`A149522(A073789(n))`
-/

namespace A149521.P3198853781055908628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149522 (A073789 n).toNat

end

end A149521.P3198853781055908628

/-! ## A149521.P15573559492972672626

`A149522(A171644(n))`
-/

namespace A149521.P15573559492972672626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149522 (A171644 n).toNat

end

end A149521.P15573559492972672626

/-! ## A149521.P10604453364735476174

`A149522(A002034(n!))`
-/

namespace A149521.P10604453364735476174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149522 (A002034 (Nat.factorial n)).toNat

end

end A149521.P10604453364735476174

/-!
# A149523: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, -1, -1), (1, 1, 1)}.

The programs for A149523, there is no canonical definition to state claims against.
-/

/-! ## A149523.P6442455706777338280

`A109785(A006172(n)*A024924(n))`
-/

namespace A149523.P6442455706777338280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109785 (A006172 n * A024924 n).toNat

end

end A149523.P6442455706777338280

/-! ## A149523.P10678220326917439409

`or(A085203(n), A214701(A149524(n)))`
-/

namespace A149523.P10678220326917439409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085203 n) (A214701 (A149524 n).toNat)

end

end A149523.P10678220326917439409

/-! ## A149523.P6872617597189120993

`or(A085203(n), A214701(A149525(n)))`
-/

namespace A149523.P6872617597189120993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085203 n) (A214701 (A149525 n).toNat)

end

end A149523.P6872617597189120993

/-!
# A149524: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (1, -1, -1), (1, 1, 1)}.

The programs for A149524, there is no canonical definition to state claims against.
-/

/-! ## A149524.P9739815169040849444

`∏{p}[A149525(n)², #]`
-/

namespace A149524.P9739815169040849444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149525 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149524.P9739815169040849444

/-! ## A149524.P1120073290327580343

`A059806(A149525(n))`
-/

namespace A149524.P1120073290327580343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (A149525 n).toNat

end

end A149524.P1120073290327580343

/-! ## A149524.P2340362156960522927

`A149525(A073788(n))`
-/

namespace A149524.P2340362156960522927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149525 (A073788 n).toNat

end

end A149524.P2340362156960522927

/-!
# A149525: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149525, there is no canonical definition to state claims against.
-/

/-! ## A149525.P17092407259574330261

`or(A002262(A000142(n)), A149524(n))`
-/

namespace A149525.P17092407259574330261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A000142 n).toNat) (A149524 n)

end

end A149525.P17092407259574330261

/-! ## A149525.P15207813493560343709

`or(A002262(A149308(n)), A149306(n))`
-/

namespace A149525.P15207813493560343709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A149308 n).toNat) (A149306 n)

end

end A149525.P15207813493560343709

/-!
# A149526: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149526, there is no canonical definition to state claims against.
-/

/-! ## A149526.P11866035810739986913

`or(A000120(A076886(n)), A149231(n))`
-/

namespace A149526.P11866035810739986913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A076886 n).toNat) (A149231 n)

end

end A149526.P11866035810739986913

/-! ## A149526.P12164680361558941581

`or(A149231(n), A171435(A000165(n)))`
-/

namespace A149526.P12164680361558941581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149231 n) (A171435 (A000165 n).toNat)

end

end A149526.P12164680361558941581

/-!
# A149527: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149527, there is no canonical definition to state claims against.
-/

/-! ## A149527.P13333351363961433742

`or(1, A215244(∑[floor(7^(n-1))]))`
-/

namespace A149527.P13333351363961433742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A215244 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A149527.P13333351363961433742

/-! ## A149527.P12318074065410406376

`A093893(A148519(n))`
-/

namespace A149527.P12318074065410406376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (A148519 n).toNat

end

end A149527.P12318074065410406376

/-!
# A149528: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (1, -1, 0), (1, 1, 0)}.

The programs for A149528, there is no canonical definition to state claims against.
-/

/-! ## A149528.P8492045765920994306

`∏{p}[floor(∑[2^n/3]), A083020(#)]`
-/

namespace A149528.P8492045765920994306
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A083020 p

end

end A149528.P8492045765920994306

/-! ## A149528.P16800750882424543693

`A354719(A354736(n*A090182(n)))`
-/

namespace A149528.P16800750882424543693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354719 (A354736 ((n : ℤ) * A090182 n).toNat).toNat

end

end A149528.P16800750882424543693

/-! ## A149528.P10419139142468712423

`A354719(A354736(n)^A090182(n))`
-/

namespace A149528.P10419139142468712423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354719 (SequenceMachineLib.roundAway ((A354736 n : ℚ) ^ (A090182 n : ℤ))).toNat

end

end A149528.P10419139142468712423

/-!
# A149529: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, -1, -1), (1, 1, 1)}.

The programs for A149529, there is no canonical definition to state claims against.
-/

/-! ## A149529.P13234167187496917161

`p?[A149530(n)+6]-6`
-/

namespace A149529.P13234167187496917161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149530 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A149529.P13234167187496917161

/-! ## A149529.P7834007206230614311

`A149530(A001096(n))`
-/

namespace A149529.P7834007206230614311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149530 (A001096 n).toNat

end

end A149529.P7834007206230614311

/-!
# A149532: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (0, -1, 0), (1, 1, 0)}.

The programs for A149532, there is no canonical definition to state claims against.
-/

/-! ## A149532.P6694007215304850296

`A004277(A149504(n))-A149498(n)`
-/

namespace A149532.P6694007215304850296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149504 n).toNat - A149498 n

end

end A149532.P6694007215304850296

/-! ## A149532.P8519185502863276098

`A004277(A149505(n))-A149498(n)`
-/

namespace A149532.P8519185502863276098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149505 n).toNat - A149498 n

end

end A149532.P8519185502863276098

/-! ## A149532.P2491472576287661398

`A149533(A073788(n))`
-/

namespace A149532.P2491472576287661398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149533 (A073788 n).toNat

end

end A149532.P2491472576287661398

/-!
# A149534: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (1, -1, 0), (1, 1, 1)}.

The programs for A149534, there is no canonical definition to state claims against.
-/

/-! ## A149534.P13315656359572351529

`A149535(n)^(n-∏{digits}[n, #])!`
-/

namespace A149534.P13315656359572351529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149535 n ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)).toNat

end

end A149534.P13315656359572351529

/-! ## A149534.P17910993214804778176

`A149535(C(floor(10^n/9), ∑{digits}[n, 10^#])+n)`
-/

namespace A149534.P17910993214804778176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149535 (Nat.choose ⌊(10 ^ n : ℚ) / 9⌋.toNat ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum + n)

end

end A149534.P17910993214804778176

/-! ## A149534.P13632140833375883510

`A000265(A149535(n))`
-/

namespace A149534.P13632140833375883510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A149535 n).toNat

end

end A149534.P13632140833375883510

/-! ## A149534.P12416155846812741769

`A149535(A002998(n))`
-/

namespace A149534.P12416155846812741769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149535 (A002998 n).toNat

end

end A149534.P12416155846812741769

/-! ## A149534.P14011768052264610455

`A149535(A024664(n))`
-/

namespace A149534.P14011768052264610455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149535 (A024664 n).toNat

end

end A149534.P14011768052264610455

/-!
# A149536: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (1, -1, 0), (1, 1, 1)}.

The programs for A149536, there is no canonical definition to state claims against.
-/

/-! ## A149536.P8192481487918646453

`A149537(n^∑[char[10*n]])`
-/

namespace A149536.P8192481487918646453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149537 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A149536.P8192481487918646453

/-! ## A149536.P11836657554402199045

`∏{p}[2*4^n, #-1]*A149537(n)`
-/

namespace A149536.P11836657554402199045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A149537 n

end

end A149536.P11836657554402199045

/-! ## A149536.P10279461782379793971

`A000265(A149537(n))`
-/

namespace A149536.P10279461782379793971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A149537 n).toNat

end

end A149536.P10279461782379793971

/-! ## A149536.P2954026304022266000

`A014682(2*A149537(n))`
-/

namespace A149536.P2954026304022266000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A149537 n).toNat

end

end A149536.P2954026304022266000

/-! ## A149536.P5808531306051178660

`A014682(lcm(2, A149537(n)))`
-/

namespace A149536.P5808531306051178660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A149537 n))

end

end A149536.P5808531306051178660

/-!
# A149538: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 0), (1, -1, 1), (1, 1, 1)}.

The programs for A149538, there is no canonical definition to state claims against.
-/

/-! ## A149538.P1539103915570928965

`A149539(gcd((11*n)², ∑[2*n]))`
-/

namespace A149538.P1539103915570928965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149539 (Nat.gcd ((11 * n) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A149538.P1539103915570928965

/-! ## A149538.P17383478475538124270

`A000265(A149539(n))`
-/

namespace A149538.P17383478475538124270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A149539 n).toNat

end

end A149538.P17383478475538124270

/-! ## A149538.P16515401333911965837

`A149539(A002998(n))`
-/

namespace A149538.P16515401333911965837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149539 (A002998 n).toNat

end

end A149538.P16515401333911965837

/-! ## A149538.P9959470407612260721

`A149539(A039723(n))`
-/

namespace A149538.P9959470407612260721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149539 (A039723 n).toNat

end

end A149538.P9959470407612260721

/-! ## A149538.P10413668673444612176

`A149539(A046469(n))`
-/

namespace A149538.P10413668673444612176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149539 (A046469 n).toNat

end

end A149538.P10413668673444612176

/-!
# A149540: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149540, there is no canonical definition to state claims against.
-/

/-! ## A149540.P11490913801032360811

`A051724(A263053(n+1)+lcm(2, floor(4^n/3)))`
-/

namespace A149540.P11490913801032360811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A263053 (n + 1) + (Int.lcm 2 ⌊(4 ^ n : ℚ) / 3⌋ : ℤ)).toNat

end

end A149540.P11490913801032360811

/-! ## A149540.P245463790445914738

`A089167(a(n-1)+2)` with `a(0)=1, a(1)=1`
-/

namespace A149540.P245463790445914738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A089167 (a (n - 1) + 2).toNat

end

end A149540.P245463790445914738

/-!
# A149541: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149541, there is no canonical definition to state claims against.
-/

/-! ## A149541.P12458968385364962513

`A000015(A149542(n))`
-/

namespace A149541.P12458968385364962513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A149542 n).toNat

end

end A149541.P12458968385364962513

/-! ## A149541.P18232311853815877347

`A149542(A073789(n))`
-/

namespace A149541.P18232311853815877347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149542 (A073789 n).toNat

end

end A149541.P18232311853815877347

/-! ## A149541.P10390460452201269410

`A149542(A171644(n))`
-/

namespace A149541.P10390460452201269410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149542 (A171644 n).toNat

end

end A149541.P10390460452201269410

/-! ## A149541.P13400286763716688138

`A149542(A002034(n!))`
-/

namespace A149541.P13400286763716688138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149542 (A002034 (Nat.factorial n)).toNat

end

end A149541.P13400286763716688138

/-!
# A149543: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149543, there is no canonical definition to state claims against.
-/

/-! ## A149543.P16206469833872357690

`A000026(A149544(n))`
-/

namespace A149543.P16206469833872357690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149544 n).toNat

end

end A149543.P16206469833872357690

/-! ## A149543.P16203314255495773950

`A149544(A073789(n))`
-/

namespace A149543.P16203314255495773950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149544 (A073789 n).toNat

end

end A149543.P16203314255495773950

/-! ## A149543.P12077399129781322620

`A149544(A171644(n))`
-/

namespace A149543.P12077399129781322620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149544 (A171644 n).toNat

end

end A149543.P12077399129781322620

/-! ## A149543.P3745690582236585063

`A149544(A004869(n+1))`
-/

namespace A149543.P3745690582236585063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149544 (A004869 (n + 1)).toNat

end

end A149543.P3745690582236585063

/-!
# A149545: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 0), (1, -1, 0), (1, 1, 1)}.

The programs for A149545, there is no canonical definition to state claims against.
-/

/-! ## A149545.P9676632517604249832

`A149546(C(floor(10^n/9), ∑{digits}[n, 10^#])+n)`
-/

namespace A149545.P9676632517604249832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149546 (Nat.choose ⌊(10 ^ n : ℚ) / 9⌋.toNat ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum + n)

end

end A149545.P9676632517604249832

/-! ## A149545.P17757775709884257261

`A000265(A149546(n))`
-/

namespace A149545.P17757775709884257261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A149546 n).toNat

end

end A149545.P17757775709884257261

/-! ## A149545.P11587172479020368747

`A149546(A002998(n))`
-/

namespace A149545.P11587172479020368747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149546 (A002998 n).toNat

end

end A149545.P11587172479020368747

/-! ## A149545.P8682373857623911243

`A149546(A024664(n))`
-/

namespace A149545.P8682373857623911243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149546 (A024664 n).toNat

end

end A149545.P8682373857623911243

/-! ## A149545.P13172778357298452882

`A149546(A039723(n))`
-/

namespace A149545.P13172778357298452882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149546 (A039723 n).toNat

end

end A149545.P13172778357298452882

/-!
# A149547: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, -1, 0), (1, 1, 1)}.

The programs for A149547, there is no canonical definition to state claims against.
-/

/-! ## A149547.P1066935766049552627

`A000265(A149548(n))`
-/

namespace A149547.P1066935766049552627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A149548 n).toNat

end

end A149547.P1066935766049552627

/-! ## A149547.P16947676944108149725

`A149548(A002998(n))`
-/

namespace A149547.P16947676944108149725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149548 (A002998 n).toNat

end

end A149547.P16947676944108149725

/-! ## A149547.P8265797592657569774

`A149548(A039723(n))`
-/

namespace A149547.P8265797592657569774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149548 (A039723 n).toNat

end

end A149547.P8265797592657569774

/-! ## A149547.P12698259050897625113

`A149548(A046469(n))`
-/

namespace A149547.P12698259050897625113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149548 (A046469 n).toNat

end

end A149547.P12698259050897625113

/-! ## A149547.P14165429311363178254

`A149548(A051022(n))`
-/

namespace A149547.P14165429311363178254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149548 (A051022 n).toNat

end

end A149547.P14165429311363178254

/-!
# A149549: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A149549, there is no canonical definition to state claims against.
-/

/-! ## A149549.P12015815362853685555

`A218851(2^n-n)`
-/

namespace A149549.P12015815362853685555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218851 (2 ^ n - n)

end

end A149549.P12015815362853685555

/-! ## A149549.P7258498462719610243

`A063954(A026003(n))`
-/

namespace A149549.P7258498462719610243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063954 (A026003 n).toNat

end

end A149549.P7258498462719610243

/-!
# A149550: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149550, there is no canonical definition to state claims against.
-/

/-! ## A149550.P1120574775524829321

`and(-3, or(1, A049093(A149283(n))))`
-/

namespace A149550.P1120574775524829321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (Int.lor 1 (A049093 (A149283 n).toNat))

end

end A149550.P1120574775524829321

/-! ## A149550.P11338001354013122656

`and(-3, A269172(or(1, A149475(n))))`
-/

namespace A149550.P11338001354013122656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A269172 (Int.lor 1 (A149475 n)).toNat)

end

end A149550.P11338001354013122656

/-! ## A149550.P14359694041369963990

`A149551(n)-A086080(A264509(n+1))`
-/

namespace A149550.P14359694041369963990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149551 n - A086080 (A264509 (n + 1)).toNat

end

end A149550.P14359694041369963990

/-!
# A149551: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149551, there is no canonical definition to state claims against.
-/

/-! ## A149551.P7920211710300463957

`or(1, A049093(A149283(n)))`
-/

namespace A149551.P7920211710300463957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049093 (A149283 n).toNat)

end

end A149551.P7920211710300463957

/-! ## A149551.P10460162480931937538

`A269172(or(1, A149475(n)))`
-/

namespace A149551.P10460162480931937538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (Int.lor 1 (A149475 n)).toNat

end

end A149551.P10460162480931937538

/-! ## A149551.P14479337520222562574

`A149550(n)+A088806(A149550(n))`
-/

namespace A149551.P14479337520222562574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149550 n + A088806 (A149550 n).toNat

end

end A149551.P14479337520222562574

/-!
# A149552: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149552, there is no canonical definition to state claims against.
-/

/-! ## A149552.P14066106055079616629

`or(A149551(n), A348917(A149549(n)))`
-/

namespace A149552.P14066106055079616629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149551 n) (A348917 (A149549 n).toNat)

end

end A149552.P14066106055079616629

/-!
# A149553: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (1, -1, -1), (1, 1, 1)}.

The programs for A149553, there is no canonical definition to state claims against.
-/

/-! ## A149553.P17911854028484964584

`A000026(A149554(n))`
-/

namespace A149553.P17911854028484964584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149554 n).toNat

end

end A149553.P17911854028484964584

/-! ## A149553.P14751336572654142366

`A149554(A073789(n))`
-/

namespace A149553.P14751336572654142366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149554 (A073789 n).toNat

end

end A149553.P14751336572654142366

/-! ## A149553.P13600888294144124730

`A149554(A171644(n))`
-/

namespace A149553.P13600888294144124730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149554 (A171644 n).toNat

end

end A149553.P13600888294144124730

/-! ## A149553.P9391562633884661971

`A149554(A002034(n!))`
-/

namespace A149553.P9391562633884661971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149554 (A002034 (Nat.factorial n)).toNat

end

end A149553.P9391562633884661971

/-!
# A149555: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (1, -1, -1), (1, 1, 1)}.

The programs for A149555, there is no canonical definition to state claims against.
-/

/-! ## A149555.P3958675638682159762

`A000026(A149556(n))`
-/

namespace A149555.P3958675638682159762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149556 n).toNat

end

end A149555.P3958675638682159762

/-! ## A149555.P11715401071268969884

`A149556(A073789(n))`
-/

namespace A149555.P11715401071268969884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149556 (A073789 n).toNat

end

end A149555.P11715401071268969884

/-! ## A149555.P12203234263161295512

`A149556(A171644(n))`
-/

namespace A149555.P12203234263161295512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149556 (A171644 n).toNat

end

end A149555.P12203234263161295512

/-! ## A149555.P241182258384686197

`A149556(A204933(n!))`
-/

namespace A149555.P241182258384686197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149556 (A204933 (Nat.factorial n)).toNat

end

end A149555.P241182258384686197

/-!
# A149556: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (1, -1, -1), (1, 1, 1)}.

The programs for A149556, there is no canonical definition to state claims against.
-/

/-! ## A149556.P1066502370398983080

`or(A054576(A149533(n)), A149555(n))`
-/

namespace A149556.P1066502370398983080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054576 (A149533 n).toNat) (A149555 n)

end

end A149556.P1066502370398983080

/-! ## A149556.P7081549687134463202

`or(A149555(n), A292596(A149554(n)))`
-/

namespace A149556.P7081549687134463202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149555 n) (A292596 (A149554 n).toNat)

end

end A149556.P7081549687134463202

/-! ## A149556.P7349778850558424012

`or(A149555(n), A323410(A149542(n)))`
-/

namespace A149556.P7349778850558424012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149555 n) (A323410 (A149542 n).toNat)

end

end A149556.P7349778850558424012

/-!
# A149557: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149557, there is no canonical definition to state claims against.
-/

/-! ## A149557.P15211227083160760931

`A000026(A149558(n))`
-/

namespace A149557.P15211227083160760931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149558 n).toNat

end

end A149557.P15211227083160760931

/-! ## A149557.P16504878447339338955

`A149558(A073789(n))`
-/

namespace A149557.P16504878447339338955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149558 (A073789 n).toNat

end

end A149557.P16504878447339338955

/-! ## A149557.P7367202944814025508

`A149558(A171644(n))`
-/

namespace A149557.P7367202944814025508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149558 (A171644 n).toNat

end

end A149557.P7367202944814025508

/-! ## A149557.P16340708095900752827

`A149558(A204933(n!))`
-/

namespace A149557.P16340708095900752827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149558 (A204933 (Nat.factorial n)).toNat

end

end A149557.P16340708095900752827

/-!
# A149559: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149559, there is no canonical definition to state claims against.
-/

/-! ## A149559.P60878989843561241

`A000026(A149560(n))`
-/

namespace A149559.P60878989843561241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149560 n).toNat

end

end A149559.P60878989843561241

/-! ## A149559.P5637753970772493797

`A149560(A073789(n))`
-/

namespace A149559.P5637753970772493797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149560 (A073789 n).toNat

end

end A149559.P5637753970772493797

/-! ## A149559.P7845430421716039717

`A149560(A171644(n))`
-/

namespace A149559.P7845430421716039717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149560 (A171644 n).toNat

end

end A149559.P7845430421716039717

/-! ## A149559.P14377216625942846853

`A149560(A002034(n!))`
-/

namespace A149559.P14377216625942846853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149560 (A002034 (Nat.factorial n)).toNat

end

end A149559.P14377216625942846853

/-!
# A149561: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149561, there is no canonical definition to state claims against.
-/

/-! ## A149561.P10281304296952033161

`A149562(A001096(n))`
-/

namespace A149561.P10281304296952033161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149562 (A001096 n).toNat

end

end A149561.P10281304296952033161

/-! ## A149561.P7102901310719077268

`A006530(A149563(n)²)`
-/

namespace A149561.P7102901310719077268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A149563 n ^ 2).toNat

end

end A149561.P7102901310719077268

/-!
# A149563: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149563, there is no canonical definition to state claims against.
-/

/-! ## A149563.P5322625112832418950

`A149564(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A149563.P5322625112832418950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149564 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A149563.P5322625112832418950

/-! ## A149563.P2179649537778203608

`A000265(A149564(n))`
-/

namespace A149563.P2179649537778203608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A149564 n).toNat

end

end A149563.P2179649537778203608

/-! ## A149563.P15306567927712847477

`A149564(A002998(n))`
-/

namespace A149563.P15306567927712847477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149564 (A002998 n).toNat

end

end A149563.P15306567927712847477

/-! ## A149563.P3950380868718193814

`A149564(A039723(n))`
-/

namespace A149563.P3950380868718193814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149564 (A039723 n).toNat

end

end A149563.P3950380868718193814

/-! ## A149563.P11409274279866925973

`A149564(A046469(n))`
-/

namespace A149563.P11409274279866925973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149564 (A046469 n).toNat

end

end A149563.P11409274279866925973

/-!
# A149565: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, -1, 0), (1, 1, 1)}.

The programs for A149565, there is no canonical definition to state claims against.
-/

/-! ## A149565.P2575166584729681878

`A000265(A149566(n))`
-/

namespace A149565.P2575166584729681878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A149566 n).toNat

end

end A149565.P2575166584729681878

/-! ## A149565.P13866028584705449234

`A149566(A002998(n))`
-/

namespace A149565.P13866028584705449234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149566 (A002998 n).toNat

end

end A149565.P13866028584705449234

/-! ## A149565.P14066133857625124080

`A149566(A024664(n))`
-/

namespace A149565.P14066133857625124080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149566 (A024664 n).toNat

end

end A149565.P14066133857625124080

/-! ## A149565.P16108904516014513856

`A149566(A039723(n))`
-/

namespace A149565.P16108904516014513856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149566 (A039723 n).toNat

end

end A149565.P16108904516014513856

/-! ## A149565.P9160397276321048327

`A149566(A046469(n))`
-/

namespace A149565.P9160397276321048327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149566 (A046469 n).toNat

end

end A149565.P9160397276321048327

/-!
# A149567: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149567, there is no canonical definition to state claims against.
-/

/-! ## A149567.P17655013845537281171

`A149568(A001096(n))`
-/

namespace A149567.P17655013845537281171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149568 (A001096 n).toNat

end

end A149567.P17655013845537281171

/-! ## A149567.P8857997601502835855

`or(1, A097203(A218985(n)))`
-/

namespace A149567.P8857997601502835855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A097203 (A218985 n).toNat)

end

end A149567.P8857997601502835855

/-!
# A149569: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, -1, 1), (1, 1, 1)}.

The programs for A149569, there is no canonical definition to state claims against.
-/

/-! ## A149569.P1181892575861837179

`A004151(A149570(n))`
-/

namespace A149569.P1181892575861837179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A149570 n).toNat

end

end A149569.P1181892575861837179

/-! ## A149569.P6014494913471720575

`A149570(A073789(n))`
-/

namespace A149569.P6014494913471720575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149570 (A073789 n).toNat

end

end A149569.P6014494913471720575

/-! ## A149569.P9511713827693442862

`A149570(A004880(n+1))`
-/

namespace A149569.P9511713827693442862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149570 (A004880 (n + 1)).toNat

end

end A149569.P9511713827693442862

/-! ## A149569.P14256197770495023543

`A149570(A004891(n+1))`
-/

namespace A149569.P14256197770495023543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149570 (A004891 (n + 1)).toNat

end

end A149569.P14256197770495023543

/-!
# A149571: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (1, -1, 0), (1, 1, 1)}.

The programs for A149571, there is no canonical definition to state claims against.
-/

/-! ## A149571.P11262509756011037716

`A004151(A149572(n))`
-/

namespace A149571.P11262509756011037716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A149572 n).toNat

end

end A149571.P11262509756011037716

/-! ## A149571.P388603513193297244

`A149572(A073789(n))`
-/

namespace A149571.P388603513193297244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149572 (A073789 n).toNat

end

end A149571.P388603513193297244

/-! ## A149571.P1895237502038065463

`A149572(A171644(n))`
-/

namespace A149571.P1895237502038065463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149572 (A171644 n).toNat

end

end A149571.P1895237502038065463

/-! ## A149571.P10678369763100723852

`A149572(A002034(n!))`
-/

namespace A149571.P10678369763100723852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149572 (A002034 (Nat.factorial n)).toNat

end

end A149571.P10678369763100723852

/-!
# A149573: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, -1, 0), (1, 1, 1)}.

The programs for A149573, there is no canonical definition to state claims against.
-/

/-! ## A149573.P1448245669273030434

`A004151(A149574(n))`
-/

namespace A149573.P1448245669273030434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A149574 n).toNat

end

end A149573.P1448245669273030434

/-! ## A149573.P6475340321064975069

`A149574(A073789(n))`
-/

namespace A149573.P6475340321064975069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149574 (A073789 n).toNat

end

end A149573.P6475340321064975069

/-! ## A149573.P10609222059411297049

`A149574(A171644(n))`
-/

namespace A149573.P10609222059411297049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149574 (A171644 n).toNat

end

end A149573.P10609222059411297049

/-! ## A149573.P9039663704337751159

`A149574(A002034(n!))`
-/

namespace A149573.P9039663704337751159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149574 (A002034 (Nat.factorial n)).toNat

end

end A149573.P9039663704337751159

/-!
# A149575: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149575, there is no canonical definition to state claims against.
-/

/-! ## A149575.P16312299216511761148

`abs(or(n, A320996(2*n+1)))`
-/

namespace A149575.P16312299216511761148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (A320996 (2 * n + 1))|

end

end A149575.P16312299216511761148

/-! ## A149575.P6909614903763490981

`A348963(∏[floor(3/acot(n))-n])`
-/

namespace A149575.P6909614903763490981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348963 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149575.P6909614903763490981

/-!
# A149576: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149576, there is no canonical definition to state claims against.
-/

/-! ## A149576.P10433365304611019590

`A004277(A149534(n))-A149509(n)`
-/

namespace A149576.P10433365304611019590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149534 n).toNat - A149509 n

end

end A149576.P10433365304611019590

/-! ## A149576.P12977424286507336716

`A004277(A149535(n))-A149509(n)`
-/

namespace A149576.P12977424286507336716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149535 n).toNat - A149509 n

end

end A149576.P12977424286507336716

/-! ## A149576.P11861979725109880119

`A005843(A149581(n))-A149585(n)-A045675((n-1)^(n%2))`
-/

namespace A149576.P11861979725109880119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A149581 n).toNat - A149585 n - A045675 (((n : ℤ) - 1) ^ (n % 2)).toNat

end

end A149576.P11861979725109880119

/-!
# A149577: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149577, there is no canonical definition to state claims against.
-/

/-! ## A149577.P14345107145301345990

`A004277(A149581(n))-A149585(n)`
-/

namespace A149577.P14345107145301345990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149581 n).toNat - A149585 n

end

end A149577.P14345107145301345990

/-!
# A149578: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149578, there is no canonical definition to state claims against.
-/

/-! ## A149578.P6073754597886767493

`A004277(A149579(n))-A149580(n)`
-/

namespace A149578.P6073754597886767493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149579 n).toNat - A149580 n

end

end A149578.P6073754597886767493

/-! ## A149578.P1626738037868436776

`A004277(A149583(n))-A149586(n)`
-/

namespace A149578.P1626738037868436776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149583 n).toNat - A149586 n

end

end A149578.P1626738037868436776

/-! ## A149578.P14444671589240836317

`(A005843(A149579(n))-A149580(n))%A149583(3*n+4)`
-/

namespace A149578.P14444671589240836317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A149579 n).toNat - A149580 n) (A149583 (3 * n + 4))

end

end A149578.P14444671589240836317

/-!
# A149579: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149579, there is no canonical definition to state claims against.
-/

/-! ## A149579.P11510423544664350796

`A000265(A149580(n)+A149578(n))`
-/

namespace A149579.P11510423544664350796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A149580 n + A149578 n).toNat

end

end A149579.P11510423544664350796

/-! ## A149579.P1055820896439696797

`A014682(A149580(n)+A149578(n))`
-/

namespace A149579.P1055820896439696797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A149580 n + A149578 n).toNat

end

end A149579.P1055820896439696797

/-! ## A149579.P18346983394509159095

`A273943(A149580(n)+A149578(n))`
-/

namespace A149579.P18346983394509159095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A149580 n + A149578 n).toNat

end

end A149579.P18346983394509159095

/-! ## A149579.P14999924129201445448

`A004525(A149580(n)+A149578(n))`
-/

namespace A149579.P14999924129201445448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149580 n + A149578 n).toNat

end

end A149579.P14999924129201445448

/-!
# A149580: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149580, there is no canonical definition to state claims against.
-/

/-! ## A149580.P5802710889646987412

`A004277(A149579(n))-A149578(n)`
-/

namespace A149580.P5802710889646987412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149579 n).toNat - A149578 n

end

end A149580.P5802710889646987412

/-!
# A149581: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149581, there is no canonical definition to state claims against.
-/

/-! ## A149581.P14284028301182527253

`A004526(A149585(n)+A149577(n))`
-/

namespace A149581.P14284028301182527253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149585 n + A149577 n).toNat

end

end A149581.P14284028301182527253

/-! ## A149581.P8778010408432579494

`A065033(A149585(n)+A149577(n))`
-/

namespace A149581.P8778010408432579494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149585 n + A149577 n).toNat

end

end A149581.P8778010408432579494

/-! ## A149581.P17149384412422072551

`A110654(A149585(n)+A149577(n))`
-/

namespace A149581.P17149384412422072551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A149585 n + A149577 n).toNat

end

end A149581.P17149384412422072551

/-! ## A149581.P4498268177483108902

`A204455(A149585(n)+A149577(n))`
-/

namespace A149581.P4498268177483108902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A149585 n + A149577 n).toNat

end

end A149581.P4498268177483108902

/-!
# A149582: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149582, there is no canonical definition to state claims against.
-/

/-! ## A149582.P16520535241239598605

`A004277(A149585(n))-A149589(n)`
-/

namespace A149582.P16520535241239598605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149585 n).toNat - A149589 n

end

end A149582.P16520535241239598605

/-!
# A149583: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149583, there is no canonical definition to state claims against.
-/

/-! ## A149583.P13163217601984543251

`A004525(A149586(n)+A149578(n))`
-/

namespace A149583.P13163217601984543251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149586 n + A149578 n).toNat

end

end A149583.P13163217601984543251

/-! ## A149583.P17906367539170890777

`A004526(A149586(n)+A149578(n))`
-/

namespace A149583.P17906367539170890777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149586 n + A149578 n).toNat

end

end A149583.P17906367539170890777

/-! ## A149583.P12286132825180609563

`A065033(A149586(n)+A149578(n))`
-/

namespace A149583.P12286132825180609563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149586 n + A149578 n).toNat

end

end A149583.P12286132825180609563

/-! ## A149583.P6489882109204580055

`A110654(A149586(n)+A149578(n))`
-/

namespace A149583.P6489882109204580055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A149586 n + A149578 n).toNat

end

end A149583.P6489882109204580055

/-!
# A149585: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 1, 1)}.

The programs for A149585, there is no canonical definition to state claims against.
-/

/-! ## A149585.P4589502144526739702

`A004525(A149589(n)+A149582(n))`
-/

namespace A149585.P4589502144526739702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149589 n + A149582 n).toNat

end

end A149585.P4589502144526739702

/-! ## A149585.P3449347360730875544

`A004526(A149589(n)+A149582(n))`
-/

namespace A149585.P3449347360730875544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149589 n + A149582 n).toNat

end

end A149585.P3449347360730875544

/-! ## A149585.P15214623477816810978

`A025480(A149589(n)+A149582(n))`
-/

namespace A149585.P15214623477816810978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A149589 n + A149582 n).toNat

end

end A149585.P15214623477816810978

/-! ## A149585.P14286389967172535393

`A026741(A149589(n)+A149582(n))`
-/

namespace A149585.P14286389967172535393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A149589 n + A149582 n).toNat

end

end A149585.P14286389967172535393

/-!
# A149586: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149586, there is no canonical definition to state claims against.
-/

/-! ## A149586.P15318639058947130030

`A004277(A149583(n))-A149578(n)`
-/

namespace A149586.P15318639058947130030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149583 n).toNat - A149578 n

end

end A149586.P15318639058947130030

/-! ## A149586.P3197248726741068728

`or(A008611(A124463(n)), A152271(n))`
-/

namespace A149586.P3197248726741068728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008611 (A124463 n).toNat) (A152271 n)

end

end A149586.P3197248726741068728

/-! ## A149586.P7208752826046509977

`or(A001300(n), A033270(A006026(n+1)))`
-/

namespace A149586.P7208752826046509977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001300 n) (A033270 (A006026 (n + 1)).toNat)

end

end A149586.P7208752826046509977

/-!
# A149587: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149587, there is no canonical definition to state claims against.
-/

/-! ## A149587.P17720662754883826621

`A008611(2*A150210(n))`
-/

namespace A149587.P17720662754883826621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A150210 n).toNat

end

end A149587.P17720662754883826621

/-! ## A149587.P8682143023953682758

`A008612(4*A150210(n))`
-/

namespace A149587.P8682143023953682758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (4 * A150210 n).toNat

end

end A149587.P8682143023953682758

/-! ## A149587.P6856336326676204518

`or(A211453(A279572(n)), A302171(n))`
-/

namespace A149587.P6856336326676204518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A211453 (A279572 n).toNat) (A302171 n)

end

end A149587.P6856336326676204518

/-!
# A149588: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149588, there is no canonical definition to state claims against.
-/

/-! ## A149588.P11562868353920833259

`or(A149467(n), A255270(A150828(n)))`
-/

namespace A149588.P11562868353920833259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149467 n) (A255270 (A150828 n).toNat)

end

end A149588.P11562868353920833259

/-! ## A149588.P490617176194220346

`or(A137687(A274373(n)), A154403(n))`
-/

namespace A149588.P490617176194220346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137687 (A274373 n).toNat) (A154403 n)

end

end A149588.P490617176194220346

/-! ## A149588.P18280714787383270429

`or(A137687(A274373(n)), A182891(n))`
-/

namespace A149588.P18280714787383270429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137687 (A274373 n).toNat) (A182891 n)

end

end A149588.P18280714787383270429

/-!
# A149589: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (0, 0, -1), (1, 1, 1)}.

The programs for A149589, there is no canonical definition to state claims against.
-/

/-! ## A149589.P18190539981352946304

`A004277(A149585(n))-A149582(n)`
-/

namespace A149589.P18190539981352946304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149585 n).toNat - A149582 n

end

end A149589.P18190539981352946304

/-! ## A149589.P2000585734208389752

`A008612(8*A149276(n))`
-/

namespace A149589.P2000585734208389752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (8 * A149276 n).toNat

end

end A149589.P2000585734208389752

/-!
# A149590: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149590, there is no canonical definition to state claims against.
-/

/-! ## A149590.P11773721517772063124

`A067434(abs(A083085(n)))`
-/

namespace A149590.P11773721517772063124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 |A083085 n|.toNat

end

end A149590.P11773721517772063124

/-! ## A149590.P15931988070954453079

`A057475(or(1, A163862(n)))`
-/

namespace A149590.P15931988070954453079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057475 (Int.lor 1 (A163862 n)).toNat

end

end A149590.P15931988070954453079

/-! ## A149590.P14399136996409582937

`A067434(lcm(2, A083085(n))/2)`
-/

namespace A149590.P14399136996409582937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (SequenceMachineLib.roundAway ((Int.lcm 2 (A083085 n) : ℚ) / 2)).toNat

end

end A149590.P14399136996409582937

/-!
# A149591: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 1, -1), (1, 1, 1)}.

The programs for A149591, there is no canonical definition to state claims against.
-/

/-! ## A149591.P8373961726415625316

`or(1, A276218(A219262(n)))`
-/

namespace A149591.P8373961726415625316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276218 (A219262 n).toNat)

end

end A149591.P8373961726415625316

/-! ## A149591.P15272645881225174711

`A063272(A083324(n)+A000384(n))`
-/

namespace A149591.P15272645881225174711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A083324 n + A000384 n).toNat

end

end A149591.P15272645881225174711

/-! ## A149591.P17269975316929943316

`A302171(n)+A001221(A218679(n))`
-/

namespace A149591.P17269975316929943316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302171 n + A001221 (A218679 n).toNat

end

end A149591.P17269975316929943316

/-!
# A149592: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149592, there is no canonical definition to state claims against.
-/

/-! ## A149592.P11710552890235526068

`A008611(∑[2*A149612(n)])`
-/

namespace A149592.P11710552890235526068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A149612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149592.P11710552890235526068

/-! ## A149592.P15989665983280600986

`A008611(∑[2*A149614(n)])`
-/

namespace A149592.P15989665983280600986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A149614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149592.P15989665983280600986

/-! ## A149592.P16255660666069931311

`A008611(∑[A149614(n)+A149612(n)])`
-/

namespace A149592.P16255660666069931311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149614 n + A149612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149592.P16255660666069931311

/-!
# A149593: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149593, there is no canonical definition to state claims against.
-/

/-! ## A149593.P12778076121397434145

`A091218(n+1)+∑[A186768(n)]`
-/

namespace A149593.P12778076121397434145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091218 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149593.P12778076121397434145

/-! ## A149593.P2690705867509845653

`or(A001791(n), A004135(A109786(n)))`
-/

namespace A149593.P2690705867509845653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001791 n) (A004135 (A109786 n).toNat)

end

end A149593.P2690705867509845653

/-! ## A149593.P967601540226930705

`A008611(∑[A149658(n)+A149626(n)])`
-/

namespace A149593.P967601540226930705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149658 n + A149626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149593.P967601540226930705

/-!
# A149594: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149594, there is no canonical definition to state claims against.
-/

/-! ## A149594.P17371276387128747314

`∏{p}[A149595(n)², #]`
-/

namespace A149594.P17371276387128747314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149595 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149594.P17371276387128747314

/-! ## A149594.P10281915631471827287

`A149595(A073788(n))`
-/

namespace A149594.P10281915631471827287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149595 (A073788 n).toNat

end

end A149594.P10281915631471827287

/-! ## A149594.P12284777270844727801

`A092525(A149595(n))`
-/

namespace A149594.P12284777270844727801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092525 (A149595 n).toNat

end

end A149594.P12284777270844727801

/-!
# A149596: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149596, there is no canonical definition to state claims against.
-/

/-! ## A149596.P5270608525572344674

`A008611(∑[A149641(n)+A149614(n)])`
-/

namespace A149596.P5270608525572344674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149641 n + A149614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149596.P5270608525572344674

/-!
# A149597: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149597, there is no canonical definition to state claims against.
-/

/-! ## A149597.P6682087050733723051

`or(A003056(A032109(n)), A045906(n))`
-/

namespace A149597.P6682087050733723051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A032109 n).toNat) (A045906 n)

end

end A149597.P6682087050733723051

/-! ## A149597.P18257162796155453492

`or(A000196(A276895(n)), A045906(n))`
-/

namespace A149597.P18257162796155453492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A276895 n).toNat) (A045906 n)

end

end A149597.P18257162796155453492

/-! ## A149597.P13580121982607731944

`A008611(∑[A149658(n)+A149652(n)])`
-/

namespace A149597.P13580121982607731944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149658 n + A149652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149597.P13580121982607731944

/-!
# A149598: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149598, there is no canonical definition to state claims against.
-/

/-! ## A149598.P8675354310325535262

`A247914(A149387(n))`
-/

namespace A149598.P8675354310325535262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A149387 n).toNat

end

end A149598.P8675354310325535262

/-! ## A149598.P10004612170532671892

`A191347(or(1, 2^n-1))+A149565(n)`
-/

namespace A149598.P10004612170532671892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191347 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat + A149565 n

end

end A149598.P10004612170532671892

/-!
# A149599: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 1, 1)}.

The programs for A149599, there is no canonical definition to state claims against.
-/

/-! ## A149599.P17936721818991108237

`A063195(A140322(n)+3)`
-/

namespace A149599.P17936721818991108237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A140322 n + 3).toNat

end

end A149599.P17936721818991108237

/-! ## A149599.P2869860513402778412

`or(1, A192419(A149592(n)))`
-/

namespace A149599.P2869860513402778412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A192419 (A149592 n).toNat)

end

end A149599.P2869860513402778412

/-! ## A149599.P14022018183801430098

`or(1, A060384(A334329(n+1)))`
-/

namespace A149599.P14022018183801430098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060384 (A334329 (n + 1)).toNat)

end

end A149599.P14022018183801430098

