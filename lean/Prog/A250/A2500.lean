import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A250000: Peaceable coexisting armies of queens: the maximum number m such that m white queens and m black queens can coexist on an n X n chessboard without attacking each other.

The programs for A250000, there is no canonical definition to state claims against.
-/

/-! ## A250000.P9576688160209199422

`floor(∑[(n+1)/log2(13)])`
-/

namespace A250000.P9576688160209199422
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.logb 2 (13 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A250000.P9576688160209199422

/-! ## A250000.P17748842366121157775

`round((n-tan(2))*n/7)`
-/

namespace A250000.P17748842366121157775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.tan (2 : ℝ)) * ((n : ℚ) / 7 : ℝ))

end

end A250000.P17748842366121157775

/-! ## A250000.P4637809385096652314

`round(cot(7*acot(n+1)²))`
-/

namespace A250000.P4637809385096652314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (7 * SequenceMachineLib.acot (n + 1 : ℝ) ^ 2))

end

end A250000.P4637809385096652314

/-! ## A250000.P3375608093053105144

`ceil(cot(10/∑[3/acot(n)]))`
-/

namespace A250000.P3375608093053105144
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 / SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (10 / (∑ j ∈ Finset.range (n + 1), f1 j))⌉

end

end A250000.P3375608093053105144

/-! ## A250000.P11504553095806355689

`round(floor(atan(n)+n)²/7)`
-/

namespace A250000.P11504553095806355689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌊Real.arctan (n : ℝ) + (n : ℝ)⌋ ^ 2 : ℚ) / 7)

end

end A250000.P11504553095806355689

/-!
# A250001: Number of arrangements of n circles in the affine plane.

The programs for A250001, there is no canonical definition to state claims against.
-/

/-! ## A250001.P15572524878834040911

`A288559(n)-A015910(A036720(n))`
-/

namespace A250001.P15572524878834040911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288559 n - A015910 (A036720 n).toNat

end

end A250001.P15572524878834040911

/-!
# A250002: Triangle read by rows: T(n,k) = number of inequivalent binary linear [n,k] codes minus C(n,k).

The programs for A250002, there is no canonical definition to state claims against.
-/

/-! ## A250002.P6901891827290108704

`A076831(n)-A007318(n)`
-/

namespace A250002.P6901891827290108704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076831 n - A007318 n

end

end A250002.P6901891827290108704

/-! ## A250002.P14475277179091162083

`A076831(n)-abs(A108086(n))`
-/

namespace A250002.P14475277179091162083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076831 n - |A108086 n|

end

end A250002.P14475277179091162083

/-! ## A250002.P16047088439304835637

`A076831(n)-abs(A117440(n))`
-/

namespace A250002.P16047088439304835637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076831 n - |A117440 n|

end

end A250002.P16047088439304835637

/-! ## A250002.P7169897692297921106

`A076831(n)-abs(A130595(n))`
-/

namespace A250002.P7169897692297921106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076831 n - |A130595 n|

end

end A250002.P7169897692297921106

/-! ## A250002.P2891063046519360313

`A076831(n)-(A014473(n)+1)`
-/

namespace A250002.P2891063046519360313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076831 n - (A014473 n + 1)

end

end A250002.P2891063046519360313

/-! ## A250002.P1260381541045742215

`A076831(n)-A058207(A131113(n))`
-/

namespace A250002.P1260381541045742215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076831 n - A058207 (A131113 n).toNat

end

end A250002.P1260381541045742215

/-! ## A250002.P6255126107221306691

`A076831(n)-A157638(n)/A022166(n)`
-/

namespace A250002.P6255126107221306691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076831 n : ℚ) - (A157638 n : ℚ) / (A022166 n : ℚ)

end

end A250002.P6255126107221306691

/-! ## A250002.P18416260844989377800

`A034356(A271439(n)+A010054(n))-A007318(n)`
-/

namespace A250002.P18416260844989377800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034356 (A271439 n + A010054 n).toNat - A007318 n

end

end A250002.P18416260844989377800

/-! ## A250002.P13481451091879097339

`A034356(gcd(A010816(n), A083920(n)))-A007318(n)`
-/

namespace A250002.P13481451091879097339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034356 (Int.gcd (A010816 n) (A083920 n)) - A007318 n

end

end A250002.P13481451091879097339

/-! ## A250002.P5123647439239736940

`A034356(A271439(n)+A010054(n))-sqrt(A008459(n))`
-/

namespace A250002.P5123647439239736940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034356 (A271439 n + A010054 n).toNat : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A250002.P5123647439239736940

/-!
# A250003: Number of inequivalent binary linear codes of length n minus 2^n.

The programs for A250003, there is no canonical definition to state claims against.
-/

/-! ## A250003.P14287286802972690919

`A076766(n)-A000079(n)`
-/

namespace A250003.P14287286802972690919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076766 n - A000079 n

end

end A250003.P14287286802972690919

/-! ## A250003.P7773398536907919993

`A076766(n)-Δ[A000225(n)]`
-/

namespace A250003.P7773398536907919993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076766 n - (f1 (n + 1) - f1 n)

end

end A250003.P7773398536907919993

/-! ## A250003.P246093622192525950

`A000225(n)+A076766(n)-A000225(n+1)`
-/

namespace A250003.P246093622192525950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A076766 n - A000225 (n + 1))

end

end A250003.P246093622192525950

/-! ## A250003.P10498572430672663213

`A034343(n)+a(n-1)-A011782(n)` with `a(0)=0`
-/

namespace A250003.P10498572430672663213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A034343 n + a (n - 1) - A011782 n

end

end A250003.P10498572430672663213

/-! ## A250003.P14086888733153246530

`Δ[A174743(n)]-(A034343(n+1)+A000079(n))`
-/

namespace A250003.P14086888733153246530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A034343 (n + 1) + A000079 n)

end

end A250003.P14086888733153246530

/-!
# A250005: a(n) = 1, unless forbidden by the "iterated cubefree rule", in which case a(n) = 2.

The programs for A250005, there is no canonical definition to state claims against.
-/

/-! ## A250005.P18323129909760163693

`A336664(A175525(3*n+1)%A175506(3*(n+1)))`
-/

namespace A250005.P18323129909760163693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336664 (Int.tmod (A175525 (3 * n + 1)) (A175506 (3 * (n + 1)))).toNat

end

end A250005.P18323129909760163693

/-! ## A250005.P18395577154904451859

`gcd(A048163(A051903(3*(n+1))), A379308(2*n+3))`
-/

namespace A250005.P18395577154904451859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048163 (A051903 (3 * (n + 1))).toNat) (A379308 (2 * n + 3))

end

end A250005.P18395577154904451859

/-! ## A250005.P2584564411105875795

`A071625(A008364(n+1)*A026741(3*(n+1)))`
-/

namespace A250005.P2584564411105875795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A008364 (n + 1) * A026741 (3 * (n + 1))).toNat

end

end A250005.P2584564411105875795

/-! ## A250005.P14115554845296695468

`A001221(xor(A330225(2*(n+1)), A330235(3*(n+1))))`
-/

namespace A250005.P14115554845296695468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A330225 (2 * (n + 1))) (A330235 (3 * (n + 1)))).toNat

end

end A250005.P14115554845296695468

/-! ## A250005.P13966861470316199710

`(2%A374706(3*(n+1)))!`
-/

namespace A250005.P13966861470316199710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod 2 (A374706 (3 * (n + 1)))).toNat

end

end A250005.P13966861470316199710

/-!
# A250006: Rank of terms of A250005 whose value is not constrained by the iterated cubefree rule.

The programs for A250006, there is no canonical definition to state claims against.
-/

/-! ## A250006.P9525380326495603914

`∑[A274821(xor(1, n*a(n-1)))]` with `a(0)=1`
-/

namespace A250006.P9525380326495603914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A274821 (Int.xor 1 ((n : ℤ) * f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250006.P9525380326495603914

/-!
# A250007: Run lengths in A100618.

The programs for A250007, there is no canonical definition to state claims against.
-/

/-! ## A250007.P17630552500930569107

`gcd(A000115(n), A111588(A029623(n)))`
-/

namespace A250007.P17630552500930569107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000115 n) (A111588 (A029623 n).toNat)

end

end A250007.P17630552500930569107

/-!
# A250008: Number of length n+5 0..2 arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250008, there is no canonical definition to state claims against.
-/

/-! ## A250008.P927438207783945715

`A250014(∑[n+2])`
-/

namespace A250008.P927438207783945715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250008.P927438207783945715

/-! ## A250008.P7275050972931401199

`lcm(2, A250014(record[A061579(n+1)]))`
-/

namespace A250008.P7275050972931401199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250014 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A250008.P7275050972931401199

/-! ## A250008.P5270649138921059240

`record[A250014(A000096(A106466(n)))]`
-/

namespace A250008.P5270649138921059240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A000096 (A106466 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250008.P5270649138921059240

/-! ## A250008.P15760406410355771089

`record[A250014(A000096(A116549(n)))]`
-/

namespace A250008.P15760406410355771089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A000096 (A116549 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250008.P15760406410355771089

/-! ## A250008.P12635541496010801406

`record[A250014(A000096(A137735(n)))]`
-/

namespace A250008.P12635541496010801406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A000096 (A137735 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250008.P12635541496010801406

/-!
# A250009: Number of length n+5 0..3 arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250009, there is no canonical definition to state claims against.
-/

/-! ## A250009.P4433232719045868008

`A250014(∑[n+3]+1)`
-/

namespace A250009.P4433232719045868008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250009.P4433232719045868008

/-! ## A250009.P4467568469805410089

`lcm(2, A250014(A034856(n+2)))`
-/

namespace A250009.P4467568469805410089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250014 (A034856 (n + 2)).toNat)

end

end A250009.P4467568469805410089

/-! ## A250009.P13100009361949876315

`A250014(A034856(n+2))%A250013(n+1)`
-/

namespace A250009.P13100009361949876315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250014 (A034856 (n + 2)).toNat) (A250013 (n + 1))

end

end A250009.P13100009361949876315

/-! ## A250009.P4729865648775481374

`A250014(A034856(n+2))+A187794(2*n+1)`
-/

namespace A250009.P4729865648775481374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A034856 (n + 2)).toNat + A187794 (2 * n + 1)

end

end A250009.P4729865648775481374

/-! ## A250009.P11339001356154945194

`A023428(A373850(n+2))*A250014(Δ[(n+1)*(n²+8*n+6)/6])`
-/

namespace A250009.P11339001356154945194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n ^ 2 + 8 * n + 6 : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023428 (A373850 (n + 2)).toNat * A250014 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A250009.P11339001356154945194

/-!
# A250010: Number of length n+5 0..4 arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250010, there is no canonical definition to state claims against.
-/

/-! ## A250010.P6702362112672000296

`A250014(A027379(n+2))`
-/

namespace A250010.P6702362112672000296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A027379 (n + 2)).toNat

end

end A250010.P6702362112672000296

/-! ## A250010.P1104051170295382172

`A250014(A055998(n+2))`
-/

namespace A250010.P1104051170295382172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A055998 (n + 2)).toNat

end

end A250010.P1104051170295382172

/-! ## A250010.P13044207133311196348

`A250014(A155212(n)+5)`
-/

namespace A250010.P13044207133311196348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A155212 n + 5).toNat

end

end A250010.P13044207133311196348

/-! ## A250010.P12569012940329750553

`A250014(Δ[A006503(n+1)])`
-/

namespace A250010.P12569012940329750553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (f1 (n + 1) - f1 n).toNat

end

end A250010.P12569012940329750553

/-! ## A250010.P8919966354991224923

`A250014(A052905(n+1)+2)`
-/

namespace A250010.P8919966354991224923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A052905 (n + 1) + 2).toNat

end

end A250010.P8919966354991224923

/-!
# A250011: Number of length n+5 0..5 arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250011, there is no canonical definition to state claims against.
-/

/-! ## A250011.P1092874330271501883

`A250014(∑[round(sqrt(n²+1))+5]+5)`
-/

namespace A250011.P1092874330271501883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A250011.P1092874330271501883

/-! ## A250011.P12146870562080796292

`A250014(A046691(n+3))+A079979(3*n+4)`
-/

namespace A250011.P12146870562080796292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A046691 (n + 3)).toNat + A079979 (3 * n + 4)

end

end A250011.P12146870562080796292

/-!
# A250012: Number of length n+5 0..6 arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250012, there is no canonical definition to state claims against.
-/

/-! ## A250012.P11039294877003429326

`A250014(eq[3, A219347(n)])`
-/

namespace A250012.P11039294877003429326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250012.P11039294877003429326

/-! ## A250012.P3351428494032281386

`A250014(eq[5, A193592(n)])`
-/

namespace A250012.P3351428494032281386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250012.P3351428494032281386

/-! ## A250012.P1797609130327824558

`A250014(eq[8, A185782(n+1)])`
-/

namespace A250012.P1797609130327824558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250012.P1797609130327824558

/-! ## A250012.P14877952969930257982

`A250014(eq[8, A243070(n+1)])`
-/

namespace A250012.P14877952969930257982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250012.P14877952969930257982

/-! ## A250012.P5997458567787437786

`A250014(Δ[Δ[A006504(n+1)]])`
-/

namespace A250012.P5997458567787437786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (f1 (n + 1) - f1 n).toNat

end

end A250012.P5997458567787437786

/-!
# A250013: Number of length n+5 0..7 arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250013, there is no canonical definition to state claims against.
-/

/-! ## A250013.P3298784273472205888

`A250014(A055999(n+4))`
-/

namespace A250013.P3298784273472205888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A055999 (n + 4)).toNat

end

end A250013.P3298784273472205888

/-! ## A250013.P2132720555863415042

`A250014(eq[4, A219347(n)])`
-/

namespace A250013.P2132720555863415042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250013.P2132720555863415042

/-! ## A250013.P5437099997078891036

`A250014(eq[6, A193592(n)])`
-/

namespace A250013.P5437099997078891036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250013.P5437099997078891036

/-! ## A250013.P11581144142283084026

`A250014(eq[10, A185782(n+1)])`
-/

namespace A250013.P11581144142283084026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250013.P11581144142283084026

/-! ## A250013.P13018983627518877602

`A250014(A005408(n)+A000217(n+5)+6)`
-/

namespace A250013.P13018983627518877602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A005408 n + (A000217 (n + 5) + 6)).toNat

end

end A250013.P13018983627518877602

/-!
# A250015: Number of length 1+5 0..n arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250015, the canonical program `A250015.P9062117842649995520` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250015 has offset 1).

The definition of A250015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250015.P9062117842649995520

