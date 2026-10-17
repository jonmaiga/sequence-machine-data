import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A325501: Product of Heinz numbers over all integer partitions of n.

The programs for A325501, there is no canonical definition to state claims against.
-/

/-! ## A325501.P8270263625272054486

`lcm(n+1, A145899(n!))`
-/

namespace A325501.P8270263625272054486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A145899 (Nat.factorial n))

end

end A325501.P8270263625272054486

/-!
# A325502: Heinz number of row n of Pascal's triangle A007318.

The programs for A325502, there is no canonical definition to state claims against.
-/

/-! ## A325502.P5070438762584111722

`∑[A071165(A091073(n))]`
-/

namespace A325502.P5070438762584111722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071165 (A091073 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325502.P5070438762584111722

/-!
# A325504: Product of products of parts over all strict integer partitions of n.

The programs for A325504, there is no canonical definition to state claims against.
-/

/-! ## A325504.P4020227360621824909

`A003963(A325506(n))`
-/

namespace A325504.P4020227360621824909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A325506 n).toNat

end

end A325504.P4020227360621824909

/-! ## A325504.P6706815334619903713

`A137387(A062724(n))`
-/

namespace A325504.P6706815334619903713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137387 (A062724 n).toNat

end

end A325504.P6706815334619903713

/-! ## A325504.P1757834692500728493

`A137387(A014217(n)+1)`
-/

namespace A325504.P1757834692500728493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137387 (A014217 n + 1).toNat

end

end A325504.P1757834692500728493

/-! ## A325504.P587372292511199055

`A137387(A034297(n)+1)`
-/

namespace A325504.P587372292511199055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137387 (A034297 n + 1).toNat

end

end A325504.P587372292511199055

/-!
# A325505: Heinz number of the set of Heinz numbers of all strict integer partitions of n.

The programs for A325505, there is no canonical definition to state claims against.
-/

/-! ## A325505.P13155637996647332011

`A019565(∏[∏[(2*n)^(n%2)]])`
-/

namespace A325505.P13155637996647332011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A325505.P13155637996647332011

/-!
# A325506: Product of Heinz numbers over all strict integer partitions of n.

The programs for A325506, there is no canonical definition to state claims against.
-/

/-! ## A325506.P15992066013323719366

`A119319(A041281(n))`
-/

namespace A325506.P15992066013323719366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119319 (A041281 n).toNat

end

end A325506.P15992066013323719366

/-! ## A325506.P17405197656270734284

`∏{p}[A325505(n), A000720(#)]`
-/

namespace A325506.P17405197656270734284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A325506.P17405197656270734284

/-!
# A325507: Heinz number of the integer partition whose parts are the multiplicities in the multiset union of all integer partitions of n.

The programs for A325507, there is no canonical definition to state claims against.
-/

/-! ## A325507.P14036771070558448646

`A396825(a(n-1))+n` with `a(0)=1`
-/

namespace A325507.P14036771070558448646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A396825 (a (n - 1)).toNat + (n : ℤ)

end

end A325507.P14036771070558448646

/-!
# A325508: Product of primes indexed by the prime exponents of n!.

The programs for A325508, there is no canonical definition to state claims against.
-/

/-! ## A325508.P13990677341807297665

`∏{e}[n!, A000040(#)]`
-/

namespace A325508.P13990677341807297665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)

end

end A325508.P13990677341807297665

/-! ## A325508.P16653043876593763322

`∏{e}[n!, A003459(#)]`
-/

namespace A325508.P16653043876593763322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A003459 (Nat.factorization (f1 n) p)

end

end A325508.P16653043876593763322

/-! ## A325508.P15659226227199835329

`∏{e}[n!, A007500(#)]`
-/

namespace A325508.P15659226227199835329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007500 (Nat.factorization (f1 n) p)

end

end A325508.P15659226227199835329

/-! ## A325508.P8848712526175743662

`∏{e}[n!, A007693(#)]`
-/

namespace A325508.P8848712526175743662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007693 (Nat.factorization (f1 n) p)

end

end A325508.P8848712526175743662

/-! ## A325508.P11336743535826907183

`∏{e}[n!, A028864(#)]`
-/

namespace A325508.P11336743535826907183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A028864 (Nat.factorization (f1 n) p)

end

end A325508.P11336743535826907183

/-!
# A325509: Number of factorizations of n! into factorial numbers > 1.

The programs for A325509, there is no canonical definition to state claims against.
-/

/-! ## A325509.P17415168361861182185

`A034876(floor(acot(n)+n))+1`
-/

namespace A325509.P17415168361861182185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A325509.P17415168361861182185

/-! ## A325509.P2737656745948540880

`A034876(round(acot(n)+n))+1`
-/

namespace A325509.P2737656745948540880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A325509.P2737656745948540880

/-! ## A325509.P13135168068630813812

`A034876(abs(1-n)+1)+1`
-/

namespace A325509.P13135168068630813812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A325509.P13135168068630813812

/-! ## A325509.P5819797084049181521

`(A034876(n)+1)*a(n%2)` with `a(0)=1, a(1)=1`
-/

namespace A325509.P5819797084049181521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A034876 n + 1) * a (n % 2)

end

end A325509.P5819797084049181521

/-! ## A325509.P9816413052279793754

`A034876(n)-A347323(a(n-1))+1` with `a(0)=1`
-/

namespace A325509.P9816413052279793754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034876 n - A347323 (a (n - 1)).toNat + 1

end

end A325509.P9816413052279793754

/-! ## A325509.P4421042464316086117

`(A034876(n)+1)^a(A001222(a(n-1)))` with `a(0)=1`
-/

namespace A325509.P4421042464316086117
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A034876 n + 1 : ℝ) ^ (a (A001222 (SequenceMachineLib.roundAway (a (n - 1))).toNat).toNat)

end

end A325509.P4421042464316086117

/-! ## A325509.P10482135226964328363

`(A034876(n)+1)*a(A008683(n+1)+1)` with `a(0)=1`
-/

namespace A325509.P10482135226964328363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A034876 n + 1) * a (A008683 (n + 1) + 1).toNat

end

end A325509.P10482135226964328363

/-! ## A325509.P7996858597856652445

`A034876(n)-A037813(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A325509.P7996858597856652445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034876 n - A037813 (a (n - 1) + 1).toNat + 1

end

end A325509.P7996858597856652445

/-! ## A325509.P2053626900261567709

`(A034876(n)+1)*a(A000032(C(2, n+2))-2)` with `a(0)=1`
-/

namespace A325509.P2053626900261567709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A034876 n + 1) * a (A000032 (Nat.choose 2 (n + 2)) - 2).toNat

end

end A325509.P2053626900261567709

/-! ## A325509.P17537390650749927438

`A034878(a(A034876(n)))+A034876(n)` with `a(0)=1`
-/

namespace A325509.P17537390650749927438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034878 (a (A034876 n).toNat).toNat + A034876 n

end

end A325509.P17537390650749927438

/-! ## A325509.P2612839633972891831

`(A034876(n)+1)*A000010(a(A001222(n)))` with `a(0)=1`
-/

namespace A325509.P2612839633972891831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A034876 n + 1) * A000010 (a (A001222 n).toNat).toNat

end

end A325509.P2612839633972891831

/-!
# A325510: Number of non-isomorphic multiset partitions of the multiset of prime indices of n!.

The programs for A325510, there is no canonical definition to state claims against.
-/

/-! ## A325510.P1232393265462274295

`A317791(n!)`
-/

namespace A325510.P1232393265462274295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (Nat.factorial n)

end

end A325510.P1232393265462274295

/-! ## A325510.P16725936056697410080

`A318285(A325508(n))`
-/

namespace A325510.P16725936056697410080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318285 (A325508 n).toNat

end

end A325510.P16725936056697410080

/-! ## A325510.P3694372317029810225

`A318285(A181819(n!))`
-/

namespace A325510.P3694372317029810225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318285 (A181819 (Nat.factorial n)).toNat

end

end A325510.P3694372317029810225

/-! ## A325510.P9156119698021989658

`A317791(∏[n+1]/(n+1))`
-/

namespace A325510.P9156119698021989658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A325510.P9156119698021989658

/-!
# A325511: Numbers whose prime signature is that of a factorial number.

The programs for A325511, there is no canonical definition to state claims against.
-/

/-! ## A325511.P12701191703856473796

`eq[0, A114920(A074206(n))]`
-/

namespace A325511.P12701191703856473796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114920 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325511.P12701191703856473796

/-! ## A325511.P11801720350386507096

`eq[0, A230093(A002033(n))]+1`
-/

namespace A325511.P11801720350386507096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A002033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325511.P11801720350386507096

/-! ## A325511.P698339088370076426

`eq[2, A002260(or(2, A104725(n)))]`
-/

namespace A325511.P698339088370076426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.lor 2 (A104725 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325511.P698339088370076426

/-! ## A325511.P17908568254668930371

`filter[A239289(n+1), A359473(#)]`
-/

namespace A325511.P17908568254668930371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A325511.P17908568254668930371

/-! ## A325511.P11076927444709576262

`eq[1, A034968(A046523(n+1))]+1`
-/

namespace A325511.P11076927444709576262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A046523 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325511.P11076927444709576262

/-! ## A325511.P2549663107006270131

`eq[1, A054390(A273013(n+1))]+1`
-/

namespace A325511.P2549663107006270131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A273013 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325511.P2549663107006270131

/-! ## A325511.P13091253996571420059

`∩[A036537(n+1), A239289(n+1)]`
-/

namespace A325511.P13091253996571420059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325511.P13091253996571420059

/-! ## A325511.P6404800670015530957

`∩[A239289(n+1), A336591(n+1)]`
-/

namespace A325511.P6404800670015530957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325511.P6404800670015530957

/-! ## A325511.P3727177738824301045

`eq[1, A001222(A318323(n+1)+1)]+1`
-/

namespace A325511.P3727177738824301045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318323 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325511.P3727177738824301045

/-! ## A325511.P15553785172870602475

`eq[A010054(A104725(n)), A056926(n)]`
-/

namespace A325511.P15553785172870602475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A104725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325511.P15553785172870602475

/-!
# A325513: Heinz number of the integer partition whose parts are the multiplicities in the multiset union of all strict integer partitions of n.

The programs for A325513, there is no canonical definition to state claims against.
-/

/-! ## A325513.P9536452828093280416

`A349387(A000108(n)*A095179(n+1))`
-/

namespace A325513.P9536452828093280416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 (A000108 n * A095179 (n + 1)).toNat

end

end A325513.P9536452828093280416

/-! ## A325513.P6831562775963072089

`A349387(A080938(n)*A095179(n+1))`
-/

namespace A325513.P6831562775963072089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 (A080938 n * A095179 (n + 1)).toNat

end

end A325513.P6831562775963072089

/-! ## A325513.P2550418795483406634

`A326079(A333150(n)%A003525(n+1))`
-/

namespace A325513.P2550418795483406634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326079 (Int.tmod (A333150 n) (A003525 (n + 1))).toNat

end

end A325513.P2550418795483406634

/-!
# A325514: Heinz number of row n of the triangle of partition numbers A008284.

The programs for A325514, there is no canonical definition to state claims against.
-/

/-! ## A325514.P14161954245370108269

`a(n-2)*A309131(a(n-2))` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A325514.P14161954245370108269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  a (n - 2) * A309131 (a (n - 2)).toNat

end

end A325514.P14161954245370108269

/-! ## A325514.P6231957653886197750

`A000010(A114304(n!))`
-/

namespace A325514.P6231957653886197750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A114304 (Nat.factorial n)).toNat

end

end A325514.P6231957653886197750

/-! ## A325514.P17752274386604392537

`A316886(A011782(n)+A000010(n+1))`
-/

namespace A325514.P17752274386604392537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (A011782 n + A000010 (n + 1)).toNat

end

end A325514.P17752274386604392537

/-!
# A325515: Sum of sums of omegas of the parts over all strict integer partitions of n.

The programs for A325515, there is no canonical definition to state claims against.
-/

/-! ## A325515.P8304002922813763065

`A001935(n)-A159917(A346694(n+1))`
-/

namespace A325515.P8304002922813763065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A159917 (A346694 (n + 1)).toNat

end

end A325515.P8304002922813763065

/-!
# A325516: Triangle read by rows: T(n, k) = (1/4)*n*(1 - (-1)^(n - k) + 2*(n - k)^2), with 0 <= k < n.

The programs for A325516, the canonical program `A325516.P1401328981035964672` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325516 has offset 1).

The definition of A325516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325516.P7745091056405126409

`round(sqrt(2*(n+1)))*A000982(A004736(n+1))`
-/

namespace A325516.P7745091056405126409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * A000982 (A004736 (n + 1)).toNat

end

end A325516.P7745091056405126409

namespace A325516

/-- `round(sqrt(2*(n+1)))*A000982(A004736(n+1))` -/
def P7745091056405126409.Spec : Prop :=
  ∀ n, P7745091056405126409.a n = A325516 (n + 1)

end A325516

/-! ## A325516.P1401328981035964672

`∑[A010054(n)]*A166515(A099375(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A325516

/-- `∑[A010054(n)]*A166515(A099375(n))` -/
def P1401328981035964672.Spec : Prop :=
  ∀ n, P1401328981035964672.a n = A325516 (n + 1)

theorem P1401328981035964672.correct : P1401328981035964672.Spec := by
  intro n
  simp only [A325516, Nat.add_sub_cancel]

end A325516

/-! ## A325516.P16721578227473015130

`A002024(n+1)*A166515(A099375(n))`
-/

namespace A325516.P16721578227473015130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A166515 (A099375 n).toNat

end

end A325516.P16721578227473015130

namespace A325516

/-- `A002024(n+1)*A166515(A099375(n))` -/
def P16721578227473015130.Spec : Prop :=
  ∀ n, P16721578227473015130.a n = A325516 (n + 1)

end A325516

/-! ## A325516.P18005443000188712180

`A000982(A004736(n+1))*A002024(n+1)`
-/

namespace A325516.P18005443000188712180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A004736 (n + 1)).toNat * A002024 (n + 1)

end

end A325516.P18005443000188712180

namespace A325516

/-- `A000982(A004736(n+1))*A002024(n+1)` -/
def P18005443000188712180.Spec : Prop :=
  ∀ n, P18005443000188712180.a n = A325516 (n + 1)

end A325516

/-! ## A325516.P187983403081602444

`A001971(2*A004736(n+1))*A002024(n+1)`
-/

namespace A325516.P187983403081602444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * A004736 (n + 1)).toNat * A002024 (n + 1)

end

end A325516.P187983403081602444

namespace A325516

/-- `A001971(2*A004736(n+1))*A002024(n+1)` -/
def P187983403081602444.Spec : Prop :=
  ∀ n, P187983403081602444.a n = A325516 (n + 1)

end A325516

/-! ## A325516.P696841993136781453

`round(sqrt(2*(n+1)))*A110654(A004736(n+1)²)`
-/

namespace A325516.P696841993136781453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * A110654 (A004736 (n + 1) ^ 2).toNat

end

end A325516.P696841993136781453

namespace A325516

/-- `round(sqrt(2*(n+1)))*A110654(A004736(n+1)²)` -/
def P696841993136781453.Spec : Prop :=
  ∀ n, P696841993136781453.a n = A325516 (n + 1)

end A325516

/-! ## A325516.P14616756260682166930

`∑[A010054(n)]*A004525(A055461(n+1))`
-/

namespace A325516.P14616756260682166930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A004525 (A055461 (n + 1)).toNat

end

end A325516.P14616756260682166930

namespace A325516

/-- `∑[A010054(n)]*A004525(A055461(n+1))` -/
def P14616756260682166930.Spec : Prop :=
  ∀ n, P14616756260682166930.a n = A325516 (n + 1)

end A325516

/-! ## A325516.P10596172939323834295

`A002024(n+1)*A004525(A055461(n+1))`
-/

namespace A325516.P10596172939323834295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A004525 (A055461 (n + 1)).toNat

end

end A325516.P10596172939323834295

namespace A325516

/-- `A002024(n+1)*A004525(A055461(n+1))` -/
def P10596172939323834295.Spec : Prop :=
  ∀ n, P10596172939323834295.a n = A325516 (n + 1)

end A325516

/-! ## A325516.P11624583447317754160

`A002024(n+1)*A004525(A004736(n+1)²)`
-/

namespace A325516.P11624583447317754160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A004525 (A004736 (n + 1) ^ 2).toNat

end

end A325516.P11624583447317754160

namespace A325516

/-- `A002024(n+1)*A004525(A004736(n+1)²)` -/
def P11624583447317754160.Spec : Prop :=
  ∀ n, P11624583447317754160.a n = A325516 (n + 1)

end A325516

/-! ## A325516.P4581843929480493477

`(A003056(n)+1)*A004525(A004736(n+1)²)`
-/

namespace A325516.P4581843929480493477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A004525 (A004736 (n + 1) ^ 2).toNat

end

end A325516.P4581843929480493477

namespace A325516

/-- `(A003056(n)+1)*A004525(A004736(n+1)²)` -/
def P4581843929480493477.Spec : Prop :=
  ∀ n, P4581843929480493477.a n = A325516 (n + 1)

end A325516

/-! ## A325516.P13656910854539786950

`A002024(n+1)*A065033(A004736(n+1)²)`
-/

namespace A325516.P13656910854539786950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A065033 (A004736 (n + 1) ^ 2).toNat

end

end A325516.P13656910854539786950

namespace A325516

/-- `A002024(n+1)*A065033(A004736(n+1)²)` -/
def P13656910854539786950.Spec : Prop :=
  ∀ n, P13656910854539786950.a n = A325516 (n + 1)

end A325516

/-! ## A325516.P6927976950928487802

`A001222(A140513(n))*A166515(A099375(n))`
-/

namespace A325516.P6927976950928487802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A140513 n).toNat * A166515 (A099375 n).toNat

end

end A325516.P6927976950928487802

namespace A325516

/-- `A001222(A140513(n))*A166515(A099375(n))` -/
def P6927976950928487802.Spec : Prop :=
  ∀ n, P6927976950928487802.a n = A325516 (n + 1)

end A325516

/-!
# A325517: a(n) = n*((2*n + 1)*(2*n^2 + 2*n + 3) - 3*(-1)^n)/24.

The programs for A325517, the canonical program `A325517.P6685838483420274373` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325517 has offset 0).

The definition of A325517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325517.P6685838483420274373

`n*((2*n+1)*(2*n²+2*n+3)-3*(-1)^n)/24`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A325517

/-- `n*((2*n+1)*(2*n²+2*n+3)-3*(-1)^n)/24` -/
def P6685838483420274373.Spec : Prop :=
  ∀ n, P6685838483420274373.a n = (A325517 n : ℚ)

end A325517

/-! ## A325517.P15604618192517044339

`n*∑[n%2+n²]/2`
-/

namespace A325517.P15604618192517044339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A325517.P15604618192517044339

namespace A325517

/-- `n*∑[n%2+n²]/2` -/
def P15604618192517044339.Spec : Prop :=
  ∀ n, P15604618192517044339.a n = (A325517 n : ℚ)

end A325517

/-! ## A325517.P10718524779129810318

`floor(n*∑[∑[a(n-2)+2]])` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A325517.P10718524779129810318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A325517.P10718524779129810318

namespace A325517

/-- `floor(n*∑[∑[a(n-2)+2]])` -/
def P10718524779129810318.Spec : Prop :=
  ∀ n, (P10718524779129810318.a n : ℤ) = A325517 n

end A325517

/-! ## A325517.P13563222119178125604

`A071239(n)+A006584(n)`
-/

namespace A325517.P13563222119178125604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n + A006584 n

end

end A325517.P13563222119178125604

namespace A325517

/-- `A071239(n)+A006584(n)` -/
def P13563222119178125604.Spec : Prop :=
  ∀ n, P13563222119178125604.a n = A325517 n

end A325517

/-! ## A325517.P808708157575666702

`A212578(n)+A071244(n)`
-/

namespace A325517.P808708157575666702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 n + A071244 n

end

end A325517.P808708157575666702

namespace A325517

/-- `A212578(n)+A071244(n)` -/
def P808708157575666702.Spec : Prop :=
  ∀ n, P808708157575666702.a n = A325517 n

end A325517

/-! ## A325517.P7165186882799533238

`A325656(n)-A008911(n)`
-/

namespace A325517.P7165186882799533238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325656 n - A008911 n

end

end A325517.P7165186882799533238

namespace A325517

/-- `A325656(n)-A008911(n)` -/
def P7165186882799533238.Spec : Prop :=
  ∀ n, P7165186882799533238.a n = A325517 n

end A325517

/-! ## A325517.P2436240550497133023

`A274772(n)-A280186(n)`
-/

namespace A325517.P2436240550497133023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274772 n - A280186 n

end

end A325517.P2436240550497133023

namespace A325517

/-- `A274772(n)-A280186(n)` -/
def P2436240550497133023.Spec : Prop :=
  ∀ n, P2436240550497133023.a n = A325517 n

end A325517

/-!
# A325518: Difference sequence of A325425.

The programs for A325518, there is no canonical definition to state claims against.
-/

/-! ## A325518.P10853031258610774923

`Δ[A325425(n+1)]`
-/

namespace A325518.P10853031258610774923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325518.P10853031258610774923

/-! ## A325518.P10824865036985616967

`abs(Δ[A325425(ϕ²-(ϕ-n))])`
-/

namespace A325518.P10824865036985616967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325425 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325518.P10824865036985616967

/-! ## A325518.P17989126368575202101

`A325425(n+2)-A325425(n+1)`
-/

namespace A325518.P17989126368575202101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325425 (n + 2) - A325425 (n + 1)

end

end A325518.P17989126368575202101

/-! ## A325518.P5501932702019558337

`Δ[record[A325425(A152271(n))]]`
-/

namespace A325518.P5501932702019558337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325425 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325518.P5501932702019558337

/-! ## A325518.P2150843895651791795

`Δ[record[A325425(A158416(n))]]`
-/

namespace A325518.P2150843895651791795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325425 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325518.P2150843895651791795

/-! ## A325518.P16737364411529355876

`Δ[record[A325425(A134478(n))]]`
-/

namespace A325518.P16737364411529355876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325425 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325518.P16737364411529355876

/-! ## A325518.P11987763801656383203

`A001222(ratio[A131577(A325425(n+1))])`
-/

namespace A325518.P11987763801656383203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A325425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A325518.P11987763801656383203

/-!
# A325519: Difference sequence of A325426.

The programs for A325519, there is no canonical definition to state claims against.
-/

/-! ## A325519.P14846063258633636858

`Δ[A325426(n+1)]`
-/

namespace A325519.P14846063258633636858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325519.P14846063258633636858

/-! ## A325519.P5505134993224166301

`abs(Δ[A325426(ϕ²-(ϕ-n))])`
-/

namespace A325519.P5505134993224166301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325519.P5505134993224166301

/-! ## A325519.P5637233128550449785

`A325426(n+2)-A325426(n+1)`
-/

namespace A325519.P5637233128550449785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (n + 2) - A325426 (n + 1)

end

end A325519.P5637233128550449785

/-! ## A325519.P1343635804513653938

`Δ[record[A325426(A152271(n))]]`
-/

namespace A325519.P1343635804513653938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325519.P1343635804513653938

/-! ## A325519.P1429765670438832634

`Δ[record[A325426(A158416(n))]]`
-/

namespace A325519.P1429765670438832634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325519.P1429765670438832634

/-! ## A325519.P10526498914519634817

`Δ[A325426(A028242(2*n))%A167499(n)]`
-/

namespace A325519.P10526498914519634817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325426 (A028242 (2 * n)).toNat) (A167499 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325519.P10526498914519634817

/-! ## A325519.P8801011989354291240

`Δ[record[A325426(A263111(n))]]`
-/

namespace A325519.P8801011989354291240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325519.P8801011989354291240

/-! ## A325519.P11438971487515595238

`Δ[A325426(A028242(2*n))]%A140504(n)`
-/

namespace A325519.P11438971487515595238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A140504 n)

end

end A325519.P11438971487515595238

/-! ## A325519.P8128113401072086653

`Δ[record[A325426(A286602(n))]]`
-/

namespace A325519.P8128113401072086653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (A286602 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325519.P8128113401072086653

/-! ## A325519.P9331674462675682157

`Δ[record[A325426(A134478(n))]]`
-/

namespace A325519.P9331674462675682157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325426 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325519.P9331674462675682157

/-!
# A325520: Difference sequence of A325427.

The programs for A325520, there is no canonical definition to state claims against.
-/

/-! ## A325520.P12519593483909336747

`Δ[A325427(n+1)]`
-/

namespace A325520.P12519593483909336747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325520.P12519593483909336747

/-! ## A325520.P11864663653279168253

`A325427(n+2)-A325427(n+1)`
-/

namespace A325520.P11864663653279168253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (n + 2) - A325427 (n + 1)

end

end A325520.P11864663653279168253

/-! ## A325520.P7905382700950427674

`Δ[record[A325427(A152271(n))]]`
-/

namespace A325520.P7905382700950427674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325520.P7905382700950427674

/-! ## A325520.P12750667759092496545

`Δ[record[A325427(A158416(n))]]`
-/

namespace A325520.P12750667759092496545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325520.P12750667759092496545

/-! ## A325520.P8552757899928206278

`Δ[record[A325427(A263111(n))]]`
-/

namespace A325520.P8552757899928206278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325520.P8552757899928206278

/-! ## A325520.P10379298831932944154

`Δ[record[A325427(A286602(n))]]`
-/

namespace A325520.P10379298831932944154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (A286602 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325520.P10379298831932944154

/-! ## A325520.P5016707002870450547

`Δ[record[A325427(A101504(n))]]`
-/

namespace A325520.P5016707002870450547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (A101504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325520.P5016707002870450547

/-! ## A325520.P8148575379897542276

`Δ[record[A325427(A028920(n))]]`
-/

namespace A325520.P8148575379897542276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325520.P8148575379897542276

/-! ## A325520.P1461660628244611317

`Δ[record[A325427(A193739(n))]]`
-/

namespace A325520.P1461660628244611317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325427 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325520.P1461660628244611317

/-!
# A325521: Difference sequence of A325428.

The programs for A325521, there is no canonical definition to state claims against.
-/

/-! ## A325521.P9887803591153452136

`Δ[A325428(n+1)]`
-/

namespace A325521.P9887803591153452136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325521.P9887803591153452136

/-! ## A325521.P7455275536895793264

`abs(Δ[A325428(ϕ²-(ϕ-n))])`
-/

namespace A325521.P7455275536895793264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325428 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325521.P7455275536895793264

/-! ## A325521.P15269790089067537376

`A325428(n+2)-A325428(n+1)`
-/

namespace A325521.P15269790089067537376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325428 (n + 2) - A325428 (n + 1)

end

end A325521.P15269790089067537376

/-! ## A325521.P2725406218609915333

`A325428(A000027(n+2))%A325428(n+1)`
-/

namespace A325521.P2725406218609915333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325428 (A000027 (n + 2)).toNat) (A325428 (n + 1))

end

end A325521.P2725406218609915333

/-! ## A325521.P10263105136320411869

`A032563(A325428(n+2)%A325428(n+1))`
-/

namespace A325521.P10263105136320411869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032563 (Int.tmod (A325428 (n + 2)) (A325428 (n + 1))).toNat

end

end A325521.P10263105136320411869

/-! ## A325521.P9227553545430563840

`Δ[record[A325428(A101504(n))]]`
-/

namespace A325521.P9227553545430563840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325428 (A101504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325521.P9227553545430563840

/-!
# A325522: Difference sequence of A325429.

The programs for A325522, there is no canonical definition to state claims against.
-/

/-! ## A325522.P16718168420752289763

`Δ[A325429(n+1)]`
-/

namespace A325522.P16718168420752289763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325522.P16718168420752289763

/-! ## A325522.P9827490838278478917

`Δ[record[A325429(A328395(n))]]`
-/

namespace A325522.P9827490838278478917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325522.P9827490838278478917

/-! ## A325522.P8605162047517880806

`Δ[record[A325429(A328396(n))]]`
-/

namespace A325522.P8605162047517880806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325522.P8605162047517880806

/-! ## A325522.P3792354586588889044

`A325429(n+2)-A325429(n+1)`
-/

namespace A325522.P3792354586588889044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (n + 2) - A325429 (n + 1)

end

end A325522.P3792354586588889044

/-! ## A325522.P2295102999927260745

`Δ[record[A325429(A158416(n))]]`
-/

namespace A325522.P2295102999927260745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325522.P2295102999927260745

/-! ## A325522.P13224550720430948481

`Δ[record[A325429(A328388(n))]]`
-/

namespace A325522.P13224550720430948481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (A328388 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325522.P13224550720430948481

/-!
# A325523: Difference sequence of A325430.

The programs for A325523, there is no canonical definition to state claims against.
-/

/-! ## A325523.P10315782098825144976

`Δ[A325430(n+1)]`
-/

namespace A325523.P10315782098825144976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325523.P10315782098825144976

/-! ## A325523.P11601298639714170844

`Δ[record[A325430(A291769(n))]]`
-/

namespace A325523.P11601298639714170844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325523.P11601298639714170844

/-! ## A325523.P4285046020950838929

`A325430(n+2)-A325430(n+1)`
-/

namespace A325523.P4285046020950838929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (n + 2) - A325430 (n + 1)

end

end A325523.P4285046020950838929

/-! ## A325523.P13036336468616198770

`Δ[record[A325430(A152271(n))]]`
-/

namespace A325523.P13036336468616198770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325523.P13036336468616198770

/-! ## A325523.P503629050578851562

`Δ[record[A325430(A158416(n))]]`
-/

namespace A325523.P503629050578851562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325523.P503629050578851562

/-! ## A325523.P7541634252654534051

`Δ[record[A325430(A263111(n))]]`
-/

namespace A325523.P7541634252654534051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325523.P7541634252654534051

/-! ## A325523.P16756225383061662731

`Δ[record[A325430(A286602(n))]]`
-/

namespace A325523.P16756225383061662731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (A286602 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325523.P16756225383061662731

/-! ## A325523.P3922082427134334037

`Δ[record[A325430(A134478(n))]]`
-/

namespace A325523.P3922082427134334037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325523.P3922082427134334037

/-! ## A325523.P8045878360297263336

`Δ[record[A325430(A193739(n))]]`
-/

namespace A325523.P8045878360297263336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325523.P8045878360297263336

/-!
# A325524: Difference sequence of A325431.

The programs for A325524, there is no canonical definition to state claims against.
-/

/-! ## A325524.P4776297330214581104

`Δ[A325431(n+1)]`
-/

namespace A325524.P4776297330214581104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325524.P4776297330214581104

/-! ## A325524.P15904441445977574319

`A325431(n+2)-A325431(n+1)`
-/

namespace A325524.P15904441445977574319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325431 (n + 2) - A325431 (n + 1)

end

end A325524.P15904441445977574319

/-! ## A325524.P6233974428297314227

`A068499(A325431(n+2)%(A325431(n+1)+1)+1)`
-/

namespace A325524.P6233974428297314227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (Int.tmod (A325431 (n + 2)) (A325431 (n + 1) + 1) + 1).toNat

end

end A325524.P6233974428297314227

/-! ## A325524.P17280159848766622544

`Δ[eq[0, and(2, A048675(n+1))]]`
-/

namespace A325524.P17280159848766622544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A048675 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325524.P17280159848766622544

/-! ## A325524.P2696446442849994110

`Δ[eq[A048675(n+1)%4, A096268(n)]]`
-/

namespace A325524.P2696446442849994110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048675 (n + 1)) 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325524.P2696446442849994110

/-!
# A325525: Difference sequence of A325432.

The programs for A325525, there is no canonical definition to state claims against.
-/

/-! ## A325525.P7863307173858873066

`Δ[A325432(n+1)]`
-/

namespace A325525.P7863307173858873066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325525.P7863307173858873066

/-! ## A325525.P4917201380442051454

`A325432(n+2)-A325432(n+1)`
-/

namespace A325525.P4917201380442051454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325432 (n + 2) - A325432 (n + 1)

end

end A325525.P4917201380442051454

/-! ## A325525.P5236458270010513163

`A325432(A020725(n+1))%A325432(n+1)`
-/

namespace A325525.P5236458270010513163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325432 (A020725 (n + 1)).toNat) (A325432 (n + 1))

end

end A325525.P5236458270010513163

/-! ## A325525.P9599714296913917093

`Δ[record[A325432(A158416(n))]]`
-/

namespace A325525.P9599714296913917093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325432 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325525.P9599714296913917093

/-! ## A325525.P7153526080506711947

`Δ[eq[2, and(2, A048675(n+1))]]`
-/

namespace A325525.P7153526080506711947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A048675 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325525.P7153526080506711947

/-!
# A325526: Difference sequence of A325462.

The programs for A325526, there is no canonical definition to state claims against.
-/

/-! ## A325526.P3600416315315733890

`Δ[A325462(n+1)]`
-/

namespace A325526.P3600416315315733890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325526.P3600416315315733890

/-! ## A325526.P13217689906556115423

`Δ[comp[A325463(n+1)-1]]`
-/

namespace A325526.P13217689906556115423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325463 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325526.P13217689906556115423

/-! ## A325526.P8955801277311156977

`abs(Δ[A325462(ϕ²-(ϕ-n))])`
-/

namespace A325526.P8955801277311156977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325462 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325526.P8955801277311156977

/-! ## A325526.P10225269219398658674

`A325462(n+2)-A325462(n+1)`
-/

namespace A325526.P10225269219398658674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325462 (n + 2) - A325462 (n + 1)

end

end A325526.P10225269219398658674

/-! ## A325526.P16782651999982660383

`Δ[record[A325462(A158416(n))]]`
-/

namespace A325526.P16782651999982660383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325462 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325526.P16782651999982660383

/-! ## A325526.P7120288654807255367

`A023416(ratio[2^A325462(n+1)])`
-/

namespace A325526.P7120288654807255367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A325462 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)).toNat

end

end A325526.P7120288654807255367

/-! ## A325526.P4343663973188487079

`A028310(val(ratio[2^A325462(n+1)], 2))`
-/

namespace A325526.P4343663973188487079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A325462 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.valuation (SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)).toNat 2)

end

end A325526.P4343663973188487079

/-! ## A325526.P5367251191915717226

`A026741(log2(ratio[2^A325462(n+1)]²))`
-/

namespace A325526.P5367251191915717226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A325462 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway (Real.logb 2 ((f1 (n + 1) / f1 n) ^ 2 : ℝ))).toNat

end

end A325526.P5367251191915717226

/-! ## A325526.P1649527994722171374

`log2(ratio[2^A325462(n+1)]%A002299(n+1))`
-/

namespace A325526.P1649527994722171374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A325462 (n + 1) : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)) (A002299 (n + 1)) : ℝ)

end

end A325526.P1649527994722171374

/-!
# A325527: Difference sequence of A325463.

The programs for A325527, there is no canonical definition to state claims against.
-/

/-! ## A325527.P7788797508228463303

`Δ[A325463(n+1)]`
-/

namespace A325527.P7788797508228463303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325527.P7788797508228463303

/-! ## A325527.P12694005307484487672

`A325463(n+2)-A325463(n+1)`
-/

namespace A325527.P12694005307484487672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325463 (n + 2) - A325463 (n + 1)

end

end A325527.P12694005307484487672

/-! ## A325527.P16903172941968825320

`abs(Δ[A325463(A008619(2*n))])`
-/

namespace A325527.P16903172941968825320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325463 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325527.P16903172941968825320

/-! ## A325527.P5759828351033577441

`Δ[A325463(A008619(2*n))]%A027620(n)`
-/

namespace A325527.P5759828351033577441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325463 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A027620 n)

end

end A325527.P5759828351033577441

/-! ## A325527.P274213818773057213

`Δ[record[A325463(A038569(n))]]`
-/

namespace A325527.P274213818773057213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325463 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325527.P274213818773057213

/-! ## A325527.P9534443361764839146

`Δ[record[A325463(A143182(n))]]`
-/

namespace A325527.P9534443361764839146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325463 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325527.P9534443361764839146

/-!
# A325528: Difference sequence of A325464.

The programs for A325528, there is no canonical definition to state claims against.
-/

/-! ## A325528.P10988718827610509500

`Δ[A325464(n+1)]`
-/

namespace A325528.P10988718827610509500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325528.P10988718827610509500

/-! ## A325528.P2516468155958165819

`abs(Δ[A325464(n-log2(1/2))])`
-/

namespace A325528.P2516468155958165819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325528.P2516468155958165819

/-! ## A325528.P9117450159307441505

`Δ[record[A325464(A324346(n))]]`
-/

namespace A325528.P9117450159307441505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325528.P9117450159307441505

/-! ## A325528.P18076304264781395318

`A325464(n+2)-A325464(n+1)`
-/

namespace A325528.P18076304264781395318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (n + 2) - A325464 (n + 1)

end

end A325528.P18076304264781395318

/-! ## A325528.P4505656438637487458

`A003586(Δ[A325464(n-log2(1/2))])`
-/

namespace A325528.P4505656438637487458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (f1 (n + 1) - f1 n).toNat

end

end A325528.P4505656438637487458

/-! ## A325528.P6505131770019860303

`Δ[record[A325464(A154958(n))]]`
-/

namespace A325528.P6505131770019860303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325528.P6505131770019860303

/-! ## A325528.P9178000206845121581

`Δ[record[A325464(A109785(n))]]`
-/

namespace A325528.P9178000206845121581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325528.P9178000206845121581

/-! ## A325528.P8763500904541119592

`Δ[record[A325464(A143182(n))]]`
-/

namespace A325528.P8763500904541119592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325528.P8763500904541119592

/-!
# A325529: Difference sequence of A325465.

The programs for A325529, there is no canonical definition to state claims against.
-/

/-! ## A325529.P6604427240199417633

`Δ[A325465(n+1)]`
-/

namespace A325529.P6604427240199417633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325529.P6604427240199417633

/-! ## A325529.P7554788760749776628

`abs(Δ[A325465(n-log2(1/2))])`
-/

namespace A325529.P7554788760749776628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325465 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325529.P7554788760749776628

/-! ## A325529.P13426914998046632525

`A325465(n+2)-A325465(n+1)`
-/

namespace A325529.P13426914998046632525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325465 (n + 2) - A325465 (n + 1)

end

end A325529.P13426914998046632525

/-! ## A325529.P13746265591931571315

`A028310(Δ[A325465(n-log2(1/2))])`
-/

namespace A325529.P13746265591931571315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325465 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A325529.P13746265591931571315

/-! ## A325529.P12637021687076852125

`Δ[record[A325465(A133310(n))]]`
-/

namespace A325529.P12637021687076852125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325465 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325529.P12637021687076852125

/-! ## A325529.P58342721244145113

`Δ[record[A325465(A154958(n))]]`
-/

namespace A325529.P58342721244145113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325465 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325529.P58342721244145113

/-! ## A325529.P15548735123822357613

`Δ[record[A325465(A109785(n))]]`
-/

namespace A325529.P15548735123822357613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325465 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325529.P15548735123822357613

/-! ## A325529.P8262011756800441836

`Δ[record[A325465(A143182(n))]]`
-/

namespace A325529.P8262011756800441836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325465 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325529.P8262011756800441836

/-!
# A325530: Difference sequence of A325440.

The programs for A325530, there is no canonical definition to state claims against.
-/

/-! ## A325530.P14612026546187552372

`Δ[A325440(n+1)]`
-/

namespace A325530.P14612026546187552372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325530.P14612026546187552372

/-! ## A325530.P9709360790930955845

`abs(Δ[A325440(Δ[n²]-n)])`
-/

namespace A325530.P9709360790930955845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325530.P9709360790930955845

/-! ## A325530.P9372659627564954452

`A004151(Δ[A325440(Δ[n²]-n)])`
-/

namespace A325530.P9372659627564954452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f1 (n + 1) - f1 n).toNat

end

end A325530.P9372659627564954452

/-! ## A325530.P14117769333130929709

`A325454(Δ[A325440(Δ[n²]-n)])`
-/

namespace A325530.P14117769333130929709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325454 (f1 (n + 1) - f1 n).toNat

end

end A325530.P14117769333130929709

/-! ## A325530.P5225386805923640826

`A325440(n+2)-A325440(n+1)`
-/

namespace A325530.P5225386805923640826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 (n + 2) - A325440 (n + 1)

end

end A325530.P5225386805923640826

/-! ## A325530.P18080826714171728182

`Δ[record[A325440(A152271(n))]]`
-/

namespace A325530.P18080826714171728182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325530.P18080826714171728182

/-! ## A325530.P15952274289353458323

`Δ[record[A325440(A134478(n))]]`
-/

namespace A325530.P15952274289353458323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325530.P15952274289353458323

/-! ## A325530.P5495418961515240321

`Δ[record[A325440(A193739(n))]]`
-/

namespace A325530.P5495418961515240321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325530.P5495418961515240321

/-!
# A325531: Difference sequence of A325441.

The programs for A325531, there is no canonical definition to state claims against.
-/

/-! ## A325531.P6171864761803954050

`Δ[A325441(n+1)]`
-/

namespace A325531.P6171864761803954050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325531.P6171864761803954050

/-! ## A325531.P7039854243487281817

`abs(Δ[A325441(Δ[n²]-n)])`
-/

namespace A325531.P7039854243487281817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325441 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325531.P7039854243487281817

/-! ## A325531.P3885342797738379777

`A004151(Δ[A325441(Δ[n²]-n)])`
-/

namespace A325531.P3885342797738379777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325441 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f1 (n + 1) - f1 n).toNat

end

end A325531.P3885342797738379777

/-! ## A325531.P3635726641302753059

`A325454(Δ[A325441(Δ[n²]-n)])`
-/

namespace A325531.P3635726641302753059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325441 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325454 (f1 (n + 1) - f1 n).toNat

end

end A325531.P3635726641302753059

/-! ## A325531.P16146391381092665919

`A325441(n+2)-A325441(n+1)`
-/

namespace A325531.P16146391381092665919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325441 (n + 2) - A325441 (n + 1)

end

end A325531.P16146391381092665919

/-! ## A325531.P17462229043185084975

`Δ[record[A325441(A152271(n))]]`
-/

namespace A325531.P17462229043185084975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325441 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325531.P17462229043185084975

/-! ## A325531.P12231761550039771287

`Δ[record[A325441(A134478(n))]]`
-/

namespace A325531.P12231761550039771287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325441 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325531.P12231761550039771287

/-! ## A325531.P6979845226424557115

`Δ[record[A325441(A193739(n))]]`
-/

namespace A325531.P6979845226424557115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325441 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325531.P6979845226424557115

/-!
# A325532: Difference sequence of A325442.

The programs for A325532, there is no canonical definition to state claims against.
-/

/-! ## A325532.P8340656864136203113

`Δ[A325442(n+1)]`
-/

namespace A325532.P8340656864136203113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325532.P8340656864136203113

/-! ## A325532.P1493980792889593627

`abs(Δ[A325442(Δ[n²]-n)])`
-/

namespace A325532.P1493980792889593627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325442 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325532.P1493980792889593627

/-! ## A325532.P16269615285015235318

`A004151(Δ[A325442(Δ[n²]-n)])`
-/

namespace A325532.P16269615285015235318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325442 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f1 (n + 1) - f1 n).toNat

end

end A325532.P16269615285015235318

/-! ## A325532.P3744252067938615299

`A014963(Δ[A325442(Δ[n²]-n)])`
-/

namespace A325532.P3744252067938615299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325442 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A325532.P3744252067938615299

/-! ## A325532.P1697324171223342526

`A325442(n+2)-A325442(n+1)`
-/

namespace A325532.P1697324171223342526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325442 (n + 2) - A325442 (n + 1)

end

end A325532.P1697324171223342526

/-! ## A325532.P9286652915912859462

`Δ[record[A325442(A152271(n))]]`
-/

namespace A325532.P9286652915912859462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325442 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325532.P9286652915912859462

/-! ## A325532.P9288179458325708020

`Δ[record[A325442(A134478(n))]]`
-/

namespace A325532.P9288179458325708020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325442 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325532.P9288179458325708020

/-! ## A325532.P4036695502079766614

`Δ[record[A325442(A143182(n))]]`
-/

namespace A325532.P4036695502079766614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325442 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325532.P4036695502079766614

/-! ## A325532.P5215223975730525019

`Δ[record[A325442(A193739(n))]]`
-/

namespace A325532.P5215223975730525019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325442 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325532.P5215223975730525019

/-!
# A325533: Difference sequence of A325443.

The programs for A325533, there is no canonical definition to state claims against.
-/

/-! ## A325533.P12195501281215383922

`Δ[A325443(n+1)]`
-/

namespace A325533.P12195501281215383922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325533.P12195501281215383922

/-! ## A325533.P5436914574389170854

`abs(Δ[A325443(Δ[n²]-n)])`
-/

namespace A325533.P5436914574389170854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325533.P5436914574389170854

/-! ## A325533.P4877183929323216610

`A004151(Δ[A325443(Δ[n²]-n)])`
-/

namespace A325533.P4877183929323216610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f1 (n + 1) - f1 n).toNat

end

end A325533.P4877183929323216610

/-! ## A325533.P5332599437798147757

`A325443(n+2)-A325443(n+1)`
-/

namespace A325533.P5332599437798147757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 (n + 2) - A325443 (n + 1)

end

end A325533.P5332599437798147757

/-! ## A325533.P2114549611583727248

`A098548(A325443(n+2)%(A325443(n+1)+1)+1)`
-/

namespace A325533.P2114549611583727248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (Int.tmod (A325443 (n + 2)) (A325443 (n + 1) + 1) + 1).toNat

end

end A325533.P2114549611583727248

/-! ## A325533.P9609369174408661542

`Δ[record[A325443(A152271(n))]]`
-/

namespace A325533.P9609369174408661542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325533.P9609369174408661542

/-! ## A325533.P6814119672137072378

`Δ[record[A325443(A134478(n))]]`
-/

namespace A325533.P6814119672137072378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325533.P6814119672137072378

/-! ## A325533.P15841637571017824430

`Δ[record[A325443(A143182(n))]]`
-/

namespace A325533.P15841637571017824430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325533.P15841637571017824430

/-! ## A325533.P7366614720117075239

`Δ[record[A325443(A193739(n))]]`
-/

namespace A325533.P7366614720117075239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325533.P7366614720117075239

/-!
# A325534: Number of separable partitions of n; see Comments.

The programs for A325534, there is no canonical definition to state claims against.
-/

/-! ## A325534.P17392161568989469721

`A000041(n)-A325535(n)`
-/

namespace A325534.P17392161568989469721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325535 n

end

end A325534.P17392161568989469721

/-! ## A325534.P13416065133813423702

`A345170(n)+A345166(n)`
-/

namespace A325534.P13416065133813423702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345170 n + A345166 n

end

end A325534.P13416065133813423702

/-! ## A325534.P142652572549987193

`∑[A002865(n)]-A325535(n)`
-/

namespace A325534.P142652572549987193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325535 n

end

end A325534.P142652572549987193

/-! ## A325534.P8239700872705691269

`A035363(2*n)-A325535(n)`
-/

namespace A325534.P8239700872705691269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A325535 n

end

end A325534.P8239700872705691269

/-! ## A325534.P2938223591577259449

`A344654(n)+A344740(n)-A325535(n)`
-/

namespace A325534.P2938223591577259449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344654 n + (A344740 n - A325535 n)

end

end A325534.P2938223591577259449

/-!
# A325535: Number of inseparable partitions of n; see Comments.

The programs for A325535, there is no canonical definition to state claims against.
-/

/-! ## A325535.P16554873812597484572

`A000041(n)-A325534(n)`
-/

namespace A325535.P16554873812597484572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325534 n

end

end A325535.P16554873812597484572

/-! ## A325535.P17586246862266796066

`A345165(n)-A345166(n)`
-/

namespace A325535.P17586246862266796066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345165 n - A345166 n

end

end A325535.P17586246862266796066

/-! ## A325535.P11820683907594861381

`sqrt(A001255(n))-A325534(n)`
-/

namespace A325535.P11820683907594861381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A325534 n : ℝ)

end

end A325535.P11820683907594861381

/-! ## A325535.P13363355012755326851

`∑[A002865(n)]-A325534(n)`
-/

namespace A325535.P13363355012755326851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325534 n

end

end A325535.P13363355012755326851

/-! ## A325535.P3871223024179034253

`A000065(n)+1-A325534(n)`
-/

namespace A325535.P3871223024179034253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A325534 n)

end

end A325535.P3871223024179034253

/-! ## A325535.P2829795160683217921

`A035363(2*n)-A325534(n)`
-/

namespace A325535.P2829795160683217921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A325534 n

end

end A325535.P2829795160683217921

/-! ## A325535.P2326718919165451458

`A133041(n)-(A325534(n)+n)`
-/

namespace A325535.P2326718919165451458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A325534 n + (n : ℤ))

end

end A325535.P2326718919165451458

/-!
# A325536: Sum of sums of omegas of parts over all integer partitions of n.

The programs for A325536, there is no canonical definition to state claims against.
-/

/-! ## A325536.P2249575727355604166

`A339741(A147622(n))-ceil((n+1)²/6)`
-/

namespace A325536.P2249575727355604166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339741 (A147622 n).toNat - ⌈((n + 1) ^ 2 : ℚ) / 6⌉

end

end A325536.P2249575727355604166

/-! ## A325536.P16654175514653640252

`A230198(A283314(n))+A222048(n)`
-/

namespace A325536.P16654175514653640252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230198 (A283314 n).toNat + A222048 n

end

end A325536.P16654175514653640252

/-! ## A325536.P3929805617513735733

`A126348(n)-A205725(A320054(n+4))`
-/

namespace A325536.P3929805617513735733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126348 n - A205725 (A320054 (n + 4)).toNat

end

end A325536.P3929805617513735733

/-! ## A325536.P9652352649767899332

`A328594(A118033(n))-A373954(2*n)`
-/

namespace A325536.P9652352649767899332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (A118033 n).toNat - A373954 (2 * n)

end

end A325536.P9652352649767899332

/-!
# A325537: Irregular triangle whose rows are the sorted combined parts of all strict integer partitions of n.

The programs for A325537, there is no canonical definition to state claims against.
-/

/-! ## A325537.P13184919621697112359

`A128227(A324704(n+1)%A324703(3*n+2))`
-/

namespace A325537.P13184919621697112359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (Int.tmod (A324704 (n + 1)) (A324703 (3 * n + 2))).toNat

end

end A325537.P13184919621697112359

/-! ## A325537.P12471857047033255817

`A005811(gcd(A079126(n), A132738(n)))`
-/

namespace A325537.P12471857047033255817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.gcd (A079126 n) (A132738 n))

end

end A325537.P12471857047033255817

/-! ## A325537.P11551720728109298107

`A002260(lt[A000700(n), A151570(n)])`
-/

namespace A325537.P11551720728109298107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325537.P11551720728109298107

/-! ## A325537.P17648805382082401322

`A284271(A044813(n+1)*A256691(n+1))`
-/

namespace A325537.P17648805382082401322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284271 (A044813 (n + 1) * A256691 (n + 1)).toNat

end

end A325537.P17648805382082401322

/-! ## A325537.P12565683337801260785

`A277446(A044813(n+1)*A326976(n+1))`
-/

namespace A325537.P12565683337801260785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277446 (A044813 (n + 1) * A326976 (n + 1)).toNat

end

end A325537.P12565683337801260785

/-!
# A325538: Number of subsets of {1..n} whose product is one more than the sum of their complement.

The programs for A325538, there is no canonical definition to state claims against.
-/

/-! ## A325538.P6907832075732029080

`A190248(A139044(n+1)+2+n)`
-/

namespace A325538.P6907832075732029080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (A139044 (n + 1) + 2 + (n : ℤ)).toNat

end

end A325538.P6907832075732029080

/-! ## A325538.P5705192683408430686

`A000161(A348405(n)+A230865(n))`
-/

namespace A325538.P5705192683408430686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A348405 n + A230865 n).toNat

end

end A325538.P5705192683408430686

/-! ## A325538.P11526436244292734002

`and(A095684(2*(n+2)), A191781(A090842(n)))`
-/

namespace A325538.P11526436244292734002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095684 (2 * (n + 2))) (A191781 (A090842 n).toNat)

end

end A325538.P11526436244292734002

/-! ## A325538.P17837874069905689522

`A255319(A000041(2*n)-A339788(n+1))`
-/

namespace A325538.P17837874069905689522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255319 (A000041 (2 * n) - A339788 (n + 1)).toNat

end

end A325538.P17837874069905689522

/-! ## A325538.P12268434003149707511

`A178401(A087308(n+3)-A137214(n))`
-/

namespace A325538.P12268434003149707511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 (A087308 (n + 3) - A137214 n).toNat

end

end A325538.P12268434003149707511

/-!
# A325539: a(n) is the least number not 2*a(m)+1 or 3*a(m)+2 for any m < n.

The programs for A325539, the canonical program `A325539.P1534976636247493424` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325539 has offset 1).

The definition of A325539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325539.P10452388946026732794

`A325541(n)+a(n-1)` with `a(0)=1`
-/

namespace A325539.P10452388946026732794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325541 n + a (n - 1)

end

end A325539.P10452388946026732794

namespace A325539

/-- `A325541(n)+a(n-1)` -/
def P10452388946026732794.Spec : Prop :=
  ∀ n, P10452388946026732794.a n = A325539 (n + 1)

end A325539

/-! ## A325539.P6155713781622668069

`∑[A325541(A028310(n))]`
-/

namespace A325539.P6155713781622668069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325541 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325539.P6155713781622668069

namespace A325539

/-- `∑[A325541(A028310(n))]` -/
def P6155713781622668069.Spec : Prop :=
  ∀ n, P6155713781622668069.a n = A325539 (n + 1)

end A325539

/-! ## A325539.P1560681737613612527

`∑[A325541(A000007(n)+n)]`
-/

namespace A325539.P1560681737613612527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325541 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325539.P1560681737613612527

namespace A325539

/-- `∑[A325541(A000007(n)+n)]` -/
def P1560681737613612527.Spec : Prop :=
  ∀ n, P1560681737613612527.a n = A325539 (n + 1)

end A325539

/-! ## A325539.P7569381892176390838

`∑[A325541(or(n, A000007(n)))]`
-/

namespace A325539.P7569381892176390838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325541 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325539.P7569381892176390838

namespace A325539

/-- `∑[A325541(or(n, A000007(n)))]` -/
def P7569381892176390838.Spec : Prop :=
  ∀ n, P7569381892176390838.a n = A325539 (n + 1)

end A325539

/-! ## A325539.P4781936584709576556

`∑[A325541(n+1)]+1-A325541(n+1)`
-/

namespace A325539.P4781936584709576556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325541 (n + 1))

end

end A325539.P4781936584709576556

namespace A325539

/-- `∑[A325541(n+1)]+1-A325541(n+1)` -/
def P4781936584709576556.Spec : Prop :=
  ∀ n, P4781936584709576556.a n = A325539 (n + 1)

end A325539

/-! ## A325539.P1534976636247493424

`eq[A065333(n+1), A182582(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A325539

/-- `eq[A065333(n+1), A182582(n+1)]` -/
def P1534976636247493424.Spec : Prop :=
  ∀ n, (P1534976636247493424.a n : ℤ) = A325539 (n + 1)

theorem P1534976636247493424.correct : P1534976636247493424.Spec := by
  intro n
  simp only [A325539, Nat.add_sub_cancel]

end A325539

/-! ## A325539.P11098053664137723075

`record[A057979(A325540(n+1))]`
-/

namespace A325539.P11098053664137723075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A325540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325539.P11098053664137723075

namespace A325539

/-- `record[A057979(A325540(n+1))]` -/
def P11098053664137723075.Spec : Prop :=
  ∀ n, P11098053664137723075.a n = A325539 (n + 1)

end A325539

/-! ## A325539.P5387327682973012300

`eq[1, A182582(A052126(2*(n+1)))]`
-/

namespace A325539.P5387327682973012300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (A052126 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325539.P5387327682973012300

namespace A325539

/-- `eq[1, A182582(A052126(2*(n+1)))]` -/
def P5387327682973012300.Spec : Prop :=
  ∀ n, (P5387327682973012300.a n : ℤ) = A325539 (n + 1)

end A325539

/-! ## A325539.P13821600543003463398

`A028242(record[A000265(A325540(n+1))])`
-/

namespace A325539.P13821600543003463398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A325540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325539.P13821600543003463398

namespace A325539

/-- `A028242(record[A000265(A325540(n+1))])` -/
def P13821600543003463398.Spec : Prop :=
  ∀ n, P13821600543003463398.a n = A325539 (n + 1)

end A325539

/-!
# A325540: Complement of A325539.

The programs for A325540, there is no canonical definition to state claims against.
-/

/-! ## A325540.P10333910348193413391

`A325542(n)+a(n-1)` with `a(0)=3`
-/

namespace A325540.P10333910348193413391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A325542 n + a (n - 1)

end

end A325540.P10333910348193413391

/-! ## A325540.P4407385081977595844

`∑[A325542(abs(1-n)+1)]`
-/

namespace A325540.P4407385081977595844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325542 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325540.P4407385081977595844

/-! ## A325540.P6201838752253122374

`∑[A325542(n+1)]+3-A325542(n+1)`
-/

namespace A325540.P6201838752253122374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 - A325542 (n + 1))

end

end A325540.P6201838752253122374

/-! ## A325540.P3619124821948085215

`eq[1, A182582(A052126(n+1))]`
-/

namespace A325540.P3619124821948085215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (A052126 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325540.P3619124821948085215

/-! ## A325540.P1084260648658393544

`eq[char[A325539(n+1)], A000007(n)]`
-/

namespace A325540.P1084260648658393544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325539 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325540.P1084260648658393544

/-! ## A325540.P661547991672135152

`eq[1, A057427(n)+char[A325539(n+1)]]`
-/

namespace A325540.P661547991672135152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325539 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325540.P661547991672135152

/-!
# A325541: Difference sequence of A325539.

The programs for A325541, the canonical program `A325541.P8609790583688640712` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325541 has offset 1).

The definition of A325541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325541.P8609790583688640712

`Δ[A325539(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A325541

/-- `Δ[A325539(n+1)]` -/
def P8609790583688640712.Spec : Prop :=
  ∀ n, P8609790583688640712.a n = A325541 (n + 1)

theorem P8609790583688640712.correct : P8609790583688640712.Spec := by
  intro n
  simp only [A325541, Nat.add_sub_cancel]

end A325541

/-! ## A325541.P8307437667034037379

`abs(Δ[A325539(ϕ²-(ϕ-n))])`
-/

namespace A325541.P8307437667034037379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325539 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325541.P8307437667034037379

namespace A325541

/-- `abs(Δ[A325539(ϕ²-(ϕ-n))])` -/
def P8307437667034037379.Spec : Prop :=
  ∀ n, P8307437667034037379.a n = A325541 (n + 1)

end A325541

/-! ## A325541.P4322605770219061964

`A325539(n+2)-A325539(n+1)`
-/

namespace A325541.P4322605770219061964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325539 (n + 2) - A325539 (n + 1)

end

end A325541.P4322605770219061964

namespace A325541

/-- `A325539(n+2)-A325539(n+1)` -/
def P4322605770219061964.Spec : Prop :=
  ∀ n, P4322605770219061964.a n = A325541 (n + 1)

theorem P4322605770219061964.correct : P4322605770219061964.Spec := by
  intro n
  simp only [A325541, Nat.add_sub_cancel, A325541.P4322605770219061964.a, A325541.P8609790583688640712.f1, A325541.P8609790583688640712.a, SequenceMachineLib.memo_apply]

end A325541

/-! ## A325541.P91111040356802181

`A004086(Δ[A325539(n-log2(1/2))])`
-/

namespace A325541.P91111040356802181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325539 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (n + 1) - f1 n).toNat

end

end A325541.P91111040356802181

namespace A325541

/-- `A004086(Δ[A325539(n-log2(1/2))])` -/
def P91111040356802181.Spec : Prop :=
  ∀ n, P91111040356802181.a n = A325541 (n + 1)

end A325541

/-! ## A325541.P7054348468039440848

`Δ[eq[A065333(n+1), A182582(n+1)]]`
-/

namespace A325541.P7054348468039440848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325541.P7054348468039440848

namespace A325541

/-- `Δ[eq[A065333(n+1), A182582(n+1)]]` -/
def P7054348468039440848.Spec : Prop :=
  ∀ n, P7054348468039440848.a n = A325541 (n + 1)

end A325541

/-! ## A325541.P18062483463224820896

`Δ[record[A001057(A325540(n+1))]]`
-/

namespace A325541.P18062483463224820896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A325540 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325541.P18062483463224820896

namespace A325541

/-- `Δ[record[A001057(A325540(n+1))]]` -/
def P18062483463224820896.Spec : Prop :=
  ∀ n, P18062483463224820896.a n = A325541 (n + 1)

end A325541

/-! ## A325541.P1645983053406903793

`Δ[eq[1, A182582(A052126(2*(n+1)))]]`
-/

namespace A325541.P1645983053406903793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (A052126 (2 * (n + 1))).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325541.P1645983053406903793

namespace A325541

/-- `Δ[eq[1, A182582(A052126(2*(n+1)))]]` -/
def P1645983053406903793.Spec : Prop :=
  ∀ n, P1645983053406903793.a n = A325541 (n + 1)

end A325541

/-! ## A325541.P3831779525227081024

`Δ[record[A325539(A051340(n))]]`
-/

namespace A325541.P3831779525227081024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325539 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325541.P3831779525227081024

namespace A325541

/-- `Δ[record[A325539(A051340(n))]]` -/
def P3831779525227081024.Spec : Prop :=
  ∀ n, P3831779525227081024.a n = A325541 (n + 1)

end A325541

/-!
# A325542: Difference sequence of A325540.

The programs for A325542, there is no canonical definition to state claims against.
-/

/-! ## A325542.P16974411367990885984

`Δ[A325540(n+1)]`
-/

namespace A325542.P16974411367990885984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325542.P16974411367990885984

/-! ## A325542.P6001193127415087483

`A325540(n+2)-A325540(n+1)`
-/

namespace A325542.P6001193127415087483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325540 (n + 2) - A325540 (n + 1)

end

end A325542.P6001193127415087483

/-! ## A325542.P8441033789496964066

`A004086(Δ[A325540(n-log2(1/2))])`
-/

namespace A325542.P8441033789496964066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325540 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (n + 1) - f1 n).toNat

end

end A325542.P8441033789496964066

/-! ## A325542.P1501918006834700765

`A325540(A020725(n+1))%A325540(n+1)`
-/

namespace A325542.P1501918006834700765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325540 (A020725 (n + 1)).toNat) (A325540 (n + 1))

end

end A325542.P1501918006834700765

/-! ## A325542.P8469449226242523490

`Δ[eq[1, A182582(A052126(n+1))]]`
-/

namespace A325542.P8469449226242523490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (A052126 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325542.P8469449226242523490

/-! ## A325542.P8843633040208566498

`Δ[record[A325540(A051340(n))]]`
-/

namespace A325542.P8843633040208566498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325540 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325542.P8843633040208566498

/-!
# A325543: Width (number of leaves) of the rooted tree with Matula-Goebel number n!.

The programs for A325543, there is no canonical definition to state claims against.
-/

/-! ## A325543.P11351118640175447389

`A109129(n)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A325543.P11351118640175447389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A109129 n + a (n - 1)

end

end A325543.P11351118640175447389

/-! ## A325543.P4658547910040141066

`∑[A109129(A028310(n-char[2]))]+1`
-/

namespace A325543.P4658547910040141066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A028310 (n - (if ∃ j, f2 j = n then 1 else 0))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A325543.P4658547910040141066

/-! ## A325543.P3752029588291997945

`abs(A109129(n)+a(A140106(2*n)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A325543.P3752029588291997945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  |A109129 n + a (A140106 (2 * n)).toNat|

end

end A325543.P3752029588291997945

/-! ## A325543.P15441136018409763678

`A109129(n)-(A000007(n)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A325543.P15441136018409763678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A109129 n - (A000007 n - a (n - 1))

end

end A325543.P15441136018409763678

/-! ## A325543.P7775641779868172415

`A028310(∑[A109129(A028310(n))])`
-/

namespace A325543.P7775641779868172415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325543.P7775641779868172415

/-! ## A325543.P14309423177801285581

`A065033(∑[A109129(A253909(n))])`
-/

namespace A325543.P14309423177801285581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325543.P14309423177801285581

/-!
# A325544: Number of nodes in the rooted tree with Matula-Goebel number n!.

The programs for A325544, there is no canonical definition to state claims against.
-/

/-! ## A325544.P6522877462310908339

`A196050(n)+a(n-1)` with `a(0)=1`
-/

namespace A325544.P6522877462310908339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A196050 n + a (n - 1)

end

end A325544.P6522877462310908339

/-! ## A325544.P3020794868547559247

`∑[A196050(abs(1-n)+1)]`
-/

namespace A325544.P3020794868547559247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325544.P3020794868547559247

/-! ## A325544.P7298397267307635529

`a(n-1)+A061775(n)-1` with `a(0)=1`
-/

namespace A325544.P7298397267307635529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A061775 n - 1)

end

end A325544.P7298397267307635529

/-! ## A325544.P3334400977785860657

`∑[A061775(abs(1-n)+1)-1]`
-/

namespace A325544.P3334400977785860657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (|1 - (n : ℤ)| + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325544.P3334400977785860657

/-! ## A325544.P11509553079270128413

`∑[A196050(round(sqrt(n²+1)))]+1`
-/

namespace A325544.P11509553079270128413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A325544.P11509553079270128413

/-! ## A325544.P6365156934373793989

`∑[A061775(A028310(n))]-n`
-/

namespace A325544.P6365156934373793989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A325544.P6365156934373793989

/-! ## A325544.P7170175659601123652

`∑[A061775(A008486(n))]-3*n`
-/

namespace A325544.P7170175659601123652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (3 * n : ℤ)

end

end A325544.P7170175659601123652

/-! ## A325544.P15599548679046209100

`∑[A061775(A008458(n))]-4*n`
-/

namespace A325544.P15599548679046209100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (4 * n : ℤ)

end

end A325544.P15599548679046209100

/-! ## A325544.P345618048420491127

`A001222(A324922(n))+a(n-1)` with `a(0)=1`
-/

namespace A325544.P345618048420491127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (A324922 n).toNat + a (n - 1)

end

end A325544.P345618048420491127

/-! ## A325544.P4387774743826855678

`∑[A001222(A324922(abs(1-n)+1))]`
-/

namespace A325544.P4387774743826855678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324922 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325544.P4387774743826855678

/-!
# A325545: Number of compositions of n with distinct differences.

The programs for A325545, there is no canonical definition to state claims against.
-/

/-! ## A325545.P7521818242526499462

`round(2^(n-1))-A389743(n)`
-/

namespace A325545.P7521818242526499462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - A389743 n

end

end A325545.P7521818242526499462

/-! ## A325545.P5529775540977683902

`A052410((2-C(2, n²))^(n-1)-A389743(n))`
-/

namespace A325545.P5529775540977683902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.roundAway ((2 - (Nat.choose 2 (n ^ 2) : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A389743 n : ℚ))).toNat

end

end A325545.P5529775540977683902

/-!
# A325546: Number of compositions of n with weakly increasing differences.

The programs for A325546, there is no canonical definition to state claims against.
-/

/-! ## A325546.P2223610822469355182

`A364347(A327047(n))`
-/

namespace A325546.P2223610822469355182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (A327047 n).toNat

end

end A325546.P2223610822469355182

/-! ## A325546.P11667501325225988358

`A126728(n+1)+A000010(A240182(n))`
-/

namespace A325546.P11667501325225988358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126728 (n + 1) + A000010 (A240182 n).toNat

end

end A325546.P11667501325225988358

/-! ## A325546.P9062322164652106686

`A370805(2*n+1)+A035263(A000084(n+3))`
-/

namespace A325546.P9062322164652106686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370805 (2 * n + 1) + A035263 (A000084 (n + 3)).toNat

end

end A325546.P9062322164652106686

/-! ## A325546.P18368680546026929885

`A262265(2*round((n²+2)/4))`
-/

namespace A325546.P18368680546026929885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262265 (2 * SequenceMachineLib.roundAway ((n ^ 2 + 2 : ℚ) / 4)).toNat

end

end A325546.P18368680546026929885

/-! ## A325546.P12478236539842520251

`A070082(A300975(n))`
-/

namespace A325546.P12478236539842520251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A300975 n).toNat

end

end A325546.P12478236539842520251

/-!
# A325547: Number of compositions of n with strictly increasing differences.

The programs for A325547, there is no canonical definition to state claims against.
-/

/-! ## A325547.P15987127888239121309

`A323592(A000108(n))+A000041(n)`
-/

namespace A325547.P15987127888239121309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323592 (A000108 n).toNat + A000041 n

end

end A325547.P15987127888239121309

/-! ## A325547.P2081640094700912109

`A333191(n)+A296657(A333188(n+1))`
-/

namespace A325547.P2081640094700912109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333191 n + A296657 (A333188 (n + 1)).toNat

end

end A325547.P2081640094700912109

/-!
# A325548: Number of compositions of n with strictly decreasing differences.

The programs for A325548, there is no canonical definition to state claims against.
-/

/-! ## A325548.P12132661183110467435

`A105224(A078346(2*(n+1))*A320382(n+1))`
-/

namespace A325548.P12132661183110467435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A078346 (2 * (n + 1)) * A320382 (n + 1)).toNat

end

end A325548.P12132661183110467435

/-!
# A325549: Number of necklace compositions of n with distinct circular differences.

The programs for A325549, there is no canonical definition to state claims against.
-/

/-! ## A325549.P5599197097909869428

`A112759(A112757(2*n+1)+A112740(n+1))`
-/

namespace A325549.P5599197097909869428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112759 (A112757 (2 * n + 1) + A112740 (n + 1)).toNat

end

end A325549.P5599197097909869428

/-!
# A325552: Number of compositions of n with distinct differences up to sign.

The programs for A325552, there is no canonical definition to state claims against.
-/

/-! ## A325552.P16158331808988362293

`A070082(A359463(n))`
-/

namespace A325552.P16158331808988362293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A359463 n).toNat