`(n+1)*(n+2)*((n+1)²+1)*((n+1)²+2*(n+1)+2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A250015

/-- `(n+1)*(n+2)*((n+1)²+1)*((n+1)²+2*(n+1)+2)` -/
def P9062117842649995520.Spec : Prop :=
  ∀ n, (P9062117842649995520.a n : ℤ) = A250015 (n + 1)

theorem P9062117842649995520.correct : P9062117842649995520.Spec := by
  intro n
  simp only [A250015, Nat.add_sub_cancel]

end A250015

/-! ## A250015.P4887918211655059574

`∑[∑[∑[20*A008530(n)]]]`
-/

namespace A250015.P4887918211655059574
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A008530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250015.P4887918211655059574

namespace A250015

/-- `∑[∑[∑[20*A008530(n)]]]` -/
def P4887918211655059574.Spec : Prop :=
  ∀ n, P4887918211655059574.a n = A250015 (n + 1)

end A250015

/-! ## A250015.P14139100167735855774

`∑[∑[15*A008514(n)+5]]`
-/

namespace A250015.P14139100167735855774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A008514 n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250015.P14139100167735855774

namespace A250015

/-- `∑[∑[15*A008514(n)+5]]` -/
def P14139100167735855774.Spec : Prop :=
  ∀ n, P14139100167735855774.a n = A250015 (n + 1)

end A250015

/-! ## A250015.P17686198518052654824

`A063488(n+2)²-A005448(n+2)²`
-/

namespace A250015.P17686198518052654824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063488 (n + 2) ^ 2 - A005448 (n + 2) ^ 2

end

end A250015.P17686198518052654824

namespace A250015

/-- `A063488(n+2)²-A005448(n+2)²` -/
def P17686198518052654824.Spec : Prop :=
  ∀ n, P17686198518052654824.a n = A250015 (n + 1)

end A250015

/-! ## A250015.P158729286128007574

`A069779(n+1)-A069779(n+1)/A069778(n+1)`
-/

namespace A250015.P158729286128007574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069779 (n + 1) : ℚ) - (A069779 (n + 1) : ℚ) / (A069778 (n + 1) : ℚ)

end

end A250015.P158729286128007574

namespace A250015

/-- `A069779(n+1)-A069779(n+1)/A069778(n+1)` -/
def P158729286128007574.Spec : Prop :=
  ∀ n, P158729286128007574.a n = (A250015 (n + 1) : ℚ)

end A250015

/-!
# A250016: Number of length 2+5 0..n arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250016, there is no canonical definition to state claims against.
-/

/-! ## A250016.P13846951743428148028

`A250014(∑[n+1]+2)`
-/

namespace A250016.P13846951743428148028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250016.P13846951743428148028

/-! ## A250016.P15198897128396316111

`record[root(A250014(n+1), A237448(n+1))]`
-/

namespace A250016.P15198897128396316111
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250014 (n + 1) : ℝ) ^ (1 / (A237448 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250016.P15198897128396316111

/-! ## A250016.P9271177748322257458

`record[A250014(A133263(((n+1)/2^val(n+1, 2)+1)/2))]`
-/

namespace A250016.P9271177748322257458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A133263 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250016.P9271177748322257458

/-! ## A250016.P12425120533576824151

`A250014(A252460(2*(n+2)))*A348039(n+1)`
-/

namespace A250016.P12425120533576824151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A252460 (2 * (n + 2))).toNat * A348039 (n + 1)

end

end A250016.P12425120533576824151

/-! ## A250016.P8213354212719030743

`A007318(A000096(n))*A250014(A252460(2*(n+2)))`
-/

namespace A250016.P8213354212719030743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A250014 (A252460 (2 * (n + 2))).toNat

end

end A250016.P8213354212719030743

/-!
# A250017: Number of length 3+5 0..n arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250017, there is no canonical definition to state claims against.
-/

/-! ## A250017.P18345296300914746921

`A250014(∑[n+2]+4)`
-/

namespace A250017.P18345296300914746921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250017.P18345296300914746921

/-! ## A250017.P5045261205209696215

`lcm(2, A250014(A167614(n+1)))`
-/

namespace A250017.P5045261205209696215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250014 (A167614 (n + 1)).toNat)

end

end A250017.P5045261205209696215

/-! ## A250017.P15919451275278971619

`A250014(A167614(n+1))*A304042(n)`
-/

namespace A250017.P15919451275278971619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A167614 (n + 1)).toNat * A304042 n

end

end A250017.P15919451275278971619

/-! ## A250017.P7711780904745377284

`A250014(A167614(n+1))%A016890(n)`
-/

namespace A250017.P7711780904745377284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250014 (A167614 (n + 1)).toNat) (A016890 n)

end

end A250017.P7711780904745377284

/-! ## A250017.P5275392332189128112

`A250014(A167614(n+1))*A330098(n+1)`
-/

namespace A250017.P5275392332189128112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A167614 (n + 1)).toNat * A330098 (n + 1)

end

end A250017.P5275392332189128112

/-!
# A250018: Number of length 4+5 0..n arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250018, there is no canonical definition to state claims against.
-/

/-! ## A250018.P9194343926347036331

`A250014(∑[n+3]+7)`
-/

namespace A250018.P9194343926347036331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250018.P9194343926347036331

/-! ## A250018.P5128531945019041761

`lcm(2, A250014(Δ[A006503(n)]+7))`
-/

namespace A250018.P5128531945019041761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250014 (f1 (n + 1) - f1 n + 7).toNat)

end

end A250018.P5128531945019041761

/-! ## A250018.P2677539967296679691

`lcm(4, A250014(A167614(n+2)+1))`
-/

namespace A250018.P2677539967296679691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A250014 (A167614 (n + 2) + 1).toNat)

end

end A250018.P2677539967296679691

/-! ## A250018.P17416909148544787147

`A250014(A167614(n+2)+1)+A000007(n+1)`
-/

namespace A250018.P17416909148544787147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A167614 (n + 2) + 1).toNat + A000007 (n + 1)

end

end A250018.P17416909148544787147

/-! ## A250018.P15784264179988355802

`A250014(A167499(n+2)-1)+A000007(n+1)`
-/

namespace A250018.P15784264179988355802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A167499 (n + 2) - 1).toNat + A000007 (n + 1)

end

end A250018.P15784264179988355802

/-!
# A250019: Number of length 5+5 0..n arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250019, there is no canonical definition to state claims against.
-/

/-! ## A250019.P15354002861952464161

`A250014(C(n+5, 2)+5)`
-/

namespace A250019.P15354002861952464161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (Nat.choose (n + 5) 2 + 5)

end

end A250019.P15354002861952464161

/-! ## A250019.P13996541315660852210

`A250014(A000124(n+4)+4)`
-/

namespace A250019.P13996541315660852210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A000124 (n + 4) + 4).toNat

end

end A250019.P13996541315660852210

/-! ## A250019.P2160882292281975369

`A250014(A000217(n+4)+5)`
-/

namespace A250019.P2160882292281975369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A000217 (n + 4) + 5).toNat

end

end A250019.P2160882292281975369

/-! ## A250019.P15128098065105982225

`A250014((n+4)²-A052905(n))`
-/

namespace A250019.P15128098065105982225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (((n + 4) ^ 2 : ℤ) - A052905 n).toNat

end

end A250019.P15128098065105982225

/-! ## A250019.P5650658197252367002

`A250014(A000096(n+4)-(n-1))`
-/

namespace A250019.P5650658197252367002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A250019.P5650658197252367002

/-!
# A250020: Number of length 6+5 0..n arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250020, there is no canonical definition to state claims against.
-/

/-! ## A250020.P9080764187025372367

`A250014(A133263(n+5)+4)`
-/

namespace A250020.P9080764187025372367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A133263 (n + 5) + 4).toNat

end

end A250020.P9080764187025372367

/-! ## A250020.P11168346341394122846

`A250014(A000217(n+5)+6)`
-/

namespace A250020.P11168346341394122846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A000217 (n + 5) + 6).toNat

end

end A250020.P11168346341394122846

/-! ## A250020.P14550230956032502654

`A250014(A052905(n+2)+11)`
-/

namespace A250020.P14550230956032502654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A052905 (n + 2) + 11).toNat

end

end A250020.P14550230956032502654

/-! ## A250020.P15512045008309817810

`A250014(A000124(n+6)-(n+1))`
-/

namespace A250020.P15512045008309817810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A250020.P15512045008309817810

/-! ## A250020.P11717972833672687612

`A250014(A167614(n+2)+A005843(n+6))`
-/

namespace A250020.P11717972833672687612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A167614 (n + 2) + A005843 (n + 6)).toNat

end

end A250020.P11717972833672687612

/-!
# A250021: Number of length 7+5 0..n arrays with no six consecutive terms having the maximum of any three terms equal to the minimum of the remaining three terms.

The programs for A250021, there is no canonical definition to state claims against.
-/

/-! ## A250021.P2543325558621987542

`A250014(eq[11, A066657(n)])`
-/

namespace A250021.P2543325558621987542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250021.P2543325558621987542

/-! ## A250021.P2050635434216510941

`A250014(A167499(n+5)+2)`
-/

namespace A250021.P2050635434216510941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A167499 (n + 5) + 2).toNat

end

end A250021.P2050635434216510941

/-! ## A250021.P2304518720027345629

`A250014(A000217(n+6)+7)`
-/

namespace A250021.P2304518720027345629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A000217 (n + 6) + 7).toNat

end

end A250021.P2304518720027345629

/-! ## A250021.P13773647323989674139

`A250014(eq[8, A131818(n+1)])`
-/

namespace A250021.P13773647323989674139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250021.P13773647323989674139

/-! ## A250021.P190161298835902021

`A250014(A000124(n+7)-(n+1))`
-/

namespace A250021.P190161298835902021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250014 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A250021.P190161298835902021

/-!
# A250024: a(n) = 40*n - 21.

The programs for A250024, the canonical program `A250024.P14787160451531393700` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250024 has offset 1).

The definition of A250024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `40*(n+1)-21` (program `A250024.P14787160451531393700`, by `A250024.P14787160451531393700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A250024.P14787160451531393700

`40*(n+1)-21`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A250024

/-- `40*(n+1)-21` -/
def P14787160451531393700.Spec : Prop :=
  ∀ n, P14787160451531393700.a n = A250024 (n + 1)

theorem P14787160451531393700.correct : P14787160451531393700.Spec := by
  intro n
  simp only [A250024, Nat.add_sub_cancel]

end A250024

/-!
# A250025: Lesser of twin prime pairs of the form (40n - 21, 40n - 19).

The programs for A250025, the canonical program `A250025.P7718321545328011715` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250025 has offset 1).

The definition of A250025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250025.P7718321545328011715