end

end A325552.P16158331808988362293

/-! ## A325552.P3679519727303110129

`A055178(A148369(n+1))`
-/

namespace A325552.P3679519727303110129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055178 (A148369 (n + 1)).toNat

end

end A325552.P3679519727303110129

/-! ## A325552.P3528729241219841721

`A055178(A148370(n+1))`
-/

namespace A325552.P3528729241219841721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055178 (A148370 (n + 1)).toNat

end

end A325552.P3528729241219841721

/-! ## A325552.P1143751094062720537

`∑[A109704(A110057(2*n+3))]`
-/

namespace A325552.P1143751094062720537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109704 (A110057 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325552.P1143751094062720537

/-! ## A325552.P2377680669819718451

`A332268(∏[A332267(∑{d}[n+1, #])])`
-/

namespace A325552.P2377680669819718451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332267 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332268 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325552.P2377680669819718451

/-!
# A325553: Number of compositions of n with distinct circular differences up to sign.

The programs for A325553, there is no canonical definition to state claims against.
-/

/-! ## A325553.P9337532150687866648

`A367505(A059433(n))`
-/

namespace A325553.P9337532150687866648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367505 (A059433 n).toNat

end

end A325553.P9337532150687866648

/-! ## A325553.P17761320175600214410

`A097290(A146236(n+1))`
-/

namespace A325553.P17761320175600214410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097290 (A146236 (n + 1)).toNat

end

end A325553.P17761320175600214410

/-! ## A325553.P3147707254896275561

`filter[A147342(n+3), A022933(#)]`
-/

namespace A325553.P3147707254896275561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147342 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022933 (f1 j).toNat = 1) n)

end

end A325553.P3147707254896275561

/-! ## A325553.P14070671648669599737

`filter[A147342(n+3), A083035(#)]`
-/

namespace A325553.P14070671648669599737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147342 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A083035 (f1 j).toNat = 1) n)

end

end A325553.P14070671648669599737

/-! ## A325553.P3236283833157785016

`filter[A147409(n+3), A090678(#)]`
-/

namespace A325553.P3236283833157785016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147409 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A090678 (f1 j).toNat = 1) n)

end

end A325553.P3236283833157785016

/-!
# A325554: Number of necklace compositions of n with distinct differences.

The programs for A325554, there is no canonical definition to state claims against.
-/

/-! ## A325554.P6010285418558526937

`A216503(A000079(n)+∑[n]%(n+1))+1`
-/

namespace A325554.P6010285418558526937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (A000079 n + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)).toNat + 1

end

end A325554.P6010285418558526937

/-! ## A325554.P18044253924511794900

`A292886(A127976(n+1))+A000045(n)`
-/

namespace A325554.P18044253924511794900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292886 (A127976 (n + 1)).toNat + A000045 n

end

end A325554.P18044253924511794900

/-! ## A325554.P11029316792293274919

`A244511(A245823(n+1)+A106602(n))`
-/

namespace A325554.P11029316792293274919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244511 (A245823 (n + 1) + A106602 n).toNat