`∩[A060229(n+1), A142190(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A250025

/-- `∩[A060229(n+1), A142190(n+1)]` -/
def P7718321545328011715.Spec : Prop :=
  ∀ n, (P7718321545328011715.a n : ℤ) = A250025 (n + 1)

theorem P7718321545328011715.correct : P7718321545328011715.Spec := by
  intro n
  simp only [A250025, Nat.add_sub_cancel]

end A250025

/-! ## A250025.P6624574395872496528

`∩[A071698(n+1), A142190(n+1)]`
-/

namespace A250025.P6624574395872496528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P6624574395872496528

namespace A250025

/-- `∩[A071698(n+1), A142190(n+1)]` -/
def P6624574395872496528.Spec : Prop :=
  ∀ n, (P6624574395872496528.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P3726760390176251731

`∩[A142190(n+1), A269840(n+1)]`
-/

namespace A250025.P3726760390176251731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P3726760390176251731

namespace A250025

/-- `∩[A142190(n+1), A269840(n+1)]` -/
def P3726760390176251731.Spec : Prop :=
  ∀ n, (P3726760390176251731.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P7344320131484821052

`∩[A142190(n+1), A270225(n+1)]`
-/

namespace A250025.P7344320131484821052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P7344320131484821052

namespace A250025

/-- `∩[A142190(n+1), A270225(n+1)]` -/
def P7344320131484821052.Spec : Prop :=
  ∀ n, (P7344320131484821052.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P6772612219753414516

`∩[A060229(n+1), A139859(n+1)]`
-/

namespace A250025.P6772612219753414516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P6772612219753414516

namespace A250025

/-- `∩[A060229(n+1), A139859(n+1)]` -/
def P6772612219753414516.Spec : Prop :=
  ∀ n, (P6772612219753414516.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P2155748483045727280

`∩[A142799(n+1), A269840(n+1)]`
-/

namespace A250025.P2155748483045727280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P2155748483045727280

namespace A250025

/-- `∩[A142799(n+1), A269840(n+1)]` -/
def P2155748483045727280.Spec : Prop :=
  ∀ n, (P2155748483045727280.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P6390540454336807892

`∩[A142799(n+1), A270225(n+1)]`
-/

namespace A250025.P6390540454336807892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P6390540454336807892

namespace A250025

/-- `∩[A142799(n+1), A270225(n+1)]` -/
def P6390540454336807892.Spec : Prop :=
  ∀ n, (P6390540454336807892.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P4985815721911544131

`∩[A139859(n+1), A181606(n+1)]`
-/

namespace A250025.P4985815721911544131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P4985815721911544131

namespace A250025

/-- `∩[A139859(n+1), A181606(n+1)]` -/
def P4985815721911544131.Spec : Prop :=
  ∀ n, (P4985815721911544131.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P12305869407629767504

`∩[A047078(n+1), A142190(n+1)]`
-/

namespace A250025.P12305869407629767504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P12305869407629767504

namespace A250025

/-- `∩[A047078(n+1), A142190(n+1)]` -/
def P12305869407629767504.Spec : Prop :=
  ∀ n, (P12305869407629767504.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P6111050079010259632

`∩[A061368(n+1), A142190(n+1)]`
-/

namespace A250025.P6111050079010259632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P6111050079010259632

namespace A250025

/-- `∩[A061368(n+1), A142190(n+1)]` -/
def P6111050079010259632.Spec : Prop :=
  ∀ n, (P6111050079010259632.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P13186542810824737804

`∩[A142190(n+1), A210360(n+1)]`
-/

namespace A250025.P13186542810824737804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P13186542810824737804

namespace A250025

/-- `∩[A142190(n+1), A210360(n+1)]` -/
def P13186542810824737804.Spec : Prop :=
  ∀ n, (P13186542810824737804.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P11724803215773827875

`∩[A126193(n+1), A142190(n+1)]`
-/

namespace A250025.P11724803215773827875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P11724803215773827875

namespace A250025

/-- `∩[A126193(n+1), A142190(n+1)]` -/
def P11724803215773827875.Spec : Prop :=
  ∀ n, (P11724803215773827875.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P6555147374554907347

`∩[A142190(n+1), A087693(n)]`
-/

namespace A250025.P6555147374554907347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P6555147374554907347

namespace A250025

/-- `∩[A142190(n+1), A087693(n)]` -/
def P6555147374554907347.Spec : Prop :=
  ∀ n, (P6555147374554907347.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P5623593518602111690

`∩[A001359(n+1), A142190(n+1)]`
-/

namespace A250025.P5623593518602111690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P5623593518602111690

namespace A250025

/-- `∩[A001359(n+1), A142190(n+1)]` -/
def P5623593518602111690.Spec : Prop :=
  ∀ n, (P5623593518602111690.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P6292085202169983547

`∩[A111166(n+1), A142190(n+1)]`
-/

namespace A250025.P6292085202169983547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P6292085202169983547

namespace A250025

/-- `∩[A111166(n+1), A142190(n+1)]` -/
def P6292085202169983547.Spec : Prop :=
  ∀ n, (P6292085202169983547.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P14085682058192870515

`∩[A124588(n+1), A142190(n+1)]`
-/

namespace A250025.P14085682058192870515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P14085682058192870515

namespace A250025

/-- `∩[A124588(n+1), A142190(n+1)]` -/
def P14085682058192870515.Spec : Prop :=
  ∀ n, (P14085682058192870515.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P858400602608094081

`∩[A142190(n+1), A181747(n+1)]`
-/

namespace A250025.P858400602608094081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P858400602608094081

namespace A250025

/-- `∩[A142190(n+1), A181747(n+1)]` -/
def P858400602608094081.Spec : Prop :=
  ∀ n, (P858400602608094081.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P11099362394809139412

`∩[A006512(n+1)-2, A142190(n+1)]`
-/

namespace A250025.P11099362394809139412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P11099362394809139412

namespace A250025

/-- `∩[A006512(n+1)-2, A142190(n+1)]` -/
def P11099362394809139412.Spec : Prop :=
  ∀ n, (P11099362394809139412.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P4460709060877645210

`∩[A067829(n+1)-2, A142190(n+1)]`
-/

namespace A250025.P4460709060877645210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P4460709060877645210

namespace A250025

/-- `∩[A067829(n+1)-2, A142190(n+1)]` -/
def P4460709060877645210.Spec : Prop :=
  ∀ n, (P4460709060877645210.a n : ℤ) = A250025 (n + 1)

end A250025

/-! ## A250025.P4803121028590397436

`∩[A142190(n+1), A172057(n+1)-2]`
-/

namespace A250025.P4803121028590397436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P4803121028590397436

namespace A250025

/-- `∩[A142190(n+1), A172057(n+1)-2]` -/
def P4803121028590397436.Spec : Prop :=
  ∀ n, (P4803121028590397436.a n : ℤ) = A250025 (n + 1)

end A250025

/-!
# A250027: Primes p such that f(p) and f(f(p)) are primes, where f(x) = x^2+3*x+1.

The programs for A250027, there is no canonical definition to state claims against.
-/

/-! ## A250027.P11248648219036552783

`p?[∑[dr(A274688(2*(n+1)))]]`
-/

namespace A250027.P11248648219036552783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A274688 (2 * (n + 1)))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A250027.P11248648219036552783

/-!
# A250028: a(n) is the number of positive integers k <= n such that lpf(k^2 + 1) = lpf(n^2 + 1), where lpf() is the least prime factor function.

The programs for A250028, there is no canonical definition to state claims against.
-/

/-! ## A250028.P4727702975036361469

`(A249122(n+1)+1)%A061403(n)`
-/

namespace A250028.P4727702975036361469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249122 (n + 1) + 1) (A061403 n)

end

end A250028.P4727702975036361469

/-! ## A250028.P9919854008764464043

`A249122(n+1)%A036886(n+1)+1`
-/

namespace A250028.P9919854008764464043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249122 (n + 1)) (A036886 (n + 1)) + 1

end

end A250028.P9919854008764464043

/-! ## A250028.P16739116834724867311

`A015161(3*n+4)+A249122(n+1)+1`
-/

namespace A250028.P16739116834724867311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (3 * n + 4) + (A249122 (n + 1) + 1)

end

end A250028.P16739116834724867311

/-! ## A250028.P12231203010715185453

`A249122(n+1)+A054977(A000041(n))`
-/

namespace A250028.P12231203010715185453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (n + 1) + A054977 (A000041 n).toNat

end

end A250028.P12231203010715185453

/-! ## A250028.P17514104642373630028

`A249122(n+1)+A010051(A002645(n+1))`
-/

namespace A250028.P17514104642373630028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (n + 1) + A010051 (A002645 (n + 1)).toNat

end

end A250028.P17514104642373630028

/-!
# A250029: Maximum number of binary strings with symmetrically partitioned n 1's and n 0's, counted up to isomorphism.

The programs for A250029, there is no canonical definition to state claims against.
-/

/-! ## A250029.P3146801358796260909

`A102462(n)²`
-/

namespace A250029.P3146801358796260909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102462 n ^ 2

end

end A250029.P3146801358796260909

/-! ## A250029.P15295404627154907663

`A102462(round(acot(n)+n))^2`
-/

namespace A250029.P15295404627154907663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat ^ 2

end

end A250029.P15295404627154907663

/-! ## A250029.P8678997439526491031

`A102462(A028310(n))^2`
-/

namespace A250029.P8678997439526491031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102462 (A028310 n).toNat ^ 2

end

end A250029.P8678997439526491031

/-! ## A250029.P4710852021003647769

`A102462(A254667(n))^2`
-/

namespace A250029.P4710852021003647769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102462 (A254667 n).toNat ^ 2

end

end A250029.P4710852021003647769

/-! ## A250029.P5803255150334027083

`A102462(n)^A046698(n)!`
-/

namespace A250029.P5803255150334027083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102462 n ^ Nat.factorial (A046698 n).toNat

end

end A250029.P5803255150334027083

/-!
# A250030: a(n) is the number of iterations of A008474 needed to reach 5, starting at n, where A008474(Product p_i^e_i) = Sum(p_i+e_i).

The programs for A250030, there is no canonical definition to state claims against.
-/

/-! ## A250030.P7786950150505326638

`A109496(n+5)-1`
-/

namespace A250030.P7786950150505326638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109496 (n + 5) - 1

end

end A250030.P7786950150505326638

/-! ## A250030.P5812528489121476154

`A198277(n)%A109496(n+5)`
-/

namespace A250030.P5812528489121476154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A109496 (n + 5))

end

end A250030.P5812528489121476154

/-! ## A250030.P12911195200617780110

`A260196(n+2)+A109496(n+5)`
-/

namespace A250030.P12911195200617780110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A109496 (n + 5)

end

end A250030.P12911195200617780110

/-! ## A250030.P11988015084321791229

`A030494(n+1)%A109496(n+5)`
-/

namespace A250030.P11988015084321791229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A109496 (n + 5))

end

end A250030.P11988015084321791229

/-! ## A250030.P809915902856445543

`A083685(n+1)%A109496(n+5)`
-/

namespace A250030.P809915902856445543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A109496 (n + 5))

end

end A250030.P809915902856445543

/-! ## A250030.P7733961765796417121

`A166931(n+1)%A109496(n+5)`
-/

namespace A250030.P7733961765796417121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A109496 (n + 5))

end

end A250030.P7733961765796417121

/-! ## A250030.P7498501674180200191

`A127228(n+4)%A109496(n+5)`
-/

namespace A250030.P7498501674180200191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A109496 (n + 5))

end

end A250030.P7498501674180200191

/-! ## A250030.P11047213974284108961

`A127229(n+5)%A109496(n+5)`
-/

namespace A250030.P11047213974284108961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A109496 (n + 5))

end

end A250030.P11047213974284108961

/-! ## A250030.P9372947503024180110

`∑[A002024(n+1)!]%A109496(n+5)`
-/

namespace A250030.P9372947503024180110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A109496 (n + 5))

end

end A250030.P9372947503024180110

/-! ## A250030.P3001879982930748316

`A004918(A109496(n+5)^A178334(n))`
-/

namespace A250030.P3001879982930748316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (SequenceMachineLib.roundAway ((A109496 (n + 5) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A250030.P3001879982930748316

/-! ## A250030.P15386984512488793877

`A023805(A109496(n+5)^A178334(n))`
-/

namespace A250030.P15386984512488793877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023805 (SequenceMachineLib.roundAway ((A109496 (n + 5) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A250030.P15386984512488793877

/-! ## A250030.P5527152736714726696

`A343761(p?[A025581(n)])+A109496(n+5)`
-/

namespace A250030.P5527152736714726696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A109496 (n + 5)

end

end A250030.P5527152736714726696

/-! ## A250030.P8213733578915600186

`A110315(A014963(2*(n+1)))+A109496(n+5)`
-/

namespace A250030.P8213733578915600186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (A014963 (2 * (n + 1))).toNat + A109496 (n + 5)

end

end A250030.P8213733578915600186

/-! ## A250030.P1756252548760849641

`A351771(A020639(2*(n+1)))+A109496(n+5)`
-/

namespace A250030.P1756252548760849641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351771 (A020639 (2 * (n + 1))).toNat + A109496 (n + 5)

end

end A250030.P1756252548760849641

/-! ## A250030.P8068461186000080544

`A167374(A014963(6*(n+1)))+A109496(n+5)`
-/

namespace A250030.P8068461186000080544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (A014963 (6 * (n + 1))).toNat + A109496 (n + 5)

end

end A250030.P8068461186000080544

/-! ## A250030.P7256243143906303580

`A271980(A014963(6*(n+1))*A109496(n+5))`
-/

namespace A250030.P7256243143906303580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271980 (A014963 (6 * (n + 1)) * A109496 (n + 5)).toNat

end

end A250030.P7256243143906303580

/-! ## A250030.P11060601588812259650

`A152163(A014963(12*n+6))+A109496(n+5)`
-/

namespace A250030.P11060601588812259650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (A014963 (12 * n + 6)).toNat + A109496 (n + 5)

end

end A250030.P11060601588812259650

/-!
# A250031: a(n) is the numerator of the density of natural numbers m such that gcd(m,floor(m/n))=1.

The programs for A250031, there is no canonical definition to state claims against.
-/

/-! ## A250031.P4368193604395344370

`A250033(n+1)-A250032(n+1)`
-/

namespace A250031.P4368193604395344370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250033 (n + 1) - A250032 (n + 1)

end

end A250031.P4368193604395344370

/-!
# A250032: a(n) is the numerator of the density of natural numbers m such that gcd(m,floor(m/n))>1.

The programs for A250032, there is no canonical definition to state claims against.
-/

/-! ## A250032.P3735422468706694644

`A250033(n+1)-A250031(n+1)`
-/

namespace A250032.P3735422468706694644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250033 (n + 1) - A250031 (n + 1)

end

end A250032.P3735422468706694644

/-!
# A250033: a(n) gives the denominators for A250031(n) as well as for A250032(n).

The programs for A250033, there is no canonical definition to state claims against.
-/

/-! ## A250033.P11926555557779365099

`A250031(n+1)+A250032(n+1)`
-/

namespace A250033.P11926555557779365099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250031 (n + 1) + A250032 (n + 1)

end

end A250033.P11926555557779365099

/-!
# A250034: Numerators a(n) of the rational-valued function s(n) defined below.

The programs for A250034, there is no canonical definition to state claims against.
-/

/-! ## A250034.P5699196133812807586

`(n+2)*A072155(n+1)-A071708(n+1)`
-/

namespace A250034.P5699196133812807586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A072155 (n + 1) - A071708 (n + 1)

end

end A250034.P5699196133812807586

/-! ## A250034.P9451857871476829070

`A071708(n+1)/A250031(n+2)*A250032(n+2)`
-/

namespace A250034.P9451857871476829070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071708 (n + 1) : ℚ) / (A250031 (n + 2) : ℚ) * (A250032 (n + 2) : ℚ)

end

end A250034.P9451857871476829070

/-! ## A250034.P13192012851887314223

`A060791(A174965(n+1)*A250032(n+2))`
-/

namespace A250034.P13192012851887314223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A174965 (n + 1) * A250032 (n + 2)).toNat

end

end A250034.P13192012851887314223

/-! ## A250034.P11741274423672119007

`A060791(lcm(A174965(n+1), A250032(n+2)))`
-/

namespace A250034.P11741274423672119007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (Int.lcm (A174965 (n + 1)) (A250032 (n + 2)))

end

end A250034.P11741274423672119007

/-! ## A250034.P10508474696193119431

`A174965(A061017(n*a(n-1)+1))*A250032(n+2)` with `a(0)=1`
-/

namespace A250034.P10508474696193119431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A174965 (A061017 ((n : ℤ) * a (n - 1) + 1).toNat).toNat * A250032 (n + 2)

end

end A250034.P10508474696193119431

/-!
# A250035: Number of left-right-balanced permutations of {1, 2, ..., n}.

The programs for A250035, there is no canonical definition to state claims against.
-/

/-! ## A250035.P8981734670191622353

`A118264(n^A102365(n))`
-/

namespace A250035.P8981734670191622353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A102365 n : ℤ))).toNat

end

end A250035.P8981734670191622353

/-! ## A250035.P18031614544664740925

`A118264(n^A106800(n))`
-/

namespace A250035.P18031614544664740925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A106800 n : ℤ))).toNat

end

end A250035.P18031614544664740925

/-! ## A250035.P5521734653245067282

`A118264(n^A165253(n))`
-/

namespace A250035.P5521734653245067282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A165253 n : ℤ))).toNat

end

end A250035.P5521734653245067282

/-!
# A250037: Numbers n such that m = floor(n/4) is not coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250037, there is no canonical definition to state claims against.
-/

/-! ## A250037.P759629063528848670

`eq[A010893(n), A139354(A048647(n))]`
-/

namespace A250037.P759629063528848670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 (n + 13)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A048647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250037.P759629063528848670

/-!
# A250039: Numbers n such that m = floor(n/16) is not coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250039, the canonical program `A250039.P11073604648966551140` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250039 has offset 1).

The definition of A250039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250039.P10988590633668109796

`A032741(A158754(n+1))*A248502(n+1)`
-/

namespace A250039.P10988590633668109796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A158754 (n + 1)).toNat * A248502 (n + 1)

end

end A250039.P10988590633668109796

namespace A250039

/-- `A032741(A158754(n+1))*A248502(n+1)` -/
def P10988590633668109796.Spec : Prop :=
  ∀ n, P10988590633668109796.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P11073604648966551140

`A248502(n+1)*A341644(A156112(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A250039

/-- `A248502(n+1)*A341644(A156112(n+1))` -/
def P11073604648966551140.Spec : Prop :=
  ∀ n, P11073604648966551140.a n = A250039 (n + 1)

theorem P11073604648966551140.correct : P11073604648966551140.Spec := by
  intro n
  simp only [A250039, Nat.add_sub_cancel]

end A250039

/-! ## A250039.P17736016041934024631

`A248502(n+1)%A241790(A154114(n+1))`
-/

namespace A250039.P17736016041934024631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248502 (n + 1)) (A241790 (A154114 (n + 1)).toNat)

end

end A250039.P17736016041934024631

namespace A250039

/-- `A248502(n+1)%A241790(A154114(n+1))` -/
def P17736016041934024631.Spec : Prop :=
  ∀ n, P17736016041934024631.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P7155569907830790615

`A346698(A249374(2*(n+2)))+A248502(n+1)`
-/

namespace A250039.P7155569907830790615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A249374 (2 * (n + 2))).toNat + A248502 (n + 1)

end

end A250039.P7155569907830790615

namespace A250039

/-- `A346698(A249374(2*(n+2)))+A248502(n+1)` -/
def P7155569907830790615.Spec : Prop :=
  ∀ n, P7155569907830790615.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P16614986248222583186

`A248502(n+1)%A038597(A246867(n))`
-/

namespace A250039.P16614986248222583186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248502 (n + 1)) (A038597 (A246867 n).toNat)

end

end A250039.P16614986248222583186

namespace A250039

/-- `A248502(n+1)%A038597(A246867(n))` -/
def P16614986248222583186.Spec : Prop :=
  ∀ n, P16614986248222583186.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P11249511339982337279

`A248502(n+1)+A098002(A181938(2*n+3))`
-/

namespace A250039.P11249511339982337279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 1) + A098002 (A181938 (2 * n + 3)).toNat

end

end A250039.P11249511339982337279

namespace A250039

/-- `A248502(n+1)+A098002(A181938(2*n+3))` -/
def P11249511339982337279.Spec : Prop :=
  ∀ n, P11249511339982337279.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P12483315235633770174

`A248502(n+1)+A010051(A188915(3*n+1))`
-/

namespace A250039.P12483315235633770174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 1) + A010051 (A188915 (3 * n + 1)).toNat

end

end A250039.P12483315235633770174

namespace A250039

/-- `A248502(n+1)+A010051(A188915(3*n+1))` -/
def P12483315235633770174.Spec : Prop :=
  ∀ n, P12483315235633770174.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P17456437438411530701

`A059841(A007367(3*n+5))*A248502(n+1)`
-/

namespace A250039.P17456437438411530701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A007367 (3 * n + 5)).toNat * A248502 (n + 1)

end

end A250039.P17456437438411530701

namespace A250039

/-- `A059841(A007367(3*n+5))*A248502(n+1)` -/
def P17456437438411530701.Spec : Prop :=
  ∀ n, P17456437438411530701.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P14662134999469210780

`A248502(n+1)+A211991(A153120(2*n+1))`
-/

namespace A250039.P14662134999469210780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 1) + A211991 (A153120 (2 * n + 1)).toNat

end

end A250039.P14662134999469210780

namespace A250039

/-- `A248502(n+1)+A211991(A153120(2*n+1))` -/
def P14662134999469210780.Spec : Prop :=
  ∀ n, P14662134999469210780.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P969786770591958476

`A051953(A107132(n+1))*A248502(n+1)`
-/

namespace A250039.P969786770591958476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A107132 (n + 1)).toNat * A248502 (n + 1)

end

end A250039.P969786770591958476

namespace A250039

/-- `A051953(A107132(n+1))*A248502(n+1)` -/
def P969786770591958476.Spec : Prop :=
  ∀ n, P969786770591958476.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P7060903252071764870

`A001222(A248483(n+1))*A248502(n+1)`
-/

namespace A250039.P7060903252071764870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A248483 (n + 1)).toNat * A248502 (n + 1)

end

end A250039.P7060903252071764870

namespace A250039

/-- `A001222(A248483(n+1))*A248502(n+1)` -/
def P7060903252071764870.Spec : Prop :=
  ∀ n, P7060903252071764870.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P14065376254801521345