end

end A325554.P11029316792293274919

/-! ## A325554.P9760511021355604415

`A089293(A157605(n+2))+A000045(n)`
-/

namespace A325554.P9760511021355604415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (A157605 (n + 2)).toNat + A000045 n

end

end A325554.P9760511021355604415

/-!
# A325559: 

The programs for A325559, there is no canonical definition to state claims against.
-/

/-! ## A325559.P2611717095922165803

`eq[2, A325560(n+1)]+1`
-/

namespace A325559.P2611717095922165803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325560 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325559.P2611717095922165803

/-! ## A325559.P3860471001972089895

`eq[2, A325564(n+1)]+1`
-/

namespace A325559.P3860471001972089895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325559.P3860471001972089895

/-! ## A325559.P10360446460828428447

`record[A325643(n+2)]`
-/

namespace A325559.P10360446460828428447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325643 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325559.P10360446460828428447

/-! ## A325559.P10984606092529107267

`eq[1, A325563(n+1)%(n+1)]+1`
-/

namespace A325559.P10984606092529107267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325563 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325559.P10984606092529107267

/-! ## A325559.P2864737451406403650

`eq[2, A325560(A028310(n))]`
-/

namespace A325559.P2864737451406403650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325560 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325559.P2864737451406403650

/-!
# A325560: a(n) is the number of divisors d of n such that A048720(d,k) = n for some k.

The programs for A325560, the canonical program `A325560.P10848388262318305869` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325560 has offset 1).

The definition of A325560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325560.P10848388262318305869

`∑{d}[A000695(n+1), A151666(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A325560

/-- `∑{d}[A000695(n+1), A151666(#)]` -/
def P10848388262318305869.Spec : Prop :=
  ∀ n, P10848388262318305869.a n = A325560 (n + 1)

theorem P10848388262318305869.correct : P10848388262318305869.Spec := by
  intro n
  simp only [A325560, Nat.add_sub_cancel]

end A325560

/-! ## A325560.P9588210276619837460

`∑{d}[A270804(2*(n+1)), A151666(#)]`
-/

namespace A325560.P9588210276619837460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270804 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A151666 d

end

end A325560.P9588210276619837460

namespace A325560

/-- `∑{d}[A270804(2*(n+1)), A151666(#)]` -/
def P9588210276619837460.Spec : Prop :=
  ∀ n, P9588210276619837460.a n = A325560 (n + 1)

end A325560

/-! ## A325560.P16239531351598234764

`∑{d}[A033042(n+1), A151667(#)]`
-/

namespace A325560.P16239531351598234764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A151667 d

end

end A325560.P16239531351598234764

namespace A325560

/-- `∑{d}[A033042(n+1), A151667(#)]` -/
def P16239531351598234764.Spec : Prop :=
  ∀ n, P16239531351598234764.a n = A325560 (n + 1)

end A325560

/-! ## A325560.P9920188462749488331

`∑{d}[n+1, A000035(A236674(lcm(2, #)))]`
-/

namespace A325560.P9920188462749488331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (A236674 (Nat.lcm 2 d)).toNat

end

end A325560.P9920188462749488331

namespace A325560

/-- `∑{d}[n+1, A000035(A236674(lcm(2, #)))]` -/
def P9920188462749488331.Spec : Prop :=
  ∀ n, P9920188462749488331.a n = A325560 (n + 1)

end A325560

/-! ## A325560.P6167841707363014241

`A366563(A319984(n+1))`
-/

namespace A325560.P6167841707363014241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366563 (A319984 (n + 1)).toNat

end

end A325560.P6167841707363014241

namespace A325560

/-- `A366563(A319984(n+1))` -/
def P6167841707363014241.Spec : Prop :=
  ∀ n, P6167841707363014241.a n = A325560 (n + 1)

end A325560

/-!
# A325562: Number of iterations of A234741 needed when started from n before a fixed point is reached.

The programs for A325562, there is no canonical definition to state claims against.
-/

/-! ## A325562.P298626823624709549

`∑{e}[A127121(A300648(n+1)), #]`
-/

namespace A325562.P298626823624709549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127121 (A300648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A325562.P298626823624709549

/-! ## A325562.P10034034197530615610

`A023416(A325355(n+1))%A000108(A008574(n))`
-/

namespace A325562.P10034034197530615610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (A325355 (n + 1)).toNat) (A000108 (A008574 n).toNat)

end

end A325562.P10034034197530615610

/-! ## A325562.P5488542028626607456

`A257991(A325355(n+1))^A014963(n+2)²`
-/

namespace A325562.P5488542028626607456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257991 (A325355 (n + 1)).toNat : ℚ) ^ (A014963 (n + 2) ^ 2 : ℤ)

end

end A325562.P5488542028626607456

/-! ## A325562.P255582061438130288

`A072610(n+1)%A378222(n+1)`
-/

namespace A325562.P255582061438130288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072610 (n + 1)) (A378222 (n + 1))

end

end A325562.P255582061438130288

/-! ## A325562.P18327777083992496407

`A062693(n)%A325355(n+1)`
-/

namespace A325562.P18327777083992496407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062693 n) (A325355 (n + 1))

end

end A325562.P18327777083992496407

/-!
# A325563: a(1) = 1; for n > 1, a(n) is the largest proper divisor d of n such that A048720(d,k) = n for some k.

The programs for A325563, there is no canonical definition to state claims against.
-/

/-! ## A325563.P11308549104498768878

`A325564(n+1)+A057428(n)`
-/

namespace A325563.P11308549104498768878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1) + A057428 n

end

end A325563.P11308549104498768878

/-! ## A325563.P15401375931421605529

`A325564(n+1)-A057427(n)`
-/

namespace A325563.P15401375931421605529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1) - A057427 n

end

end A325563.P15401375931421605529

/-! ## A325563.P10444157390432811307

`A325564(n+1)-A165581(n)²`
-/

namespace A325563.P10444157390432811307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1) - A165581 n ^ 2

end

end A325563.P10444157390432811307

/-! ## A325563.P4347754853300478834

`A325564(n+1)+-1%A167875(n)`
-/

namespace A325563.P4347754853300478834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1) + Int.tmod (-1) (A167875 n)

end

end A325563.P4347754853300478834

/-! ## A325563.P1024490374613863731

`A325564(n+1)-A325568(A325570(n+1))`
-/

namespace A325563.P1024490374613863731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1) - A325568 (A325570 (n + 1)).toNat

end

end A325563.P1024490374613863731

/-! ## A325563.P5228308532825199765

`A325564(n+1)-A316829(A325564(n+1)+n+1)`
-/

namespace A325563.P5228308532825199765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1) - A316829 (A325564 (n + 1) + (n + 1 : ℤ)).toNat

end

end A325563.P5228308532825199765

/-! ## A325563.P11867524822624246977

`A325564(n+1)-A037227(A037227(n+1))%(n+1)`
-/

namespace A325563.P11867524822624246977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1) - Int.tmod (A037227 (A037227 (n + 1)).toNat) (n + 1 : ℤ)

end

end A325563.P11867524822624246977

/-! ## A325563.P9666861130743088436

`A325564(n+1)-A316829(A342285(n)+1)`
-/

namespace A325563.P9666861130743088436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1) - A316829 (A342285 n + 1).toNat

end

end A325563.P9666861130743088436

/-! ## A325563.P10971472860871512695

`A325564(n+1)-A316829(n²)`
-/

namespace A325563.P10971472860871512695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (n + 1) - A316829 (n ^ 2)

end

end A325563.P10971472860871512695

/-!
# A325564: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j) where f(n) = A325563(n) except f(1) = 0.

The programs for A325564, there is no canonical definition to state claims against.
-/

/-! ## A325564.P9179138911482236795

`A325563(n+1)%(n+1)+1`
-/

namespace A325564.P9179138911482236795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325563 (n + 1)) (n + 1 : ℤ) + 1

end

end A325564.P9179138911482236795

/-! ## A325564.P434187578604431929

`A325563(n+1)+A057427(n)`
-/

namespace A325564.P434187578604431929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (n + 1) + A057427 n

end

end A325564.P434187578604431929

/-! ## A325564.P538225608612601497

`A325563(n+1)-A057428(n)`
-/

namespace A325564.P538225608612601497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (n + 1) - A057428 n

end

end A325564.P538225608612601497

/-! ## A325564.P4595017902935795430

`A325563(n+1)+1-A000007(n)`
-/

namespace A325564.P4595017902935795430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (n + 1) + (1 - A000007 n)

end

end A325564.P4595017902935795430

/-! ## A325564.P14865976021091505655

`A325563(n+1)+A019429(2*n)`
-/

namespace A325564.P14865976021091505655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (n + 1) + A019429 (2 * n)

end

end A325564.P14865976021091505655

/-! ## A325564.P839691478319643196

`A325563(n+1)+n/A028310(n)`
-/

namespace A325564.P839691478319643196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325563 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A325564.P839691478319643196

/-! ## A325564.P924331422553749539

`A325563(n+1)+A175764(2*(n+1))`
-/

namespace A325564.P924331422553749539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (n + 1) + A175764 (2 * (n + 1))

end

end A325564.P924331422553749539

/-! ## A325564.P15990640437407482620

`A325563(n+1)+A010051(A087717(n+1))`
-/

namespace A325564.P15990640437407482620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (n + 1) + A010051 (A087717 (n + 1)).toNat

end

end A325564.P15990640437407482620

/-! ## A325564.P429963027476378972

`A325568(A325570(n+1))+A325563(n+1)`
-/

namespace A325564.P429963027476378972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325568 (A325570 (n + 1)).toNat + A325563 (n + 1)

end

end A325564.P429963027476378972

/-! ## A325564.P11127370366914656954

`A325563(n+1)+A000007((n+1)*A000007(n))`
-/

namespace A325564.P11127370366914656954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (n + 1) + A000007 ((n + 1 : ℤ) * A000007 n).toNat

end

end A325564.P11127370366914656954

/-! ## A325564.P14476046202606871709

`A325563(n+1)+A000007(A000007(n)/(n+1))`
-/

namespace A325564.P14476046202606871709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (n + 1) + A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (n + 1 : ℚ))).toNat

end

end A325564.P14476046202606871709

/-! ## A325564.P9589665797061288409

`A325563(n+1)+A019429(A001105(n))²`
-/

namespace A325564.P9589665797061288409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (n + 1) + A019429 (A001105 n).toNat ^ 2

end

end A325564.P9589665797061288409

/-!
# A325565: a(n) is the number of such divisors d of n that A048720(A065621(d),n/d) is equal to n.

The programs for A325565, there is no canonical definition to state claims against.
-/

/-! ## A325565.P11125762781564242993

`A000005(A325566(n+1)%A038771(n))`
-/

namespace A325565.P11125762781564242993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A325566 (n + 1)) (A038771 n)).toNat

end

end A325565.P11125762781564242993

/-! ## A325565.P11604508237438069742

`A000035(A109798(n+1))+A000005(A325566(n+1))`
-/

namespace A325565.P11604508237438069742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A109798 (n + 1)).toNat + A000005 (A325566 (n + 1)).toNat

end

end A325565.P11604508237438069742

/-! ## A325565.P7974746527644868441

`A000005(A325566(n+1))%A002522(A055999(n+4))`
-/

namespace A325565.P7974746527644868441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A325566 (n + 1)).toNat) (A002522 (A055999 (n + 4)).toNat)

end

end A325565.P7974746527644868441

/-! ## A325565.P13019106191290751603

`A000005(A325566(n+1))*A057427(A109798(n+1)+1)`
-/

namespace A325565.P13019106191290751603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A325566 (n + 1)).toNat * A057427 (A109798 (n + 1) + 1).toNat

end

end A325565.P13019106191290751603

/-! ## A325565.P7714551837967564914

`A000005(A325566(n+1))^(A007978(A109798(n+1)+1)-1)`
-/

namespace A325565.P7714551837967564914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A325566 (n + 1)).toNat : ℚ) ^ (A007978 (A109798 (n + 1) + 1).toNat - 1 : ℤ)

end

end A325565.P7714551837967564914

/-! ## A325565.P11554027063708795869

`A000038(A022941(n+1))+A000005(A325566(n+1))`
-/

namespace A325565.P11554027063708795869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A022941 (n + 1)).toNat + A000005 (A325566 (n + 1)).toNat

end

end A325565.P11554027063708795869

/-! ## A325565.P13721773432243099264

`A000007(A167499(n+7))+A000005(A325566(n+1))`
-/

namespace A325565.P13721773432243099264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A167499 (n + 7)).toNat + A000005 (A325566 (n + 1)).toNat

end

end A325565.P13721773432243099264

/-! ## A325565.P15873775452684494372

`A000005(A325566(n+1))%A108372(A008619(n))`
-/

namespace A325565.P15873775452684494372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A325566 (n + 1)).toNat) (A108372 (A008619 n).toNat)

end

end A325565.P15873775452684494372

/-! ## A325565.P13139397649221815340

`A000005(A325566(n+1))*A140670(A027688(n))`
-/

namespace A325565.P13139397649221815340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A325566 (n + 1)).toNat * A140670 (A027688 n).toNat

end

end A325565.P13139397649221815340

/-! ## A325565.P3116363788938450112

`A046951(A325566(n+1)²)`
-/

namespace A325565.P3116363788938450112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A325566 (n + 1) ^ 2).toNat

end

end A325565.P3116363788938450112

/-! ## A325565.P14882358160047404498

`∑{d}[A325566(n+1), A139551(#)]`
-/

namespace A325565.P14882358160047404498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A139551 d

end

end A325565.P14882358160047404498

/-! ## A325565.P7154821480036850286

`∑{d}[A325566(n+1), A327401(#)]`
-/

namespace A325565.P7154821480036850286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327401 d

end

end A325565.P7154821480036850286

/-! ## A325565.P8707709235200347671

`∑{d}[A325566(n+1), A325566(A158350(#))]`
-/

namespace A325565.P8707709235200347671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A325566 (A158350 d).toNat

end

end A325565.P8707709235200347671

/-! ## A325565.P15324072239411039970

`A046951(A325566(2*(n+1))*A325566(n+1))`
-/

namespace A325565.P15324072239411039970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A325566 (2 * (n + 1)) * A325566 (n + 1)).toNat

end

end A325565.P15324072239411039970

/-! ## A325565.P9457366182739558464

`and(A380844(n+1), A381707(n+1))`
-/

namespace A325565.P9457366182739558464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A380844 (n + 1)) (A381707 (n + 1))

end

end A325565.P9457366182739558464

/-! ## A325565.P7212949160061464657

`and(A086827(n+1), A380844(n+1))`
-/

namespace A325565.P7212949160061464657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A380844 (n + 1))

end

end A325565.P7212949160061464657

/-! ## A325565.P8923519641132845097

`A000005(A119350(A119350(n+1))*A325566(n+1))`
-/

namespace A325565.P8923519641132845097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A119350 (A119350 (n + 1)).toNat * A325566 (n + 1)).toNat

end

end A325565.P8923519641132845097

/-! ## A325565.P12615428008762344279

`A000005(A325566(n+1)/A119350(A119350(n+1)))`
-/

namespace A325565.P12615428008762344279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A325566 (n + 1) : ℚ) / (A119350 (A119350 (n + 1)).toNat : ℚ))).toNat

end

end A325565.P12615428008762344279

/-!
# A325566: a(n) is the largest divisor d of n such that A048720(A065621(d),n/d) = n.

The programs for A325566, there is no canonical definition to state claims against.
-/

/-! ## A325566.P659781100172836136

`gcd(n+1, A005843(A325567(n+1)))`
-/

namespace A325566.P659781100172836136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005843 (A325567 (n + 1)).toNat)

end

end A325566.P659781100172836136

/-! ## A325566.P3803548822032844699

`lcm(A006519(n+1), A325567(n+1))`
-/

namespace A325566.P3803548822032844699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A325567 (n + 1))

end

end A325566.P3803548822032844699

/-! ## A325566.P11298336784455833347

`(n+1)/A000265((n+1)/A325567(n+1))`
-/

namespace A325566.P11298336784455833347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A325567 (n + 1) : ℚ))).toNat : ℚ)

end

end A325566.P11298336784455833347

/-! ## A325566.P11776859471557568022

`(n+1)/A060819((n+1)/A325567(n+1))`
-/

namespace A325566.P11776859471557568022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A060819 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A325567 (n + 1) : ℚ))).toNat : ℚ)

end

end A325566.P11776859471557568022

/-! ## A325566.P2739124653236003879

`A040001(A006530(n+1))*A325567(n+1)`
-/

namespace A325566.P2739124653236003879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A006530 (n + 1)).toNat * A325567 (n + 1)

end

end A325566.P2739124653236003879

/-! ## A325566.P10559766641409418711

`A325565(A379120(n+1))*A325567(n+1)`
-/

namespace A325566.P10559766641409418711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325565 (A379120 (n + 1)).toNat * A325567 (n + 1)

end

end A325566.P10559766641409418711

/-! ## A325566.P1445989439079933626

`A325565((n+1)/A325567(n+1))*A325567(n+1)`
-/

namespace A325566.P1445989439079933626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A325567 (n + 1) : ℚ))).toNat * A325567 (n + 1)

end

end A325566.P1445989439079933626

/-! ## A325566.P9553790525664309590

`n%A325567(2*(n+1))+1`
-/

namespace A325566.P9553790525664309590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A325567 (2 * (n + 1))) + 1

end

end A325566.P9553790525664309590

/-! ## A325566.P6143552445042032445

`A325567(A153151(n+1)+1)`
-/

namespace A325566.P6143552445042032445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (A153151 (n + 1) + 1).toNat

end

end A325566.P6143552445042032445

/-! ## A325566.P12167147174830881128

`A325567(A275535(n+1))`
-/

namespace A325566.P12167147174830881128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (A275535 (n + 1)).toNat

end

end A325566.P12167147174830881128

/-!
# A325567: a(1) = 1; for n > 1, a(n) is the largest proper divisor d of n such that A048720(A065621(d),n/d) is equal to n.

The programs for A325567, there is no canonical definition to state claims against.
-/

/-! ## A325567.P16470743584419819974

`(n+1)/A379120(n+1)`
-/

namespace A325567.P16470743584419819974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A379120 (n + 1) : ℚ)

end

end A325567.P16470743584419819974

/-! ## A325567.P12760421273874729784

`A325566(gcd(n+1, A153152(n)))`
-/

namespace A325567.P12760421273874729784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (Int.gcd (n + 1 : ℤ) (A153152 n))

end

end A325567.P12760421273874729784

/-! ## A325567.P13271788883659271253

`gcd(A048671(n+1), A325566(n+1))`
-/

namespace A325567.P13271788883659271253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048671 (n + 1)) (A325566 (n + 1))

end

end A325567.P13271788883659271253

/-! ## A325567.P17521893963748250294

`A325566(n+1)/A325566(A014963(n+1))`
-/

namespace A325567.P17521893963748250294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325566 (n + 1) : ℚ) / (A325566 (A014963 (n + 1)).toNat : ℚ)

end

end A325567.P17521893963748250294

/-! ## A325567.P5987188914198105243

`A325566(A153152(2*n+1)-A153152(n))`
-/

namespace A325567.P5987188914198105243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (A153152 (2 * n + 1) - A153152 n).toNat

end

end A325567.P5987188914198105243

/-! ## A325567.P1852840311387476494

`gcd(A047074(n), A325566(n+1))`
-/

namespace A325567.P1852840311387476494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047074 n) (A325566 (n + 1))

end

end A325567.P1852840311387476494

/-!
# A325568: a(1) = 0; for n > 1, a(n) = 1 + a(A325567(n)).

The programs for A325568, there is no canonical definition to state claims against.
-/

/-! ## A325568.P1779723570893915676

`a(A325567(n+1)-1)+1` with `a(0)=0`
-/

namespace A325568.P1779723570893915676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A325567 (n + 1) - 1).toNat + 1

end

end A325568.P1779723570893915676

/-! ## A325568.P12701340939052798960

`A001222(A325567(A325567(4*(n+1))))`
-/

namespace A325568.P12701340939052798960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A325567 (A325567 (4 * (n + 1))).toNat).toNat

end

end A325568.P12701340939052798960

/-! ## A325568.P6482534631350765898

`A073093(A325567(n+1))%A000290(A008812(n))`
-/

namespace A325568.P6482534631350765898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073093 (A325567 (n + 1)).toNat) (A000290 (A008812 n).toNat)

end

end A325568.P6482534631350765898

/-! ## A325568.P8988917246220168639

`A073093(A325567(n+1))-A010051(2*(n+1))*A267392(n+1)`
-/

namespace A325568.P8988917246220168639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A325567 (n + 1)).toNat - A010051 (2 * (n + 1)) * A267392 (n + 1)

end

end A325568.P8988917246220168639

/-! ## A325568.P11428111185532201853

`(A002024(∑[n+3])-(n+2))*A073093(A325567(n+1))`
-/

namespace A325568.P11428111185532201853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 2 : ℤ)) * A073093 (A325567 (n + 1)).toNat

end

end A325568.P11428111185532201853

/-! ## A325568.P10843933250525586069

`A327407(A001316(n))+A001222(A325567(n+1))`
-/

namespace A325568.P10843933250525586069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327407 (A001316 n).toNat + A001222 (A325567 (n + 1)).toNat

end

end A325568.P10843933250525586069

/-!
# A325570: Numbers n that have no divisor d > 1 such that A048720(A065621(d),n/d) = n.

The programs for A325570, there is no canonical definition to state claims against.
-/

/-! ## A325570.P15772547616005041314

`record[A379120(2*n+1)]`
-/

namespace A325570.P15772547616005041314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379120 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325570.P15772547616005041314

/-! ## A325570.P963400844652255349

`∪[A006005(n+1), A325571(n+1)]`
-/

namespace A325570.P963400844652255349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325570.P963400844652255349

/-! ## A325570.P14195150436018312015

`∪[A325571(n+1), A359080(n+1)]`
-/

namespace A325570.P14195150436018312015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325570.P14195150436018312015

/-! ## A325570.P9205950328036599132

`eq[1, A325565(n+1)]+1`
-/

namespace A325570.P9205950328036599132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325570.P9205950328036599132

/-! ## A325570.P4851158199510736797

`eq[1, A325566(n+1)]+1`
-/

namespace A325570.P4851158199510736797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325570.P4851158199510736797

/-! ## A325570.P11072886588510448858

`record[or(1, n)/A325567(n+1)]`
-/