`A248502(n+1)+A098852(A119999(n))`
-/

namespace A250039.P14065376254801521345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 1) + A098852 (A119999 n).toNat

end

end A250039.P14065376254801521345

namespace A250039

/-- `A248502(n+1)+A098852(A119999(n))` -/
def P14065376254801521345.Spec : Prop :=
  ∀ n, P14065376254801521345.a n = A250039 (n + 1)

end A250039

/-! ## A250039.P6123412360853807737

`record[A248502(A248514(n+1))]`
-/

namespace A250039.P6123412360853807737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (A248514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250039.P6123412360853807737

namespace A250039

/-- `record[A248502(A248514(n+1))]` -/
def P6123412360853807737.Spec : Prop :=
  ∀ n, P6123412360853807737.a n = A250039 (n + 1)

end A250039

/-!
# A250040: Numbers n such that m = floor(n/10) is coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250040, there is no canonical definition to state claims against.
-/

/-! ## A250040.P17196197957177560003

`∩[A225683(n+1), A248499(n+1)]`
-/

namespace A250040.P17196197957177560003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250040.P17196197957177560003

/-! ## A250040.P9434479671592155568

`A131835(lt[A140407(n), 9*n])`
-/

namespace A250040.P9434479671592155568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131835 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A250040.P9434479671592155568

/-! ## A250040.P5346574756399912372

`record[gcd(A051767(n+1), A131835(n+1))]`
-/

namespace A250040.P5346574756399912372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051767 (n + 1)) (A131835 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250040.P5346574756399912372

/-! ## A250040.P1443449344074859813

`eq[A000030(n), A185917(A090402(n))]`
-/

namespace A250040.P1443449344074859813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (A090402 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250040.P1443449344074859813

/-! ## A250040.P11589240066229968160

`eq[A108622(n+1), A177895(n)]`
-/

namespace A250040.P11589240066229968160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250040.P11589240066229968160

/-!
# A250041: Numbers n such that m = floor(n/10) is not coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250041, there is no canonical definition to state claims against.
-/

/-! ## A250041.P1025554832527725935

`A216455(A248500(n+1))`
-/

namespace A250041.P1025554832527725935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A248500 (n + 1)).toNat

end

end A250041.P1025554832527725935

/-! ## A250041.P15549009921982274776

`A053615(A248500(n+1)^2)`
-/

namespace A250041.P15549009921982274776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A248500 (n + 1) ^ 2).toNat

end

end A250041.P15549009921982274776

/-! ## A250041.P12912403486969063241

`A248500(n+1)%∑[A356224(2*(n+2))]`
-/

namespace A250041.P12912403486969063241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356224 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248500 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250041.P12912403486969063241

/-! ## A250041.P1321094785202496909

`A216455(lt[1, gcd(n+1, A059995(n+1))]+1)`
-/

namespace A250041.P1321094785202496909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A059995 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A250041.P1321094785202496909

/-! ## A250041.P4145964709248927447

`A242718(A382255(n))*A248500(n+1)`
-/

namespace A250041.P4145964709248927447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242718 (A382255 n).toNat * A248500 (n + 1)

end

end A250041.P4145964709248927447

/-!
# A250042: Numbers n such that m = floor(n/9) is coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250042, there is no canonical definition to state claims against.
-/

/-! ## A250042.P500310425231270474

`∑[gcd(A063858(2*n+5), A135747(n))]`
-/

namespace A250042.P500310425231270474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063858 (2 * n + 5)) (A135747 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250042.P500310425231270474

/-! ## A250042.P1893818309413015893

`lt[A163338(A044051(n+3)), A163333(n)]`
-/

namespace A250042.P1893818309413015893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163338 (A044051 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250042.P1893818309413015893

/-!
# A250043: Numbers n such that m = floor(n/9) is not coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250043, there is no canonical definition to state claims against.
-/

/-! ## A250043.P13661910756605521930

`lt[1, gcd(n, A171717(n))]`
-/

namespace A250043.P13661910756605521930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A171717 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250043.P13661910756605521930

/-!
# A250044: Numbers n such that m = floor(n/8) is coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250044, there is no canonical definition to state claims against.
-/

/-! ## A250044.P4301233437633011095

`lt[A347578(n), A157273(A070939(n))]`
-/

namespace A250044.P4301233437633011095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157273 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250044.P4301233437633011095

/-! ## A250044.P2728672553426606551

`eq[A032741(A262392(n)), A230629(n)]`
-/

namespace A250044.P2728672553426606551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A262392 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250044.P2728672553426606551

/-! ## A250044.P13396034637576259430

`lt[A266755(n), A103181(A007094(n))]`
-/

namespace A250044.P13396034637576259430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250044.P13396034637576259430

/-! ## A250044.P15386342997636567068

`lt[A266755(n), A103181(A037471(n))]`
-/

namespace A250044.P15386342997636567068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A037471 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250044.P15386342997636567068

/-! ## A250044.P8264725988565001938

`eq[A056926(A124625(n)), A132292(n+1)]`
-/

namespace A250044.P8264725988565001938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A124625 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250044.P8264725988565001938

/-!
# A250045: Numbers n such that m = floor(n/8) is not coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250045, there is no canonical definition to state claims against.
-/

/-! ## A250045.P18315705914266346170

`lt[1, gcd(n, comp[62-9*n])]`
-/

namespace A250045.P18315705914266346170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  62 - (9 * n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250045.P18315705914266346170

/-! ## A250045.P8820495571548037131

`A004526(A338353(2*n+1)+A248502(2*n+3))`
-/

namespace A250045.P8820495571548037131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338353 (2 * n + 1) + A248502 (2 * n + 3)).toNat

end

end A250045.P8820495571548037131

/-! ## A250045.P2395418420454136334

`A248502(2*n+3)/A020639(A094310(2*(n+2)))`
-/

namespace A250045.P2395418420454136334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248502 (2 * n + 3) : ℚ) / (A020639 (A094310 (2 * (n + 2))).toNat : ℚ)

end

end A250045.P2395418420454136334

/-!
# A250046: Numbers n such that m = floor(n/7) is coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250046, there is no canonical definition to state claims against.
-/

/-! ## A250046.P6766278338740398432

`6*a(floor(n/A130259(A359252(n+2))))+n` with `a(0)=1`
-/

namespace A250046.P6766278338740398432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a ⌊(n : ℚ) / (A130259 (A359252 (n + 2)).toNat : ℚ)⌋.toNat + n

end

end A250046.P6766278338740398432

/-! ## A250046.P7656651297789770197

`A062136(A048766(n))+A032741(A000079(n))`
-/

namespace A250046.P7656651297789770197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062136 (A048766 n).toNat + A032741 (A000079 n).toNat

end

end A250046.P7656651297789770197

/-! ## A250046.P12317785112936395727

`eq[1, A277855(A354526(n+1))]`
-/

namespace A250046.P12317785112936395727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277855 (A354526 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250046.P12317785112936395727

/-! ## A250046.P14524686046026613372

`lt[A171013(A287000(n+1)), A123723(n+1)]`
-/

namespace A250046.P14524686046026613372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171013 (A287000 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123723 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250046.P14524686046026613372

/-! ## A250046.P4431479826170101563

`lt[A008344(A003655(n+2)), A067259(n+1)]`
-/

namespace A250046.P4431479826170101563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (A003655 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250046.P4431479826170101563

/-!
# A250047: Numbers n such that m = floor(n/7) is not coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250047, there is no canonical definition to state claims against.
-/

/-! ## A250047.P13007893531677261042

`lt[3, A109004(∑[A187337(3*n)])]`
-/

namespace A250047.P13007893531677261042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187337 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A250047.P13007893531677261042

/-!
# A250048: Numbers n such that m = floor(n/6) is coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250048, there is no canonical definition to state claims against.
-/

/-! ## A250048.P18331220831023255011

`eq[2, A045828(A097935(n+1))]+1`
-/

namespace A250048.P18331220831023255011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 (A097935 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A250048.P18331220831023255011

/-!
# A250050: Numbers n such that m = floor(n/5) is coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250050, there is no canonical definition to state claims against.
-/

/-! ## A250050.P7331657997178717213

`∑[gcd(A332575(2*(n+1)), A332590(n+1))]`
-/

namespace A250050.P7331657997178717213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A332575 (2 * (n + 1))) (A332590 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250050.P7331657997178717213

/-! ## A250050.P2706274158489251328

`lt[A007090(A008615(n+2)), A292371(3*n+2)]`
-/

namespace A250050.P2706274158489251328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A008615 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A250050.P2706274158489251328

/-!
# A250051: Numbers n such that m = floor(n/5) is not coprime to n and, if nonzero, m is also a term of the sequence.

The programs for A250051, there is no canonical definition to state claims against.
-/

/-! ## A250051.P12913227558847153440

`lt[1, A327502(A101943(n))]`
-/

namespace A250051.P12913227558847153440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327502 (A101943 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A250051.P12913227558847153440

/-!
# A250053: Number of length n+6 0..2 arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250053, there is no canonical definition to state claims against.
-/

/-! ## A250053.P2699840152951111173

`A250059(∑[n+2])`
-/

namespace A250053.P2699840152951111173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250053.P2699840152951111173

/-! ## A250053.P7836145002143142619

`record[A250059(A000096(A133310(n)))]`
-/

namespace A250053.P7836145002143142619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250053.P7836145002143142619

/-! ## A250053.P247778075535240899

`record[A250059(A000096(A134478(n)))]`
-/

namespace A250053.P247778075535240899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250053.P247778075535240899

/-! ## A250053.P2462275109747245176

`or(A000007(n), A250059(A000096(n+1)))`
-/

namespace A250053.P2462275109747245176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250059 (A000096 (n + 1)).toNat)

end

end A250053.P2462275109747245176

/-!
# A250054: Number of length n+6 0..3 arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250054, there is no canonical definition to state claims against.
-/

/-! ## A250054.P11797487802436008007

`A250059(∑[n+3]+1)`
-/

namespace A250054.P11797487802436008007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250054.P11797487802436008007

/-! ## A250054.P16100122041766797049

`A250059(A034856(n+2))+char[41]`
-/

namespace A250054.P16100122041766797049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250054.P16100122041766797049

/-! ## A250054.P16166770789764170185

`A250059(Δ[A008778(n)])%A250055(n+1)`
-/

namespace A250054.P16166770789764170185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250059 (f1 (n + 1) - f1 n).toNat) (A250055 (n + 1))

end

end A250054.P16166770789764170185

/-! ## A250054.P9218918577859759327

`A326291(n+1)+A250059(A034856(n+2))`
-/

namespace A250054.P9218918577859759327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A250059 (A034856 (n + 2)).toNat

end

end A250054.P9218918577859759327

/-! ## A250054.P2277162685450319231

`A250059(A034856(n+2))%A250055(n+1)`
-/

namespace A250054.P2277162685450319231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250059 (A034856 (n + 2)).toNat) (A250055 (n + 1))

end

end A250054.P2277162685450319231

/-!
# A250055: Number of length n+6 0..4 arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250055, there is no canonical definition to state claims against.
-/

/-! ## A250055.P4560349698668309347

`A250059(A141214(n+1))`
-/

namespace A250055.P4560349698668309347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A141214 (n + 1)).toNat

end

end A250055.P4560349698668309347

/-! ## A250055.P10557234274995535097

`A250059(A027379(n+2))`
-/

namespace A250055.P10557234274995535097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A027379 (n + 2)).toNat

end

end A250055.P10557234274995535097

/-! ## A250055.P2005431041741034883

`A250059(A055998(n+2))`
-/

namespace A250055.P2005431041741034883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A055998 (n + 2)).toNat

end

end A250055.P2005431041741034883

/-! ## A250055.P5443326003079894907

`A250059(A052905(n+1)+2)`
-/

namespace A250055.P5443326003079894907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A052905 (n + 1) + 2).toNat

end

end A250055.P5443326003079894907

/-! ## A250055.P12898693185278084044

`A250059(A000217(n+4)-3)`
-/

namespace A250055.P12898693185278084044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A000217 (n + 4) - 3).toNat

end

end A250055.P12898693185278084044

/-!
# A250056: Number of length n+6 0..5 arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250056, there is no canonical definition to state claims against.
-/

/-! ## A250056.P11357255505607302626

`A250059(Δ[A264443(n)])`
-/

namespace A250056.P11357255505607302626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (f1 (n + 1) - f1 n).toNat

end

end A250056.P11357255505607302626

/-! ## A250056.P16458801356293494880

`A250059(A046691(n+3))`
-/

namespace A250056.P16458801356293494880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A046691 (n + 3)).toNat

end

end A250056.P16458801356293494880

/-! ## A250056.P9812698595869625472

`A250059(eq[4, A193592(n)])`
-/

namespace A250056.P9812698595869625472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250056.P9812698595869625472

/-! ## A250056.P15691815423412612404

`A250059(eq[8, A140996(n)])`
-/

namespace A250056.P15691815423412612404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250056.P15691815423412612404

/-! ## A250056.P18393450570962190807

`A250059(Δ[A023545(n+1)])`
-/

namespace A250056.P18393450570962190807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (f1 (n + 1) - f1 n).toNat

end

end A250056.P18393450570962190807

/-!
# A250057: Number of length n+6 0..6 arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250057, there is no canonical definition to state claims against.
-/

/-! ## A250057.P4243020650574108728

`A250059(A052905(n+3))`
-/

namespace A250057.P4243020650574108728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A052905 (n + 3)).toNat

end

end A250057.P4243020650574108728

/-! ## A250057.P14338547858880629780

`A250059(eq[3, A219347(n)])`
-/

namespace A250057.P14338547858880629780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250057.P14338547858880629780

/-! ## A250057.P382372730472713273

`A250059(eq[5, A193592(n)])`
-/

namespace A250057.P382372730472713273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250057.P382372730472713273

/-! ## A250057.P5409179163447678025

`A250059(eq[8, A258709(n)])`
-/

namespace A250057.P5409179163447678025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250057.P5409179163447678025

/-! ## A250057.P473264985543106349

`A250059(Δ[Δ[A006504(n+1)]])`
-/

namespace A250057.P473264985543106349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (f1 (n + 1) - f1 n).toNat

end

end A250057.P473264985543106349

/-!
# A250058: Number of length n+6 0..7 arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250058, there is no canonical definition to state claims against.
-/

/-! ## A250058.P7324751289496360046

`A250059(A055999(n+4))`
-/

namespace A250058.P7324751289496360046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A055999 (n + 4)).toNat

end

end A250058.P7324751289496360046

/-! ## A250058.P16837210758414770638

`A250059(eq[4, A219347(n)])`
-/

namespace A250058.P16837210758414770638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250058.P16837210758414770638

/-! ## A250058.P11399294436200926844

`A250059(eq[6, A193592(n)])`
-/

namespace A250058.P11399294436200926844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250058.P11399294436200926844

/-! ## A250058.P12777088179828730004

`A250059(A000124(n+7)-7)`
-/

namespace A250058.P12777088179828730004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A000124 (n + 7) - 7).toNat

end

end A250058.P12777088179828730004

/-! ## A250058.P9748265698435164118

`A250059(eq[10, A185782(n+1)])`
-/

namespace A250058.P9748265698435164118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250058.P9748265698435164118

/-!
# A250060: Number of length 1+6 0..n arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250060, the canonical program `A250060.P12003600613952037620` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250060 has offset 1).

The definition of A250060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250060.P12003600613952037620