namespace A325570.P11072886588510448858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / (A325567 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325570.P11072886588510448858

/-! ## A325570.P4284133755089700052

`record[(2*n+1)/A325565(2*n+1)]`
-/

namespace A325570.P4284133755089700052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A325565 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325570.P4284133755089700052

/-! ## A325570.P16333968211622398169

`A004442(eq[1, A325566(n+1)])`
-/

namespace A325570.P16333968211622398169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325570.P16333968211622398169

/-! ## A325570.P17842694595309488963

`A109613(eq[1, A325566(n+1)])`
-/

namespace A325570.P17842694595309488963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325570.P17842694595309488963

/-! ## A325570.P16530137974275454843

`lt[char[A325573(n+1)], A000035(n)]`
-/

namespace A325570.P16530137974275454843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325573 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A325570.P16530137974275454843

/-! ## A325570.P4336789388852159334

`lt[A325567(A093178(n)), A006519(n+1)]`
-/

namespace A325570.P4336789388852159334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325570.P4336789388852159334

/-! ## A325570.P14705779613100254040

`eq[n, A109613(n)*A325566(A109613(n))]`
-/

namespace A325570.P14705779613100254040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n * A325566 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325570.P14705779613100254040

/-! ## A325570.P3846507267614852500

`lt[A004442(n)*A325567(A093178(n)), n]`
-/

namespace A325570.P3846507267614852500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A325567 (A093178 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325570.P3846507267614852500

/-! ## A325570.P15220065390476322279

`eq[char[A325573(n+1)], A000035(n+1)]`
-/

namespace A325570.P15220065390476322279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325573 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325570.P15220065390476322279

/-! ## A325570.P14019063659058364421

`record[A103517(n)/A325566(A103517(n))]`
-/

namespace A325570.P14019063659058364421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A325566 (A103517 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325570.P14019063659058364421

/-!
# A325571: Composite numbers n that have no divisor d > 1 such that A048720(A065621(d),n/d) = n.

The programs for A325571, there is no canonical definition to state claims against.
-/

/-! ## A325571.P16101169376440504567

`filter[A325570(n+1), A066247(#)]`
-/

namespace A325571.P16101169376440504567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A325571.P16101169376440504567

/-! ## A325571.P10880211535211456034

`filter[A325570(n+1), A202238(#)]`
-/

namespace A325571.P10880211535211456034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A325571.P10880211535211456034

/-! ## A325571.P13462398622596171305

`filter[A325570(n+1), A323162(#)]`
-/

namespace A325571.P13462398622596171305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A325571.P13462398622596171305

/-! ## A325571.P10881707717475955877

`filter[A325570(n+2), A005171(#)]`
-/

namespace A325571.P10881707717475955877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A325571.P10881707717475955877

/-! ## A325571.P2697093222002589461

`filter[A325570(n+2), A292438(#)]`
-/

namespace A325571.P2697093222002589461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A325571.P2697093222002589461

/-! ## A325571.P2377485259273918095

`∩[A071904(n+1), A325570(n+1)]`
-/

namespace A325571.P2377485259273918095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P2377485259273918095

/-! ## A325571.P14666884631040089823

`∩[A078505(n+1), A325570(n+1)]`
-/

namespace A325571.P14666884631040089823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P14666884631040089823

/-! ## A325571.P2781445123672270565

`∩[A270574(n+1), A325570(n+1)]`
-/

namespace A325571.P2781445123672270565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P2781445123672270565

/-! ## A325571.P18303151472878583593

`∩[A039769(n+1), A325570(n+1)]`
-/

namespace A325571.P18303151472878583593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P18303151472878583593

/-! ## A325571.P5642781539319327154

`∩[A058957(n+1), A325570(n+1)]`
-/

namespace A325571.P5642781539319327154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P5642781539319327154

/-! ## A325571.P4360259707459896704

`eq[A323162(n+1), A325565(n+1)]+1`
-/

namespace A325571.P4360259707459896704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325571.P4360259707459896704

/-! ## A325571.P11527962555556491331

`eq[A323162(n+1), A325566(n+1)]+1`
-/

namespace A325571.P11527962555556491331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325571.P11527962555556491331

/-! ## A325571.P17425974945068299012

`eq[A107393(n), A325565(A093178(n))]`
-/

namespace A325571.P17425974945068299012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325565 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325571.P17425974945068299012

/-! ## A325571.P10091426907696234454

`∩[A333312(n+1), A325570(n+1)]`
-/

namespace A325571.P10091426907696234454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P10091426907696234454

/-! ## A325571.P13308534540185601007

`∩[A079364(n+1), A325570(n+1)]`
-/

namespace A325571.P13308534540185601007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P13308534540185601007

/-! ## A325571.P4393004803229008904

`∩[A171845(n+1), A325570(n+1)]`
-/

namespace A325571.P4393004803229008904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P4393004803229008904

/-! ## A325571.P9357356852586908935

`∩[A105441(n+1), A325570(n+1)]`
-/

namespace A325571.P9357356852586908935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P9357356852586908935

/-! ## A325571.P9078861157715304911

`∩[A325570(n+1), A365408(n+1)]`
-/

namespace A325571.P9078861157715304911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P9078861157715304911

/-! ## A325571.P10253575035704555695

`∩[A325570(n+1), A342082(n+1)]`
-/

namespace A325571.P10253575035704555695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P10253575035704555695

/-! ## A325571.P13334070305981910689

`∩[A005381(n+1), A325570(n+1)]`
-/

namespace A325571.P13334070305981910689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325571.P13334070305981910689

/-!
# A325572: Numbers n that have divisor d > 1 such that A048720(A065621(d),n/d) = n.

The programs for A325572, there is no canonical definition to state claims against.
-/

/-! ## A325572.P2410089004327706016

`lt[1, A325565(n+1)]+1`
-/

namespace A325572.P2410089004327706016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325572.P2410089004327706016

/-! ## A325572.P3098689998060753286

`record[(n+2)%(A325565(n+2)+n+1)]`
-/

namespace A325572.P3098689998060753286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A325565 (n + 2) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325572.P3098689998060753286

/-! ## A325572.P17363612004106730148

`lt[A093178(n), n*A325566(A093178(n))]`
-/

namespace A325572.P17363612004106730148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325566 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325572.P17363612004106730148

/-! ## A325572.P9069244537607487659

`lt[1, A325566(n+1)]+1`
-/

namespace A325572.P9069244537607487659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325572.P9069244537607487659

/-! ## A325572.P1581987756277794196

`lt[1, A325565(A028310(n))]`
-/

namespace A325572.P1581987756277794196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325565 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325572.P1581987756277794196

/-! ## A325572.P3532734972564129542

`lt[1, A325567(A004442(n)+1)]`
-/

namespace A325572.P3532734972564129542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (A004442 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325572.P3532734972564129542

/-! ## A325572.P953038649628614251

`A020725(lt[1, A325566(n+1)])`
-/

namespace A325572.P953038649628614251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A325572.P953038649628614251

/-! ## A325572.P2604695154446989437

`eq[char[A325570(n+1)], A000007(n)]`
-/

namespace A325572.P2604695154446989437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325572.P2604695154446989437

/-! ## A325572.P691559738115122948

`eq[char[A325570(n+1)], A000038(n)]`
-/

namespace A325572.P691559738115122948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A325572.P691559738115122948

/-! ## A325572.P9771555251775084989

`lt[A006519(n+2), A325567(2*(n+1))]+1`
-/

namespace A325572.P9771555251775084989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325572.P9771555251775084989

/-! ## A325572.P10334507737727184680

`eq[1, A060576(A325566(A257088(n)))]`
-/

namespace A325572.P10334507737727184680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A325566 (A257088 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325572.P10334507737727184680

/-!
# A325573: Odd numbers k that have divisor d > 1 such that A048720(A065621(d),k/d) = k.

The programs for A325573, there is no canonical definition to state claims against.
-/

/-! ## A325573.P15219952149261008075

`∩[2*n+1, A325572(n+1)]`
-/

namespace A325573.P15219952149261008075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325573.P15219952149261008075

/-! ## A325573.P10688878068291603921

`record[A000265(A325572(n+5))]`
-/

namespace A325573.P10688878068291603921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A325572 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325573.P10688878068291603921

/-! ## A325573.P13631438017709280863

`∩[A325572(n+1), A004273(n)]`
-/

namespace A325573.P13631438017709280863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325573.P13631438017709280863

/-! ## A325573.P10356243760025812083

`∩[A325572(n+1), A020742(n)]`
-/

namespace A325573.P10356243760025812083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325573.P10356243760025812083

/-! ## A325573.P15290188264751793789

`∩[A325572(n+1), A060747(n)]`
-/

namespace A325573.P15290188264751793789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325573.P15290188264751793789

/-! ## A325573.P14649716766093952670

`∩[A325572(n+1), A062545(n)]`
-/

namespace A325573.P14649716766093952670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325573.P14649716766093952670

/-! ## A325573.P6158238762243338945

`lt[1, A325566(A093178(n))]`
-/

namespace A325573.P6158238762243338945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325573.P6158238762243338945

/-! ## A325573.P7247377110314243058

`A004442(lt[A093178(n), A325567(n+1)])`
-/

namespace A325573.P7247377110314243058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325573.P7247377110314243058

/-! ## A325573.P5419480923570222509

`lt[A006519(n+1), A325567(A093178(n))]`
-/

namespace A325573.P5419480923570222509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325573.P5419480923570222509

/-! ## A325573.P14723960297195506672

`A020725(lt[A093178(n), A325567(n+1)])`
-/

namespace A325573.P14723960297195506672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325573.P14723960297195506672

/-!
# A325574: G.f. A(x) satisfies: 1 = Sum_{n>=0} (-x)^n * (A(x)^n + (-1)^n)^n.

The programs for A325574, there is no canonical definition to state claims against.
-/

/-! ## A325574.P7963817659658641641

`2^n*A360949(n)`
-/

namespace A325574.P7963817659658641641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A360949 n

end

end A325574.P7963817659658641641

/-! ## A325574.P6080887309787892624

`A360949(n)*A360980(A000079(n))`
-/

namespace A325574.P6080887309787892624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360949 n * A360980 (A000079 n).toNat

end

end A325574.P6080887309787892624

/-!
# A325575: G.f. A(x) satisfies: 1/(1-x) = Sum_{n>=0} x^n * ((1+x)^n - A(x))^n, where A(0) = 0.

The programs for A325575, there is no canonical definition to state claims against.
-/

/-! ## A325575.P7850769106954361746

`A048688(A151081(n))`
-/

namespace A325575.P7850769106954361746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048688 (A151081 n).toNat

end

end A325575.P7850769106954361746

/-! ## A325575.P15644960699780253028

`∑[A261104(A151482(n)²)]`
-/

namespace A325575.P15644960699780253028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A151482 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325575.P15644960699780253028

/-!
# A325576: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * (1+x)^(n*(n+1)*(n+2)/6) / A(x)^(n+1).

The programs for A325576, there is no canonical definition to state claims against.
-/

/-! ## A325576.P5032494516349896701

`A071903(Δ[A104150(n)])`
-/

namespace A325576.P5032494516349896701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071903 (f1 (n + 1) - f1 n).toNat

end

end A325576.P5032494516349896701

/-! ## A325576.P8042745829542142461

`A071903(Δ[A000115(n)!])`
-/

namespace A325576.P8042745829542142461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000115 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071903 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A325576.P8042745829542142461

/-! ## A325576.P17604268022286581743

`A071903((n-1)*A104150(n))`
-/

namespace A325576.P17604268022286581743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071903 (((n : ℤ) - 1) * A104150 n).toNat

end

end A325576.P17604268022286581743

/-!
# A325577: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * ((1+x)^n - A(x))^n, where A(0) = 1.

The programs for A325577, there is no canonical definition to state claims against.
-/

/-! ## A325577.P4400174586816669309

`A033793(A055812(n+1))`
-/

namespace A325577.P4400174586816669309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033793 (A055812 (n + 1)).toNat

end

end A325577.P4400174586816669309

/-! ## A325577.P12896211027198525722

`A033182(xor(4, A149588(n)))`
-/

namespace A325577.P12896211027198525722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (Int.xor 4 (A149588 n)).toNat

end

end A325577.P12896211027198525722

/-! ## A325577.P15381057845485584891

`A033183(A150302(n)-2^n)`
-/

namespace A325577.P15381057845485584891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A150302 n - (2 ^ n : ℤ)).toNat

end

end A325577.P15381057845485584891

/-! ## A325577.P5791180504903000725

`A008651(A149588(n)-char[n²])`
-/

namespace A325577.P5791180504903000725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A149588 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A325577.P5791180504903000725

/-!
# A325578: G.f. A(x) satisfies: 1/(1-x) = Sum_{n>=0} x^n * (1+x)^(n^2) / A(x)^(n*(n+1)/2).

The programs for A325578, there is no canonical definition to state claims against.
-/

/-! ## A325578.P7057855865250244605

`A325579(abs(1-n))+A325579(n)`
-/

namespace A325578.P7057855865250244605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325579 |1 - (n : ℤ)|.toNat + A325579 n

end

end A325578.P7057855865250244605

/-! ## A325578.P9149784266033731322

`ceil(A287694(n+1)/41)`
-/

namespace A325578.P9149784266033731322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287694 (n + 1) : ℚ) / 41⌉

end

end A325578.P9149784266033731322

/-! ## A325578.P5167320588844732916

`floor(A282741(n)^(n/10))`
-/

namespace A325578.P5167320588844732916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282741 n : ℝ) ^ ((n : ℚ) / 10 : ℝ)⌋

end

end A325578.P5167320588844732916

/-! ## A325578.P14107307720536584650

`A050331(A190171(n))`
-/

namespace A325578.P14107307720536584650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050331 (A190171 n).toNat

end

end A325578.P14107307720536584650

/-! ## A325578.P17768529197506817274

`A050331(A299270(n))`
-/

namespace A325578.P17768529197506817274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050331 (A299270 n).toNat

end

end A325578.P17768529197506817274

/-!
# A325579: G.f. A(x) satisfies: 1/(1-x) = Sum_{n>=0} x^n * (1+x)^(n*(n-1)/2) / A(x)^(n*(n+1)/2).

The programs for A325579, there is no canonical definition to state claims against.
-/

/-! ## A325579.P12368633059849415754

`A325578(n)-a(n-1)` with `a(0)=1`
-/

namespace A325579.P12368633059849415754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325578 n - a (n - 1)

end

end A325579.P12368633059849415754

/-! ## A325579.P8998642231944656175

`ceil(A287694(n+1)/41)-a(n-1)` with `a(0)=1`
-/

namespace A325579.P8998642231944656175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A287694 (n + 1) : ℚ) / 41⌉ - a (n - 1)

end

end A325579.P8998642231944656175

/-! ## A325579.P5453396427202014782

`floor(A282741(n)^(n/10))-a(n-1)` with `a(0)=1`
-/

namespace A325579.P5453396427202014782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A282741 n : ℝ) ^ ((n : ℚ) / 10 : ℝ)⌋ - a (n - 1)

end

end A325579.P5453396427202014782

/-! ## A325579.P14302715876308665019

`A061358(C(Δ[n²], n+5)+n+4)-a(n-1)` with `a(0)=1`
-/

namespace A325579.P14302715876308665019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061358 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (n + 5) + n + 4) - a (n - 1)

end

end A325579.P14302715876308665019

/-! ## A325579.P7183755480573948183

`A241035(A147788(n+1))`
-/

namespace A325579.P7183755480573948183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241035 (A147788 (n + 1)).toNat

end

end A325579.P7183755480573948183

/-!
# A325580: G.f.: A(x,y) = Sum_{n>=0} x^n * ((1+x)^n + y)^n, where A(0) = 0, as a triangle of coefficients T(n,k) of x^n*y^k in A(x,y) = Sum_{n>=0} x^n * Sum_{k=0..n} T(n,k)*x^n*y^k, read by rows.

The programs for A325580, there is no canonical definition to state claims against.
-/

/-! ## A325580.P226573350389395287

`A127082(n)-dr(A091536(A127082(n)))`
-/

namespace A325580.P226573350389395287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 n - (SequenceMachineLib.digitalRoot (A091536 (A127082 n).toNat) : ℤ)

end

end A325580.P226573350389395287

/-! ## A325580.P4534831551904088611

`A127082(n)-A372353(A127082(n+1))`
-/

namespace A325580.P4534831551904088611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 n - A372353 (A127082 (n + 1)).toNat

end

end A325580.P4534831551904088611

/-! ## A325580.P10644032025104595371

`and(A002145(p?[4*n-1]²), A127082(n))`
-/

namespace A325580.P10644032025104595371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002145 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat) (A127082 n)

end

end A325580.P10644032025104595371

/-! ## A325580.P2909220445162868082

`and(A002145(A002145(n+1)²), A127082(n))`
-/

namespace A325580.P2909220445162868082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002145 (A002145 (n + 1) ^ 2).toNat) (A127082 n)

end

end A325580.P2909220445162868082

/-!
# A325581: G.f.: Sum_{n>=0} (n+1) * x^n * (1+x)^(n*(n+1)).

The programs for A325581, there is no canonical definition to state claims against.
-/

/-! ## A325581.P16808502106293158962

`A325580(∑[n+1]+1)`
-/

namespace A325581.P16808502106293158962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325580 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A325581.P16808502106293158962

/-! ## A325581.P12900546676274514599

`A325580(A000124(n+1))+A000007(n+1)`
-/

namespace A325581.P12900546676274514599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325580 (A000124 (n + 1)).toNat + A000007 (n + 1)

end

end A325581.P12900546676274514599

/-! ## A325581.P8655185854974309547

`A019303(2*n)*A325580(A000124(n+1))`
-/

namespace A325581.P8655185854974309547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 (2 * n) * A325580 (A000124 (n + 1)).toNat

end

end A325581.P8655185854974309547

/-! ## A325581.P13569762430968970267

`A007318(A000384(n))*A325580(A000124(n+1))`
-/

namespace A325581.P13569762430968970267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000384 n).toNat * A325580 (A000124 (n + 1)).toNat

end

end A325581.P13569762430968970267

/-! ## A325581.P15671943750311037949

`A001222(A000043(n+1))*A325580(A000124(n+1))`
-/

namespace A325581.P15671943750311037949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A325580 (A000124 (n + 1)).toNat

end

end A325581.P15671943750311037949

/-!
# A325582: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * ((1 + 2*x)^n - A(x))^(n+1), where A(0) = 0.

The programs for A325582, there is no canonical definition to state claims against.
-/

/-! ## A325582.P1908851878174324254

`A000265(or(A028310(n), A121894(n+1)))`
-/

namespace A325582.P1908851878174324254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor (A028310 n) (A121894 (n + 1))).toNat

end

end A325582.P1908851878174324254

/-!
# A325583: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * ((1 + 3*x)^n - A(x))^(n+1), where A(0) = 0.

The programs for A325583, there is no canonical definition to state claims against.
-/

/-! ## A325583.P16881930468978722383

`record[A322058(∑[A285982(n)])]`
-/

namespace A325583.P16881930468978722383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322058 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325583.P16881930468978722383

/-!
# A325584: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * ((1 + 4*x)^n - A(x))^(n+1), where A(0) = 0.

The programs for A325584, there is no canonical definition to state claims against.
-/

/-! ## A325584.P2197113073239438725

`record[A028234(∑[3-char[1]+n]²-n)]`
-/

namespace A325584.P2197113073239438725
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325584.P2197113073239438725

/-!
# A325585: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * ((1 + 5*x)^n - A(x))^(n+1), where A(0) = 0.

The programs for A325585, there is no canonical definition to state claims against.
-/

/-! ## A325585.P11354870951070257818

`A327460(A120036(n)+A120021(n+1))`
-/

namespace A325585.P11354870951070257818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (A120036 n + A120021 (n + 1)).toNat

end

end A325585.P11354870951070257818

/-!
# A325586: G.f.: Sum_{n>=0} (n+1)*(n+2)/2 * x^n * (1+x)^(n*(n+2)).

The programs for A325586, there is no canonical definition to state claims against.
-/

/-! ## A325586.P4249792972119549369

`A325580(∑[n+2]+3)`
-/

namespace A325586.P4249792972119549369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325580 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A325586.P4249792972119549369

/-!
# A325587: G.f.: Sum_{n>=0} (n+1)*(n+2)*(n+3)/3! * x^n * (1+x)^(n*(n+3)).

The programs for A325587, there is no canonical definition to state claims against.
-/

/-! ## A325587.P5168220527711124729

`A325580(A167614(n+2))`
-/

namespace A325587.P5168220527711124729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325580 (A167614 (n + 2)).toNat

end

end A325587.P5168220527711124729

/-! ## A325587.P17909682307208793271

`A325580(A141214(n)+6)`
-/

namespace A325587.P17909682307208793271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325580 (A141214 n + 6).toNat

end

end A325587.P17909682307208793271

/-! ## A325587.P2105805644076212477

`A325580(A055999(n)+9)`
-/

namespace A325587.P2105805644076212477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325580 (A055999 n + 9).toNat

end

end A325587.P2105805644076212477

/-! ## A325587.P3260793432751028534

`A325580(eq[3, A002262(n)])`
-/

namespace A325587.P3260793432751028534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325587.P3260793432751028534

/-! ## A325587.P8620593326503189198

`A325580(A133263(n+3)+1)`
-/

namespace A325587.P8620593326503189198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325580 (A133263 (n + 3) + 1).toNat

end

end A325587.P8620593326503189198

/-!
# A325588: Number of necklace compositions of n with equal circular differences up to sign.

The programs for A325588, there is no canonical definition to state claims against.
-/

/-! ## A325588.P9685183021293396191

`A048766(A067824(n+1)*A115002(n+6))`
-/

namespace A325588.P9685183021293396191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A067824 (n + 1) * A115002 (n + 6)).toNat

end

end A325588.P9685183021293396191

/-!
# A325589: Number of compositions of n whose circular differences are all 1 or -1.

The programs for A325589, there is no canonical definition to state claims against.
-/

/-! ## A325589.P10359838209604284376

`A053735(A146252(n+1)-A146253(n+1))`
-/