`∑[∑[21*A008515(n)]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250060

/-- `∑[∑[21*A008515(n)]]` -/
def P12003600613952037620.Spec : Prop :=
  ∀ n, P12003600613952037620.a n = A250060 (n + 1)

theorem P12003600613952037620.correct : P12003600613952037620.Spec := by
  intro n
  simp only [A250060, Nat.add_sub_cancel]

end A250060

/-! ## A250060.P10907214646521576180

`∑[7*A144640((n+1)²)]`
-/

namespace A250060.P10907214646521576180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A144640 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250060.P10907214646521576180

namespace A250060

/-- `∑[7*A144640((n+1)²)]` -/
def P10907214646521576180.Spec : Prop :=
  ∀ n, P10907214646521576180.a n = A250060 (n + 1)

end A250060

/-! ## A250060.P13053769711089007536

`A250059(∑[n]+1)`
-/

namespace A250060.P13053769711089007536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250060.P13053769711089007536

namespace A250060

/-- `A250059(∑[n]+1)` -/
def P13053769711089007536.Spec : Prop :=
  ∀ n, P13053769711089007536.a n = A250060 (n + 1)

end A250060

/-! ## A250060.P16454613147058392901

`lcm(3, A250059(A000124(n)))`
-/

namespace A250060.P16454613147058392901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A250059 (A000124 n).toNat)

end

end A250060.P16454613147058392901

namespace A250060

/-- `lcm(3, A250059(A000124(n)))` -/
def P16454613147058392901.Spec : Prop :=
  ∀ n, (P16454613147058392901.a n : ℤ) = A250060 (n + 1)

end A250060

/-! ## A250060.P13707177336552105813

`record[gcd(A109754(n), A250059(n+1))]`
-/

namespace A250060.P13707177336552105813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109754 n) (A250059 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250060.P13707177336552105813

namespace A250060

/-- `record[gcd(A109754(n), A250059(n+1))]` -/
def P13707177336552105813.Spec : Prop :=
  ∀ n, (P13707177336552105813.a n : ℤ) = A250060 (n + 1)

end A250060

/-!
# A250061: Number of length 2+6 0..n arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250061, there is no canonical definition to state claims against.
-/

/-! ## A250061.P11303130610383844214

`A250059(∑[n+1]+2)`
-/

namespace A250061.P11303130610383844214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250061.P11303130610383844214

/-! ## A250061.P8458696794313632453

`record[A250059(n+1)*A326822(n)]`
-/

namespace A250061.P8458696794313632453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (n + 1) * A326822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250061.P8458696794313632453

/-! ## A250061.P902690644576138137

`or(A000007(n), A250059(A167499(n)-3))`
-/

namespace A250061.P902690644576138137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250059 (A167499 n - 3).toNat)

end

end A250061.P902690644576138137

/-! ## A250061.P18439109557952913508

`A250059(A255128(2*(n+2)))%A165062(3*n+4)`
-/

namespace A250061.P18439109557952913508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250059 (A255128 (2 * (n + 2))).toNat) (A165062 (3 * n + 4))

end

end A250061.P18439109557952913508

/-! ## A250061.P12296327774628042675

`A250059(A167499(n)-3)+A008683(A082073(n+1))`
-/

namespace A250061.P12296327774628042675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A167499 n - 3).toNat + A008683 (A082073 (n + 1)).toNat

end

end A250061.P12296327774628042675

/-!
# A250062: Number of length 3+6 0..n arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250062, there is no canonical definition to state claims against.
-/

/-! ## A250062.P12622451729709313317

`A250059(∑[n+2]+4)`
-/

namespace A250062.P12622451729709313317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250062.P12622451729709313317

/-! ## A250062.P8846615851589284676

`A250059(A167614(n+1))+C(n+1, 31)`
-/

namespace A250062.P8846615851589284676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A167614 (n + 1)).toNat + (Nat.choose (n + 1) 31 : ℤ)

end

end A250062.P8846615851589284676

/-! ## A250062.P8156975570042861416

`A250059(A167614(n+1))%A017502(n)`
-/

namespace A250062.P8156975570042861416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250059 (A167614 (n + 1)).toNat) (A017502 n)

end

end A250062.P8156975570042861416

/-! ## A250062.P8550041368622616011

`lcm(A000034(n), A250059(A167614(n+1)))`
-/

namespace A250062.P8550041368622616011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A250059 (A167614 (n + 1)).toNat)

end

end A250062.P8550041368622616011

/-! ## A250062.P15296475165253006690

`A239700(n+1)*A250059(A167614(n+1))`
-/

namespace A250062.P15296475165253006690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (n + 1) * A250059 (A167614 (n + 1)).toNat

end

end A250062.P15296475165253006690

/-!
# A250063: Number of length 5+6 0..n arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250063, there is no canonical definition to state claims against.
-/

/-! ## A250063.P13775461456955548312

`A250059(A167499(n+3))`
-/

namespace A250063.P13775461456955548312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A167499 (n + 3)).toNat

end

end A250063.P13775461456955548312

/-! ## A250063.P14105930109842147353

`A250059(A155212(n)+13)`
-/

namespace A250063.P14105930109842147353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A155212 n + 13).toNat

end

end A250063.P14105930109842147353

/-! ## A250063.P11451949794668465164

`A250059(A141214(n+1)+8)`
-/

namespace A250063.P11451949794668465164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A141214 (n + 1) + 8).toNat

end

end A250063.P11451949794668465164

/-! ## A250063.P11554170422389025517

`A250059(A020710(A000217(n+4)))`
-/

namespace A250063.P11554170422389025517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A020710 (A000217 (n + 4)).toNat).toNat

end

end A250063.P11554170422389025517

/-! ## A250063.P9157027750921906522

`A250059(A000217(A020710(n))-n)`
-/

namespace A250063.P9157027750921906522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A000217 (A020710 n).toNat - (n : ℤ)).toNat

end

end A250063.P9157027750921906522

/-!
# A250064: Number of length 4+6 0..n arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250064, there is no canonical definition to state claims against.
-/

/-! ## A250064.P7956956155995410168

`A250059(A141214(n)+7)`
-/

namespace A250064.P7956956155995410168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A141214 n + 7).toNat

end

end A250064.P7956956155995410168

/-! ## A250064.P11215716259818203010

`A250059(A052905(n)+9)`
-/

namespace A250064.P11215716259818203010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A052905 n + 9).toNat

end

end A250064.P11215716259818203010

/-! ## A250064.P10638500536336805070

`A250059(A055999(n)+10)`
-/

namespace A250064.P10638500536336805070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A055999 n + 10).toNat

end

end A250064.P10638500536336805070

/-! ## A250064.P6501165418956920921

`A250059(A167614(n+2)+1)`
-/

namespace A250064.P6501165418956920921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A167614 (n + 2) + 1).toNat

end

end A250064.P6501165418956920921

/-! ## A250064.P10216853108006171446

`A250059(A167487(n+2)-3)`
-/

namespace A250064.P10216853108006171446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A167487 (n + 2) - 3).toNat

end

end A250064.P10216853108006171446

/-!
# A250065: Number of length 6+6 0..n arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250065, there is no canonical definition to state claims against.
-/

/-! ## A250065.P15799422294326257264

`A250059(A056115(n)+21)`
-/

namespace A250065.P15799422294326257264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A056115 n + 21).toNat

end

end A250065.P15799422294326257264

/-! ## A250065.P4354864973375884699

`A250059(Δ[A264443(n)]+10)`
-/

namespace A250065.P4354864973375884699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (f1 (n + 1) - f1 n + 10).toNat

end

end A250065.P4354864973375884699

/-! ## A250065.P1868859713596735514

`A250059(A000217(n+5)+6)`
-/

namespace A250065.P1868859713596735514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A000217 (n + 5) + 6).toNat

end

end A250065.P1868859713596735514

/-! ## A250065.P1366124477250508441

`A250059(eq[6, A130270(n+1)])`
-/

namespace A250065.P1366124477250508441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250065.P1366124477250508441

/-! ## A250065.P12070105904484695573

`A250059(eq[7, A131818(n+1)])`
-/

namespace A250065.P12070105904484695573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250065.P12070105904484695573

/-!
# A250066: Number of length 7+6 0..n arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

The programs for A250066, there is no canonical definition to state claims against.
-/

/-! ## A250066.P13510126816566326845

`A250059(A167487(n+5))`
-/

namespace A250066.P13510126816566326845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A167487 (n + 5)).toNat

end

end A250066.P13510126816566326845

/-! ## A250066.P5953315775795614092

`A250059(A056119(n)+28)`
-/

namespace A250066.P5953315775795614092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A056119 n + 28).toNat

end

end A250066.P5953315775795614092

/-! ## A250066.P12026233981540629864

`A250059(eq[11, A066657(n)])`
-/

namespace A250066.P12026233981540629864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250066.P12026233981540629864

/-! ## A250066.P17258630429648036354

`A250059(A141214(n+3)+10)`
-/

namespace A250066.P17258630429648036354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (A141214 (n + 3) + 10).toNat

end

end A250066.P17258630429648036354

/-! ## A250066.P10148204918666485775

`A250059(eq[8, A131818(n+1)])`
-/

namespace A250066.P10148204918666485775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250066.P10148204918666485775

/-!
# A250068: Maximum width of any region in the symmetric representation of sigma(n).

The programs for A250068, there is no canonical definition to state claims against.
-/

/-! ## A250068.P15115846737531719898

`A028310(Δ[A347528(A028310(n))])`
-/

namespace A250068.P15115846737531719898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347528 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A250068.P15115846737531719898

/-! ## A250068.P13826143040467985949

`A226898(A064988(n+1))%A111183(2*(n+1))`
-/

namespace A250068.P13826143040467985949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226898 (A064988 (n + 1)).toNat) (A111183 (2 * (n + 1)))

end

end A250068.P13826143040467985949

/-! ## A250068.P4801263055819839498

`A226898(A064988(n+1))+A002448(A062055(n+1))`
-/

namespace A250068.P4801263055819839498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226898 (A064988 (n + 1)).toNat + A002448 (A062055 (n + 1)).toNat

end

end A250068.P4801263055819839498

/-! ## A250068.P13449205162911165312

`A353478(A147993(n+1))+A226898(A064988(n+1))`
-/

namespace A250068.P13449205162911165312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (A147993 (n + 1)).toNat + A226898 (A064988 (n + 1)).toNat

end

end A250068.P13449205162911165312

/-! ## A250068.P13628780650141671240

`and(A059327(8*n+3), A226898(A064988(n+1)))`
-/

namespace A250068.P13628780650141671240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059327 (8 * n + 3)) (A226898 (A064988 (n + 1)).toNat)

end

end A250068.P13628780650141671240

/-! ## A250068.P17893034537593408553

`A226898(A064988(n+1)%A305885(n+1))`
-/

namespace A250068.P17893034537593408553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226898 (Int.tmod (A064988 (n + 1)) (A305885 (n + 1))).toNat

end

end A250068.P17893034537593408553

/-! ## A250068.P8342177084620259890

`A226898(or(A064988(n+1), A244250(n+1)))`
-/

namespace A250068.P8342177084620259890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226898 (Int.lor (A064988 (n + 1)) (A244250 (n + 1))).toNat

end

end A250068.P8342177084620259890

/-! ## A250068.P14588384435530712309

`A038374(A352696(n+1))`
-/

namespace A250068.P14588384435530712309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A352696 (n + 1)).toNat

end

end A250068.P14588384435530712309

/-!
# A250069: a(n) = n^2 mod gpf(n^2 + 1) where gpf(k) is the greatest prime dividing k.

The programs for A250069, the canonical program `A250069.P12140619609167371164` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250069 has offset 1).

The definition of A250069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250069.P12140619609167371164

`A014442(n+1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A250069

/-- `A014442(n+1)-1` -/
def P12140619609167371164.Spec : Prop :=
  ∀ n, P12140619609167371164.a n = A250069 (n + 1)

theorem P12140619609167371164.correct : P12140619609167371164.Spec := by
  intro n
  simp only [A250069, Nat.add_sub_cancel]

end A250069

/-! ## A250069.P13322069148464982097

`A000290(n+1)%A014442(n+1)`
-/

namespace A250069.P13322069148464982097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 1)) (A014442 (n + 1))

end

end A250069.P13322069148464982097

namespace A250069

/-- `A000290(n+1)%A014442(n+1)` -/
def P13322069148464982097.Spec : Prop :=
  ∀ n, P13322069148464982097.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P18105587459104640310

`A085151(n+1)%A014442(n+1)`
-/

namespace A250069.P18105587459104640310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085151 (n + 1)) (A014442 (n + 1))

end

end A250069.P18105587459104640310

namespace A250069

/-- `A085151(n+1)%A014442(n+1)` -/
def P18105587459104640310.Spec : Prop :=
  ∀ n, P18105587459104640310.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P7136092083539873098

`A272775(n+1)%A014442(n+1)`
-/

namespace A250069.P7136092083539873098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272775 (n + 1)) (A014442 (n + 1))

end

end A250069.P7136092083539873098

namespace A250069

/-- `A272775(n+1)%A014442(n+1)` -/
def P7136092083539873098.Spec : Prop :=
  ∀ n, P7136092083539873098.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P6038280042471367534

`A325173(n+1)%A014442(n+1)`
-/

namespace A250069.P6038280042471367534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325173 (n + 1)) (A014442 (n + 1))

end

end A250069.P6038280042471367534

namespace A250069

/-- `A325173(n+1)%A014442(n+1)` -/
def P6038280042471367534.Spec : Prop :=
  ∀ n, P6038280042471367534.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P2772861777465046561

`A000027(n+1)²%A014442(n+1)`
-/

namespace A250069.P2772861777465046561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1) ^ 2) (A014442 (n + 1))

end

end A250069.P2772861777465046561

namespace A250069

/-- `A000027(n+1)²%A014442(n+1)` -/
def P2772861777465046561.Spec : Prop :=
  ∀ n, P2772861777465046561.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P15861864587564782598

`A089120(n+1)+A252096(n+1)-1`
-/

namespace A250069.P15861864587564782598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1) + (A252096 (n + 1) - 1)

end

end A250069.P15861864587564782598

namespace A250069

/-- `A089120(n+1)+A252096(n+1)-1` -/
def P15861864587564782598.Spec : Prop :=
  ∀ n, P15861864587564782598.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P5791211718890782316

`(A002522(n+1)-A248516(n+1))/A248516(n+1)`
-/

namespace A250069.P5791211718890782316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (n + 1) - A248516 (n + 1) : ℚ) / (A248516 (n + 1) : ℚ)

end

end A250069.P5791211718890782316

namespace A250069

/-- `(A002522(n+1)-A248516(n+1))/A248516(n+1)` -/
def P5791211718890782316.Spec : Prop :=
  ∀ n, P5791211718890782316.a n = (A250069 (n + 1) : ℚ)

end A250069

/-! ## A250069.P16384690350414296631

`A002313(A248746(n+1))-1`
-/

namespace A250069.P16384690350414296631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A248746 (n + 1)).toNat - 1

end

end A250069.P16384690350414296631

namespace A250069

/-- `A002313(A248746(n+1))-1` -/
def P16384690350414296631.Spec : Prop :=
  ∀ n, P16384690350414296631.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P8806226544120648970

`A089122(∑[A128428(n+1)])-1`
-/

namespace A250069.P8806226544120648970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089122 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A250069.P8806226544120648970

namespace A250069

/-- `A089122(∑[A128428(n+1)])-1` -/
def P8806226544120648970.Spec : Prop :=
  ∀ n, P8806226544120648970.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P7909053312580271518

`A000010(A014442(n+1))`
-/

namespace A250069.P7909053312580271518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014442 (n + 1)).toNat

end

end A250069.P7909053312580271518

namespace A250069

/-- `A000010(A014442(n+1))` -/
def P7909053312580271518.Spec : Prop :=
  ∀ n, P7909053312580271518.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P5331619156465975722

`A000010(A002313(A248746(n+1)))`
-/

namespace A250069.P5331619156465975722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002313 (A248746 (n + 1)).toNat).toNat

end

end A250069.P5331619156465975722

namespace A250069

/-- `A000010(A002313(A248746(n+1)))` -/
def P5331619156465975722.Spec : Prop :=
  ∀ n, P5331619156465975722.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P16867142572991295476

`A006530((n+1)²+1)-1`
-/

namespace A250069.P16867142572991295476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 2 + 1) - 1

end

end A250069.P16867142572991295476

namespace A250069

/-- `A006530((n+1)²+1)-1` -/
def P16867142572991295476.Spec : Prop :=
  ∀ n, P16867142572991295476.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P9484375430795863958

`abs(1-A006530(n*(n+2)+2))`
-/

namespace A250069.P9484375430795863958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A006530 (n * (n + 2) + 2)|

end

end A250069.P9484375430795863958

namespace A250069

/-- `abs(1-A006530(n*(n+2)+2))` -/
def P9484375430795863958.Spec : Prop :=
  ∀ n, P9484375430795863958.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P14393447994761211063

`(n+1)²%A006530(A005563(n)+2)`
-/

namespace A250069.P14393447994761211063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A006530 (A005563 n + 2).toNat)

end

end A250069.P14393447994761211063

namespace A250069

/-- `(n+1)²%A006530(A005563(n)+2)` -/
def P14393447994761211063.Spec : Prop :=
  ∀ n, P14393447994761211063.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P16166635481993814691

`∏{p}[A006530((n+1)²+1), A000010(#)]`
-/

namespace A250069.P16166635481993814691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A250069.P16166635481993814691

namespace A250069

/-- `∏{p}[A006530((n+1)²+1), A000010(#)]` -/
def P16166635481993814691.Spec : Prop :=
  ∀ n, P16166635481993814691.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P15531081314870993325

`abs(A006530(∑[A004277(n)]+n+1)-1)`
-/

namespace A250069.P15531081314870993325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006530 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)).toNat - 1|

end

end A250069.P15531081314870993325

namespace A250069

/-- `abs(A006530(∑[A004277(n)]+n+1)-1)` -/
def P15531081314870993325.Spec : Prop :=
  ∀ n, P15531081314870993325.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P17411145783420887908

`A007913(A006530(∑[2*n+1]+1))-1`
-/

namespace A250069.P17411145783420887908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat - 1

end

end A250069.P17411145783420887908

namespace A250069

/-- `A007913(A006530(∑[2*n+1]+1))-1` -/
def P17411145783420887908.Spec : Prop :=
  ∀ n, P17411145783420887908.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P14821949587903440795

`A078312(A102631(n+1))-1`
-/

namespace A250069.P14821949587903440795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078312 (A102631 (n + 1)).toNat - 1

end

end A250069.P14821949587903440795

namespace A250069

/-- `A078312(A102631(n+1))-1` -/
def P14821949587903440795.Spec : Prop :=
  ∀ n, P14821949587903440795.a n = A250069 (n + 1)

end A250069

/-! ## A250069.P12496676064854167790

`∑{p}[A006530(2*(∑[2*n+1]+1)), #]-1`
-/

namespace A250069.P12496676064854167790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (∑ j ∈ Finset.range (n + 1), f2 j + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 1

end

end A250069.P12496676064854167790

namespace A250069

/-- `∑{p}[A006530(2*(∑[2*n+1]+1)), #]-1` -/
def P12496676064854167790.Spec : Prop :=
  ∀ n, P12496676064854167790.a n = A250069 (n + 1)

end A250069

/-!
# A250070: Smallest number k such that the symmetric representation of sigma(k) has at least one part of width n.

The programs for A250070, there is no canonical definition to state claims against.
-/

/-! ## A250070.P13624167847737952372

`A253258(∑[n+1])`
-/

namespace A250070.P13624167847737952372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253258 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250070.P13624167847737952372

/-! ## A250070.P730871517680596230

`A253258(A028310(n)+A000124(n))-A000007(n)`
-/

namespace A250070.P730871517680596230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253258 (A028310 n + A000124 n).toNat - A000007 n

end

end A250070.P730871517680596230

/-! ## A250070.P17693682909158521506

`A253258(A028310(n)+A000124(n))-A063524(3*n+1)`
-/

namespace A250070.P17693682909158521506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253258 (A028310 n + A000124 n).toNat - A063524 (3 * n + 1)

end

end A250070.P17693682909158521506

/-! ## A250070.P938168626093870744

`A347979(n+1)-A000007(n)`
-/

namespace A250070.P938168626093870744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347979 (n + 1) - A000007 n

end

end A250070.P938168626093870744

/-!
# A250071: Smallest number k such that the symmetric representation of sigma(k) has maximum width n for those k whose representation has nondecreasing width up to the diagonal.

The programs for A250071, there is no canonical definition to state claims against.
-/

/-! ## A250071.P17130214486423410172

`A038547(n+1)*A053644(A038547(n+1))`
-/

namespace A250071.P17130214486423410172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (n + 1) * A053644 (A038547 (n + 1)).toNat

end

end A250071.P17130214486423410172

/-! ## A250071.P1963556386963544457

`A053644(A348199(n+1))*A348199(n+1)`
-/

namespace A250071.P1963556386963544457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A348199 (n + 1)).toNat * A348199 (n + 1)

end

end A250071.P1963556386963544457

/-! ## A250071.P16301395125264601321

`A367377(∑[n]+1)`
-/

namespace A250071.P16301395125264601321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367377 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250071.P16301395125264601321

/-!
# A250073: Powers of 2 written in base 60, concatenating the decimal values of the sexagesimal digits.

The programs for A250073, there is no canonical definition to state claims against.
-/

/-! ## A250073.P2601973069557132345

`A250089(A188425(n))`
-/

namespace A250073.P2601973069557132345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250089 (A188425 n).toNat

end

end A250073.P2601973069557132345

/-! ## A250073.P4415409955284460521

`A055643(2^n)`
-/

namespace A250073.P4415409955284460521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (2 ^ n)

end

end A250073.P4415409955284460521

/-! ## A250073.P8218507324615974578

`record[A055643(A001316(n))]`
-/

namespace A250073.P8218507324615974578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250073.P8218507324615974578

/-! ## A250073.P11204864072473731525

`record[A055643(A029930(n))]`
-/

namespace A250073.P11204864072473731525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250073.P11204864072473731525

/-! ## A250073.P7230896320555116959

`record[A055643(A034008(n))]`
-/

namespace A250073.P7230896320555116959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250073.P7230896320555116959

/-!
# A250074: Number of length n+5 0..1 arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250074, there is no canonical definition to state claims against.
-/

/-! ## A250074.P15027484784415129452

`A250081(∑[n+1])`
-/

namespace A250074.P15027484784415129452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250074.P15027484784415129452

/-! ## A250074.P2435329757492946244

`record[(2-A004736(n+1))*A250081(n+1)]`
-/

namespace A250074.P2435329757492946244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * A250081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250074.P2435329757492946244

/-! ## A250074.P16001420311311942087

`record[A250081(A000217(A274640(n)))]`
-/

namespace A250074.P16001420311311942087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000217 (A274640 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250074.P16001420311311942087

/-! ## A250074.P1663353013351082261

`record[A250081(A000217(A328399(n)))]`
-/

namespace A250074.P1663353013351082261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000217 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250074.P1663353013351082261

/-! ## A250074.P7604155010161120369

`record[A250081(A000217(A002260(n+1)))]`
-/

namespace A250074.P7604155010161120369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000217 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250074.P7604155010161120369

/-!
# A250075: Number of length n+5 0..2 arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250075, there is no canonical definition to state claims against.
-/

/-! ## A250075.P9412842161126524950

`A250081(∑[n+2])`
-/

namespace A250075.P9412842161126524950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250075.P9412842161126524950

/-! ## A250075.P3333775361751799888

`record[A250081(A000096(A193738(n)))]`
-/

namespace A250075.P3333775361751799888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000096 (A193738 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250075.P3333775361751799888

/-! ## A250075.P3350970280147323103

`record[A250081(A000096(A328399(n)))]`
-/

namespace A250075.P3350970280147323103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250075.P3350970280147323103

/-! ## A250075.P14034645282545805359

`record[A250081(A000096(A004736(n+1)))]`
-/

namespace A250075.P14034645282545805359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250075.P14034645282545805359

/-! ## A250075.P1361516112603950527

`record[A250081(A000096(A032742(n+1)))]`
-/

namespace A250075.P1361516112603950527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250075.P1361516112603950527

/-! ## A250075.P2873071803217108648

`record[A250081(A000096(A064047(n+1)))]`
-/

namespace A250075.P2873071803217108648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000096 (A064047 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250075.P2873071803217108648

/-! ## A250075.P2543075761781305590

`record[A250081(A000096(A138528(n+1)))]`
-/

namespace A250075.P2543075761781305590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000096 (A138528 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250075.P2543075761781305590

/-! ## A250075.P7618627335561927157

`record[A250081(A000096(A304732(n+1)))]`
-/

namespace A250075.P7618627335561927157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000096 (A304732 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250075.P7618627335561927157

/-!
# A250076: Number of length n+5 0..3 arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250076, there is no canonical definition to state claims against.
-/

/-! ## A250076.P5557152651800310423

`A250081(∑[n+3]+1)`
-/

namespace A250076.P5557152651800310423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250076.P5557152651800310423

/-! ## A250076.P4932211557488473307

`lcm(2, A250081(A034856(n+2)))`
-/

namespace A250076.P4932211557488473307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250081 (A034856 (n + 2)).toNat)

end

end A250076.P4932211557488473307

/-! ## A250076.P7319528398913756526

`or(A000038(n), A250081(A055999(n)+4))`
-/

namespace A250076.P7319528398913756526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A250081 (A055999 n + 4).toNat)

end

end A250076.P7319528398913756526

/-! ## A250076.P5712993218585437025

`A033999(n)²*A250081(A055999(n)+4)`
-/

namespace A250076.P5712993218585437025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A250081 (A055999 n + 4).toNat

end

end A250076.P5712993218585437025

/-! ## A250076.P11523821893536097507

`A250081(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A250076.P11523821893536097507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A250076.P11523821893536097507

/-! ## A250076.P16370910363864872844

`char[A003987(n)]*A250081(A055999(n)+4)`
-/

namespace A250076.P16370910363864872844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250081 (A055999 n + 4).toNat

end

end A250076.P16370910363864872844

/-! ## A250076.P12045336909276184138

`A250081(A055999(n)+4)+A000007(n+1)`
-/

namespace A250076.P12045336909276184138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A055999 n + 4).toNat + A000007 (n + 1)

end

end A250076.P12045336909276184138

/-! ## A250076.P17786621411604710478

`A008836((n+1)²)*A250081(A055999(n)+4)`
-/

namespace A250076.P17786621411604710478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 ((n + 1) ^ 2) * A250081 (A055999 n + 4).toNat

end

end A250076.P17786621411604710478

/-! ## A250076.P3046059825133831599

`A000203(gcd(n+1, n+2))*A250081(A055999(n)+4)`
-/

namespace A250076.P3046059825133831599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd (n + 1) (n + 2)) * A250081 (A055999 n + 4).toNat

end

end A250076.P3046059825133831599

/-!
# A250077: Number of length n+5 0..4 arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250077, there is no canonical definition to state claims against.
-/

/-! ## A250077.P979815098707122194

`A250081(A027379(n+2))`
-/

namespace A250077.P979815098707122194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A027379 (n + 2)).toNat

end

end A250077.P979815098707122194

/-! ## A250077.P2750085468075144635

`A250081(A055998(n+2))`
-/

namespace A250077.P2750085468075144635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A055998 (n + 2)).toNat

end

end A250077.P2750085468075144635

/-! ## A250077.P2027541012838033517

`A250081(A155212(n)+5)`
-/

namespace A250077.P2027541012838033517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A155212 n + 5).toNat

end

end A250077.P2027541012838033517

/-! ## A250077.P5405375927949101140

`A250081(A052905(n+1)+2)`
-/

namespace A250077.P5405375927949101140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A052905 (n + 1) + 2).toNat

end

end A250077.P5405375927949101140

/-! ## A250077.P5788285929873771663

`A250081(Δ[A008778(n+1)]-1)`
-/

namespace A250077.P5788285929873771663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (f1 (n + 1) - f1 n - 1).toNat

end

end A250077.P5788285929873771663

/-! ## A250077.P10229371271943038812

`A250081(A000217(n+3)+n+1)`
-/

namespace A250077.P10229371271943038812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000217 (n + 3) + (n : ℤ) + 1).toNat

end

end A250077.P10229371271943038812

/-! ## A250077.P1969427673711846013

`A250081(A167614(n+1)+Δ[n²])`
-/

namespace A250077.P1969427673711846013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A250077.P1969427673711846013

/-! ## A250077.P10144098245331816591

`A250081(A167499(n)+A016777(n))`
-/

namespace A250077.P10144098245331816591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167499 n + A016777 n).toNat

end

end A250077.P10144098245331816591

/-!
# A250078: Number of length n+5 0..5 arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250078, there is no canonical definition to state claims against.
-/

/-! ## A250078.P6371654118725220954

`A250081(Δ[A264443(n)])`
-/

namespace A250078.P6371654118725220954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (f1 (n + 1) - f1 n).toNat

end

end A250078.P6371654118725220954

/-! ## A250078.P4472555496932998933

`A250081(A046691(n+3))`
-/

namespace A250078.P4472555496932998933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A046691 (n + 3)).toNat

end

end A250078.P4472555496932998933

/-! ## A250078.P17230280126344669857

`A250081(Δ[A023545(n+1)])`
-/

namespace A250078.P17230280126344669857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (f1 (n + 1) - f1 n).toNat

end

end A250078.P17230280126344669857

/-! ## A250078.P14060689253472380674

`A250081(A000096(n+4)-3)`
-/

namespace A250078.P14060689253472380674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000096 (n + 4) - 3).toNat

end

end A250078.P14060689253472380674

/-! ## A250078.P12027453778477128990

`A250081(A000217(n+5)-4)`
-/

namespace A250078.P12027453778477128990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000217 (n + 5) - 4).toNat

end

end A250078.P12027453778477128990

/-! ## A250078.P6540562912401830617

`A250081(A167614(n+2)+2*(n+1))`
-/

namespace A250078.P6540562912401830617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167614 (n + 2) + (2 * (n + 1) : ℤ)).toNat

end

end A250078.P6540562912401830617

/-! ## A250078.P11844938898194160874

`A250081(A167487(n)+A004767(n))`
-/

namespace A250078.P11844938898194160874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167487 n + A004767 n).toNat

end

end A250078.P11844938898194160874

/-! ## A250078.P9099507286121895496

`A250081(A264443(n+1)-A264443(n))`
-/

namespace A250078.P9099507286121895496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A264443 (n + 1) - A264443 n).toNat

end

end A250078.P9099507286121895496

/-!
# A250079: Number of length n+5 0..6 arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250079, there is no canonical definition to state claims against.
-/

/-! ## A250079.P8837493158397741363

`A250081(A052905(n+3))`
-/

namespace A250079.P8837493158397741363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A052905 (n + 3)).toNat

end

end A250079.P8837493158397741363

/-! ## A250079.P11531389097238349445

`A250081(A055999(n+3)+1)`
-/

namespace A250079.P11531389097238349445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A055999 (n + 3) + 1).toNat

end

end A250079.P11531389097238349445

/-! ## A250079.P16664232189396220701

`A250081(A027379(n+4)-2)`
-/

namespace A250079.P16664232189396220701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A027379 (n + 4) - 2).toNat

end

end A250079.P16664232189396220701

/-! ## A250079.P5560958578119456282

`A250081(A000124(n+6)-6)`
-/

namespace A250079.P5560958578119456282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000124 (n + 6) - 6).toNat

end

end A250079.P5560958578119456282

/-! ## A250079.P2878427871493167986

`A250081(Δ[Δ[A006504(n+1)]])`
-/

namespace A250079.P2878427871493167986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (f1 (n + 1) - f1 n).toNat

end

end A250079.P2878427871493167986

/-! ## A250079.P2489884021817076434

`A250081(Δ[A264443(n+1)]-1)`
-/

namespace A250079.P2489884021817076434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (f1 (n + 1) - f1 n - 1).toNat

end

end A250079.P2489884021817076434

/-! ## A250079.P10347997538522795730

`A250081(Δ[A023545(n+2)]-1)`
-/

namespace A250079.P10347997538522795730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (f1 (n + 1) - f1 n - 1).toNat

end

end A250079.P10347997538522795730

/-!
# A250080: Number of length n+5 0..7 arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250080, there is no canonical definition to state claims against.
-/

/-! ## A250080.P13004098187381250794

`A250081(A055999(n+4))`
-/

namespace A250080.P13004098187381250794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A055999 (n + 4)).toNat

end

end A250080.P13004098187381250794

/-! ## A250080.P9895759047083647353

`A250081(A000124(n+7)-7)`
-/

namespace A250080.P9895759047083647353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000124 (n + 7) - 7).toNat

end

end A250080.P9895759047083647353

/-! ## A250080.P310787438016008908

`A250081(A055998(n+4)+n+4)`
-/

namespace A250080.P310787438016008908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A055998 (n + 4) + (n + 4 : ℤ)).toNat

end

end A250080.P310787438016008908

/-! ## A250080.P5776826857957551262

`A250081(A027379(n+2)+A008486(n+5))`
-/

namespace A250080.P5776826857957551262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A027379 (n + 2) + A008486 (n + 5)).toNat

end

end A250080.P5776826857957551262

/-! ## A250080.P17001745321889520602

`A250081(A005408(n+3)+A000217(n+5))`
-/

namespace A250080.P17001745321889520602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A005408 (n + 3) + A000217 (n + 5)).toNat

end

end A250080.P17001745321889520602

/-!
# A250082: Number of length 1+5 0..n arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250082, the canonical program `A250082.P7003508195052426353` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250082 has offset 1).

The definition of A250082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250082.P7003508195052426353

`3*(n+1)^5+10*(n+1)^4+15*(n+1)^3+27/2*(n+1)²+13/2*(n+1)+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A250082

/-- `3*(n+1)^5+10*(n+1)^4+15*(n+1)^3+27/2*(n+1)²+13/2*(n+1)+1` -/
def P7003508195052426353.Spec : Prop :=
  ∀ n, P7003508195052426353.a n = (A250082 (n + 1) : ℚ)

end A250082

/-! ## A250082.P11149783566950518592

`Δ[A168351(n+1)+A108766(n)]`
-/

namespace A250082.P11149783566950518592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 (n + 1) + A108766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250082.P11149783566950518592

namespace A250082

/-- `Δ[A168351(n+1)+A108766(n)]` -/
def P11149783566950518592.Spec : Prop :=
  ∀ n, P11149783566950518592.a n = A250082 (n + 1)

end A250082

/-! ## A250082.P272847788863712866

`A250081(∑[n]+1)`
-/

namespace A250082.P272847788863712866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250082.P272847788863712866

namespace A250082

/-- `A250081(∑[n]+1)` -/
def P272847788863712866.Spec : Prop :=
  ∀ n, P272847788863712866.a n = A250082 (n + 1)

end A250082

/-! ## A250082.P2770771079015795945

`record[A010054(n)*A250081(n+1)]`
-/

namespace A250082.P2770771079015795945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250082.P2770771079015795945

namespace A250082

/-- `record[A010054(n)*A250081(n+1)]` -/
def P2770771079015795945.Spec : Prop :=
  ∀ n, P2770771079015795945.a n = A250082 (n + 1)

end A250082

/-! ## A250082.P9171726478013928990

`record[(2-A193738(n))*A250081(n+1)]`
-/

namespace A250082.P9171726478013928990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A193738 n) * A250081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250082.P9171726478013928990

namespace A250082

/-- `record[(2-A193738(n))*A250081(n+1)]` -/
def P9171726478013928990.Spec : Prop :=
  ∀ n, P9171726478013928990.a n = A250082 (n + 1)

end A250082

/-! ## A250082.P8273259507925815722

`record[(2-A002260(n+1))*A250081(n+1)]`
-/

namespace A250082.P8273259507925815722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002260 (n + 1)) * A250081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250082.P8273259507925815722

namespace A250082

/-- `record[(2-A002260(n+1))*A250081(n+1)]` -/
def P8273259507925815722.Spec : Prop :=
  ∀ n, P8273259507925815722.a n = A250082 (n + 1)

end A250082

/-! ## A250082.P966520607641059052

`A250081(A000124(n))*A331291(A047934(n+1))`
-/

namespace A250082.P966520607641059052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000124 n).toNat * A331291 (A047934 (n + 1)).toNat