namespace A325589.P10359838209604284376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A146252 (n + 1) - A146253 (n + 1)).toNat

end

end A325589.P10359838209604284376

/-!
# A325590: Number of necklace compositions of n with circular differences all equal to 1 or -1.

The programs for A325590, there is no canonical definition to state claims against.
-/

/-! ## A325590.P3491489468809273956

`A086078(A079053(n+1))+round(xor(1, n)/6)`
-/

namespace A325590.P3491489468809273956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086078 (A079053 (n + 1)).toNat + SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

end

end A325590.P3491489468809273956

/-! ## A325590.P3946588554341272745

`A102681(A051003(n+1))+A008615(n)`
-/

namespace A325590.P3946588554341272745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A051003 (n + 1)).toNat + A008615 n

end

end A325590.P3946588554341272745

/-! ## A325590.P5970227755832780887

`A086078(A079053(n+1))+A008615(n)`
-/

namespace A325590.P5970227755832780887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086078 (A079053 (n + 1)).toNat + A008615 n

end

end A325590.P5970227755832780887

/-! ## A325590.P15314572124403484982

`A010060(A185274(n))+A008615(n)`
-/

namespace A325590.P15314572124403484982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A185274 n).toNat + A008615 n

end

end A325590.P15314572124403484982

/-!
# A325591: Number of compositions of n with circular differences all equal to 1, 0, or -1.

The programs for A325591, there is no canonical definition to state claims against.
-/

/-! ## A325591.P8069604048974580865

`A335152(A094588(n)+A000010(n+1))`
-/

namespace A325591.P8069604048974580865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335152 (A094588 n + A000010 (n + 1)).toNat

end

end A325591.P8069604048974580865

/-! ## A325591.P14340026173114914643

`A192394(A192400(n))+A000045(n+2)`
-/

namespace A325591.P14340026173114914643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192394 (A192400 n).toNat + A000045 (n + 2)

end

end A325591.P14340026173114914643

/-! ## A325591.P9471134998998258263

`A094866(n+3)+A033109(A094862(n+1))`
-/

namespace A325591.P9471134998998258263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094866 (n + 3) + A033109 (A094862 (n + 1)).toNat

end

end A325591.P9471134998998258263

/-!
# A325592: Triangle read by rows where T(n,k) is the number of length-k knapsack partitions of n.

The programs for A325592, there is no canonical definition to state claims against.
-/

/-! ## A325592.P8066286299346556176

`A350957(2^A363946(n))`
-/

namespace A325592.P8066286299346556176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350957 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A363946 n : ℤ))).toNat

end

end A325592.P8066286299346556176

/-! ## A325592.P11957036306569972954

`A244040(A363946(n)%A335389(n+1))`
-/

namespace A325592.P11957036306569972954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244040 (Int.tmod (A363946 n) (A335389 (n + 1))).toNat

end

end A325592.P11957036306569972954

/-! ## A325592.P13680941822614885598

`A244040(A363946(n))%A335404(2*(n+1))`
-/

namespace A325592.P13680941822614885598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244040 (A363946 n).toNat) (A335404 (2 * (n + 1)))

end

end A325592.P13680941822614885598

/-! ## A325592.P526405120948449238

`A324666(A363946(n))%A330946(2*n+3)`
-/

namespace A325592.P526405120948449238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324666 (A363946 n).toNat) (A330946 (2 * n + 3))

end

end A325592.P526405120948449238

/-! ## A325592.P10005569044918164274

`A123578(A363946(n))%A364348(2*(n+2))`
-/

namespace A325592.P10005569044918164274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 (A363946 n).toNat) (A364348 (2 * (n + 2)))

end

end A325592.P10005569044918164274

/-!
# A325595: Number of symmetric Euclidean pseudo-order types: nondegenerate abstract order types of configurations of n points in the plane with a nontrivial automorphism.

The programs for A325595, there is no canonical definition to state claims against.
-/

/-! ## A325595.P10778998903229805545

`xor(A053616(A305375(n+1)), A325628(n+1))`
-/

namespace A325595.P10778998903229805545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053616 (A305375 (n + 1)).toNat) (A325628 (n + 1))

end

end A325595.P10778998903229805545

/-!
# A325596: a(n) = Sum_{d|n} mu(n/d) * (-1)^(d + 1) * d.

The programs for A325596, the canonical program `A325596.P461061139706742604` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325596 has offset 1).

The definition of A325596 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319997, A319998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325596.P461061139706742604

`A319997(n+1)-A319998(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A325596

/-- `A319997(n+1)-A319998(n+1)` -/
def P461061139706742604.Spec : Prop :=
  ∀ n, P461061139706742604.a n = A325596 (n + 1)

theorem P461061139706742604.correct : P461061139706742604.Spec := by
  intro n
  simp only [A325596, Nat.add_sub_cancel]

end A325596

/-! ## A325596.P1718965968781110742

`Δ[A002088(n)]-2*A319998(n+1)`
-/

namespace A325596.P1718965968781110742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A319998 (n + 1)

end

end A325596.P1718965968781110742

namespace A325596

/-- `Δ[A002088(n)]-2*A319998(n+1)` -/
def P1718965968781110742.Spec : Prop :=
  ∀ n, P1718965968781110742.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P3996284507651674689

`Δ[A005728(n)]-2*A319998(n+1)`
-/

namespace A325596.P3996284507651674689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A319998 (n + 1)

end

end A325596.P3996284507651674689

namespace A325596

/-- `Δ[A005728(n)]-2*A319998(n+1)` -/
def P3996284507651674689.Spec : Prop :=
  ∀ n, P3996284507651674689.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P4384306307523808079

`2*A319997(n+1)-A000010(n+1)`
-/

namespace A325596.P4384306307523808079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319997 (n + 1) - A000010 (n + 1)

end

end A325596.P4384306307523808079

namespace A325596

/-- `2*A319997(n+1)-A000010(n+1)` -/
def P4384306307523808079.Spec : Prop :=
  ∀ n, P4384306307523808079.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P6865903544806277976

`A000010(n+1)-2*A319998(n+1)`
-/

namespace A325596.P6865903544806277976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 2 * A319998 (n + 1)

end

end A325596.P6865903544806277976

namespace A325596

/-- `A000010(n+1)-2*A319998(n+1)` -/
def P6865903544806277976.Spec : Prop :=
  ∀ n, P6865903544806277976.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P4674393760126983923

`∑{d}[n+1, A002129(#)*A007427((n+1)/#)]`
-/

namespace A325596.P4674393760126983923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002129 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325596.P4674393760126983923

namespace A325596

/-- `∑{d}[n+1, A002129(#)*A007427((n+1)/#)]` -/
def P4674393760126983923.Spec : Prop :=
  ∀ n, P4674393760126983923.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P4126672808488629300

`∑{d}[n+1, A087003(#)*A186111((n+1)/#)]`
-/

namespace A325596.P4126672808488629300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A186111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325596.P4126672808488629300

namespace A325596

/-- `∑{d}[n+1, A087003(#)*A186111((n+1)/#)]` -/
def P4126672808488629300.Spec : Prop :=
  ∀ n, P4126672808488629300.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P6264616030713221378

`∑{d}[n+1, A007428(#)*A327242((n+1)/#)]`
-/

namespace A325596.P6264616030713221378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A327242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325596.P6264616030713221378

namespace A325596

/-- `∑{d}[n+1, A007428(#)*A327242((n+1)/#)]` -/
def P6264616030713221378.Spec : Prop :=
  ∀ n, P6264616030713221378.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P6603677840679514761

`∑{d}[n+1, A053822(#)*A326125((n+1)/#)]`
-/

namespace A325596.P6603677840679514761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A326125 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325596.P6603677840679514761

namespace A325596

/-- `∑{d}[n+1, A053822(#)*A326125((n+1)/#)]` -/
def P6603677840679514761.Spec : Prop :=
  ∀ n, P6603677840679514761.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P8512350574280706060

`∑{d}[n+1, A055615(#)*A332794((n+1)/#)]`
-/

namespace A325596.P8512350574280706060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A332794 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325596.P8512350574280706060

namespace A325596

/-- `∑{d}[n+1, A055615(#)*A332794((n+1)/#)]` -/
def P8512350574280706060.Spec : Prop :=
  ∀ n, P8512350574280706060.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P13599789633961161138

`∑{d}[n+1, A092673(#)*A328154((n+1)/#)]`
-/

namespace A325596.P13599789633961161138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A328154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325596.P13599789633961161138

namespace A325596

/-- `∑{d}[n+1, A092673(#)*A328154((n+1)/#)]` -/
def P13599789633961161138.Spec : Prop :=
  ∀ n, P13599789633961161138.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P553592761858384190

`∑{d}[n+1, A109506(#)*A327274((n+1)/#)]`
-/

namespace A325596.P553592761858384190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109506 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325596.P553592761858384190

namespace A325596

/-- `∑{d}[n+1, A109506(#)*A327274((n+1)/#)]` -/
def P553592761858384190.Spec : Prop :=
  ∀ n, P553592761858384190.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P3938445686494493432

`∑{d}[n+1, A186690(#)*A327276((n+1)/#)]`
-/

namespace A325596.P3938445686494493432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186690 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325596.P3938445686494493432

namespace A325596

/-- `∑{d}[n+1, A186690(#)*A327276((n+1)/#)]` -/
def P3938445686494493432.Spec : Prop :=
  ∀ n, P3938445686494493432.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P743880754025646752

`A000010(n+1)*A260196(A135481(n))`
-/

namespace A325596.P743880754025646752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A260196 (A135481 n).toNat

end

end A325596.P743880754025646752

namespace A325596

/-- `A000010(n+1)*A260196(A135481(n))` -/
def P743880754025646752.Spec : Prop :=
  ∀ n, P743880754025646752.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P18035322522243414920

`A000010(n+1)-A005843(A319998(n+1))`
-/

namespace A325596.P18035322522243414920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A005843 (A319998 (n + 1)).toNat

end

end A325596.P18035322522243414920

namespace A325596

/-- `A000010(n+1)-A005843(A319998(n+1))` -/
def P18035322522243414920.Spec : Prop :=
  ∀ n, P18035322522243414920.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P10606083788113757233

`A345082(n+1)-A319998(n+1)*A323237(n+2)`
-/

namespace A325596.P10606083788113757233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345082 (n + 1) - A319998 (n + 1) * A323237 (n + 2)

end

end A325596.P10606083788113757233

namespace A325596

/-- `A345082(n+1)-A319998(n+1)*A323237(n+2)` -/
def P10606083788113757233.Spec : Prop :=
  ∀ n, P10606083788113757233.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P10027828468945779399

`A000010(n+1)-Δ[A100449(A004526(n))]`
-/

namespace A325596.P10027828468945779399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (f1 (n + 1) - f1 n)

end

end A325596.P10027828468945779399

namespace A325596

/-- `A000010(n+1)-Δ[A100449(A004526(n))]` -/
def P10027828468945779399.Spec : Prop :=
  ∀ n, P10027828468945779399.a n = A325596 (n + 1)

end A325596

/-! ## A325596.P15642237400609041541

`A000010(n+1)-Δ[A004275(A049644(n))]`
-/

namespace A325596.P15642237400609041541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A049644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (f1 (n + 1) - f1 n)

end

end A325596.P15642237400609041541

namespace A325596

/-- `A000010(n+1)-Δ[A004275(A049644(n))]` -/
def P15642237400609041541.Spec : Prop :=
  ∀ n, P15642237400609041541.a n = A325596 (n + 1)

end A325596

/-!
# A325597: a(n) is the least number not 2a(m) + a(m-1) for any m < n.

The programs for A325597, there is no canonical definition to state claims against.
-/

/-! ## A325597.P9151706016527636394

`A325599(n)+a(n-1)` with `a(0)=1`
-/

namespace A325597.P9151706016527636394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325599 n + a (n - 1)

end

end A325597.P9151706016527636394

/-! ## A325597.P12092426397769374612

`floor((A325601(n+1)+n-1)/3)`
-/

namespace A325597.P12092426397769374612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325601 (n + 1) + (n : ℤ) - 1 : ℚ) / 3⌋

end

end A325597.P12092426397769374612

/-! ## A325597.P9327006129386551874

`∑[A325599(A028310(n))]`
-/

namespace A325597.P9327006129386551874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325597.P9327006129386551874

/-! ## A325597.P17275525988769037431

`∑[A325599(A000007(n)+n)]`
-/

namespace A325597.P17275525988769037431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325597.P17275525988769037431

/-! ## A325597.P4400848774908425317

`∑[A325599(n-A151800(n)%2+1)]`
-/

namespace A325597.P4400848774908425317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 ((n : ℤ) - Int.tmod (A151800 n) 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325597.P4400848774908425317

/-! ## A325597.P7436209833046040408

`∑[A325599(n+1)]+1-A325599(n+1)`
-/

namespace A325597.P7436209833046040408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325599 (n + 1))

end

end A325597.P7436209833046040408

/-!
# A325598: Complement of A325597.

The programs for A325598, there is no canonical definition to state claims against.
-/

/-! ## A325598.P17421499301413527672

`A325601(n+1)+1+n`
-/

namespace A325598.P17421499301413527672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325601 (n + 1) + 1 + (n : ℤ)

end

end A325598.P17421499301413527672

/-! ## A325598.P8109654432509088789

`A000079(Δ[A325597(n+1)])+3*A325597(n+1)`
-/

namespace A325598.P8109654432509088789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat + 3 * A325597 (n + 1)

end

end A325598.P8109654432509088789

/-! ## A325598.P3415525793494292518

`A325597(n+1)+A325597(n+2)+A325597(n+2)`
-/

namespace A325598.P3415525793494292518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325597 (n + 1) + (A325597 (n + 2) + A325597 (n + 2))

end

end A325598.P3415525793494292518

/-! ## A325598.P3014357759591824431

`eq[2, A325599(n+1)]+n+2`
-/

namespace A325598.P3014357759591824431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 2)

end

end A325598.P3014357759591824431

/-! ## A325598.P4932831369438433518

`A325597(A325601(n+1))+1`
-/

namespace A325598.P4932831369438433518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325597 (A325601 (n + 1)).toNat + 1

end

end A325598.P4932831369438433518

/-!
# A325599: Difference sequence of A325597.

The programs for A325599, there is no canonical definition to state claims against.
-/

/-! ## A325599.P16322272915324580297

`(2*A325598(n+1))%3`
-/

namespace A325599.P16322272915324580297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A325598 (n + 1)) 3

end

end A325599.P16322272915324580297

/-! ## A325599.P9020431955841764370

`2-char[A325600(n+1)-1]`
-/

namespace A325599.P9020431955841764370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325600 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A325599.P9020431955841764370

/-! ## A325599.P4652259857009513416

`Δ[A325597(n+1)]`
-/

namespace A325599.P4652259857009513416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325599.P4652259857009513416

/-! ## A325599.P13570691467158100227

`A001222(Δ[A325598(n+1)])`
-/

namespace A325599.P13570691467158100227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A325599.P13570691467158100227

/-! ## A325599.P6604673437560922976

`A007318(Δ[A325598(n+1)])`
-/

namespace A325599.P6604673437560922976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat

end

end A325599.P6604673437560922976

/-! ## A325599.P18186350468967227646

`A213852(Δ[A325598(n+1)])`
-/

namespace A325599.P18186350468967227646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213852 (f1 (n + 1) - f1 n).toNat

end

end A325599.P18186350468967227646

/-! ## A325599.P18024229623324439362

`A325613(Δ[A325598(n+1)])`
-/

namespace A325599.P18024229623324439362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325613 (f1 (n + 1) - f1 n).toNat

end

end A325599.P18024229623324439362

/-! ## A325599.P12765623841818970468

`A325614(Δ[A325598(n+1)])`
-/

namespace A325599.P12765623841818970468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325614 (f1 (n + 1) - f1 n).toNat

end

end A325599.P12765623841818970468

/-! ## A325599.P17244287798760023387

`A325615(Δ[A325598(n+1)])`
-/

namespace A325599.P17244287798760023387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325615 (f1 (n + 1) - f1 n).toNat

end

end A325599.P17244287798760023387

/-! ## A325599.P12508869465571187566

`A001222(Δ[A325601(n+1)]+1)`
-/

namespace A325599.P12508869465571187566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 1).toNat

end

end A325599.P12508869465571187566

/-! ## A325599.P15857905734747110654

`A007318(Δ[A325601(n+1)]+1)`
-/

namespace A325599.P15857905734747110654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n + 1).toNat

end

end A325599.P15857905734747110654

/-! ## A325599.P15884049210228994541

`A325597(n+2)-A325597(n+1)`
-/

namespace A325599.P15884049210228994541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325597 (n + 2) - A325597 (n + 1)

end

end A325599.P15884049210228994541

/-! ## A325599.P15240466076873159529

`A080425(A325598(n+1))`
-/

namespace A325599.P15240466076873159529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A325598 (n + 1)).toNat

end

end A325599.P15240466076873159529