end

end A250082.P966520607641059052

namespace A250082

/-- `A250081(A000124(n))*A331291(A047934(n+1))` -/
def P966520607641059052.Spec : Prop :=
  ∀ n, P966520607641059052.a n = A250082 (n + 1)

end A250082

/-!
# A250083: Number of length 2+5 0..n arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250083, there is no canonical definition to state claims against.
-/

/-! ## A250083.P14776114277888308280

`A250081(∑[n+1]+2)`
-/

namespace A250083.P14776114277888308280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250083.P14776114277888308280

/-! ## A250083.P7393751069466551161

`record[A250081(A133263(abs(1-n)))]`
-/

namespace A250083.P7393751069466551161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250083.P7393751069466551161

/-! ## A250083.P9560935842990423554

`record[A010054(n+1)*A250081(n+3)]`
-/

namespace A250083.P9560935842990423554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A250081 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250083.P9560935842990423554

/-! ## A250083.P1763250747248733848

`abs(A250081(A133263(n+1))-n)+n`
-/

namespace A250083.P1763250747248733848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A250081 (A133263 (n + 1)).toNat - (n : ℤ)| + (n : ℤ)

end

end A250083.P1763250747248733848

/-! ## A250083.P11293739066525120005

`or(A000007(n), A250081(A133263(n+1)))`
-/

namespace A250083.P11293739066525120005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250081 (A133263 (n + 1)).toNat)

end

end A250083.P11293739066525120005

/-!
# A250084: Number of length 3+5 0..n arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250084, there is no canonical definition to state claims against.
-/

/-! ## A250084.P12671442598308190516

`A250081(∑[n+2]+4)`
-/

namespace A250084.P12671442598308190516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250084.P12671442598308190516

/-! ## A250084.P16404025185231864934

`tan(acot(1))*A250081(A167614(n+1))`
-/

namespace A250084.P16404025185231864934
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (1 : ℝ)) * (A250081 (A167614 (n + 1)).toNat : ℝ)

end

end A250084.P16404025185231864934

/-! ## A250084.P1492108062412213285

`A250081(A167614(n+1))%A017345(n)`
-/

namespace A250084.P1492108062412213285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250081 (A167614 (n + 1)).toNat) (A017345 n)

end

end A250084.P1492108062412213285

/-! ## A250084.P8147645567944928995

`lcm(A158388(n), A250081(A167614(n+1)))`
-/

namespace A250084.P8147645567944928995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A250081 (A167614 (n + 1)).toNat)

end

end A250084.P8147645567944928995

/-! ## A250084.P15578155637046193163

`A033999(2*n)*A250081(A167614(n+1))`
-/

namespace A250084.P15578155637046193163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A250081 (A167614 (n + 1)).toNat

end

end A250084.P15578155637046193163

/-! ## A250084.P12347710968982291760

`A250081(A167614(n+1))+A005843(n)%2`
-/

namespace A250084.P12347710968982291760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167614 (n + 1)).toNat + Int.tmod (A005843 n) 2

end

end A250084.P12347710968982291760

/-! ## A250084.P17529185753813449302

`A007318(C(2, n))*A250081(A167614(n+1))`
-/

namespace A250084.P17529185753813449302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250081 (A167614 (n + 1)).toNat

end

end A250084.P17529185753813449302

/-! ## A250084.P71145608099145509

`char[A126988(n+1)]*A250081(A167614(n+1))`
-/

namespace A250084.P71145608099145509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250081 (A167614 (n + 1)).toNat

end

end A250084.P71145608099145509

/-! ## A250084.P16376349400088010884

`A000040(n+2)%2*A250081(A167614(n+1))`
-/

namespace A250084.P16376349400088010884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A250081 (A167614 (n + 1)).toNat

end

end A250084.P16376349400088010884

/-!
# A250085: Number of length 4+5 0..n arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250085, there is no canonical definition to state claims against.
-/

/-! ## A250085.P11713957017058244259

`A250081(∑[n+3]+7)`
-/

namespace A250085.P11713957017058244259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250085.P11713957017058244259

/-! ## A250085.P13685973419975713321

`and(-3, A250081(A167614(n+2)+1))`
-/

namespace A250085.P13685973419975713321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A250081 (A167614 (n + 2) + 1).toNat)

end

end A250085.P13685973419975713321

/-! ## A250085.P15872912085713879660

`char[A014681(n)]*A250081(A167614(n+2)+1)`
-/

namespace A250085.P15872912085713879660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250081 (A167614 (n + 2) + 1).toNat

end

end A250085.P15872912085713879660

/-! ## A250085.P11791708134730381876

`∏{e}[A014442(n+1), #]*A250081(A167614(n+2)+1)`
-/

namespace A250085.P11791708134730381876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A250081 (A167614 (n + 2) + 1).toNat

end

end A250085.P11791708134730381876

/-! ## A250085.P17081624017187930687

`∏{e}[A191028(n+1), #]*A250081(A167614(n+2)+1)`
-/

namespace A250085.P17081624017187930687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A250081 (A167614 (n + 2) + 1).toNat

end

end A250085.P17081624017187930687

/-! ## A250085.P4433173994132625919

`A066247(A001545(n))*A250081(A167614(n+2)+1)`
-/

namespace A250085.P4433173994132625919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A001545 n).toNat * A250081 (A167614 (n + 2) + 1).toNat

end

end A250085.P4433173994132625919

/-!
# A250086: Number of length 5+5 0..n arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250086, there is no canonical definition to state claims against.
-/

/-! ## A250086.P618741697779278775

`A250081(A167499(n+3))`
-/

namespace A250086.P618741697779278775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167499 (n + 3)).toNat

end

end A250086.P618741697779278775

/-! ## A250086.P175587051755086917

`A250081(A155212(n)+13)`
-/

namespace A250086.P175587051755086917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A155212 n + 13).toNat

end

end A250086.P175587051755086917

/-! ## A250086.P12976017512306269587

`A250081(A056000(n)+15)`
-/

namespace A250086.P12976017512306269587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A056000 n + 15).toNat

end

end A250086.P12976017512306269587

/-! ## A250086.P4640483727684368176

`A250081(A000217(n+4)+5)`
-/

namespace A250086.P4640483727684368176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000217 (n + 4) + 5).toNat

end

end A250086.P4640483727684368176

/-! ## A250086.P17842681007793138343

`A250081(A173036(n)+A016825(n))`
-/

namespace A250086.P17842681007793138343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A173036 n + A016825 n).toNat

end

end A250086.P17842681007793138343

/-! ## A250086.P4668896949605494525

`A250081(A038722(Δ[A023545(n+1)]))`
-/

namespace A250086.P4668896949605494525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A250086.P4668896949605494525

/-!
# A250087: Number of length 6+5 0..n arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250087, there is no canonical definition to state claims against.
-/

/-! ## A250087.P11637036676661002856

`A250081(A167499(n+4)+1)`
-/

namespace A250087.P11637036676661002856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167499 (n + 4) + 1).toNat

end

end A250087.P11637036676661002856

/-! ## A250087.P12661770383646231152

`A250081(A167614(n+4)+3)`
-/

namespace A250087.P12661770383646231152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167614 (n + 4) + 3).toNat

end

end A250087.P12661770383646231152

/-! ## A250087.P3579763392736088366

`A250081(A133263(n+5)+4)`
-/

namespace A250087.P3579763392736088366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A133263 (n + 5) + 4).toNat

end

end A250087.P3579763392736088366

/-! ## A250087.P10941865182406631695

`A250081(A000217(n+5)+6)`
-/

namespace A250087.P10941865182406631695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000217 (n + 5) + 6).toNat

end

end A250087.P10941865182406631695

/-! ## A250087.P3411070399183828344

`A250081(A055998(n+5)-A005843(n+2))`
-/

namespace A250087.P3411070399183828344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A055998 (n + 5) - A005843 (n + 2)).toNat

end

end A250087.P3411070399183828344

/-! ## A250087.P5438186507106764800

`A250081(A002620(n+2)+A002620(n+9))`
-/

namespace A250087.P5438186507106764800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A250087.P5438186507106764800

/-! ## A250087.P6955162699416658298

`A250081(A027379(n+6)-A008486(n+4))`
-/

namespace A250087.P6955162699416658298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A027379 (n + 6) - A008486 (n + 4)).toNat

end

end A250087.P6955162699416658298

/-!
# A250088: Number of length 7+5 0..n arrays with every six consecutive terms having the maximum of some two terms equal to the minimum of the remaining four terms.

The programs for A250088, there is no canonical definition to state claims against.
-/

/-! ## A250088.P6946430817974831145

`A250081(A167487(n+5))`
-/

namespace A250088.P6946430817974831145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167487 (n + 5)).toNat

end

end A250088.P6946430817974831145

/-! ## A250088.P9263960997151914731

`A250081(A167499(n+5)+2)`
-/

namespace A250088.P9263960997151914731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167499 (n + 5) + 2).toNat

end

end A250088.P9263960997151914731

/-! ## A250088.P1373905128273429559

`A250081(A167614(n+5)+4)`
-/

namespace A250088.P1373905128273429559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A167614 (n + 5) + 4).toNat

end

end A250088.P1373905128273429559

/-! ## A250088.P837269728270493507

`A250081(A000217(n+6)+7)`
-/

namespace A250088.P837269728270493507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A000217 (n + 6) + 7).toNat

end

end A250088.P837269728270493507

/-! ## A250088.P3625229800378485755

`A250081(A133263(n+7)-(n+2))`
-/

namespace A250088.P3625229800378485755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A250088.P3625229800378485755

/-! ## A250088.P2204989053071217341

`A250081(A055998(n+9)-A008706(n+7))`
-/

namespace A250088.P2204989053071217341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250081 (A055998 (n + 9) - A008706 (n + 7)).toNat

end

end A250088.P2204989053071217341

/-!
# A250089: 5-smooth numbers (A051037) written in base 60, concatenating the decimal values of the sexagesimal digits.

The programs for A250089, there is no canonical definition to state claims against.
-/

/-! ## A250089.P8218008538839785078

`A055643(A051037(n+1))`
-/

namespace A250089.P8218008538839785078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A051037 (n + 1)).toNat

end

end A250089.P8218008538839785078

/-! ## A250089.P14940138267036794807

`A055643(eq[2, A141256(n)])`
-/

namespace A250089.P14940138267036794807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250089.P14940138267036794807

/-! ## A250089.P17530658114107095942

`A055643(record[A228732(n+1)])`
-/

namespace A250089.P17530658114107095942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A250089.P17530658114107095942

/-! ## A250089.P2185346437088680629

`A055643(A080193(n+1)/5)`
-/

namespace A250089.P2185346437088680629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.roundAway ((A080193 (n + 1) : ℚ) / 5)).toNat

end

end A250089.P2185346437088680629

/-! ## A250089.P1039679996273213940

`A055643(A108651(n+1)/8)`
-/

namespace A250089.P1039679996273213940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.roundAway ((A108651 (n + 1) : ℚ) / 8)).toNat

end

end A250089.P1039679996273213940

/-! ## A250089.P17833659424453314958

`A055643(A143207(n+1)/30)`
-/

namespace A250089.P17833659424453314958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.roundAway ((A143207 (n + 1) : ℚ) / 30)).toNat

end

end A250089.P17833659424453314958

/-! ## A250089.P14412741426092421807

`A055643(eq[1, (A030218(n)-A286137(n))²])`
-/

namespace A250089.P14412741426092421807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030218 n - A286137 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250089.P14412741426092421807

/-! ## A250089.P1120957853286353575

`A055643(record[A003965(n+1)/(A003965(n+1)-n)])`
-/

namespace A250089.P1120957853286353575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003965 (n + 1) : ℚ) / (A003965 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A250089.P1120957853286353575

/-!
# A250090: a(0)=1; for n>0, a(n) is the number not yet used which yields the smallest possible positive sum_{k=0..n} (-1)^(a(k)+1)*a(k).

The programs for A250090, there is no canonical definition to state claims against.
-/

/-! ## A250090.P9018580044967955917

`Δ[A004525(and(n, n-2))]+n`
-/

namespace A250090.P9018580044967955917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A250090.P9018580044967955917

/-! ## A250090.P6352884961918528323

`1-Δ[A285326(floor(n/2))]+n`
-/

namespace A250090.P6352884961918528323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285326 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A250090.P6352884961918528323

/-! ## A250090.P8465821603092824593

`1-Δ[A140472(A052928(n))]+n`
-/

namespace A250090.P8465821603092824593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A250090.P8465821603092824593

/-! ## A250090.P12003067205315769388

`1-Δ[A140472(2*A004526(n))]+n`
-/

namespace A250090.P12003067205315769388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (2 * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A250090.P12003067205315769388

/-! ## A250090.P7289323334900463574

`Δ[A000124(n)-A140472(A052928(n))]`
-/

namespace A250090.P7289323334900463574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A140472 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250090.P7289323334900463574

/-! ## A250090.P5597498218572500131

`Δ[A000217(n)-A140472(A052928(n))]`
-/

namespace A250090.P5597498218572500131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A140472 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250090.P5597498218572500131

/-! ## A250090.P4925051001198350969

`Δ[A000124(n)-A285326(A004526(n))]`
-/

namespace A250090.P4925051001198350969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A285326 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250090.P4925051001198350969

/-! ## A250090.P12484768272451289533

`Δ[A000217(n)-A285326(A004526(n))]`
-/

namespace A250090.P12484768272451289533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A285326 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250090.P12484768272451289533

/-! ## A250090.P8966099664756191449

`Δ[A000124(n)-A140472(2*A004526(n))]`
-/

namespace A250090.P8966099664756191449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A140472 (2 * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250090.P8966099664756191449

/-!
# A250092: a(n) = binomial( prime(n+4), prime(n) ).

The programs for A250092, the canonical program `A250092.P12769020912072488549` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250092 has offset 1).

The definition of A250092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250092.P1497155358864852432

`C(p?[2*(n+1)+7], record[A006530(n+2)])`
-/

namespace A250092.P1497155358864852432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A250092.P1497155358864852432

namespace A250092

/-- `C(p?[2*(n+1)+7], record[A006530(n+2)])` -/
def P1497155358864852432.Spec : Prop :=
  ∀ n, (P1497155358864852432.a n : ℤ) = A250092 (n + 1)

end A250092

/-! ## A250092.P13021072985245471473

`C(A000040(n+5), Δ[A007504(n)])`
-/

namespace A250092.P13021072985245471473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 5)).toNat (f1 (n + 1) - f1 n).toNat

end

end A250092.P13021072985245471473

namespace A250092

/-- `C(A000040(n+5), Δ[A007504(n)])` -/
def P13021072985245471473.Spec : Prop :=
  ∀ n, (P13021072985245471473.a n : ℤ) = A250092 (n + 1)

end A250092

/-! ## A250092.P15660653213405041548

`C(A065091(n+4), record[A051698(n)])`
-/

namespace A250092.P15660653213405041548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 4)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A250092.P15660653213405041548

namespace A250092

/-- `C(A065091(n+4), record[A051698(n)])` -/
def P15660653213405041548.Spec : Prop :=
  ∀ n, (P15660653213405041548.a n : ℤ) = A250092 (n + 1)

end A250092

/-! ## A250092.P12769020912072488549

`C(A000040(n+5), A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250092

/-- `C(A000040(n+5), A000040(n+1))` -/
def P12769020912072488549.Spec : Prop :=
  ∀ n, (P12769020912072488549.a n : ℤ) = A250092 (n + 1)

theorem P12769020912072488549.correct : P12769020912072488549.Spec := by
  intro n
  simp only [A250092, Nat.add_sub_cancel]

end A250092

/-! ## A250092.P2945897456654022160

`C(Δ[A007504(n+4)], A008864(n+1)-1)`
-/

namespace A250092.P2945897456654022160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A008864 (n + 1) - 1).toNat

end

end A250092.P2945897456654022160

namespace A250092

/-- `C(Δ[A007504(n+4)], A008864(n+1)-1)` -/
def P2945897456654022160.Spec : Prop :=
  ∀ n, (P2945897456654022160.a n : ℤ) = A250092 (n + 1)

end A250092

/-! ## A250092.P15256524993370801578

`C(Δ[A007504(n+4)], A040976(n+1)+2)`
-/

namespace A250092.P15256524993370801578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A040976 (n + 1) + 2).toNat

end

end A250092.P15256524993370801578

namespace A250092

/-- `C(Δ[A007504(n+4)], A040976(n+1)+2)` -/
def P15256524993370801578.Spec : Prop :=
  ∀ n, (P15256524993370801578.a n : ℤ) = A250092 (n + 1)

end A250092

/-! ## A250092.P6657161804086487401

`C(Δ[A007504(n+4)], A001748(n+1)/3)`
-/

namespace A250092.P6657161804086487401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

end

end A250092.P6657161804086487401

namespace A250092

/-- `C(Δ[A007504(n+4)], A001748(n+1)/3)` -/
def P6657161804086487401.Spec : Prop :=
  ∀ n, (P6657161804086487401.a n : ℤ) = A250092 (n + 1)

end A250092

/-! ## A250092.P4754477594613294415

`C(A000040(n+5), A255483(∑[n]))`
-/

namespace A250092.P4754477594613294415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 5)).toNat (A255483 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A250092.P4754477594613294415

namespace A250092

/-- `C(A000040(n+5), A255483(∑[n]))` -/
def P4754477594613294415.Spec : Prop :=
  ∀ n, (P4754477594613294415.a n : ℤ) = A250092 (n + 1)

end A250092

/-! ## A250092.P6280435177759843346

`C(A000040(n+5), ratio[A002110(n)])`
-/

namespace A250092.P6280435177759843346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 5)).toNat (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A250092.P6280435177759843346

namespace A250092

/-- `C(A000040(n+5), ratio[A002110(n)])` -/
def P6280435177759843346.Spec : Prop :=
  ∀ n, (P6280435177759843346.a n : ℤ) = A250092 (n + 1)

end A250092

/-! ## A250092.P285531014636315476

`C(A238853(n+5), A238853(n+1))`
-/

namespace A250092.P285531014636315476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A238853 (n + 5)).toNat (A238853 (n + 1)).toNat

end

end A250092.P285531014636315476

namespace A250092

/-- `C(A238853(n+5), A238853(n+1))` -/
def P285531014636315476.Spec : Prop :=
  ∀ n, (P285531014636315476.a n : ℤ) = A250092 (n + 1)

end A250092

/-!
# A250093: Squarefree part of Fibonacci(n^2).

The programs for A250093, there is no canonical definition to state claims against.
-/

/-! ## A250093.P5831941036718819745

`A069110((n+1)²)`
-/

namespace A250093.P5831941036718819745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 ((n + 1) ^ 2)

end

end A250093.P5831941036718819745

/-! ## A250093.P7587937818224780908

`record[A069110(A128227(n)²)]`
-/

namespace A250093.P7587937818224780908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 (A128227 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250093.P7587937818224780908

/-! ## A250093.P505201631077170155

`record[A069110(A133310(n)²)]`
-/

namespace A250093.P505201631077170155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250093.P505201631077170155

/-! ## A250093.P3504991241085626618

`record[A069110(A323907(n)²)]`
-/

namespace A250093.P3504991241085626618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 (A323907 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250093.P3504991241085626618

/-! ## A250093.P1977699504565223090

`record[A069110(A008833(n+1))]`
-/

namespace A250093.P1977699504565223090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 (A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250093.P1977699504565223090

/-!
# A250094: Positive integers k such that the numerator of the harmonic mean of the divisors of k is equal to k.

The programs for A250094, the canonical program `A250094.P12324605883810777152` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250094 has offset 1).

The definition of A250094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250094.P11270353301929733233

`∪[A006005(n+1), A346400(n+1)]`
-/

namespace A250094.P11270353301929733233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A250094.P11270353301929733233

namespace A250094

/-- `∪[A006005(n+1), A346400(n+1)]` -/
def P11270353301929733233.Spec : Prop :=
  ∀ n, (P11270353301929733233.a n : ℤ) = A250094 (n + 1)

end A250094

/-! ## A250094.P3953237504234713182

`∪[A255602(n+1), A346400(n+1)]`
-/

namespace A250094.P3953237504234713182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A250094.P3953237504234713182

namespace A250094

/-- `∪[A255602(n+1), A346400(n+1)]` -/
def P3953237504234713182.Spec : Prop :=
  ∀ n, (P3953237504234713182.a n : ℤ) = A250094 (n + 1)

end A250094

/-! ## A250094.P12324605883810777152

`eq[0, A348510(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A250094

/-- `eq[0, A348510(n+1)]+1` -/
def P12324605883810777152.Spec : Prop :=
  ∀ n, (P12324605883810777152.a n : ℤ) = A250094 (n + 1)

theorem P12324605883810777152.correct : P12324605883810777152.Spec := by
  intro n
  simp only [A250094, Nat.add_sub_cancel]

end A250094

/-! ## A250094.P9636666900979328157

`eq[A000005(n+1), A324121(n+1)]+1`
-/

namespace A250094.P9636666900979328157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A250094.P9636666900979328157

namespace A250094

/-- `eq[A000005(n+1), A324121(n+1)]+1` -/
def P9636666900979328157.Spec : Prop :=
  ∀ n, (P9636666900979328157.a n : ℤ) = A250094 (n + 1)

end A250094

/-! ## A250094.P8837633253345540314

`eq[n+1, A099377(n+1)]+1`
-/

namespace A250094.P8837633253345540314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A250094.P8837633253345540314

namespace A250094

/-- `eq[n+1, A099377(n+1)]+1` -/
def P8837633253345540314.Spec : Prop :=
  ∀ n, (P8837633253345540314.a n : ℤ) = A250094 (n + 1)

end A250094

/-! ## A250094.P3098654277740130855

`record[A099377(A003601(n+1))]`
-/

namespace A250094.P3098654277740130855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A003601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250094.P3098654277740130855

namespace A250094

/-- `record[A099377(A003601(n+1))]` -/
def P3098654277740130855.Spec : Prop :=
  ∀ n, P3098654277740130855.a n = A250094 (n + 1)

end A250094

/-! ## A250094.P16571916311997783664

`record[A099377(n+1)/A057021(n+1)²]`
-/

namespace A250094.P16571916311997783664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099377 (n + 1) : ℚ) / (A057021 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250094.P16571916311997783664

namespace A250094

/-- `record[A099377(n+1)/A057021(n+1)²]` -/
def P16571916311997783664.Spec : Prop :=
  ∀ n, P16571916311997783664.a n = (A250094 (n + 1) : ℚ)

end A250094

/-! ## A250094.P7292050121095406772

`A099377(record[(n+1)/(A099377(n+1)-n)])`
-/

namespace A250094.P7292050121095406772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A099377 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A250094.P7292050121095406772

namespace A250094

/-- `A099377(record[(n+1)/(A099377(n+1)-n)])` -/
def P7292050121095406772.Spec : Prop :=
  ∀ n, P7292050121095406772.a n = A250094 (n + 1)

end A250094

/-! ## A250094.P5377082708454575430

`eq[n, A099377(A123108(2*n))]`
-/

namespace A250094.P5377082708454575430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A250094.P5377082708454575430

namespace A250094

/-- `eq[n, A099377(A123108(2*n))]` -/
def P5377082708454575430.Spec : Prop :=
  ∀ n, (P5377082708454575430.a n : ℤ) = A250094 (n + 1)

end A250094

/-!
# A250096: Numerator of the harmonic mean of the prime factors, without multiplicity, of n.

The programs for A250096, there is no canonical definition to state claims against.
-/

/-! ## A250096.P11962617463553542383

`A001221(n+2)/A008472(n+2)*A323171(n+2)*A015053(A300271(2*(n+2)))`
-/

namespace A250096.P11962617463553542383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 2) : ℚ) / (A008472 (n + 2) : ℚ) * (A323171 (n + 2) : ℚ) * (A015053 (A300271 (2 * (n + 2))).toNat : ℚ)

end

end A250096.P11962617463553542383

/-! ## A250096.P1914895872418204498

`A007922(A078599(n+2))`
-/

namespace A250096.P1914895872418204498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007922 (A078599 (n + 2)).toNat

end

end A250096.P1914895872418204498

/-! ## A250096.P17270661948624323801

`A359033(A166140(n+2))`
-/

namespace A250096.P17270661948624323801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359033 (A166140 (n + 2)).toNat

end

end A250096.P17270661948624323801

/-! ## A250096.P13025989583931076097

`A008472(A122411((n+2)²)²)`
-/

namespace A250096.P13025989583931076097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A122411 ((n + 2) ^ 2) ^ 2).toNat

end

end A250096.P13025989583931076097

/-!
# A250097: Denominator of the harmonic mean of the prime factors, without multiplicity, of n.

The programs for A250097, there is no canonical definition to state claims against.
-/

/-! ## A250097.P16745219265526063203

`A026741(A028235(n+2)%A002189(n))`
-/

namespace A250097.P16745219265526063203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A028235 (n + 2)) (A002189 n)).toNat

end

end A250097.P16745219265526063203

/-! ## A250097.P1905665505382004624

`A361565(A290479(n+2))`
-/

namespace A250097.P1905665505382004624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361565 (A290479 (n + 2)).toNat

end

end A250097.P1905665505382004624

/-! ## A250097.P17632935426328291561

`A323462(A389595(n+2))`
-/

namespace A250097.P17632935426328291561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323462 (A389595 (n + 2)).toNat

end

end A250097.P17632935426328291561

/-! ## A250097.P15241323903078779950

`gcd(A097346(n), A323171(n+2))`
-/

namespace A250097.P15241323903078779950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097346 n) (A323171 (n + 2))

end

end A250097.P15241323903078779950

/-! ## A250097.P17174204668453281700

`A026741(A028235(∏{d}[n+2, #]))`
-/

namespace A250097.P17174204668453281700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A028235 (∏ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A250097.P17174204668453281700

/-!
# A250099: After A084937(n) has been computed, let m = largest term so far in A084937. Then a(n) = number of positive even integers < m that are missing from A084937 at this point.

The programs for A250099, there is no canonical definition to state claims against.
-/

/-! ## A250099.P6772097276498899498

`A249686(n+1)-A250100(n+1)`
-/

namespace A250099.P6772097276498899498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249686 (n + 1) - A250100 (n + 1)

end

end A250099.P6772097276498899498

/-! ## A250099.P5605821494959646695

`A004526(A249686(n+1)+A002264(n))`
-/

namespace A250099.P5605821494959646695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A249686 (n + 1) + A002264 n).toNat

end

end A250099.P5605821494959646695

/-! ## A250099.P16992769011314934951

`A004524(A249686(n+1)+A008611(n))`
-/

namespace A250099.P16992769011314934951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A249686 (n + 1) + A008611 n).toNat

end

end A250099.P16992769011314934951

/-! ## A250099.P2076407519099294947

`A004526(A249686(n+1)+A008611(n))`
-/

namespace A250099.P2076407519099294947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A249686 (n + 1) + A008611 n).toNat

end

end A250099.P2076407519099294947

/-! ## A250099.P2496805334917219764

`A000194(A008611(n)*A249686(n+1))`
-/

namespace A250099.P2496805334917219764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A008611 n * A249686 (n + 1)).toNat

end

end A250099.P2496805334917219764

/-! ## A250099.P15605556856074580690

`A000196(A008611(n)*A249686(n+1))`
-/

namespace A250099.P15605556856074580690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008611 n * A249686 (n + 1)).toNat

end

end A250099.P15605556856074580690

